select  
  ps_availqty as c0
from 
  partsupp 
where (select o_orderpriority from orders limit 1 offset 4)
     is not NULL
limit 116;


select  
  p_mfgr as c0, 
  p_brand as c1, 
  p_brand as c2
from 
  part 
where true
limit 91;


select  
  53 as c0
from 
  partsupp 
where true
limit 116;


select  
  p_size as c0, 
  p_retailprice as c1
from 
  part 
where p_comment is NULL;


select  
  l_quantity as c0
from 
  lineitem 
where false
limit 147;


select  
  p_size as c0, 
  p_size as c1, 
  p_mfgr as c2, 
  case when true then p_mfgr else p_brand end
     as c3
from 
  part 
where p_size is not NULL
limit 54;


select  
  o_orderkey as c0, 
  (select n_comment from nation limit 1 offset 1)
     as c1
from 
  orders 
where true
limit 53;


select  
  l_discount as c0
from 
  lineitem 
where true
limit 89;


select  
  l_receiptdate as c0, 
  l_returnflag as c1, 
  l_receiptdate as c2, 
  l_shipinstruct as c3
from 
  lineitem 
where true
limit 81;


select  
  n_regionkey as c0, 
  n_nationkey as c1, 
  n_name as c2
from 
  nation 
where true
limit 123;


select  
  r_name as c0, 
  r_name as c1
from 
  region 
where r_comment is NULL
limit 95;


select  
  p_comment as c0, 
  p_name as c1
from 
  part 
where p_size is NULL
limit 89;


select  
  l_discount as c0, 
  (select n_nationkey from nation limit 1 offset 2)
     as c1, 
  l_shipmode as c2, 
  l_tax as c3, 
  l_shipmode as c4
from 
  lineitem 
where l_suppkey is NULL
limit 92;


select  
  c_comment as c0, 
  c_phone as c1, 
  c_name as c2, 
  c_name as c3
from 
  customer 
where true
limit 97;


select  
  o_comment as c0, 
  o_orderstatus as c1, 
  o_orderkey as c2
from 
  orders 
where true
limit 98;


select  
  p_partkey as c0, 
  p_comment as c1, 
  p_comment as c2, 
  (select ps_supplycost from partsupp limit 1 offset 2)
     as c3
from 
  part 
where p_type is not NULL;


select  
  r_name as c0, 
  r_regionkey as c1
from 
  region 
where true;


select  
  p_partkey as c0
from 
  part 
where p_brand <= p_container;


select  
  l_comment as c0
from 
  lineitem 
where l_linestatus is NULL
limit 31;


select  
  l_suppkey as c0, 
  l_orderkey as c1, 
  l_suppkey as c2, 
  l_receiptdate as c3, 
  l_suppkey as c4, 
  l_shipinstruct as c5, 
  l_shipinstruct as c6, 
  89 as c7, 
  (select l_returnflag from lineitem limit 1 offset 6)
     as c8, 
  l_comment as c9
from 
  lineitem 
where true;


select  
  ps_partkey as c0, 
  ps_supplycost as c1
from 
  partsupp 
where ps_partkey is NULL
limit 84;


select  
  l_comment as c0, 
  l_linenumber as c1
from 
  lineitem 
where l_extendedprice is NULL
limit 170;


select  
  o_orderpriority as c0, 
  o_clerk as c1, 
  o_clerk as c2, 
  o_shippriority as c3
from 
  orders 
where false;


select  
  o_orderkey as c0, 
  o_shippriority as c1
from 
  orders 
where false
limit 72;


select  
  n_regionkey as c0
from 
  nation 
where n_comment is not NULL
limit 153;


select  
  27 as c0, 
  o_totalprice as c1, 
  o_orderdate as c2
from 
  orders 
where (select s_name from supplier limit 1 offset 36)
     is NULL
limit 49;


select  
  l_shipdate as c0
from 
  lineitem 
where l_quantity is NULL
limit 11;


select  
  ps_availqty as c0, 
  20 as c1
from 
  partsupp 
where ps_comment is not NULL
limit 101;


select  
  o_orderkey as c0, 
  o_totalprice as c1
