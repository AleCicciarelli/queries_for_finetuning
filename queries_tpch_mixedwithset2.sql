-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_address, 
    supplier_1.s_name, 
    supplier_1.s_comment, 
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_phone < supplier_1.s_name
  limit 6)
UNION
(select  
    orders_1.o_comment, 
    orders_1.o_orderstatus, 
    region_1.r_comment, 
    region_1.r_regionkey, 
    orders_1.o_custkey, 
    region_1.r_name
  from 
    orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
  where region_1.r_regionkey <= orders_1.o_shippriority
  limit 37);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_address
  from 
    partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
  where partsupp_1.ps_availqty > partsupp_1.ps_partkey
  limit 23)
EXCEPT
(select  
    supplier_2.s_comment
  from 
    supplier as supplier_2
  where supplier_2.s_nationkey is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_name, 
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal, 
    supplier_1.s_phone, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 34)
EXCEPT
(select  
    orders_1.o_orderpriority, 
    orders_1.o_orderkey, 
    orders_1.o_custkey, 
    orders_1.o_comment, 
    orders_1.o_totalprice, 
    orders_1.o_clerk, 
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_orderkey = orders_1.o_custkey
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_name is not NULL
  limit 28)
UNION
(select  
    orders_1.o_orderkey
  from 
    orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
  where region_1.r_comment is not NULL
  limit 41);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_type, 
    nation_1.n_name, 
    nation_1.n_nationkey, 
    nation_1.n_comment, 
    nation_1.n_regionkey
  from 
    nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
  where nation_1.n_comment is not NULL
  limit 30)
UNION
(select  
    partsupp_2.ps_comment, 
    region_1.r_name, 
    partsupp_2.ps_availqty, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
      inner join partsupp as partsupp_2
        inner join region as region_1
        on (partsupp_2.ps_partkey = region_1.r_regionkey )
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
  where partsupp_1.ps_availqty is not NULL
  limit 41);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  count(*)
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_name is not NULL
group by customer_1.c_mktsegment
limit 32;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_nationkey, 
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_name is not NULL
  limit 22)
UNION
(select  
    supplier_1.s_nationkey, 
    region_1.r_regionkey, 
    part_1.p_name, 
    region_1.r_name
  from 
    supplier as supplier_1
      inner join part as part_1
        inner join region as region_1
        on (part_1.p_partkey = region_1.r_regionkey )
      on (supplier_1.s_suppkey = part_1.p_partkey )
  where supplier_1.s_suppkey is not NULL
  limit 33);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_comment, 
    nation_1.n_name, 
    partsupp_1.ps_comment, 
    nation_1.n_nationkey
  from 
    nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_availqty is not NULL
  limit 21)
UNION
(select  
    partsupp_3.ps_comment, 
    region_1.r_name, 
    part_1.p_name, 
    part_1.p_size
  from 
    partsupp as partsupp_2
        inner join partsupp as partsupp_3
          inner join region as region_1
          on (partsupp_3.ps_partkey = region_1.r_regionkey )
        on (partsupp_2.ps_partkey = region_1.r_regionkey )
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
  where part_1.p_size <= partsupp_3.ps_partkey
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_partkey <= part_1.p_size
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 16)
UNION
(select  
    lineitem_1.l_orderkey
  from 
    region as region_2
      inner join lineitem as lineitem_1
      on (region_2.r_regionkey = lineitem_1.l_orderkey )
  where region_2.r_comment is not NULL
  limit 41);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_suppkey, 
    orders_1.o_orderpriority
  from 
    supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
  where orders_1.o_comment is not NULL
  limit 13)
UNION
(select  
    customer_1.c_custkey, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 18);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 41)
EXCEPT
(select  
    part_1.p_comment
  from 
    partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
  where partsupp_1.ps_availqty = part_1.p_partkey
  limit 3);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_comment, 
    part_1.p_retailprice, 
    part_1.p_mfgr, 
    part_1.p_brand
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 25)
EXCEPT
(select  
    partsupp_1.ps_comment, 
    orders_1.o_totalprice, 
    part_2.p_mfgr, 
    part_2.p_brand
  from 
    supplier as supplier_1
        inner join partsupp as partsupp_1
          inner join part as part_2
          on (partsupp_1.ps_partkey = part_2.p_partkey )
        on (supplier_1.s_suppkey = part_2.p_partkey )
      inner join orders as orders_1
      on (part_2.p_partkey = orders_1.o_orderkey )
  where part_2.p_size is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_nationkey, 
    nation_1.n_regionkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 38)
EXCEPT
(select  
    lineitem_1.l_orderkey, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_suppkey is not NULL
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_partkey < part_1.p_size
limit 30;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey, 
    nation_1.n_name, 
    customer_1.c_acctbal, 
    nation_1.n_comment
  from 
    nation as nation_1
        inner join region as region_1
        on (nation_1.n_nationkey = region_1.r_regionkey )
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
  where region_1.r_regionkey is not NULL
  limit 16)
UNION
(select  
    lineitem_1.l_suppkey, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_discount, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_returnflag is not NULL
  limit 42);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_receiptdate
  from 
    region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
  where region_1.r_name is not NULL
  limit 1)
UNION
(select  
    orders_1.o_orderdate
  from 
    supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
  where supplier_1.s_address is not NULL
  limit 16);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment, 
    nation_1.n_nationkey, 
    nation_1.n_regionkey, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_shipdate
  from 
    nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
  where nation_1.n_name is not NULL
  limit 5)
EXCEPT
(select  
    orders_1.o_comment, 
    orders_1.o_orderkey, 
    orders_1.o_custkey, 
    orders_1.o_orderstatus, 
    orders_1.o_orderdate
  from 
    region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
  where region_1.r_regionkey is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey, 
    region_1.r_comment, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 21)
UNION
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_address, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey = supplier_1.s_nationkey
  limit 28);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    part_1.p_type, 
    part_1.p_comment
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 5)
EXCEPT
(select  
    region_1.r_comment, 
    orders_1.o_comment
  from 
    orders as orders_1
        inner join customer as customer_1
        on (orders_1.o_orderkey = customer_1.c_custkey )
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
  where customer_1.c_nationkey <= orders_1.o_shippriority
  limit 34);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_regionkey = region_1.r_regionkey
  limit 34)
UNION
(select  
    customer_1.c_nationkey, 
    orders_1.o_clerk, 
    customer_1.c_name
  from 
    customer as customer_1
      inner join supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_suppkey = orders_1.o_orderkey )
      on (customer_1.c_custkey = supplier_1.s_suppkey )
  where orders_1.o_orderpriority is not NULL
  limit 40);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  part_1.p_size, 
  lineitem_1.l_orderkey, 
  orders_1.o_orderstatus, 
  part_1.p_brand, 
  orders_1.o_shippriority, 
  part_1.p_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    on (part_1.p_partkey = orders_1.o_orderkey )
where lineitem_1.l_shipinstruct < lineitem_1.l_returnflag
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_custkey, 
    orders_1.o_clerk, 
    orders_1.o_comment, 
    orders_1.o_orderstatus
  from 
    orders as orders_1
  where orders_1.o_shippriority is not NULL
  limit 41)
EXCEPT
(select  
    lineitem_1.l_orderkey, 
    lineitem_1.l_returnflag, 
    lineitem_1.l_comment, 
    lineitem_1.l_linestatus
  from 
    lineitem as lineitem_1
  where lineitem_1.l_linenumber is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 23;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_discount, 
    lineitem_1.l_linestatus
  from 
    lineitem as lineitem_1
  where lineitem_1.l_receiptdate >= lineitem_1.l_commitdate
  limit 16)
UNION
(select  
    partsupp_1.ps_supplycost, 
    lineitem_2.l_returnflag
  from 
    part as part_1
        inner join lineitem as lineitem_2
        on (part_1.p_partkey = lineitem_2.l_orderkey )
      inner join partsupp as partsupp_1
      on (lineitem_2.l_orderkey = partsupp_1.ps_partkey )
  where part_1.p_brand is not NULL
  limit 34);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_supplycost, 
    nation_1.n_name, 
    partsupp_1.ps_partkey, 
    nation_1.n_nationkey
  from 
    nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
  where nation_1.n_name is not NULL
  limit 28)
EXCEPT
(select  
    customer_1.c_name, 
    customer_1.c_comment, 
    customer_1.c_acctbal, 
    part_1.p_container, 
    part_1.p_size, 
    part_1.p_partkey
  from 
    part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
  where customer_1.c_comment is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 32;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment, 
    lineitem_1.l_receiptdate, 
    nation_1.n_name, 
    lineitem_1.l_partkey, 
    orders_1.o_totalprice, 
    orders_2.o_orderkey
  from 
    orders as orders_1
      inner join lineitem as lineitem_1
          inner join orders as orders_2
          on (lineitem_1.l_orderkey = orders_2.o_orderkey )
        inner join nation as nation_1
        on (orders_2.o_orderkey = nation_1.n_nationkey )
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
  where orders_1.o_orderkey is not NULL
  limit 36)
EXCEPT
(select  
    part_1.p_comment, 
    lineitem_2.l_commitdate, 
    lineitem_2.l_shipinstruct, 
    part_1.p_size, 
    part_1.p_retailprice, 
    lineitem_2.l_suppkey
  from 
    part as part_1
      inner join lineitem as lineitem_2
      on (part_1.p_partkey = lineitem_2.l_orderkey )
  where part_1.p_container = lineitem_2.l_returnflag
  limit 42);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_comment, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_regionkey = region_1.r_regionkey
  limit 28)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode
  from 
    lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
  where lineitem_1.l_returnflag < lineitem_1.l_linestatus
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_nationkey, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 14)
UNION
(select  
    supplier_2.s_acctbal, 
    supplier_2.s_suppkey, 
    supplier_2.s_phone
  from 
    supplier as supplier_2
  where supplier_2.s_acctbal <= supplier_2.s_acctbal
  limit 3);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  part_2.p_partkey, 
  part_1.p_size
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_mfgr is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_name, 
    part_1.p_container, 
    part_1.p_brand, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_retailprice <= part_1.p_retailprice
  limit 16)
EXCEPT
(select  
    nation_1.n_comment, 
    nation_1.n_name, 
    nation_1.n_name, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_comment, 
  region_2.r_comment
from 
  region as region_1
    inner join customer as customer_1
      inner join region as region_2
      on (customer_1.c_custkey = region_2.r_regionkey )
    on (region_1.r_regionkey = customer_1.c_custkey )
where region_1.r_regionkey <= customer_1.c_nationkey
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    orders_1.o_custkey, 
    orders_1.o_shippriority, 
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_comment is not NULL
  limit 22)
EXCEPT
(select  
    region_1.r_regionkey, 
    region_1.r_regionkey, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_quantity, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_tax
  from 
    lineitem as lineitem_1
  where lineitem_1.l_tax >= lineitem_1.l_quantity
  limit 19)
EXCEPT
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_availqty is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_name
  from 
    part as part_1
  where part_1.p_mfgr is not NULL
  limit 6)
EXCEPT
(select  
    part_2.p_name
  from 
    part as part_2
  where part_2.p_brand is not NULL
  limit 14);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_regionkey, 
    orders_1.o_comment
  from 
    partsupp as partsupp_1
        inner join orders as orders_1
        on (partsupp_1.ps_partkey = orders_1.o_orderkey )
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
  where partsupp_1.ps_suppkey is not NULL
  limit 40)
UNION
(select  
    customer_1.c_nationkey, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_comment is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  customer_1.c_custkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_mktsegment is not NULL
limit 13;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_retailprice, 
    part_1.p_comment, 
    part_1.p_size, 
    part_1.p_container, 
    part_1.p_type, 
    part_1.p_partkey, 
    part_1.p_name, 
    part_1.p_mfgr, 
    part_1.p_brand
  from 
    part as part_1
  where part_1.p_size is not NULL
  limit 6)
UNION
(select  
    lineitem_1.l_tax, 
    nation_1.n_comment, 
    lineitem_1.l_linenumber, 
    supplier_1.s_phone, 
    supplier_1.s_address, 
    nation_1.n_regionkey, 
    supplier_1.s_comment, 
    lineitem_1.l_returnflag, 
    lineitem_1.l_shipinstruct
  from 
    nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.n_nationkey = lineitem_1.l_orderkey )
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_phone is not NULL
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_comment, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_address is not NULL
  limit 31)
EXCEPT
(select  
    part_1.p_name, 
    part_1.p_comment
  from 
    part as part_1
  where part_1.p_comment is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_name, 
    customer_1.c_custkey, 
    nation_1.n_name, 
    customer_1.c_acctbal
  from 
    nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
  where customer_1.c_mktsegment is not NULL
  limit 10)
UNION
(select  
    customer_2.c_address, 
    customer_2.c_nationkey, 
    customer_2.c_phone, 
    customer_2.c_acctbal
  from 
    customer as customer_2
  where customer_2.c_phone is not NULL
  limit 15);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  supplier_1.s_name, 
  region_1.r_name
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.r_regionkey is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_linenumber, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_commitdate <= lineitem_1.l_receiptdate
  limit 20)
UNION
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_name, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey <= supplier_1.s_suppkey
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 1)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_tax is not NULL
  limit 10);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_shippriority, 
    orders_1.o_orderpriority, 
    orders_1.o_orderdate, 
    orders_1.o_totalprice, 
    orders_1.o_orderkey, 
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_shippriority is not NULL
  limit 18)
EXCEPT
(select  
    orders_3.o_shippriority, 
    orders_3.o_orderstatus, 
    orders_2.o_orderdate, 
    partsupp_1.ps_supplycost, 
    orders_3.o_custkey, 
    orders_3.o_comment
  from 
    orders as orders_2
        inner join customer as customer_1
        on (orders_2.o_orderkey = customer_1.c_custkey )
      inner join orders as orders_3
        inner join partsupp as partsupp_1
        on (orders_3.o_orderkey = partsupp_1.ps_partkey )
      on (orders_2.o_orderkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_availqty is not NULL
  limit 9);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  customer as customer_1
    inner join customer as customer_2
      inner join nation as nation_1
        inner join customer as customer_3
        on (nation_1.n_nationkey = customer_3.c_custkey )
      on (customer_2.c_custkey = nation_1.n_nationkey )
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_3.c_custkey = customer_2.c_custkey
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_partkey, 
    lineitem_1.l_extendedprice
  from 
    lineitem as lineitem_1
  where lineitem_1.l_suppkey is not NULL
  limit 23)
EXCEPT
(select  
    customer_1.c_phone, 
    customer_1.c_custkey, 
    customer_1.c_mktsegment, 
    customer_1.c_nationkey, 
    customer_1.c_custkey, 
    customer_1.c_acctbal
  from 
    customer as customer_1
  where customer_1.c_acctbal = customer_1.c_acctbal
  limit 12);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_custkey, 
    customer_1.c_nationkey, 
    customer_1.c_name, 
    customer_1.c_phone, 
    customer_1.c_address, 
    customer_1.c_acctbal, 
    customer_1.c_comment
  from 
    customer as customer_1
  where customer_1.c_phone is not NULL
  limit 32)
UNION
(select  
    part_1.p_partkey, 
    supplier_1.s_nationkey, 
    part_3.p_comment, 
    part_2.p_mfgr, 
    part_1.p_name, 
    supplier_1.s_acctbal, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
      inner join part as part_1
          inner join partsupp as partsupp_1
          on (part_1.p_partkey = partsupp_1.ps_partkey )
        inner join part as part_2
          inner join part as part_3
          on (part_2.p_partkey = part_3.p_partkey )
        on (part_1.p_partkey = part_2.p_partkey )
      on (supplier_1.s_suppkey = part_2.p_partkey )
  where part_1.p_size < part_2.p_size
  limit 40);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    region_2.r_regionkey, 
    region_2.r_comment, 
    region_1.r_comment
  from 
    region as region_1
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
  where region_2.r_name is not NULL
  limit 28)
EXCEPT
(select  
    lineitem_1.l_suppkey, 
    orders_1.o_custkey, 
    lineitem_1.l_comment, 
    nation_1.n_comment
  from 
    lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
  where lineitem_1.l_shipdate < lineitem_1.l_receiptdate
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_nationkey >= customer_1.c_custkey
limit 24;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name, 
    nation_1.n_comment, 
    nation_1.n_nationkey, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_regionkey = nation_1.n_nationkey
  limit 29)
UNION
(select  
    orders_1.o_orderpriority, 
    orders_1.o_comment, 
    orders_2.o_orderkey, 
    orders_2.o_custkey
  from 
    orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
  where orders_1.o_orderkey is not NULL
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderkey, 
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_orderstatus is not NULL
  limit 22)
EXCEPT
(select  
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
  limit 15);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_nationkey, 
    customer_1.c_phone, 
    customer_1.c_custkey, 
    supplier_1.s_acctbal, 
    supplier_1.s_phone, 
    supplier_1.s_suppkey, 
    supplier_1.s_name
  from 
    customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_custkey = supplier_1.s_suppkey )
  where supplier_1.s_phone is not NULL
  limit 19)
UNION
(select  
    supplier_2.s_suppkey, 
    supplier_2.s_phone, 
    supplier_2.s_nationkey, 
    supplier_2.s_acctbal, 
    supplier_2.s_name, 
    supplier_2.s_suppkey, 
    supplier_2.s_name
  from 
    supplier as supplier_2
  where supplier_2.s_nationkey is not NULL
  limit 29);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_comment, 
    supplier_1.s_phone, 
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal >= supplier_1.s_acctbal
  limit 16)
EXCEPT
(select  
    part_1.p_name, 
    part_1.p_mfgr, 
    part_1.p_size, 
    part_1.p_retailprice
  from 
    region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
  where region_1.r_comment is not NULL
  limit 36);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_nationkey, 
    region_1.r_regionkey, 
    nation_1.n_name
  from 
    region as region_1
      inner join nation as nation_1
      on (region_1.r_regionkey = nation_1.n_nationkey )
  where nation_1.n_comment is not NULL
  limit 21)
UNION
(select  
    region_2.r_regionkey, 
    region_2.r_regionkey, 
    region_2.r_name
  from 
    region as region_2
  where region_2.r_name is not NULL
  limit 37);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_2.l_comment, 
    lineitem_2.l_orderkey, 
    lineitem_1.l_linestatus, 
    lineitem_2.l_linenumber
  from 
    lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
  where lineitem_2.l_shipdate < lineitem_1.l_shipdate
  limit 32)
UNION
(select  
    supplier_1.s_address, 
    supplier_1.s_suppkey, 
    supplier_1.s_phone, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_phone, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 13)
EXCEPT
(select  
    customer_1.c_phone, 
    customer_1.c_nationkey
  from 
    customer as customer_1
  where customer_1.c_custkey is not NULL
  limit 5);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_name, 
    supplier_1.s_address, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
  where orders_1.o_orderstatus = orders_1.o_orderpriority
  limit 15)
