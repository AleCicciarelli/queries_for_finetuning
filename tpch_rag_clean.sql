select  
  ref_0.l_quantity as c0, 
  ref_0.l_partkey as c1
from 
  public.lineitem as ref_0
where ref_0.l_suppkey is not NULL
limit 72;


select  
  96 as c0, 
  ref_0.o_orderkey as c1, 
  ref_0.o_orderpriority as c2, 
  ref_0.o_comment as c3, 
  ref_0.o_orderdate as c4
from 
  public.orders as ref_0
where false;


select  
  ref_0.r_regionkey as c0, 
  15 as c1
from 
  public.region as ref_0
where ref_0.r_comment is not NULL
limit 93;


select  
  ref_0.s_acctbal as c0, 
  ref_0.s_nationkey as c1, 
  ref_0.s_address as c2, 
  ref_0.s_suppkey as c3, 
  7 as c4, 
  ref_0.s_name as c5
from 
  public.supplier as ref_0
where true
limit 147;


select  
  ref_0.o_custkey as c0, 
  ref_0.o_orderdate as c1
from 
  public.orders as ref_0
where true;


select  
  ref_0.s_name as c0, 
  ref_0.s_name as c1, 
  ref_0.s_phone as c2
from 
  public.supplier as ref_0
where true
limit 91;


select  
  ref_0.r_regionkey as c0, 
  ref_0.r_regionkey as c1, 
  ref_0.r_regionkey as c2, 
  ref_0.r_regionkey as c3
from 
  public.region as ref_0
where ref_0.r_regionkey is not NULL
limit 95;


select  
  ref_0.c_custkey as c0
from 
  public.customer as ref_0
where false
limit 39;


select  
  ref_0.c_comment as c0
from 
  public.customer as ref_0
where false
limit 130;


select  
  ref_0.l_comment as c0, 
  ref_0.l_returnflag as c1, 
  ref_0.l_commitdate as c2, 
  ref_0.l_linestatus as c3
from 
  public.lineitem as ref_0
where ref_0.l_comment is not NULL
limit 164;


select  
  ref_0.s_address as c0
from 
  public.supplier as ref_0
where ref_0.s_suppkey is not NULL
limit 106;


select  
  ref_0.s_suppkey as c0
from 
  public.supplier as ref_0
    inner join public.part as ref_1
      inner join public.orders as ref_2
      on (ref_1.p_partkey is not NULL)
    on (true)
where ref_1.p_brand is NULL
limit 143;


select  
  ref_0.c_address as c0
from 
  public.customer as ref_0
where ref_0.c_custkey is NULL
limit 82;


select  
  ref_0.n_name as c0, 
  ref_0.n_name as c1
from 
  public.nation as ref_0
where false
limit 83;


select  
  ref_0.ps_partkey as c0
from 
  public.partsupp as ref_0
where true;


select  
  ref_0.p_mfgr as c0
from 
  public.part as ref_0
where ref_0.p_retailprice is NULL
limit 92;


select  
  ref_0.c_mktsegment as c0, 
  ref_0.c_custkey as c1
from 
  public.customer as ref_0
where ref_0.c_nationkey is NULL
limit 102;


select  
  ref_0.c_phone as c0, 
  ref_0.c_phone as c1
from 
  public.customer as ref_0
where 75 is not NULL
limit 100;


select  
  ref_0.r_comment as c0
from 
  public.region as ref_0
where true
limit 189;


select  
  ref_0.r_comment as c0, 
  ref_0.r_regionkey as c1
from 
  public.region as ref_0
where ref_0.r_comment is not NULL
limit 32;


select  
  ref_0.n_name as c0, 
  ref_0.n_comment as c1, 
  ref_0.n_name as c2, 
  ref_0.n_comment as c3, 
  ref_0.n_name as c4
from 
  public.nation as ref_0
where ref_0.n_nationkey is not NULL;


select  
  ref_0.s_name as c0, 
  ref_0.s_phone as c1
from 
  public.supplier as ref_0
where true;


select  
  ref_0.s_name as c0
from 
  public.supplier as ref_0
where ref_0.s_comment is NULL
limit 84;


select  
  ref_0.ps_comment as c0, 
  ref_0.ps_partkey as c1, 
  ref_0.ps_partkey as c2, 
  ref_0.ps_supplycost as c3
from 
  public.partsupp as ref_0
where ref_0.ps_partkey is NULL;


select  
  ref_0.o_orderdate as c0, 
  ref_0.o_orderkey as c1, 
  ref_0.o_orderpriority as c2, 
  ref_0.o_totalprice as c3
from 
  public.orders as ref_0
where ref_0.o_orderkey is not NULL
limit 71;


select  
  ref_0.o_orderdate as c0, 
  ref_0.o_comment as c1, 
  ref_0.o_orderstatus as c2
from 
  public.orders as ref_0
where ref_0.o_orderstatus is NULL
limit 40;


select  
  ref_0.s_suppkey as c0, 
  99 as c1, 
  ref_0.s_phone as c2, 
  ref_0.s_phone as c3, 
  ref_0.s_phone as c4
