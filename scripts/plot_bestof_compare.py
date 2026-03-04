"""
Paper-style plots for comparing fine-tuning methods across multiple backbones.
- Loads evaluation_per_type.json from each run directory
- Produces:
  (A) Best-of (Base / best SFT / best DPO) grouped bars per backbone
  (B) Heatmaps (best-of) per backbone
  (C) Improvement vs Base (ΔF1) per backbone
  (D) Complexity curves per backbone
  (E) Cross-backbone heatmap: best_DPO (or best_SFT) performance across backbones
  (F) CSV tables: which run was selected as best per backbone/category/method

Requirements: pandas, matplotlib
"""

import json
from pathlib import Path
from typing import Dict, List, Any, Optional, Tuple
import pandas as pd
import matplotlib.pyplot as plt


# -----------------------------
# 1) CONFIG
# -----------------------------
CATEGORIES_ORDER = [
    "1_easy_no_join",
    "2_medium_join",
    "3_has_aggr",
    "4_has_union",
    "5_has_all",
]

# Update with your actual evaluation file locations if needed
EVAL_CANDIDATES = [
    ("reports_ds", "evaluation_per_type.json")]

# Human labels for datasets (if you later reuse by-dataset logic)
DATASET_LABELS = {
    "t": "TPC-H",
    "rs": "RelStack",
    "rf": "RelF1",
    "tpch": "TPC-H",
    "relstack": "RelStack",
    "relf1": "RelF1",
    "unknown": "Unknown",
}