from 
  orders 
where true;


select  
  c0 as c0, 
  c2 as c1, 
  c2 as c2, 
  c1 as c3
from 
  (select  
        l_tax as c0, 
        l_linestatus as c1, 
        l_orderkey as c2
      from 
        lineitem 
      where EXISTS (
        select  
            c_nationkey as c0
          from 
            customer ,
            lateral (select  
                  p_size as c0, 
                  l_shipmode as c1, 
                  c_comment as c2
                from 
                  part 
                where (false) 
                  or (c_phone is not NULL)) 
          where c1 is NULL
          limit 108)
      limit 103) 
where false
limit 120;


select  
  o_shippriority as c0
from 
  orders 
where o_comment is not NULL;


select  
  (select l_shipinstruct from lineitem limit 1 offset 2)
     as c0, 
  r_regionkey as c1, 
  r_comment as c2, 
  92 as c3, 
  r_name as c4, 
  r_name as c5, 
  r_name as c6, 
  r_comment as c7, 
  r_comment as c8, 
  r_comment as c9, 
  54 as c10, 
  r_comment as c11, 
  r_comment as c12, 
  r_regionkey as c13, 
  r_name as c14, 
  r_name as c15
from 
  region 
where false;


select  
  s_acctbal as c0, 
  s_address as c1, 
  s_acctbal as c2
from 
  supplier 
where s_address is not NULL
limit 43;


select  
  n_comment as c0, 
  n_comment as c1
from 
  nation 
where false
limit 62;


select  
  c_mktsegment as c0
from 
  customer 
where (c_address is NULL) 
  and (c_comment is NULL);


select  
  l_orderkey as c0, 
  l_quantity as c1, 
  l_shipinstruct as c2, 
  l_comment as c3
from 
  lineitem 
where l_suppkey is NULL;


select  
  s_phone as c0
from 
  supplier ,
  lateral (select  
        o_totalprice as c0
      from 
        orders 
          inner join lineitem 
          on (o_totalprice = l_quantity )
      where true) 
where s_suppkey >= s_nationkey;


select  
  n_nationkey as c0, 
  n_name as c1, 
  n_name as c2
from 
  nation 
where false
limit 83;


select  
  ps_supplycost as c0, 
  ps_suppkey as c1
from 
  partsupp 
where ps_suppkey is NULL
limit 135;


select  
  l_receiptdate as c0
from 
  lineitem 
where l_receiptdate is not NULL
limit 102;


select  
  s_address as c0, 
  s_nationkey as c1, 
  s_nationkey as c2, 
  s_name as c3, 
  s_comment as c4, 
  s_address as c5, 
  s_acctbal as c6, 
  s_name as c7
from 
  supplier 
where s_nationkey is not NULL;


select  
  c_acctbal as c0, 
  (select c_name from customer limit 1 offset 5)
     as c1, 
  (select r_name from region limit 1 offset 2)
     as c2, 
  c_mktsegment as c3
from 
  customer 
where c_address is NULL
limit 111;


select  
  r_regionkey as c0, 
  r_regionkey as c1
from 
  region 
where r_comment is not NULL;


select  
  c0 as c0, 
  c2 as c1
from 
  (select  
        ps_availqty as c0, 
        ps_partkey as c1, 
        ps_supplycost as c2
      from 
        partsupp 
      where (false) 
        and (true)) 
where (true) 
  and (c1 is not NULL)
limit 123;


select  
  c0 as c0, 
  c1 as c1, 
  c1 as c2, 
  c1 as c3
from 
  (select  
        n_name as c0, 
        n_nationkey as c1
      from 
        nation 
      where n_comment is NULL) 
where c0 is not NULL;


select  
  c5 as c0, 
  (select s_nationkey from supplier limit 1 offset 97)
     as c1, 
  c3 as c2
from 
  (select  
        c_phone as c0, 
        c_acctbal as c1, 
        c_address as c2, 
        c_phone as c3, 
        c_mktsegment as c4, 
        c_comment as c5, 
        c_mktsegment as c6, 
        c_mktsegment as c7, 
        c_nationkey as c8, 
        c_mktsegment as c9, 
        c_comment as c10
      from 
        customer 
      where true
      limit 68) 
