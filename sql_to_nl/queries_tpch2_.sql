select  
  n_regionkey as c0, 
  n_name as c1
from 
  nation 
where n_comment is NULL
limit 144;


select  
  l_comment as c0, 
  l_orderkey as c1
from 
  lineitem 
where false
limit 194;


select  
  l_commitdate as c0
from 
  lineitem 
where l_shipinstruct is NULL;


select  
  42 as c0, 
  r_regionkey as c1
from 
  region 
where r_regionkey = (select r_regionkey from region limit 1 offset 98)
    
limit 123;


select  
  n_regionkey as c0, 
  n_name as c1
from 
  nation  
where n_name = n_name;


select  
  o_orderpriority as c0, 
  o_orderkey as c1, 
  o_custkey as c2, 
  n_comment as c3
from 
  nation  
    inner join orders  
    on (true)
where n_name is NULL;


select  
  s_address as c0, 
  s_acctbal as c1, 
  s_address as c2, 
  s_acctbal as c3
from 
  supplier 
where (false) 
  and (EXISTS (
    select  
        o_orderdate as c0
      from 
        orders  
      where EXISTS (
        select  
            o_orderstatus as c0, 
            s_comment as c1
          from 
            orders  
          where true
          limit 97)
      limit 89))
limit 119;


select  
  s_acctbal as c0
from 
  supplier 
where s_comment is NULL
limit 90;


select  
  s_acctbal as c0, 
  s_suppkey as c1, 
  s_suppkey as c2, 
  s_address as c3
from 
  supplier 
where false
limit 137;


select  
  p_mfgr as c0
from 
  part  
    inner join part 
    on (p_brand = p_mfgr )
where p_partkey is not NULL
limit 99;


select  
  r_comment as c0, 
  r_comment as c1, 
  r_comment as c2, 
  r_regionkey as c3
from 
  region  
where true;


select  
  r_regionkey as c0, 
  r_comment as c1
from 
  region  
where r_comment is NULL;


select  
  n_comment as c0, 
  n_name as c1, 
  n_regionkey as c2, 
  n_name as c3
from 
  nation 
where false;


select  
  l_tax as c0, 
  l_orderkey as c1
from 
  lineitem 
where (select n_regionkey from nation limit 1 offset 5)
     is NULL
limit 123;


select  
  n_regionkey as c0, 
  n_name as c1
from 
  nation  
where n_regionkey is NULL
limit 93;


select  
  (select c_address from customer limit 1 offset 6)
     as c0, 
  r_comment as c1
from 
  region 
where true
limit 156;


select  
  (select r_name from region limit 1 offset 5)
     as c0
from 
  orders  
where false
limit 78;


select  
  l_shipdate as c0, 
  l_shipdate as c1, 
  l_shipdate as c2, 
  l_comment as c3, 
  l_extendedprice as c4, 
  l_partkey as c5, 
  l_shipmode as c6, 
  l_comment as c7
from 
  lineitem  
where l_suppkey is NULL;


select  
  r_comment as c0, 
  r_name as c1, 
  r_name as c2, 
  r_comment as c3, 
  r_comment as c4
from 
  region  
where r_name is not NULL;


select  
  c_mktsegment as c0, 
  c_mktsegment as c1, 
  c_name as c2
from 
  customer  
where c_mktsegment is NULL
limit 93;


select  
  p_mfgr as c0
from 
  part  
where p_retailprice > p_retailprice
limit 82;


select  
  (select s_nationkey from supplier limit 1 offset 68)
     as c0
from 
  part  
    inner join partsupp 
    on (false)
where ps_suppkey is not NULL;


select  
  o_orderpriority as c0
from 
  orders 
where o_orderkey is not NULL;


select  
  c4 as c0, 
  c5 as c1, 
  c1 as c2, 
  c4 as c3
from 
  (select  
        p_container as c0, 
        p_comment as c1, 
        (select o_orderdate from orders limit 1 offset 3)
           as c2, 
        p_size as c3, 
        (select s_comment from supplier limit 1 offset 2)
           as c4, 
        p_retailprice as c5
      from 
        part  
      where false
      limit 60) 
where c1 is NULL
limit 101;


select  
  c1 as c0, 
  c0 as c1, 
  c1 as c2, 
  c2 as c3
from 
  (select  
        c_phone as c0, 
        c_custkey as c1, 
        case when EXISTS (
            select  
                c_phone as c0, 
                c_name as c1, 
                c_nationkey as c2, 
                l_linenumber as c3, 
                l_comment as c4, 
                l_receiptdate as c5, 
                (select o_comment from orders limit 1 offset 1)
                   as c6, 
                29 as c7, 
                l_returnflag as c8
              from 
                lineitem  
              where (l_linenumber <= l_partkey) 
                and (c_acctbal is NULL)
              limit 35) then c_nationkey else c_custkey end
           as c2
      from 
        customer 
      where c_custkey is NULL
      limit 134) 