# ==============
# IMPORTANT:
# Put here ALL your runs for each backbone.
# The keys in MODEL_LABELS must match the relative path from models_root.
# ==============
BACKBONES: Dict[str, Dict[str, Any]] = {
    # Example: Qwen2.5 7B (NL)
    "qwen2.5-7b_nl": {
        "models_root": Path("models/qwen"),
        "runs": [
            "base/nl",
            "ft/def/new_negatives/nl/qwen2.5_sft_lora_chat_template_nl_ep1",
            "ft/def/new_negatives/nl/qwen2.5_sft_lora_chat_template_nl_ep2",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss",
        ],
        "labels": {
            "base/nl": "Base (NL)",
            "ft/def/new_negatives/nl/qwen2.5_sft_lora_chat_template_nl_ep1": "SFT (NL) ep1",
            "ft/def/new_negatives/nl/qwen2.5_sft_lora_chat_template_nl_ep2": "SFT (NL) ep2",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss": "DPO (NL) ep1 SFT ep1",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss": "DPO (NL) ep1 SFT ep2",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss": "DPO (NL) ep2 SFT ep1",
            "ft/def/new_negatives/nl/qwen2.5_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss": "DPO (NL) ep2 SFT ep2",
        },
    },
    "qwen2.5-7b_sql": {
        "models_root": Path("models/qwen"),
        "runs": [
            "base/sql",
            "ft/def/new_negatives/sql/qwen2.5_sft_lora_chat_template_sql_ep1",
            "ft/def/new_negatives/sql/qwen2.5_sft_lora_chat_template_sql_ep2",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep1_sql_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep1_sql_ep2_withbadformat_bcoloss",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep2_sql_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep2_sql_ep2_withbadformat_bcoloss",
        ],
        "labels": {
            "base/sql": "Base (SQL)",
            "ft/def/new_negatives/sql/qwen2.5_sft_lora_chat_template_sql_ep1": "SFT (SQL) ep1",
            "ft/def/new_negatives/sql/qwen2.5_sft_lora_chat_template_sql_ep2": "SFT (SQL) ep2",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep1_sql_ep1_withbadformat_bcoloss": "DPO (SQL) ep1 SFT ep1",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep1_sql_ep2_withbadformat_bcoloss": "DPO (SQL) ep1 SFT ep2",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep2_sql_ep1_withbadformat_bcoloss": "DPO (SQL) ep2 SFT ep1",
            "ft/def/new_negatives/sql/qwen2.5_dpo_after_sft_ep2_sql_ep2_withbadformat_bcoloss": "DPO (SQL) ep2 SFT ep2",
        },
    },
    "gemma-7b_nl": {
        "models_root": Path("models/gemma"),
        "runs": [
            "base/nl",
            "ft/def/new_negatives/nl/gemma7b_sft_lora_chat_template_nl_ep1",
            "ft/def/new_negatives/nl/gemma7b_sft_lora_chat_template_nl_ep2",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss",
        ],
        "labels": {
            "base/nl": "Base (NL)",
            "ft/def/new_negatives/nl/gemma7b_sft_lora_chat_template_nl_ep1": "SFT (NL) ep1",
            "ft/def/new_negatives/nl/gemma7b_sft_lora_chat_template_nl_ep2": "SFT (NL) ep2",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss": "DPO (NL) ep1 SFT ep1",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss": "DPO (NL) ep1 SFT ep2",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss": "DPO (NL) ep2 SFT ep1",
            "ft/def/new_negatives/nl/gemma7b_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss": "DPO (NL) ep2 SFT ep2",
        },
    },
    "gemma-7b_sql": {
        "models_root": Path("models/gemma"),
        "runs": [
            "base/sql",
            "ft/def/new_negatives/sql/gemma7b_sft_lora_chat_template_sql_ep1",
            "ft/def/new_negatives/sql/gemma7b_sft_lora_chat_template_sql_ep2",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep1_sql_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep1_sql_ep2_withbadformat_bcoloss",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep2_sql_ep1_withbadformat_bcoloss",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep2_sql_ep2_withbadformat_bcoloss",
        ],
        "labels": {
            "base/sql": "Base (SQL)",
            "ft/def/new_negatives/sql/gemma7b_sft_lora_chat_template_sql_ep1": "SFT (SQL) ep1",
            "ft/def/new_negatives/sql/gemma7b_sft_lora_chat_template_sql_ep2": "SFT (SQL) ep2",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep1_sql_ep1_withbadformat_bcoloss": "DPO (SQL) ep1 SFT ep1",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep1_sql_ep2_withbadformat_bcoloss": "DPO (SQL) ep1 SFT ep2",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep2_sql_ep1_withbadformat_bcoloss": "DPO (SQL) ep2 SFT ep1",
            "ft/def/new_negatives/sql/gemma7b_dpo_after_sft_ep2_sql_ep2_withbadformat_bcoloss": "DPO (SQL) ep2 SFT ep2",
        },
    },
    "llama3-8b_nl": {
        "models_root": Path("models/llama"),
        "runs": [
            "base/nl",
            "ft/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep1",
            "ft/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep2",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss",
        ],
        "labels": {
            "base/nl": "Base (NL)",
            "ft/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep1": "SFT (NL) ep1",
            "ft/new_negatives/nl/llama3_8b_sft_lora_chat_template_nl_ep2": "SFT (NL) ep2",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep1_withbadformat_bcoloss": "DPO (NL) ep1 SFT ep1",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep1_nl_ep2_withbadformat_bcoloss": "DPO (NL) ep1 SFT ep2",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep1_withbadformat_bcoloss": "DPO (NL) ep2 SFT ep1",
            "ft/new_negatives/nl/llama3_8b_dpo_after_sft_ep2_nl_ep2_withbadformat_bcoloss": "DPO (NL) ep2 SFT ep2",
        },
    },
    "llama3-8b_sql": {
        "models_root": Path("models/llama"),
        "runs": [
            "base/sql",
            "ft/new_negatives/sql/llama3_8b_sft_lora_chat_template_sql_ep1",
            "ft/new_negatives/sql/llama3_8b_sft_lora_chat_template_sql_ep2",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep1_sql_ep1_withbadformat_bcoloss",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep1_sql_ep2_withbadformat_bcoloss",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep2_sql_ep1_withbadformat_bcoloss",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep2_sql_ep2_withbadformat_bcoloss",
        ],
        "labels": {
            "base/sql": "Base (SQL)",
            "ft/new_negatives/sql/llama3_8b_sft_lora_chat_template_sql_ep1": "SFT (SQL) ep1",
            "ft/new_negatives/sql/llama3_8b_sft_lora_chat_template_sql_ep2": "SFT (SQL) ep2",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep1_sql_ep1_withbadformat_bcoloss": "DPO (SQL) ep1 SFT ep1",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep1_sql_ep2_withbadformat_bcoloss": "DPO (SQL) ep1 SFT ep2",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep2_sql_ep1_withbadformat_bcoloss": "DPO (SQL) ep2 SFT ep1",
            "ft/new_negatives/sql/llama3_8b_dpo_after_sft_ep2_sql_ep2_withbadformat_bcoloss": "DPO (SQL) ep2 SFT ep2",
        },
    }
}