where (select s_suppkey from supplier limit 1 offset 3)
     is NULL;


select  
  s_acctbal as c0, 
  s_comment as c1
from 
  supplier 
where s_nationkey is NULL
limit 37;


select  
  l_linenumber as c0, 
  (select n_regionkey from nation limit 1 offset 42)
     as c1, 
  l_partkey as c2, 
  l_returnflag as c3, 
  l_suppkey as c4, 
  l_orderkey as c5, 
  l_tax as c6, 
  (select l_extendedprice from lineitem limit 1 offset 59)
     as c7, 
  l_commitdate as c8, 
  87 as c9, 
  35 as c10, 
  l_linenumber as c11
from 
  lineitem 
where l_partkey <= l_orderkey
limit 112;


select  
  c0 as c0, 
  c0 as c1, 
  c0 as c2
from 
  (select  
        p_partkey as c0, 
        p_name as c1
      from 
        part 
      where false) 
where false;


select  
  s_comment as c0, 
  s_comment as c1
from 
  supplier 
where false;


select  
  p_retailprice as c0, 
  p_comment as c1
from 
  part 
where true
limit 32;


select  
  s_suppkey as c0, 
  (select n_comment from nation limit 1 offset 2)
     as c1, 
  s_comment as c2, 
  s_address as c3
from 
  supplier 
where true
limit 93;


select  
  ps_supplycost as c0, 
  ps_partkey as c1
from 
  partsupp 
where false
limit 133;


select  
  r_comment as c0, 
  r_regionkey as c1, 
  r_regionkey as c2, 
  r_comment as c3, 
  r_regionkey as c4
from 
  region 
where true;


select  
  (select s_acctbal from supplier limit 1 offset 2)
     as c0
from 
  partsupp 
where false
limit 133;


select  
  ps_comment as c0
from 
  partsupp 
where false
limit 28;


select  
  p_retailprice as c0, 
  p_comment as c1, 
  p_brand as c2
from 
  part 
where (select l_quantity from lineitem limit 1 offset 4)
     is NULL
limit 77;


select  
  o_custkey as c0, 
  o_orderkey as c1, 
  o_clerk as c2
from 
  orders 
where (82 is NULL) 
  and (o_comment is not NULL);


select  
  l_shipinstruct as c0, 
  (select l_tax from lineitem limit 1 offset 6)
     as c1
from 
  lineitem 
where l_shipinstruct is NULL
limit 179;


select  
  18 as c0
from 
  supplier 
where s_acctbal is NULL;


select  
  (select n_name from nation limit 1 offset 5)
     as c0
from 
  lineitem 
where false
limit 108;


select  
  (select c_address from customer limit 1 offset 5)
     as c0, 
  ps_comment as c1
from 
  partsupp 
where ps_comment is NULL
limit 104;


select  
  l_returnflag as c0
from 
  lineitem 
where l_shipmode > (select c_phone from customer limit 1 offset 4)
    ;


select  
  c_mktsegment as c0
from 
  customer 
where c_nationkey < 36
limit 157;


select  
  c4 as c0
from 
  (select  
        s_address as c0, 
        s_address as c1, 
        s_comment as c2, 
        s_acctbal as c3, 
        s_comment as c4
      from 
        supplier 
      where s_name is not NULL) 
where false;


select  
  s_nationkey as c0, 
  s_name as c1
from 
  supplier 
where true
limit 48;


select  
  o_shippriority as c0, 
  o_orderkey as c1
from 
  orders 
where o_orderkey is NULL
limit 87;


select  
  p_mfgr as c0, 
  p_partkey as c1, 
  p_size as c2, 
  p_name as c3, 
  p_mfgr as c4, 
  56 as c5, 
  p_brand as c6, 
  p_mfgr as c7
from 
  part 
where false
limit 149;


select  
  31 as c0
from 
  part 
where p_name is NULL
limit 131;


select  
  n_comment as c0
from 
  nation 
where n_regionkey is not NULL;


select  
  s_acctbal as c0
from 
  supplier 
where s_address is NULL;


