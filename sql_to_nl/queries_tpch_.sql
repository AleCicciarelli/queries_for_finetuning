select  
  o_orderkey as c0, 
  o_shippriority as c1, 
  o_orderkey as c2, 
  10 as c3, 
  o_shippriority as c4
from 
  orders  tablesample system (9.8) 
where o_shippriority is NULL;


select  
  r_comment as c0
from 
  region 
where r_name is NULL
limit 178;


select  
  88 as c0
from 
  nation 
where n_nationkey is NULL
limit 121;


select  
  l_shipmode as c0
from 
  lineitem 
    left join supplier  tablesample system (9.5) 
    on (l_linenumber = s_suppkey )
where l_tax is NULL
limit 189;


select  
  c_comment as c0, 
  c_address as c1, 
  c_acctbal as c2
from 
  customer  tablesample bernoulli (0.3) 
where false
limit 137;


select  
  c_name as c0
from 
  customer  tablesample system (3.1) 
where (c_address is NULL) 
  or (c_phone ~<=~ c_phone);


select  
  s_nationkey as c0, 
  s_acctbal as c1, 
  s_suppkey as c2, 
  s_address as c3, 
  s_suppkey as c4
from 
  supplier 
where s_name is NULL
limit 36;


select  
  o_orderdate as c0, 
  o_comment as c1
from 
  orders  tablesample bernoulli (4) 
where true
limit 70;


select  
  ps_suppkey as c0, 
  ps_availqty as c1, 
  ps_comment as c2, 
  ps_partkey as c3
from 
  partsupp 
where ps_partkey is not NULL
limit 31;


select  
  o_comment as c0, 
  o_orderdate as c1
from 
  orders  tablesample system (4.8) 
where true;


select  
  l_shipinstruct as c0, 
  79 as c1, 
  l_quantity as c2, 
  l_quantity as c3
from 
  lineitem  tablesample system (7.5) 
where l_shipinstruct is NULL
limit 74;


select  
  n_regionkey as c0
from 
  nation  tablesample system (5.1) 
where false;


select  
  99 as c0, 
  l_shipinstruct as c1, 
  l_shipdate as c2, 
  l_discount as c3
from 
  lineitem 
where true
limit 113;


select  
  p_retailprice as c0from 
  part 
where p_container is not NULL
limit 145;


select  
  p_brand as c0, 
  p_type as c1
from 
  part  tablesample bernoulli (7) 
where p_brand is not NULL;


select  
  r_regionkey as c0, 
  r_name as c1
from 
  region  tablesample system (7.2) 
where false
limit 54;


select  
  ps_partkey as c0
from 
  partsupp 
where true
limit 67;


select  
  ps_comment as c0
from 
  partsupp 
where true
limit 132;


select  
  l_quantity as c0
from 
  lineitem  tablesample bernoulli (3.2) 
where l_quantity < l_discount;


select  
  s_acctbal as c0, 
  s_name as c1
from 
  supplier 
where s_suppkey is not NULL
limit 18;


select  
  p_container as c0
from 
  part 
where true;


select  
  o_clerk as c0
from 
  orders  tablesample system (8.1) 
where o_orderdate is not NULL
limit 64;


select  
  l_suppkey as c0
from 
  lineitem  tablesample system (5.7) 
where l_shipmode is not NULL;


select  
  case when ps_supplycost is not NULL then ps_availqty else ps_partkey end
     as c0, 
  ps_supplycost as c1
from 
  partsupp 
where true
limit 104;


select  
  ps_availqty as c0
from 
  partsupp 
where ps_comment is NULL;


select  
  s_comment as c0, 
  31 as c1
from 
  supplier  tablesample system (1.9) 
    inner join region 
    on (false)
where (r_comment is NULL) 
  or (r_comment is not NULL)
limit 123;


select  
  c_phone as c0, 
  c_comment as c1, 
  c_comment as c2, 
  86 as c3, 
  c_mktsegment as c4
from 
  customer 
where true
limit 23;


select  
  33 as c0, 
  22 as c1, 
  s_phone as c2
from 
  supplier  tablesample system (6.7) 
where s_acctbal is not NULL;


select  
  ps_suppkey as c0
from 
  partsupp 
where ps_suppkey is NULL
limit 183;


select  
  c_name as c0
from 
  customer 
where c_phone ~<~ c_phone
limit 135;


