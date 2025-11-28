select  
  (select c_name from customer limit 1 offset 89)
     as c0
from 
  customer  tablesample system (1.1) 
where true
limit 61;


select  
  r_comment as c0, 
  c10 as c1, 
  r_name as c2, 
  r_regionkey as c3
from 
  region ,
  lateral (select  
        r_comment as c0, 
        c11 as c1, 
        c_comment as c2, 
        (select l_comment from lineitem limit 1 offset 1)
           as c3, 
        r_name as c4, 
        c_comment as c5, 
        c_mktsegment as c6, 
        (select ps_partkey from partsupp limit 1 offset 4)
           as c7, 
        c8 as c8, 
        c_nationkey as c9, 
        c_comment as c10, 
        (select l_shipinstruct from lineitem limit 1 offset 2)
           as c11, 
        c_address as c12
      from 
        customer  tablesample system (6.6) ,
        lateral (select  
              c_comment as c0, 
              c_phone as c1, 
              36 as c2, 
              91 as c3, 
              86 as c4, 
              r_regionkey as c5, 
              c_mktsegment as c6, 
              r_regionkey as c7, 
              55 as c8, 
              c_address as c9, 
              c_acctbal as c10, 
              p_mfgr as c11, 
              c_name as c12, 
              97 as c13, 
              c_acctbal as c14
            from 
              part 
            where r_comment is NULL
            limit 117) 
      where (select ps_suppkey from partsupp limit 1 offset 5)
           is not NULL
      limit 158) 
where true;


select  
  c3 as c0, 
  c2 as c1, 
  c3 as c2
from 
  (select  
        n_regionkey as c0, 
        n_name as c1, 
        n_name as c2, 
        n_nationkey as c3
      from 
        nation  tablesample system (6.7) 
      where EXISTS (
        select  
            n_nationkey as c0, 
            o_orderkey as c1, 
            o_shippriority as c2, 
            64 as c3, 
            n_regionkey as c4, 
            o_clerk as c5, 
            o_orderstatus as c6, 
            n_nationkey as c7, 
            o_orderpriority as c8, 
            n_regionkey as c9, 
            o_orderpriority as c10, 
            n_name as c11
          from 
            orders 
          where EXISTS (
            select  
                o_orderpriority as c0, 
                s_nationkey as c1, 
                (select o_custkey from orders limit 1 offset 1)
                   as c2, 
                (select s_comment from supplier limit 1 offset 5)
                   as c3, 
                n_regionkey as c4, 
                n_nationkey as c5, 
                o_comment as c6, 
                s_comment as c7, 
                s_acctbal as c8, 
                s_acctbal as c9, 
                s_phone as c10
              from 
                supplier 
              where true
              limit 170)
          limit 86)
      limit 60) 
where c1 is not NULL;


select  
  p_brand as c0
from 
  part 
where p_mfgr is not NULL;


select  
  o_clerk as c0
from 
  orders  tablesample bernoulli (0.7) 
where o_shippriority is NULL;


select  
  p_partkey as c0, 
  p_retailprice as c1, 
  p_type as c2
from 
  part 
where p_retailprice is not NULL
limit 47;


select  
  (select p_size from part limit 1 offset 2)
     as c0, 
  s_acctbal as c1
from 
  supplier 
where (s_address is not NULL) 
  or (s_comment is NULL);


select  
  o_shippriority as c0, 
  o_orderdate as c1, 
  o_orderdate as c2
from 
  orders 
where o_orderdate is NULL;


select  
  s_acctbal as c0
from 
  supplier 
where s_name is not NULL
limit 115;


select  
  c_mktsegment as c0
from 
  customer 
where c_nationkey is NULL
limit 91;


select  
  p_size as c0
from 
  part  tablesample bernoulli (8.4) 
where true;


select  
  r_name as c0, 
  r_comment as c1
from 
  region  tablesample bernoulli (6.9) 
where false
limit 97;


select  
  c_nationkey as c0
from 
  customer 
where (select r_name from region limit 1 offset 1)
     is not NULL;


select  
  ps_supplycost as c0, 
  ps_partkey as c1, 
  ps_availqty as c2, 
  ps_availqty as c3, 
  ps_availqty as c4, 
  ps_availqty as c5, 
  (select n_regionkey from nation limit 1 offset 1)
     as c6
from 
  partsupp  tablesample system (8) 
where ps_partkey is not NULL
limit 32;


select  
  s_comment as c0
from 
  supplier  tablesample system (5.2) 
where s_name is NULL
limit 33;