OUT_DIR = Path("plots/comparisons_bestof")  # global output directory
OUT_DIR.mkdir(parents=True, exist_ok=True)


# -----------------------------
# 2) LOADING + NORMALIZATION
# -----------------------------
def load_eval_json(eval_path: Path) -> List[Dict[str, Any]]:
    with eval_path.open("r", encoding="utf-8") as f:
        data = json.load(f)

    if isinstance(data, list):
        return data

    if isinstance(data, dict):
        if "by_category" in data and isinstance(data["by_category"], list):
            return data["by_category"]
        for key in ("results", "categories", "data", "items"):
            if key in data and isinstance(data[key], list):
                return data[key]

    raise ValueError(f"Unrecognized eval.json structure in: {eval_path}")


def find_eval_path(model_path: Path) -> Optional[Path]:
    for folder, fname in EVAL_CANDIDATES:
        p = model_path / folder / fname
        if p.exists():
            return p
    return None


def extract_rows(backbone: str, model_key: str, items: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
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
                "backbone": backbone,
                "model": model_key,  # relative run path
                "category": cat,
                "count": count,
                "f1_result": only_result.get("f1"),
                "f1_provenance": only_prov.get("f1"),
                "f1_both": both.get("f1"),
            }
        )
    return rows


def ensure_all_categories(df: pd.DataFrame) -> pd.DataFrame:
    backbones = sorted(df["backbone"].unique().tolist())
    models = sorted(df["model"].unique().tolist())
    full_index = pd.MultiIndex.from_product(
        [backbones, models, CATEGORIES_ORDER],
        names=["backbone", "model", "category"],
    )
    df2 = df.set_index(["backbone", "model", "category"]).reindex(full_index).reset_index()
    df2["category"] = pd.Categorical(df2["category"], categories=CATEGORIES_ORDER, ordered=True)
    return df2


def model_family_from_label(model_label: str) -> str:
    s = model_label.lower()
    if s.startswith("base"):
        return "Base"
    if s.startswith("sft"):
        return "SFT"
    if s.startswith("dpo"):
        return "DPO"
    return "Other"


def build_dataframe_all(backbones_cfg: Dict[str, Dict[str, Any]]) -> pd.DataFrame:
    all_rows: List[Dict[str, Any]] = []

    for backbone, cfg in backbones_cfg.items():
        root: Path = cfg["models_root"]
        runs: List[str] = cfg["runs"]

        for run in runs:
            model_path = root / run
            if not model_path.exists():
                print(f"[SKIP] missing run dir: {model_path}")
                continue

            eval_path = find_eval_path(model_path)
            if eval_path is None:
                print(f"[SKIP] missing eval file under: {model_path}")
                continue

            try:
                items = load_eval_json(eval_path)
                print(f"[OK] {backbone}: loaded {eval_path} -> {len(items)} category items")
            except Exception as e:
                print(f"[ERR] {backbone}: failed parsing {eval_path}: {e}")
                continue

            all_rows.extend(extract_rows(backbone, run, items))

    if not all_rows:
        raise FileNotFoundError("No evaluation_per_type.json found. Check paths in BACKBONES config.")

    df = pd.DataFrame(all_rows)
    df["category"] = pd.Categorical(df["category"], categories=CATEGORIES_ORDER, ordered=True)
    return ensure_all_categories(df)


# -----------------------------
# 3) BEST-OF SELECTION (per backbone)
# -----------------------------
def add_labels_and_family(df: pd.DataFrame, backbones_cfg: Dict[str, Dict[str, Any]]) -> pd.DataFrame:
    df = df.copy()

    def _label(row):
        bb = row["backbone"]
        m = row["model"]
        labels = backbones_cfg.get(bb, {}).get("labels", {})
        return labels.get(m, m)

    df["model_label"] = df.apply(_label, axis=1)
    df["family"] = df["model_label"].apply(model_family_from_label)
    return df