select  
  87 as c0
from 
  part  tablesample bernoulli (7.4) 
where p_comment is NULL
limit 94;


select  
  n_regionkey as c0
from 
  nation  tablesample bernoulli (5.6) 
where true;


select  
  s_comment as c0
from 
  supplier  tablesample system (1.3) 
where true
limit 95;


select  
  l_shipmode as c0, 
  l_receiptdate as c1, 
  65 as c2, 
  l_discount as c3
from 
  lineitem 
where false;


select  
  s_name as c0, 
  s_address as c1
from 
  supplier  tablesample system (5.8) 
where s_suppkey is NULL;


select  
  o_orderstatus as c0
from 
  orders 
where false
limit 89;


select  
  24 as c0, 
  34 as c1
from 
  supplier  tablesample system (6.7) 
where s_comment is not NULL
limit 106;


select  
  case when s_nationkey is not NULL then s_comment else s_address end
     as c0
from 
  supplier  tablesample system (9.1) 
where s_phone is NULL
limit 129;


select  
  s_phone as c0, 
  s_name as c1, 
  s_nationkey as c2
from 
  supplier 
where s_phone is NULL;


select  
  n_name as c0, 
  n_name as c1
from 
  nation 
where n_name is not NULL
limit 44;


select  
  ps_suppkey as c0, 
  ps_suppkey as c1
from 
  partsupp 
where ps_availqty is NULL
limit 120;


select  
  s_nationkey as c0
from 
  supplier  tablesample bernoulli (4.6) 
where true
limit 113;


select  
  r_comment as c0, 
  r_comment as c1
from 
  region 
where r_name is not NULL;


select  
  l_quantity as c0, 
  l_commitdate as c1
from 
  lineitem 
where l_suppkey is not NULL;


select  
  s_acctbal as c0
from 
  supplier  tablesample bernoulli (8.1) 
where true
limit 115;


select  
  l_extendedprice as c0
from 
  lineitem 
where l_linestatus is not NULL
limit 161;


select  
  c_phone as c0
from 
  customer  tablesample system (3.3) 
where true
limit 156;


select  
  s_acctbal as c0, 
  s_phone as c1
from 
  supplier  tablesample system (2.1) 
where true
limit 21;


select  
  s_address as c0, 
  s_address as c1
from 
  supplier  tablesample system (5.7) 
where s_acctbal >= s_acctbal
limit 186;


select  
  p_mfgr as c0
from 
  part  tablesample system (4.2) 
where p_brand is NULL
limit 126;


select  
  o_totalprice as c0
from 
  orders  tablesample system (5.5) 
where false
limit 123;


select  
  c_nationkey as c0
from 
  customer  tablesample bernoulli (9.9) 
where c_comment is not NULL;


select  
  l_shipdate as c0, 
  l_orderkey as c1, 
  l_extendedprice as c2, 
  l_linenumber as c3, 
  l_shipdate as c4, 
  l_shipdate as c5, 
  69 as c6, 
  l_extendedprice as c7, 
  l_discount as c8, 
  l_tax as c9
from 
  lineitem  tablesample bernoulli (2) 
where l_suppkey is NULL
limit 182;


select  
  p_type as c0, 
  p_brand as c1
from 
  part 
where p_container is NULL
limit 175;


select  
  c_comment as c0, 
  c_custkey as c1, 
  c_phone as c2
from 
  customer 
where c_comment is NULL;


select  
  p_type as c0, 
  p_type as c1, 
  p_size as c2
from 
  part 
where p_container is not NULL
limit 120;


select  
  n_comment as c0, 
  n_regionkey as c1, 
  n_nationkey as c2, 
  n_comment as c3, 
  n_nationkey as c4, 
  n_nationkey as c5, 
  n_regionkey as c6, 
  n_name as c7, 
  case when n_nationkey is not NULL then n_comment else n_comment end
     as c8
from 
  nation 
where true;


select  
  53 as c0, 
  83 as c1
from 
  nation  tablesample system (5.7) 
where n_comment is not NULL;


select  
  o_orderkey as c0
from 
  orders 
where true
limit 155;


select  
  n_comment as c0
from 
  nation  tablesample system (2.3) 
where n_regionkey is not NULL
limit 130;


select  
  p_comment as c0
from 
  part  tablesample system (5.6) 
