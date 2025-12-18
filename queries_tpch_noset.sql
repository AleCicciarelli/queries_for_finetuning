-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_orderkey, 
  count(
    lineitem_1.l_returnflag), 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 33;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  region_1.r_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_commitdate), 
  supplier_1.s_name, 
  supplier_2.s_acctbal, 
  region_1.r_regionkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate
from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
        inner join region as region_1
        on (lineitem_1.l_orderkey = region_1.r_regionkey )
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    inner join supplier as supplier_2
    on (region_1.r_regionkey = supplier_2.s_suppkey )
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_discount, lineitem_1.l_receiptdate, lineitem_1.l_shipmode, region_1.r_comment, region_1.r_regionkey, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey, supplier_2.s_acctbal
limit 32;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_mktsegment, 
  min(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_tax
from 
  customer as customer_1
    inner join nation as nation_1
        inner join supplier as supplier_1
          inner join lineitem as lineitem_1
          on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
        on (nation_1.n_nationkey = lineitem_1.l_orderkey )
      inner join customer as customer_2
        inner join supplier as supplier_2
        on (customer_2.c_custkey = supplier_2.s_suppkey )
      on (lineitem_1.l_orderkey = customer_2.c_custkey )
    on (customer_1.c_custkey = supplier_2.s_suppkey )
where nation_1.n_nationkey is not NULL
group by customer_2.c_mktsegment, lineitem_1.l_tax
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  count(
    customer_1.c_phone), 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_nationkey)
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    orders_1.o_custkey)
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 10;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  count(
    orders_1.o_orderkey), 
  partsupp_2.ps_partkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  count(
    partsupp_2.ps_comment), 
  partsupp_2.ps_availqty
from 
  orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_orderkey = partsupp_1.ps_partkey )
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where lineitem_1.l_discount is not NULL
group by orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_orderpriority, partsupp_2.ps_availqty, partsupp_2.ps_partkey
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipinstruct
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_receiptdate >= lineitem_1.l_shipdate
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  count(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  sum(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  count(*)
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 10;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  sum(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  sum(
    customer_1.c_nationkey), 
  sum(
    customer_1.c_acctbal), 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey
limit 20;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  avg(
    part_1.p_partkey), 
  part_1.p_container, 
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_partkey = part_1.p_size
group by part_1.p_brand, part_1.p_container, part_1.p_partkey, part_1.p_retailprice, part_1.p_size
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity < lineitem_1.l_extendedprice
limit 40;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  max(
    partsupp_1.ps_availqty)
from 
  region as region_1
    inner join customer as customer_1
        inner join partsupp as partsupp_1
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    on (region_1.r_regionkey = customer_1.c_custkey )
where partsupp_1.ps_suppkey is not NULL
group by customer_1.c_nationkey
limit 37;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_name = region_1.r_name
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_totalprice = orders_1.o_totalprice
limit 26;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  lineitem_1.l_tax
from 
  supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_extendedprice < lineitem_1.l_discount
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  count(*), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  lineitem_1.l_returnflag
from 
  orders as orders_1
      inner join region as region_1
        inner join partsupp as partsupp_1
        on (region_1.r_regionkey = partsupp_1.ps_partkey )
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where partsupp_1.ps_availqty is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 14;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_2.o_orderpriority, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_partkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_shippriority), 
  count(*), 
  lineitem_1.l_returnflag, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_2.o_orderstatus, 
  orders_1.o_totalprice, 
  min(
    orders_2.o_custkey), 
  orders_2.o_clerk, 
  orders_2.o_orderkey, 
  lineitem_1.l_linenumber, 
  orders_2.o_shippriority, 
  orders_2.o_totalprice
from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_returnflag, lineitem_1.l_shipmode, orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_shippriority, orders_1.o_totalprice, orders_2.o_clerk, orders_2.o_orderkey, orders_2.o_orderpriority, orders_2.o_orderstatus, orders_2.o_shippriority, orders_2.o_totalprice
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_comment, 
  lineitem_1.l_discount, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey > lineitem_1.l_linenumber
limit 12;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_mfgr, 
  part_1.p_container, 
  count(*), 
  avg(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_size
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_size
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 36;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  part_1.p_name, 
  part_2.p_container
from 
  part as part_1
    inner join part as part_2
      inner join customer as customer_1
      on (part_2.p_partkey = customer_1.c_custkey )
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_retailprice is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name
from 
  part as part_1
where part_1.p_size is not NULL
limit 17;
-- meta {"num_joins":4,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_2.ps_availqty, 
  nation_1.n_regionkey, 
  max(
    orders_1.o_orderdate), 
  partsupp_1.ps_partkey, 
  region_1.r_regionkey, 
  count(*), 
  partsupp_2.ps_partkey, 
  sum(
    orders_1.o_totalprice), 
  min(
    partsupp_2.ps_supplycost), 
  orders_1.o_totalprice, 
  region_1.r_comment, 
  partsupp_2.ps_supplycost, 
  partsupp_1.ps_availqty, 
  max(
    region_1.r_regionkey), 
  partsupp_2.ps_comment, 
  partsupp_2.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  region_1.r_name
from 
  nation as nation_1
        inner join orders as orders_1
          inner join region as region_1
          on (orders_1.o_orderkey = region_1.r_regionkey )
        on (nation_1.n_nationkey = orders_1.o_orderkey )
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
    on (region_1.r_regionkey = partsupp_2.ps_partkey )
where region_1.r_regionkey is not NULL
group by nation_1.n_regionkey, orders_1.o_totalprice, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_2.ps_availqty, partsupp_2.ps_comment, partsupp_2.ps_partkey, partsupp_2.ps_suppkey, partsupp_2.ps_supplycost, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
limit 40;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  orders_1.o_comment, 
  count(
    orders_1.o_comment), 
  count(
    orders_1.o_orderdate)
from 
  region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where orders_1.o_orderkey is not NULL
group by nation_1.n_regionkey, orders_1.o_comment
limit 41;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  sum(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber < lineitem_1.l_partkey
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipmode
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_container < lineitem_1.l_linestatus
limit 26;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  min(
    partsupp_1.ps_suppkey), 
  region_1.r_name
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where region_1.r_name > region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 14;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    lineitem_1.l_linenumber), 
  lineitem_1.l_quantity, 
  lineitem_1.l_tax, 
  lineitem_1.l_commitdate, 
  sum(
    lineitem_1.l_suppkey), 
  count(
    lineitem_1.l_shipmode), 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber >= lineitem_1.l_suppkey
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_quantity, lineitem_1.l_tax
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey)
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_orderstatus is not NULL
group by orders_1.o_orderstatus
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_comment
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode = lineitem_1.l_shipinstruct
limit 31;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  region_1.r_comment, 
  region_2.r_comment
from 
  orders as orders_1
    inner join region as region_1
        inner join lineitem as lineitem_1
        on (region_1.r_regionkey = lineitem_1.l_orderkey )
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_returnflag is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, region_1.r_regionkey
limit 34;
-- meta {"num_joins":0,"num_aggregates":10,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  max(
    customer_1.c_acctbal), 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_acctbal), 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_nationkey, 
  max(
    customer_1.c_custkey), 
  max(
    customer_1.c_acctbal), 
  max(
    customer_1.c_acctbal), 
  sum(
    customer_1.c_custkey), 
  max(
    customer_1.c_acctbal), 
  customer_1.c_phone, 
  sum(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_custkey > customer_1.c_nationkey
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 12;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    supplier_1.s_nationkey), 
  supplier_2.s_suppkey
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_acctbal is not NULL
group by supplier_2.s_suppkey
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 37;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  region_1.r_name, 
  min(
    orders_1.o_orderdate)
from 
  region as region_1
    inner join orders as orders_1
        inner join region as region_2
        on (orders_1.o_orderkey = region_2.r_regionkey )
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    on (region_1.r_regionkey = nation_1.n_nationkey )
where orders_1.o_clerk >= region_1.r_name
group by orders_1.o_shippriority, region_1.r_name
limit 31;
-- meta {"num_joins":5,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_shippriority), 
  partsupp_1.ps_partkey, 
  avg(
    lineitem_1.l_partkey), 
  lineitem_2.l_linenumber, 
  min(
    partsupp_1.ps_suppkey), 
  region_1.r_comment, 
  region_2.r_regionkey, 
  lineitem_2.l_commitdate, 
  max(
    lineitem_1.l_orderkey), 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_shipdate
from 
  partsupp as partsupp_1
        inner join lineitem as lineitem_1
        on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
      inner join region as region_1
        inner join orders as orders_1
          inner join region as region_2
          on (orders_1.o_orderkey = region_2.r_regionkey )
        on (region_1.r_regionkey = orders_1.o_orderkey )
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    inner join lineitem as lineitem_2
    on (partsupp_1.ps_partkey = lineitem_2.l_orderkey )
where orders_1.o_orderpriority > region_2.r_name
group by lineitem_1.l_shipdate, lineitem_2.l_commitdate, lineitem_2.l_linenumber, orders_1.o_orderpriority, orders_1.o_shippriority, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, region_1.r_comment, region_2.r_regionkey
limit 17;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice, 
  orders_1.o_comment
from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_partkey is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_name
from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_orderkey >= orders_1.o_shippriority
limit 6;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  count(
    customer_1.c_comment), 
  customer_1.c_comment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 17;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  partsupp_1.ps_supplycost
from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_2.c_phone is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 26;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    lineitem_1.l_tax), 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_quantity, 
  lineitem_1.l_tax, 
  partsupp_1.ps_supplycost
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_quantity, lineitem_1.l_tax, partsupp_1.ps_supplycost
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_nationkey >= supplier_1.s_suppkey
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_suppkey
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 24;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  avg(
    supplier_1.s_acctbal), 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  customer_1.c_phone, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  sum(
    customer_1.c_custkey)
from 
  region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where region_1.r_comment is not NULL
group by customer_1.c_phone, region_1.r_name, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_suppkey
limit 27;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  part_1.p_retailprice, 
  part_2.p_retailprice, 
  nation_1.n_name, 
  part_1.p_container, 
  max(
    orders_1.o_orderdate)
from 
  nation as nation_1
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      inner join orders as orders_1
      on (part_1.p_partkey = orders_1.o_orderkey )
    inner join part as part_2
      inner join orders as orders_2
      on (part_2.p_partkey = orders_2.o_orderkey )
    on (nation_1.n_nationkey = part_2.p_partkey )
where orders_1.o_orderstatus < orders_2.o_clerk
group by nation_1.n_name, orders_1.o_orderdate, part_1.p_container, part_1.p_retailprice, part_2.p_retailprice
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container
from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  max(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_acctbal < customer_1.c_acctbal
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey
limit 27;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment
from 
  customer as customer_1
    inner join region as region_1
      inner join lineitem as lineitem_1
        inner join part as part_1
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      on (region_1.r_regionkey = part_1.p_partkey )
    on (customer_1.c_custkey = part_1.p_partkey )
where lineitem_1.l_extendedprice is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 16;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where region_1.r_regionkey is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_type is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_name is not NULL
limit 26;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_nationkey), 
  region_1.r_name, 
  customer_1.c_nationkey, 
  region_1.r_comment, 
  customer_1.c_comment
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
group by customer_1.c_comment, customer_1.c_nationkey, region_1.r_comment, region_1.r_name
limit 26;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    nation_1.n_regionkey), 
  region_1.r_comment, 
  max(
    nation_1.n_nationkey), 
  count(
    nation_1.n_name), 
  region_1.r_regionkey, 
  nation_1.n_regionkey
from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_comment is not NULL
group by nation_1.n_regionkey, region_1.r_comment, region_1.r_regionkey
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
limit 6;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity, 
  max(
    lineitem_1.l_tax), 
  orders_1.o_totalprice, 
  min(
    lineitem_1.l_orderkey), 
  min(
    orders_1.o_orderkey), 
  orders_1.o_shippriority, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_comment, 
  orders_1.o_orderdate
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_orderkey is not NULL
group by lineitem_1.l_quantity, lineitem_1.l_receiptdate, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_totalprice
limit 18;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  region_1.r_comment, 
  max(
    lineitem_1.l_linenumber), 
  min(
    orders_1.o_orderdate)
from 
  orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by orders_1.o_comment, region_1.r_comment
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 5;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where partsupp_1.ps_availqty is not NULL
limit 34;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  orders_1.o_totalprice, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_shippriority), 
  min(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_custkey
from 
  orders as orders_1
    inner join region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where region_1.r_name is not NULL
group by orders_1.o_custkey, orders_1.o_orderstatus, orders_1.o_totalprice, region_1.r_comment, region_1.r_name, region_1.r_regionkey, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone
limit 11;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  min(
    supplier_1.s_suppkey), 
  count(*)
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_phone = region_1.r_name
group by region_1.r_name, region_1.r_regionkey
limit 5;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_orderdate), 
  supplier_1.s_address, 
  nation_1.n_regionkey, 
  orders_1.o_orderstatus, 
  supplier_1.s_phone
from 
  supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where orders_1.o_orderdate = orders_1.o_orderdate