def best_by_family_with_label(df: pd.DataFrame, metric_col: str) -> pd.DataFrame:
    """
    For each (backbone, category, family in {Base,SFT,DPO}) pick the best run.
    Produces:
      backbone, category, family, metric, best_run_label, plot_label
    """
    sub = df[df["family"].isin(["Base", "SFT", "DPO"])].copy()
    sub["val"] = pd.to_numeric(sub[metric_col], errors="coerce")

    # pick best index within each group; ignore NaNs safely
    idx = sub.groupby(["backbone", "family", "category"], observed=True)["val"].idxmax()
    best = sub.loc[idx].copy()

    best["best_run_label"] = best["model_label"]

    def _plot_label(row):
        fam = row["family"]
        bb = row["backbone"]
        run = row["best_run_label"]
        if fam == "Base":
            return f"{bb}: Base"
        return f"{bb}: best_{fam} ({run})"

    best["plot_label"] = best.apply(_plot_label, axis=1)

    best["category"] = pd.Categorical(best["category"], categories=CATEGORIES_ORDER, ordered=True)
    return best


def best_runs_table(best_df: pd.DataFrame) -> pd.DataFrame:
    """
    Table: backbone x category with selected best runs for SFT/DPO (and Base run label).
    """
    tab = best_df.pivot_table(
        index=["backbone", "category"],
        columns="family",
        values="best_run_label",
        aggfunc="first",
        observed=True,
    ).reindex(pd.MultiIndex.from_product(
        [sorted(best_df["backbone"].unique()), CATEGORIES_ORDER],
        names=["backbone", "category"]
    ))
    return tab.reset_index()


# -----------------------------
# 4) PLOTS
# -----------------------------
def plot_bestof_grouped_bars(best_df: pd.DataFrame, metric_col: str, title: str, out_path: Path):
    """
    For each backbone, plot grouped bars per category for Base/SFT/DPO.
    Legend entries include the selected best-run (most frequent across categories) per backbone+method.
    """
    out_path.parent.mkdir(parents=True, exist_ok=True)

    backbones = sorted(best_df["backbone"].unique().tolist())
    method_order = ["Base", "SFT", "DPO"]
    categories = CATEGORIES_ORDER

    # create one figure per backbone (cleaner)
    for bb in backbones:
        sub = best_df[best_df["backbone"] == bb].copy()
        if sub.empty:
            continue

        # legend labels: choose the mode run over categories for SFT/DPO
        legend_label = {}
        for fam in method_order:
            fam_sub = sub[sub["family"] == fam]
            if fam_sub.empty:
                continue
            if fam == "Base":
                legend_label[fam] = "Base"
            else:
                mode_run = fam_sub["best_run_label"].mode()
                mode_run = mode_run.iloc[0] if not mode_run.empty else fam_sub["best_run_label"].iloc[0]
                legend_label[fam] = f"best_{fam} ({mode_run})"

        pivot = sub.pivot_table(
            index="category", columns="family", values=metric_col,
            aggfunc="first", observed=True
        ).reindex(categories)

        x = list(range(len(categories)))
        n = len(method_order)
        bar_w = 0.8 / n

        plt.figure(figsize=(10, 6))
        for i, fam in enumerate(method_order):
            vals = pivot[fam].tolist() if fam in pivot.columns else [None] * len(categories)
            vals = [0 if (v is None or pd.isna(v)) else float(v) for v in vals]
            offsets = [xi + (i - (n - 1) / 2) * bar_w for xi in x]
            plt.bar(offsets, vals, width=bar_w, label=legend_label.get(fam, fam))

        plt.xticks(x, categories, rotation=20, ha="right")
        plt.ylim(0, 1.0)
        plt.ylabel("F1")
        plt.title(f"{title} — {bb}")
        plt.legend(title="Method (selected best run)", bbox_to_anchor=(1.02, 1), loc="upper left")
        plt.tight_layout()
        plt.savefig(out_path.with_name(f"{out_path.stem}_{bb}{out_path.suffix}"), dpi=200)
        plt.close()
    