select  
  s_comment as c0, 
  s_acctbal as c1, 
  s_address as c2, 
  s_phone as c3
from 
  supplier 
where s_nationkey is not NULL;


select  
  r_name as c0, 
  r_name as c1, 
  r_regionkey as c2, 
  r_regionkey as c3
from 
  region  tablesample bernoulli (0.6) 
where r_name is NULL;


select  
  c5 as c0, 
  c5 as c1
from 
  (select  
        n_nationkey as c0, 
        n_name as c1, 
        (select n_name from nation limit 1 offset 6)
           as c2, 
        n_nationkey as c3, 
        n_nationkey as c4, 
        5 as c5
      from 
        nation 
      where n_name is not NULL) 
where c5 is not NULL;


select  
  p_brand as c0
from 
  part 
where (p_size is not NULL) 
  or (p_container < p_container);


select  
  s_acctbal as c0, 
  s_phone as c1, 
  s_comment as c2
from 
  supplier  tablesample bernoulli (2.3) 
where s_name is not NULL
limit 146;


select  
  n_nationkey as c0, 
  n_comment as c1, 
  n_name as c2, 
  n_name as c3, 
  n_regionkey as c4, 
  (select l_orderkey from lineitem limit 1 offset 4)
     as c5
from 
  nation 
where n_regionkey is not NULL;


select  
  s_nationkey as c0, 
  s_suppkey as c1, 
  s_suppkey as c2, 
  s_suppkey as c3
from 
  supplier  tablesample system (2.8) 
where s_comment is NULL;


select  
  s_acctbal as c0, 
  s_address as c1
from 
  supplier  tablesample system (8) 
where true
limit 68;


select  
  l_discount as c0, 
  l_shipinstruct as c1
from 
  lineitem  tablesample system (8.3) 
where true;


select  
  s_comment as c0, 
  s_address as c1, 
  73 as c2, 
  s_name as c3, 
  s_nationkey as c4, 
  s_nationkey as c5, 
  s_nationkey as c6, 
  s_address as c7, 
  s_comment as c8, 
  72 as c9
from 
  supplier 
where s_comment is not NULL
limit 87;


select  
  l_orderkey as c0
from 
  lineitem 
where true
limit 149;


select  
  n_comment as c0, 
  n_regionkey as c1, 
  n_comment as c2
from 
  nation 
where false;


select  
  o_totalprice as c0, 
  o_orderpriority as c1
from 
  orders 
where o_orderstatus is not NULL;


select  
  s_comment as c0, 
  s_nationkey as c1, 
  s_name as c2
from 
  supplier 
where true
limit 121;


select  
  o_orderstatus as c0
from 
  orders 
where o_totalprice < o_totalprice
limit 121;


select  
  c_phone as c0, 
  c_address as c1
from 
  customer 
where c_comment is NULL;


select  
  l_orderkey as c0
from 
  lineitem  tablesample bernoulli (1.9) 
where l_suppkey is not NULL
limit 55;


select  
  c_custkey as c0
from 
  customer 
where c_comment is not NULL;


select  
  p_container as c0, 
  p_name as c1
from 
  part 
where p_name is not NULL;


select  
  n_regionkey as c0
from 
  nation 
where false
limit 127;


select  
  ps_suppkey as c0, 
  (select p_brand from part limit 1 offset 1)
     as c1, 
  ps_comment as c2, 
  ps_comment as c3, 
  ps_suppkey as c4, 
  ps_suppkey as c5
from 
  partsupp 
where false;


select  
  c1 as c0, 
  c4 as c1, 
  c5 as c2, 
  c2 as c3, 
  c3 as c4, 
  c0 as c5, 
  c1 as c6, 
  c4 as c7, 
  c1 as c8
from 
  (select  
        c8 as c0, 
        c18 as c1, 
        c23 as c2, 
        c7 as c3, 
        c27 as c4, 
        c27 as c5
      from 
        (select  
              n_comment as c0, 
              (select s_comment from supplier limit 1 offset 3)
                 as c1, 
              n_nationkey as c2, 
              n_name as c3, 
              n_nationkey as c4, 
              n_nationkey as c5, 
              n_regionkey as c6, 
              n_comment as c7, 
              n_nationkey as c8, 
              n_regionkey as c9, 
              n_nationkey as c10, 
              n_comment as c11, 
              2 as c12, 
              86 as c13, 
              n_name as c14, 
              n_comment as c15, 
              n_nationkey as c16, 
              n_regionkey as c17, 
              n_nationkey as c18, 
              (select r_regionkey from region limit 1 offset 6)
    