group by nation_1.n_regionkey, orders_1.o_orderstatus, supplier_1.s_address, supplier_1.s_phone
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_partkey, 
  part_1.p_size, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_comment is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey < nation_1.n_regionkey
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  count(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  avg(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_custkey <= customer_1.c_nationkey
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  count(
    region_1.r_name), 
  min(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  count(
    region_1.r_comment)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  count(
    region_1.r_name)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where supplier_1.s_address is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  sum(
    part_1.p_retailprice), 
  part_1.p_mfgr, 
  region_1.r_name
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
group by part_1.p_mfgr, part_1.p_name, region_1.r_name
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container
from 
  part as part_1
where part_1.p_size <= part_1.p_partkey
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  customer_1.c_name, 
  supplier_1.s_name
from 
  supplier as supplier_1
    inner join orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where customer_1.c_custkey is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_size, 
  min(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_size, part_1.p_type
limit 41;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_2.ps_supplycost, 
  max(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_supplycost < partsupp_2.ps_supplycost
group by partsupp_1.ps_partkey, partsupp_2.ps_supplycost
limit 10;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_3.s_acctbal, 
  supplier_1.s_phone, 
  supplier_3.s_name, 
  supplier_4.s_nationkey, 
  supplier_4.s_address, 
  supplier_3.s_comment, 
  supplier_4.s_comment
from 
  customer as customer_1
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      inner join supplier as supplier_1
        inner join supplier as supplier_2
          inner join supplier as supplier_3
          on (supplier_2.s_suppkey = supplier_3.s_suppkey )
        on (supplier_1.s_suppkey = supplier_3.s_suppkey )
      on (customer_1.c_custkey = supplier_1.s_suppkey )
    inner join supplier as supplier_4
      inner join orders as orders_1
        inner join region as region_1
        on (orders_1.o_orderkey = region_1.r_regionkey )
      on (supplier_4.s_suppkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = supplier_4.s_suppkey )
where supplier_3.s_nationkey is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  sum(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipinstruct, 
  count(
    lineitem_1.l_shipinstruct)
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_shipinstruct
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 9;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  lineitem_1.l_suppkey, 
  part_2.p_name, 
  part_2.p_container, 
  part_1.p_partkey, 
  part_2.p_retailprice, 
  min(
    supplier_1.s_nationkey), 
  lineitem_1.l_shipinstruct, 
  customer_1.c_address
from 
  part as part_1
    inner join region as region_1
        inner join lineitem as lineitem_1
        on (region_1.r_regionkey = lineitem_1.l_orderkey )
      inner join part as part_2
          inner join customer as customer_1
          on (part_2.p_partkey = customer_1.c_custkey )
        inner join supplier as supplier_1
        on (customer_1.c_custkey = supplier_1.s_suppkey )
      on (lineitem_1.l_orderkey = part_2.p_partkey )
    on (part_1.p_partkey = part_2.p_partkey )
where region_1.r_comment is not NULL
group by customer_1.c_address, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, part_1.p_partkey, part_2.p_container, part_2.p_name, part_2.p_retailprice, region_1.r_name
limit 3;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  partsupp_1.ps_supplycost, 
  count(*)
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_name = supplier_1.s_phone
group by partsupp_1.ps_supplycost, supplier_1.s_suppkey
limit 26;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_2.s_address, 
  supplier_1.s_comment, 
  avg(
    supplier_2.s_suppkey)
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_name is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_2.s_address
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_partkey = part_1.p_size
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  customer_1.c_address, 
  customer_1.c_comment, 
  max(
    region_1.r_regionkey), 
  customer_1.c_mktsegment
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_nationkey is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, region_1.r_comment, region_1.r_regionkey
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_name <= region_1.r_name
limit 40;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  part_1.p_container, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  min(
    part_1.p_partkey)
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where part_1.p_retailprice is not NULL
group by orders_1.o_orderkey, orders_1.o_shippriority, part_1.p_container, part_1.p_name
limit 15;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_name, 
  part_1.p_container, 
  part_2.p_brand, 
  part_1.p_size, 
  part_2.p_comment, 
  avg(
    part_1.p_retailprice), 
  part_2.p_retailprice, 
  count(*), 
  min(
    part_2.p_partkey)
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_partkey is not NULL
group by part_1.p_container, part_1.p_size, part_2.p_brand, part_2.p_comment, part_2.p_name, part_2.p_retailprice
limit 24;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  sum(
    partsupp_1.ps_supplycost), 
  avg(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  avg(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_custkey), 
  min(
    orders_1.o_custkey), 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_shippriority >= orders_1.o_custkey
group by orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 3;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_receiptdate), 
  max(
    lineitem_1.l_commitdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_tax
limit 41;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  customer_2.c_mktsegment, 
  nation_1.n_name, 
  region_1.r_regionkey, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  avg(
    customer_2.c_custkey)
from 
  nation as nation_1
    inner join customer as customer_1
        inner join customer as customer_2
        on (customer_1.c_custkey = customer_2.c_custkey )
      inner join region as region_1
      on (customer_2.c_custkey = region_1.r_regionkey )
    on (nation_1.n_nationkey = customer_2.c_custkey )
where customer_2.c_acctbal > customer_1.c_acctbal
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_mktsegment, customer_2.c_mktsegment, nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, region_1.r_regionkey
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 8;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  supplier_1.s_address, 
  region_1.r_regionkey
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.r_regionkey is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  count(*)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 30;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  avg(
    customer_3.c_custkey), 
  customer_3.c_mktsegment, 
  customer_3.c_address, 
  customer_1.c_phone
from 
  customer as customer_1
    inner join customer as customer_2
      inner join customer as customer_3
      on (customer_2.c_custkey = customer_3.c_custkey )
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_address is not NULL
group by customer_1.c_custkey, customer_1.c_phone, customer_3.c_address, customer_3.c_mktsegment
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_1.l_receiptdate), 
  max(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 7;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  count(
    nation_1.n_comment), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_custkey <= customer_1.c_nationkey
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag <= lineitem_1.l_shipinstruct
limit 42;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_2.p_size
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_mfgr <= part_2.p_mfgr
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  avg(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  count(
    region_1.r_regionkey)
from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_comment is not NULL
group by region_1.r_name
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    supplier_1.s_nationkey), 
  min(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.s_phone = supplier_1.s_name
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  max(
    orders_1.o_custkey), 
  orders_1.o_custkey, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderpriority
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 7;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_2.r_comment, 
  avg(
    lineitem_1.l_extendedprice)
from 
  orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    inner join lineitem as lineitem_2
      inner join region as region_1
          inner join part as part_1
          on (region_1.r_regionkey = part_1.p_partkey )
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      on (lineitem_2.l_orderkey = region_2.r_regionkey )
    on (lineitem_1.l_orderkey = region_2.r_regionkey )
where region_1.r_regionkey is not NULL
group by region_1.r_regionkey, region_2.r_comment
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  count(*), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority
limit 20;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 35;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  count(*), 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 20;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  lineitem_1.l_commitdate, 
  nation_2.n_name, 
  partsupp_1.ps_availqty
from 
  lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    inner join partsupp as partsupp_1
      inner join nation as nation_2
      on (partsupp_1.ps_partkey = nation_2.n_nationkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  nation_1.n_nationkey
from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where nation_1.n_regionkey is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    part_1.p_retailprice), 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_brand, 
  part_1.p_comment, 
  max(
    part_1.p_size)
from 
  part as part_1
where part_1.p_mfgr > part_1.p_container
group by part_1.p_brand, part_1.p_comment, part_1.p_name, part_1.p_type
limit 21;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where part_1.p_retailprice <= part_1.p_retailprice
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag >= lineitem_1.l_linestatus
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 12;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_phone, 
  lineitem_1.l_extendedprice, 
  partsupp_1.ps_comment
from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where supplier_1.s_suppkey = lineitem_1.l_orderkey
limit 3;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority
from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_orderkey = part_1.p_partkey )
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where part_1.p_mfgr = part_1.p_brand
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 42;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join part as part_1
      inner join supplier as supplier_1
        inner join partsupp as partsupp_2
        on (supplier_1.s_suppkey = partsupp_2.ps_partkey )
      on (part_1.p_partkey = partsupp_2.ps_partkey )
    on (lineitem_1.l_orderkey = partsupp_2.ps_partkey )
where part_1.p_partkey > lineitem_1.l_suppkey
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_size
from 
  part as part_1
where part_1.p_type is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  count(
    partsupp_1.ps_availqty)
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  customer_1.c_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_acctbal >= customer_1.c_acctbal
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 20;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  orders_1.o_orderkey, 
  supplier_1.s_acctbal
from 
  customer as customer_1
      inner join supplier as supplier_1
          inner join orders as orders_1
          on (supplier_1.s_suppkey = orders_1.o_orderkey )
        inner join part as part_1
        on (orders_1.o_orderkey = part_1.p_partkey )
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where orders_1.o_orderdate <= orders_1.o_orderdate
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  count(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_suppkey
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  avg(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderstatus
limit 31;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_2.l_extendedprice, 
  count(*), 
  lineitem_2.l_orderkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_2.l_quantity), 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_2.l_shipmode, 
  lineitem_1.l_comment, 
  lineitem_2.l_comment, 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_returnflag, 
  lineitem_2.l_suppkey
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_discount is not NULL
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_2.l_comment, lineitem_2.l_extendedprice, lineitem_2.l_orderkey, lineitem_2.l_shipmode, lineitem_2.l_suppkey
limit 39;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_comment
from 
  part as part_1
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (part_1.p_partkey = customer_2.c_custkey )
where customer_1.c_phone is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 31;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderpriority is not NULL
limit 39;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice
from 
  part as part_1
    inner join orders as orders_1
        inner join part as part_2
        on (orders_1.o_orderkey = part_2.p_partkey )
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
    on (part_1.p_partkey = region_1.r_regionkey )
where part_2.p_retailprice is not NULL
limit 40;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_name, 
  min(
    partsupp_1.ps_suppkey), 
  customer_1.c_mktsegment
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_phone >= customer_1.c_mktsegment
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 38;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_brand, 
  lineitem_1.l_partkey, 
  part_2.p_container, 
  part_2.p_retailprice, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  max(
    lineitem_1.l_partkey), 
  part_1.p_type, 
  lineitem_1.l_shipdate
from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    inner join part as part_2
      inner join lineitem as lineitem_1
      on (part_2.p_partkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where part_2.p_brand is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_shipdate, part_1.p_type, part_2.p_brand, part_2.p_container, part_2.p_retailprice, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 8;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    supplier_1.s_nationkey), 
  min(
    supplier_1.s_acctbal), 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_phone
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_custkey >= customer_1.c_nationkey
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  customer_2.c_address, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where lineitem_1.l_comment is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderkey), 
  avg(
    orders_1.o_totalprice), 
  orders_1.o_custkey, 
  min(
    orders_1.o_orderdate), 
  max(
    orders_1.o_orderdate), 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  avg(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_custkey <= customer_1.c_nationkey
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_phone
limit 21;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice, 
  max(
    lineitem_1.l_suppkey), 
  min(
    orders_1.o_totalprice), 
  avg(
    lineitem_1.l_tax), 
  supplier_1.s_suppkey, 
  lineitem_1.l_commitdate, 
  region_1.r_comment
from 
  orders as orders_1
          inner join lineitem as lineitem_1
          on (orders_1.o_orderkey = lineitem_1.l_orderkey )
        inner join customer as customer_1
        on (orders_1.o_orderkey = customer_1.c_custkey )
      inner join region as region_1
      on (customer_1.c_custkey = region_1.r_regionkey )
    inner join partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost < lineitem_1.l_quantity
group by lineitem_1.l_commitdate, orders_1.o_totalprice, region_1.r_comment, supplier_1.s_suppkey
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_name = supplier_1.s_phone
limit 40;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    region_1.r_regionkey), 
  min(
    partsupp_1.ps_supplycost), 
  region_1.r_name, 
  count(
    region_1.r_comment), 
  partsupp_1.ps_availqty, 
  region_1.r_regionkey
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
group by partsupp_1.ps_availqty, region_1.r_name, region_1.r_regionkey
limit 23;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  part_1.p_name, 
  part_1.p_brand, 
  customer_1.c_name, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  part_1.p_retailprice, 
  count(
    customer_1.c_address), 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  customer_1.c_custkey
from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where part_1.p_mfgr is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_name, part_1.p_brand, part_1.p_name, part_1.p_retailprice, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 7;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_nationkey = partsupp_1.ps_partkey
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_mfgr >= part_1.p_brand
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
limit 35;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    part_1.p_partkey), 
  customer_1.c_mktsegment, 
  min(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_comment
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_phone < customer_1.c_mktsegment
group by customer_1.c_mktsegment, part_1.p_brand, part_1.p_comment
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where lineitem_1.l_shipmode is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  avg(
    part_1.p_size), 
  part_1.p_size
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 36;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*)
from 
  orders as orders_1
    inner join partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice, part_1.p_type
limit 10;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_1.l_shipdate), 
  region_1.r_regionkey, 
  supplier_1.s_acctbal, 
  region_1.r_name, 
  max(
    lineitem_1.l_linenumber), 
  region_2.r_name, 
  max(
    lineitem_1.l_partkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_name
from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join supplier as supplier_1
        inner join region as region_1
        on (supplier_1.s_suppkey = region_1.r_regionkey )
      inner join region as region_2
      on (supplier_1.s_suppkey = region_2.r_regionkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_availqty is not NULL
group by region_1.r_name, region_1.r_regionkey, region_2.r_name, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_nationkey
limit 36;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    partsupp_1.ps_partkey), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 41;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    partsupp_1.ps_supplycost), 
  max(
    partsupp_1.ps_availqty), 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  partsupp_1.ps_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  min(
    partsupp_1.ps_availqty)
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost = supplier_1.s_acctbal
group by partsupp_1.ps_suppkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey
limit 3;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  part_1.p_container, 
  supplier_1.s_phone
from 
  supplier as supplier_1
    inner join customer as customer_1
        inner join lineitem as lineitem_1
        on (customer_1.c_custkey = lineitem_1.l_orderkey )
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where part_1.p_container is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_comment, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_linenumber is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  max(
    orders_1.o_custkey), 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_orderpriority, orders_1.o_totalprice
limit 10;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_name
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, supplier_1.s_name
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_commitdate), 
  min(
    lineitem_1.l_discount), 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode
limit 19;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  count(
    orders_1.o_totalprice), 
  orders_1.o_orderkey, 
  region_1.r_comment, 
  min(
    orders_1.o_orderdate), 
  avg(
    orders_1.o_totalprice), 
  count(*), 
  max(
    orders_1.o_orderkey), 
  orders_1.o_comment, 
  region_1.r_name
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderkey, orders_1.o_shippriority, orders_1.o_totalprice, region_1.r_comment, region_1.r_name
limit 12;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_comment, 
  part_2.p_type, 
  part_1.p_brand, 
  part_3.p_comment, 
  part_3.p_partkey, 
  count(*), 
  part_2.p_container, 
  part_1.p_name
from 
  part as part_1
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
    inner join part as part_3
    on (part_2.p_partkey = part_3.p_partkey )
where part_3.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_name, part_2.p_comment, part_2.p_container, part_2.p_type, part_3.p_comment, part_3.p_partkey
limit 1;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  count(
    nation_1.n_nationkey), 
  avg(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  supplier_2.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_2.s_phone
from 
  region as region_1
    inner join supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    on (region_1.r_regionkey = supplier_2.s_suppkey )
where region_1.r_regionkey is not NULL
limit 17;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  count(*), 
  customer_2.c_name
from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join nation as nation_1
        inner join customer as customer_2
        on (nation_1.n_nationkey = customer_2.c_custkey )
      on (customer_1.c_custkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = customer_2.c_custkey )
where customer_2.c_acctbal < customer_1.c_acctbal
group by customer_1.c_name, customer_2.c_name
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_name
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_availqty is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  min(
    part_1.p_retailprice), 
  part_1.p_container, 
  part_1.p_type, 
  max(
    part_1.p_size), 
  part_1.p_name, 
  min(
    part_1.p_partkey), 
  part_1.p_brand, 
  sum(
    part_1.p_size)
from 
  part as part_1
where part_1.p_brand > part_1.p_container
group by part_1.p_brand, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_type
limit 8;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  count(
    part_1.p_type), 
  part_1.p_container, 
  part_1.p_retailprice, 
  partsupp_2.ps_comment, 
  sum(
    part_2.p_size), 
  part_1.p_type, 
  partsupp_1.ps_suppkey, 
  avg(
    partsupp_2.ps_supplycost), 
  part_2.p_mfgr, 
  part_2.p_container, 
  min(
    part_2.p_size)
from 
  part as part_1
        inner join partsupp as partsupp_1
        on (part_1.p_partkey = partsupp_1.ps_partkey )
      inner join part as part_2
      on (partsupp_1.ps_partkey = part_2.p_partkey )
    inner join partsupp as partsupp_2
    on (part_1.p_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_availqty is not NULL
group by part_1.p_container, part_1.p_retailprice, part_1.p_size, part_1.p_type, part_2.p_container, part_2.p_mfgr, partsupp_1.ps_suppkey, partsupp_2.ps_comment
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  count(*), 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  avg(
    partsupp_1.ps_availqty), 
  max(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  count(*)
from 
  orders as orders_1
where orders_1.o_orderkey <= orders_1.o_shippriority
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority
limit 30;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  part_2.p_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  part_1.p_comment, 
  part_2.p_partkey
from 
  part as part_1
    inner join part as part_2
      inner join nation as nation_1
      on (part_2.p_partkey = nation_1.n_nationkey )
    on (part_1.p_partkey = part_2.p_partkey )
where nation_1.n_nationkey is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  sum(
    part_1.p_partkey), 
  sum(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_name
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode < lineitem_1.l_returnflag
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  max(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_totalprice <= orders_1.o_totalprice
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate = lineitem_1.l_shipdate
limit 31;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_2.r_comment
from 
  region as region_1
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_comment is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  count(
    partsupp_1.ps_comment), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_brand is not NULL
limit 27;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  min(
    orders_2.o_totalprice), 
  sum(
    orders_2.o_totalprice), 
  orders_2.o_comment
from 
  orders as orders_1
    inner join orders as orders_2
      inner join supplier as supplier_1
      on (orders_2.o_orderkey = supplier_1.s_suppkey )
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_2.o_orderpriority > supplier_1.s_name
group by orders_2.o_comment, supplier_1.s_suppkey
limit 42;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    nation_1.n_comment), 
  nation_1.n_nationkey, 
  partsupp_1.ps_supplycost
from 
  part as part_1
    inner join partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      inner join orders as orders_1
        inner join region as region_1
        on (orders_1.o_orderkey = region_1.r_regionkey )
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    on (part_1.p_partkey = nation_1.n_nationkey )
where orders_1.o_custkey > part_1.p_size
group by nation_1.n_nationkey, partsupp_1.ps_supplycost
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    nation_1.n_comment), 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  avg(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 2;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where partsupp_1.ps_supplycost is not NULL
limit 5;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_2.s_address, 
  partsupp_1.ps_suppkey, 
  part_1.p_name, 
  count(
    supplier_2.s_phone), 
  max(
    partsupp_1.ps_suppkey), 
  supplier_1.s_address
from 
  supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
    inner join part as part_1
      inner join supplier as supplier_2
      on (part_1.p_partkey = supplier_2.s_suppkey )
    on (supplier_1.s_suppkey = part_1.p_partkey )
where partsupp_1.ps_availqty is not NULL
group by part_1.p_name, partsupp_1.ps_suppkey, supplier_1.s_address, supplier_2.s_address
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  count(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_orderkey = part_1.p_partkey )
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_totalprice <= part_1.p_retailprice
group by orders_1.o_clerk
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_totalprice), 
  sum(
    orders_1.o_orderkey), 
  min(
    orders_1.o_custkey)
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_size
from 
  part as part_1
where part_1.p_type is not NULL
limit 31;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  supplier_1.s_suppkey, 
  orders_1.o_custkey, 
  lineitem_1.l_suppkey, 
  min(
    supplier_1.s_suppkey)
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
      inner join region as region_1
        inner join orders as orders_1
        on (region_1.r_regionkey = orders_1.o_orderkey )
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where region_1.r_regionkey is not NULL
group by lineitem_1.l_suppkey, orders_1.o_custkey, region_1.r_comment, supplier_1.s_suppkey
limit 20;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_extendedprice
from 
  customer as customer_1
      inner join region as region_1
      on (customer_1.c_custkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_comment is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 18;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    region_1.r_comment)
from 
  customer as customer_1
      inner join partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.ps_partkey = region_1.r_regionkey )
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join region as region_2
    on (customer_1.c_custkey = region_2.r_regionkey )
where partsupp_1.ps_supplycost > customer_1.c_acctbal
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  count(
    nation_1.n_comment)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate <= lineitem_1.l_commitdate
group by lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct
limit 39;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  part_2.p_partkey, 
  part_2.p_retailprice, 
  part_1.p_partkey, 
  nation_1.n_comment, 
  part_1.p_brand, 
  max(
    part_1.p_size), 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  part_1.p_size, 
  part_2.p_mfgr
from 
  part as part_1
        inner join part as part_2
        on (part_1.p_partkey = part_2.p_partkey )
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    inner join nation as nation_1
    on (part_2.p_partkey = nation_1.n_nationkey )
where customer_1.c_phone is not NULL
group by customer_1.c_comment, customer_1.c_name, customer_1.c_nationkey, nation_1.n_comment, part_1.p_brand, part_1.p_partkey, part_1.p_size, part_2.p_mfgr, part_2.p_partkey, part_2.p_retailprice
limit 35;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  max(
    customer_1.c_acctbal), 
  max(
    customer_1.c_acctbal), 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_nationkey <= customer_1.c_custkey
group by customer_1.c_custkey, customer_1.c_nationkey, customer_1.c_phone
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate, 
  sum(
    lineitem_1.l_suppkey), 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_discount >= lineitem_1.l_extendedprice
group by lineitem_1.l_commitdate, lineitem_1.l_linestatus, lineitem_1.l_orderkey
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey
limit 42;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    lineitem_1.l_extendedprice), 
  part_1.p_mfgr, 
  lineitem_1.l_discount, 
  part_1.p_name
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_mfgr is not NULL
group by lineitem_1.l_discount, part_1.p_mfgr, part_1.p_name
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  orders_1.o_orderpriority
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_phone is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 29;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  part_1.p_partkey, 
  nation_1.n_comment, 
  sum(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  avg(
    customer_1.c_custkey), 
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_name is not NULL
group by customer_1.c_nationkey, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_brand, part_1.p_mfgr, part_1.p_partkey, part_1.p_size
limit 8;
-- meta {"num_joins":6,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_shipdate), 
  lineitem_2.l_comment, 
  supplier_1.s_address, 
  region_1.r_regionkey, 
  max(
    orders_1.o_custkey), 
  partsupp_1.ps_partkey, 
  lineitem_2.l_linenumber, 
  lineitem_1.l_tax
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      inner join orders as orders_1
          inner join lineitem as lineitem_3
          on (orders_1.o_orderkey = lineitem_3.l_orderkey )
        inner join region as region_1
          inner join partsupp as partsupp_1
          on (region_1.r_regionkey = partsupp_1.ps_partkey )
        on (orders_1.o_orderkey = region_1.r_regionkey )
      on (lineitem_1.l_orderkey = lineitem_3.l_orderkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where lineitem_3.l_shipdate is not NULL
group by lineitem_1.l_tax, lineitem_2.l_comment, lineitem_2.l_linenumber, partsupp_1.ps_partkey, region_1.r_regionkey, supplier_1.s_address
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  part_1.p_type
from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  avg(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_address, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_phone
limit 20;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_1.o_orderpriority is not NULL
limit 7;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_phone >= supplier_1.s_name
limit 12;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_phone
limit 25;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    customer_1.c_acctbal), 
  customer_1.c_custkey, 
  max(
    customer_1.c_nationkey), 
  count(*), 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_mktsegment
limit 23;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  avg(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 24;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address
from 
  lineitem as lineitem_1
    inner join orders as orders_1
          inner join supplier as supplier_1
          on (orders_1.o_orderkey = supplier_1.s_suppkey )
        inner join customer as customer_1
        on (supplier_1.s_suppkey = customer_1.c_custkey )
      inner join orders as orders_2
      on (supplier_1.s_suppkey = orders_2.o_orderkey )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_shippriority >= orders_2.o_orderkey
limit 9;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  count(*), 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
group by supplier_1.s_name, supplier_1.s_phone
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_phone < customer_1.c_mktsegment
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 2;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_comment
from 
  supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_suppkey = nation_1.n_nationkey )
      inner join nation as nation_2
      on (supplier_1.s_suppkey = nation_2.n_nationkey )
    inner join customer as customer_1
    on (nation_2.n_nationkey = customer_1.c_custkey )
where customer_1.c_mktsegment is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  part_1.p_type, 
  part_1.p_size, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_1.n_name <= part_1.p_brand
limit 22;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_discount, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate = lineitem_1.l_commitdate
group by lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_tax
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 25;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  avg(
    part_1.p_partkey), 
  part_1.p_size, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_suppkey), 
  part_1.p_retailprice
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_comment is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linestatus, part_1.p_name, part_1.p_retailprice, part_1.p_size
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_orderstatus > orders_1.o_orderpriority
limit 5;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  orders_2.o_orderstatus
from 
  lineitem as lineitem_1
        inner join customer as customer_1
          inner join orders as orders_1
          on (customer_1.c_custkey = orders_1.o_orderkey )
        on (lineitem_1.l_orderkey = orders_1.o_orderkey )
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where orders_1.o_shippriority <= lineitem_1.l_linenumber
group by orders_2.o_orderstatus
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_discount, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey = lineitem_1.l_orderkey
group by lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_quantity, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  min(
    customer_1.c_nationkey)
from 
  customer as customer_1
where customer_1.c_nationkey > customer_1.c_custkey
group by customer_1.c_comment, customer_1.c_mktsegment
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_phone < customer_1.c_mktsegment
group by customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment
limit 12;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_comment, 
  count(
    part_1.p_brand), 
  part_1.p_size, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_totalprice
limit 10;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    customer_1.c_acctbal)
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_regionkey is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  avg(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 11;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_2.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
      inner join partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.ps_partkey = region_1.r_regionkey )
      on (supplier_1.s_suppkey = region_1.r_regionkey )
    inner join supplier as supplier_2
      inner join supplier as supplier_3
      on (supplier_2.s_suppkey = supplier_3.s_suppkey )
    on (partsupp_1.ps_partkey = supplier_2.s_suppkey )
where supplier_1.s_name is not NULL
limit 38;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  sum(
    partsupp_1.ps_suppkey), 
  customer_1.c_custkey, 
  customer_1.c_name, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_1.c_phone < customer_1.c_mktsegment
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 22;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  sum(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 40;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  region_1.r_comment
from 
  orders as orders_1
      inner join region as region_1
        inner join partsupp as partsupp_1
        on (region_1.r_regionkey = partsupp_1.ps_partkey )
      on (orders_1.o_orderkey = region_1.r_regionkey )
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.r_name <= orders_1.o_clerk
limit 9;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  count(*)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 21;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  max(
    customer_1.c_acctbal), 
  customer_1.c_address
from 
  orders as orders_1
      inner join customer as customer_1
        inner join region as region_1
        on (customer_1.c_custkey = region_1.r_regionkey )
      on (orders_1.o_orderkey = region_1.r_regionkey )
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where orders_1.o_shippriority < customer_1.c_custkey
group by customer_1.c_address, nation_1.n_name, nation_1.n_nationkey, orders_1.o_orderkey
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_nationkey
limit 34;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  min(
    orders_1.o_orderdate)
from 
  part as part_1
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where region_1.r_name > part_1.p_mfgr
group by orders_1.o_orderpriority
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 17;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_discount, 
  customer_1.c_name, 
  customer_1.c_address, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_linenumber), 
  count(*), 
  lineitem_1.l_shipdate
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where customer_1.c_nationkey is not NULL
group by customer_1.c_address, customer_1.c_name, lineitem_1.l_discount, lineitem_1.l_shipdate, lineitem_1.l_suppkey
limit 9;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  count(*), 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_name = nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 19;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_partkey, 
  max(
    supplier_1.s_suppkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipmode, 
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_tax < lineitem_1.l_discount
group by lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_shipdate, lineitem_1.l_shipmode, supplier_1.s_comment
limit 7;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_partkey
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where region_1.r_regionkey is not NULL
limit 36;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    nation_3.n_regionkey), 
  max(
    supplier_1.s_acctbal), 
  count(*), 
  nation_1.n_nationkey
from 
  supplier as supplier_1
      inner join nation as nation_1
        inner join nation as nation_2
        on (nation_1.n_nationkey = nation_2.n_nationkey )
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join nation as nation_3
    on (nation_2.n_nationkey = nation_3.n_nationkey )
where nation_2.n_name is not NULL
group by nation_1.n_nationkey
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_shippriority <= orders_1.o_orderkey
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  part_1.p_size, 
  part_1.p_brand
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_retailprice >= part_1.p_retailprice
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  supplier_1.s_address
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_supplycost is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  sum(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_acctbal = supplier_1.s_acctbal
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 38;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  count(
    region_1.r_regionkey), 
  customer_1.c_comment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  count(
    region_1.r_comment)
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_address is not NULL
group by customer_1.c_comment, customer_1.c_phone, region_1.r_regionkey
limit 34;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_tax, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey, 
  min(
    lineitem_1.l_quantity)
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_tax
limit 31;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  orders_1.o_orderdate
from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 11;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where nation_1.n_name >= customer_1.c_phone
group by nation_1.n_nationkey
limit 20;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_discount, 
  nation_1.n_name, 
  lineitem_1.l_tax, 
  max(
    nation_1.n_nationkey), 
  lineitem_1.l_linenumber, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  lineitem_1.l_suppkey, 
  nation_1.n_regionkey
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where lineitem_1.l_shipinstruct >= lineitem_1.l_linestatus
group by lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_suppkey, lineitem_1.l_tax, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_size, 
  min(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_size
limit 9;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 36;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_nationkey
from 
  nation as nation_1
      inner join nation as nation_2
        inner join supplier as supplier_1
        on (nation_2.n_nationkey = supplier_1.s_suppkey )
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join region as region_1
        inner join supplier as supplier_2
        on (region_1.r_regionkey = supplier_2.s_suppkey )
      inner join customer as customer_1
      on (supplier_2.s_suppkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where nation_2.n_regionkey is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  nation_1.n_nationkey, 
  orders_1.o_totalprice, 
  nation_1.n_name, 
  min(
    orders_1.o_totalprice), 
  orders_1.o_custkey, 
  max(
    orders_1.o_shippriority), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  max(
    orders_1.o_totalprice), 
  count(
    nation_1.n_name), 
  orders_1.o_orderkey, 
  min(
    orders_1.o_totalprice), 
  min(
    orders_1.o_orderdate), 
  orders_1.o_shippriority, 
  orders_1.o_orderdate
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_custkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 9;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  count(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty <= partsupp_1.ps_suppkey
group by partsupp_1.ps_availqty, partsupp_1.ps_comment
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
limit 35;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  partsupp_1.ps_availqty, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  sum(
    orders_1.o_custkey)
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderpriority > orders_1.o_clerk
group by orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderstatus, partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 42;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  partsupp_1.ps_comment, 
  lineitem_1.l_commitdate, 
  sum(
    partsupp_1.ps_partkey), 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_partkey > partsupp_1.ps_suppkey
group by lineitem_1.l_commitdate, lineitem_1.l_orderkey, lineitem_1.l_shipinstruct, partsupp_1.ps_comment
limit 35;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  orders_1.o_custkey, 
  nation_1.n_regionkey
from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 17;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    region_2.r_regionkey), 
  region_2.r_regionkey, 
  part_1.p_container, 
  max(
    part_1.p_retailprice), 
  region_2.r_name, 
  part_1.p_brand
from 
  region as region_1
    inner join part as part_1
      inner join region as region_2
      on (part_1.p_partkey = region_2.r_regionkey )
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_container >= part_1.p_brand
group by part_1.p_brand, part_1.p_container, region_2.r_name, region_2.r_regionkey
limit 16;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  min(
    supplier_1.s_suppkey), 
  region_2.r_comment
from 
  customer as customer_1
    inner join region as region_1
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      inner join supplier as supplier_1
      on (region_2.r_regionkey = supplier_1.s_suppkey )
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where region_2.r_comment is not NULL
group by customer_1.c_custkey, customer_1.c_phone, region_2.r_comment, supplier_1.s_nationkey
limit 16;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_name, 
  orders_1.o_orderdate
from 
  part as part_1
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_name, nation_1.n_regionkey
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    part_1.p_retailprice), 
  part_1.p_size, 
  part_1.p_container
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_container, part_1.p_size
limit 30;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  min(
    supplier_1.s_acctbal), 
  avg(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_suppkey), 
  count(
    supplier_1.s_phone), 
  min(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.s_suppkey >= supplier_1.s_nationkey
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  avg(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_nationkey, customer_1.c_phone
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  part_1.p_container, 
  max(
    nation_1.n_regionkey), 
  part_1.p_comment
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where part_1.p_comment is not NULL
group by nation_1.n_name, part_1.p_comment, part_1.p_container
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_2.ps_comment, 
  partsupp_2.ps_suppkey, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_partkey is not NULL
limit 24;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_commitdate), 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_shipdate), 
  min(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_shipinstruct, 
  sum(
    lineitem_1.l_quantity)
from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_extendedprice >= lineitem_1.l_discount
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_nationkey, lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_shipinstruct
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  lineitem_1.l_linestatus
from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
limit 33;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  avg(
    partsupp_1.ps_supplycost), 
  supplier_1.s_name, 
  nation_1.n_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  partsupp_1.ps_partkey, 
  count(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
    inner join nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where partsupp_1.ps_suppkey is not NULL
group by nation_1.n_name, nation_1.n_regionkey, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_mfgr, 
  part_1.p_partkey
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
limit 2;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_acctbal, 
  max(
    customer_2.c_custkey), 
  nation_1.n_nationkey
from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
    inner join customer as customer_2
    on (nation_1.n_nationkey = customer_2.c_custkey )
where nation_1.n_comment is not NULL
group by customer_2.c_acctbal, nation_1.n_nationkey
limit 2;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  avg(
    part_1.p_partkey), 
  part_1.p_type, 
  min(
    part_1.p_size), 
  count(
    part_1.p_mfgr), 
  part_1.p_name
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_type
limit 30;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_2.l_shipinstruct, 
  customer_1.c_mktsegment, 
  supplier_1.s_acctbal, 
  lineitem_2.l_partkey, 
  supplier_1.s_name, 
  lineitem_1.l_tax, 
  supplier_1.s_address
from 
  lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join supplier as supplier_1
    on (lineitem_2.l_orderkey = supplier_1.s_suppkey )
where lineitem_2.l_comment is not NULL
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_commitdate), 
  part_1.p_retailprice
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_retailprice is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_returnflag, part_1.p_retailprice
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
limit 15;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  nation_1.n_regionkey, 
  orders_1.o_clerk
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_1.n_name is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  avg(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 31;
-- meta {"num_joins":8,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_comment, 
  nation_3.n_nationkey, 
  nation_1.n_regionkey, 
  min(
    orders_1.o_custkey), 
  supplier_1.s_name, 
  min(
    orders_1.o_orderdate)
from 
  orders as orders_1
          inner join nation as nation_1
          on (orders_1.o_orderkey = nation_1.n_nationkey )
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join supplier as supplier_1
          inner join nation as nation_2
          on (supplier_1.s_suppkey = nation_2.n_nationkey )
        inner join orders as orders_2
        on (supplier_1.s_suppkey = orders_2.o_orderkey )
      on (nation_1.n_nationkey = orders_2.o_orderkey )
    inner join nation as nation_3
        inner join part as part_1
        on (nation_3.n_nationkey = part_1.p_partkey )
      inner join supplier as supplier_2
      on (nation_3.n_nationkey = supplier_2.s_suppkey )
    on (nation_1.n_nationkey = nation_3.n_nationkey )
where orders_2.o_orderdate is not NULL
group by nation_1.n_regionkey, nation_2.n_comment, nation_3.n_nationkey, supplier_1.s_name
limit 25;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  count(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 1;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  region_1.r_regionkey, 
  customer_3.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_2.c_acctbal, 
  region_2.r_regionkey
from 
  region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    inner join customer as customer_2
        inner join region as region_2
        on (customer_2.c_custkey = region_2.r_regionkey )
      inner join customer as customer_3
      on (customer_2.c_custkey = customer_3.c_custkey )
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_acctbal = customer_2.c_acctbal
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address
limit 22;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority
from 
  supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_suppkey = orders_1.o_orderkey )
      inner join supplier as supplier_2
      on (orders_1.o_orderkey = supplier_2.s_suppkey )
    inner join customer as customer_1
    on (supplier_2.s_suppkey = customer_1.c_custkey )
where customer_1.c_mktsegment is not NULL
group by orders_1.o_orderpriority
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name <= region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 25;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  min(
    orders_1.o_totalprice), 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  nation_1.n_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  orders_1.o_custkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_discount, 
  part_1.p_mfgr
from 
  supplier as supplier_1
        inner join customer as customer_1
          inner join nation as nation_1
          on (customer_1.c_custkey = nation_1.n_nationkey )
        on (supplier_1.s_suppkey = customer_1.c_custkey )
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where customer_1.c_address is not NULL
group by customer_1.c_comment, customer_1.c_mktsegment, lineitem_1.l_discount, lineitem_1.l_linenumber, nation_1.n_comment, orders_1.o_clerk, orders_1.o_custkey, part_1.p_mfgr, supplier_1.s_nationkey, supplier_1.s_phone
limit 1;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  region_1.r_name, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_nationkey), 
  region_1.r_comment, 
  count(
    customer_1.c_comment), 
  region_1.r_regionkey
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_mktsegment = region_1.r_name
group by customer_1.c_address, customer_1.c_mktsegment, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  lineitem_1.l_linestatus, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 30;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey
from 
  customer as customer_1
      inner join region as region_1
            inner join part as part_1
            on (region_1.r_regionkey = part_1.p_partkey )
          inner join partsupp as partsupp_1
          on (region_1.r_regionkey = partsupp_1.ps_partkey )
        inner join supplier as supplier_1
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join region as region_2
    on (supplier_1.s_suppkey = region_2.r_regionkey )
where customer_1.c_address is not NULL
limit 27;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_2.r_name, 
  supplier_1.s_comment, 
  avg(
    supplier_1.s_acctbal), 
  region_1.r_comment, 
  sum(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_suppkey = region_1.r_regionkey )
    inner join region as region_2
    on (supplier_1.s_suppkey = region_2.r_regionkey )
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_2.r_name, supplier_1.s_comment
limit 10;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey)
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_partkey is not NULL
group by nation_1.n_name, nation_1.n_regionkey, part_1.p_comment, part_1.p_retailprice
limit 33;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  orders_1.o_shippriority, 
  nation_1.n_name, 
  partsupp_1.ps_partkey, 
  supplier_2.s_name, 
  nation_1.n_regionkey
from 
  supplier as supplier_1
    inner join nation as nation_1
          inner join partsupp as partsupp_1
          on (nation_1.n_nationkey = partsupp_1.ps_partkey )
        inner join supplier as supplier_2
          inner join nation as nation_2
          on (supplier_2.s_suppkey = nation_2.n_nationkey )
        on (nation_1.n_nationkey = supplier_2.s_suppkey )
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where orders_1.o_totalprice is not NULL
limit 21;
-- meta {"num_joins":6,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_2.l_orderkey), 
  partsupp_1.ps_availqty, 
  min(
    lineitem_3.l_commitdate), 
  lineitem_2.l_partkey, 
  max(
    lineitem_3.l_shipdate), 
  lineitem_3.l_commitdate, 
  partsupp_1.ps_supplycost, 
  lineitem_2.l_returnflag, 
  nation_1.n_name
from 
  part as part_1
          inner join lineitem as lineitem_1
          on (part_1.p_partkey = lineitem_1.l_orderkey )
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      inner join lineitem as lineitem_2
        inner join nation as nation_2
        on (lineitem_2.l_orderkey = nation_2.n_nationkey )
      on (part_1.p_partkey = nation_2.n_nationkey )
    inner join lineitem as lineitem_3
      inner join partsupp as partsupp_1
      on (lineitem_3.l_orderkey = partsupp_1.ps_partkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_3.l_shipinstruct is not NULL
group by lineitem_2.l_partkey, lineitem_2.l_returnflag, lineitem_3.l_commitdate, nation_1.n_name, partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_comment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_nationkey), 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_mfgr, 
  part_2.p_brand, 
  part_2.p_container
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_type is not NULL
limit 27;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_orderkey), 
  max(
    lineitem_1.l_quantity), 
  lineitem_1.l_discount, 
  orders_1.o_orderdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_tax, 
  lineitem_1.l_suppkey, 
  orders_1.o_comment, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_receiptdate, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_tax, orders_1.o_comment, orders_1.o_orderdate
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  part_1.p_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where part_1.p_brand is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
limit 16;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  customer_1.c_acctbal, 
  region_1.r_regionkey, 
  customer_1.c_custkey
from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount > customer_1.c_acctbal
limit 28;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linestatus, 
  count(*), 
  lineitem_1.l_shipinstruct, 
  part_1.p_partkey, 
  avg(
    lineitem_1.l_suppkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate, 
  part_1.p_container, 
  min(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_linenumber), 
  part_1.p_comment
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_brand is not NULL
group by lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, part_1.p_comment, part_1.p_container, part_1.p_partkey
limit 12;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  max(
    lineitem_1.l_partkey), 
  count(
    lineitem_1.l_commitdate), 
  part_2.p_type, 
  lineitem_1.l_quantity, 
  part_1.p_partkey, 
  lineitem_1.l_commitdate
from 
  part as part_1
    inner join part as part_2
        inner join lineitem as lineitem_1
        on (part_2.p_partkey = lineitem_1.l_orderkey )
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (part_1.p_partkey = region_1.r_regionkey )
where part_1.p_partkey > lineitem_1.l_partkey
group by lineitem_1.l_commitdate, lineitem_1.l_quantity, part_1.p_partkey, part_2.p_type, region_1.r_name
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_returnflag
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_shippriority > orders_1.o_custkey
limit 38;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  avg(
    lineitem_1.l_discount), 
  lineitem_1.l_returnflag, 
  avg(
    lineitem_1.l_linenumber), 
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_receiptdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_tax
limit 28;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipdate
from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where lineitem_1.l_comment is not NULL
group by lineitem_1.l_shipdate
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 34;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_address, 
  min(
    part_1.p_partkey), 
  customer_2.c_mktsegment, 
  customer_2.c_acctbal
from 
  part as part_1
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_acctbal is not NULL
group by customer_2.c_acctbal, customer_2.c_address, customer_2.c_mktsegment
limit 13;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  count(
    nation_1.n_name), 
  count(
    nation_1.n_name), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 7;
-- meta {"num_joins":3,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  part_1.p_size, 
  orders_1.o_comment, 
  part_1.p_brand, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_2.c_address, 
  part_1.p_partkey, 
  orders_1.o_custkey, 
  avg(
    orders_1.o_totalprice), 
  part_1.p_name, 
  orders_1.o_totalprice, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  min(
    part_1.p_partkey), 
  count(*), 
  customer_2.c_nationkey, 
  part_1.p_comment, 
  customer_1.c_comment, 
  orders_1.o_orderkey, 
  count(*), 
  max(
    orders_1.o_orderdate), 
  customer_1.c_mktsegment, 
  orders_1.o_orderstatus, 
  part_1.p_mfgr, 
  customer_2.c_comment, 
  customer_2.c_custkey
from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_orderkey = part_1.p_partkey )
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (part_1.p_partkey = customer_2.c_custkey )
where part_1.p_retailprice <= customer_2.c_acctbal
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_phone, customer_2.c_address, customer_2.c_comment, customer_2.c_custkey, customer_2.c_nationkey, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_totalprice, part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 24;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  supplier_1.s_address
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_nationkey < customer_1.c_custkey
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice < lineitem_1.l_tax
limit 37;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_discount = customer_1.c_acctbal
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_shipdate), 
  count(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_discount >= lineitem_1.l_tax
group by lineitem_1.l_quantity, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey = partsupp_1.ps_availqty
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name = region_1.r_name
limit 25;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  customer_2.c_name, 
  customer_1.c_phone, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  partsupp_1.ps_supplycost, 
  customer_2.c_custkey
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
        inner join customer as customer_1
        on (supplier_1.s_suppkey = customer_1.c_custkey )
      inner join region as region_1
        inner join customer as customer_2
        on (region_1.r_regionkey = customer_2.c_custkey )
      on (customer_1.c_custkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_2.c_phone is not NULL
limit 26;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_2.o_shippriority
from 
  nation as nation_1
      inner join orders as orders_1
        inner join supplier as supplier_1
          inner join orders as orders_2
            inner join nation as nation_2
            on (orders_2.o_orderkey = nation_2.n_nationkey )
          on (supplier_1.s_suppkey = nation_2.n_nationkey )
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    inner join customer as customer_1
    on (nation_2.n_nationkey = customer_1.c_custkey )
where orders_2.o_totalprice < customer_1.c_acctbal
limit 21;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_2.ps_supplycost, 
  partsupp_2.ps_partkey, 
  count(
    partsupp_2.ps_availqty), 
  nation_1.n_name, 
  nation_2.n_regionkey, 
  min(
    supplier_1.s_nationkey), 
  nation_1.n_comment, 
  customer_1.c_custkey, 
  count(
    supplier_1.s_name)
from 
  nation as nation_1
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join nation as nation_2
      inner join customer as customer_1
        inner join partsupp as partsupp_2
        on (customer_1.c_custkey = partsupp_2.ps_partkey )
      on (nation_2.n_nationkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where partsupp_1.ps_availqty is not NULL
group by customer_1.c_custkey, nation_1.n_comment, nation_1.n_name, nation_2.n_regionkey, partsupp_2.ps_partkey, partsupp_2.ps_supplycost
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  supplier_1.s_phone, 
  region_1.r_regionkey, 
  partsupp_1.ps_partkey, 
  supplier_1.s_suppkey, 
  partsupp_1.ps_suppkey, 
  supplier_1.s_name, 
  region_2.r_name, 
  region_1.r_name, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  region_2.r_comment, 
  supplier_1.s_comment
from 
  region as region_1
    inner join partsupp as partsupp_1
      inner join region as region_2
        inner join supplier as supplier_1
        on (region_2.r_regionkey = supplier_1.s_suppkey )
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    on (region_1.r_regionkey = region_2.r_regionkey )
where partsupp_1.ps_supplycost = supplier_1.s_acctbal
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, region_1.r_name, region_1.r_regionkey, region_2.r_comment, region_2.r_name, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_phone <= supplier_1.s_name
limit 37;
-- meta {"num_joins":6,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
        inner join partsupp as partsupp_1
        on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    inner join part as part_1
        inner join part as part_2
        on (part_1.p_partkey = part_2.p_partkey )
      inner join partsupp as partsupp_2
        inner join orders as orders_1
        on (partsupp_2.ps_partkey = orders_1.o_orderkey )
      on (part_2.p_partkey = orders_1.o_orderkey )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where part_2.p_retailprice is not NULL
group by lineitem_1.l_commitdate
limit 18;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 33;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  count(*), 
  part_1.p_brand, 
  avg(
    part_1.p_retailprice), 
  nation_1.n_nationkey, 
  nation_2.n_name, 
  part_1.p_name, 
  part_1.p_type, 
  nation_2.n_comment, 
  customer_1.c_custkey
from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    inner join nation as nation_2
      inner join customer as customer_1
      on (nation_2.n_nationkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where customer_1.c_acctbal >= part_1.p_retailprice
group by customer_1.c_custkey, nation_1.n_name, nation_1.n_nationkey, nation_2.n_comment, nation_2.n_name, part_1.p_brand, part_1.p_name, part_1.p_type
limit 5;
-- meta {"num_joins":0,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_comment, 
  sum(
    supplier_1.s_acctbal), 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_suppkey, 
  sum(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_nationkey), 
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 33;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_name, 
  nation_2.n_regionkey, 
  orders_1.o_orderdate, 
  nation_1.n_name, 
  nation_1.n_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderkey, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus, 
  nation_1.n_regionkey, 
  nation_2.n_nationkey
from 
  orders as orders_1
    inner join nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderpriority = orders_1.o_orderstatus
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, nation_2.n_name, nation_2.n_nationkey, nation_2.n_regionkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderstatus
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 22;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  orders_1.o_clerk, 
  supplier_3.s_suppkey
from 
  supplier as supplier_1
      inner join supplier as supplier_2
          inner join nation as nation_1
          on (supplier_2.s_suppkey = nation_1.n_nationkey )
        inner join orders as orders_1
        on (nation_1.n_nationkey = orders_1.o_orderkey )
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join supplier as supplier_3
    on (supplier_2.s_suppkey = supplier_3.s_suppkey )
where supplier_2.s_suppkey is not NULL
limit 29;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_type, 
  sum(
    part_1.p_size), 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_retailprice, 
  max(
    part_1.p_retailprice), 
  avg(
    part_1.p_size), 
  max(
    part_1.p_size)
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_container, part_1.p_mfgr, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 20;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_brand, 
  max(
    part_1.p_size), 
  min(
    part_1.p_size), 
  count(*), 
  part_1.p_name, 
  part_1.p_comment, 
  avg(
    part_1.p_retailprice), 
  part_1.p_mfgr, 
  part_1.p_container, 
  avg(
    part_1.p_size), 
  max(
    part_1.p_size)
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey
limit 39;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_acctbal), 
  max(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_suppkey
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  region_1.r_comment
from 
  region as region_1
where region_1.r_name < region_1.r_name
group by region_1.r_comment
limit 5;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand
from 
  nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_nationkey = customer_1.c_custkey )
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    inner join partsupp as partsupp_1
      inner join part as part_1
        inner join orders as orders_1
          inner join orders as orders_2
          on (orders_1.o_orderkey = orders_2.o_orderkey )
        on (part_1.p_partkey = orders_2.o_orderkey )
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    on (customer_1.c_custkey = part_1.p_partkey )
where nation_2.n_regionkey > orders_1.o_orderkey
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  sum(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_regionkey
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  supplier_1.s_phone, 
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_nationkey = supplier_1.s_suppkey
group by supplier_1.s_name, supplier_1.s_phone
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  max(
    part_1.p_partkey), 
  part_1.p_container
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_container, part_1.p_name
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_name, 
  min(
    part_1.p_size), 
  part_1.p_comment, 
  min(
    part_1.p_size)
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice
limit 40;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  customer_1.c_phone, 
  lineitem_1.l_tax, 
  lineitem_2.l_tax, 
  part_1.p_mfgr
from 
  lineitem as lineitem_1
    inner join part as part_1
        inner join lineitem as lineitem_2
        on (part_1.p_partkey = lineitem_2.l_orderkey )
      inner join customer as customer_1
      on (lineitem_2.l_orderkey = customer_1.c_custkey )
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where customer_1.c_custkey is not NULL
limit 8;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  partsupp_2.ps_partkey, 
  partsupp_2.ps_supplycost, 
  orders_1.o_orderkey
from 
  region as region_1
    inner join part as part_1
          inner join customer as customer_1
            inner join partsupp as partsupp_1
            on (customer_1.c_custkey = partsupp_1.ps_partkey )
          on (part_1.p_partkey = partsupp_1.ps_partkey )
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      inner join partsupp as partsupp_2
      on (part_1.p_partkey = partsupp_2.ps_partkey )
    on (region_1.r_regionkey = partsupp_2.ps_partkey )
where customer_1.c_name is not NULL
limit 40;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  lineitem_1.l_discount, 
  part_1.p_retailprice, 
  part_1.p_container, 
  orders_1.o_orderdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_partkey), 
  part_1.p_name
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join nation as nation_1
        inner join orders as orders_1
        on (nation_1.n_nationkey = orders_1.o_orderkey )
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    on (part_1.p_partkey = orders_1.o_orderkey )
where lineitem_1.l_quantity <= lineitem_1.l_extendedprice
group by lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_receiptdate, nation_1.n_comment, orders_1.o_orderdate, part_1.p_container, part_1.p_name, part_1.p_retailprice
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  count(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment
limit 4;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  count(
    nation_1.n_nationkey), 
  max(
    nation_1.n_nationkey), 
  sum(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  customer_1.c_nationkey, 
  customer_1.c_custkey
from 
  customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    inner join nation as nation_2
    on (customer_1.c_custkey = nation_2.n_nationkey )
where nation_1.n_name is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  min(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  sum(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_mktsegment <= customer_1.c_phone
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_suppkey >= orders_1.o_orderkey
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container
from 
  part as part_1
where part_1.p_mfgr >= part_1.p_brand
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal < customer_1.c_acctbal
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_name <= nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 40;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  region_1.r_comment, 
  supplier_1.s_phone
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.r_name is not NULL
limit 22;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_orderkey, 
  customer_1.c_custkey, 
  lineitem_1.l_shipmode, 
  customer_1.c_comment
from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
group by customer_1.c_comment, customer_1.c_custkey, lineitem_1.l_orderkey, lineitem_1.l_shipmode
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 20;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_3.ps_comment, 
  partsupp_3.ps_availqty, 
  partsupp_2.ps_partkey
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
      inner join partsupp as partsupp_3
      on (partsupp_2.ps_partkey = partsupp_3.ps_partkey )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_2.ps_supplycost > partsupp_1.ps_supplycost
limit 23;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode > lineitem_1.l_linestatus
group by lineitem_1.l_commitdate, lineitem_1.l_extendedprice, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_tax
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey > partsupp_1.ps_partkey
limit 37;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipinstruct, 
  region_1.r_regionkey
from 
  region as region_1
        inner join supplier as supplier_1
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where lineitem_1.l_commitdate >= orders_1.o_orderdate
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty <= partsupp_1.ps_partkey
group by partsupp_1.ps_supplycost
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where part_1.p_comment is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 22;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  partsupp_1.ps_comment, 
  orders_1.o_orderdate, 
  count(*), 
  partsupp_1.ps_supplycost
from 
  nation as nation_1
      inner join orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_orderkey = partsupp_1.ps_partkey )
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join orders as orders_2
    on (partsupp_1.ps_partkey = orders_2.o_orderkey )
where partsupp_1.ps_partkey is not NULL
group by nation_1.n_comment, orders_1.o_orderdate, partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 36;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  supplier_1.s_comment, 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  max(
    region_1.r_regionkey), 
  supplier_1.s_phone, 
  region_1.r_comment
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where supplier_1.s_nationkey is not NULL
group by region_1.r_comment, region_1.r_name, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  part_1.p_mfgr
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_1.n_comment is not NULL
limit 35;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  region_1.r_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  count(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where supplier_1.s_suppkey is not NULL
group by region_1.r_name, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_suppkey
limit 8;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    region_1.r_name), 
  partsupp_1.ps_availqty, 
  region_1.r_regionkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where region_1.r_regionkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  min(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_acctbal < customer_1.c_acctbal
group by customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_acctbal), 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_brand is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  avg(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_acctbal = supplier_1.s_acctbal
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 24;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  nation_1.n_regionkey
from 
  nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_totalprice is not NULL
limit 28;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey
from 
  region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_comment is not NULL
limit 38;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  count(*), 
  nation_1.n_regionkey
from 
  customer as customer_1
    inner join nation as nation_1
          inner join orders as orders_1
          on (nation_1.n_nationkey = orders_1.o_orderkey )
        inner join customer as customer_2
        on (orders_1.o_orderkey = customer_2.c_custkey )
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    on (customer_1.c_custkey = customer_2.c_custkey )
where orders_1.o_orderpriority is not NULL
group by customer_1.c_custkey, nation_1.n_regionkey
limit 33;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_totalprice = orders_1.o_totalprice
group by orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_orderkey > orders_1.o_shippriority
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_size, 
  min(
    part_1.p_size), 
  part_1.p_partkey, 
  part_1.p_comment, 
  max(
    part_1.p_size)
from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_partkey, part_1.p_size
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 33;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  customer_1.c_custkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_comment is not NULL
limit 39;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  lineitem_1.l_suppkey, 
  orders_1.o_comment
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_shipdate is not NULL
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  count(
    part_1.p_container), 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_mfgr, 
  nation_1.n_nationkey
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
group by nation_1.n_nationkey, part_1.p_container, part_1.p_mfgr, part_1.p_partkey, part_1.p_type
limit 28;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_mfgr, 
  max(
    part_1.p_partkey), 
  min(
    part_1.p_retailprice), 
  avg(
    part_1.p_retailprice), 
  sum(
    part_1.p_retailprice), 
  sum(
    part_1.p_size), 
  part_1.p_container
from 
  part as part_1
where part_1.p_container = part_1.p_mfgr
group by part_1.p_container, part_1.p_mfgr, part_1.p_partkey
limit 8;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  customer_1.c_name
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
limit 24;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  customer_1.c_acctbal, 
  part_1.p_name, 
  part_1.p_mfgr, 
  max(
    region_1.r_regionkey), 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  part_1.p_comment
from 
  customer as customer_1
    inner join region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_name, part_1.p_comment, part_1.p_mfgr, part_1.p_name, region_1.r_comment, region_1.r_name
limit 6;
-- meta {"num_joins":5,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    orders_2.o_orderdate), 
  partsupp_1.ps_partkey, 
  max(
    nation_1.n_regionkey), 
  max(
    orders_1.o_orderdate), 
  sum(
    partsupp_1.ps_supplycost), 
  min(
    orders_1.o_custkey), 
  min(
    orders_1.o_shippriority), 
  partsupp_2.ps_partkey, 
  nation_1.n_regionkey, 
  customer_1.c_comment, 
  partsupp_1.ps_comment, 
  nation_1.n_comment
from 
  orders as orders_1
    inner join orders as orders_2
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
            inner join nation as nation_1
            on (partsupp_2.ps_partkey = nation_1.n_nationkey )
          inner join customer as customer_1
          on (partsupp_2.ps_partkey = customer_1.c_custkey )
        on (partsupp_1.ps_partkey = customer_1.c_custkey )
      on (orders_2.o_orderkey = customer_1.c_custkey )
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where partsupp_1.ps_availqty is not NULL
group by customer_1.c_comment, nation_1.n_comment, nation_1.n_regionkey, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_2.ps_partkey
limit 31;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  max(
    customer_1.c_acctbal), 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_comment, 
  max(
    customer_1.c_custkey), 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  min(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_phone = customer_1.c_mktsegment
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    part_1.p_size)
from 
  part as part_1
where part_1.p_comment is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 41;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_size
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_mktsegment > part_1.p_container
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_nationkey)
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 31;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  customer_1.c_nationkey, 
  supplier_2.s_name, 
  supplier_1.s_comment, 
  customer_1.c_comment
from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join supplier as supplier_2
      on (customer_1.c_custkey = supplier_2.s_suppkey )
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where supplier_1.s_nationkey is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate <= lineitem_1.l_shipdate
limit 1;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus > lineitem_1.l_shipmode
group by lineitem_1.l_comment, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey), 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_partkey, 
  min(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  sum(
    part_1.p_size)
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_container, part_1.p_partkey, part_1.p_retailprice, part_1.p_size
limit 9;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  max(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_shippriority), 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  lineitem_2.l_returnflag
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join region as region_1
        inner join lineitem as lineitem_2
        on (region_1.r_regionkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  partsupp_1.ps_supplycost, 
  region_1.r_comment, 
  customer_1.c_phone
from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where customer_1.c_custkey is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 27;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    nation_1.n_nationkey), 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_size, 
  sum(
    part_1.p_size), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_container > nation_1.n_name
group by nation_1.n_nationkey, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_phone, 
  max(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_address, customer_1.c_phone
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_size
from 
  part as part_1
where part_1.p_mfgr >= part_1.p_brand
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_suppkey >= supplier_1.s_nationkey
limit 41;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_container, 
  part_2.p_name
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
      inner join part as part_2
      on (supplier_2.s_suppkey = part_2.p_partkey )
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where part_2.p_container < part_2.p_mfgr
limit 18;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  count(
    region_1.r_regionkey), 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name
limit 17;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  max(
    orders_1.o_orderkey), 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_totalprice = orders_1.o_totalprice
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 37;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_nationkey, 
  partsupp_1.ps_partkey, 
  customer_1.c_address, 
  sum(
    customer_1.c_acctbal), 
  customer_1.c_phone
from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_partkey is not NULL
group by customer_1.c_address, customer_1.c_phone, customer_2.c_nationkey, partsupp_1.ps_partkey
limit 31;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_totalprice
limit 37;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_phone <= lineitem_1.l_linestatus
limit 35;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  part_1.p_comment, 
  region_1.r_name, 
  region_1.r_comment
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where part_1.p_brand is not NULL
limit 29;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_custkey), 
  region_1.r_comment, 
  customer_1.c_acctbal, 
  orders_1.o_comment, 
  orders_1.o_orderpriority
from 
  lineitem as lineitem_1
    inner join customer as customer_1
      inner join orders as orders_1
        inner join region as region_1
        on (orders_1.o_orderkey = region_1.r_regionkey )
      on (customer_1.c_custkey = orders_1.o_orderkey )
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where orders_1.o_orderstatus is not NULL
group by customer_1.c_acctbal, orders_1.o_comment, orders_1.o_orderpriority, region_1.r_comment
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_type
from 
  part as part_1
where part_1.p_brand is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate, 
  sum(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  sum(
    supplier_1.s_nationkey), 
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address
limit 9;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_partkey, 
  supplier_1.s_comment
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join part as part_2
      inner join region as region_1
      on (part_2.p_partkey = region_1.r_regionkey )
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_type is not NULL
limit 9;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  orders_2.o_orderpriority, 
  orders_2.o_custkey, 
  orders_1.o_clerk, 
  orders_2.o_totalprice, 
  min(
    orders_2.o_orderdate), 
  orders_2.o_clerk, 
  orders_2.o_comment, 
  orders_1.o_custkey, 
  count(*), 
  orders_1.o_shippriority, 
  count(
    orders_2.o_orderstatus), 
  orders_2.o_shippriority
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_1.o_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderstatus, orders_1.o_shippriority, orders_2.o_clerk, orders_2.o_comment, orders_2.o_custkey, orders_2.o_orderpriority, orders_2.o_shippriority, orders_2.o_totalprice
limit 1;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_1.l_orderkey), 
  customer_1.c_comment
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where customer_1.c_address is not NULL
group by customer_1.c_comment
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_phone
limit 40;
-- meta {"num_joins":3,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_custkey), 
  min(
    customer_3.c_custkey), 
  customer_3.c_phone, 
  customer_2.c_custkey, 
  customer_1.c_mktsegment, 
  count(
    customer_3.c_phone), 
  avg(
    customer_2.c_acctbal), 
  customer_2.c_mktsegment, 
  customer_3.c_mktsegment, 
  max(
    supplier_1.s_acctbal), 
  max(
    customer_1.c_custkey), 
  customer_2.c_phone, 
  count(
    customer_3.c_comment), 
  supplier_1.s_phone, 
  sum(
    customer_1.c_nationkey), 
  customer_1.c_acctbal
from 
  customer as customer_1
    inner join customer as customer_2
        inner join customer as customer_3
        on (customer_2.c_custkey = customer_3.c_custkey )
      inner join supplier as supplier_1
      on (customer_3.c_custkey = supplier_1.s_suppkey )
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_suppkey > customer_3.c_custkey
group by customer_1.c_acctbal, customer_1.c_mktsegment, customer_2.c_custkey, customer_2.c_mktsegment, customer_2.c_phone, customer_3.c_mktsegment, customer_3.c_phone, supplier_1.s_phone
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_partkey < part_1.p_size
limit 5;
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  supplier_1.s_phone, 
  nation_1.n_regionkey, 
  part_1.p_brand, 
  max(
    supplier_1.s_nationkey), 
  part_1.p_type, 
  supplier_1.s_nationkey, 
  part_1.p_partkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  avg(
    nation_1.n_regionkey), 
  supplier_1.s_acctbal, 
  max(
    nation_1.n_regionkey), 
  supplier_1.s_suppkey, 
  count(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_nationkey), 
  part_1.p_retailprice
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_brand, part_1.p_partkey, part_1.p_retailprice, part_1.p_type, supplier_1.s_acctbal, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type
from 
  part as part_1
where part_1.p_container is not NULL
limit 9;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  sum(
    part_1.p_partkey), 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where part_1.p_retailprice >= partsupp_1.ps_supplycost
group by part_1.p_brand, part_1.p_name, part_1.p_retailprice, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice, 
  part_1.p_name
from 
  part as part_1
where part_1.p_brand is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
limit 36;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice, 
  partsupp_1.ps_supplycost, 
  max(
    part_1.p_size), 
  partsupp_1.ps_suppkey, 
  customer_1.c_address, 
  customer_1.c_phone, 
  sum(
    customer_1.c_acctbal), 
  customer_1.c_custkey
from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_suppkey is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_phone, part_1.p_retailprice, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 9;
-- meta {"num_joins":4,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  customer_1.c_phone, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  max(
    supplier_1.s_nationkey), 
  sum(
    customer_1.c_nationkey), 
  orders_1.o_orderkey, 
  count(
    customer_2.c_custkey), 
  orders_1.o_orderpriority, 
  partsupp_1.ps_partkey, 
  customer_2.c_nationkey, 
  partsupp_1.ps_supplycost, 
  customer_2.c_mktsegment, 
  max(
    orders_1.o_orderdate), 
  customer_1.c_acctbal
from 
  customer as customer_1
      inner join customer as customer_2
        inner join orders as orders_1
        on (customer_2.c_custkey = orders_1.o_orderkey )
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
group by customer_1.c_acctbal, customer_1.c_phone, customer_2.c_mktsegment, customer_2.c_nationkey, orders_1.o_orderkey, orders_1.o_orderpriority, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 11;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  supplier_1.s_name, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  customer_1.c_name, 
  min(
    customer_1.c_nationkey), 
  min(
    supplier_1.s_nationkey), 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  max(
    supplier_1.s_acctbal), 
  customer_1.c_phone
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_suppkey
limit 37;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    part_1.p_size), 
  part_1.p_mfgr, 
  avg(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_type, 
  sum(
    part_1.p_size)
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 28;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipdate, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  max(
    lineitem_1.l_receiptdate)
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
group by lineitem_1.l_shipdate, partsupp_1.ps_availqty, partsupp_1.ps_comment
limit 36;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  avg(
    part_1.p_partkey), 
  part_1.p_partkey, 
  max(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_container, 
  min(
    part_1.p_size), 
  part_1.p_name
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_type
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_mfgr > part_1.p_container
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_comment, 
  sum(
    lineitem_1.l_partkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_name, 
  sum(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 28;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_2.s_comment, 
  nation_1.n_comment, 
  count(*), 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_2.s_address
from 
  supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where nation_1.n_name is not NULL
group by nation_1.n_comment, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone, supplier_2.s_address, supplier_2.s_comment
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  sum(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment
limit 42;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  count(
    nation_1.n_name), 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  sum(
    nation_1.n_nationkey), 
  count(*), 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 21;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_2.s_name, 
  supplier_2.s_phone, 
  min(
    supplier_1.s_suppkey), 
  supplier_2.s_acctbal, 
  supplier_1.s_comment, 
  supplier_2.s_address
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_1.s_name is not NULL
group by supplier_1.s_comment, supplier_2.s_acctbal, supplier_2.s_address, supplier_2.s_name, supplier_2.s_phone
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_size, 
  max(
    part_1.p_size)
from 
  part as part_1
where part_1.p_retailprice > part_1.p_retailprice
group by part_1.p_container, part_1.p_size
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    region_1.r_comment)
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 36;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_3.o_clerk, 
  region_1.r_name
from 
  region as region_1
      inner join orders as orders_1
        inner join region as region_2
        on (orders_1.o_orderkey = region_2.r_regionkey )
      on (region_1.r_regionkey = orders_1.o_orderkey )
    inner join lineitem as lineitem_1
      inner join orders as orders_2
        inner join orders as orders_3
        on (orders_2.o_orderkey = orders_3.o_orderkey )
      on (lineitem_1.l_orderkey = orders_3.o_orderkey )
    on (region_1.r_regionkey = orders_2.o_orderkey )
where region_2.r_regionkey is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_returnflag, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_discount, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  part_1.p_partkey, 
  part_1.p_comment, 
  part_1.p_container
from 
  part as part_1
where part_1.p_name is not NULL
limit 28;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  customer_2.c_name, 
  customer_2.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_nationkey
from 
  customer as customer_1
      inner join customer as customer_2
        inner join orders as orders_1
        on (customer_2.c_custkey = orders_1.o_orderkey )
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
    on (customer_2.c_custkey = supplier_1.s_suppkey )
where customer_2.c_name is not NULL
group by customer_1.c_nationkey, customer_2.c_acctbal, customer_2.c_name, orders_1.o_orderpriority
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  count(*)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  sum(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_comment
limit 18;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty), 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  count(*), 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  sum(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 34;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_brand, 
  customer_1.c_nationkey, 
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_commitdate), 
  min(
    lineitem_1.l_partkey), 
  part_2.p_retailprice, 
  lineitem_1.l_comment, 
  lineitem_1.l_partkey
from 
  part as part_1
        inner join lineitem as lineitem_1
        on (part_1.p_partkey = lineitem_1.l_orderkey )
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join region as region_1
      inner join part as part_2
      on (region_1.r_regionkey = part_2.p_partkey )
    on (part_1.p_partkey = region_1.r_regionkey )
where part_1.p_size >= lineitem_1.l_partkey
group by customer_1.c_nationkey, lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_partkey, part_2.p_brand, part_2.p_retailprice
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
limit 40;
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  region_1.r_comment, 
  customer_1.c_phone, 
  min(
    lineitem_1.l_commitdate), 
  max(
    lineitem_1.l_partkey), 
  customer_1.c_comment, 
  max(
    lineitem_1.l_partkey), 
  region_1.r_regionkey, 
  max(
    customer_1.c_custkey), 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_linenumber)
from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (customer_1.c_custkey = region_1.r_regionkey )
where lineitem_1.l_shipinstruct > lineitem_1.l_linestatus
group by customer_1.c_comment, customer_1.c_phone, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, region_1.r_comment, region_1.r_regionkey
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_type, 
  max(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment, part_1.p_type
limit 26;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_comment, 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_suppkey), 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_phone < supplier_1.s_name
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 8;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type
from 
  part as part_1
where part_1.p_name is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 18;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  orders_1.o_totalprice
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_orderstatus > orders_1.o_orderpriority
group by orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_orderkey
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 19;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_type, 
  part_1.p_partkey, 
  nation_1.n_nationkey, 
  part_1.p_container, 
  nation_1.n_regionkey, 
  nation_1.n_name
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_mfgr is not NULL
limit 26;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    region_1.r_name), 
  region_1.r_name, 
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey), 
  count(
    region_1.r_name), 
  region_1.r_comment, 
  count(*)
from 
  region as region_1
where region_1.r_name = region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 6;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 1;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  lineitem_1.l_suppkey, 
  supplier_1.s_acctbal, 
  customer_1.c_comment
from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join supplier as supplier_1
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where lineitem_1.l_comment is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey
limit 6;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    orders_1.o_totalprice), 
  partsupp_1.ps_supplycost, 
  part_1.p_mfgr, 
  part_1.p_container
from 
  lineitem as lineitem_1
    inner join part as part_1
          inner join orders as orders_1
          on (part_1.p_partkey = orders_1.o_orderkey )
        inner join partsupp as partsupp_1
        on (orders_1.o_orderkey = partsupp_1.ps_partkey )
      inner join part as part_2
        inner join orders as orders_2
        on (part_2.p_partkey = orders_2.o_orderkey )
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_linestatus is not NULL
group by part_1.p_container, part_1.p_mfgr, partsupp_1.ps_supplycost
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  partsupp_1.ps_comment, 
  region_1.r_comment, 
  region_1.r_name
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where partsupp_1.ps_suppkey is not NULL
limit 7;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_container, 
  partsupp_1.ps_partkey, 
  sum(
    part_1.p_partkey), 
  partsupp_1.ps_suppkey, 
  count(
    part_1.p_retailprice)
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where part_1.p_mfgr > part_1.p_container
group by part_1.p_comment, part_1.p_container, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 34;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_nationkey, 
  nation_3.n_regionkey, 
  nation_1.n_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
      inner join nation as nation_1
      on (region_1.r_regionkey = nation_1.n_nationkey )
    inner join nation as nation_2
      inner join nation as nation_3
      on (nation_2.n_nationkey = nation_3.n_nationkey )
    on (nation_1.n_nationkey = nation_3.n_nationkey )
where nation_3.n_nationkey >= region_1.r_regionkey
limit 23;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 9;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  sum(
    part_1.p_partkey), 
  sum(
    part_1.p_retailprice), 
  part_1.p_name, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_retailprice
limit 41;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_mktsegment, 
  customer_1.c_address
from 
  customer as customer_1
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      inner join customer as customer_2
      on (part_1.p_partkey = customer_2.c_custkey )
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where customer_2.c_comment is not NULL
limit 30;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where customer_1.c_acctbal >= supplier_1.s_acctbal
limit 10;
-- meta {"num_joins":2,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  max(
    orders_2.o_orderdate), 
  nation_1.n_regionkey, 
  orders_1.o_totalprice, 
  sum(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  max(
    orders_1.o_shippriority), 
  min(
    nation_1.n_regionkey), 
  orders_2.o_clerk, 
  min(
    orders_1.o_orderdate), 
  nation_1.n_comment, 
  orders_2.o_comment, 
  count(
    orders_1.o_orderstatus), 
  sum(
    orders_1.o_custkey), 
  nation_1.n_nationkey, 
  orders_1.o_orderstatus, 
  orders_2.o_shippriority, 
  nation_1.n_name, 
  orders_1.o_custkey, 
  orders_2.o_orderdate, 
  min(
    orders_2.o_orderdate), 
  orders_2.o_custkey
from 
  orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_totalprice, orders_2.o_clerk, orders_2.o_comment, orders_2.o_custkey, orders_2.o_orderdate, orders_2.o_shippriority
limit 7;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice = lineitem_1.l_tax
group by lineitem_1.l_linenumber, lineitem_1.l_suppkey
limit 26;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  sum(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_name, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_mktsegment < customer_1.c_phone
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_custkey >= customer_1.c_nationkey
limit 15;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  partsupp_1.ps_comment, 
  max(
    orders_1.o_orderdate), 
  min(
    orders_1.o_shippriority), 
  max(
    orders_1.o_orderdate), 
  min(
    orders_1.o_custkey)
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  sum(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  count(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  sum(
    partsupp_1.ps_partkey), 
  count(*)
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 27;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  customer_1.c_phone, 
  count(*), 
  customer_1.c_custkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  region_1.r_comment
from 
  region as region_1
    inner join customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where customer_1.c_name is not NULL
group by customer_1.c_custkey, customer_1.c_phone, partsupp_1.ps_availqty, partsupp_1.ps_comment, region_1.r_comment, region_1.r_regionkey
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 40;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_custkey), 
  orders_1.o_custkey, 
  max(
    orders_1.o_custkey)
from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_shippriority is not NULL
group by orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_shippriority, region_1.r_comment, region_1.r_regionkey
limit 37;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  customer_1.c_acctbal
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_availqty is not NULL
group by customer_1.c_acctbal, customer_1.c_name, partsupp_1.ps_supplycost
limit 14;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  max(
    lineitem_2.l_partkey), 
  lineitem_1.l_linestatus, 
  customer_1.c_phone, 
  lineitem_2.l_returnflag, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
    inner join part as part_1
        inner join supplier as supplier_1
          inner join customer as customer_1
          on (supplier_1.s_suppkey = customer_1.c_custkey )
        on (part_1.p_partkey = supplier_1.s_suppkey )
      inner join lineitem as lineitem_2
      on (customer_1.c_custkey = lineitem_2.l_orderkey )
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_orderkey is not NULL
group by customer_1.c_phone, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_2.l_returnflag, supplier_1.s_name
limit 31;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    part_1.p_partkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  supplier_1.s_name, 
  min(
    part_1.p_size)
from 
  part as part_1
    inner join nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where supplier_1.s_acctbal is not NULL
group by nation_1.n_nationkey, nation_1.n_regionkey, supplier_1.s_name
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_suppkey = customer_1.c_nationkey
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey > partsupp_1.ps_partkey
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 38;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    partsupp_1.ps_suppkey), 
  part_1.p_size, 
  min(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_brand, 
  min(
    part_1.p_size)
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_partkey is not NULL
group by part_1.p_brand, part_1.p_name, part_1.p_size
limit 4;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 24;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  supplier_1.s_comment, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  supplier_1.s_name
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where supplier_1.s_acctbal is not NULL
limit 36;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  min(
    lineitem_1.l_linenumber), 
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_shipmode is not NULL
group by supplier_1.s_comment, supplier_1.s_name
limit 8;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  count(
    nation_1.n_nationkey)
from 
  orders as orders_1
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where orders_1.o_custkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 30;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_name, 
  partsupp_1.ps_suppkey
from 
  region as region_1
    inner join nation as nation_1
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join region as region_2
      on (partsupp_1.ps_partkey = region_2.r_regionkey )
    on (region_1.r_regionkey = nation_1.n_nationkey )
where partsupp_1.ps_availqty is not NULL
limit 8;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  supplier_1.s_address
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate = lineitem_1.l_shipdate
limit 15;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  region_1.r_regionkey, 
  orders_1.o_clerk, 
  avg(
    nation_1.n_regionkey), 
  part_1.p_mfgr
from 
  orders as orders_1
      inner join nation as nation_1
        inner join region as region_1
        on (nation_1.n_nationkey = region_1.r_regionkey )
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_shippriority, part_1.p_mfgr, region_1.r_regionkey
limit 37;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  region_1.r_comment, 
  nation_1.n_name, 
  part_1.p_brand
from 
  supplier as supplier_1
    inner join nation as nation_1
      inner join region as region_1
        inner join part as part_1
          inner join partsupp as partsupp_1
          on (part_1.p_partkey = partsupp_1.ps_partkey )
        on (region_1.r_regionkey = part_1.p_partkey )
      on (nation_1.n_nationkey = region_1.r_regionkey )
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where supplier_1.s_nationkey is not NULL
limit 20;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_2.s_phone, 
  supplier_1.s_acctbal, 
  supplier_2.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_2.s_address
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_address is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  part_1.p_brand, 
  nation_2.n_name, 
  part_1.p_size
from 
  nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_nationkey = customer_1.c_custkey )
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join nation as nation_2
    on (customer_1.c_custkey = nation_2.n_nationkey )
where customer_1.c_custkey is not NULL
limit 33;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_quantity, 
  partsupp_1.ps_availqty, 
  supplier_1.s_phone, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where lineitem_1.l_tax < lineitem_1.l_discount
limit 23;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderkey)
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_nationkey is not NULL
group by customer_1.c_acctbal, orders_1.o_orderdate, orders_1.o_shippriority
limit 41;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  avg(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where partsupp_1.ps_partkey is not NULL
group by orders_1.o_comment, orders_1.o_orderkey
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_extendedprice)
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus > lineitem_1.l_shipinstruct
limit 37;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_totalprice), 
  min(
    orders_1.o_orderkey), 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority
limit 21;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_orderdate), 
  customer_1.c_nationkey
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_clerk is not NULL
group by customer_1.c_custkey, customer_1.c_nationkey, orders_1.o_totalprice
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment
from 
  nation as nation_1
    inner join nation as nation_2
      inner join supplier as supplier_1
      on (nation_2.n_nationkey = supplier_1.s_suppkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_name is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  count(*), 
  count(
    nation_1.n_nationkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey), 
  max(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_custkey, 
  avg(
    customer_1.c_acctbal), 
  avg(
    customer_1.c_nationkey), 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_custkey >= customer_1.c_nationkey
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_phone
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal < customer_1.c_acctbal
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_mktsegment
limit 39;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  customer_1.c_mktsegment, 
  count(
    customer_1.c_comment)
from 
  partsupp as partsupp_1
    inner join region as region_1
        inner join customer as customer_1
          inner join orders as orders_1
          on (customer_1.c_custkey = orders_1.o_orderkey )
        on (region_1.r_regionkey = orders_1.o_orderkey )
      inner join nation as nation_1
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      on (region_1.r_regionkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where customer_1.c_name is not NULL
group by customer_1.c_mktsegment, partsupp_1.ps_comment
limit 3;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  region_1.r_regionkey
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 26;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  region_1.r_name, 
  max(
    lineitem_1.l_shipdate), 
  region_1.r_comment, 
  lineitem_1.l_shipmode
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where region_1.r_regionkey is not NULL
group by lineitem_1.l_discount, lineitem_1.l_returnflag, lineitem_1.l_shipmode, region_1.r_comment, region_1.r_name
limit 26;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  orders_1.o_totalprice, 
  partsupp_1.ps_availqty, 
  orders_1.o_orderpriority
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  avg(
    partsupp_1.ps_partkey), 
  count(
    partsupp_1.ps_availqty)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 4;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment
from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where customer_1.c_phone > customer_1.c_mktsegment
limit 30;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_linenumber), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  lineitem_1.l_partkey, 
  lineitem_1.l_orderkey, 
  nation_1.n_name
from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where nation_1.n_name is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_partkey, nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 24;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_shippriority), 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  orders_1.o_orderpriority, 
  supplier_1.s_suppkey, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  orders_1.o_totalprice, 
  min(
    orders_1.o_custkey), 
  avg(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  orders_1.o_orderkey, 
  supplier_1.s_nationkey, 
  orders_1.o_comment, 
  max(
    supplier_1.s_nationkey)
from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_custkey is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_totalprice, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 3;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  avg(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_name
limit 9;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  count(
    part_1.p_retailprice), 
  part_1.p_size, 
  part_1.p_retailprice, 
  count(*), 
  part_1.p_mfgr, 
  avg(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
group by part_1.p_mfgr, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_name is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_name is not NULL
limit 22;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  customer_1.c_address, 
  orders_1.o_clerk, 
  customer_2.c_phone, 
  orders_1.o_shippriority, 
  nation_1.n_regionkey, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_totalprice, 
  customer_1.c_custkey
from 
  nation as nation_1
      inner join customer as customer_1
        inner join partsupp as partsupp_1
          inner join customer as customer_2
          on (partsupp_1.ps_partkey = customer_2.c_custkey )
        on (customer_1.c_custkey = customer_2.c_custkey )
      on (nation_1.n_nationkey = customer_2.c_custkey )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_2.c_phone, nation_1.n_regionkey, orders_1.o_clerk, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 23;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  min(
    customer_1.c_custkey), 
  customer_1.c_acctbal, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_mktsegment
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_name is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_comment, customer_1.c_name
limit 29;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    nation_1.n_regionkey), 
  region_1.r_name
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_comment is not NULL
group by region_1.r_name
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus >= lineitem_1.l_shipmode
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  count(
    partsupp_1.ps_comment), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty <= partsupp_1.ps_suppkey
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
limit 36;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  partsupp_1.ps_partkey
from 
  supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty >= partsupp_1.ps_suppkey
limit 13;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  lineitem_1.l_linestatus, 
  orders_1.o_orderdate, 
  lineitem_1.l_shipdate
from 
  orders as orders_1
    inner join region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where region_1.r_comment is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    supplier_1.s_suppkey), 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_phone
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_regionkey >= nation_1.n_nationkey
limit 42;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment
from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 7;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  region_1.r_comment
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 42;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
      inner join orders as orders_1
      on (partsupp_2.ps_partkey = orders_1.o_orderkey )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where orders_1.o_orderkey is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
limit 16;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size
from 
  lineitem as lineitem_1
      inner join part as part_1
        inner join supplier as supplier_1
        on (part_1.p_partkey = supplier_1.s_suppkey )
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    inner join nation as nation_1
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      on (nation_1.n_nationkey = partsupp_2.ps_partkey )
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where lineitem_1.l_commitdate <= lineitem_1.l_receiptdate
limit 20;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_comment, 
  customer_1.c_name, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_2.l_shipinstruct
from 
  lineitem as lineitem_1
    inner join customer as customer_1
      inner join lineitem as lineitem_2
      on (customer_1.c_custkey = lineitem_2.l_orderkey )
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_2.l_comment is not NULL
group by customer_1.c_name, lineitem_1.l_comment, lineitem_2.l_shipinstruct
limit 11;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  count(
    region_1.r_comment), 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey
limit 38;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  part_1.p_comment
from 
  nation as nation_1
      inner join partsupp as partsupp_1
          inner join customer as customer_1
            inner join part as part_1
            on (customer_1.c_custkey = part_1.p_partkey )
          on (partsupp_1.ps_partkey = customer_1.c_custkey )
        inner join orders as orders_1
        on (partsupp_1.ps_partkey = orders_1.o_orderkey )
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join customer as customer_2
    on (orders_1.o_orderkey = customer_2.c_custkey )
where orders_1.o_orderdate <= orders_1.o_orderdate
limit 10;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_receiptdate), 
  partsupp_1.ps_supplycost, 
  lineitem_1.l_linestatus, 
  orders_1.o_shippriority, 
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_size, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_custkey), 
  max(
    partsupp_1.ps_availqty), 
  part_1.p_partkey, 
  orders_1.o_custkey
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
      inner join part as part_1
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where lineitem_1.l_commitdate < orders_1.o_orderdate
group by lineitem_1.l_discount, lineitem_1.l_linestatus, orders_1.o_custkey, orders_1.o_shippriority, orders_1.o_totalprice, part_1.p_brand, part_1.p_container, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, partsupp_1.ps_supplycost
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 25;
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipmode, 
  customer_1.c_name, 
  customer_2.c_comment, 
  customer_2.c_phone, 
  lineitem_2.l_quantity, 
  min(
    orders_2.o_totalprice), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_quantity, 
  max(
    lineitem_1.l_shipdate), 
  orders_2.o_comment, 
  customer_1.c_address, 
  max(
    lineitem_2.l_receiptdate), 
  customer_2.c_address, 
  orders_2.o_orderdate
from 
  customer as customer_1
        inner join orders as orders_1
            inner join orders as orders_2
            on (orders_1.o_orderkey = orders_2.o_orderkey )
          inner join lineitem as lineitem_1
          on (orders_2.o_orderkey = lineitem_1.l_orderkey )
        on (customer_1.c_custkey = orders_1.o_orderkey )
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_nationkey <= lineitem_1.l_orderkey
group by customer_1.c_address, customer_1.c_name, customer_2.c_address, customer_2.c_comment, customer_2.c_phone, lineitem_1.l_extendedprice, lineitem_1.l_quantity, lineitem_1.l_shipmode, lineitem_2.l_quantity, orders_2.o_comment, orders_2.o_orderdate
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  avg(
    part_1.p_retailprice), 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_name, part_1.p_partkey
limit 7;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  nation_3.n_name
from 
  lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      inner join nation as nation_2
      on (lineitem_1.l_orderkey = nation_2.n_nationkey )
    inner join nation as nation_3
      inner join part as part_1
      on (nation_3.n_nationkey = part_1.p_partkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_linestatus = nation_1.n_name
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_nationkey, nation_1.n_regionkey
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
group by region_1.r_name, region_1.r_regionkey
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  part_1.p_type
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_name, part_1.p_retailprice, part_1.p_type
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey >= partsupp_1.ps_availqty
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_clerk >= orders_1.o_orderpriority
limit 19;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_name is not NULL
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    part_1.p_retailprice), 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_type
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_brand, part_1.p_name, part_1.p_type
limit 27;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  part_1.p_mfgr, 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  max(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name
limit 35;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_2.l_tax, 
  lineitem_2.l_shipinstruct, 
  lineitem_1.l_quantity, 
  orders_1.o_orderkey
from 
  orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    inner join lineitem as lineitem_2
    on (orders_1.o_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_tax is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_brand, 
  max(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_brand, part_1.p_partkey
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  sum(
    nation_1.n_nationkey), 
  min(
    nation_1.n_regionkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 13;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  part_1.p_container, 
  customer_1.c_nationkey, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  count(
    customer_1.c_nationkey), 
  part_1.p_retailprice
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_nationkey, part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_retailprice
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  orders_1.o_orderdate
from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where supplier_1.s_acctbal is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  avg(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
group by supplier_1.s_address, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 11;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name <= nation_1.n_name
limit 20;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  min(
    orders_1.o_orderdate), 
  sum(
    orders_1.o_totalprice), 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_orderpriority, orders_1.o_shippriority
limit 18;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_comment, 
  region_2.r_name, 
  region_1.r_comment
from 
  region as region_1
    inner join region as region_2
      inner join lineitem as lineitem_1
      on (region_2.r_regionkey = lineitem_1.l_orderkey )
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where region_1.r_comment is not NULL
limit 32;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  nation_1.n_nationkey, 
  sum(
    part_1.p_retailprice), 
  max(
    supplier_1.s_suppkey), 
  part_1.p_size, 
  part_1.p_comment
from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where part_1.p_container is not NULL
group by nation_1.n_name, nation_1.n_nationkey, part_1.p_comment, part_1.p_size, supplier_1.s_name, supplier_1.s_suppkey
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  avg(
    part_1.p_retailprice), 
  part_1.p_comment
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_brand, part_1.p_comment
limit 27;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  count(*)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 30;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    customer_1.c_mktsegment), 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_name, 
  count(*)
from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey), 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment
limit 19;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  min(
    part_1.p_partkey), 
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_type, 
  partsupp_1.ps_partkey, 
  max(
    supplier_1.s_nationkey)
from 
  part as part_1
    inner join supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where supplier_1.s_phone is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_retailprice, part_1.p_type, partsupp_1.ps_partkey, supplier_1.s_address, supplier_1.s_nationkey
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipmode, 
  nation_1.n_regionkey, 
  lineitem_1.l_tax, 
  nation_1.n_nationkey, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where nation_1.n_nationkey is not NULL
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_2.l_returnflag, 
  supplier_1.s_acctbal, 
  sum(
    lineitem_2.l_tax), 
  lineitem_1.l_returnflag, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_2
    on (partsupp_1.ps_partkey = lineitem_2.l_orderkey )
where supplier_1.s_name >= lineitem_1.l_returnflag
group by lineitem_1.l_returnflag, lineitem_2.l_returnflag, partsupp_1.ps_comment, supplier_1.s_acctbal
limit 38;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  count(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment
limit 38;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  lineitem_1.l_shipinstruct, 
  partsupp_1.ps_suppkey, 
  region_1.r_comment, 
  partsupp_1.ps_supplycost, 
  max(
    lineitem_1.l_linenumber), 
  region_1.r_name, 
  lineitem_1.l_tax, 
  count(*), 
  min(
    lineitem_1.l_linenumber), 
  avg(
    lineitem_1.l_quantity), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where lineitem_1.l_shipinstruct < region_1.r_name
group by lineitem_1.l_shipinstruct, lineitem_1.l_tax, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, region_1.r_comment, region_1.r_name
limit 42;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  partsupp_1.ps_suppkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where nation_1.n_comment is not NULL
limit 31;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    customer_1.c_custkey), 
  part_1.p_brand, 
  customer_1.c_phone, 
  customer_1.c_comment
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where part_1.p_partkey is not NULL
group by customer_1.c_comment, customer_1.c_phone, part_1.p_brand
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderdate <= orders_1.o_orderdate
limit 18;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    nation_1.n_regionkey), 
  avg(
    nation_1.n_regionkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment
limit 6;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    orders_1.o_orderdate), 
  customer_1.c_acctbal, 
  orders_1.o_shippriority, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_mktsegment, 
  orders_1.o_orderkey
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_phone > orders_1.o_clerk
group by customer_1.c_acctbal, customer_1.c_mktsegment, orders_1.o_orderkey, orders_1.o_shippriority
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 34;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_returnflag, 
  count(*), 
  region_1.r_comment, 
  supplier_1.s_acctbal
from 
  partsupp as partsupp_1
    inner join region as region_1
        inner join part as part_1
          inner join lineitem as lineitem_1
          on (part_1.p_partkey = lineitem_1.l_orderkey )
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where supplier_1.s_address is not NULL
group by lineitem_1.l_returnflag, region_1.r_comment, supplier_1.s_acctbal
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  max(
    part_1.p_retailprice), 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_comment, part_1.p_partkey
limit 30;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey)
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_phone
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  max(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  nation_1.n_nationkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty > partsupp_1.ps_partkey
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 9;
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_2.r_regionkey, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.l_quantity, 
  region_1.r_regionkey
from 
  customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    inner join region as region_1
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      inner join lineitem as lineitem_1
      on (region_2.r_regionkey = lineitem_1.l_orderkey )
    on (customer_1.c_custkey = region_2.r_regionkey )
where lineitem_1.l_shipinstruct is not NULL
group by lineitem_1.l_quantity, region_1.r_regionkey, region_2.r_regionkey
limit 31;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  customer_1.c_acctbal, 
  count(*), 
  part_1.p_name, 
  customer_1.c_mktsegment, 
  count(
    part_1.p_retailprice), 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_size, 
  sum(
    customer_1.c_acctbal)
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_nationkey >= part_1.p_partkey
group by customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_phone, part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_size
limit 20;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_orderkey is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_partkey, 
  min(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_brand, part_1.p_mfgr, part_1.p_name, part_1.p_partkey
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 27;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_2.ps_partkey, 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  partsupp_2.ps_supplycost, 
  sum(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_2.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_2.ps_partkey, partsupp_2.ps_supplycost
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty = partsupp_1.ps_suppkey
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  sum(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_nationkey >= supplier_1.s_suppkey
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 14;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_quantity, 
  supplier_1.s_phone
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_linestatus is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_nationkey), 
  avg(
    customer_1.c_custkey), 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_custkey
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  count(*), 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container, 
  min(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_type
limit 15;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  avg(
    orders_1.o_shippriority), 
  avg(
    orders_1.o_totalprice), 
  orders_1.o_comment, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_custkey <= orders_1.o_shippriority
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_shippriority
limit 22;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderkey, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_custkey, orders_1.o_orderkey
limit 27;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_discount), 
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_receiptdate
limit 30;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_acctbal), 
  customer_1.c_comment, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_custkey), 
  min(
    customer_1.c_custkey), 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey
limit 26;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  count(
    nation_1.n_name), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 11;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_suppkey, 
  part_1.p_name
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_type is not NULL
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_container, 
  count(
    part_1.p_name), 
  part_1.p_type, 
  min(
    part_1.p_size), 
  part_1.p_partkey, 
  min(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_type
limit 36;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_linenumber, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where partsupp_1.ps_availqty is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linenumber, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  sum(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_nationkey >= customer_1.c_custkey
group by customer_1.c_custkey
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 9;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    region_1.r_regionkey), 
  partsupp_1.ps_partkey, 
  region_1.r_name, 
  lineitem_1.l_tax, 
  region_1.r_regionkey, 
  lineitem_1.l_comment, 
  region_1.r_comment, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_receiptdate, lineitem_1.l_tax, partsupp_1.ps_partkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_acctbal = supplier_1.s_acctbal
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_comment, 
  sum(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_name
from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_name, part_1.p_size, part_1.p_type
limit 41;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    region_1.r_regionkey), 
  partsupp_1.ps_partkey, 
  avg(
    partsupp_1.ps_supplycost), 
  region_1.r_comment
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_partkey, region_1.r_comment
limit 22;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    region_1.r_regionkey), 
  region_1.r_comment, 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
group by region_1.r_comment
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name = region_1.r_name
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_comment
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 12;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_address, 
  max(
    customer_1.c_custkey), 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_custkey = customer_1.c_nationkey
group by customer_1.c_address, customer_1.c_name, customer_1.c_phone
limit 36;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  count(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name
limit 35;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  min(
    part_1.p_retailprice), 
  avg(
    customer_1.c_nationkey), 
  avg(
    partsupp_1.ps_partkey), 
  customer_1.c_address, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  nation_1.n_nationkey, 
  customer_1.c_comment, 
  partsupp_1.ps_supplycost
from 
  customer as customer_1
    inner join part as part_1
      inner join partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      on (part_1.p_partkey = nation_1.n_nationkey )
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_1.c_mktsegment is not NULL
group by customer_1.c_address, customer_1.c_comment, nation_1.n_name, nation_1.n_nationkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 17;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  nation_1.n_nationkey
from 
  supplier as supplier_1
        inner join part as part_1
        on (supplier_1.s_suppkey = part_1.p_partkey )
      inner join orders as orders_1
      on (part_1.p_partkey = orders_1.o_orderkey )
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_suppkey = supplier_1.s_nationkey
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_totalprice
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey
from 
  part as part_1
where part_1.p_size < part_1.p_partkey
limit 31;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  avg(
    part_1.p_retailprice), 
  max(
    nation_1.n_nationkey), 
  nation_2.n_name, 
  nation_1.n_comment, 
  part_1.p_brand, 
  nation_1.n_nationkey
from 
  nation as nation_1
        inner join region as region_1
        on (nation_1.n_nationkey = region_1.r_regionkey )
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join nation as nation_2
    on (region_1.r_regionkey = nation_2.n_nationkey )
where nation_1.n_nationkey > nation_1.n_regionkey
group by nation_1.n_comment, nation_1.n_nationkey, nation_2.n_name, part_1.p_brand, region_1.r_regionkey
limit 40;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_comment, 
  count(*), 
  part_1.p_mfgr, 
  orders_1.o_comment, 
  part_1.p_brand
from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where part_1.p_size is not NULL
group by orders_1.o_comment, orders_1.o_orderkey, part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_size, part_1.p_type
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_size, 
  orders_1.o_orderstatus
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
limit 11;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  partsupp_1.ps_supplycost, 
  count(*)
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_supplycost, supplier_1.s_suppkey
limit 16;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  customer_1.c_comment
from 
  partsupp as partsupp_1
          inner join region as region_1
          on (partsupp_1.ps_partkey = region_1.r_regionkey )
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      inner join region as region_2
      on (partsupp_1.ps_partkey = region_2.r_regionkey )
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where region_1.r_name is not NULL
limit 28;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_commitdate), 
  supplier_2.s_suppkey, 
  supplier_1.s_name, 
  count(*), 
  supplier_2.s_acctbal, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  max(
    lineitem_1.l_tax), 
  supplier_1.s_acctbal, 
  max(
    lineitem_1.l_shipdate), 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    inner join supplier as supplier_2
      inner join orders as orders_1
      on (supplier_2.s_suppkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where lineitem_1.l_suppkey is not NULL
group by orders_1.o_comment, orders_1.o_orderpriority, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_nationkey, supplier_2.s_acctbal, supplier_2.s_suppkey
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_name = supplier_1.s_phone
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_phone > supplier_1.s_name
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    region_1.r_regionkey), 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  max(
    lineitem_1.l_quantity)
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_tax
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 11;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  nation_1.n_regionkey, 
  region_1.r_name, 
  nation_1.n_name, 
  customer_1.c_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join customer as customer_1
      inner join region as region_1
      on (customer_1.c_custkey = region_1.r_regionkey )
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_nationkey is not NULL
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_totalprice > orders_1.o_totalprice
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_orderdate, orders_1.o_shippriority
limit 14;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_3.o_orderkey, 
  partsupp_1.ps_supplycost, 
  orders_2.o_shippriority, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join orders as orders_1
      inner join orders as orders_2
        inner join orders as orders_3
        on (orders_2.o_orderkey = orders_3.o_orderkey )
      on (orders_1.o_orderkey = orders_3.o_orderkey )
    on (partsupp_1.ps_partkey = orders_3.o_orderkey )
where orders_1.o_shippriority is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_custkey), 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 41;
-- meta {"num_joins":4,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_receiptdate), 
  max(
    lineitem_1.l_partkey), 
  avg(
    lineitem_1.l_discount), 
  nation_2.n_name, 
  nation_2.n_regionkey, 
  max(
    nation_2.n_nationkey), 
  nation_1.n_comment, 
  avg(
    lineitem_1.l_quantity), 
  lineitem_1.l_linenumber, 
  sum(
    lineitem_1.l_extendedprice), 
  nation_1.n_nationkey, 
  part_1.p_retailprice, 
  nation_3.n_comment
from 
  lineitem as lineitem_1
    inner join nation as nation_1
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      inner join nation as nation_2
        inner join nation as nation_3
        on (nation_2.n_nationkey = nation_3.n_nationkey )
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_size < nation_1.n_nationkey
group by lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_shipdate, nation_1.n_comment, nation_1.n_nationkey, nation_2.n_name, nation_2.n_regionkey, nation_3.n_comment, part_1.p_retailprice, part_1.p_size
limit 41;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 18;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  supplier_1.s_comment, 
  sum(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by region_1.r_comment, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 25;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where nation_1.n_regionkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_orderkey, lineitem_1.l_shipinstruct, nation_1.n_comment, nation_1.n_nationkey
limit 32;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderdate, 
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
    inner join part as part_1
          inner join part as part_2
          on (part_1.p_partkey = part_2.p_partkey )
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_suppkey is not NULL
group by orders_1.o_orderdate, region_1.r_comment
limit 21;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  supplier_1.s_suppkey, 
  customer_1.c_nationkey, 
  nation_1.n_regionkey
from 
  supplier as supplier_1
      inner join nation as nation_1
        inner join customer as customer_1
          inner join customer as customer_2
          on (customer_1.c_custkey = customer_2.c_custkey )
        on (nation_1.n_nationkey = customer_2.c_custkey )
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where nation_1.n_comment is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_clerk
limit 23;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  max(
    orders_1.o_totalprice), 
  max(
    orders_1.o_custkey), 
  orders_1.o_comment, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 10;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    customer_2.c_nationkey), 
  customer_2.c_acctbal, 
  customer_1.c_comment, 
  customer_2.c_phone, 
  customer_2.c_comment, 
  customer_2.c_address
from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_custkey is not NULL
group by customer_1.c_comment, customer_2.c_acctbal, customer_2.c_address, customer_2.c_comment, customer_2.c_phone
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_container
from 
  part as part_1
where part_1.p_partkey = part_1.p_size
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  customer_1.c_nationkey, 
  orders_1.o_comment
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_mktsegment is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 39;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  max(
    customer_1.c_acctbal), 
  min(
    nation_1.n_nationkey)
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_acctbal is not NULL
group by customer_1.c_comment
limit 7;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  sum(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_acctbal, customer_1.c_name, customer_1.c_phone
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  part_1.p_size
from 
  part as part_1
where part_1.p_container >= part_1.p_mfgr
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_partkey is not NULL
limit 33;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  avg(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_availqty), 
  avg(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax, 
  lineitem_1.l_linestatus, 
  avg(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_receiptdate, lineitem_1.l_tax
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_name is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_type, 
  max(
    part_1.p_retailprice), 
  min(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_partkey, part_1.p_type
limit 14;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_comment, 
  min(
    supplier_1.s_acctbal), 
  min(
    supplier_1.s_nationkey), 
  min(
    supplier_1.s_suppkey)
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_address is not NULL
group by supplier_1.s_comment
limit 33;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 8;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_shipdate)
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_returnflag >= lineitem_1.l_shipmode
limit 12;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_comment, customer_1.c_mktsegment
limit 7;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  customer_1.c_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  customer_1.c_comment, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_phone, 
  supplier_1.s_comment, 
  min(
    supplier_1.s_nationkey)
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_phone, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  max(
    part_1.p_retailprice), 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_mfgr, part_1.p_retailprice
limit 30;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  max(
    supplier_2.s_nationkey)
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_comment is not NULL
group by supplier_1.s_acctbal, supplier_1.s_suppkey
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_acctbal), 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_name
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  count(
    region_1.r_comment), 
  region_1.r_comment
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_name, supplier_1.s_suppkey
limit 33;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  part_1.p_partkey, 
  region_2.r_comment, 
  customer_1.c_nationkey, 
  region_2.r_name
from 
  customer as customer_1
      inner join region as region_1
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join nation as nation_1
      inner join region as region_2
      on (nation_1.n_nationkey = region_2.r_regionkey )
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_2.r_name is not NULL
limit 9;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate >= lineitem_1.l_shipdate
group by lineitem_1.l_commitdate, lineitem_1.l_quantity, lineitem_1.l_returnflag, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  count(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey < nation_1.n_regionkey
group by nation_1.n_comment, nation_1.n_regionkey
limit 4;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 9;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    inner join lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where part_1.p_retailprice is not NULL
limit 34;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  customer_1.c_address, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_acctbal is not NULL
group by customer_1.c_address, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 33;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_2.o_custkey, 
  orders_2.o_clerk, 
  orders_1.o_clerk, 
  customer_1.c_comment, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_2.o_shippriority, 
  max(
    supplier_1.s_acctbal), 
  orders_2.o_orderstatus, 
  customer_1.c_nationkey, 
  supplier_1.s_phone, 
  orders_2.o_orderpriority, 
  max(
    orders_1.o_orderdate), 
  customer_1.c_acctbal, 
  supplier_1.s_address, 
  customer_1.c_name, 
  customer_1.c_mktsegment
from 
  supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_suppkey = orders_1.o_orderkey )
      inner join orders as orders_2
      on (supplier_1.s_suppkey = orders_2.o_orderkey )
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where customer_1.c_mktsegment is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_shippriority, orders_2.o_clerk, orders_2.o_custkey, orders_2.o_orderpriority, orders_2.o_orderstatus, orders_2.o_shippriority, supplier_1.s_address, supplier_1.s_phone
limit 26;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  nation_1.n_comment, 
  supplier_1.s_acctbal, 
  region_1.r_comment, 
  region_1.r_name
from 
  lineitem as lineitem_1
      inner join region as region_1
        inner join supplier as supplier_1
          inner join nation as nation_1
          on (supplier_1.s_suppkey = nation_1.n_nationkey )
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_returnflag is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_comment
from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where region_1.r_name is not NULL
limit 34;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  customer_1.c_comment, 
  partsupp_1.ps_availqty, 
  customer_1.c_name, 
  max(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  partsupp_1.ps_supplycost, 
  count(*)
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_name is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  min(
    part_1.p_size), 
  part_1.p_container
from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
group by part_1.p_container, part_1.p_size
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_partkey, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_type is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 34;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  customer_1.c_comment
from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
    inner join region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    on (nation_1.n_nationkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  region_1.r_regionkey, 
  max(
    customer_1.c_nationkey), 
  max(
    customer_1.c_custkey)
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where region_1.r_regionkey is not NULL
group by customer_1.c_custkey, region_1.r_comment, region_1.r_regionkey
limit 37;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  count(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
group by nation_1.n_comment, nation_1.n_nationkey
limit 13;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  count(*)
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 22;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  count(*), 
  sum(
    customer_1.c_custkey)
from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
group by customer_1.c_custkey, customer_1.c_phone, nation_1.n_name, nation_1.n_regionkey
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
limit 5;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_name
from 
  partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
    inner join customer as customer_2
      inner join supplier as supplier_1
      on (customer_2.c_custkey = supplier_1.s_suppkey )
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where customer_2.c_acctbal is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_clerk = orders_1.o_orderpriority
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority
limit 23;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_phone
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone
limit 26;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  min(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_acctbal < customer_1.c_acctbal
group by customer_1.c_name
limit 25;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  nation_1.n_comment, 
  lineitem_1.l_commitdate
from 
  orders as orders_1
        inner join nation as nation_1
        on (orders_1.o_orderkey = nation_1.n_nationkey )
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_returnflag < orders_1.o_orderpriority
limit 17;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  lineitem_1.l_partkey
from 
  part as part_1
        inner join partsupp as partsupp_1
        on (part_1.p_partkey = partsupp_1.ps_partkey )
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    on (part_1.p_partkey = nation_1.n_nationkey )
where lineitem_1.l_quantity >= lineitem_1.l_extendedprice
limit 36;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_partkey, 
  sum(
    lineitem_1.l_orderkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_tax = lineitem_1.l_extendedprice
group by lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_partkey
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_comment, 
  nation_1.n_nationkey, 
  customer_1.c_name
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_nationkey is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_totalprice), 
  count(*), 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 6;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    customer_1.c_acctbal), 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  avg(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_mktsegment, customer_1.c_name
limit 28;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  supplier_1.s_comment
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where supplier_1.s_address is not NULL
limit 34;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand, 
  supplier_1.s_acctbal, 
  region_1.r_name, 
  max(
    lineitem_1.l_receiptdate)
from 
  region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    inner join part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = part_1.p_partkey )
where lineitem_1.l_shipdate >= lineitem_1.l_receiptdate
group by part_1.p_brand, region_1.r_name, supplier_1.s_acctbal
limit 6;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where partsupp_1.ps_suppkey > region_1.r_regionkey
limit 42;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_phone, 
  customer_2.c_nationkey, 
  count(*), 
  customer_2.c_acctbal, 
  avg(
    customer_2.c_nationkey), 
  customer_2.c_address
from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
group by customer_2.c_acctbal, customer_2.c_address, customer_2.c_nationkey, supplier_1.s_phone
limit 17;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_2.s_name
from 
  supplier as supplier_1
    inner join nation as nation_1
      inner join supplier as supplier_2
      on (nation_1.n_nationkey = supplier_2.s_suppkey )
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_1.s_phone is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 38;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  part_1.p_brand, 
  min(
    orders_1.o_orderdate)
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_comment is not NULL
group by orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, part_1.p_brand, part_1.p_comment
limit 32;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_mfgr < part_1.p_container
group by part_1.p_brand, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size
limit 40;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  sum(
    nation_1.n_regionkey), 
  count(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_name is not NULL
limit 29;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  lineitem_1.l_commitdate, 
  partsupp_1.ps_partkey, 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  lineitem as lineitem_1
        inner join region as region_1
        on (lineitem_1.l_orderkey = region_1.r_regionkey )
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where nation_1.n_nationkey is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    customer_1.c_acctbal), 
  customer_1.c_nationkey, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_nationkey
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey), 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_nationkey
limit 27;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  partsupp_1.ps_supplycost
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_suppkey is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_shippriority < orders_1.o_orderkey
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 4;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_container, 
  max(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_partkey <= part_1.p_size
group by part_1.p_brand, part_1.p_container, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 33;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where lineitem_1.l_tax <= lineitem_1.l_extendedprice
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 34;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderstatus, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_comment, 
  sum(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey
limit 22;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  max(
    customer_1.c_nationkey), 
  part_1.p_container, 
  sum(
    customer_1.c_acctbal)
from 
  nation as nation_1
    inner join customer as customer_1
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_nationkey, part_1.p_container
limit 30;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  min(
    lineitem_1.l_receiptdate), 
  supplier_1.s_acctbal, 
  lineitem_1.l_orderkey, 
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where supplier_1.s_name is not NULL
group by lineitem_1.l_orderkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey
limit 30;
-- meta {"num_joins":6,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_comment, 
  lineitem_2.l_suppkey, 
  customer_1.c_phone, 
  part_1.p_partkey, 
  part_1.p_comment, 
  region_1.r_regionkey
from 
  lineitem as lineitem_1
        inner join customer as customer_1
            inner join lineitem as lineitem_2
            on (customer_1.c_custkey = lineitem_2.l_orderkey )
          inner join customer as customer_2
          on (lineitem_2.l_orderkey = customer_2.c_custkey )
        on (lineitem_1.l_orderkey = customer_1.c_custkey )
      inner join part as part_1
      on (lineitem_2.l_orderkey = part_1.p_partkey )
    inner join region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_2.c_custkey is not NULL
limit 33;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  customer_1.c_acctbal, 
  nation_1.n_regionkey, 
  partsupp_1.ps_partkey, 
  customer_1.c_phone, 
  customer_1.c_address, 
  min(
    partsupp_1.ps_supplycost), 
  customer_1.c_mktsegment, 
  max(
    partsupp_1.ps_availqty), 
  customer_1.c_comment
from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_phone, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey, partsupp_1.ps_partkey
limit 21;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  max(
    orders_1.o_custkey), 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_totalprice = orders_1.o_totalprice
group by orders_1.o_clerk, orders_1.o_orderstatus
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  nation_1.n_nationkey, 
  count(
    nation_1.n_name), 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  count(
    nation_1.n_comment)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  orders_1.o_totalprice, 
  customer_1.c_address, 
  part_1.p_container, 
  count(*), 
  part_1.p_brand, 
  part_1.p_retailprice, 
  customer_1.c_comment
from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where part_1.p_name is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, orders_1.o_totalprice, part_1.p_brand, part_1.p_container, part_1.p_retailprice
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_phone = customer_1.c_mktsegment
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 20;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  sum(
    orders_1.o_orderkey), 
  orders_1.o_totalprice, 
  avg(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  max(
    orders_1.o_custkey)
from 
  orders as orders_1
where orders_1.o_shippriority <= orders_1.o_custkey
group by orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 10;
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  partsupp_1.ps_comment, 
  part_1.p_name, 
  orders_1.o_custkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_supplycost), 
  count(*), 
  orders_1.o_orderkey, 
  nation_1.n_nationkey, 
  partsupp_1.ps_supplycost, 
  orders_1.o_totalprice, 
  sum(
    orders_1.o_orderkey), 
  min(
    partsupp_1.ps_availqty), 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
    inner join part as part_1
        inner join partsupp as partsupp_1
        on (part_1.p_partkey = partsupp_1.ps_partkey )
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where orders_1.o_shippriority is not NULL
group by nation_1.n_nationkey, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_totalprice, part_1.p_name, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 20;
-- meta {"num_joins":2,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    part_1.p_retailprice), 
  part_1.p_container, 
  avg(
    part_1.p_retailprice), 
  part_1.p_brand, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  nation_1.n_regionkey, 
  part_1.p_partkey, 
  max(
    nation_1.n_regionkey), 
  sum(
    region_1.r_regionkey), 
  avg(
    part_1.p_size), 
  count(
    nation_1.n_name), 
  max(
    part_1.p_partkey), 
  avg(
    nation_1.n_regionkey)
from 
  part as part_1
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_regionkey is not NULL
group by nation_1.n_regionkey, part_1.p_brand, part_1.p_container, part_1.p_partkey, region_1.r_comment, region_1.r_regionkey
limit 36;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  nation_1.n_comment, 
  orders_1.o_totalprice, 
  nation_1.n_regionkey, 
  orders_1.o_comment
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_totalprice is not NULL
limit 2;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_2.n_name, 
  count(
    nation_2.n_name), 
  nation_2.n_nationkey, 
  count(*), 
  nation_1.n_comment
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey, nation_2.n_name, nation_2.n_nationkey
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_mktsegment, 
  min(
    part_1.p_partkey), 
  customer_1.c_custkey
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_address is not NULL
group by customer_1.c_custkey, customer_1.c_mktsegment
limit 11;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  max(
    nation_1.n_nationkey), 
  max(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 4;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address, 
  customer_1.c_nationkey, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipdate, 
  customer_1.c_mktsegment
from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_linestatus < lineitem_1.l_returnflag
group by customer_1.c_address, customer_1.c_mktsegment, customer_1.c_nationkey, lineitem_1.l_shipdate, lineitem_1.l_shipmode
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_suppkey is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    orders_1.o_orderkey)
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_1.o_orderkey > orders_2.o_custkey
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_name, 
  customer_1.c_custkey, 
  avg(
    customer_1.c_custkey), 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_name
limit 19;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_comment, 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  sum(
    supplier_1.s_acctbal), 
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey
limit 13;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  part_1.p_container
from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where part_1.p_retailprice > orders_1.o_totalprice
limit 35;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  avg(
    orders_1.o_totalprice), 
  max(
    orders_1.o_orderkey)
from 
  orders as orders_1
where orders_1.o_custkey = orders_1.o_shippriority
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority
limit 2;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey, 
  avg(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 16;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 20;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_2.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_name
from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_phone is not NULL
limit 22;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_shipmode
limit 30;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_shipinstruct, 
  nation_1.n_name, 
  lineitem_1.l_shipdate, 
  nation_1.n_comment, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode
from 
  partsupp as partsupp_1
    inner join nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_orderkey is not NULL
limit 22;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linestatus, 
  region_1.r_comment
from 
  lineitem as lineitem_1
    inner join orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where region_1.r_comment is not NULL
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
limit 2;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    part_1.p_partkey)
from 
  supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_suppkey = nation_1.n_nationkey )
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where supplier_1.s_suppkey is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 30;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey = partsupp_1.ps_availqty
group by partsupp_1.ps_availqty
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  sum(
    lineitem_1.l_linenumber), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_partkey, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus <= lineitem_1.l_shipmode
group by lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_suppkey
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 25;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    part_1.p_brand)
from 
  part as part_1
where part_1.p_size is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  count(*), 
  max(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 27;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
limit 12;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey <= supplier_1.s_nationkey
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  count(
    nation_1.n_nationkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 35;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linenumber, 
  count(
    lineitem_1.l_shipmode)
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_shipdate
limit 29;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderpriority, 
  region_1.r_comment
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 10;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    supplier_2.s_acctbal), 
  supplier_2.s_name, 
  region_1.r_regionkey, 
  region_2.r_regionkey, 
  partsupp_1.ps_supplycost, 
  supplier_2.s_phone, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey)
from 
  region as region_1
    inner join supplier as supplier_1
        inner join partsupp as partsupp_1
        on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
      inner join supplier as supplier_2
        inner join region as region_2
        on (supplier_2.s_suppkey = region_2.r_regionkey )
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_2.r_name is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, region_1.r_regionkey, region_2.r_regionkey, supplier_2.s_name, supplier_2.s_phone
limit 17;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    lineitem_1.l_tax), 
  region_2.r_name, 
  min(
    lineitem_1.l_extendedprice)
from 
  lineitem as lineitem_1
        inner join region as region_1
        on (lineitem_1.l_orderkey = region_1.r_regionkey )
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    inner join customer as customer_1
    on (region_2.r_regionkey = customer_1.c_custkey )
where customer_1.c_custkey is not NULL
group by region_2.r_name
limit 28;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_2.s_phone, 
  orders_1.o_comment, 
  customer_1.c_address, 
  orders_2.o_orderkey
from 
  partsupp as partsupp_1
      inner join orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      on (partsupp_1.ps_partkey = orders_2.o_orderkey )
    inner join supplier as supplier_1
      inner join customer as customer_1
          inner join supplier as supplier_2
          on (customer_1.c_custkey = supplier_2.s_suppkey )
        inner join part as part_1
          inner join supplier as supplier_3
          on (part_1.p_partkey = supplier_3.s_suppkey )
        on (customer_1.c_custkey = part_1.p_partkey )
      on (supplier_1.s_suppkey = supplier_3.s_suppkey )
    on (orders_2.o_orderkey = supplier_1.s_suppkey )
where customer_1.c_comment is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  avg(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_supplycost
limit 7;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    orders_1.o_totalprice), 
  lineitem_1.l_shipmode, 
  partsupp_1.ps_comment, 
  lineitem_1.l_shipdate, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  count(*), 
  orders_1.o_totalprice, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
    inner join orders as orders_1
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_custkey is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_tax, orders_1.o_custkey, orders_1.o_orderstatus, orders_1.o_totalprice, partsupp_1.ps_comment
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate = lineitem_1.l_commitdate
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderdate, 
  nation_1.n_comment, 
  orders_1.o_shippriority
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
limit 42;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_2.ps_suppkey, 
  partsupp_2.ps_comment, 
  count(*)
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_2.ps_comment is not NULL
group by partsupp_1.ps_suppkey, partsupp_2.ps_comment, partsupp_2.ps_suppkey
limit 18;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_2.n_name
from 
  nation as nation_1
        inner join nation as nation_2
        on (nation_1.n_nationkey = nation_2.n_nationkey )
      inner join nation as nation_3
      on (nation_2.n_nationkey = nation_3.n_nationkey )
    inner join region as region_1
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    on (nation_2.n_nationkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey <= nation_1.n_regionkey
limit 21;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
limit 28;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
limit 39;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  part_1.p_type
from 
  part as part_1
where part_1.p_retailprice < part_1.p_retailprice
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
limit 16;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address
from 
  supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where supplier_1.s_address is not NULL
limit 13;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_1.n_nationkey is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey), 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_mfgr, 
  part_1.p_name
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
limit 8;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  customer as customer_1
        inner join region as region_1
        on (customer_1.c_custkey = region_1.r_regionkey )
      inner join nation as nation_1
        inner join part as part_1
          inner join nation as nation_2
          on (part_1.p_partkey = nation_2.n_nationkey )
        on (nation_1.n_nationkey = nation_2.n_nationkey )
      on (customer_1.c_custkey = nation_2.n_nationkey )
    inner join part as part_2
    on (region_1.r_regionkey = part_2.p_partkey )
where part_2.p_mfgr = region_1.r_name
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_shippriority, 
  orders_1.o_custkey
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_custkey >= part_1.p_partkey
limit 42;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  avg(
    nation_1.n_regionkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 22;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_2.l_tax
from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
          inner join lineitem as lineitem_2
          on (partsupp_1.ps_partkey = lineitem_2.l_orderkey )
        inner join supplier as supplier_1
        on (lineitem_2.l_orderkey = supplier_1.s_suppkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join orders as orders_1
    on (lineitem_2.l_orderkey = orders_1.o_orderkey )
where lineitem_2.l_tax is not NULL
limit 42;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 1;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  sum(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_regionkey
limit 14;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_phone
from 
  lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where lineitem_1.l_linestatus is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name > region_1.r_name
limit 9;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_2.o_orderkey, 
  orders_2.o_orderdate
from 
  nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where nation_1.n_name >= orders_1.o_orderpriority
limit 34;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 26;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax, 
  min(
    lineitem_1.l_suppkey), 
  customer_1.c_acctbal, 
  lineitem_1.l_shipmode
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_linenumber is not NULL
group by customer_1.c_acctbal, lineitem_1.l_extendedprice, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 29;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_size, 
  part_1.p_retailprice, 
  supplier_1.s_name, 
  part_1.p_container, 
  partsupp_1.ps_supplycost, 
  supplier_1.s_address, 
  min(
    lineitem_1.l_shipdate), 
  partsupp_1.ps_suppkey, 
  part_1.p_comment, 
  part_1.p_name, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipdate, 
  max(
    part_1.p_retailprice)
from 
  supplier as supplier_1
    inner join part as part_1
        inner join partsupp as partsupp_1
        on (part_1.p_partkey = partsupp_1.ps_partkey )
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where partsupp_1.ps_partkey is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_shipdate, part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_retailprice, part_1.p_size, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, supplier_1.s_address, supplier_1.s_name
limit 10;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
limit 20;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 11;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  orders_1.o_custkey, 
  supplier_1.s_name, 
  orders_1.o_comment, 
  partsupp_1.ps_suppkey
from 
  customer as customer_1
      inner join partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_orderkey = lineitem_1.l_orderkey )
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where customer_1.c_custkey is not NULL
limit 7;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_2.p_comment, 
  part_2.p_type, 
  part_1.p_size, 
  count(
    part_2.p_comment), 
  nation_1.n_name, 
  nation_1.n_comment, 
  part_2.p_container, 
  nation_1.n_regionkey, 
  count(*), 
  part_2.p_mfgr, 
  part_2.p_partkey, 
  part_2.p_retailprice
from 
  part as part_1
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, part_1.p_size, part_2.p_comment, part_2.p_container, part_2.p_mfgr, part_2.p_partkey, part_2.p_retailprice, part_2.p_type
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_comment, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  avg(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 36;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_suppkey), 
  sum(
    lineitem_1.l_discount)
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag > lineitem_1.l_shipmode
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  orders_1.o_orderdate, 
  avg(
    orders_1.o_totalprice), 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_custkey <= orders_1.o_orderkey
group by nation_1.n_name, nation_1.n_regionkey, orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_shippriority
limit 3;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_mfgr >= part_1.p_container
limit 4;
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  supplier_1.s_phone, 
  nation_1.n_nationkey, 
  supplier_2.s_phone, 
  part_1.p_retailprice, 
  min(
    supplier_2.s_suppkey), 
  sum(
    supplier_2.s_acctbal), 
  max(
    supplier_2.s_nationkey), 
  supplier_1.s_address, 
  part_1.p_partkey
from 
  supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join supplier as supplier_2
        inner join region as region_1
        on (supplier_2.s_suppkey = region_1.r_regionkey )
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    on (nation_1.n_nationkey = region_1.r_regionkey )
where supplier_1.s_suppkey = nation_1.n_regionkey
group by nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_partkey, part_1.p_retailprice, region_1.r_name, region_1.r_regionkey, supplier_1.s_address, supplier_1.s_phone, supplier_2.s_phone
limit 10;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  max(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_size, 
  sum(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 14;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_name, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 1;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 35;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
limit 38;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  avg(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  sum(
    partsupp_1.ps_suppkey), 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_availqty)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 1;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_container
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_regionkey > part_1.p_partkey
limit 14;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  lineitem_1.l_quantity
from 
  nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_returnflag is not NULL
limit 39;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal, 
  part_1.p_brand, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  part_1.p_name, 
  sum(
    customer_1.c_nationkey), 
  part_1.p_partkey
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where part_1.p_retailprice is not NULL
group by customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_nationkey, part_1.p_brand, part_1.p_name, part_1.p_partkey
limit 21;
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    partsupp_2.ps_suppkey), 
  region_1.r_comment, 
  partsupp_2.ps_supplycost, 
  partsupp_2.ps_comment, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_availqty), 
  lineitem_1.l_orderkey, 
  partsupp_1.ps_suppkey, 
  supplier_1.s_address, 
  lineitem_1.l_suppkey, 
  partsupp_3.ps_partkey
from 
  partsupp as partsupp_1
        inner join supplier as supplier_1
          inner join lineitem as lineitem_1
          on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
        on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    inner join region as region_1
      inner join partsupp as partsupp_3
      on (region_1.r_regionkey = partsupp_3.ps_partkey )
    on (lineitem_1.l_orderkey = partsupp_3.ps_partkey )
where lineitem_1.l_shipinstruct >= lineitem_1.l_returnflag
group by lineitem_1.l_orderkey, lineitem_1.l_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_2.ps_comment, partsupp_2.ps_supplycost, partsupp_3.ps_partkey, region_1.r_comment, supplier_1.s_address
limit 25;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_custkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_2.ps_supplycost, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join partsupp as partsupp_2
      on (customer_1.c_custkey = partsupp_2.ps_partkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_name is not NULL
limit 7;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  orders_1.o_totalprice, 
  customer_1.c_phone
from 
  nation as nation_1
      inner join part as part_1
        inner join part as part_2
          inner join nation as nation_2
            inner join orders as orders_1
            on (nation_2.n_nationkey = orders_1.o_orderkey )
          on (part_2.p_partkey = orders_1.o_orderkey )
        on (part_1.p_partkey = orders_1.o_orderkey )
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where nation_2.n_nationkey is not NULL
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_mktsegment = customer_1.c_phone
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  part_1.p_comment
from 
  part as part_1
where part_1.p_comment is not NULL
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 32;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_nationkey, 
  supplier_1.s_phone, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where nation_1.n_comment is not NULL
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_extendedprice
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_suppkey > partsupp_1.ps_availqty
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 31;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 32;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_totalprice, 
  min(
    orders_1.o_orderkey), 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate = orders_1.o_orderdate
group by orders_1.o_totalprice, partsupp_1.ps_supplycost
limit 30;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 35;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  count(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 17;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_tax), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, lineitem_1.l_tax
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 13;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 41;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_tax, 
  lineitem_1.l_discount, 
  lineitem_1.l_quantity, 
  sum(
    lineitem_1.l_tax), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_quantity, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 7;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_receiptdate, 
  min(
    lineitem_1.l_linenumber)
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_receiptdate, lineitem_1.l_returnflag
limit 4;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    lineitem_1.l_shipdate), 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  lineitem_1.l_linestatus, 
  supplier_1.s_acctbal
from 
  lineitem as lineitem_1
    inner join region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_linestatus, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_phone
limit 31;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  sum(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_orderpriority > orders_1.o_clerk
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderstatus
limit 31;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  partsupp_1.ps_partkey
from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate > orders_1.o_orderdate
limit 23;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate, 
  part_1.p_name, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_suppkey), 
  part_1.p_brand
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_partkey is not NULL
group by lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, part_1.p_brand, part_1.p_name
limit 17;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_regionkey >= nation_1.n_nationkey
limit 16;