def plot_heatmap_bestof(best_df: pd.DataFrame, metric_col: str, title: str, out_path: Path):
    """
    Heatmap for each backbone: rows = Base/SFT/DPO, cols = categories.
    """
    out_path.parent.mkdir(parents=True, exist_ok=True)

    backbones = sorted(best_df["backbone"].unique().tolist())
    method_order = ["Base", "SFT", "DPO"]

    for bb in backbones:
        sub = best_df[best_df["backbone"] == bb].copy()
        if sub.empty:
            continue

        pivot = sub.pivot_table(
            index="family", columns="category", values=metric_col,
            aggfunc="first", observed=True
        ).reindex(index=method_order, columns=CATEGORIES_ORDER)

        plt.figure(figsize=(10, 3.2))
        plt.imshow(pivot.values, aspect="auto", vmin=0, vmax=1)
        plt.colorbar(label="F1")
        plt.yticks(range(pivot.shape[0]), pivot.index)
        plt.xticks(range(pivot.shape[1]), pivot.columns, rotation=20, ha="right")

        for i in range(pivot.shape[0]):
            for j in range(pivot.shape[1]):
                v = pivot.iloc[i, j]
                txt = "" if pd.isna(v) else f"{v:.2f}"
                plt.text(j, i, txt, ha="center", va="center", fontsize=9)

        plt.title(f"{title} — {bb}")
        plt.tight_layout()
        plt.savefig(out_path.with_name(f"{out_path.stem}_{bb}{out_path.suffix}"), dpi=200)
        plt.close()
    

def improvement_vs_base(best_df: pd.DataFrame, metric_col: str) -> pd.DataFrame:
    """
    Returns long df: backbone, category, method(SFT/DPO), delta
    delta = method - Base per (backbone, category)
    """
    out_rows = []
    for bb in sorted(best_df["backbone"].unique().tolist()):
        sub = best_df[best_df["backbone"] == bb].copy()
        pivot = sub.pivot_table(
            index="category", columns="family", values=metric_col,
            aggfunc="first", observed=True
        ).reindex(CATEGORIES_ORDER)

        if "Base" not in pivot.columns:
            continue

        for method in ["SFT", "DPO"]:
            if method not in pivot.columns:
                continue
            delta = pivot[method] - pivot["Base"]
            for cat in CATEGORIES_ORDER:
                out_rows.append({
                    "backbone": bb,
                    "category": cat,
                    "method": method,
                    "delta": None if pd.isna(delta.loc[cat]) else float(delta.loc[cat]),
                })

    return pd.DataFrame(out_rows)


def plot_improvement_bars(delta_df: pd.DataFrame, title: str, out_path: Path):
    """
    One figure per backbone: grouped bars for ΔF1 vs Base (SFT & DPO) across categories.
    """
    out_path.parent.mkdir(parents=True, exist_ok=True)

    categories = CATEGORIES_ORDER
    methods = ["SFT", "DPO"]

    for bb in sorted(delta_df["backbone"].unique().tolist()):
        sub = delta_df[delta_df["backbone"] == bb].copy()
        if sub.empty:
            continue

        pivot = sub.pivot_table(
            index="category", columns="method", values="delta",
            aggfunc="first", observed=True
        ).reindex(categories)

        x = list(range(len(categories)))
        bar_w = 0.35

        plt.figure(figsize=(10, 4))
        for i, m in enumerate(methods):
            vals = pivot[m].tolist() if m in pivot.columns else [0]*len(categories)
            vals = [0 if (v is None or pd.isna(v)) else float(v) for v in vals]
            offsets = [xi + (i - 0.5) * bar_w for xi in x]
            plt.bar(offsets, vals, width=bar_w, label=m)

        plt.axhline(0, linewidth=1)
        plt.xticks(x, categories, rotation=20, ha="right")
        plt.ylabel("ΔF1 vs Base")
        plt.title(f"{title} — {bb}")
        plt.legend()
        plt.tight_layout()
        plt.savefig(out_path.with_name(f"{out_path.stem}_{bb}{out_path.suffix}"), dpi=200)
        plt.close()
    

def plot_complexity_curve(best_df: pd.DataFrame, metric_col: str, title: str, out_path: Path):
    """
    One figure per backbone: lines for Base/SFT/DPO across category complexity.
    """
    out_path.parent.mkdir(parents=True, exist_ok=True)

    method_order = ["Base", "SFT", "DPO"]
    x = list(range(len(CATEGORIES_ORDER)))

    for bb in sorted(best_df["backbone"].unique().tolist()):
        sub = best_df[best_df["backbone"] == bb].copy()
        if sub.empty:
            continue

        pivot = sub.pivot_table(
            index="category", columns="family", values=metric_col,
            aggfunc="first", observed=True
        ).reindex(index=CATEGORIES_ORDER)

        plt.figure(figsize=(10, 4))
        for fam in method_order:
            if fam not in pivot.columns:
                continue
            y = [0 if pd.isna(v) else float(v) for v in pivot[fam].tolist()]
            plt.plot(x, y, marker="o", label=fam)

        plt.xticks(x, CATEGORIES_ORDER, rotation=20, ha="right")
        plt.ylim(0, 1.0)
        plt.ylabel("F1")
        plt.title(f"{title} — {bb}")
        plt.legend()
        plt.tight_layout()
        plt.savefig(out_path.with_name(f"{out_path.stem}_{bb}{out_path.suffix}"), dpi=200)
        plt.close()
    

