select  
  sample_0.s_acctbal as c0, 
  18 as c1
from 
  public.supplier as sample_0 tablesample bernoulli (5.9) 
where sample_0.s_address is NULL
limit 170;


select  
  ref_0.c_comment as c0
from 
  public.customer as ref_0
where false;


select  
  sample_0.c_nationkey as c0, 
  38 as c1
from 
  public.customer as sample_0 tablesample system (4.8) 
where false;


select  
  ref_0.o_orderdate as c0, 
  ref_0.o_orderpriority as c1, 
  54 as c2
from 
  public.orders as ref_0
where ref_0.o_orderstatus is not NULL;


select  
  sample_0.c_acctbal as c0
from 
  public.customer as sample_0 tablesample system (3.9) 
where sample_0.c_address is NULL;


select  
  case when sample_0.c_name is NULL then sample_0.c_phone else sample_0.c_mktsegment end
     as c0, 
  sample_0.c_nationkey as c1
from 
  public.customer as sample_0 tablesample system (9.5) 
where sample_0.c_custkey is not NULL;


select  
  sample_0.o_orderpriority as c0, 
  sample_0.o_shippriority as c1
from 
  public.orders as sample_0 tablesample bernoulli (6) 
where sample_0.o_totalprice is not NULL;


select  
  sample_0.ps_partkey as c0
from 
  public.partsupp as sample_0 tablesample system (1.7) 
where case when false then sample_0.ps_supplycost else sample_0.ps_supplycost end
     is not NULL;


select  
  sample_0.c_mktsegment as c0, 
  sample_0.c_nationkey as c1
from 
  public.customer as sample_0 tablesample system (3.2) 
where false
limit 139;


select  
  ref_0.n_regionkey as c0
from 
  public.nation as ref_0
where ref_0.n_name is NULL
limit 111;


select  
  51 as c0
from 
  public.partsupp as sample_0 tablesample system (5.8) 
where sample_0.ps_availqty is not NULL
limit 155;


select  
  ref_0.o_orderdate as c0
from 
  public.orders as ref_0
where true
limit 41;


select  
  sample_0.r_comment as c0
from 
  public.region as sample_0 tablesample bernoulli (6.4) 
where true
limit 156;


select  
  sample_0.n_name as c0, 
  sample_0.n_comment as c1
from 
  public.nation as sample_0 tablesample system (9.5) 
where sample_0.n_regionkey is NULL
limit 53;


select  
  ref_0.l_shipinstruct as c0, 
  ref_0.l_linenumber as c1
from 
  public.lineitem as ref_0
where ref_0.l_tax is not NULL;


select  
  sample_0.o_orderpriority as c0
from 
  public.orders as sample_0 tablesample system (0.3) 
where sample_0.o_totalprice is not NULL;


select  
  ref_0.r_comment as c0
from 
  public.region as ref_0
where ref_0.r_regionkey is not NULL
limit 166;


select  
  sample_0.o_comment as c0, 
  sample_0.o_shippriority as c1, 
  sample_0.o_orderkey as c2, 
  sample_0.o_orderstatus as c3, 
  sample_0.o_orderpriority as c4, 
  sample_0.o_orderkey as c5
from 
  public.orders as sample_0 tablesample system (6.3) 
where sample_0.o_comment is NULL
limit 129;


select  
  sample_0.r_regionkey as c0
from 
  public.region as sample_0 tablesample system (0.3) 
where sample_0.r_name is not NULL;


select  
  sample_0.o_comment as c0, 
  sample_0.o_orderkey as c1, 
  sample_0.o_orderpriority as c2, 
  sample_0.o_orderpriority as c3, 
  sample_0.o_clerk as c4
from 
  public.orders as sample_0 tablesample system (5.3) 
where true
limit 103;


select  
  ref_0.ps_supplycost as c0
from 
  public.partsupp as ref_0
where ref_0.ps_partkey is not NULL
limit 39;


select  
  sample_0.r_regionkey as c0, 
  sample_0.r_comment as c1, 
  sample_0.r_comment as c2, 
  sample_0.r_comment as c3, 
  sample_0.r_name as c4
from 
  public.region as sample_0 tablesample bernoulli (4.5) 
where false
limit 72;


select  
  sample_0.r_name as c0
from 
  public.region as sample_0 tablesample system (3.7) 
where true
limit 120;


select  
  ref_0.s_phone as c0
from 
  public.supplier as ref_0
where ref_0.s_name is not NULL
limit 125;


select  
  sample_0.ps_supplycost as c0, 
  sample_0.ps_availqty as c1
from 
  public.partsupp as sample_0 tablesample bernoulli (5.4) 
where sample_0.ps_comment is NULL
limit 30;


select  
  ref_0.s_phone as c0, 
  ref_0.s_suppkey as c1
from 
  public.supplier as ref_0
where true
limit 80;


select  
  ref_0.r_comment as c0
from 
  public.region as ref_0
where ref_0.r_comment is NULL
limit 123;


select  
  ref_0.ps_comment as c0
from 
  public.partsupp as ref_0
where case when ref_0.ps_partkey is not NULL then ref_0.ps_comment else ref_0.ps_comment end
     is NULL
limit 42;


select  
  sample_0.s_suppkey as c0
from 
  public.supplier as sample_0 tablesample system (5.7) 
where false;


select  
  ref_0.c_mktsegment as c0
from 
  public.customer as ref_0
where false
limit 85;


select  
  ref_0.p_brand as c0
from 
  public.part as ref_0
where ref_0.p_name is NULL
limit 94;