where c0 is not NULL
limit 79;


select  
  s_phone as c0
from 
  supplier  
where true;


select  
  c0 as c0, 
  c0 as c1, 
  c0 as c2, 
  c0 as c3
from 
  (select  
        c_phone as c0
      from 
        customer ,
        lateral (select  
              c_acctbal as c0
            from 
              partsupp  
            where true
            limit 175) 
      where c0 is not NULL
      limit 23) 
where false
limit 106;


select  
  n_nationkey as c0, 
  86 as c1, 
  n_comment as c2, 
  n_comment as c3
from 
  nation  
where n_nationkey is not NULL;


select  
  case when l_extendedprice is not NULL then (select ps_partkey from partsupp limit 1 offset 3)
       else l_linenumber end
     as c0
from 
  lineitem  
where case when l_linestatus is NULL then l_shipmode else l_shipmode end
     is not NULL
limit 94;


select  
  c_comment as c0
from 
  customer  
where true
limit 189;


select  
  s_address as c0, 
  s_nationkey as c1, 
  s_name as c2
from 
  supplier  
where (select l_shipinstruct from lineitem limit 1 offset 1)
     is not NULL
limit 93;


select  
  c_comment as c0, 
  c_custkey as c1, 
  c_phone as c2, 
  c_name as c3, 
  c_phone as c4
from 
  customer 
where true;


select  
  n_regionkey as c0, 
  93 as c1
from 
  nation 
where false
limit 106;


select  
  s_phone as c0
from 
  supplier  
where s_suppkey is NULL
limit 96;


select  
  p_size as c0
from 
  part 
where p_brand is NULL
limit 65;


select  
  o_orderkey as c0, 
  (select c_custkey from customer limit 1 offset 5)
     as c1, 
  o_clerk as c2
from 
  orders 
where o_shippriority is not NULL
limit 188;


select  
  c_nationkey as c0, 
  36 as c1
from 
  customer 
where c_comment is not NULL
limit 93;


select  
  (select l_partkey from lineitem limit 1 offset 4)
     as c0, 
  r_regionkey as c1
from 
  region 
where r_regionkey is not NULL
limit 151;


select  
  p_comment as c0, 
  p_brand as c1, 
  p_brand as c2
from 
  part 
where false
limit 100;


select  
  n_nationkey as c0, 
  4 as c1
from 
  nation 
where n_nationkey is not NULL
limit 132;


select  
  c_address as c0
from 
  customer  
where c_acctbal is NULL
limit 99;


select  
  ps_suppkey as c0, 
  ps_comment as c1, 
  (select c_phone from customer limit 1 offset 4)
     as c2, 
  46 as c3, 
  case when true then ps_partkey else ps_suppkey end
     as c4
from 
  partsupp  
where ps_comment is not NULL;


select  
  c_address as c0
from 
  customer  
where false;


select  
  r_regionkey as c0, 
  r_regionkey as c1
from 
  region 
where r_regionkey is NULL
limit 130;


select  
  n_nationkey as c0
from 
  nation 
where true;


select  
  (select p_size from part limit 1 offset 5)
     as c0
from 
  orders  
where false
limit 142;


select  
  l_shipmode as c0, 
  l_comment as c1
from 
  lineitem  
where true
limit 111;


select  
  n_name as c0, 
  o_orderpriority as c1, 
  o_custkey as c2, 
  o_orderpriority as c3, 
  o_orderstatus as c4, 
  o_custkey as c5, 
  o_orderdate as c6, 
  o_shippriority as c7
from 
  orders  
    inner join nation  
    on (o_clerk = n_name )
where (select p_partkey from part limit 1 offset 6)
     is NULL
limit 103;


select  
  s_name as c0
from 
  supplier  
where (s_phone is not NULL) 
  and (11 is NULL)
limit 88;


select  
  c_custkey as c0
from 
  customer 
where true;


select  
  l_partkey as c0, 
  l_comment as c1
from 
  lineitem 
    left join lineitem 
    on (l_quantity = l_quantity )
where l_linenumber is NULL;


select  
  ps_comment as c0
from 
  partsupp 
where ps_suppkey > ps_suppkey;


select  
  c0 as c0
from 
  (select  
        c_mktsegment as c0, 
        c_address as c1, 
        c_address as c2, 
        22 as c3, 
        c_name as c4, 
        c_phone as c5
      from 
        customer  
      where c_address is NULL
      limit 147) 