def plot_cross_backbone_heatmap(best_df: pd.DataFrame, metric_col: str, family: str, title: str, out_path: Path):
    """
    Cross-backbone heatmap for a single family (e.g. best_DPO):
      rows = backbone, cols = categories, values = metric
    """
    out_path.parent.mkdir(parents=True, exist_ok=True)

    sub = best_df[best_df["family"] == family].copy()
    if sub.empty:
        print(f"[SKIP] No rows for family={family}")
        return

    pivot = sub.pivot_table(
        index="backbone", columns="category", values=metric_col,
        aggfunc="first", observed=True
    ).reindex(index=sorted(sub["backbone"].unique()), columns=CATEGORIES_ORDER)

    plt.figure(figsize=(10, 3.6))
    plt.imshow(pivot.values, aspect="auto", vmin=0, vmax=1)
    plt.colorbar(label="F1")
    plt.yticks(range(pivot.shape[0]), pivot.index)
    plt.xticks(range(pivot.shape[1]), pivot.columns, rotation=20, ha="right")

    for i in range(pivot.shape[0]):
        for j in range(pivot.shape[1]):
            v = pivot.iloc[i, j]
            txt = "" if pd.isna(v) else f"{v:.2f}"
            plt.text(j, i, txt, ha="center", va="center", fontsize=9)

    plt.title(title)
    plt.tight_layout()
    plt.savefig(out_path, dpi=200)
    plt.close()

def plot_cross_backbone_delta_heatmap(delta_df: pd.DataFrame, method: str, title: str, out_path: Path):
    """
    Heatmap: rows = backbone, cols = category
    values = ΔF1 vs Base
    """
    sub = delta_df[delta_df["method"] == method].copy()

    if sub.empty:
        print(f"[SKIP] no data for method={method}")
        return

    pivot = sub.pivot_table(
        index="backbone",
        columns="category",
        values="delta",
        aggfunc="first",
        observed=True,
    ).reindex(columns=CATEGORIES_ORDER)

    # symmetric scale around 0
    vmax = pivot.max().max()
    vmin = pivot.min().min()
    bound = max(abs(vmax), abs(vmin))

    plt.figure(figsize=(10, 3.6))
    plt.imshow(pivot.values, aspect="auto", vmin=-bound, vmax=bound)
    plt.colorbar(label="ΔF1 vs Base")

    plt.yticks(range(pivot.shape[0]), pivot.index)
    plt.xticks(range(pivot.shape[1]), pivot.columns, rotation=20, ha="right")

    # annotate values
    for i in range(pivot.shape[0]):
        for j in range(pivot.shape[1]):
            v = pivot.iloc[i, j]
            txt = "" if pd.isna(v) else f"{v:+.2f}"
            plt.text(j, i, txt, ha="center", va="center", fontsize=9)

    plt.title(title)
    plt.tight_layout()
    plt.savefig(out_path, dpi=200)
    plt.close()