where p_retailprice >= p_retailprice
limit 136;


select  
  s_phone as c0, 
  s_suppkey as c1
from 
  supplier 
where s_phone is NULL
limit 114;


select  
  s_nationkey as c0
from 
  supplier 
where true;


select  
  n_nationkey as c0, 
  n_comment as c1
from 
  nation 
where false;


select  
  c_nationkey as c0, 
  c_nationkey as c1, 
  c_name as c2, 
  c_mktsegment as c3
from 
  customer  tablesample system (4.2) 
where false
limit 102;


select  
  p_container as c0
from 
  part 
where true;


select  
  c_phone as c0, 
  c_address as c1
from 
  customer 
where c_phone is not NULL
limit 20;


select  
  p_brand as c0
from 
  part  tablesample system (3.3) 
where false
limit 59;


select  
  o_orderstatus as c0, 
  o_shippriority as c1, 
  o_orderdate as c2, 
  o_orderdate as c3
from 
  orders  tablesample system (3.4) 
where o_orderstatus is NULL
limit 61;


select  
  l_partkey as c0, 
  l_receiptdate as c1
from 
  lineitem  tablesample bernoulli (2.2) 
where l_discount is NULL
limit 144;


select  
  ps_supplycost as c0
from 
  partsupp 
where ps_suppkey >= ps_suppkey
limit 109;


select  
  c_custkey as c0
from 
  customer 
where true;


select  
  p_brand as c0
from 
  part  tablesample system (1.4) 
where true
limit 57;


select  
  l_quantity as c0, 
  69 as c1, 
  p_container as c2, 
  l_orderkey as c3
from 
  part  tablesample system (0.5) 
    inner join lineitem 
    on (p_container ~>=~ p_mfgr)
where false
limit 113;


select  
  c_custkey as c0
from 
  customer 
where c_nationkey is NULL
limit 152;


select  
  l_discount as c0
from 
  lineitem 
where l_quantity is NULL
limit 101;


select  
  c_acctbal as c0, 
  c_acctbal as c1, 
  c_name as c2, 
  c_comment as c3
from 
  customer 
where c_phone is NULL
limit 21;


select  
  o_comment as c0
from 
  orders 
where o_orderpriority is not NULL
limit 144;


select  
  ps_supplycost as c0, 
  ps_suppkey as c1, 
  ps_partkey as c2, 
  ps_availqty as c3, 
  ps_supplycost as c4, 
  ps_availqty as c5
from 
  partsupp  tablesample bernoulli (9) 
where true;


select  
  n_regionkey as c0, 
  n_regionkey as c1
from 
  nation  tablesample system (1.4) 
where true
limit 106;


select  
  l_comment as c0, 
  l_partkey as c1, 
  l_extendedprice as c2, 
  l_comment as c3
from 
  lineitem  tablesample system (2.1) 
where l_quantity is not NULL;


select  
  s_acctbal as c0, 
  s_name as c1, 
  s_nationkey as c2
from 
  supplier 
where false
limit 139;


select  
  82 as c0, 
  n_nationkey as c1, 
  n_name as c2, 
  n_name as c3, 
  n_comment as c4
from 
  nation 
where true;


select  
  p_container as c0, 
  p_size as c1
from 
  part 
where false;


select  
  s_comment as c0, 
  s_suppkey as c1
from 
  supplier  tablesample system (3) 
where true
limit 74;


select  
  s_address as c0
from 
  supplier 
where s_comment is NULL;


select  
  l_comment as c0
from 
  lineitem  tablesample system (0.9) 
where false;


select  
  l_shipinstruct as c0
from 
  lineitem 
where (l_shipmode is NULL) 
  or ((l_returnflag ~>=~ l_shipinstruct) 
    and (l_suppkey is NULL))
limit 28;


select  
  s_comment as c0
from 
  supplier  tablesample bernoulli (9.2) 
where false;


select  
  c_nationkey as c0, 
  c_acctbal as c1, 
  c_custkey as c2, 
  c_phone as c3
from 
  customer 
where c_nationkey is not NULL;


select  
  l_commitdate as c0, 
  l_partkey as c1
from 
  lineitem 
where l_shipmode is not NULL;


select  
  s_suppkey as c0
from 
  supplier 
where true
limit 43;


select  
  c_name as c0
from 
  customer  tablesample bernoulli (0.3) 