where false;


select  
  p_mfgr as c0, 
  (select o_orderdate from orders limit 1 offset 6)
     as c1
from 
  part  
where false
limit 68;


select  
  s_name as c0, 
  s_nationkey as c1
from 
  supplier 
where s_address is not NULL
limit 147;


select  
  c0 as c0
from 
  (select  
        r_comment as c0, 
        r_comment as c1, 
        r_regionkey as c2
      from 
        region 
      where r_name is NULL) 
where c2 is not NULL
limit 129;


select  
  p_brand as c0
from 
  part 
where p_name is not NULL;


select  
  n_regionkey as c0, 
  n_nationkey as c1
from 
  nation 
where n_regionkey is not NULL
limit 109;


select  
  n_name as c0
from 
  nation 
where n_name is not NULL;


select  
  c_nationkey as c0, 
  c_custkey as c1
from 
  customer  
where c_mktsegment is NULL;


select  
  l_suppkey as c0
from 
  lineitem 
where false
limit 101;


select  
  l_extendedprice as c0
from 
  lineitem  
where l_shipinstruct is not NULL;


select  
  c_comment as c0, 
  c_phone as c1
from 
  customer 
where c_name is NULL
limit 53;


select  
  r_name as c0
from 
  region  
where r_name is not NULL
limit 100;


select  
  ps_supplycost as c0
from 
  partsupp  
where ps_supplycost is not NULL;


select  
  c_comment as c0, 
  9 as c1
from 
  customer  
where false
limit 90;


select  
  l_receiptdate as c0
from 
  lineitem  
where l_tax <> l_discount
limit 84;


select  
  s_phone as c0
from 
  supplier 
where s_acctbal is not NULL;


select  
  l_linestatus as c0, 
  l_suppkey as c1, 
  l_tax as c2
from 
  lineitem 
where true
limit 166;


select  
  l_orderkey as c0, 
  l_extendedprice as c1, 
  l_suppkey as c2, 
  l_shipmode as c3, 
  l_partkey as c4
from 
  lineitem  
where false
limit 21;


select  
  c0 as c0, 
  c0 as c1
from 
  (select  
        r_name as c0
      from 
        region 
      where ((true) 
          and (true)) 
        and (true)) 
where true
limit 81;


select  
  s_comment as c0, 
  s_name as c1
from 
  supplier  
where s_suppkey is not NULL
limit 89;


select  
  o_totalprice as c0, 
  o_comment as c1, 
  o_orderkey as c2
from 
  orders  
where false
limit 134;


select  
  l_comment as c0
from 
  lineitem  
where l_partkey is NULL;


select  
  s_nationkey as c0
from 
  orders 
    inner join (select  
            p_size as c0, 
            p_name as c1, 
            p_comment as c2, 
            p_partkey as c3, 
            p_brand as c4, 
            p_size as c5, 
            p_size as c6, 
            p_retailprice as c7, 
            p_comment as c8, 
            p_mfgr as c9, 
            69 as c10, 
            (select n_comment from nation limit 1 offset 87)
               as c11, 
            p_comment as c12, 
            p_name as c13
          from 
            part 
          where p_retailprice is NULL
          limit 99) 
      left join supplier 
      on (c13 = s_address )
    on (EXISTS (
        select  
            s_name as c0
          from 
            lineitem 
          where l_commitdate <= l_receiptdate))
where true
limit 140;


select  
  l_extendedprice as c0, 
  l_suppkey as c1
from 
  lineitem  
where false
limit 184;


select  
  r_regionkey as c0
from 
  region  
where (select c_nationkey from customer limit 1 offset 6)
     is NULL
limit 41;


select  
  n_regionkey as c0, 
  n_comment as c1
from 
  nation  
where n_comment is not NULL;


select  
  c_nationkey as c0
from 
  customer 
where c_address is NULL
limit 97;


select  
  n_nationkey as c0, 
  n_name as c1, 
  n_name as c2, 
  n_regionkey as c3, 
  n_nationkey as c4, 
  n_regionkey as c5, 
  n_name as c6, 
  n_regionkey as c7, 
  n_regionkey as c8
from 
  nation  
where n_name is NULL
limit 153;


select  
  (select o_orderdate from orders limit 1 offset 5)
     as c0
from 
  nation 
where n_nationkey is not NULL
limit 94;


select  
  (select r_comment from region limit 1 offset 3)
     as c0
from 
  lineitem  
where l_linenumber is not NULL
limit 106;


select  
  s_phone as c0
from 
  supplier  
