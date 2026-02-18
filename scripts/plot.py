import json
from pathlib import Path
from typing import Dict, List, Any, Optional
import os
import pandas as pd
import matplotlib.pyplot as plt


CATEGORIES_ORDER = [
    "1_easy_no_join",
    "2_medium_join",
    "3_has_aggr",
    "4_has_union",
    "5_has_all",
]
DATASET_LABELS = {
    "t": "TPC-H",
    "rs": "RelStack",
    "rf": "RelF1",
    "tpch": "TPC-H",
    "relstack": "RelStack",
    "relf1": "RelF1",
    "unknown": "Unknown",
}
DATASETS_ORDER = ["tpch", "relstack", "relf1"]

MODEL_LABELS = {
    #"base": "Base (NL)",
    "base/nl": "Base (NL)",
    #"ft/llama3_8b_dpo_after_sft_lora_chat_template_nl_ep1": "FT NL (DPO)",
    "ft/def/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep1": "FT NL (SFT EP1)",
    "ft/def/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep2": "FT NL (SFT EP2)",
    "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss": "FT NL (SFT EP1 DPO EP1,bcoloss)",
    "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss": "FT NL (SFT EP1 DPO EP2,bcoloss)",
    "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss": "FT NL (SFT EP2 DPO EP1,bcoloss)",
    "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss": "FT NL (SFT EP2 DPO EP2,bcoloss)",
    #"ft/cat_1_2/llama3_8b_dpo_after_sft_ep1_lora_chat_template_nl_plusbad_ep1" : "FT NL (joins)",
}

def load_eval_json(eval_path: Path) -> List[Dict[str, Any]]:
    with eval_path.open("r", encoding="utf-8") as f:
        data = json.load(f)

    # Some files are directly a list
    if isinstance(data, list):
        return data

    # Your format: {"global_summary": {...}, "by_category": [ ... ]}
    if isinstance(data, dict):
        if "by_category" in data and isinstance(data["by_category"], list):
            return data["by_category"]

        # Fallbacks (older variants)
        for key in ("results", "categories", "data", "items"):
            if key in data and isinstance(data[key], list):
                return data[key]

    raise ValueError(
        f"Unrecognized eval.json structure in: {eval_path}"
    )