where c_nationkey is NULL
limit 147;


select  
  n_nationkey as c0
from 
  nation  tablesample system (0.4) 
    left join nation  tablesample system (3) 
    on (n_regionkey = n_nationkey )
where true
limit 77;


select  
  s_comment as c0, 
  s_acctbal as c1, 
  s_address as c2
from 
  supplier  tablesample bernoulli (4.7) 
where true
limit 116;


select  
  n_regionkey as c0, 
  n_comment as c1, 
  n_comment as c2
from 
  nation  tablesample system (7.8) 
where false
limit 74;


select  
  1 as c0, 
  p_comment as c1, 
  p_size as c2
from 
  part 
where p_brand is NULL
limit 88;


select  
  c_acctbal as c0
from 
  customer  tablesample system (9.9) 
where false
limit 65;


select  
  c_nationkey as c0
from 
  customer 
where true
limit 137;


select  
  o_shippriority as c0, 
  o_orderkey as c1
from 
  orders 
where o_custkey is not NULL
limit 156;


select  
  s_phone as c0
from 
  supplier 
where s_phone is not NULL;


select  
  p_name as c0, 
  p_retailprice as c1
from 
  part  tablesample bernoulli (1.3) 
where p_mfgr is not NULL
limit 132;


select  
  n_name as c0, 
  n_comment as c1
from 
  nation  tablesample system (7.6) 
where case when n_nationkey is not NULL then n_comment else n_comment end
     is not NULL;


select  
  c_mktsegment as c0
from 
  customer 
where c_name is not NULL
limit 128;


select  
  s_nationkey as c0, 
  s_name as c1
from 
  supplier  tablesample system (8.1) 
where s_phone is not NULL
limit 135;


select  
  c_custkey as c0
from 
  customer 
where true
limit 113;


select  
  c_acctbal as c0
from 
  customer 
where true;


select  
  r_name as c0
from 
  region 
where false
limit 183;


select  
  r_name as c0
from 
  region  tablesample system (6.7) 
where true
limit 190;


select  
  p_mfgr as c0
from 
  part 
where false
limit 95;


select  
  r_regionkey as c0, 
  r_comment as c1, 
  r_comment as c2
from 
  region  tablesample system (4.5) 
where r_comment is not NULL
limit 51;


select  
  ps_comment as c0, 
  ps_availqty as c1, 
  ps_comment as c2, 
  ps_availqty as c3, 
  ps_availqty as c4, 
  ps_availqty as c5, 
  ps_supplycost as c6
from 
  partsupp  tablesample system (8.4) 
where ps_suppkey is NULL
limit 90;


select  
  r_regionkey as c0, 
  r_name as c1
from 
  region 
where r_regionkey is not NULL
limit 45;


select  
  ps_supplycost as c0, 
  ps_comment as c1, 
  ps_partkey as c2, 
  ps_partkey as c3
from 
  partsupp 
where true
limit 99;


select  
  r_regionkey as c0
from 
  region 
where false
limit 84;


select  
  ps_comment as c0
from 
  partsupp 
where false
limit 134;


select  
  p_mfgr as c0, 
  p_mfgr as c1, 
  p_brand as c2, 
  p_partkey as c3, 
  p_type as c4, 
  p_size as c5, 
  p_mfgr as c6, 
  p_comment as c7
from 
  part  tablesample system (1.4) 
where true
limit 67;


select  
  l_linenumber as c0, 
  l_returnflag as c1
from 
  lineitem 
where l_returnflag is not NULL;


select  
  c_nationkey as c0
from 
  customer  tablesample system (1.3) 
where c_custkey is not NULL;


select  
  s_nationkey as c0, 
  s_phone as c1
from 
  supplier 
where false
limit 26;


select  
  r_regionkey as c0
from 
  region  tablesample system (4) 
where true;


select  
  ps_suppkey as c0
from 
  partsupp  tablesample system (5.7) 
where ps_comment is not NULL
limit 100;


select  
  s_name as c0
from 
  supplier  tablesample system (7) 
where s_acctbal > s_acctbal
limit 152;


select  
  o_orderpriority as c0, 
  o_orderdate as c1
from 
  orders 
where o_orderdate is not NULL
limit 112;


select  
  o_shippriority as c0, 
  o_totalprice as c1, 
  o_shippriority as c2, 
  o_clerk as c3
from 
  orders 