UNION
(select  
    nation_1.n_nationkey, 
    nation_1.n_name, 
    nation_1.n_comment, 
    part_1.p_comment
  from 
    part as part_1
      inner join lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      on (part_1.p_partkey = nation_1.n_nationkey )
  where nation_1.n_regionkey >= part_1.p_size
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 9)
EXCEPT
(select  
    customer_1.c_nationkey, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_acctbal > customer_1.c_acctbal
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost is not NULL
  limit 37)
EXCEPT
(select  
    customer_1.c_nationkey, 
    customer_1.c_custkey, 
    customer_1.c_address, 
    customer_1.c_nationkey, 
    customer_1.c_acctbal
  from 
    customer as customer_1
  where customer_1.c_acctbal < customer_1.c_acctbal
  limit 1);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  region_1.r_name, 
  region_1.r_comment, 
  nation_1.n_name
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_comment is not NULL
limit 38;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_linestatus
  from 
    nation as nation_1
          inner join orders as orders_1
          on (nation_1.n_nationkey = orders_1.o_orderkey )
        inner join orders as orders_2
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      inner join nation as nation_2
        inner join nation as nation_3
          inner join lineitem as lineitem_1
          on (nation_3.n_nationkey = lineitem_1.l_orderkey )
        on (nation_2.n_nationkey = nation_3.n_nationkey )
      on (orders_2.o_orderkey = nation_2.n_nationkey )
  where nation_3.n_nationkey is not NULL
  limit 4)
EXCEPT
(select  
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_quantity
  from 
    lineitem as lineitem_1
  where lineitem_1.l_suppkey < lineitem_1.l_linenumber
  limit 8)
EXCEPT
(select  
    orders_1.o_orderstatus, 
    orders_1.o_totalprice
  from 
    orders as orders_1
  where orders_1.o_orderstatus is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_suppkey is not NULL
  limit 35)
UNION
(select  
    partsupp_2.ps_suppkey, 
    partsupp_2.ps_availqty, 
    partsupp_2.ps_comment
  from 
    partsupp as partsupp_2
  where partsupp_2.ps_supplycost > partsupp_2.ps_supplycost
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_phone, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 5)
EXCEPT
(select  
    lineitem_1.l_orderkey, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_comment, 
    lineitem_1.l_extendedprice
  from 
    lineitem as lineitem_1
  where lineitem_1.l_suppkey is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_name = region_1.r_name
  limit 25)
UNION
(select  
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_comment is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderstatus
  from 
    orders as orders_1
  where orders_1.o_clerk is not NULL
  limit 40)
EXCEPT
(select  
    part_1.p_mfgr
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 16);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderpriority
  from 
    orders as orders_1
  where orders_1.o_orderdate is not NULL
  limit 8)
UNION
(select  
    orders_2.o_orderpriority
  from 
    supplier as supplier_1
        inner join customer as customer_1
            inner join region as region_1
            on (customer_1.c_custkey = region_1.r_regionkey )
          inner join partsupp as partsupp_1
            inner join partsupp as partsupp_2
            on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
          on (customer_1.c_custkey = partsupp_1.ps_partkey )
        on (supplier_1.s_suppkey = region_1.r_regionkey )
      inner join orders as orders_2
      on (supplier_1.s_suppkey = orders_2.o_orderkey )
  where supplier_1.s_address is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_nationkey, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 13)
EXCEPT
(select  
    customer_1.c_nationkey, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_nationkey is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_mfgr, 
    nation_1.n_nationkey, 
    nation_1.n_name
  from 
    part as part_1
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
  where part_1.p_type is not NULL
  limit 41)
EXCEPT
(select  
    customer_1.c_phone, 
    customer_1.c_nationkey, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_acctbal <= customer_1.c_acctbal
  limit 33);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment
  from 
    nation as nation_1
        inner join orders as orders_1
          inner join partsupp as partsupp_1
          on (orders_1.o_orderkey = partsupp_1.ps_partkey )
        on (nation_1.n_nationkey = orders_1.o_orderkey )
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_acctbal > orders_1.o_totalprice
  limit 18)
EXCEPT
(select  
    customer_1.c_address
  from 
    customer as customer_1
      inner join partsupp as partsupp_2
      on (customer_1.c_custkey = partsupp_2.ps_partkey )
  where customer_1.c_address is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_name, 
    customer_1.c_custkey, 
    customer_1.c_comment, 
    customer_1.c_phone, 
    customer_1.c_acctbal, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_address is not NULL
  limit 32)
UNION
(select  
    orders_1.o_comment, 
    orders_1.o_orderkey, 
    orders_1.o_comment, 
    orders_1.o_orderstatus, 
    orders_1.o_totalprice, 
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_totalprice is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_phone, 
    customer_1.c_name, 
    customer_1.c_address, 
    nation_1.n_nationkey
  from 
    customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
  where customer_1.c_custkey is not NULL
  limit 19)
UNION
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_suppkey is not NULL
  limit 36)
UNION
(select  
    part_1.p_partkey, 
    part_1.p_type, 
    part_1.p_size, 
    part_1.p_retailprice, 
    part_1.p_size
  from 
    part as part_1
  where part_1.p_size < part_1.p_partkey
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_nationkey, 
    customer_1.c_custkey, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_commitdate, 
    lineitem_1.l_quantity, 
    lineitem_1.l_shipdate, 
    customer_1.c_mktsegment, 
    lineitem_1.l_extendedprice, 
    lineitem_1.l_comment, 
    customer_1.c_phone
  from 
    lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
  where lineitem_1.l_shipmode is not NULL
  limit 15)
UNION
(select  
    lineitem_2.l_partkey, 
    lineitem_2.l_orderkey, 
    lineitem_2.l_suppkey, 
    lineitem_2.l_receiptdate, 
    lineitem_2.l_quantity, 
    lineitem_2.l_commitdate, 
    lineitem_2.l_shipmode, 
    lineitem_2.l_extendedprice, 
    lineitem_2.l_comment, 
    lineitem_2.l_returnflag
  from 
    lineitem as lineitem_2
  where lineitem_2.l_linenumber is not NULL
  limit 3);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_name
  from 
    customer as customer_1
  where customer_1.c_custkey >= customer_1.c_nationkey
  limit 9)
EXCEPT
(select  
    orders_1.o_comment
  from 
    lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
  where orders_1.o_clerk is not NULL
  limit 6);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_comment
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 25)
EXCEPT
(select  
    part_2.p_comment
  from 
    lineitem as lineitem_1
        inner join part as part_2
        on (lineitem_1.l_orderkey = part_2.p_partkey )
      inner join customer as customer_1
      on (part_2.p_partkey = customer_1.c_custkey )
  where part_2.p_type is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_suppkey, 
    lineitem_1.l_returnflag, 
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_commitdate is not NULL
  limit 11)
UNION
(select  
    orders_1.o_orderkey, 
    orders_1.o_clerk, 
    orders_1.o_comment, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_clerk = orders_1.o_orderstatus
  limit 10);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 9)
EXCEPT
(select  
    customer_1.c_custkey
  from 
    customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
  where customer_1.c_custkey is not NULL
  limit 17);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_orderkey, 
    lineitem_1.l_quantity
  from 
    lineitem as lineitem_1
  where lineitem_1.l_comment is not NULL
  limit 23)
EXCEPT
(select  
    region_1.r_regionkey, 
    orders_1.o_totalprice
  from 
    orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
  where orders_1.o_totalprice <= orders_1.o_totalprice
  limit 26);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_shipmode
  from 
    region as region_1
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
  where lineitem_1.l_shipinstruct is not NULL
  limit 18)
UNION
(select  
    orders_1.o_clerk
  from 
    orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
  where orders_1.o_shippriority is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name < region_1.r_name
  limit 34)
UNION
(select  
    lineitem_1.l_linestatus, 
    lineitem_1.l_comment, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_partkey is not NULL
  limit 17);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_returnflag, 
    lineitem_1.l_shipmode
  from 
    lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
  where lineitem_1.l_partkey is not NULL
  limit 10)
EXCEPT
(select  
    lineitem_2.l_shipinstruct, 
    part_1.p_container
  from 
    lineitem as lineitem_2
            inner join nation as nation_1
            on (lineitem_2.l_orderkey = nation_1.n_nationkey )
          inner join orders as orders_1
          on (nation_1.n_nationkey = orders_1.o_orderkey )
        inner join customer as customer_1
        on (lineitem_2.l_orderkey = customer_1.c_custkey )
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
  where lineitem_2.l_suppkey is not NULL
  limit 22);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipdate
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_suppkey is not NULL
limit 30;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  lineitem_1.l_shipmode
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where partsupp_1.ps_supplycost is not NULL
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_2.o_orderdate, 
  orders_1.o_custkey, 
  orders_2.o_orderstatus, 
  orders_2.o_orderpriority, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_2.o_totalprice <= orders_1.o_totalprice
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_custkey, 
    customer_1.c_comment
  from 
    customer as customer_1
  where customer_1.c_address is not NULL
  limit 11)
EXCEPT
(select  
    nation_1.n_regionkey, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_regionkey >= nation_1.n_nationkey
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_custkey, 
    customer_1.c_name, 
    customer_1.c_address, 
    customer_1.c_nationkey
  from 
    customer as customer_1
  where customer_1.c_phone > customer_1.c_mktsegment
  limit 14)
EXCEPT
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_partkey is not NULL
  limit 22);
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_custkey, 
    customer_1.c_mktsegment, 
    customer_1.c_acctbal, 
    customer_1.c_comment
  from 
    customer as customer_1
  where customer_1.c_nationkey is not NULL
  limit 11)
EXCEPT
(select  
    nation_1.n_nationkey, 
    orders_1.o_orderstatus, 
    customer_2.c_acctbal, 
    supplier_1.s_comment
  from 
    part as part_1
        inner join nation as nation_1
          inner join orders as orders_1
            inner join customer as customer_2
            on (orders_1.o_orderkey = customer_2.c_custkey )
          on (nation_1.n_nationkey = customer_2.c_custkey )
        on (part_1.p_partkey = orders_1.o_orderkey )
      inner join supplier as supplier_1
        inner join part as part_2
          inner join part as part_3
          on (part_2.p_partkey = part_3.p_partkey )
        on (supplier_1.s_suppkey = part_2.p_partkey )
      on (nation_1.n_nationkey = part_3.p_partkey )
  where part_2.p_container is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_clerk, 
    orders_1.o_orderkey, 
    orders_1.o_orderpriority, 
    orders_1.o_orderstatus
  from 
    orders as orders_1
  where orders_1.o_custkey is not NULL
  limit 3)
UNION
(select  
    orders_2.o_orderstatus, 
    orders_2.o_shippriority, 
    orders_2.o_orderpriority, 
    orders_2.o_clerk
  from 
    orders as orders_2
  where orders_2.o_orderdate < orders_2.o_orderdate
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type
from 
  part as part_1
where part_1.p_container is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_comment, 
    supplier_1.s_acctbal, 
    supplier_1.s_phone, 
    supplier_1.s_address, 
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_address is not NULL
  limit 36)
UNION
(select  
    supplier_2.s_address, 
    supplier_2.s_acctbal, 
    supplier_2.s_name, 
    supplier_2.s_comment, 
    supplier_2.s_nationkey, 
    supplier_2.s_suppkey, 
    supplier_2.s_phone
  from 
    supplier as supplier_2
  where supplier_2.s_phone is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 33)
UNION
(select  
    part_1.p_size, 
    part_1.p_name, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_container is not NULL
  limit 5);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_custkey
  from 
    supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
  where customer_1.c_phone > supplier_1.s_name
  limit 8)
EXCEPT
(select  
    customer_2.c_nationkey
  from 
    region as region_1
      inner join customer as customer_2
      on (region_1.r_regionkey = customer_2.c_custkey )
  where customer_2.c_acctbal is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_container, 
    part_1.p_brand, 
    part_1.p_size, 
    part_1.p_mfgr, 
    part_1.p_comment, 
    part_1.p_retailprice, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_comment is not NULL
  limit 3)
EXCEPT
(select  
    lineitem_1.l_returnflag, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_comment, 
    lineitem_1.l_tax, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_partkey = lineitem_1.l_orderkey
  limit 1);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_address, 
    supplier_1.s_name, 
    supplier_1.s_acctbal, 
    orders_1.o_custkey, 
    orders_1.o_orderdate
  from 
    supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
  where orders_1.o_shippriority is not NULL
  limit 39)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_returnflag, 
    orders_2.o_totalprice, 
    part_1.p_partkey, 
    lineitem_1.l_receiptdate
  from 
    region as region_1
        inner join orders as orders_2
          inner join part as part_1
          on (orders_2.o_orderkey = part_1.p_partkey )
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join lineitem as lineitem_1
        inner join partsupp as partsupp_1
        on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
      on (orders_2.o_orderkey = partsupp_1.ps_partkey )
  where lineitem_1.l_quantity > part_1.p_retailprice
  limit 15);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_partkey, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_discount, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_tax, 
    lineitem_1.l_shipdate
  from 
    lineitem as lineitem_1
  where lineitem_1.l_receiptdate is not NULL
  limit 14)
EXCEPT
(select  
    lineitem_2.l_suppkey, 
    lineitem_2.l_linenumber, 
    lineitem_2.l_quantity, 
    lineitem_2.l_shipmode, 
    lineitem_2.l_orderkey, 
    lineitem_2.l_tax, 
    lineitem_2.l_shipdate
  from 
    lineitem as lineitem_2
  where lineitem_2.l_orderkey <= lineitem_2.l_suppkey
  limit 8);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_name <= supplier_1.s_phone
  limit 42)
EXCEPT
(select  
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_comment is not NULL
  limit 33);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_2.o_orderdate
  from 
    orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
  where orders_2.o_orderstatus < orders_1.o_orderstatus
  limit 10)
UNION
(select  
    lineitem_1.l_shipdate
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct is not NULL
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_suppkey is not NULL
  limit 21)
UNION
(select  
    part_1.p_partkey, 
    part_1.p_retailprice, 
    part_1.p_size, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_mfgr is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_type, 
    part_1.p_container
  from 
    part as part_1
  where part_1.p_type is not NULL
  limit 27)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_shipinstruct
  from 
    region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
  where lineitem_1.l_linenumber <= lineitem_1.l_partkey
  limit 3);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_name, 
    supplier_1.s_nationkey, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_phone >= supplier_1.s_name
  limit 2)
EXCEPT
(select  
    partsupp_1.ps_partkey, 
    nation_2.n_name, 
    nation_2.n_nationkey, 
    partsupp_1.ps_supplycost
  from 
    nation as nation_1
          inner join nation as nation_2
          on (nation_1.n_nationkey = nation_2.n_nationkey )
        inner join partsupp as partsupp_1
        on (nation_2.n_nationkey = partsupp_1.ps_partkey )
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
  where orders_1.o_orderdate = orders_1.o_orderdate
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name > region_1.r_name
  limit 4)
EXCEPT
(select  
    lineitem_1.l_partkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_tax is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name < region_1.r_name
  limit 2)
EXCEPT
(select  
    customer_1.c_phone
  from 
    supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
  where customer_1.c_nationkey < customer_1.c_custkey
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_name is not NULL
  limit 38)
EXCEPT
(select  
    customer_1.c_name, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_acctbal = customer_1.c_acctbal
  limit 23);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_mktsegment, 
    customer_1.c_custkey, 
    customer_1.c_comment, 
    customer_2.c_name
  from 
    customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
  where customer_2.c_custkey is not NULL
  limit 30)
EXCEPT
(select  
    customer_3.c_mktsegment, 
    supplier_1.s_nationkey, 
    supplier_1.s_comment, 
    supplier_1.s_address
  from 
    supplier as supplier_1
      inner join customer as customer_3
      on (supplier_1.s_suppkey = customer_3.c_custkey )
  where supplier_1.s_nationkey is not NULL
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_name is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_name is not NULL
  limit 37)
UNION
(select  
    nation_2.n_name, 
    nation_2.n_comment
  from 
    nation as nation_2
  where nation_2.n_nationkey is not NULL
  limit 20);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_name, 
    nation_1.n_regionkey, 
    partsupp_1.ps_suppkey
  from 
    nation as nation_1
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
  where nation_1.n_comment is not NULL
  limit 6)
EXCEPT
(select  
    region_2.r_name, 
    region_3.r_regionkey, 
    region_2.r_regionkey
  from 
    region as region_2
      inner join region as region_3
      on (region_2.r_regionkey = region_3.r_regionkey )
  where region_3.r_name is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
  limit 3)
UNION
(select  
    partsupp_2.ps_partkey, 
    partsupp_2.ps_comment, 
    partsupp_2.ps_suppkey, 
    partsupp_2.ps_supplycost
  from 
    partsupp as partsupp_2
  where partsupp_2.ps_comment is not NULL
  limit 3);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_2.ps_supplycost, 
  partsupp_1.ps_partkey, 
  supplier_1.s_comment, 
  nation_1.n_regionkey, 
  partsupp_1.ps_comment, 
  partsupp_2.ps_availqty, 
  supplier_1.s_address, 
  supplier_1.s_nationkey
from 
  partsupp as partsupp_1
      inner join partsupp as partsupp_2
        inner join nation as nation_1
        on (partsupp_2.ps_partkey = nation_1.n_nationkey )
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_availqty >= partsupp_1.ps_partkey
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_address, 
    supplier_1.s_suppkey, 
    supplier_1.s_comment, 
    supplier_1.s_phone, 
    supplier_1.s_acctbal, 
    supplier_1.s_name, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_address is not NULL
  limit 35)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_partkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_tax, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipdate >= lineitem_1.l_receiptdate
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
limit 37;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_size, 
    part_1.p_brand, 
    part_1.p_comment, 
    part_1.p_name, 
    part_1.p_container, 
    part_1.p_partkey, 
    part_1.p_retailprice
  from 
    part as part_1
  where part_1.p_comment is not NULL
  limit 20)
EXCEPT
(select  
    orders_2.o_orderkey, 
    orders_2.o_orderstatus, 
    orders_1.o_comment, 
    orders_2.o_comment, 
    orders_2.o_orderpriority, 
    orders_2.o_shippriority, 
    orders_1.o_totalprice
  from 
    orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
  where orders_2.o_clerk is not NULL
  limit 42);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_acctbal
  from 
    orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_orderkey = lineitem_1.l_orderkey )
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_name is not NULL
  limit 13)
UNION
(select  
    lineitem_2.l_extendedprice
  from 
    lineitem as lineitem_2
  where lineitem_2.l_comment is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_name, 
    customer_1.c_phone, 
    customer_1.c_comment, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 36)
EXCEPT
(select  
    supplier_1.s_address, 
    supplier_1.s_phone, 
    supplier_1.s_comment, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_address is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 25)
UNION
(select  
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    nation_1.n_name, 
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_name < nation_1.n_name
  limit 26)
EXCEPT
(select  
    supplier_1.s_phone, 
    supplier_1.s_suppkey, 
    supplier_1.s_comment, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 5);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_acctbal, 
    region_1.r_name, 
    region_1.r_comment, 
    customer_1.c_address, 
    customer_1.c_nationkey
  from 
    region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
  where customer_1.c_mktsegment is not NULL
  limit 35)