# -----------------------------
# 5) MAIN
# -----------------------------
def main():
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    # 1) Load all runs
    df = build_dataframe_all(BACKBONES)
    df = add_labels_and_family(df, BACKBONES)

    # save long raw
    df.to_csv(OUT_DIR / "metrics_long_all_runs.csv", index=False)

    # 2) Best-of selection (per backbone/category/method)
    best_prov = best_by_family_with_label(df, "f1_provenance")
    best_res = best_by_family_with_label(df, "f1_result")

    best_prov.to_csv(OUT_DIR / "bestof_long_provenance.csv", index=False)
    best_res.to_csv(OUT_DIR / "bestof_long_result.csv", index=False)

    # 3) Best-run tables (so you can cite: "best_DPO (llama3-8b = DPO ep1 SFT ep2)")
    tab_prov = best_runs_table(best_prov)
    tab_res = best_runs_table(best_res)
    tab_prov.to_csv(OUT_DIR / "best_runs_by_category_provenance.csv", index=False)
    tab_res.to_csv(OUT_DIR / "best_runs_by_category_result.csv", index=False)

    print("\n=== BEST RUNS (PROVENANCE) ===")
    print(tab_prov.to_string(index=False))

    # 4) Plots per backbone (clean paper plots)
    plot_bestof_grouped_bars(
        best_prov, "f1_provenance",
        title="Best-of (Base / best SFT / best DPO) — Provenance F1",
        out_path=OUT_DIR / "bestof_grouped_provenance.png",
    )
    plot_bestof_grouped_bars(
        best_res, "f1_result",
        title="Best-of (Base / best SFT / best DPO) — Result F1",
        out_path=OUT_DIR / "bestof_grouped_result.png",
    )

    plot_heatmap_bestof(
        best_prov, "f1_provenance",
        title="Best-of Heatmap — Provenance F1",
        out_path=OUT_DIR / "heatmap_bestof_provenance.png",
    )
    plot_heatmap_bestof(
        best_res, "f1_result",
        title="Best-of Heatmap — Result F1",
        out_path=OUT_DIR / "heatmap_bestof_result.png",
    )

    # 5) Improvement vs Base per backbone
    delta_prov = improvement_vs_base(best_prov, "f1_provenance")
    delta_res = improvement_vs_base(best_res, "f1_result")

    delta_prov.to_csv(OUT_DIR / "delta_vs_base_provenance.csv", index=False)
    delta_res.to_csv(OUT_DIR / "delta_vs_base_result.csv", index=False)

    plot_improvement_bars(
        delta_prov,
        title="Improvement vs Base (ΔF1) — Provenance",
        out_path=OUT_DIR / "delta_vs_base_provenance.png",
    )
    plot_improvement_bars(
        delta_res,
        title="Improvement vs Base (ΔF1) — Result",
        out_path=OUT_DIR / "delta_vs_base_result.png",
    )
    # 5.1) Cross-backbone ΔF1 heatmaps (THIS compares methods vs Base across backbones)
    plot_cross_backbone_delta_heatmap(
    delta_prov,
    method="DPO",
    title="Cross-Backbone ΔF1 Provenance (best_DPO - Base)",
    out_path=OUT_DIR / "cross_backbone_delta_provenance_dpo.png",
    )

    plot_cross_backbone_delta_heatmap(
        delta_prov,
        method="SFT",
        title="Cross-Backbone ΔF1 Provenance (best_SFT - Base)",
        out_path=OUT_DIR / "cross_backbone_delta_provenance_sft.png",
    )

    plot_cross_backbone_delta_heatmap(
        delta_res,
        method="DPO",
        title="Cross-Backbone ΔF1 Result (best_DPO - Base)",
        out_path=OUT_DIR / "cross_backbone_delta_result_dpo.png",
    )

    plot_cross_backbone_delta_heatmap(
        delta_res,
        method="SFT",
        title="Cross-Backbone ΔF1 Result (best_SFT - Base)",
        out_path=OUT_DIR / "cross_backbone_delta_result_sft.png",
    )
    # 6) Complexity curves per backbone
    plot_complexity_curve(
        best_prov, "f1_provenance",
        title="Best-of — Provenance vs Query Complexity",
        out_path=OUT_DIR / "curve_bestof_provenance.png",
    )
    plot_complexity_curve(
        best_res, "f1_result",
        title="Best-of — Result vs Query Complexity",
        out_path=OUT_DIR / "curve_bestof_result.png",
    )

    # 7) Cross-backbone comparison heatmaps (THIS compares models directly)
    # Example: compare best_DPO across backbones
    plot_cross_backbone_heatmap(
        best_prov, "f1_provenance", family="DPO",
        title="Cross-Backbone — best_DPO Provenance F1",
        out_path=OUT_DIR / "cross_backbone_bestDPO_provenance.png",
    )
    plot_cross_backbone_heatmap(
        best_prov, "f1_provenance", family="SFT",
        title="Cross-Backbone — best_SFT Provenance F1",
        out_path=OUT_DIR / "cross_backbone_bestSFT_provenance.png",
    )

    print(f"\nSaved all outputs in: {OUT_DIR.resolve()}")


if __name__ == "__main__":
    main()