where o_clerk is NULL
limit 75;


select  
  o_custkey as c0
from 
  orders  tablesample system (8.8) 
where o_orderpriority is NULL
limit 103;


select distinct 
  38 as c0, 
  r_comment as c1, 
  r_name as c2
from 
  region  tablesample bernoulli (8.9) 
where false
limit 121;


select  
  r_regionkey as c0
from 
  region  tablesample system (4.4) 
where r_comment is NULL
limit 36;


select  
  ps_suppkey as c0
from 
  partsupp 
where ps_partkey is not NULL;


select  
  case when false then ps_availqty else ps_suppkey end
     as c0
from 
  partsupp 
where (ps_partkey is not NULL) 
  and ((true) 
    or (ps_partkey is not NULL))
limit 102;


select  
  ps_suppkey as c0
from 
  partsupp  tablesample bernoulli (1.7) 
where ps_supplycost < ps_supplycost
limit 96;


select  
  c_address as c0
from 
  customer  tablesample bernoulli (0.7) 
where c_acctbal is NULL
limit 108;


select  
  s_comment as c0, 
  s_nationkey as c1
from 
  supplier 
where true
limit 95;


select  
  o_shippriority as c0, 
  o_orderdate as c1, 
  o_orderkey as c2
from 
  orders  tablesample bernoulli (1.6) 
where true
limit 99;


select distinct 
  p_container as c0, 
  p_brand as c1, 
  p_name as c2, 
  p_name as c3
from 
  part  tablesample system (3.9) 
where false
limit 119;


select  
  r_comment as c0, 
  r_name as c1, 
  r_comment as c2
from 
  region 
where r_comment is not NULL
limit 58;


select  
  s_phone as c0, 
  s_name as c1, 
  s_address as c2, 
  s_nationkey as c3, 
  s_acctbal as c4, 
  s_nationkey as c5, 
  s_nationkey as c6
from 
  supplier  tablesample system (2) 
where true;


select  
  o_custkey as c0, 
  o_orderkey as c1, 
  o_orderdate as c2
from 
  orders  tablesample system (0.4) 
where o_comment is not NULL
limit 164;


select  
  l_shipinstruct as c0, 
  l_returnflag as c1, 
  l_linestatus as c2
from 
  lineitem  tablesample bernoulli (7.6) 
where l_shipinstruct is not NULL;


select  
  o_orderkey as c0, 
  o_totalprice as c1, 
  o_shippriority as c2
from 
  orders 
where o_totalprice <> o_totalprice;


select  
  c_address as c0
from 
  customer  tablesample system (1) 
where true
limit 137;


select  
  p_name as c0, 
  p_name as c1, 
  p_partkey as c2, 
  p_container as c3
from 
  part  tablesample system (0.6) 
where p_partkey is NULL
limit 153;


select  
  l_quantity as c0
from 
  lineitem 
where l_receiptdate is NULL;


select  
  c_address as c0, 
  c_acctbal as c1
from 
  customer 
where c_phone ~<~ c_mktsegment
limit 188;


select  
  r_comment as c0, 
  r_name as c1, 
  r_regionkey as c2, 
  r_regionkey as c3, 
  r_comment as c4, 
  r_name as c5
from 
  region 
where false
limit 80;


select  
  s_nationkey as c0
from 
  supplier  tablesample system (1.1) 
where (s_phone is NULL) 
  and (s_acctbal <> s_acctbal);


select  
  n_comment as c0, 
  n_nationkey as c1
from 
  nation 
where n_nationkey is not NULL
limit 125;


select  
  p_type as c0, 
  p_comment as c1
from 
  part  tablesample system (9.4) 
where p_type is NULL
limit 67;


select  
  r_comment as c0
from 
  region 
where r_comment is NULL
limit 178;


select  
  n_name as c0, 
  n_nationkey as c1
from 
  nation  tablesample bernoulli (1.6) 
where true
limit 169;


select  
  l_tax as c0, 
  l_shipinstruct as c1, 
  l_commitdate as c2, 
  l_orderkey as c3, 
  l_extendedprice as c4, 
  l_suppkey as c5, 
  l_linestatus as c6, 
  l_shipinstruct as c7, 
  l_returnflag as c8, 
  l_quantity as c9, 
  l_shipdate as c10, 
  l_orderkey as c11