EXCEPT
(select  
    lineitem_1.l_extendedprice, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_tax is not NULL
  limit 6);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_linestatus, 
    lineitem_2.l_suppkey, 
    lineitem_2.l_comment, 
    lineitem_2.l_quantity, 
    lineitem_1.l_tax, 
    lineitem_1.l_commitdate, 
    lineitem_2.l_orderkey, 
    lineitem_2.l_receiptdate, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_partkey, 
    lineitem_1.l_linenumber, 
    lineitem_2.l_shipinstruct, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
  where lineitem_1.l_shipdate is not NULL
  limit 15)
EXCEPT
(select  
    lineitem_3.l_linestatus, 
    partsupp_1.ps_availqty, 
    partsupp_2.ps_comment, 
    partsupp_2.ps_supplycost, 
    lineitem_3.l_quantity, 
    lineitem_3.l_shipdate, 
    lineitem_3.l_partkey, 
    lineitem_3.l_receiptdate, 
    lineitem_3.l_linenumber, 
    partsupp_2.ps_suppkey, 
    partsupp_1.ps_partkey, 
    lineitem_3.l_shipmode, 
    lineitem_3.l_returnflag
  from 
    lineitem as lineitem_3
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      on (lineitem_3.l_orderkey = partsupp_2.ps_partkey )
  where partsupp_1.ps_availqty is not NULL
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_comment, 
    region_1.r_name, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey > region_1.r_regionkey
  limit 16)
UNION
(select  
    partsupp_1.ps_comment, 
    region_2.r_name, 
    partsupp_1.ps_suppkey
  from 
    region as region_2
      inner join partsupp as partsupp_1
      on (region_2.r_regionkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
  limit 17);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_extendedprice, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_shipdate
  from 
    lineitem as lineitem_1
  where lineitem_1.l_orderkey is not NULL
  limit 29)
EXCEPT
(select  
    orders_1.o_totalprice, 
    part_1.p_size, 
    orders_1.o_orderdate
  from 
    part as part_1
      inner join supplier as supplier_1
          inner join orders as orders_1
          on (supplier_1.s_suppkey = orders_1.o_orderkey )
        inner join region as region_1
          inner join customer as customer_1
          on (region_1.r_regionkey = customer_1.c_custkey )
        on (supplier_1.s_suppkey = region_1.r_regionkey )
      on (part_1.p_partkey = supplier_1.s_suppkey )
  where customer_1.c_nationkey is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 18)
EXCEPT
(select  
    customer_2.c_mktsegment, 
    customer_2.c_comment, 
    customer_1.c_custkey
  from 
    customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
  where customer_1.c_phone is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_size is not NULL
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_name > nation_1.n_name
  limit 9)
EXCEPT
(select  
    lineitem_1.l_partkey, 
    lineitem_1.l_shipmode
  from 
    orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
  where lineitem_1.l_quantity is not NULL
  limit 22);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_comment, 
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost is not NULL
  limit 19)
UNION
(select  
    part_1.p_type, 
    lineitem_1.l_quantity, 
    part_1.p_size, 
    lineitem_1.l_suppkey, 
    customer_1.c_nationkey
  from 
    customer as customer_1
      inner join part as part_1
        inner join lineitem as lineitem_1
        on (part_1.p_partkey = lineitem_1.l_orderkey )
      on (customer_1.c_custkey = part_1.p_partkey )
  where customer_1.c_acctbal is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_nationkey, 
    customer_1.c_custkey, 
    customer_1.c_name, 
    customer_1.c_phone
  from 
    customer as customer_1
  where customer_1.c_acctbal is not NULL
  limit 12)
UNION
(select  
    part_1.p_partkey, 
    part_1.p_size, 
    part_1.p_type, 
    part_1.p_container
  from 
    part as part_1
  where part_1.p_partkey <= part_1.p_size
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    nation_1.n_nationkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_name is not NULL
  limit 22)
EXCEPT
(select  
    nation_2.n_nationkey, 
    nation_2.n_comment, 
    nation_2.n_regionkey, 
    nation_2.n_name
  from 
    nation as nation_2
  where nation_2.n_name < nation_2.n_name
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_extendedprice, 
    lineitem_1.l_quantity, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_linenumber
  from 
    lineitem as lineitem_1
  where lineitem_1.l_receiptdate is not NULL
  limit 40)
UNION
(select  
    orders_1.o_totalprice, 
    orders_1.o_totalprice, 
    orders_1.o_clerk, 
    orders_1.o_orderkey, 
    orders_1.o_orderstatus, 
    orders_1.o_shippriority
  from 
    orders as orders_1
  where orders_1.o_orderdate is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    orders_1.o_orderkey, 
    orders_1.o_orderstatus
  from 
    orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
  where orders_1.o_orderkey >= region_1.r_regionkey
  limit 11)
EXCEPT
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 2)
UNION
(select  
    lineitem_1.l_shipmode
  from 
    lineitem as lineitem_1
  where lineitem_1.l_quantity is not NULL
  limit 9);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_name, 
    customer_1.c_nationkey, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment
  from 
    partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
  where customer_1.c_mktsegment is not NULL
  limit 38)
UNION
(select  
    orders_2.o_comment, 
    orders_2.o_custkey, 
    orders_2.o_orderkey, 
    orders_1.o_comment
  from 
    orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
  where orders_1.o_totalprice <= orders_2.o_totalprice
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_size, 
    part_1.p_type, 
    part_1.p_container, 
    part_1.p_comment, 
    part_1.p_retailprice, 
    part_1.p_brand, 
    part_1.p_mfgr, 
    part_1.p_partkey, 
    part_1.p_name
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 10)
EXCEPT
(select  
    customer_1.c_nationkey, 
    customer_1.c_address, 
    customer_1.c_mktsegment, 
    customer_1.c_comment, 
    customer_1.c_acctbal, 
    customer_1.c_phone, 
    customer_1.c_phone, 
    customer_1.c_custkey, 
    customer_1.c_name
  from 
    customer as customer_1
  where customer_1.c_comment is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_comment, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_suppkey is not NULL
  limit 7)
UNION
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_discount, 
    lineitem_1.l_partkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_linenumber = lineitem_1.l_orderkey
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_address, 
    supplier_1.s_acctbal, 
    supplier_1.s_suppkey, 
    supplier_1.s_nationkey, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 21)
EXCEPT
(select  
    part_1.p_container, 
    part_1.p_brand, 
    part_1.p_name, 
    part_1.p_retailprice, 
    part_1.p_size, 
    part_1.p_partkey, 
    part_1.p_comment
  from 
    part as part_1
  where part_1.p_retailprice is not NULL
  limit 21);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_container, 
    part_1.p_brand, 
    part_1.p_retailprice, 
    part_1.p_size, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_brand is not NULL
  limit 28)
UNION
(select  
    orders_1.o_clerk, 
    orders_1.o_orderpriority, 
    orders_1.o_totalprice, 
    nation_1.n_regionkey, 
    nation_1.n_nationkey
  from 
    orders as orders_1
        inner join supplier as supplier_1
          inner join nation as nation_1
          on (supplier_1.s_suppkey = nation_1.n_nationkey )
        on (orders_1.o_orderkey = supplier_1.s_suppkey )
      inner join supplier as supplier_2
      on (orders_1.o_orderkey = supplier_2.s_suppkey )
  where supplier_1.s_address is not NULL
  limit 21);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 30)
UNION
(select  
    lineitem_1.l_linestatus
  from 
    orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
  where orders_1.o_shippriority is not NULL
  limit 9);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_comment, 
    partsupp_1.ps_suppkey, 
    customer_1.c_phone, 
    customer_1.c_name, 
    partsupp_1.ps_supplycost, 
    customer_1.c_mktsegment, 
    customer_1.c_acctbal
  from 
    customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_supplycost < customer_1.c_acctbal
  limit 21)
UNION
(select  
    part_1.p_type, 
    part_1.p_partkey, 
    part_1.p_container, 
    part_1.p_name, 
    part_1.p_retailprice, 
    part_1.p_brand, 
    part_1.p_retailprice
  from 
    part as part_1
  where part_1.p_comment is not NULL
  limit 1);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
  where supplier_2.s_comment is not NULL
  limit 24)
UNION
(select  
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_orderpriority is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name
  from 
    nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
  where nation_1.n_nationkey is not NULL
  limit 9)
UNION
(select  
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_mfgr <= part_1.p_brand
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name < region_1.r_name
  limit 11)
EXCEPT
(select  
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_partkey is not NULL
  limit 10);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_partkey is not NULL
  limit 21)
EXCEPT
(select  
    customer_1.c_nationkey
  from 
    customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
  where customer_2.c_comment is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_clerk, 
    orders_1.o_orderstatus, 
    orders_1.o_comment, 
    orders_1.o_orderpriority
  from 
    orders as orders_1
  where orders_1.o_orderstatus is not NULL
  limit 5)
UNION
(select  
    nation_1.n_name, 
    nation_1.n_name, 
    nation_1.n_comment, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 19)
EXCEPT
(select  
    part_1.p_partkey, 
    part_1.p_mfgr, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_partkey >= part_1.p_size
  limit 23);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost is not NULL
  limit 11)
UNION
(select  
    customer_1.c_acctbal, 
    customer_1.c_comment, 
    partsupp_2.ps_suppkey
  from 
    partsupp as partsupp_2
      inner join customer as customer_1
      on (partsupp_2.ps_partkey = customer_1.c_custkey )
  where partsupp_2.ps_partkey < customer_1.c_custkey
  limit 23);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_container, 
    part_1.p_name, 
    part_1.p_partkey, 
    region_1.r_comment
  from 
    region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
  where region_1.r_regionkey is not NULL
  limit 27)
EXCEPT
(select  
    orders_1.o_clerk, 
    orders_1.o_comment, 
    orders_1.o_custkey, 
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_custkey is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_linenumber, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_commitdate, 
    lineitem_1.l_quantity, 
    lineitem_1.l_tax, 
    lineitem_1.l_partkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct is not NULL
  limit 40)
UNION
(select  
    orders_1.o_shippriority, 
    orders_1.o_orderpriority, 
    orders_1.o_orderdate, 
    orders_1.o_totalprice, 
    orders_1.o_totalprice, 
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_clerk = orders_1.o_orderstatus
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 34)
UNION
(select  
    lineitem_1.l_extendedprice
  from 
    lineitem as lineitem_1
  where lineitem_1.l_quantity is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_totalprice >= orders_1.o_totalprice
  limit 27)
EXCEPT
(select  
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 10);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_comment is not NULL
  limit 11)
UNION
(select  
    supplier_1.s_acctbal, 
    customer_1.c_custkey
  from 
    supplier as supplier_1
      inner join region as region_1
        inner join customer as customer_1
        on (region_1.r_regionkey = customer_1.c_custkey )
      on (supplier_1.s_suppkey = customer_1.c_custkey )
  where supplier_1.s_suppkey is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_custkey, 
    orders_1.o_orderstatus, 
    orders_1.o_orderkey, 
    orders_1.o_clerk, 
    orders_1.o_comment, 
    orders_1.o_totalprice
  from 
    orders as orders_1
  where orders_1.o_shippriority is not NULL
  limit 23)
EXCEPT
(select  
    region_1.r_regionkey, 
    region_1.r_name, 
    partsupp_1.ps_partkey, 
    region_1.r_name, 
    region_1.r_comment, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
  where partsupp_1.ps_comment is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 12)
EXCEPT
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderpriority, 
    orders_1.o_orderkey, 
    orders_1.o_comment, 
    orders_1.o_orderdate, 
    orders_1.o_orderstatus
  from 
    orders as orders_1
  where orders_1.o_orderdate is not NULL
  limit 1)
EXCEPT
(select  
    lineitem_1.l_returnflag, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipdate, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_linenumber is not NULL
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_name, 
    supplier_1.s_comment, 
    supplier_1.s_suppkey, 
    supplier_1.s_address, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 33)
UNION
(select  
    customer_1.c_mktsegment, 
    customer_1.c_address, 
    customer_1.c_nationkey, 
    customer_1.c_comment, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_acctbal = customer_1.c_acctbal
  limit 27);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  orders_1.o_custkey, 
  part_1.p_type, 
  part_1.p_mfgr
from 
  part as part_1
    inner join orders as orders_1
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_custkey = part_1.p_size
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_custkey <= customer_1.c_nationkey
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_clerk is not NULL
  limit 1)
EXCEPT
(select  
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_comment, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal > supplier_1.s_acctbal
  limit 23)
UNION
(select  
    nation_1.n_nationkey, 
    nation_1.n_comment, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_comment is not NULL
  limit 1)
UNION
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey = region_1.r_regionkey
  limit 1);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_comment
  from 
    customer as customer_1
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
  where customer_1.c_custkey is not NULL
  limit 4)
EXCEPT
(select  
    part_2.p_comment
  from 
    supplier as supplier_1
      inner join part as part_2
      on (supplier_1.s_suppkey = part_2.p_partkey )
  where part_2.p_retailprice <= supplier_1.s_acctbal
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment, 
    nation_1.n_regionkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_name < nation_1.n_name
  limit 42)
EXCEPT
(select  
    nation_2.n_comment, 
    nation_2.n_regionkey, 
    nation_2.n_name
  from 
    nation as nation_2
  where nation_2.n_nationkey is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_comment, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_partkey < partsupp_1.ps_suppkey
  limit 11)
UNION
(select  
    supplier_1.s_comment, 
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
  where supplier_1.s_phone < supplier_1.s_name
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost is not NULL
  limit 38)
EXCEPT
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_name < nation_1.n_name
  limit 3);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_address, 
    supplier_1.s_nationkey, 
    supplier_1.s_comment, 
    supplier_1.s_suppkey, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 11)
EXCEPT
(select  
    lineitem_1.l_discount, 
    lineitem_1.l_comment, 
    lineitem_1.l_partkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_partkey is not NULL
  limit 37);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_phone, 
    customer_1.c_name, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 42)
EXCEPT
(select  
    region_1.r_name, 
    partsupp_1.ps_comment, 
    partsupp_2.ps_partkey
  from 
    partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
  where region_1.r_comment is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_partkey, 
    part_1.p_brand
  from 
    part as part_1
  where part_1.p_retailprice is not NULL
  limit 9)
EXCEPT
(select  
    nation_1.n_regionkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_name = nation_1.n_name
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_type, 
    part_1.p_name, 
    part_1.p_mfgr, 
    part_1.p_retailprice
  from 
    part as part_1
  where part_1.p_brand = part_1.p_container
  limit 5)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_tax
  from 
    lineitem as lineitem_1
  where lineitem_1.l_receiptdate is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_mfgr, 
    part_1.p_name, 
    part_1.p_partkey, 
    part_1.p_brand, 
    part_1.p_size, 
    part_1.p_comment
  from 
    part as part_1
  where part_1.p_retailprice is not NULL
  limit 35)
UNION
(select  
    part_2.p_brand, 
    part_2.p_type, 
    part_2.p_size, 
    part_2.p_container, 
    part_2.p_partkey, 
    part_2.p_comment
  from 
    part as part_2
  where part_2.p_size > part_2.p_partkey
  limit 19);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_availqty, 
    partsupp_2.ps_supplycost
  from 
    nation as nation_1
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
  where partsupp_2.ps_supplycost > partsupp_1.ps_supplycost
  limit 9)
EXCEPT
(select  
    part_1.p_retailprice, 
    part_1.p_size, 
    partsupp_3.ps_partkey, 
    partsupp_3.ps_supplycost
  from 
    part as part_1
      inner join partsupp as partsupp_3
      on (part_1.p_partkey = partsupp_3.ps_partkey )
  where part_1.p_retailprice = partsupp_3.ps_supplycost
  limit 6);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 20)
EXCEPT
(select  
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_acctbal = customer_1.c_acctbal
  limit 28);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_2.s_comment
  from 
    supplier as supplier_1
      inner join nation as nation_1
        inner join supplier as supplier_2
        on (nation_1.n_nationkey = supplier_2.s_suppkey )
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
  where supplier_1.s_address is not NULL
  limit 13)
UNION
(select  
    supplier_3.s_comment
  from 
    supplier as supplier_3
      inner join supplier as supplier_4
      on (supplier_3.s_suppkey = supplier_4.s_suppkey )
  where supplier_3.s_suppkey is not NULL
  limit 25);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_shippriority
  from 
    supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
  where orders_1.o_orderdate is not NULL
  limit 9)
EXCEPT
(select  
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
        inner join orders as orders_2
        on (partsupp_1.ps_partkey = orders_2.o_orderkey )
      inner join partsupp as partsupp_2
      on (orders_2.o_orderkey = partsupp_2.ps_partkey )
  where partsupp_2.ps_comment is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_name, 
    supplier_1.s_comment, 
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 21)
UNION
(select  
    customer_1.c_phone, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
  where customer_1.c_comment is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_size, 
    part_1.p_mfgr, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_name is not NULL
  limit 4)
EXCEPT
(select  
    customer_1.c_nationkey, 
    customer_1.c_phone, 
    customer_1.c_name
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderstatus, 
    orders_1.o_comment, 
    orders_1.o_orderpriority, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_orderkey is not NULL
  limit 7)
UNION
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_name, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 26);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_phone, 
    customer_1.c_name
  from 
    customer as customer_1
  where customer_1.c_nationkey is not NULL
  limit 20)
UNION
(select  
    lineitem_1.l_linestatus, 
    customer_2.c_comment
  from 
    lineitem as lineitem_1
      inner join customer as customer_2
      on (lineitem_1.l_orderkey = customer_2.c_custkey )
  where customer_2.c_acctbal is not NULL
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_name < supplier_1.s_phone
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name
  from 
    region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
  where lineitem_1.l_linestatus is not NULL
  limit 5)
EXCEPT
(select  
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_nationkey <= customer_1.c_custkey
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_regionkey, 
    nation_1.n_name, 
    nation_1.n_nationkey, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 23)
UNION
(select  
    orders_1.o_orderkey, 
    orders_1.o_orderstatus, 
    orders_1.o_custkey, 
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_comment is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_name, 
    supplier_1.s_address, 
    supplier_1.s_nationkey, 
    supplier_1.s_phone, 
    supplier_1.s_suppkey, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey < supplier_1.s_suppkey
  limit 18)
EXCEPT
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_regionkey, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_linenumber, 
    lineitem_1.l_tax, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_discount, 
    lineitem_1.l_receiptdate, 
    lineitem_1.l_partkey, 
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_discount is not NULL
  limit 8)
EXCEPT
(select  
    orders_1.o_custkey, 
    orders_1.o_totalprice, 
    orders_1.o_orderpriority, 
    orders_1.o_totalprice, 
    orders_1.o_orderdate, 
    orders_1.o_orderkey, 
    orders_1.o_shippriority
  from 
    orders as orders_1
  where orders_1.o_totalprice is not NULL
  limit 9);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_name, 
    customer_1.c_comment, 
    customer_1.c_custkey, 
    customer_1.c_nationkey
  from 
    customer as customer_1
  where customer_1.c_acctbal >= customer_1.c_acctbal
  limit 37)