def extract_rows_by_dataset(model_name: str, items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    rows = []
    for it in items:
        cat = it.get("category")
        by_ds = it.get("by_dataset") or {}
        for ds, payload in by_ds.items():
            metrics = payload.get("metrics", {}) or {}
            rows.append(
                {
                    "model": model_name,
                    "dataset": ds,
                    "category": cat,
                    "count": payload.get("count"),
                    "parsing_failed": payload.get("parsing_failed", 0),
                    "f1_result": (metrics.get("only_result") or {}).get("f1"),
                    "f1_provenance": (metrics.get("only_provenance") or {}).get("f1"),
                    "f1_both": (metrics.get("overall_both") or {}).get("f1"),
                }
            )
    return rows

def build_dataframe_by_dataset(models_root: Path, model_dirs: Optional[List[str]] = None) -> pd.DataFrame:
    all_rows = []

    if model_dirs:
        candidates = [models_root / d for d in model_dirs]
    else:
        candidates = [p for p in models_root.iterdir() if p.is_dir()]

    for model_path in sorted(candidates):
        eval_path = model_path / "reports_ds" / "evaluation_per_type.json"
        if not eval_path.exists():
            print(f"[SKIP] missing file: {eval_path}")
            continue

        try:
            items = load_eval_json(eval_path)
            print(f"[OK] loaded {eval_path} -> {len(items)} category items")
        except Exception as e:
            print(f"[ERR] failed parsing {eval_path}: {e}")
            continue

        model_name = model_path.relative_to(models_root).as_posix()
        all_rows.extend(extract_rows_by_dataset(model_name, items))

    if not all_rows:
        raise FileNotFoundError(f"Nessun by_dataset trovato sotto {models_root}.")

    df = pd.DataFrame(all_rows)
    df["category"] = pd.Categorical(df["category"], categories=CATEGORIES_ORDER, ordered=True)
    df["model"] = df["model"].astype(str)

    # dataset ordering (keeps unknown at end if present)
    known = [d for d in DATASETS_ORDER if d in df["dataset"].unique().tolist()]
    cats = known + [d for d in sorted(df["dataset"].unique().tolist()) if d not in known]
    df["dataset"] = pd.Categorical(df["dataset"], categories=cats, ordered=True)

    return df

def ensure_all_categories_by_dataset(df: pd.DataFrame) -> pd.DataFrame:
    models = sorted(df["model"].unique().tolist())
    datasets = [d for d in df["dataset"].cat.categories.tolist()]
    full_index = pd.MultiIndex.from_product([models, datasets, CATEGORIES_ORDER], names=["model", "dataset", "category"])
    df2 = df.set_index(["model", "dataset", "category"]).reindex(full_index).reset_index()

    df2["category"] = pd.Categorical(df2["category"], categories=CATEGORIES_ORDER, ordered=True)
    df2["dataset"] = pd.Categorical(df2["dataset"], categories=datasets, ordered=True)
    return df2

def plot_grouped_bars_by_dataset(df_ds: pd.DataFrame, metric_col: str, out_dir: Path, title_prefix: str):
    for ds in df_ds["dataset"].cat.categories.tolist():
        sub = df_ds[df_ds["dataset"] == ds].copy()
        if sub.empty:
            continue

        ds_label = DATASET_LABELS.get(str(ds), str(ds))
        out_path = out_dir / f"{metric_col}_{ds}.png"

        plot_grouped_bars(
            sub,
            metric_col=metric_col,
            title=f"{title_prefix} — {ds_label}",
            output_path=out_path,
        )

def extract_rows(model_name: str, items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    rows = []
    for it in items:
        cat = it.get("category")
        count = it.get("count")
        metrics = it.get("metrics", {}) or {}

        only_result = (metrics.get("only_result") or {})
        only_prov = (metrics.get("only_provenance") or {})
        both = (metrics.get("overall_both") or {})

        rows.append(
            {
                "model": model_name,
                "category": cat,
                "count": count,
                "f1_result": only_result.get("f1"),
                "f1_provenance": only_prov.get("f1"),
                "f1_both": both.get("f1"),
            }
        )
    return rows


def build_dataframe(models_root: Path, model_dirs: Optional[List[str]] = None) -> pd.DataFrame:
    all_rows = []

    if model_dirs:
        candidates = [models_root / d for d in model_dirs]
    else:
        candidates = [p for p in models_root.iterdir() if p.is_dir()]

    for model_path in sorted(candidates):
        eval_path = model_path / "reports_ds" / "evaluation_per_type.json"
        if not eval_path.exists():
            eval_path = model_path / "reports" / "evaluation_per_type.json"  # fallback older name
        if not eval_path.exists():
            print(f"[SKIP] missing file: {eval_path}")
            continue
        
        try:
            items = load_eval_json(eval_path)
            print(f"[OK] loaded {eval_path} -> {len(items)} category items")
        except Exception as e:
            print(f"[ERR] failed parsing {eval_path}: {e}")
            continue
        model_name = model_path.relative_to(models_root).as_posix()
        all_rows.extend(extract_rows(model_name, items))
    if not all_rows:
        raise FileNotFoundError(
            f"Nessun evaluation_per_type.json trovato sotto {models_root}."
        )

    df = pd.DataFrame(all_rows)

    # Force categorical order
    df["category"] = pd.Categorical(df["category"], categories=CATEGORIES_ORDER, ordered=True)
    df["model"] = df["model"].astype(str)

    return df


def ensure_all_categories(df: pd.DataFrame) -> pd.DataFrame:
    """
    Ensure every (model, category) exists, even if missing in eval.json.
    Missing values stay NaN (they'll show as 0 in plots, NaN in tables).
    """
    models = sorted(df["model"].unique().tolist())
    full_index = pd.MultiIndex.from_product([models, CATEGORIES_ORDER], names=["model", "category"])
    df2 = df.set_index(["model", "category"]).reindex(full_index).reset_index()

    # Keep category dtype/order
    df2["category"] = pd.Categorical(df2["category"], categories=CATEGORIES_ORDER, ordered=True)
    return df2


def make_summary_table(df: pd.DataFrame) -> pd.DataFrame:
    # counts per category (max across models, if present)
    count_by_cat = df.groupby("category", observed=True)["count"].max()

    wide = df.pivot_table(
        index="category",
        columns="model",
        values=["f1_result", "f1_provenance", "f1_both"],
        aggfunc="first",
        observed=True,
    )

    wide.columns = [f"{model} | {metric}" for metric, model in wide.columns]
    wide = wide.reindex(CATEGORIES_ORDER).reset_index()

    wide.insert(1, "count", wide["category"].map(count_by_cat).astype("Int64"))
    return wide


def plot_grouped_bars(df: pd.DataFrame, metric_col: str, title: str, output_path: Optional[Path] = None):
    categories = CATEGORIES_ORDER
    models = sorted(df["model"].unique().tolist())

    pivot = df.pivot_table(
        index="category",
        columns="model",
        values=metric_col,
        aggfunc="first",
        observed=True,
    ).reindex(categories)

    x = list(range(len(categories)))
    n_models = len(models)
    bar_w = 0.8 / max(n_models, 1)

    plt.figure(figsize=(10, 6))

    for i, m in enumerate(models):
        vals = pivot[m].tolist() if m in pivot.columns else [None] * len(categories)
        # Plotting choice: missing -> 0
        vals = [0 if (v is None or pd.isna(v)) else float(v) for v in vals]
        offsets = [xi + (i - (n_models - 1) / 2) * bar_w for xi in x]
        label = MODEL_LABELS.get(m, m)
        plt.bar(offsets, vals, width=bar_w, label=label)

    plt.xticks(x, categories, rotation=20, ha="right")
    plt.ylim(0, 1.0)
    plt.ylabel("F1")
    plt.title(title)
    plt.legend(title="Model", bbox_to_anchor=(1.02, 1), loc="upper left")
    plt.tight_layout()

    if output_path:
        output_path.parent.mkdir(parents=True, exist_ok=True)
        plt.savefig(output_path, dpi=200)

    plt.show()


def main():
    # Root containing model folders: <model>/reports_ds/eval.json
    models_root = Path("models")  

    # opzionale: lista esplicita modelli
    model_dirs = [
        #"base",
        "base/nl",
        #"ft/llama3_8b_dpo_after_sft_lora_chat_template_nl_ep1",
        "ft/def/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep1",
        "ft/def/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep2",
        "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss",
        "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss",
        "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss",
        "ft/def/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss",
        #"ft/cat_1_2/llama3_8b_dpo_after_sft_ep1_lora_chat_template_nl_plusbad_ep1"

    ]

    out_dir = Path("models/new_negatives_comparison_outputs")
    out_dir.mkdir(exist_ok=True, parents=True)

    df = build_dataframe(models_root=models_root, model_dirs=model_dirs)
    df = ensure_all_categories(df)
    print(df[["model", "category", "f1_result", "f1_provenance"]])
    # Save long format
    df.to_csv(out_dir / "metrics_long.csv", index=False)

    # Summary wide
    summary = make_summary_table(df)
    summary.to_csv(out_dir / "metrics_summary_wide.csv", index=False)

    print("\n=== SUMMARY TABLE (wide) ===")
    print(summary.to_string(index=False))

    # Plots
    plot_grouped_bars(
        df,
        metric_col="f1_result",
        title="F1 (only_result) per category vs model",
        output_path=out_dir / "f1_only_result_plus_dpo_bco.png",
    )

    plot_grouped_bars(
        df,
        metric_col="f1_provenance",
        title="F1 (only_provenance) per category vs model",
        output_path=out_dir / "f1_only_provenance_plus_dpo_bco.png",
    )

    if df["f1_both"].notna().any():
        plot_grouped_bars(
            df,
            metric_col="f1_both",
            title="F1 (overall_both) per category vs model",
            output_path=out_dir / "f1_overall_both_plus_dpo_bco.png",
        )

    print(f"\nSaved outputs in: {out_dir.resolve()}")

     # --- By-dataset plots (separati) ---
    out_dir_ds = out_dir / "by_dataset" / "complete_nl"
    out_dir_ds.mkdir(exist_ok=True, parents=True)

    df_ds = build_dataframe_by_dataset(models_root=models_root, model_dirs=model_dirs)
    df_ds = ensure_all_categories_by_dataset(df_ds)

    # salva anche i CSV (utile)
    df_ds.to_csv(out_dir_ds / "metrics_long_by_dataset.csv", index=False)

    plot_grouped_bars_by_dataset(
        df_ds,
        metric_col="f1_result",
        out_dir=out_dir_ds,
        title_prefix="F1 (only_result) per category vs model",
    )

    plot_grouped_bars_by_dataset(
        df_ds,
        metric_col="f1_provenance",
        out_dir=out_dir_ds,
        title_prefix="F1 (only_provenance) per category vs model",
    )

    if df_ds["f1_both"].notna().any():
        plot_grouped_bars_by_dataset(
            df_ds,
            metric_col="f1_both",
            out_dir=out_dir_ds,
            title_prefix="F1 (overall_both) per category vs model",
        )

    print(f"\nSaved by-dataset outputs in: {out_dir_ds.resolve()}")


if __name__ == "__main__":
    main()