where (53 is not NULL) 
  and (s_name is not NULL)
limit 91;


select  
  n_regionkey as c0, 
  n_nationkey as c1, 
  n_regionkey as c2
from 
  nation  
where n_name is NULL;


select  
  l_commitdate as c0
from 
  lineitem  
where true
limit 133;


select  
  p_partkey as c0, 
  (select r_comment from region limit 1 offset 2)
     as c1, 
  p_brand as c2
from 
  part  
where p_mfgr is NULL
limit 91;


select  
  (select n_nationkey from nation limit 1 offset 6)
     as c0, 
  o_orderstatus as c1, 
  o_orderpriority as c2, 
  o_comment as c3
from 
  orders 
where true
limit 90;


select  
  o_orderdate as c0
from 
  orders  
where o_clerk is NULL
limit 21;


select  
  s_phone as c0, 
  s_nationkey as c1, 
  s_address as c2, 
  s_phone as c3
from 
  supplier  
where s_suppkey is NULL;


select  
  p_mfgr as c0
from 
  part  
where p_size is NULL;


select  
  p_brand as c0, 
  n_comment as c1, 
  p_size as c2, 
  10 as c3
from 
  part  
    inner join nation  
    on (false)
where p_brand is NULL
limit 83;


select  
  ps_availqty as c0, 
  ps_comment as c1
from 
  partsupp 
where true
limit 56;


select  
  o_orderstatus as c0, 
  o_custkey as c1, 
  o_comment as c2
from 
  orders 
where o_totalprice is NULL
limit 40;


select  
  r_name as c0, 
  r_comment as c1
from 
  region  
where true
limit 84;


select  
  c_address as c0, 
  c_mktsegment as c1, 
  c_nationkey as c2
from 
  customer  
where (c_mktsegment is NULL) 
  or ((c_custkey is NULL) 
    and (c_comment is not NULL))
limit 125;


select  
  l_discount as c0
from 
  lineitem 
where l_commitdate is not NULL
limit 133;


select  
  (select p_partkey from part limit 1 offset 5)
     as c0, 
  o_orderstatus as c1
from 
  orders 
where o_custkey = o_shippriority
limit 144;


select  
  ps_availqty as c0, 
  ps_suppkey as c1
from 
  partsupp  
where ps_partkey is not NULL
limit 82;


select  
  l_orderkey as c0, 
  l_suppkey as c1
from 
  lineitem 
where l_returnflag is NULL
limit 131;


select  
  l_suppkey as c0
from 
  lineitem 
where true
limit 80;


select  
  ps_suppkey as c0, 
  (select r_comment from region limit 1 offset 4)
     as c1, 
  ps_comment as c2
from 
  partsupp 
where ps_suppkey is NULL
limit 130;


select  
  c_phone as c0
from 
  customer 
where false
limit 86;


select  
  c_nationkey as c0, 
  (select c_mktsegment from customer limit 1 offset 4)
     as c1, 
  c_phone as c2, 
  c_mktsegment as c3
from 
  customer 
where c_nationkey is not NULL;


select  
  n_regionkey as c0, 
  n_name as c1, 
  n_nationkey as c2, 
  n_nationkey as c3, 
  n_nationkey as c4
from 
  nation  
where n_nationkey <> n_regionkey
limit 153;


select  
  c_address as c0, 
  c_acctbal as c1
from 
  customer 
where (select ps_partkey from partsupp limit 1 offset 4)
     is not NULL;


select  
  o_orderstatus as c0, 
  o_clerk as c1
from 
  orders  
where o_orderdate > o_orderdate
limit 121;


select  
  (select n_name from nation limit 1 offset 2)
     as c0, 
  n_regionkey as c1, 
  n_regionkey as c2
from 
  nation 
where n_nationkey is NULL
limit 88;


select  
  l_shipdate as c0, 
  l_extendedprice as c1
from 
  lineitem 
where false
limit 182;


select  
  o_totalprice as c0, 
  o_totalprice as c1
from 
  orders 
where o_orderdate is not NULL
limit 144;


select  
  l_shipdate as c0, 
  l_discount as c1, 
  l_partkey as c2
from 
  lineitem  
where true;


select  
  r_comment as c0
from 
  region  
where r_regionkey is not NULL
limit 58;


select  
  r_name as c0
from 
  region  
where r_name is NULL
limit 82;


select  
  o_comment as c0, 
  o_orderpriority as c1
from 
  orders  
where o_clerk is NULL;


select  
  s_comment as c0
from 
  supplier  
where (false) 
  or (s_name is NULL);


select  
  o_comment as c0
from 
  orders 
where false;