UNION
(select  
    supplier_1.s_address, 
    part_1.p_name, 
    part_1.p_size, 
    supplier_1.s_suppkey
  from 
    part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
  where part_1.p_name is not NULL
  limit 35);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 8)
UNION
(select  
    nation_2.n_name, 
    supplier_1.s_address
  from 
    customer as customer_1
        inner join supplier as supplier_1
        on (customer_1.c_custkey = supplier_1.s_suppkey )
      inner join nation as nation_2
      on (supplier_1.s_suppkey = nation_2.n_nationkey )
  where nation_2.n_name is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_phone, 
    customer_1.c_nationkey, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 17)
UNION
(select  
    customer_2.c_mktsegment, 
    customer_2.c_nationkey, 
    customer_2.c_custkey
  from 
    customer as customer_2
  where customer_2.c_mktsegment is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderpriority, 
    orders_1.o_orderstatus
  from 
    orders as orders_1
  where orders_1.o_clerk is not NULL
  limit 14)
EXCEPT
(select  
    customer_1.c_mktsegment, 
    customer_1.c_phone
  from 
    customer as customer_1
  where customer_1.c_nationkey is not NULL
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  customer_1.c_mktsegment, 
  partsupp_1.ps_availqty, 
  customer_1.c_nationkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_name is not NULL
limit 17;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_address, 
    customer_1.c_comment, 
    customer_1.c_mktsegment, 
    customer_1.c_name, 
    customer_1.c_acctbal, 
    customer_1.c_custkey, 
    customer_1.c_phone, 
    customer_1.c_nationkey
  from 
    customer as customer_1
  where customer_1.c_mktsegment is not NULL
  limit 2)
EXCEPT
(select  
    orders_1.o_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipinstruct, 
    orders_2.o_comment, 
    lineitem_1.l_tax, 
    orders_1.o_orderkey, 
    orders_2.o_orderstatus, 
    lineitem_1.l_suppkey
  from 
    orders as orders_1
      inner join lineitem as lineitem_1
        inner join orders as orders_2
        on (lineitem_1.l_orderkey = orders_2.o_orderkey )
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
  where orders_1.o_orderdate = lineitem_1.l_shipdate
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_mktsegment, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_acctbal >= customer_1.c_acctbal
  limit 12)
EXCEPT
(select  
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_name <= region_1.r_name
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_comment, 
    customer_1.c_address, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 41)
UNION
(select  
    orders_1.o_comment, 
    orders_1.o_comment, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_totalprice is not NULL
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_custkey, 
    customer_1.c_acctbal, 
    customer_1.c_nationkey, 
    customer_1.c_address, 
    customer_1.c_name
  from 
    customer as customer_1
  where customer_1.c_address is not NULL
  limit 27)
EXCEPT
(select  
    partsupp_1.ps_partkey, 
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_comment is not NULL
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 32)
UNION
(select  
    customer_1.c_nationkey, 
    customer_1.c_phone
  from 
    customer as customer_1
  where customer_1.c_custkey > customer_1.c_nationkey
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_partkey, 
    part_1.p_retailprice, 
    part_1.p_type, 
    part_1.p_name, 
    part_1.p_container, 
    part_1.p_mfgr, 
    part_1.p_size
  from 
    part as part_1
  where part_1.p_mfgr is not NULL
  limit 31)
EXCEPT
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_name, 
    supplier_1.s_phone, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 27);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_availqty < partsupp_1.ps_partkey
  limit 35)
EXCEPT
(select  
    region_1.r_regionkey
  from 
    nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
  where nation_1.n_regionkey is not NULL
  limit 10);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_partkey, 
    partsupp_1.ps_comment
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_comment is not NULL
  limit 16)
EXCEPT
(select  
    orders_1.o_shippriority, 
    supplier_1.s_address
  from 
    orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_suppkey is not NULL
  limit 35);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 30)
EXCEPT
(select  
    lineitem_1.l_suppkey, 
    customer_1.c_address, 
    customer_1.c_name, 
    customer_1.c_acctbal
  from 
    nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_nationkey = customer_1.c_custkey )
      inner join lineitem as lineitem_1
        inner join supplier as supplier_2
        on (lineitem_1.l_orderkey = supplier_2.s_suppkey )
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
  where supplier_2.s_address is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_comment, 
    lineitem_1.l_shipmode, 
    nation_1.n_regionkey, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_partkey, 
    lineitem_1.l_comment
  from 
    nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
  where lineitem_1.l_linenumber is not NULL
  limit 4)
UNION
(select  
    nation_2.n_comment, 
    nation_2.n_name, 
    nation_2.n_regionkey, 
    nation_2.n_nationkey, 
    nation_2.n_nationkey, 
    nation_2.n_comment
  from 
    nation as nation_2
  where nation_2.n_name < nation_2.n_name
  limit 14);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 27)
EXCEPT
(select  
    customer_1.c_mktsegment, 
    customer_1.c_address
  from 
    customer as customer_1
        inner join nation as nation_1
        on (customer_1.c_custkey = nation_1.n_nationkey )
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
  where nation_1.n_name is not NULL
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_suppkey, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey < supplier_1.s_nationkey
  limit 11)
EXCEPT
(select  
    customer_1.c_acctbal, 
    partsupp_1.ps_comment, 
    customer_1.c_name, 
    partsupp_1.ps_suppkey, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
  where customer_1.c_acctbal is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_comment, 
    nation_1.n_name, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 13)
EXCEPT
(select  
    region_1.r_comment, 
    region_1.r_name, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name > region_1.r_name
  limit 11);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_comment, 
    nation_1.n_nationkey, 
    partsupp_1.ps_comment
  from 
    nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
  where nation_1.n_name is not NULL
  limit 31)
UNION
(select  
    nation_2.n_comment, 
    nation_2.n_nationkey, 
    nation_2.n_comment
  from 
    nation as nation_2
  where nation_2.n_name is not NULL
  limit 4);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_receiptdate, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_discount, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_extendedprice
  from 
    lineitem as lineitem_1
  where lineitem_1.l_discount is not NULL
  limit 23)
EXCEPT
(select  
    orders_1.o_orderdate, 
    orders_1.o_clerk, 
    supplier_1.s_nationkey, 
    supplier_2.s_acctbal, 
    region_1.r_regionkey, 
    supplier_1.s_acctbal
  from 
    orders as orders_1
          inner join supplier as supplier_1
          on (orders_1.o_orderkey = supplier_1.s_suppkey )
        inner join region as region_1
        on (orders_1.o_orderkey = region_1.r_regionkey )
      inner join customer as customer_1
        inner join supplier as supplier_2
        on (customer_1.c_custkey = supplier_2.s_suppkey )
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
  where supplier_2.s_acctbal > customer_1.c_acctbal
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_partkey, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_suppkey is not NULL
  limit 33)
UNION
(select  
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 40);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_orderkey
  from 
    part as part_1
      inner join lineitem as lineitem_1
        inner join partsupp as partsupp_1
        on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
      on (part_1.p_partkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_availqty is not NULL
  limit 32)
UNION
(select  
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_orderpriority is not NULL
  limit 15);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_nationkey, 
    region_1.r_regionkey
  from 
    nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
  where nation_1.n_name is not NULL
  limit 24)
UNION
(select  
    region_2.r_regionkey, 
    region_2.r_regionkey
  from 
    region as region_2
  where region_2.r_regionkey is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_nationkey, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_partkey
  from 
    nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_availqty > nation_1.n_nationkey
  limit 32)
EXCEPT
(select  
    partsupp_2.ps_suppkey, 
    partsupp_2.ps_comment, 
    partsupp_2.ps_availqty
  from 
    partsupp as partsupp_2
  where partsupp_2.ps_suppkey is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 13)
UNION
(select  
    nation_1.n_name, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_name is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_quantity, 
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_linenumber > lineitem_1.l_suppkey
  limit 7)
UNION
(select  
    orders_1.o_totalprice, 
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_comment is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_comment, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_regionkey >= nation_1.n_nationkey
  limit 26)
UNION
(select  
    orders_1.o_comment, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_clerk > orders_1.o_orderpriority
  limit 4);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_linenumber
  from 
    lineitem as lineitem_1
  where lineitem_1.l_tax <= lineitem_1.l_extendedprice
  limit 38)
EXCEPT
(select  
    orders_1.o_shippriority
  from 
    orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
  where orders_1.o_comment is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_comment, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 19)
UNION
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode
  from 
    region as region_2
      inner join lineitem as lineitem_1
      on (region_2.r_regionkey = lineitem_1.l_orderkey )
  where lineitem_1.l_shipdate >= lineitem_1.l_receiptdate
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_suppkey is not NULL
  limit 12)
UNION
(select  
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_regionkey = nation_1.n_nationkey
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_clerk
  from 
    orders as orders_1
  where orders_1.o_totalprice = orders_1.o_totalprice
  limit 39)
UNION
(select  
    customer_1.c_phone
  from 
    customer as customer_1
  where customer_1.c_acctbal is not NULL
  limit 9);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_address, 
    part_2.p_brand, 
    part_2.p_mfgr, 
    part_2.p_name, 
    part_1.p_name, 
    part_2.p_size, 
    part_1.p_mfgr, 
    customer_1.c_mktsegment, 
    part_1.p_container
  from 
    part as part_1
      inner join part as part_2
        inner join customer as customer_1
        on (part_2.p_partkey = customer_1.c_custkey )
      on (part_1.p_partkey = part_2.p_partkey )
  where part_1.p_partkey is not NULL
  limit 39)
EXCEPT
(select  
    region_1.r_comment, 
    region_1.r_name, 
    region_1.r_name, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_suppkey, 
    region_1.r_name, 
    region_1.r_name, 
    region_1.r_name
  from 
    region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_comment is not NULL
  limit 4);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_custkey, 
    customer_1.c_phone, 
    customer_1.c_comment, 
    customer_1.c_address, 
    customer_1.c_mktsegment, 
    customer_1.c_name
  from 
    customer as customer_1
  where customer_1.c_comment is not NULL
  limit 5)
EXCEPT
(select  
    lineitem_1.l_linenumber, 
    supplier_1.s_phone, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_name, 
    lineitem_1.l_comment
  from 
    supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
  where lineitem_1.l_shipinstruct is not NULL
  limit 4);
-- meta {"num_joins":7,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_comment, 
    region_1.r_name
  from 
    lineitem as lineitem_1
        inner join region as region_1
        on (lineitem_1.l_orderkey = region_1.r_regionkey )
      inner join supplier as supplier_1
        inner join partsupp as partsupp_1
          inner join supplier as supplier_2
          on (partsupp_1.ps_partkey = supplier_2.s_suppkey )
        on (supplier_1.s_suppkey = supplier_2.s_suppkey )
      on (region_1.r_regionkey = supplier_2.s_suppkey )
  where supplier_2.s_name is not NULL
  limit 21)
UNION
(select  
    customer_1.c_name, 
    customer_1.c_phone
  from 
    customer as customer_1
      inner join partsupp as partsupp_2
        inner join region as region_2
          inner join customer as customer_2
          on (region_2.r_regionkey = customer_2.c_custkey )
        on (partsupp_2.ps_partkey = region_2.r_regionkey )
      on (customer_1.c_custkey = region_2.r_regionkey )
  where customer_1.c_nationkey is not NULL
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_name, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 23)
EXCEPT
(select  
    part_1.p_mfgr, 
    part_1.p_size
  from 
    partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
  where part_1.p_container >= part_1.p_brand
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_container
from 
  part as part_1
where part_1.p_brand is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_acctbal
  from 
    customer as customer_1
  where customer_1.c_custkey is not NULL
  limit 2)
UNION
(select  
    customer_2.c_acctbal
  from 
    customer as customer_2
  where customer_2.c_nationkey is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  orders_1.o_totalprice, 
  customer_1.c_comment, 
  orders_1.o_custkey, 
  customer_1.c_address
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_nationkey, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 4)
EXCEPT
(select  
    region_1.r_regionkey, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 30;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name, 
    region_1.r_comment, 
    partsupp_1.ps_comment, 
    region_1.r_regionkey, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
  where region_1.r_name = region_1.r_name
  limit 42)
EXCEPT
(select  
    lineitem_1.l_returnflag, 
    lineitem_1.l_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_partkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_orderkey < lineitem_1.l_suppkey
  limit 36);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_address, 
    nation_1.n_nationkey, 
    nation_1.n_regionkey
  from 
    nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
  where nation_1.n_nationkey is not NULL
  limit 22)
UNION
(select  
    orders_1.o_comment, 
    orders_1.o_custkey, 
    orders_1.o_shippriority
  from 
    orders as orders_1
  where orders_1.o_clerk is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 31)
EXCEPT
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_name, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 34)
UNION
(select  
    orders_1.o_shippriority, 
    orders_1.o_comment, 
    orders_1.o_totalprice
  from 
    orders as orders_1
  where orders_1.o_orderpriority < orders_1.o_orderstatus
  limit 37);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_phone, 
    customer_1.c_acctbal
  from 
    customer as customer_1
  where customer_1.c_phone is not NULL
  limit 9)
UNION
(select  
    part_1.p_container, 
    part_1.p_retailprice
  from 
    part as part_1
  where part_1.p_container is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_phone, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 19)
EXCEPT
(select  
    lineitem_1.l_shipmode, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_comment
  from 
    customer as customer_1
  where customer_1.c_acctbal <= customer_1.c_acctbal
  limit 42)
UNION
(select  
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey, 
    region_1.r_comment, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 1)
UNION
(select  
    lineitem_1.l_suppkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode
  from 
    partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
  where lineitem_1.l_discount is not NULL
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 29)
EXCEPT
(select  
    supplier_1.s_suppkey, 
    lineitem_1.l_partkey, 
    lineitem_1.l_comment
  from 
    supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
  where lineitem_1.l_receiptdate is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_phone, 
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 22)
EXCEPT
(select  
    lineitem_1.l_orderkey, 
    region_1.r_name, 
    region_1.r_regionkey
  from 
    region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
  where lineitem_1.l_orderkey >= lineitem_1.l_suppkey
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name
  from 
    region as region_1
  where region_1.r_regionkey <= region_1.r_regionkey
  limit 32)
EXCEPT
(select  
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_nationkey = customer_1.c_custkey
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_shippriority, 
    orders_1.o_orderpriority, 
    customer_1.c_name, 
    orders_1.o_comment, 
    orders_1.o_orderstatus, 
    customer_1.c_mktsegment, 
    customer_1.c_custkey
  from 
    orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
  where customer_1.c_phone is not NULL
  limit 11)
UNION
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_phone, 
    supplier_1.s_comment, 
    supplier_1.s_address, 
    supplier_1.s_name, 
    supplier_1.s_phone, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 27);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    region_1.r_regionkey, 
    lineitem_1.l_suppkey, 
    region_1.r_comment
  from 
    lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
  where lineitem_1.l_commitdate <= lineitem_1.l_receiptdate
  limit 6)
EXCEPT
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 12);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_phone, 
  customer_2.c_address, 
  region_1.r_regionkey, 
  customer_2.c_phone, 
  supplier_1.s_comment, 
  customer_2.c_acctbal, 
  lineitem_1.l_receiptdate, 
  supplier_1.s_nationkey, 
  customer_1.c_phone, 
  lineitem_1.l_discount, 
  customer_1.c_nationkey
from 
  customer as customer_1
      inner join customer as customer_2
        inner join supplier as supplier_1
        on (customer_2.c_custkey = supplier_1.s_suppkey )
      on (customer_1.c_custkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (customer_1.c_custkey = region_1.r_regionkey )
where region_1.r_regionkey > lineitem_1.l_suppkey
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct < lineitem_1.l_linestatus
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_nationkey, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 40)
UNION
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_comment, 
    customer_1.c_acctbal, 
    customer_1.c_name, 
    customer_1.c_phone, 
    customer_1.c_nationkey, 
    customer_1.c_address, 
    customer_1.c_custkey, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_address is not NULL
  limit 42)
EXCEPT
(select  
    supplier_1.s_comment, 
    supplier_1.s_acctbal, 
    supplier_1.s_address, 
    supplier_1.s_phone, 
    supplier_1.s_suppkey, 
    supplier_1.s_comment, 
    supplier_1.s_nationkey, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_phone >= supplier_1.s_name
  limit 31);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_2.n_regionkey
  from 
    partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
  where nation_1.n_comment is not NULL
  limit 37)
UNION
(select  
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_custkey is not NULL
  limit 17);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 12)
EXCEPT
(select  
    part_1.p_mfgr, 
    part_1.p_name
  from 
    partsupp as partsupp_1
      inner join lineitem as lineitem_1
        inner join part as part_1
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      on (partsupp_1.ps_partkey = part_1.p_partkey )
  where lineitem_1.l_receiptdate >= lineitem_1.l_commitdate
  limit 35);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 36)
EXCEPT
(select  
    lineitem_1.l_linestatus, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_partkey is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey > region_1.r_regionkey
  limit 24)
EXCEPT
(select  
    lineitem_1.l_shipmode, 
    lineitem_1.l_comment, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_suppkey is not NULL
  limit 29);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_phone, 
    supplier_1.s_name, 
    supplier_1.s_acctbal, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
  where supplier_1.s_address is not NULL
  limit 29)
EXCEPT
(select  
    orders_1.o_clerk, 
    supplier_2.s_name, 
    orders_1.o_totalprice, 
    supplier_2.s_phone
  from 
    supplier as supplier_2
      inner join orders as orders_1
      on (supplier_2.s_suppkey = orders_1.o_orderkey )
  where supplier_2.s_name is not NULL
  limit 22);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_shippriority, 
    orders_1.o_orderkey, 
    supplier_1.s_name, 
    orders_1.o_comment, 
    customer_1.c_comment
  from 
    customer as customer_1
      inner join supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_suppkey = orders_1.o_orderkey )
      on (customer_1.c_custkey = orders_1.o_orderkey )
  where orders_1.o_orderdate >= orders_1.o_orderdate
  limit 8)
UNION
(select  
    lineitem_1.l_orderkey, 
    lineitem_1.l_partkey, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_comment, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost is not NULL
  limit 19)
UNION
(select  
    region_1.r_regionkey, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_address, 
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 14)
EXCEPT
(select  
    supplier_2.s_comment, 
    supplier_2.s_phone, 
    supplier_2.s_name, 
    supplier_2.s_nationkey, 
    supplier_2.s_suppkey, 
    supplier_2.s_acctbal
  from 
    supplier as supplier_2
  where supplier_2.s_suppkey is not NULL
  limit 1);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_nationkey, 
    nation_1.n_comment, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
  where nation_1.n_nationkey is not NULL
  limit 38)
EXCEPT
(select  
    lineitem_1.l_orderkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_partkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_discount is not NULL
  limit 9);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_type is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_phone, 
    supplier_1.s_address, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 30)
EXCEPT
(select  
    supplier_2.s_phone, 
    supplier_2.s_comment, 
    supplier_2.s_suppkey
  from 
    supplier as supplier_2
  where supplier_2.s_suppkey is not NULL
  limit 41);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipdate, 
  region_1.r_name, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where lineitem_1.l_quantity is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 4;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  nation_2.n_regionkey