select  
  ref_0.n_nationkey as c0, 
  ref_0.n_regionkey as c1
from 
  public.nation as ref_0
where false
limit 115;


select  
  ref_0.n_comment as c0, 
  ref_0.n_regionkey as c1
from 
  public.nation as ref_0
where ref_0.n_name is not NULL
limit 36;


select  
  sample_0.ps_partkey as c0
from 
  public.partsupp as sample_0 tablesample bernoulli (2.6) 
where true;


select  
  ref_0.n_nationkey as c0
from 
  public.nation as ref_0
where true;


select  
  ref_0.o_orderkey as c0
from 
  public.orders as ref_0
where ref_0.o_clerk is not NULL
limit 91;


select  
  ref_0.c_acctbal as c0, 
  ref_0.c_comment as c1, 
  ref_0.c_address as c2
from 
  public.customer as ref_0
where false;


select  
  ref_0.o_orderkey as c0
from 
  public.orders as ref_0
where ref_0.o_clerk is not NULL
limit 75;


select  
  sample_0.r_name as c0
from 
  public.region as sample_0 tablesample bernoulli (8) 
where ((sample_0.r_regionkey is NULL) 
    and (sample_0.r_comment is NULL)) 
  and (false);


select  
  sample_0.n_name as c0, 
  sample_0.n_nationkey as c1, 
  sample_0.n_name as c2, 
  sample_0.n_comment as c3
from 
  public.nation as sample_0 tablesample system (6) 
where false
limit 66;


select  
  ref_0.s_comment as c0, 
  ref_0.s_nationkey as c1
from 
  public.supplier as ref_0
where true;


select  
  sample_0.s_comment as c0
from 
  public.supplier as sample_0 tablesample system (3.2) 
where sample_0.s_name is not NULL;


select  
  sample_0.o_custkey as c0, 
  sample_0.o_orderpriority as c1
from 
  public.orders as sample_0 tablesample bernoulli (5.1) 
where sample_0.o_orderpriority is not NULL
limit 100;


select  
  ref_0.s_acctbal as c0
from 
  public.supplier as ref_0
where ref_0.s_comment is NULL
limit 138;


select  
  sample_0.l_linestatus as c0, 
  sample_0.l_shipdate as c1
from 
  public.lineitem as sample_0 tablesample system (5.2) 
where false
limit 112;


select  
  sample_0.s_name as c0, 
  sample_0.s_acctbal as c1
from 
  public.supplier as sample_0 tablesample system (4.5) 
where sample_0.s_name is not NULL
limit 164;


select  
  ref_0.n_nationkey as c0, 
  ref_0.n_comment as c1, 
  ref_0.n_regionkey as c2, 
  ref_0.n_nationkey as c3, 
  ref_0.n_name as c4
from 
  public.nation as ref_0
where ref_0.n_nationkey is NULL
limit 148;


select  
  ref_0.o_clerk as c0
from 
  public.orders as ref_0
where false
limit 69;


select  
  sample_0.p_size as c0, 
  sample_0.p_retailprice as c1, 
  sample_0.p_comment as c2
from 
  public.part as sample_0 tablesample bernoulli (9.9) 
where sample_0.p_brand is NULL
limit 105;


select  
  ref_0.n_name as c0, 
  ref_0.n_name as c1
from 
  public.nation as ref_0
where ref_0.n_nationkey is NULL;


select  
  sample_0.s_comment as c0, 
  sample_0.s_phone as c1
from 
  public.supplier as sample_0 tablesample bernoulli (0.8) 
where sample_0.s_address is not NULL
limit 152;


select  
  case when true then sample_0.n_comment else sample_0.n_comment end
     as c0
from 
  public.nation as sample_0 tablesample bernoulli (0.5) 
where false
limit 181;


select  
  sample_0.l_receiptdate as c0, 
  sample_0.l_shipmode as c1
from 
  public.lineitem as sample_0 tablesample system (4.5) 
where false;


select  
  ref_0.c_name as c0
from 
  public.customer as ref_0
where ref_0.c_phone is NULL
limit 142;


select  
  ref_0.ps_supplycost as c0
from 
  public.partsupp as ref_0
where ref_0.ps_suppkey is not NULL;


select  
  sample_0.p_partkey as c0
from 
  public.part as sample_0 tablesample system (5.7) 
where sample_0.p_retailprice is not NULL;


select  
  sample_0.n_comment as c0
from 
  public.nation as sample_0 tablesample system (5.8) 
where sample_0.n_nationkey is not NULL
limit 101;


select  
  sample_0.p_type as c0, 
  sample_0.p_name as c1, 
  sample_0.p_mfgr as c2, 
  sample_0.p_mfgr as c3, 
  sample_0.p_container as c4
from 
  public.part as sample_0 tablesample system (8.6) 
where sample_0.p_brand is NULL
limit 153;


select  
  sample_0.ps_comment as c0
from 
  public.partsupp as sample_0 tablesample bernoulli (5.8) 
where sample_0.ps_partkey is NULL
limit 43;


select  
  ref_0.p_partkey as c0
from 
  public.part as ref_0
where false
limit 61;


select  
  sample_0.r_regionkey as c0, 
  sample_0.r_comment as c1, 
  sample_0.r_name as c2
from 
  public.region as sample_0 tablesample system (7.6) 
where sample_0.r_regionkey is NULL;


select  
  ref_0.n_name as c0
from 
  public.nation as ref_0
where true
limit 67;


select  
  ref_0.o_custkey as c0, 
  ref_0.o_comment as c1, 
  ref_0.o_orderdate as c2
from 
  public.orders as ref_0
where false;