select  
  n_comment as c0, 
  n_comment as c1
from 
  nation 
where false;


select  
  r_comment as c0, 
  r_comment as c1, 
  r_regionkey as c2, 
  r_name as c3, 
  r_name as c4, 
  r_name as c5
from 
  region  
where r_name is not NULL
limit 112;


select  
  l_extendedprice as c0, 
  l_comment as c1
from 
  lineitem  
where l_receiptdate is not NULL
limit 77;


select  
  (select p_partkey from part limit 1 offset 3)
     as c0
from 
  supplier  
where s_nationkey is NULL
limit 115;


select  
  l_discount as c0, 
  l_comment as c1
from 
  lineitem  
where l_quantity is NULL
limit 77;


select  
  l_quantity as c0
from 
  lineitem 
where l_commitdate = l_receiptdate
limit 135;


select  
  l_shipdate as c0, 
  l_linestatus as c1, 
  l_extendedprice as c2
from 
  lineitem 
where l_shipmode is not NULL;


select  
  s_nationkey as c0, 
  c2 as c1, 
  31 as c2, 
  s_phone as c3, 
  case when 4 is NULL then s_comment else c1 end
     as c4, 
  c2 as c5
from 
  supplier  
    inner join (select  
          ps_partkey as c0, 
          ps_comment as c1, 
          ps_comment as c2, 
          (select r_comment from region limit 1 offset 53)
             as c3, 
          ps_comment as c4, 
          ps_comment as c5, 
          ps_supplycost as c6, 
          ps_comment as c7
        from 
          partsupp 
        where false
        limit 115) 
    on (s_suppkey = c0 )
where c7 is NULL;


select  
  r_comment as c0
from 
  region  
where EXISTS (
  select distinct 
      o_orderkey as c0, 
      r_regionkey as c1
    from 
      orders  
        left join part 
        on (o_orderkey = p_partkey )
    where (o_orderstatus is not NULL) 
      or ((p_name is not NULL) 
        and (false))
    limit 107)
limit 115;


select  
  c_acctbal as c0
from 
  customer 
where c_comment is not NULL;


select  
  ps_supplycost as c0
from 
  partsupp 
where ps_availqty is NULL
limit 34;


select  
  ps_partkey as c0
from 
  partsupp  
where false;


select  
  s_phone as c0, 
  s_suppkey as c1, 
  s_nationkey as c2, 
  92 as c3, 
  s_comment as c4
from 
  supplier 
where false
limit 68;


select  
  l_returnflag as c0
from 
  lineitem 
where false;


select  
  ps_availqty as c0
from 
  partsupp 
where true
limit 168;


select  
  case when ps_suppkey is not NULL then ps_availqty else ps_suppkey end
     as c0
from 
  partsupp 
where ps_comment is NULL;


select  
  r_comment as c0
from 
  region 
where true
limit 98;


select  
  (select l_discount from lineitem limit 1 offset 5)
     as c0
from 
  region 
where true
limit 96;


select  
  c0 as c0, 
  c1 as c1, 
  c0 as c2
from 
  (select  
        ps_suppkey as c0, 
        ps_availqty as c1
      from 
        partsupp  
      where ps_supplycost is not NULL
      limit 128) 
where c1 is NULL
limit 75;


select  
  p_comment as c0
from 
  orders 
    inner join part 
    on (o_clerk = p_mfgr )
where o_custkey is not NULL
limit 53;


select  
  l_orderkey as c0, 
  case when l_commitdate is NULL then l_quantity else l_quantity end
     as c1, 
  l_tax as c2, 
  l_linestatus as c3, 
  l_commitdate as c4, 
  l_shipmode as c5, 
  l_extendedprice as c6
from 
  lineitem 
where l_quantity <= l_tax
limit 103;


select  
  p_name as c0
from 
  part  
where p_container is not NULL;


select  
  81 as c0
from 
  customer 
where false
limit 61;


select  
  o_orderdate as c0, 
  o_orderpriority as c1, 
  o_comment as c2
from 
  orders  
where case when false then o_orderpriority else o_orderstatus end
     is NULL
limit 106;


select  
  case when false then 65 else p_size end
     as c0
from 
  part  
where p_size is not NULL
limit 87;


select  
  s_nationkey as c0
from 
  supplier  
where s_suppkey is NULL;


select  
  case when false then ps_suppkey else ps_availqty end
     as c0, 
  ps_availqty as c1
from 
  partsupp  
where ps_comment is NULL
limit 66;


select  
  c1 as c0
from 
  (select  
        p_comment as c0, 
        p_name as c1
      from 
        part 
      where p_partkey is NULL
      limit 131) 