from 
  nation as nation_1
    inner join partsupp as partsupp_1
        inner join nation as nation_2
        on (partsupp_1.ps_partkey = nation_2.n_nationkey )
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where partsupp_1.ps_availqty is not NULL
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_container, 
    part_1.p_partkey, 
    part_1.p_comment, 
    part_1.p_brand
  from 
    part as part_1
  where part_1.p_brand is not NULL
  limit 17)
UNION
(select  
    part_2.p_mfgr, 
    part_2.p_size, 
    partsupp_1.ps_comment, 
    part_2.p_container
  from 
    partsupp as partsupp_1
      inner join part as part_2
      on (partsupp_1.ps_partkey = part_2.p_partkey )
  where part_2.p_partkey is not NULL
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 10)
EXCEPT
(select  
    nation_1.n_regionkey, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_supplycost, 
    nation_1.n_name
  from 
    partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
  where nation_1.n_nationkey is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_suppkey is not NULL
  limit 21)
EXCEPT
(select  
    orders_1.o_totalprice, 
    orders_1.o_custkey, 
    orders_1.o_shippriority, 
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_orderstatus is not NULL
  limit 29);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_type, 
  orders_1.o_custkey, 
  part_1.p_size
from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_shippriority is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderpriority
  from 
    orders as orders_1
  where orders_1.o_orderdate is not NULL
  limit 39)
EXCEPT
(select  
    nation_1.n_name
  from 
    nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
  where nation_1.n_nationkey is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 42;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name
  from 
    region as region_1
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
  where region_2.r_name is not NULL
  limit 19)
UNION
(select  
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 38)
UNION
(select  
    lineitem_1.l_linestatus, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_commitdate < lineitem_1.l_shipdate
  limit 30);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_2.c_nationkey
  from 
    customer as customer_1
      inner join customer as customer_2
          inner join partsupp as partsupp_1
          on (customer_2.c_custkey = partsupp_1.ps_partkey )
        inner join part as part_1
          inner join partsupp as partsupp_2
          on (part_1.p_partkey = partsupp_2.ps_partkey )
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      on (customer_1.c_custkey = partsupp_2.ps_partkey )
  where customer_1.c_nationkey is not NULL
  limit 40)
UNION
(select  
    nation_1.n_regionkey
  from 
    region as region_1
      inner join nation as nation_1
      on (region_1.r_regionkey = nation_1.n_nationkey )
  where nation_1.n_regionkey is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_regionkey > nation_1.n_nationkey
  limit 12)
UNION
(select  
    lineitem_2.l_partkey, 
    lineitem_2.l_linenumber
  from 
    lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
  where lineitem_1.l_suppkey is not NULL
  limit 14);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_name, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 40)
EXCEPT
(select  
    part_2.p_mfgr, 
    part_2.p_partkey
  from 
    part as part_1
        inner join part as part_2
        on (part_1.p_partkey = part_2.p_partkey )
      inner join region as region_1
      on (part_2.p_partkey = region_1.r_regionkey )
  where region_1.r_comment is not NULL
  limit 9);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_container
  from 
    orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      inner join nation as nation_1
        inner join region as region_1
          inner join supplier as supplier_1
            inner join part as part_1
            on (supplier_1.s_suppkey = part_1.p_partkey )
          on (region_1.r_regionkey = supplier_1.s_suppkey )
        on (nation_1.n_nationkey = supplier_1.s_suppkey )
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_comment is not NULL
  limit 30)
UNION
(select  
    supplier_2.s_phone
  from 
    supplier as supplier_2
  where supplier_2.s_acctbal is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_partkey, 
    part_1.p_name, 
    part_1.p_size, 
    part_1.p_retailprice, 
    part_1.p_comment, 
    part_1.p_brand, 
    part_1.p_type, 
    part_1.p_mfgr
  from 
    part as part_1
  where part_1.p_retailprice is not NULL
  limit 14)
UNION
(select  
    lineitem_1.l_partkey, 
    supplier_1.s_address, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_tax, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode, 
    supplier_1.s_comment, 
    lineitem_1.l_linestatus
  from 
    lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
  where lineitem_1.l_receiptdate is not NULL
  limit 30);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name, 
    region_1.r_regionkey, 
    region_1.r_comment, 
    customer_1.c_acctbal
  from 
    region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
  where region_1.r_name is not NULL
  limit 28)
UNION
(select  
    customer_2.c_mktsegment, 
    customer_2.c_custkey, 
    customer_2.c_name, 
    customer_2.c_acctbal
  from 
    customer as customer_2
  where customer_2.c_phone is not NULL
  limit 36);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_phone, 
    supplier_1.s_comment, 
    supplier_1.s_address, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 39)
UNION
(select  
    part_1.p_partkey, 
    part_1.p_mfgr, 
    part_1.p_comment, 
    part_1.p_type, 
    part_1.p_size
  from 
    part as part_1
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
  where part_1.p_retailprice is not NULL
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_comment, 
    part_1.p_partkey, 
    nation_1.n_nationkey, 
    part_1.p_type, 
    part_1.p_container, 
    part_1.p_brand, 
    nation_1.n_comment, 
    part_1.p_name, 
    part_1.p_size
  from 
    nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
  where part_1.p_partkey >= part_1.p_size
  limit 27)
UNION
(select  
    supplier_1.s_comment, 
    supplier_1.s_suppkey, 
    supplier_1.s_nationkey, 
    supplier_1.s_address, 
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_address, 
    supplier_1.s_address, 
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_size, 
    part_1.p_name, 
    part_1.p_type, 
    part_1.p_retailprice, 
    part_1.p_mfgr, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_size is not NULL
  limit 7)
UNION
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal, 
    supplier_1.s_name, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_suppkey, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_name is not NULL
  limit 31)
EXCEPT
(select  
    lineitem_1.l_extendedprice, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct < lineitem_1.l_returnflag
  limit 11);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_acctbal, 
    customer_1.c_nationkey, 
    customer_1.c_custkey, 
    region_1.r_comment
  from 
    region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
  where region_1.r_regionkey < customer_1.c_custkey
  limit 4)
EXCEPT
(select  
    lineitem_1.l_discount, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_suppkey is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_comment, 
  lineitem_1.l_quantity, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_mfgr, 
    part_1.p_retailprice, 
    part_1.p_comment, 
    part_1.p_partkey, 
    part_1.p_name, 
    part_1.p_type, 
    part_1.p_size, 
    part_1.p_brand, 
    part_1.p_container
  from 
    part as part_1
  where part_1.p_brand is not NULL
  limit 33)
EXCEPT
(select  
    lineitem_1.l_returnflag, 
    lineitem_1.l_quantity, 
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_shipmode
  from 
    lineitem as lineitem_1
  where lineitem_1.l_receiptdate is not NULL
  limit 23);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_partkey, 
    lineitem_1.l_quantity
  from 
    supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
  where lineitem_1.l_linestatus is not NULL
  limit 17)
EXCEPT
(select  
    region_1.r_name, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
  where region_1.r_regionkey is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_suppkey, 
    customer_1.c_address, 
    partsupp_1.ps_partkey, 
    customer_1.c_mktsegment, 
    partsupp_1.ps_availqty, 
    customer_1.c_comment
  from 
    partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
  where customer_1.c_comment is not NULL
  limit 36)
EXCEPT
(select  
    orders_1.o_shippriority, 
    orders_1.o_comment, 
    orders_1.o_custkey, 
    orders_1.o_clerk, 
    orders_1.o_orderkey, 
    orders_1.o_comment
  from 
    orders as orders_1
  where orders_1.o_clerk is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_address, 
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 27)
UNION
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_partkey, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_quantity, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_orderkey is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_name, 
    part_1.p_size, 
    part_1.p_container
  from 
    part as part_1
  where part_1.p_retailprice > part_1.p_retailprice
  limit 28)
EXCEPT
(select  
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_mfgr, 
    part_1.p_partkey, 
    part_1.p_name, 
    part_1.p_comment, 
    part_1.p_size, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 35)
EXCEPT
(select  
    part_2.p_container, 
    part_2.p_size, 
    part_2.p_name, 
    part_2.p_type, 
    part_2.p_partkey, 
    part_2.p_comment
  from 
    part as part_2
  where part_2.p_brand is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_nationkey, 
    customer_1.c_acctbal, 
    customer_1.c_name, 
    customer_1.c_phone, 
    customer_1.c_mktsegment, 
    customer_1.c_custkey, 
    customer_1.c_comment, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_nationkey is not NULL
  limit 27)
UNION
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_acctbal, 
    supplier_1.s_comment, 
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_suppkey, 
    supplier_1.s_address, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal < supplier_1.s_acctbal
  limit 33);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_shippriority, 
    orders_1.o_custkey, 
    orders_1.o_orderpriority
  from 
    orders as orders_1
  where orders_1.o_clerk is not NULL
  limit 31)
EXCEPT
(select  
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_partkey, 
    orders_2.o_orderpriority
  from 
    partsupp as partsupp_1
      inner join orders as orders_2
      on (partsupp_1.ps_partkey = orders_2.o_orderkey )
  where orders_2.o_orderstatus is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 13)
UNION
(select  
    lineitem_1.l_shipmode, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_commitdate is not NULL
  limit 41);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_2.c_nationkey
from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join customer as customer_2
        inner join lineitem as lineitem_2
        on (customer_2.c_custkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_address is not NULL
limit 18;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_2.r_name, 
    region_1.r_name, 
    region_1.r_regionkey, 
    region_2.r_comment, 
    orders_1.o_comment, 
    orders_1.o_orderstatus
  from 
    region as region_1
        inner join orders as orders_1
        on (region_1.r_regionkey = orders_1.o_orderkey )
      inner join region as region_2
      on (orders_1.o_orderkey = region_2.r_regionkey )
  where region_2.r_name is not NULL
  limit 38)
EXCEPT
(select  
    orders_2.o_orderpriority, 
    orders_2.o_clerk, 
    orders_2.o_custkey, 
    orders_2.o_comment, 
    orders_2.o_comment, 
    orders_2.o_orderstatus
  from 
    orders as orders_2
  where orders_2.o_orderkey is not NULL
  limit 40);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_partkey is not NULL
  limit 38)
UNION
(select  
    orders_1.o_orderkey, 
    part_1.p_size, 
    orders_2.o_custkey, 
    customer_1.c_address, 
    part_1.p_retailprice
  from 
    part as part_1
        inner join customer as customer_1
        on (part_1.p_partkey = customer_1.c_custkey )
      inner join orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      on (part_1.p_partkey = orders_1.o_orderkey )
  where orders_2.o_totalprice = customer_1.c_acctbal
  limit 14);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  partsupp_1.ps_suppkey, 
  supplier_2.s_acctbal, 
  partsupp_1.ps_availqty, 
  part_1.p_comment, 
  supplier_1.s_nationkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
from 
  part as part_1
      inner join partsupp as partsupp_1
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    inner join supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where supplier_1.s_nationkey is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where region_1.r_comment is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 36;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  part_1.p_brand, 
  partsupp_1.ps_suppkey, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_comment, 
  partsupp_1.ps_comment
from 
  orders as orders_1
    inner join partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_regionkey < region_1.r_regionkey
  limit 17)
EXCEPT
(select  
    lineitem_1.l_partkey, 
    lineitem_1.l_returnflag
  from 
    lineitem as lineitem_1
  where lineitem_1.l_linenumber > lineitem_1.l_suppkey
  limit 22);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  nation_1.n_comment
from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax, 
  lineitem_1.l_comment, 
  lineitem_1.l_partkey, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag >= lineitem_1.l_shipmode
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus >= lineitem_1.l_shipinstruct
limit 9;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_partkey, 
    nation_1.n_comment, 
    part_1.p_comment, 
    part_1.p_brand, 
    nation_1.n_nationkey, 
    nation_1.n_regionkey
  from 
    nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
  where nation_1.n_comment is not NULL
  limit 22)
EXCEPT
(select  
    part_2.p_size, 
    part_2.p_name, 
    part_2.p_type, 
    part_2.p_brand, 
    part_2.p_partkey, 
    part_2.p_size
  from 
    part as part_2
  where part_2.p_mfgr is not NULL
  limit 42);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_name
  from 
    customer as customer_1
  where customer_1.c_phone is not NULL
  limit 4)
EXCEPT
(select  
    supplier_1.s_comment
  from 
    lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_phone is not NULL
  limit 11);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_2.l_linenumber, 
    lineitem_1.l_receiptdate, 
    customer_2.c_mktsegment, 
    lineitem_2.l_linestatus, 
    customer_2.c_nationkey, 
    customer_1.c_mktsegment, 
    customer_2.c_acctbal
  from 
    lineitem as lineitem_1
      inner join customer as customer_1
          inner join customer as customer_2
          on (customer_1.c_custkey = customer_2.c_custkey )
        inner join lineitem as lineitem_2
        on (customer_1.c_custkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = customer_2.c_custkey )
  where lineitem_1.l_discount >= lineitem_1.l_extendedprice
  limit 4)
EXCEPT
(select  
    lineitem_3.l_linenumber, 
    lineitem_3.l_commitdate, 
    lineitem_3.l_shipinstruct, 
    lineitem_3.l_linestatus, 
    lineitem_3.l_suppkey, 
    lineitem_3.l_returnflag, 
    lineitem_3.l_tax
  from 
    lineitem as lineitem_3
  where lineitem_3.l_receiptdate is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey = supplier_1.s_nationkey
  limit 6)
EXCEPT
(select  
    customer_1.c_acctbal, 
    customer_1.c_address
  from 
    customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_availqty is not NULL
  limit 3);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_comment, 
    region_1.r_name, 
    region_1.r_regionkey, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_suppkey = region_1.r_regionkey )
  where supplier_1.s_nationkey is not NULL
  limit 37)
UNION
(select  
    supplier_2.s_comment, 
    supplier_2.s_phone, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_comment
  from 
    supplier as supplier_2
      inner join partsupp as partsupp_1
      on (supplier_2.s_suppkey = partsupp_1.ps_partkey )
  where supplier_2.s_suppkey is not NULL
  limit 41);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey
from 
  orders as orders_1
    inner join orders as orders_2
      inner join nation as nation_1
      on (orders_2.o_orderkey = nation_1.n_nationkey )
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_2.o_clerk is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 32)
UNION
(select  
    customer_1.c_phone, 
    customer_1.c_address
  from 
    orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
  where orders_1.o_totalprice < customer_1.c_acctbal
  limit 18);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  partsupp_2.ps_comment, 
  part_2.p_name, 
  part_2.p_brand, 
  part_1.p_container, 
  partsupp_2.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_2.ps_partkey, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    inner join partsupp as partsupp_2
      inner join part as part_2
      on (partsupp_2.ps_partkey = part_2.p_partkey )
    on (part_1.p_partkey = part_2.p_partkey )
where partsupp_1.ps_comment is not NULL
limit 25;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_supplycost, 
    nation_1.n_name, 
    nation_1.n_comment, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
  where nation_1.n_name > nation_1.n_name
  limit 19)
EXCEPT
(select  
    customer_1.c_acctbal, 
    customer_1.c_phone, 
    customer_1.c_name, 
    customer_1.c_nationkey
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 35);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_tax, 
    supplier_1.s_nationkey, 
    lineitem_1.l_extendedprice, 
    lineitem_1.l_receiptdate, 
    lineitem_1.l_shipmode, 
    supplier_1.s_name, 
    supplier_1.s_comment, 
    supplier_1.s_address
  from 
    supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
  where lineitem_1.l_shipdate is not NULL
  limit 7)
UNION
(select  
    orders_1.o_totalprice, 
    orders_1.o_orderkey, 
    supplier_2.s_acctbal, 
    orders_1.o_orderdate, 
    orders_1.o_orderstatus, 
    supplier_2.s_phone, 
    supplier_2.s_address, 
    supplier_2.s_comment
  from 
    supplier as supplier_2
      inner join orders as orders_1
      on (supplier_2.s_suppkey = orders_1.o_orderkey )
  where supplier_2.s_suppkey is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_custkey, 
    customer_1.c_mktsegment, 
    customer_1.c_phone, 
    customer_1.c_name, 
    customer_1.c_acctbal
  from 
    customer as customer_1
  where customer_1.c_nationkey is not NULL
  limit 34)
EXCEPT
(select  
    lineitem_1.l_linenumber, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_comment, 
    lineitem_1.l_extendedprice
  from 
    lineitem as lineitem_1
  where lineitem_1.l_comment is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_partkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_extendedprice is not NULL
  limit 33)
UNION
(select  
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_name, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_acctbal >= customer_1.c_acctbal
  limit 12)
EXCEPT
(select  
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 28);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_clerk is not NULL
  limit 9)
EXCEPT
(select  
    customer_1.c_custkey
  from 
    customer as customer_1
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
  where customer_1.c_mktsegment is not NULL
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_receiptdate = lineitem_1.l_shipdate
  limit 25)
EXCEPT
(select  
    part_1.p_size
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 24);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_shipinstruct, 
    region_1.r_name, 
    part_1.p_name, 
    part_1.p_brand, 
    part_1.p_partkey
  from 
    lineitem as lineitem_1
        inner join part as part_1
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
  where lineitem_1.l_comment is not NULL
  limit 17)
EXCEPT
(select  
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_comment, 
    supplier_1.s_phone, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_name < supplier_1.s_phone
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_name, 
    supplier_1.s_suppkey, 
    supplier_1.s_phone, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_address is not NULL
  limit 23)
EXCEPT
(select  
    customer_1.c_mktsegment, 
    customer_1.c_custkey, 
    supplier_2.s_phone, 
    customer_1.c_name, 
    customer_1.c_comment, 
    supplier_2.s_acctbal, 
    supplier_2.s_suppkey
  from 
    customer as customer_1
      inner join supplier as supplier_2
      on (customer_1.c_custkey = supplier_2.s_suppkey )
  where customer_1.c_acctbal <= supplier_2.s_acctbal
  limit 13);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderstatus, 
    part_1.p_type, 
    orders_1.o_totalprice, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_receiptdate, 
    orders_1.o_orderpriority, 
    lineitem_1.l_returnflag
  from 
    part as part_1
      inner join lineitem as lineitem_1
        inner join nation as nation_1
          inner join orders as orders_1
          on (nation_1.n_nationkey = orders_1.o_orderkey )
        on (lineitem_1.l_orderkey = orders_1.o_orderkey )
      on (part_1.p_partkey = orders_1.o_orderkey )
  where part_1.p_mfgr is not NULL
  limit 28)
EXCEPT
(select  
    customer_2.c_mktsegment, 
    customer_1.c_name, 
    customer_1.c_acctbal, 
    lineitem_2.l_suppkey, 
    lineitem_2.l_shipdate, 
    lineitem_2.l_shipinstruct, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
      inner join lineitem as lineitem_2
        inner join customer as customer_2
        on (lineitem_2.l_orderkey = customer_2.c_custkey )
      on (customer_1.c_custkey = customer_2.c_custkey )
  where lineitem_2.l_linestatus is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_name, 
    supplier_1.s_phone, 
    supplier_1.s_acctbal, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 34)
