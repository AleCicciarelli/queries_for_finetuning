select  
  ref_0.n_regionkey as c0, 
  ref_0.n_name as c1, 
  ref_0.n_name as c2, 
  ref_0.n_comment as c3, 
  ref_0.n_name as c4, 
  ref_0.n_name as c5, 
  74 as c6
from 
  public.nation as ref_0
where ref_0.n_regionkey is NULL
limit 122;


select  
  sample_0.p_retailprice as c0
from 
  public.part as sample_0 tablesample system (5.5) 
where sample_0.p_brand ~<=~ sample_0.p_mfgr;


select  
  ref_0.ps_suppkey as c0, 
  ref_0.ps_partkey as c1, 
  ref_0.ps_supplycost as c2, 
  ref_0.ps_suppkey as c3
from 
  public.partsupp as ref_0
where false
limit 92;


select  
  sample_0.n_comment as c0
from 
  public.nation as sample_0 tablesample system (7.9) 
where false;


select  
  case when sample_0.s_name is not NULL then sample_0.s_nationkey else sample_0.s_nationkey end
     as c0, 
  sample_0.s_name as c1, 
  sample_0.s_address as c2
from 
  public.supplier as sample_0 tablesample bernoulli (8.4) 
where sample_0.s_address is not NULL;


select  
  sample_0.ps_suppkey as c0
from 
  public.partsupp as sample_0 tablesample system (3.1) 
where 73 is NULL
limit 122;


select  
  sample_0.c_acctbal as c0, 
  sample_0.c_nationkey as c1, 
  sample_0.c_name as c2, 
  sample_0.c_nationkey as c3, 
  sample_0.c_address as c4
from 
  public.customer as sample_0 tablesample bernoulli (5.9) 
where sample_0.c_name is not NULL;


select  
  ref_0.s_name as c0, 
  ref_0.s_suppkey as c1, 
  ref_0.s_name as c2, 
  ref_0.s_acctbal as c3
from 
  public.supplier as ref_0
where ref_0.s_suppkey is NULL;


select  
  sample_0.p_mfgr as c0
from 
  public.part as sample_0 tablesample system (3.2) 
where sample_0.p_size is not NULL;


select  
  ref_0.l_shipinstruct as c0, 
  ref_0.l_partkey as c1
from 
  public.lineitem as ref_0
where ref_0.l_shipmode is NULL
limit 51;


select  
  ref_0.c_mktsegment as c0
from 
  public.customer as ref_0
where false
limit 93;


select  
  sample_0.o_orderdate as c0, 
  sample_0.o_orderpriority as c1
from 
  public.orders as sample_0 tablesample system (0.9) 
where true
limit 158;


select  
  ref_0.l_shipinstruct as c0, 
  ref_0.l_extendedprice as c1, 
  ref_0.l_linenumber as c2, 
  ref_0.l_shipmode as c3, 
  ref_0.l_linenumber as c4, 
  ref_0.l_commitdate as c5
from 
  public.lineitem as ref_0
where ref_0.l_partkey is not NULL
limit 83;


select  
  sample_0.c_custkey as c0
from 
  public.customer as sample_0 tablesample system (4.4) 
where sample_0.c_custkey is NULL
limit 71;


select  
  ref_0.l_shipmode as c0
from 
  public.lineitem as ref_0
where false;


select  
  sample_0.n_name as c0, 
  sample_0.n_comment as c1, 
  sample_0.n_regionkey as c2
from 
  public.nation as sample_0 tablesample system (5.8) 
where false
limit 120;


select  
  ref_0.n_regionkey as c0
from 
  public.nation as ref_0
where true;


select  
  sample_0.ps_availqty as c0
from 
  public.partsupp as sample_0 tablesample system (5.7) 
where sample_0.ps_availqty is NULL
limit 75;


select  
  ref_0.r_name as c0, 
  ref_0.r_name as c1, 
  ref_0.r_name as c2, 
  ref_0.r_regionkey as c3, 
  ref_0.r_regionkey as c4, 
  ref_0.r_name as c5, 
  ref_0.r_comment as c6
from 
  public.region as ref_0
where ref_0.r_regionkey is NULL
limit 141;


select  
  sample_0.s_phone as c0
from 
  public.supplier as sample_0 tablesample system (8.2) 
where false
limit 99;


select  
  sample_0.r_regionkey as c0, 
  sample_0.r_regionkey as c1, 
  sample_0.r_name as c2
from 
  public.region as sample_0 tablesample bernoulli (1.6) 
where false
limit 124;


select  
  sample_0.s_name as c0, 
  sample_0.s_suppkey as c1, 
  sample_0.s_name as c2, 
  sample_0.s_comment as c3
from 
  public.supplier as sample_0 tablesample bernoulli (4.9) 
where sample_0.s_suppkey is not NULL;


select  
  sample_0.l_orderkey as c0
from 
  public.lineitem as sample_0 tablesample bernoulli (2.4) 
where true
limit 119;