from 
  lineitem  tablesample bernoulli (5.2) 
where true
limit 127;


select  
  c_acctbal as c0
from 
  customer 
where c_custkey is not NULL
limit 49;


select  
  r_name as c0
from 
  region 
where r_comment is NULL
limit 11;


select  
  c_name as c0
from 
  customer 
where c_acctbal is NULL
limit 25;


select  
  r_regionkey as c0, 
  r_name as c1
from 
  region  tablesample system (9.8) 
where r_name is NULL
limit 105;


select  
  ps_supplycost as c0
from 
  partsupp  tablesample system (6.7) 
where false;


select  
  p_brand as c0
from 
  part  tablesample system (0.5) 
where true;


select  
  o_orderkey as c0, 
  o_custkey as c1
from 
  orders 
where o_totalprice is NULL
limit 112;


select  
  c_custkey as c0
from 
  customer 
where c_nationkey >= c_custkey
limit 96;


select  
  c_address as c0, 
  c_nationkey as c1, 
  c_name as c2
from 
  customer 
where c_acctbal is not NULL
limit 41;


select  
  c_nationkey as c0
from 
  customer 
where (c_comment is NULL) 
  and (c_acctbal is not NULL)
limit 173;


select  
  n_nationkey as c0
from 
  nation  tablesample system (7.6) 
where true;


select  
  ps_partkey as c0
from 
  partsupp 
where ps_comment is not NULL
limit 125;


select  
  n_nationkey as c0, 
  n_comment as c1, 
  n_regionkey as c2, 
  n_comment as c3, 
  n_regionkey as c4
from 
  nation 
where n_regionkey is not NULL
limit 19;


select  
  c_comment as c0, 
  c_nationkey as c1
from 
  customer  tablesample system (7.2) 
where c_phone is not NULL;


select  
  r_comment as c0, 
  r_comment as c1
from 
  region  tablesample system (4.1) 
where r_comment is not NULL
limit 69;


select  
  c_address as c0
from 
  customer  tablesample bernoulli (1.8) 
where true;


select  
  s_address as c0
from 
  supplier  tablesample bernoulli (7) 
where true
limit 123;


select  
  p_brand as c0, 
  p_retailprice as c1
from 
  part  tablesample system (1.4) 
where true;


select  
  l_shipinstruct as c0
from 
  lineitem 
where true;


select  
  p_type as c0, 
  p_partkey as c1, 
  p_container as c2
from 
  part 
where p_retailprice is not NULL
limit 29;


select  
  n_comment as c0, 
  n_name as c1, 
  n_regionkey as c2, 
  n_nationkey as c3, 
  n_comment as c4, 
  n_comment as c5, 
  n_nationkey as c6, 
  35 as c7, 
  n_comment as c8
from 
  nation  tablesample system (1.1) 
where true;


select  
  n_regionkey as c0
from 
  nation 
where true
limit 93;


select  
  s_acctbal as c0
from 
  supplier  tablesample bernoulli (3.4) 
where s_phone ~>=~ s_phone;


select  
  c_name as c0
from 
  customer  tablesample bernoulli (2.6) 
where c_acctbal is NULL
limit 133;


select  
  r_comment as c0, 
  r_comment as c1
from 
  region  tablesample system (2.8) 
where true
limit 54;


select  
  n_regionkey as c0, 
  n_comment as c1, 
  n_comment as c2, 
  n_nationkey as c3
from 
  nation  tablesample system (8.8) 
where n_nationkey is NULL
limit 91;


select  
  p_mfgr as c0
from 
  part  tablesample system (3.3) 
where true;


select  
  o_clerk as c0, 
  o_orderpriority as c1, 
  o_comment as c2
from 
  orders 
where (o_clerk is not NULL) 
  and (o_clerk is not NULL);


select  
  r_regionkey as c0, 
  r_name as c1, 
  r_regionkey as c2, 
  r_name as c3, 
  r_name as c4, 
  r_regionkey as c5, 
  r_name as c6, 
  17 as c7, 
  r_regionkey as c8, 
  r_name as c9, 
  r_name as c10, 
  r_name as c11
from 
  region  tablesample bernoulli (0.8) 
where r_name is not NULL;


select  
  s_phone as c0, 
  s_phone as c1, 
  s_acctbal as c2
from 
  supplier  tablesample system (7.3) 
where s_nationkey is not NULL;