EXCEPT
(select  
    part_1.p_mfgr, 
    part_1.p_brand, 
    part_1.p_retailprice, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_container is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderkey = orders_1.o_shippriority
limit 25;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_type, 
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    part_1.p_name, 
    part_2.p_brand, 
    part_1.p_container
  from 
    nation as nation_1
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
  where nation_1.n_regionkey is not NULL
  limit 36)
EXCEPT
(select  
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_comment, 
    region_1.r_comment, 
    region_1.r_name, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 38);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_comment, 
    part_1.p_container
  from 
    part as part_1
  where part_1.p_brand <= part_1.p_container
  limit 17)
EXCEPT
(select  
    part_2.p_comment, 
    part_3.p_container
  from 
    partsupp as partsupp_1
        inner join part as part_2
        on (partsupp_1.ps_partkey = part_2.p_partkey )
      inner join part as part_3
      on (part_2.p_partkey = part_3.p_partkey )
  where part_3.p_partkey is not NULL
  limit 2);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  supplier_1.s_address, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus
from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 22;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderpriority, 
    region_1.r_regionkey, 
    part_1.p_name
  from 
    region as region_1
        inner join partsupp as partsupp_1
        on (region_1.r_regionkey = partsupp_1.ps_partkey )
      inner join part as part_1
          inner join region as region_2
          on (part_1.p_partkey = region_2.r_regionkey )
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      on (region_1.r_regionkey = region_2.r_regionkey )
  where part_1.p_container > orders_1.o_orderstatus
  limit 6)
UNION
(select  
    region_3.r_name, 
    region_3.r_regionkey, 
    nation_1.n_comment
  from 
    region as region_3
      inner join nation as nation_1
      on (region_3.r_regionkey = nation_1.n_nationkey )
  where region_3.r_comment is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 21)
EXCEPT
(select  
    region_2.r_name
  from 
    region as region_2
  where region_2.r_comment is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name, 
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 36)
UNION
(select  
    lineitem_1.l_linestatus, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct > lineitem_1.l_linestatus
  limit 31);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  lineitem_1.l_discount, 
  partsupp_2.ps_comment, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  partsupp_1.ps_partkey, 
  part_1.p_brand
from 
  lineitem as lineitem_1
    inner join part as part_1
        inner join partsupp as partsupp_1
        on (part_1.p_partkey = partsupp_1.ps_partkey )
      inner join partsupp as partsupp_2
      on (part_1.p_partkey = partsupp_2.ps_partkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_size is not NULL
limit 6;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_comment, 
    part_1.p_name, 
    part_2.p_size, 
    part_1.p_type, 
    part_1.p_container, 
    part_2.p_brand, 
    part_1.p_retailprice, 
    part_1.p_mfgr, 
    part_2.p_mfgr, 
    part_2.p_retailprice, 
    part_1.p_size, 
    part_2.p_name
  from 
    part as part_1
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
  where part_1.p_mfgr is not NULL
  limit 22)
UNION
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_partkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_discount, 
    lineitem_1.l_returnflag, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_quantity, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_discount > lineitem_1.l_quantity
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 30;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 4)
UNION
(select  
    customer_1.c_name, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
  where partsupp_1.ps_supplycost is not NULL
  limit 42);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_shipmode
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipdate < lineitem_1.l_receiptdate
  limit 28)
EXCEPT
(select  
    lineitem_2.l_linestatus
  from 
    lineitem as lineitem_2
      inner join lineitem as lineitem_3
      on (lineitem_2.l_orderkey = lineitem_3.l_orderkey )
  where lineitem_2.l_linenumber <= lineitem_2.l_suppkey
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name >= region_1.r_name
  limit 19)
EXCEPT
(select  
    partsupp_1.ps_availqty
  from 
    customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
  where customer_1.c_phone is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_mktsegment, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_acctbal is not NULL
  limit 21)
UNION
(select  
    lineitem_1.l_linestatus, 
    lineitem_1.l_linenumber
  from 
    region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
  where lineitem_1.l_receiptdate = lineitem_1.l_shipdate
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey, 
    nation_1.n_comment, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 37)
EXCEPT
(select  
    customer_1.c_custkey, 
    customer_1.c_nationkey, 
    customer_1.c_comment, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_custkey is not NULL
  limit 33);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_type, 
    customer_1.c_address
  from 
    partsupp as partsupp_1
            inner join nation as nation_1
            on (partsupp_1.ps_partkey = nation_1.n_nationkey )
          inner join customer as customer_1
          on (partsupp_1.ps_partkey = customer_1.c_custkey )
        inner join customer as customer_2
        on (nation_1.n_nationkey = customer_2.c_custkey )
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
  where customer_2.c_phone is not NULL
  limit 18)
EXCEPT
(select  
    partsupp_2.ps_comment, 
    partsupp_2.ps_comment
  from 
    partsupp as partsupp_2
  where partsupp_2.ps_partkey is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_comment, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_partkey is not NULL
  limit 14)
UNION
(select  
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 36);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_2.o_orderdate, 
    orders_2.o_totalprice, 
    orders_2.o_orderkey, 
    orders_1.o_shippriority, 
    orders_2.o_orderpriority, 
    orders_1.o_orderpriority, 
    orders_2.o_clerk, 
    orders_1.o_totalprice, 
    orders_1.o_orderkey
  from 
    orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
  where orders_1.o_orderkey is not NULL
  limit 27)
UNION
(select  
    lineitem_1.l_commitdate, 
    lineitem_1.l_discount, 
    lineitem_1.l_partkey, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_returnflag, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_quantity, 
    lineitem_1.l_suppkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_returnflag < lineitem_1.l_linestatus
  limit 26);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_availqty, 
    lineitem_1.l_comment, 
    lineitem_1.l_partkey
  from 
    partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
  where lineitem_1.l_quantity > partsupp_1.ps_supplycost
  limit 13)
UNION
(select  
    orders_1.o_totalprice, 
    orders_1.o_shippriority, 
    customer_1.c_address, 
    orders_1.o_custkey
  from 
    customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
  where customer_1.c_name is not NULL
  limit 27);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_comment, 
    nation_1.n_name, 
    supplier_1.s_suppkey, 
    supplier_1.s_phone, 
    supplier_1.s_nationkey, 
    supplier_2.s_name, 
    nation_1.n_regionkey, 
    supplier_1.s_address, 
    nation_1.n_nationkey, 
    supplier_2.s_phone
  from 
    supplier as supplier_1
      inner join supplier as supplier_2
        inner join nation as nation_1
        on (supplier_2.s_suppkey = nation_1.n_nationkey )
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
  where nation_1.n_comment is not NULL
  limit 35)
UNION
(select  
    region_1.r_comment, 
    region_1.r_name, 
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_regionkey, 
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_custkey is not NULL
  limit 18)
UNION
(select  
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_regionkey >= region_1.r_regionkey
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_returnflag <= lineitem_1.l_linestatus
  limit 1)
EXCEPT
(select  
    part_1.p_size
  from 
    part as part_1
  where part_1.p_container is not NULL
  limit 30);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 41)
UNION
(select  
    supplier_2.s_name
  from 
    partsupp as partsupp_1
        inner join supplier as supplier_2
        on (partsupp_1.ps_partkey = supplier_2.s_suppkey )
      inner join partsupp as partsupp_2
      on (supplier_2.s_suppkey = partsupp_2.ps_partkey )
  where partsupp_2.ps_availqty > supplier_2.s_nationkey
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
  limit 21)
EXCEPT
(select  
    partsupp_2.ps_availqty, 
    partsupp_2.ps_supplycost
  from 
    partsupp as partsupp_2
  where partsupp_2.ps_partkey is not NULL
  limit 29);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_2.n_name, 
    partsupp_1.ps_comment, 
    nation_2.n_regionkey, 
    partsupp_1.ps_suppkey
  from 
    nation as nation_1
          inner join partsupp as partsupp_1
          on (nation_1.n_nationkey = partsupp_1.ps_partkey )
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      inner join nation as nation_2
      on (part_1.p_partkey = nation_2.n_nationkey )
  where nation_2.n_comment is not NULL
  limit 15)
EXCEPT
(select  
    orders_1.o_orderstatus, 
    orders_1.o_comment, 
    orders_1.o_orderkey, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_totalprice is not NULL
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_shippriority, 
    orders_1.o_orderkey, 
    orders_1.o_orderpriority, 
    orders_1.o_totalprice, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_clerk = orders_1.o_orderpriority
  limit 29)
UNION
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_phone, 
    supplier_1.s_acctbal, 
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_clerk, 
    orders_1.o_orderpriority
  from 
    orders as orders_1
  where orders_1.o_orderkey is not NULL
  limit 15)
EXCEPT
(select  
    orders_2.o_orderpriority, 
    orders_2.o_orderstatus
  from 
    orders as orders_2
  where orders_2.o_orderkey is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_nationkey, 
    region_1.r_comment, 
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    region_1.r_regionkey
  from 
    nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
  where nation_1.n_name = region_1.r_name
  limit 21)
EXCEPT
(select  
    region_2.r_regionkey, 
    region_2.r_comment, 
    region_2.r_regionkey, 
    region_2.r_comment, 
    region_2.r_regionkey
  from 
    region as region_2
  where region_2.r_comment is not NULL
  limit 9);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_name
  from 
    region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
  where supplier_1.s_name is not NULL
  limit 40)
EXCEPT
(select  
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_name = nation_1.n_name
  limit 33);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    supplier_1.s_suppkey, 
    part_1.p_type, 
    supplier_1.s_nationkey, 
    nation_1.n_comment, 
    part_1.p_mfgr, 
    part_1.p_container, 
    nation_1.n_name, 
    nation_1.n_nationkey, 
    part_1.p_size, 
    supplier_1.s_comment, 
    supplier_1.s_name, 
    part_1.p_comment
  from 
    nation as nation_1
        inner join supplier as supplier_1
        on (nation_1.n_nationkey = supplier_1.s_suppkey )
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
  where supplier_1.s_address is not NULL
  limit 38)
EXCEPT
(select  
    nation_2.n_regionkey, 
    nation_2.n_nationkey, 
    nation_2.n_comment, 
    customer_1.c_nationkey, 
    customer_1.c_address, 
    part_2.p_brand, 
    customer_1.c_phone, 
    nation_2.n_name, 
    part_2.p_partkey, 
    customer_1.c_custkey, 
    region_1.r_comment, 
    part_2.p_container, 
    customer_1.c_comment
  from 
    region as region_1
      inner join nation as nation_2
        inner join part as part_2
          inner join customer as customer_1
          on (part_2.p_partkey = customer_1.c_custkey )
        on (nation_2.n_nationkey = customer_1.c_custkey )
      on (region_1.r_regionkey = part_2.p_partkey )
  where customer_1.c_phone is not NULL
  limit 20);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey
from 
  customer as customer_1
    inner join orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_linestatus is not NULL
limit 15;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderstatus, 
    orders_1.o_orderpriority
  from 
    lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
  where lineitem_1.l_returnflag is not NULL
  limit 32)
UNION
(select  
    orders_2.o_orderpriority, 
    part_1.p_brand
  from 
    orders as orders_2
      inner join part as part_1
      on (orders_2.o_orderkey = part_1.p_partkey )
  where part_1.p_brand is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_comment
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 35)
UNION
(select  
    part_1.p_type
  from 
    part as part_1
  where part_1.p_mfgr is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_comment, 
    nation_1.n_nationkey, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 1)
UNION
(select  
    orders_1.o_comment, 
    orders_1.o_custkey, 
    orders_1.o_shippriority
  from 
    orders as orders_1
  where orders_1.o_custkey is not NULL
  limit 9);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 28)
EXCEPT
(select  
    supplier_1.s_address, 
    supplier_1.s_nationkey, 
    supplier_1.s_phone
  from 
    region as region_2
      inner join supplier as supplier_1
      on (region_2.r_regionkey = supplier_1.s_suppkey )
  where region_2.r_comment is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_2.l_comment, 
    lineitem_2.l_partkey
  from 
    lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
  where lineitem_1.l_orderkey is not NULL
  limit 1)
EXCEPT
(select  
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name > region_1.r_name
  limit 26);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_comment, 
    part_1.p_brand, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
  where partsupp_1.ps_suppkey is not NULL
  limit 42)
UNION
(select  
    nation_1.n_comment, 
    nation_1.n_name, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 10)
EXCEPT
(select  
    partsupp_1.ps_supplycost, 
    lineitem_1.l_returnflag
  from 
    lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
  where lineitem_1.l_extendedprice is not NULL
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 25;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_comment, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 40)
UNION
(select  
    region_1.r_comment, 
    supplier_2.s_suppkey
  from 
    supplier as supplier_2
        inner join partsupp as partsupp_1
        on (supplier_2.s_suppkey = partsupp_1.ps_partkey )
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
  where region_1.r_name <= supplier_2.s_phone
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_nationkey > nation_1.n_regionkey
  limit 6)
EXCEPT
(select  
    part_2.p_size
  from 
    part as part_1
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
  where part_2.p_name is not NULL
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_clerk, 
    orders_1.o_orderstatus, 
    orders_1.o_custkey, 
    orders_1.o_orderdate, 
    orders_1.o_orderpriority, 
    orders_1.o_shippriority, 
    orders_1.o_totalprice
  from 
    orders as orders_1
  where orders_1.o_totalprice >= orders_1.o_totalprice
  limit 27)
EXCEPT
(select  
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_linestatus, 
    partsupp_1.ps_suppkey, 
    lineitem_1.l_receiptdate, 
    lineitem_1.l_returnflag, 
    partsupp_1.ps_availqty, 
    lineitem_1.l_extendedprice
  from 
    lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
  where lineitem_1.l_tax is not NULL
  limit 11);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_acctbal is not NULL
  limit 4)
UNION
(select  
    customer_2.c_comment
  from 
    customer as customer_2
      inner join orders as orders_1
      on (customer_2.c_custkey = orders_1.o_orderkey )
  where orders_1.o_totalprice is not NULL
  limit 24);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderstatus
  from 
    orders as orders_1
  where orders_1.o_orderdate >= orders_1.o_orderdate
  limit 19)
UNION
(select  
    nation_2.n_name
  from 
    nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
  where nation_1.n_nationkey = nation_2.n_nationkey
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_comment
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_partkey is not NULL
  limit 6)
UNION
(select  
    part_1.p_partkey, 
    part_1.p_size, 
    part_1.p_size, 
    part_1.p_retailprice, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_name is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 15;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_availqty is not NULL
  limit 39)
EXCEPT
(select  
    customer_1.c_acctbal, 
    supplier_1.s_suppkey
  from 
    customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_custkey = supplier_1.s_suppkey )
  where supplier_1.s_suppkey is not NULL
  limit 29);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_nationkey, 
    nation_1.n_regionkey, 
    nation_1.n_comment
  from 
    nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
  where region_1.r_comment is not NULL
  limit 9)
UNION
(select  
    region_2.r_regionkey, 
    region_2.r_regionkey, 
    region_2.r_comment
  from 
    region as region_2
  where region_2.r_name is not NULL
  limit 5);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_comment, 
    supplier_1.s_nationkey, 
    supplier_1.s_address, 
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey >= supplier_1.s_nationkey
  limit 25)
EXCEPT
(select  
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_returnflag, 
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey, 
    region_1.r_comment, 
    lineitem_1.l_partkey, 
    lineitem_1.l_tax
  from 
    lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
  where lineitem_1.l_suppkey is not NULL
  limit 15);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name, 
    part_1.p_mfgr, 
    region_1.r_comment, 
    part_1.p_name, 
    customer_1.c_custkey, 
    part_1.p_brand
  from 
    part as part_1
        inner join customer as customer_1
        on (part_1.p_partkey = customer_1.c_custkey )
      inner join region as region_1
      on (customer_1.c_custkey = region_1.r_regionkey )
  where customer_1.c_address is not NULL
  limit 42)
EXCEPT
(select  
    region_2.r_name, 
    region_2.r_name, 
    region_2.r_comment, 
    region_2.r_comment, 
    region_2.r_regionkey, 
    region_2.r_name
  from 
    region as region_2
  where region_2.r_name <= region_2.r_name
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_nationkey, 
    customer_1.c_acctbal, 
    customer_1.c_comment, 
    customer_1.c_custkey, 
    customer_1.c_mktsegment, 
    customer_1.c_phone, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 15)
UNION
(select  
    lineitem_1.l_orderkey, 
    lineitem_1.l_quantity, 
    lineitem_1.l_comment, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_partkey is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice, 
  part_1.p_container
from 
  part as part_1
where part_1.p_name is not NULL
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_phone is not NULL
  limit 15)
UNION
(select  
    region_1.r_comment
  from 
    lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
  where lineitem_1.l_quantity >= lineitem_1.l_tax
  limit 39);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_extendedprice
  from 
    lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
  where lineitem_1.l_receiptdate is not NULL
  limit 3)
UNION
(select  
    part_1.p_retailprice
  from 
    supplier as supplier_1
        inner join part as part_1
          inner join orders as orders_1
          on (part_1.p_partkey = orders_1.o_orderkey )
        on (supplier_1.s_suppkey = part_1.p_partkey )
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
  where supplier_1.s_phone = customer_1.c_phone
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 35;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_nationkey, 
    customer_1.c_phone, 
    nation_1.n_nationkey, 
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    customer_1.c_name, 
    part_1.p_partkey, 
    part_1.p_mfgr, 
    part_1.p_type, 
    part_1.p_name, 
    customer_1.c_custkey, 
    part_1.p_brand, 
    customer_1.c_mktsegment
  from 
    part as part_1
      inner join nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_nationkey = customer_1.c_custkey )
      on (part_1.p_partkey = nation_1.n_nationkey )
  where nation_1.n_nationkey >= customer_1.c_custkey
  limit 22)
EXCEPT
(select  
    partsupp_1.ps_availqty, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_partkey, 
    partsupp_1.ps_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_comment, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_partkey, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_returnflag
  from 
    partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
  where lineitem_1.l_shipmode is not NULL
  limit 34);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 22)
EXCEPT
(select  
    part_1.p_container
  from 
    nation as nation_1
        inner join partsupp as partsupp_1
          inner join part as part_1
          on (partsupp_1.ps_partkey = part_1.p_partkey )
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join region as region_2
      on (nation_1.n_nationkey = region_2.r_regionkey )
  where partsupp_1.ps_partkey is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_custkey = orders_1.o_orderkey
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_mktsegment, 
    customer_2.c_name, 
    customer_2.c_custkey
  from 
    customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
  where customer_2.c_custkey < customer_2.c_nationkey
  limit 1)
EXCEPT
(select  
    part_1.p_brand, 
    part_1.p_type, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_container is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 38)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_orderkey < lineitem_1.l_linenumber
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_comment, 
    nation_1.n_nationkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 26)
UNION
(select  
    orders_1.o_comment, 
    orders_2.o_orderkey, 
    orders_2.o_orderpriority
  from 
    orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
  where orders_1.o_clerk is not NULL
  limit 10);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_comment is not NULL
  limit 39)