from 
  public.supplier as ref_0
where ref_0.s_comment is not NULL
limit 106;


select  
  ref_0.p_container as c0, 
  ref_0.p_retailprice as c1, 
  ref_0.p_type as c2, 
  ref_0.p_comment as c3, 
  57 as c4, 
  ref_0.p_mfgr as c5, 
  ref_0.p_retailprice as c6, 
  ref_0.p_brand as c7, 
  ref_0.p_type as c8, 
  ref_0.p_container as c9
from 
  public.part as ref_0
where true
limit 94;


select  
  100 as c0
from 
  public.customer as ref_0
where true
limit 40;


select  
  ref_0.p_size as c0, 
  ref_0.p_type as c1, 
  ref_0.p_comment as c2, 
  ref_0.p_type as c3, 
  ref_0.p_brand as c4, 
  ref_0.p_size as c5, 
  ref_0.p_container as c6, 
  ref_0.p_size as c7, 
  ref_0.p_container as c8
from 
  public.part as ref_0
where (true) 
  and (false)
limit 123;


select  
  ref_0.o_custkey as c0
from 
  public.orders as ref_0
where true
limit 132;


select  
  ref_0.l_extendedprice as c0
from 
  public.lineitem as ref_0
where ref_0.l_comment is NULL;


select  
  ref_0.o_orderpriority as c0, 
  ref_0.o_totalprice as c1
from 
  public.orders as ref_0
where ref_0.o_orderkey is NULL;


select  
  ref_0.r_regionkey as c0, 
  ref_0.r_name as c1
from 
  public.region as ref_0
where false;


select  
  ref_0.r_regionkey as c0, 
  ref_0.r_name as c1, 
  ref_0.r_regionkey as c2
from 
  public.region as ref_0
where true
limit 131;


select  
  ref_0.p_mfgr as c0, 
  ref_0.p_container as c1
from 
  public.part as ref_0
where true;


select  
  ref_0.ps_partkey as c0, 
  ref_0.ps_comment as c1
from 
  public.partsupp as ref_0
where ref_0.ps_suppkey is not NULL;


select  
  ref_0.p_partkey as c0, 
  ref_0.p_comment as c1
from 
  public.part as ref_0
where ref_0.p_size is not NULL;


select  
  ref_0.r_regionkey as c0
from 
  public.region as ref_0
where false
limit 59;


select  
  ref_0.n_name as c0
from 
  public.nation as ref_0
where true;


select  
  ref_0.l_comment as c0, 
  ref_0.l_partkey as c1, 
  ref_0.l_receiptdate as c2
from 
  public.lineitem as ref_0
where true;


select  
  ref_0.c_phone as c0, 
  ref_0.c_custkey as c1, 
  ref_0.c_mktsegment as c2
from 
  public.customer as ref_0
where false;


select  
  case when true then 29 else ref_0.p_size end
     as c0, 
  ref_0.p_container as c1
from 
  public.part as ref_0
where ref_0.p_type is not NULL
limit 144;


select  
  ref_0.l_partkey as c0
from 
  public.lineitem as ref_0
where false
limit 167;


select  
  ref_0.c_comment as c0, 
  ref_0.c_address as c1
from 
  public.customer as ref_0
where false;


select  
  ref_0.c_acctbal as c0
from 
  public.customer as ref_0
where true;


select  
  98 as c0, 
  ref_0.s_suppkey as c1
from 
  public.supplier as ref_0
where ref_0.s_comment is NULL;


select  
  ref_0.s_address as c0
from 
  public.supplier as ref_0
where true;


select  
  ref_0.s_address as c0
from 
  public.supplier as ref_0
where ref_0.s_acctbal is NULL
limit 78;


select  
  ref_0.o_clerk as c0, 
  ref_0.o_orderdate as c1
from 
  public.orders as ref_0
where ref_0.o_orderkey is not NULL
limit 143;


select  
  ref_0.l_linenumber as c0, 
  ref_0.l_quantity as c1, 
  ref_0.l_suppkey as c2
from 
  public.lineitem as ref_0
where false
limit 195;


select  
  ref_0.n_nationkey as c0
from 
  public.nation as ref_0
where ref_0.n_regionkey is NULL;


select  
  79 as c0, 
  ref_0.c_name as c1, 
  ref_0.c_name as c2
from 
  public.customer as ref_0
where ref_0.c_custkey is not NULL;


select  
  ref_0.l_partkey as c0, 
  ref_0.l_extendedprice as c1
from 
  public.lineitem as ref_0
where false
limit 66;


select  
  ref_0.l_shipinstruct as c0, 
  ref_0.l_linestatus as c1, 
  ref_0.l_commitdate as c2
from 
  public.lineitem as ref_0
where false;


select  
  ref_0.n_regionkey as c0, 
  ref_0.n_regionkey as c1
from 
  public.nation as ref_0
where false
limit 123;


select  
  ref_0.ps_partkey as c0
from 
  public.partsupp as ref_0
where ref_0.ps_comment is NULL
limit 93;