where c1 is NULL;


select  
  r_regionkey as c0
from 
  region 
where r_regionkey is not NULL;


select  
  c_custkey as c0
from 
  customer 
where c_nationkey >= c_custkey;


select  
  p_brand as c0
from 
  part  
where p_partkey is not NULL
limit 80;


select  
  s_name as c0, 
  s_name as c1, 
  s_phone as c2, 
  s_nationkey as c3, 
  s_name as c4
from 
  supplier 
where (s_phone is NULL) 
  and (true)
limit 104;


select  
  n_nationkey as c0, 
  n_name as c1
from 
  nation 
where true;


select  
  70 as c0, 
  o_totalprice as c1, 
  (select r_name from region limit 1 offset 42)
     as c2, 
  o_totalprice as c3
from 
  orders  
where o_comment is not NULL
limit 150;


select  
  o_orderstatus as c0, 
  o_totalprice as c1
from 
  orders 
where false;


select  
  n_regionkey as c0
from 
  nation  
where n_name is NULL;


select  
  n_name as c0, 
  n_comment as c1
from 
  nation 
where n_nationkey is NULL
limit 20;


select  
  c_mktsegment as c0
from 
  customer 
where c_mktsegment is NULL;


select  
  c1 as c0, 
  58 as c1
from 
  (select  
        ps_availqty as c0, 
        ps_comment as c1, 
        ps_supplycost as c2
      from 
        partsupp 
      where (EXISTS (
          select  
              (select l_shipmode from lineitem limit 1 offset 2)
                 as c0, 
              s_name as c1, 
              ps_partkey as c2, 
              s_address as c3, 
              ps_partkey as c4, 
              ps_partkey as c5, 
              l_discount as c6, 
              ps_suppkey as c7, 
              l_linenumber as c8, 
              s_phone as c9, 
              l_receiptdate as c10, 
              ps_suppkey as c11, 
              l_comment as c12, 
              s_comment as c13, 
              ps_comment as c14
            from 
              lineitem  
                inner join supplier 
                on (l_partkey = s_suppkey )
            where true
            limit 59)) 
        and (false)
      limit 113) 
where c0 is not NULL
limit 30;


select  
  l_linestatus as c0, 
  l_extendedprice as c1, 
  l_comment as c2, 
  l_shipdate as c3
from 
  lineitem  
where true;


select  
  ps_comment as c0, 
  ps_supplycost as c1, 
  ps_partkey as c2, 
  ps_supplycost as c3, 
  ps_comment as c4
from 
  partsupp 
where ps_supplycost = ps_supplycost
limit 115;


select  
  p_retailprice as c0, 
  p_comment as c1
from 
  part  
where p_size is not NULL
limit 164;


select  
  c_phone as c0, 
  c_address as c1, 
  c_address as c2, 
  41 as c3, 
  c_acctbal as c4
from 
  customer  
where c_phone is not NULL
limit 87;


select  
  n_name as c0, 
  n_regionkey as c1
from 
  nation 
where n_regionkey is NULL
limit 94;


select  
  ps_partkey as c0, 
  (select n_comment from nation limit 1 offset 2)
     as c1, 
  ps_availqty as c2, 
  ps_availqty as c3, 
  ps_availqty as c4, 
  ps_comment as c5
from 
  partsupp 
where (false) 
  and ((true) 
    and (ps_availqty is not NULL))
limit 35;


select  
  (select n_nationkey from nation limit 1 offset 6)
     as c0
from 
  customer 
where false
limit 86;


select  
  s_name as c0, 
  s_phone as c1, 
  s_suppkey as c2, 
  s_suppkey as c3
from 
  supplier  
where false
limit 111;


select  
  l_shipinstruct as c0
from 
  lineitem 
where false
limit 126;


select  
  s_comment as c0, 
  s_name as c1, 
  s_name as c2, 
  s_suppkey as c3, 
  s_nationkey as c4, 
  s_phone as c5, 
  s_suppkey as c6
from 
  supplier 
where (false) 
  and (s_name is NULL)
limit 113;


select  
  c_acctbal as c0, 
  35 as c1, 
  27 as c2, 
  c_comment as c3
from 
  customer 
where c_nationkey is NULL;


select  
  s_name as c0, 
  s_name as c1, 
  s_comment as c2
from 
  supplier 
where s_nationkey is not NULL
limit 108;


select  
  s_suppkey as c0
from 
  supplier 
where s_nationkey <= s_suppkey
limit 101;


select  
  case when c_address is not NULL then c_mktsegment else c_phone end
     as c0, 
  c_name as c1
from 
  customer  
where c_nationkey is NULL
limit 76;