UNION
(select  
    orders_1.o_shippriority, 
    orders_1.o_comment, 
    orders_1.o_orderkey
  from 
    region as region_1
      inner join orders as orders_1
        inner join partsupp as partsupp_2
        on (orders_1.o_orderkey = partsupp_2.ps_partkey )
      on (region_1.r_regionkey = partsupp_2.ps_partkey )
  where orders_1.o_clerk = orders_1.o_orderpriority
  limit 2);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_orderpriority < part_1.p_brand
limit 23;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey, 
    customer_2.c_mktsegment
  from 
    region as region_1
          inner join customer as customer_1
          on (region_1.r_regionkey = customer_1.c_custkey )
        inner join partsupp as partsupp_1
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
  where customer_1.c_acctbal > partsupp_1.ps_supplycost
  limit 19)
UNION
(select  
    nation_1.n_nationkey, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_name is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_partkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_partkey >= partsupp_1.ps_availqty
  limit 20)
UNION
(select  
    orders_1.o_custkey
  from 
    region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
  where region_1.r_comment is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_comment, 
    customer_1.c_address, 
    customer_1.c_name, 
    customer_1.c_mktsegment, 
    customer_1.c_custkey, 
    customer_1.c_phone, 
    customer_1.c_nationkey
  from 
    customer as customer_1
  where customer_1.c_comment is not NULL
  limit 22)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_partkey, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_linenumber
  from 
    lineitem as lineitem_1
  where lineitem_1.l_receiptdate is not NULL
  limit 8);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_supplycost
  from 
    part as part_1
      inner join partsupp as partsupp_1
      on (part_1.p_partkey = partsupp_1.ps_partkey )
  where partsupp_1.ps_supplycost is not NULL
  limit 15)
UNION
(select  
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 21);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name <= region_1.r_name
  limit 10)
UNION
(select  
    supplier_1.s_name, 
    supplier_1.s_address, 
    supplier_1.s_suppkey
  from 
    orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
  where orders_1.o_totalprice is not NULL
  limit 32);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_nationkey, 
    customer_1.c_comment
  from 
    customer as customer_1
  where customer_1.c_custkey is not NULL
  limit 4)
EXCEPT
(select  
    lineitem_2.l_linenumber, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      inner join orders as orders_1
      on (lineitem_2.l_orderkey = orders_1.o_orderkey )
  where lineitem_1.l_returnflag is not NULL
  limit 11);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 37)
EXCEPT
(select  
    lineitem_2.l_partkey
  from 
    customer as customer_1
        inner join lineitem as lineitem_1
        on (customer_1.c_custkey = lineitem_1.l_orderkey )
      inner join lineitem as lineitem_2
      on (customer_1.c_custkey = lineitem_2.l_orderkey )
  where lineitem_1.l_linestatus is not NULL
  limit 22);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_address, 
    customer_1.c_custkey, 
    orders_1.o_comment, 
    customer_1.c_name
  from 
    customer as customer_1
      inner join orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_orderkey = lineitem_1.l_orderkey )
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
  where customer_1.c_comment is not NULL
  limit 30)
EXCEPT
(select  
    supplier_1.s_comment, 
    supplier_1.s_nationkey, 
    supplier_1.s_address, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_partkey, 
    part_1.p_retailprice, 
    part_1.p_type, 
    part_1.p_brand, 
    part_1.p_comment, 
    part_1.p_mfgr, 
    part_1.p_name
  from 
    part as part_1
  where part_1.p_name is not NULL
  limit 3)
EXCEPT
(select  
    customer_1.c_custkey, 
    customer_1.c_acctbal, 
    customer_1.c_name, 
    customer_1.c_phone, 
    customer_1.c_comment, 
    customer_1.c_mktsegment, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_mktsegment is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_phone, 
    customer_1.c_custkey, 
    customer_1.c_comment, 
    customer_1.c_name, 
    customer_1.c_address, 
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_custkey is not NULL
  limit 13)
UNION
(select  
    nation_1.n_name, 
    orders_1.o_orderkey, 
    orders_1.o_comment, 
    nation_1.n_comment, 
    nation_1.n_comment, 
    orders_1.o_clerk
  from 
    orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
  where nation_1.n_name is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_extendedprice, 
    lineitem_1.l_discount
  from 
    lineitem as lineitem_1
  where lineitem_1.l_commitdate is not NULL
  limit 37)
EXCEPT
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_supplycost
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 12)
UNION
(select  
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_orderpriority is not NULL
  limit 32);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_comment, 
    partsupp_1.ps_availqty, 
    partsupp_1.ps_comment
  from 
    partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
  where partsupp_1.ps_supplycost < supplier_1.s_acctbal
  limit 8)
UNION
(select  
    lineitem_1.l_comment, 
    nation_1.n_regionkey, 
    nation_1.n_comment
  from 
    lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
  where lineitem_1.l_linenumber is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_size, 
    part_1.p_partkey, 
    part_1.p_type, 
    part_1.p_container, 
    part_1.p_retailprice, 
    part_1.p_name, 
    part_1.p_mfgr
  from 
    part as part_1
  where part_1.p_type is not NULL
  limit 13)
UNION
(select  
    lineitem_1.l_suppkey, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_comment, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_quantity, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipmode > lineitem_1.l_returnflag
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 35)
EXCEPT
(select  
    nation_1.n_nationkey, 
    nation_1.n_name, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 24);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 22)
EXCEPT
(select  
    part_1.p_partkey, 
    part_2.p_name, 
    part_1.p_brand
  from 
    partsupp as partsupp_1
      inner join nation as nation_2
        inner join part as part_1
          inner join part as part_2
          on (part_1.p_partkey = part_2.p_partkey )
        on (nation_2.n_nationkey = part_1.p_partkey )
      on (partsupp_1.ps_partkey = part_2.p_partkey )
  where nation_2.n_name is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_quantity is not NULL
  limit 22)
UNION
(select  
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 5);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select distinct 
    supplier_1.s_nationkey, 
    region_1.r_regionkey, 
    region_1.r_comment
  from 
    region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
  where region_1.r_comment is not NULL
  limit 38)
UNION
(select  
    supplier_2.s_suppkey, 
    supplier_2.s_nationkey, 
    supplier_2.s_address
  from 
    supplier as supplier_2
  where supplier_2.s_acctbal <= supplier_2.s_acctbal
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_comment, 
    orders_1.o_shippriority
  from 
    orders as orders_1
  where orders_1.o_orderdate > orders_1.o_orderdate
  limit 6)
UNION
(select  
    orders_2.o_comment, 
    orders_2.o_custkey
  from 
    orders as orders_2
  where orders_2.o_orderdate is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_address, 
    customer_1.c_name, 
    customer_1.c_mktsegment, 
    customer_1.c_phone, 
    customer_1.c_custkey, 
    customer_1.c_nationkey, 
    customer_1.c_comment, 
    customer_1.c_acctbal
  from 
    customer as customer_1
  where customer_1.c_custkey is not NULL
  limit 38)
UNION
(select  
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_name, 
    supplier_1.s_phone, 
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_comment, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_linestatus, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_orderkey, 
    lineitem_1.l_discount
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipdate is not NULL
  limit 19)
EXCEPT
(select  
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_address is not NULL
  limit 20);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice, 
  supplier_1.s_name, 
  part_2.p_type, 
  part_1.p_name
from 
  region as region_1
    inner join supplier as supplier_1
          inner join part as part_1
          on (supplier_1.s_suppkey = part_1.p_partkey )
        inner join partsupp as partsupp_1
          inner join part as part_2
          on (partsupp_1.ps_partkey = part_2.p_partkey )
        on (supplier_1.s_suppkey = part_2.p_partkey )
      inner join nation as nation_1
      on (part_2.p_partkey = nation_1.n_nationkey )
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where partsupp_1.ps_availqty <= part_1.p_partkey
limit 25;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_type
  from 
    part as part_1
        inner join orders as orders_1
          inner join nation as nation_1
          on (orders_1.o_orderkey = nation_1.n_nationkey )
        on (part_1.p_partkey = orders_1.o_orderkey )
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
  where part_1.p_brand is not NULL
  limit 7)
EXCEPT
(select  
    supplier_1.s_comment
  from 
    part as part_2
        inner join lineitem as lineitem_1
        on (part_2.p_partkey = lineitem_1.l_orderkey )
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_acctbal is not NULL
  limit 36);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_2.l_shipdate, 
    lineitem_2.l_shipinstruct, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
  where lineitem_2.l_suppkey = lineitem_1.l_orderkey
  limit 12)
UNION
(select  
    lineitem_3.l_commitdate, 
    lineitem_3.l_linestatus, 
    lineitem_3.l_shipmode
  from 
    lineitem as lineitem_3
  where lineitem_3.l_comment is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_partkey, 
    partsupp_1.ps_comment
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_availqty is not NULL
  limit 29)
UNION
(select  
    lineitem_1.l_tax, 
    lineitem_1.l_linenumber, 
    region_1.r_regionkey, 
    lineitem_1.l_comment
  from 
    region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
  where lineitem_1.l_shipmode < lineitem_1.l_linestatus
  limit 38);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.n_name is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_comment, 
    supplier_1.s_name, 
    supplier_1.s_suppkey
  from 
    region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
  where region_1.r_regionkey is not NULL
  limit 20)
EXCEPT
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_linenumber
  from 
    lineitem as lineitem_1
  where lineitem_1.l_discount is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_retailprice, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_container is not NULL
  limit 33)
UNION
(select  
    orders_1.o_totalprice, 
    supplier_1.s_address
  from 
    orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
  where supplier_1.s_acctbal is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_mfgr, 
    part_1.p_brand, 
    part_1.p_type, 
    part_1.p_name, 
    part_1.p_comment, 
    part_1.p_partkey, 
    part_1.p_retailprice, 
    part_1.p_size
  from 
    part as part_1
  where part_1.p_name is not NULL
  limit 26)
UNION
(select  
    supplier_1.s_phone, 
    supplier_1.s_name, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_address, 
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_suppkey is not NULL
  limit 30);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderkey, 
    orders_1.o_custkey, 
    orders_1.o_comment
  from 
    orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
  where orders_1.o_clerk is not NULL
  limit 4)
UNION
(select  
    customer_1.c_nationkey, 
    customer_1.c_custkey, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_phone is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_address, 
    customer_1.c_custkey, 
    customer_1.c_mktsegment, 
    supplier_1.s_nationkey, 
    customer_1.c_nationkey
  from 
    customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_custkey = supplier_1.s_suppkey )
  where customer_1.c_mktsegment is not NULL
  limit 36)
UNION
(select  
    part_1.p_type, 
    part_1.p_size, 
    part_1.p_mfgr, 
    part_1.p_partkey, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_name is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_mktsegment
  from 
    customer as customer_1
  where customer_1.c_acctbal > customer_1.c_acctbal
  limit 27)
UNION
(select  
    part_1.p_brand
  from 
    part as part_1
  where part_1.p_retailprice = part_1.p_retailprice
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_suppkey, 
    supplier_1.s_comment, 
    supplier_1.s_name, 
    supplier_1.s_nationkey, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 16)
UNION
(select distinct 
    lineitem_1.l_tax, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_partkey, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_discount is not NULL
  limit 1);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 12)
EXCEPT
(select  
    partsupp_1.ps_suppkey, 
    orders_1.o_comment
  from 
    lineitem as lineitem_1
        inner join orders as orders_1
        on (lineitem_1.l_orderkey = orders_1.o_orderkey )
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
  where lineitem_1.l_orderkey is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name, 
    nation_1.n_nationkey, 
    nation_1.n_regionkey
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 13)
UNION
(select  
    orders_1.o_orderpriority, 
    orders_1.o_shippriority, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_orderpriority is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_address, 
    supplier_1.s_comment, 
    supplier_1.s_name, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey = supplier_1.s_suppkey
  limit 21)
UNION
(select  
    orders_1.o_totalprice, 
    orders_1.o_comment, 
    orders_1.o_comment, 
    orders_1.o_orderstatus, 
    orders_1.o_custkey
  from 
    orders as orders_1
  where orders_1.o_orderkey >= orders_1.o_shippriority
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_suppkey is not NULL
  limit 33)
UNION
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 8);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderstatus, 
    lineitem_1.l_shipdate
  from 
    lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
  where lineitem_1.l_suppkey is not NULL
  limit 10)
UNION
(select  
    orders_2.o_orderstatus, 
    orders_2.o_orderdate
  from 
    orders as orders_2
  where orders_2.o_clerk is not NULL
  limit 22);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_nationkey, 
  orders_1.o_comment, 
  nation_1.n_regionkey, 
  lineitem_1.l_orderkey
from 
  nation as nation_1
    inner join orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_orderkey = lineitem_1.l_orderkey )
      inner join nation as nation_2
      on (lineitem_1.l_orderkey = nation_2.n_nationkey )
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_1.n_comment is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_partkey, 
    lineitem_1.l_linestatus
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct is not NULL
  limit 4)
EXCEPT
(select  
    part_1.p_partkey, 
    part_1.p_brand
  from 
    part as part_1
  where part_1.p_mfgr is not NULL
  limit 28);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    orders_1.o_orderpriority, 
    orders_1.o_orderstatus, 
    orders_1.o_clerk, 
    orders_1.o_shippriority, 
    orders_1.o_orderdate, 
    orders_1.o_comment, 
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_totalprice >= orders_1.o_totalprice
  limit 15)
EXCEPT
(select  
    lineitem_1.l_returnflag, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_shipmode, 
    partsupp_1.ps_partkey, 
    lineitem_1.l_shipdate, 
    partsupp_1.ps_comment, 
    lineitem_1.l_orderkey
  from 
    partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
  where lineitem_1.l_commitdate >= lineitem_1.l_receiptdate
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 37)
EXCEPT
(select  
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_orderpriority <= orders_1.o_clerk
  limit 33);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_regionkey, 
    part_1.p_size, 
    supplier_1.s_phone, 
    part_1.p_type
  from 
    part as part_1
        inner join nation as nation_1
        on (part_1.p_partkey = nation_1.n_nationkey )
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
  where supplier_1.s_acctbal = part_1.p_retailprice
  limit 22)
EXCEPT
(select  
    customer_1.c_custkey, 
    customer_1.c_nationkey, 
    customer_1.c_phone, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_address is not NULL
  limit 31);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_brand, 
    part_1.p_mfgr
  from 
    part as part_1
  where part_1.p_size = part_1.p_partkey
  limit 14)
EXCEPT
(select  
    orders_1.o_clerk, 
    orders_1.o_orderpriority
  from 
    nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
  where nation_1.n_nationkey >= orders_1.o_orderkey
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select distinct 
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipinstruct is not NULL
  limit 25)
UNION
(select  
    orders_1.o_orderkey
  from 
    orders as orders_1
  where orders_1.o_comment is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_size, 
    part_1.p_brand, 
    part_1.p_partkey, 
    part_1.p_comment, 
    part_1.p_container, 
    part_1.p_name
  from 
    part as part_1
  where part_1.p_brand is not NULL
  limit 41)
UNION
(select  
    customer_1.c_custkey, 
    customer_1.c_mktsegment, 
    customer_1.c_nationkey, 
    customer_1.c_name, 
    customer_1.c_phone, 
    customer_1.c_address
  from 
    customer as customer_1
  where customer_1.c_phone = customer_1.c_mktsegment
  limit 24);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_2.c_address
from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_phone >= customer_2.c_phone
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_custkey, 
    supplier_1.s_name, 
    supplier_1.s_phone, 
    customer_1.c_address, 
    customer_1.c_name
  from 
    supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
  where customer_1.c_custkey <= supplier_1.s_nationkey
  limit 37)
UNION
(select  
    customer_2.c_custkey, 
    customer_2.c_phone, 
    customer_2.c_mktsegment, 
    customer_2.c_address, 
    customer_2.c_name
  from 
    customer as customer_2
  where customer_2.c_mktsegment is not NULL
  limit 13);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  part_1.p_retailprice
from 
  orders as orders_1
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_totalprice is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 32;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey
  from 
    partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.ps_partkey = region_1.r_regionkey )
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
  where part_1.p_retailprice = partsupp_1.ps_supplycost
  limit 34)
UNION
(select  
    lineitem_1.l_orderkey
  from 
    orders as orders_1
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
  where lineitem_1.l_comment is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_comment is not NULL
  limit 36)
UNION
(select  
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipdate is not NULL
  limit 8);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_comment, 
    supplier_1.s_acctbal, 
    supplier_1.s_phone, 
    supplier_1.s_suppkey, 
    supplier_1.s_address
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 19)
EXCEPT
(select  
    supplier_2.s_address, 
    orders_1.o_totalprice, 
    supplier_2.s_name, 
    orders_1.o_custkey, 
    region_1.r_comment
  from 
    orders as orders_1
      inner join supplier as supplier_2
        inner join region as region_1
        on (supplier_2.s_suppkey = region_1.r_regionkey )
      on (orders_1.o_orderkey = supplier_2.s_suppkey )
  where supplier_2.s_acctbal < orders_1.o_totalprice
  limit 3);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_availqty, 
    supplier_1.s_address
  from 
    partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
  where supplier_1.s_acctbal is not NULL
  limit 34)
EXCEPT
(select  
    lineitem_1.l_linenumber, 
    part_1.p_type
  from 
    region as region_1
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
  where region_1.r_regionkey is not NULL
  limit 19);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_name, 
    supplier_1.s_address, 
    supplier_1.s_phone, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_name >= supplier_1.s_phone
  limit 33)
UNION
(select  
    supplier_2.s_phone, 
    supplier_3.s_address, 
    supplier_2.s_name, 
    orders_1.o_totalprice
  from 
    supplier as supplier_2
        inner join orders as orders_1
        on (supplier_2.s_suppkey = orders_1.o_orderkey )
      inner join supplier as supplier_3
        inner join supplier as supplier_4
        on (supplier_3.s_suppkey = supplier_4.s_suppkey )
      on (orders_1.o_orderkey = supplier_3.s_suppkey )
  where orders_1.o_orderstatus >= supplier_2.s_name
  limit 26);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_commitdate, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_returnflag, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_orderkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where partsupp_1.ps_partkey is not NULL
limit 21;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_regionkey
  from 
    nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
  where customer_1.c_acctbal <= customer_1.c_acctbal
  limit 18)
UNION
(select  
    partsupp_2.ps_partkey
  from 
    partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
  where partsupp_2.ps_supplycost = partsupp_1.ps_supplycost
  limit 37);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_acctbal, 
    supplier_1.s_suppkey, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 8)
EXCEPT
(select  
    part_1.p_retailprice, 
    part_1.p_partkey, 
    part_1.p_size
  from 
    part as part_1
  where part_1.p_container is not NULL
  limit 4);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_type, 
    part_1.p_mfgr, 
    part_1.p_retailprice, 
    part_1.p_comment, 
    part_1.p_partkey
  from 
    part as part_1
  where part_1.p_brand is not NULL
  limit 25)