select  
  ref_0.r_name as c0, 
  ref_0.r_name as c1, 
  ref_0.r_comment as c2
from 
  public.region as ref_0
where (true) 
  and (ref_0.r_regionkey is NULL)
limit 98;


select  
  ref_0.l_partkey as c0, 
  62 as c1, 
  case when false then ref_0.l_shipinstruct else ref_0.l_shipinstruct end
     as c2, 
  ref_0.l_linestatus as c3, 
  ref_0.l_shipmode as c4
from 
  public.lineitem as ref_0
where false;


select  
  sample_0.l_linenumber as c0, 
  sample_0.l_tax as c1, 
  sample_0.l_linenumber as c2
from 
  public.lineitem as sample_0 tablesample bernoulli (3.2) 
where sample_0.l_shipmode is not NULL
limit 52;


select  
  ref_0.ps_supplycost as c0
from 
  public.partsupp as ref_0
where ref_0.ps_supplycost is not NULL
limit 45;


select  
  ref_0.ps_partkey as c0
from 
  public.partsupp as ref_0
where ref_0.ps_supplycost is NULL;


select  
  sample_0.p_retailprice as c0
from 
  public.part as sample_0 tablesample system (3.3) 
where true;


select  
  sample_0.ps_suppkey as c0
from 
  public.partsupp as sample_0 tablesample system (9.2) 
where sample_0.ps_supplycost is not NULL;


select  
  ref_0.r_name as c0, 
  ref_0.r_comment as c1, 
  ref_0.r_comment as c2, 
  ref_0.r_name as c3, 
  ref_0.r_regionkey as c4
from 
  public.region as ref_0
where ref_0.r_name is not NULL;


select  
  sample_0.ps_suppkey as c0, 
  sample_0.ps_supplycost as c1, 
  sample_0.ps_availqty as c2, 
  sample_0.ps_suppkey as c3, 
  sample_0.ps_supplycost as c4, 
  sample_0.ps_supplycost as c5
from 
  public.partsupp as sample_0 tablesample system (2.2) 
where true
limit 68;


select  
  case when ref_0.ps_comment is NULL then ref_0.ps_comment else ref_0.ps_comment end
     as c0, 
  ref_0.ps_partkey as c1, 
  ref_0.ps_availqty as c2, 
  ref_0.ps_partkey as c3
from 
  public.partsupp as ref_0
where ref_0.ps_availqty is NULL;


select  
  ref_0.n_comment as c0, 
  ref_0.n_nationkey as c1
from 
  public.nation as ref_0
where ref_0.n_regionkey is NULL;


select  
  sample_0.p_comment as c0
from 
  public.part as sample_0 tablesample system (3.2) 
where true
limit 24;


select  
  ref_0.s_comment as c0, 
  ref_0.s_name as c1, 
  ref_0.s_comment as c2, 
  ref_0.s_address as c3
from 
  public.supplier as ref_0
where ref_0.s_comment is not NULL
limit 31;


select  
  ref_0.ps_supplycost as c0
from 
  public.partsupp as ref_0
where true;


select  
  sample_0.o_shippriority as c0, 
  sample_0.o_shippriority as c1, 
  sample_0.o_clerk as c2, 
  sample_0.o_clerk as c3, 
  sample_0.o_orderdate as c4
from 
  public.orders as sample_0 tablesample bernoulli (2.4) 
where sample_0.o_orderdate is NULL
limit 134;


select  
  ref_0.n_name as c0, 
  ref_0.n_nationkey as c1, 
  ref_0.n_comment as c2
from 
  public.nation as ref_0
where true
limit 60;


select  
  ref_0.s_phone as c0, 
  ref_0.s_acctbal as c1
from 
  public.supplier as ref_0
where false;


select  
  ref_0.r_comment as c0, 
  ref_0.r_comment as c1, 
  ref_0.r_name as c2, 
  ref_0.r_comment as c3
from 
  public.region as ref_0
where ref_0.r_regionkey < ref_0.r_regionkey
limit 124;


select  
  sample_0.s_nationkey as c0, 
  sample_0.s_address as c1, 
  sample_0.s_address as c2
from 
  public.supplier as sample_0 tablesample bernoulli (9.5) 
where sample_0.s_phone is NULL
limit 104;


select  
  ref_0.c_phone as c0
from 
  public.customer as ref_0
where ref_0.c_acctbal is NULL
limit 165;


select  
  sample_0.l_quantity as c0, 
  sample_0.l_commitdate as c1
from 
  public.lineitem as sample_0 tablesample system (2.6) 
    right join public.part as ref_0
    on (sample_0.l_suppkey is NULL)
where false;


select  
  sample_0.p_partkey as c0
from 
  public.part as sample_0 tablesample system (4.7) 
where sample_0.p_partkey <> sample_0.p_size;


select  
  ref_0.p_type as c0
from 
  public.part as ref_0
where (ref_0.p_type is NULL) 
  and (ref_0.p_comment is NULL)
limit 166;