select  
  23 as c0
from 
  customer 
    left join part 
    on (true)
where false
limit 66;


select  
  77 as c0
from 
  region  
where r_name is not NULL
limit 58;


select  
  c_acctbal as c0, 
  c_comment as c1
from 
  customer  
where true
limit 69;


select  
  61 as c0, 
  30 as c1
from 
  partsupp  
where ps_partkey is not NULL
limit 96;


select  
  o_orderkey as c0, 
  o_orderdate as c1, 
  o_totalprice as c2, 
  o_comment as c3, 
  o_totalprice as c4
from 
  orders  
where (select n_comment from nation limit 1 offset 99)
     is NULL
limit 85;


select  
  c1 as c0, 
  c2 as c1
from 
  (select  
        o_totalprice as c0, 
        c0 as c1, 
        o_custkey as c2
      from 
        orders  
        lateral (select  
              r_name as c0, 
              o_orderpriority as c1, 
              o_custkey as c2, 
              r_name as c3, 
              o_shippriority as c4, 
              o_clerk as c5
            from 
              region 
            where EXISTS (
              select  
                  o_orderkey as c0, 
                  o_shippriority as c1, 
                  o_orderkey as c2, 
                  r_comment as c3, 
                  r_regionkey as c4, 
                  96 as c5, 
                  o_orderkey as c6, 
                  r_comment as c7, 
                  (select s_address from supplier limit 1 offset 2)
                     as c8, 
                  o_custkey as c9, 
                  o_orderstatus as c10, 
                  o_comment as c11, 
                  8 as c12
                from 
                  orders  
                where o_comment is NULL)
            limit 98) 
      where (c3 is not NULL) 
        or (false)) 
where false
limit 108;


select  
  l_comment as c0, 
  (select c_custkey from customer limit 1 offset 3)
     as c1, 
  l_discount as c2, 
  l_receiptdate as c3, 
  l_tax as c4, 
  l_returnflag as c5
from 
  lineitem  
where l_shipmode is not NULL;


select  
  r_name as c0, 
  n_name as c1
from 
  nation 
    inner join region 
    on (n_nationkey = r_regionkey )
where (select c_phone from customer limit 1 offset 89)
     is NULL
limit 60;


select  
  l_commitdate as c0, 
  l_partkey as c1, 
  l_returnflag as c2, 
  l_discount as c3, 
  l_linestatus as c4
from 
  lineitem 
where (l_tax is NULL) 
  or (false);


select  
  o_orderstatus as c0, 
  o_comment as c1, 
  58 as c2, 
  85 as c3, 
  o_comment as c4, 
  o_shippriority as c5, 
  o_custkey as c6
from 
  orders  
where true
limit 17;


select  
  r_comment as c0, 
  r_regionkey as c1, 
  r_comment as c2, 
  r_comment as c3, 
  r_comment as c4, 
  77 as c5
from 
  region  
where false
limit 161;


select  
  ps_availqty as c0
from 
  partsupp  
where ps_availqty is not NULL;


select  
  ps_comment as c0, 
  ps_comment as c1, 
  ps_comment as c2, 
  ps_supplycost as c3
from 
  partsupp 
where ps_supplycost is not NULL
limit 143;


select  
  p_brand as c0, 
  p_mfgr as c1
from 
  part  
where p_container < p_brand
limit 98;


select  
  ps_comment as c0
from 
  partsupp 
where ps_supplycost is NULL
limit 132;


select  
  p_type as c0
from 
  part  
where p_mfgr is not NULL;


select  
  r_comment as c0, 
  s_name as c1
from 
  region  
    inner join supplier  
    on (r_comment = s_address )
where r_name is NULL;


select  
  s_nationkey as c0
from 
  supplier 
where s_address is not NULL
limit 145;


select  
  c_mktsegment as c0
from 
  customer  
where c_mktsegment = c_mktsegment
limit 84;


select  
  s_name as c0
from 
  supplier 
where s_phone is not NULL
limit 92;


select  
  n_nationkey as c0, 
  n_nationkey as c1
from 
  nation  
where n_comment is NULL
limit 111;


select  
  p_retailprice as c0, 
  p_comment as c1, 
  p_size as c2, 
  p_mfgr as c3
from 
  part  
where p_partkey is NULL;


select  
  c0 as c0, 
  (select l_tax from lineitem limit 1 offset 5)
     as c1, 
  c0 as c2
from 
  (select  
        c0 as c0
      from 
        (select  
              c_acctbal as c0, 
              c_nationkey as c1
            from 
              customer  
            where c_comment is not NULL
            limit 191) 
      where true
      limit 63) 