select  
  o_orderkey as c0
from 
  orders 
where false
limit 76;


select  
  ps_partkey as c0, 
  ps_suppkey as c1, 
  ps_comment as c2, 
  ps_availqty as c3
from 
  partsupp 
where ps_comment is not NULL;


select  
  97 as c0, 
  o_orderpriority as c1, 
  (select r_comment from region limit 1 offset 55)
     as c2, 
  o_clerk as c3, 
  45 as c4
from 
  orders 
where o_totalprice is NULL;


select  
  r_regionkey as c0, 
  r_name as c1, 
  r_regionkey as c2, 
  r_name as c3
from 
  region 
where true;


select  
  o_custkey as c0
from 
  orders 
where o_orderdate is not NULL
limit 154;


select  
  n_name as c0, 
  (select o_orderstatus from orders limit 1 offset 3)
     as c1
from 
  nation 
where true;


select  
  s_name as c0, 
  s_address as c1, 
  s_address as c2, 
  (select l_linestatus from lineitem limit 1 offset 3)
     as c3, 
  73 as c4, 
  s_address as c5, 
  s_phone as c6, 
  s_suppkey as c7
from 
  supplier 
where s_acctbal is NULL
limit 53;


select  
  91 as c0, 
  p_partkey as c1, 
  p_size as c2, 
  (select c_acctbal from customer limit 1 offset 1)
     as c3, 
  p_size as c4, 
  p_type as c5
from 
  part 
where p_partkey is not NULL
limit 57;


select  
  24 as c0, 
  case when false then (select r_comment from region limit 1 offset 5)
       else o_comment end
     as c1, 
  o_orderdate as c2, 
  o_orderdate as c3
from 
  orders 
where o_shippriority is NULL;


select  
  p_size as c0, 
  p_brand as c1, 
  90 as c2
from 
  part 
where p_retailprice >= p_retailprice
limit 98;


select  
  o_totalprice as c0
from 
  orders 
where case when true then o_shippriority else o_shippriority end
     is not NULL;


select  
  n_nationkey as c0, 
  n_comment as c1, 
  n_nationkey as c2
from 
  nation 
where n_name is NULL
limit 55;


select  
  s_name as c0, 
  s_suppkey as c1
from 
  supplier 
where (true) 
  or (false)
limit 108;


select  
  p_brand as c0, 
  p_retailprice as c1
from 
  part 
where p_partkey is not NULL;


select  
  s_comment as c0
from 
  supplier 
where false
limit 107;


select  
  c_phone as c0, 
  c_name as c1
from 
  customer 
where false
limit 63;


select  
  r_comment as c0
from 
  region 
where (select ps_supplycost from partsupp limit 1 offset 3)
     <> (select o_totalprice from orders limit 1 offset 2)
    ;


select  
  ps_partkey as c0
from 
  partsupp 
where ps_suppkey is NULL;


select  
  c_name as c0, 
  (select p_retailprice from part limit 1 offset 77)
     as c1
from 
  customer 
where c_custkey is not NULL;


select  
  ps_comment as c0, 
  ps_supplycost as c1, 
  ps_comment as c2, 
  ps_supplycost as c3
from 
  partsupp 
where true;


select  
  99 as c0, 
  p_partkey as c1, 
  p_brand as c2, 
  p_partkey as c3, 
  p_name as c4, 
  p_name as c5
from 
  part 
where p_type is NULL
limit 114;


select  
  60 as c0, 
  n_comment as c1, 
  n_nationkey as c2
from 
  nation 
where false
limit 74;


select  
  c_address as c0
from 
  customer 
where false;


select  
  ps_availqty as c0, 
  ps_supplycost as c1, 
  ps_suppkey as c2, 
  ps_suppkey as c3
from 
  partsupp 
where ps_partkey is not NULL
limit 173;


select  
  s_address as c0, 
  (select s_name from supplier limit 1 offset 2)
     as c1, 
  s_acctbal as c2, 
  s_suppkey as c3, 
  s_name as c4
from 
  supplier 
where (s_name is NULL) 
  or (false)
limit 74;


select  
  l_shipmode as c0
from 
  lineitem 
where false;