EXCEPT
(select  
    supplier_1.s_address, 
    lineitem_1.l_shipinstruct, 
    orders_1.o_totalprice, 
    orders_1.o_comment, 
    orders_2.o_shippriority
  from 
    lineitem as lineitem_1
          inner join orders as orders_1
          on (lineitem_1.l_orderkey = orders_1.o_orderkey )
        inner join orders as orders_2
        on (lineitem_1.l_orderkey = orders_2.o_orderkey )
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
  where orders_1.o_custkey is not NULL
  limit 2);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_nationkey, 
    nation_1.n_regionkey, 
    nation_1.n_name, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_nationkey is not NULL
  limit 13)
UNION
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_nationkey, 
    part_1.p_mfgr, 
    supplier_1.s_comment
  from 
    part as part_1
        inner join nation as nation_2
          inner join supplier as supplier_1
          on (nation_2.n_nationkey = supplier_1.s_suppkey )
        on (part_1.p_partkey = nation_2.n_nationkey )
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
  where part_1.p_container is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey, 
    region_1.r_name, 
    region_1.r_comment
  from 
    region as region_1
  where region_1.r_name <= region_1.r_name
  limit 40)
UNION
(select  
    part_1.p_partkey, 
    part_1.p_brand, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_partkey is not NULL
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_partkey, 
    lineitem_1.l_tax, 
    lineitem_1.l_shipinstruct
  from 
    lineitem as lineitem_1
  where lineitem_1.l_tax is not NULL
  limit 9)
UNION
(select  
    orders_1.o_shippriority, 
    orders_1.o_totalprice, 
    orders_1.o_clerk
  from 
    orders as orders_1
  where orders_1.o_custkey is not NULL
  limit 42);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_nationkey, 
    nation_1.n_regionkey, 
    nation_1.n_comment
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 21)
UNION
(select  
    partsupp_1.ps_partkey, 
    region_1.r_regionkey, 
    nation_2.n_comment
  from 
    supplier as supplier_1
        inner join nation as nation_2
          inner join partsupp as partsupp_1
          on (nation_2.n_nationkey = partsupp_1.ps_partkey )
        on (supplier_1.s_suppkey = nation_2.n_nationkey )
      inner join region as region_1
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      on (partsupp_1.ps_partkey = region_2.r_regionkey )
  where supplier_1.s_suppkey is not NULL
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_name, 
    orders_1.o_orderstatus, 
    orders_1.o_orderkey, 
    supplier_1.s_nationkey, 
    supplier_1.s_comment, 
    supplier_1.s_address, 
    supplier_1.s_phone
  from 
    orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
  where orders_1.o_orderdate > orders_1.o_orderdate
  limit 19)
EXCEPT
(select  
    orders_2.o_orderpriority, 
    orders_2.o_orderstatus, 
    orders_2.o_orderkey, 
    orders_2.o_custkey, 
    orders_2.o_comment, 
    orders_2.o_comment, 
    orders_2.o_clerk
  from 
    orders as orders_2
  where orders_2.o_custkey is not NULL
  limit 33);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_address, 
    customer_1.c_phone, 
    lineitem_1.l_returnflag
  from 
    lineitem as lineitem_1
        inner join supplier as supplier_1
        on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
  where lineitem_1.l_extendedprice <= lineitem_1.l_discount
  limit 36)
UNION
(select  
    part_1.p_type, 
    part_1.p_brand, 
    part_1.p_mfgr
  from 
    part as part_1
  where part_1.p_type is not NULL
  limit 39);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_orderdate, 
    orders_1.o_orderstatus, 
    partsupp_1.ps_suppkey, 
    orders_1.o_comment, 
    partsupp_1.ps_supplycost, 
    orders_1.o_clerk
  from 
    partsupp as partsupp_1
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
  where partsupp_1.ps_supplycost = orders_1.o_totalprice
  limit 8)
UNION
(select  
    lineitem_1.l_shipdate, 
    lineitem_1.l_returnflag, 
    nation_1.n_regionkey, 
    nation_1.n_comment, 
    lineitem_1.l_extendedprice, 
    nation_1.n_name
  from 
    lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
  where lineitem_1.l_shipinstruct > nation_1.n_name
  limit 30);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_custkey, 
    orders_1.o_orderpriority, 
    orders_1.o_comment, 
    orders_1.o_orderdate, 
    orders_1.o_orderstatus, 
    orders_1.o_orderkey, 
    orders_1.o_clerk
  from 
    orders as orders_1
  where orders_1.o_totalprice is not NULL
  limit 41)
UNION
(select  
    orders_2.o_custkey, 
    part_1.p_brand, 
    part_1.p_comment, 
    orders_2.o_orderdate, 
    part_1.p_mfgr, 
    orders_2.o_shippriority, 
    orders_2.o_orderstatus
  from 
    orders as orders_2
      inner join part as part_1
      on (orders_2.o_orderkey = part_1.p_partkey )
  where part_1.p_mfgr is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_size, 
    part_1.p_retailprice, 
    part_1.p_comment, 
    part_1.p_name, 
    part_1.p_brand, 
    part_1.p_partkey, 
    part_1.p_mfgr, 
    part_1.p_type
  from 
    part as part_1
  where part_1.p_retailprice <= part_1.p_retailprice
  limit 35)
EXCEPT
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_acctbal, 
    region_1.r_comment, 
    supplier_1.s_address, 
    region_1.r_name, 
    region_1.r_regionkey, 
    supplier_1.s_name, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_suppkey = region_1.r_regionkey )
  where supplier_1.s_acctbal is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_acctbal, 
    customer_1.c_phone, 
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_acctbal < customer_1.c_acctbal
  limit 2)
EXCEPT
(select  
    customer_2.c_acctbal, 
    customer_2.c_phone, 
    customer_2.c_custkey
  from 
    customer as customer_2
  where customer_2.c_nationkey is not NULL
  limit 1);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    partsupp_1.ps_partkey, 
    partsupp_1.ps_supplycost, 
    partsupp_1.ps_suppkey, 
    partsupp_1.ps_availqty
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_supplycost is not NULL
  limit 36)
EXCEPT
(select  
    nation_1.n_regionkey, 
    orders_1.o_totalprice, 
    part_1.p_size, 
    nation_2.n_nationkey
  from 
    nation as nation_1
            inner join nation as nation_2
            on (nation_1.n_nationkey = nation_2.n_nationkey )
          inner join part as part_1
          on (nation_1.n_nationkey = part_1.p_partkey )
        inner join partsupp as partsupp_2
        on (part_1.p_partkey = partsupp_2.ps_partkey )
      inner join orders as orders_1
      on (nation_2.n_nationkey = orders_1.o_orderkey )
  where nation_1.n_regionkey is not NULL
  limit 36);
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_4.l_returnflag, 
  lineitem_2.l_tax, 
  customer_1.c_address
from 
  lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      inner join customer as customer_1
        inner join lineitem as lineitem_3
        on (customer_1.c_custkey = lineitem_3.l_orderkey )
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join orders as orders_1
        inner join lineitem as lineitem_4
        on (orders_1.o_orderkey = lineitem_4.l_orderkey )
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    on (lineitem_2.l_orderkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_regionkey is not NULL
  limit 23)
UNION
(select  
    partsupp_1.ps_suppkey
  from 
    partsupp as partsupp_1
  where partsupp_1.ps_comment is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_phone, 
    supplier_1.s_suppkey, 
    supplier_1.s_name, 
    supplier_1.s_acctbal, 
    supplier_1.s_comment
  from 
    supplier as supplier_1
  where supplier_1.s_acctbal is not NULL
  limit 17)
EXCEPT
(select  
    orders_1.o_custkey, 
    orders_1.o_orderpriority, 
    orders_1.o_shippriority, 
    orders_1.o_clerk, 
    orders_1.o_totalprice, 
    orders_1.o_comment
  from 
    nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
  where orders_1.o_orderdate >= orders_1.o_orderdate
  limit 1);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_type, 
    customer_1.c_address, 
    part_1.p_name, 
    customer_1.c_comment
  from 
    customer as customer_1
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
  where part_1.p_partkey is not NULL
  limit 15)
UNION
(select  
    customer_2.c_comment, 
    customer_2.c_name, 
    customer_2.c_address, 
    customer_2.c_address
  from 
    customer as customer_2
  where customer_2.c_acctbal is not NULL
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  orders_1.o_custkey, 
  nation_1.n_regionkey, 
  orders_1.o_comment
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_comment is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_name, 
    customer_1.c_acctbal, 
    customer_1.c_custkey, 
    customer_1.c_address, 
    customer_1.c_phone, 
    customer_1.c_mktsegment, 
    customer_1.c_comment
  from 
    customer as customer_1
  where customer_1.c_acctbal is not NULL
  limit 8)
UNION
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_extendedprice, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_comment, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_comment
  from 
    lineitem as lineitem_1
  where lineitem_1.l_comment is not NULL
  limit 9);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_phone, 
    supplier_1.s_name
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 4)
UNION
(select  
    nation_1.n_name, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 15);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    supplier_1.s_suppkey, 
    supplier_1.s_address, 
    supplier_1.s_acctbal, 
    supplier_1.s_phone
  from 
    supplier as supplier_1
  where supplier_1.s_comment is not NULL
  limit 36)
EXCEPT
(select  
    partsupp_1.ps_availqty, 
    partsupp_1.ps_comment, 
    partsupp_1.ps_supplycost, 
    nation_1.n_name
  from 
    partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
  where nation_1.n_regionkey is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_address, 
    customer_1.c_acctbal, 
    customer_1.c_phone, 
    customer_1.c_comment, 
    customer_1.c_nationkey
  from 
    customer as customer_1
  where customer_1.c_mktsegment is not NULL
  limit 36)
UNION
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_extendedprice, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_comment, 
    lineitem_1.l_orderkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_returnflag is not NULL
  limit 17);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name, 
    nation_1.n_nationkey, 
    customer_2.c_address, 
    customer_1.c_custkey, 
    nation_1.n_comment, 
    customer_2.c_name
  from 
    customer as customer_1
      inner join nation as nation_1
        inner join customer as customer_2
        on (nation_1.n_nationkey = customer_2.c_custkey )
      on (customer_1.c_custkey = nation_1.n_nationkey )
  where nation_1.n_nationkey is not NULL
  limit 25)
UNION
(select  
    lineitem_2.l_returnflag, 
    partsupp_1.ps_availqty, 
    lineitem_2.l_comment, 
    lineitem_1.l_partkey, 
    partsupp_2.ps_comment, 
    partsupp_1.ps_comment
  from 
    lineitem as lineitem_1
      inner join partsupp as partsupp_1
        inner join lineitem as lineitem_2
          inner join partsupp as partsupp_2
          on (lineitem_2.l_orderkey = partsupp_2.ps_partkey )
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
  where lineitem_1.l_shipmode < lineitem_2.l_shipmode
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_partkey, 
    part_1.p_size, 
    part_1.p_mfgr, 
    part_1.p_container, 
    part_1.p_brand
  from 
    part as part_1
  where part_1.p_retailprice is not NULL
  limit 25)
EXCEPT
(select  
    nation_1.n_regionkey, 
    nation_1.n_nationkey, 
    nation_1.n_name, 
    nation_1.n_name, 
    nation_1.n_name
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 5);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_comment
from 
  customer as customer_1
    inner join orders as orders_1
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where orders_1.o_orderdate < orders_1.o_orderdate
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey
from 
  part as part_1
where part_1.p_size < part_1.p_partkey
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    nation_1.n_name, 
    nation_1.n_regionkey, 
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_regionkey is not NULL
  limit 10)
UNION
(select  
    nation_2.n_name, 
    nation_2.n_nationkey, 
    nation_2.n_regionkey
  from 
    nation as nation_2
  where nation_2.n_comment is not NULL
  limit 39);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    customer_1.c_address, 
    part_2.p_name, 
    part_2.p_size, 
    part_1.p_retailprice, 
    region_1.r_regionkey
  from 
    customer as customer_1
          inner join part as part_1
          on (customer_1.c_custkey = part_1.p_partkey )
        inner join region as region_1
        on (part_1.p_partkey = region_1.r_regionkey )
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
  where region_1.r_comment is not NULL
  limit 16)
UNION
(select  
    lineitem_1.l_comment, 
    supplier_1.s_address, 
    lineitem_1.l_partkey, 
    lineitem_1.l_discount, 
    supplier_1.s_suppkey
  from 
    lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
  where lineitem_1.l_suppkey is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    supplier_1.s_comment, 
    supplier_1.s_suppkey
  from 
    supplier as supplier_1
  where supplier_1.s_name >= supplier_1.s_phone
  limit 41)
UNION
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_partkey
  from 
    lineitem as lineitem_1
  where lineitem_1.l_linenumber is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    nation_1.n_nationkey
  from 
    nation as nation_1
  where nation_1.n_comment is not NULL
  limit 3)
EXCEPT
(select  
    customer_1.c_custkey
  from 
    customer as customer_1
  where customer_1.c_name is not NULL
  limit 24);
-- meta {"num_joins":6,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    lineitem_1.l_linestatus, 
    lineitem_1.l_extendedprice, 
    lineitem_1.l_commitdate, 
    supplier_1.s_acctbal, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_partkey, 
    lineitem_1.l_receiptdate
  from 
    lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
  where lineitem_1.l_shipdate is not NULL
  limit 21)
UNION
(select  
    orders_1.o_clerk, 
    supplier_2.s_acctbal, 
    orders_1.o_orderdate, 
    supplier_3.s_acctbal, 
    orders_1.o_custkey, 
    supplier_4.s_suppkey, 
    orders_1.o_orderdate
  from 
    supplier as supplier_2
        inner join orders as orders_1
          inner join part as part_1
          on (orders_1.o_orderkey = part_1.p_partkey )
        on (supplier_2.s_suppkey = orders_1.o_orderkey )
      inner join partsupp as partsupp_1
          inner join supplier as supplier_3
          on (partsupp_1.ps_partkey = supplier_3.s_suppkey )
        inner join supplier as supplier_4
        on (partsupp_1.ps_partkey = supplier_4.s_suppkey )
      on (part_1.p_partkey = supplier_4.s_suppkey )
  where supplier_2.s_address is not NULL
  limit 22);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_regionkey, 
    supplier_1.s_suppkey, 
    region_1.r_name, 
    supplier_1.s_comment, 
    supplier_1.s_phone, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_suppkey = region_1.r_regionkey )
  where region_1.r_name >= supplier_1.s_name
  limit 8)
EXCEPT
(select  
    part_1.p_size, 
    orders_1.o_custkey, 
    part_1.p_brand, 
    part_1.p_name, 
    orders_1.o_orderpriority, 
    part_1.p_partkey
  from 
    region as region_2
      inner join part as part_1
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      on (region_2.r_regionkey = orders_1.o_orderkey )
  where region_2.r_regionkey is not NULL
  limit 28);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    orders_1.o_totalprice
  from 
    supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_suppkey = nation_1.n_nationkey )
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
  where nation_1.n_name > supplier_1.s_name
  limit 16)
UNION
(select  
    lineitem_1.l_tax
  from 
    supplier as supplier_2
      inner join part as part_1
        inner join lineitem as lineitem_1
          inner join customer as customer_1
          on (lineitem_1.l_orderkey = customer_1.c_custkey )
        on (part_1.p_partkey = lineitem_1.l_orderkey )
      on (supplier_2.s_suppkey = lineitem_1.l_orderkey )
  where supplier_2.s_address is not NULL
  limit 10);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_linenumber, 
    nation_1.n_regionkey, 
    partsupp_1.ps_partkey, 
    orders_1.o_clerk, 
    orders_1.o_totalprice, 
    nation_1.n_nationkey
  from 
    part as part_1
        inner join partsupp as partsupp_1
          inner join orders as orders_1
          on (partsupp_1.ps_partkey = orders_1.o_orderkey )
        on (part_1.p_partkey = orders_1.o_orderkey )
      inner join nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.n_nationkey = lineitem_1.l_orderkey )
      on (orders_1.o_orderkey = nation_1.n_nationkey )
  where orders_1.o_orderstatus >= lineitem_1.l_shipinstruct
  limit 37)
EXCEPT
(select  
    supplier_1.s_nationkey, 
    supplier_1.s_suppkey, 
    supplier_1.s_nationkey, 
    supplier_1.s_name, 
    supplier_1.s_acctbal, 
    supplier_1.s_nationkey
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 39);
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_type
  from 
    part as part_1
  where part_1.p_name is not NULL
  limit 30)
EXCEPT
(select  
    part_2.p_type
  from 
    lineitem as lineitem_1
          inner join supplier as supplier_1
          on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
        inner join part as part_2
          inner join orders as orders_1
          on (part_2.p_partkey = orders_1.o_orderkey )
        on (supplier_1.s_suppkey = orders_1.o_orderkey )
      inner join region as region_1
          inner join region as region_2
          on (region_1.r_regionkey = region_2.r_regionkey )
        inner join lineitem as lineitem_2
        on (region_1.r_regionkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
  where region_2.r_regionkey is not NULL
  limit 6);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    region_1.r_comment, 
    region_1.r_regionkey, 
    region_1.r_name
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 13)
EXCEPT
(select  
    region_2.r_comment, 
    region_2.r_regionkey, 
    region_2.r_name
  from 
    region as region_2
  where region_2.r_name is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    part_1.p_brand, 
    part_1.p_comment, 
    part_1.p_size
  from 
    part as part_1
  where part_1.p_brand <= part_1.p_container
  limit 31)
EXCEPT
(select  
    region_1.r_name, 
    region_1.r_comment, 
    region_1.r_regionkey
  from 
    region as region_1
  where region_1.r_name is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    lineitem_1.l_comment, 
    lineitem_1.l_linenumber, 
    lineitem_1.l_extendedprice, 
    lineitem_1.l_shipinstruct, 
    lineitem_1.l_quantity, 
    lineitem_1.l_suppkey, 
    lineitem_1.l_tax
  from 
    lineitem as lineitem_1
  where lineitem_1.l_extendedprice is not NULL
  limit 11)
EXCEPT
(select  
    part_1.p_type, 
    part_1.p_size, 
    part_1.p_retailprice, 
    part_1.p_mfgr, 
    part_1.p_retailprice, 
    part_1.p_partkey, 
    part_1.p_retailprice
  from 
    part as part_1
  where part_1.p_mfgr is not NULL
  limit 30);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    customer_1.c_acctbal, 
    customer_1.c_mktsegment, 
    orders_1.o_orderstatus, 
    orders_1.o_totalprice
  from 
    customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
  where orders_1.o_custkey is not NULL
  limit 9)
EXCEPT
(select  
    lineitem_1.l_tax, 
    lineitem_1.l_shipmode, 
    lineitem_1.l_linestatus, 
    lineitem_1.l_quantity
  from 
    lineitem as lineitem_1
  where lineitem_1.l_shipdate is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    part_1.p_comment, 
    part_1.p_retailprice
  from 
    part as part_1
  where part_1.p_retailprice is not NULL
  limit 38)
UNION
(select  
    supplier_1.s_comment, 
    supplier_1.s_acctbal
  from 
    supplier as supplier_1
  where supplier_1.s_nationkey is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_size
from 
  part as part_1
where part_1.p_comment is not NULL
limit 13;