where c0 is not NULL
limit 112;


select  
  c0 as c0, 
  c1 as c1, 
  c0 as c2
from 
  (select  
        n_name as c0, 
        n_name as c1
      from 
        nation  
      where n_name is not NULL
      limit 47) 
where false
limit 57;


select  
  ps_availqty as c0
from 
  partsupp 
where false
limit 35;


select  
  ps_suppkey as c0
from 
  partsupp  
where ps_supplycost is not NULL
limit 145;


select  
  81 as c0, 
  p_type as c1, 
  (select p_container from part limit 1 offset 75)
     as c2
from 
  part 
where (select p_partkey from part limit 1 offset 2)
     is not NULL;


select  
  r_regionkey as c0, 
  r_regionkey as c1, 
  68 as c2, 
  r_regionkey as c3, 
  (select s_acctbal from supplier limit 1 offset 2)
     as c4, 
  r_regionkey as c5
from 
  region  
where r_name is NULL
limit 131;


select  
  (select s_name from supplier limit 1 offset 45)
     as c0, 
  n_comment as c1, 
  n_regionkey as c2, 
  19 as c3, 
  n_comment as c4, 
  n_nationkey as c5, 
  n_name as c6
from 
  nation 
where n_regionkey is NULL;


select  
  p_brand as c0
from 
  part  
where p_type is not NULL;


select  
  s_name as c0, 
  s_address as c1, 
  53 as c2, 
  s_address as c3, 
  s_comment as c4
from 
  supplier 
where true
limit 132;


select  
  96 as c0
from 
  lineitem  
where l_tax = l_extendedprice
limit 123;


select  
  c_nationkey as c0
from 
  customer 
where c_acctbal is not NULL
limit 104;


select  
  s_acctbal as c0, 
  s_comment as c1
from 
  supplier  
where s_name is not NULL
limit 128;


select  
  r_name as c0
from 
  region 
where EXISTS (
  select  
      (select l_tax from lineitem limit 1 offset 3)
         as c0, 
      c_comment as c1
    from 
      customer 
    where true
    limit 57);


select  
  r_name as c0, 
  r_comment as c1, 
  n_regionkey as c2
from 
  nation  
    inner join region  
    on (n_nationkey = r_regionkey )
where r_regionkey is not NULL;


select  
  c_nationkey as c0, 
  c_comment as c1, 
  c_address as c2, 
  c_name as c3
from 
  customer 
where c_nationkey is not NULL
limit 93;


select  
  55 as c0
from 
  (select  
        l_orderkey as c0, 
        l_commitdate as c1, 
        l_shipinstruct as c2
      from 
        lineitem  
      where false) 
where true
limit 104;


select  
  o_orderkey as c0, 
  o_custkey as c1
from 
  orders  
where o_custkey is NULL
limit 104;


select  
  (select c_mktsegment from customer limit 1 offset 2)
     as c0, 
  ps_suppkey as c1, 
  ps_availqty as c2
from 
  partsupp  
where ps_partkey is NULL;


select  
  c1 as c0
from 
  (select  
        c_nationkey as c0, 
        c_comment as c1
      from 
        customer  
      where true
      limit 108) 
where false
limit 126;


select  
  p_size as c0
from 
  part 
where false;


select  
  l_shipinstruct as c0, 
  l_returnflag as c1, 
  l_commitdate as c2, 
  l_shipmode as c3
from 
  lineitem  
where false;


select  
  r_name as c0
from 
  region  
where (true) 
  and (r_comment is NULL)
limit 98;


select  
  ps_comment as c0, 
  ps_partkey as c1, 
  ps_suppkey as c2, 
  4 as c3, 
  ps_suppkey as c4
from 
  partsupp 
where ps_suppkey is NULL;


select  
  s_name as c0, 
  s_acctbal as c1, 
  s_name as c2, 
  s_phone as c3, 
  s_suppkey as c4, 
  s_acctbal as c5, 
  s_comment as c6
from 
  supplier  
where s_name is NULL;


select  
  (select ps_suppkey from partsupp limit 1 offset 2)
     as c0, 
  c_custkey as c1
from 
  customer 
where c_name is NULL
limit 90;


select  
  c_acctbal as c0, 
  c_name as c1
from 
  customer  
where true
limit 37;


select  
  r_name as c0, 
  r_name as c1, 
  r_name as c2, 
  r_regionkey as c3, 
  r_name as c4, 
  r_name as c5, 
  r_regionkey as c6
from 
  region  
where r_name is not NULL;


select  
  r_regionkey as c0, 
  r_name as c1, 
  r_name as c2
from 
  region  
where true
limit 106;