select  
  (select s_name from supplier limit 1 offset 3)
     as c0
from 
  orders 
where o_orderpriority is not NULL;


select  
  s_address as c0, 
  s_suppkey as c1
from 
  supplier 
where s_nationkey is NULL
limit 64;


select  
  l_suppkey as c0, 
  l_shipdate as c1, 
  l_linenumber as c2, 
  l_quantity as c3
from 
  lineitem 
where true;


select  
  46 as c0, 
  (select c_acctbal from customer limit 1 offset 2)
     as c1, 
  c_comment as c2, 
  c_custkey as c3
from 
  customer 
where c_phone ~<~ c_mktsegment
limit 159;


select  
  s_acctbal as c0
from 
  supplier 
where true
limit 124;


select  
  o_totalprice as c0
from 
  orders 
where o_clerk is NULL
limit 110;


select  
  p_comment as c0
from 
  part 
where false;


select  
  n_name as c0, 
  n_comment as c1, 
  n_comment as c2, 
  n_regionkey as c3
from 
  nation 
where true
limit 159;


select  
  o_orderdate as c0, 
  o_orderdate as c1
from 
  orders 
where o_comment is NULL
limit 36;


select  
  s_comment as c0
from 
  supplier 
where false;


select  
  p_container as c0
from 
  part 
where (true) 
  and (true);


select  
  n_name as c0, 
  n_name as c1, 
  n_regionkey as c2, 
  n_name as c3, 
  case when n_regionkey is NULL then (select c_address from customer limit 1 offset 2)
       else n_comment end
     as c4, 
  n_name as c5
from 
  nation 
where n_nationkey is not NULL
limit 165;


select  
  r_name as c0, 
  r_name as c1, 
  r_comment as c2, 
  r_regionkey as c3, 
  r_comment as c4
from 
  region 
where r_regionkey is not NULL;


select  
  n_regionkey as c0
from 
  nation 
where true;


select  
  l_discount as c0, 
  l_suppkey as c1
from 
  lineitem 
where l_linenumber is NULL
limit 110;


select  
  c_custkey as c0
from 
  customer 
where false
limit 66;


select  
  o_shippriority as c0, 
  o_totalprice as c1, 
  o_shippriority as c2, 
  o_orderstatus as c3, 
  o_orderkey as c4
from 
  orders 
where o_custkey is NULL
limit 55;


select  
  ps_supplycost as c0, 
  ps_supplycost as c1
from 
  partsupp 
where ps_partkey is NULL
limit 63;


select  
  n_regionkey as c0, 
  n_nationkey as c1, 
  n_nationkey as c2, 
  n_nationkey as c3, 
  n_nationkey as c4
from 
  nation 
where false
limit 48;


select  
  c_address as c0, 
  c_acctbal as c1
from 
  customer 
where true
limit 119;


select  
  (select o_shippriority from orders limit 1 offset 93)
     as c0, 
  r_name as c1
from 
  region 
where false;


select  
  c2 as c0
from 
  (select  
        c_address as c0, 
        c_address as c1, 
        c_phone as c2
      from 
        customer 
      where c_comment is NULL
      limit 142) 
where (select s_address from supplier limit 1 offset 5)
     is NULL
limit 41;


select  
  n_comment as c0, 
  n_regionkey as c1
from 
  nation 
where n_nationkey is NULL;


select  
  p_container as c0, 
  p_type as c1
from 
  part 
where false
limit 94;


select  
  o_clerk as c0, 
  o_orderstatus as c1
from 
  orders 
where ((select o_orderstatus from orders limit 1 offset 6)
       is NULL) 
  and (true);


select  
  o_totalprice as c0, 
  13 as c1
from 
  orders 
where o_clerk is NULL
limit 84;


select  
  c_comment as c0
from 
  customer 
where true;


select  
  (select o_clerk from orders limit 1 offset 4)
     as c0, 
  s_address as c1, 
  s_phone as c2
from 
  supplier 
where s_phone is not NULL
limit 55;


select  
  l_shipdate as c0, 
  l_shipinstruct as c1
from 
  lineitem 
where l_commitdate is NULL
limit 36;


