select  
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  nation_1.n_comment, 
  lineitem_2.l_shipdate, 
  max(
    lineitem_2.l_shipdate), 
  lineitem_2.l_extendedprice, 
  sum(
    lineitem_1.l_suppkey), 
  lineitem_2.l_discount, 
  lineitem_1.l_returnflag, 
  nation_1.n_nationkey, 
  lineitem_2.l_shipmode, 
  lineitem_2.l_partkey, 
  nation_1.provsql
from 
  lineitem as lineitem_1
    inner join nation as nation_1
      inner join lineitem as lineitem_2
      on (nation_1.n_comment = lineitem_2.l_comment )
    on (lineitem_1.l_receiptdate = lineitem_2.l_shipdate )
where nation_1.provsql > lineitem_1.provsql
group by lineitem_1.l_tax, lineitem_1.l_tax, nation_1.n_comment, lineitem_2.l_shipdate, lineitem_2.l_extendedprice, lineitem_2.l_discount, lineitem_1.l_returnflag, nation_1.n_nationkey, lineitem_2.l_shipmode, lineitem_2.l_partkey, nation_1.provsql
limit 23;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
limit 32;
select  
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 11;
select distinct 
  lineitem_2.l_partkey, 
  orders_1.o_orderdate, 
  max(
    lineitem_2.l_linestatus), 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_address
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
        inner join lineitem as lineitem_2
        on (supplier_1.s_acctbal = lineitem_2.l_quantity )
      inner join orders as orders_1
      on (lineitem_2.l_returnflag = orders_1.o_orderstatus )
    on (lineitem_1.l_quantity = orders_1.o_totalprice )
where lineitem_1.l_returnflag is not NULL
group by lineitem_2.l_partkey, orders_1.o_orderdate, supplier_1.s_comment, supplier_1.s_suppkey, supplier_1.s_address
limit 32;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 23;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_partkey, 
  lineitem_1.provsql, 
  lineitem_1.provsql, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_receiptdate, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
limit 8;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_acctbal = supplier_1.s_acctbal
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey
limit 7;
select  
  partsupp_1.ps_availqty, 
  part_1.p_size, 
  orders_1.provsql, 
  partsupp_1.ps_supplycost
from 
  orders as orders_1
      inner join partsupp as partsupp_1
        inner join part as part_1
        on (partsupp_1.ps_partkey = part_1.p_partkey )
      on (orders_1.o_comment = part_1.p_name )
    inner join lineitem as lineitem_1
    on (part_1.p_size = lineitem_1.l_orderkey )
where lineitem_1.l_tax is not NULL
limit 9;
select  
  nation_1.n_nationkey, 
  part_1.p_size, 
  orders_1.o_custkey, 
  part_1.p_retailprice, 
  supplier_1.provsql, 
  supplier_1.s_phone
from 
  supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_phone = orders_1.o_orderstatus )
    inner join part as part_1
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    on (orders_1.o_orderpriority = nation_1.n_name )
where orders_1.o_orderkey = nation_1.n_nationkey
limit 39;
select  
  part_2.p_type, 
  min(
    lineitem_1.l_discount), 
  orders_2.o_totalprice, 
  part_2.p_container, 
  partsupp_2.ps_supplycost, 
  part_1.p_mfgr, 
  orders_2.o_comment
from 
  orders as orders_1
          inner join part as part_1
          on (orders_1.o_shippriority = part_1.p_partkey )
        inner join lineitem as lineitem_1
        on (orders_1.o_orderstatus = lineitem_1.l_returnflag )
      inner join part as part_2
        inner join orders as orders_2
          inner join partsupp as partsupp_1
          on (orders_2.o_totalprice = partsupp_1.ps_supplycost )
        on (part_2.p_size = partsupp_1.ps_partkey )
      on (lineitem_1.l_comment = part_2.p_name )
    inner join partsupp as partsupp_2
    on (partsupp_1.provsql = partsupp_2.provsql )
where orders_1.o_orderdate <= lineitem_1.l_shipdate
group by part_2.p_type, orders_2.o_totalprice, part_2.p_container, partsupp_2.ps_supplycost, part_1.p_mfgr, orders_2.o_comment
limit 15;
select  
  orders_2.o_orderdate, 
  orders_1.o_totalprice, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linenumber, 
  sum(
    lineitem_1.l_tax)
from 
  orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderdate = lineitem_1.l_shipdate )
    inner join orders as orders_2
      inner join part as part_1
      on (orders_2.o_totalprice = part_1.p_retailprice )
    on (orders_1.o_comment = part_1.p_name )
where lineitem_1.l_shipmode is not NULL
group by orders_2.o_orderdate, orders_1.o_totalprice, lineitem_1.l_linenumber, lineitem_1.l_linenumber
limit 36;
select  
  orders_1.o_comment, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.provsql <= orders_1.provsql
limit 31;
select  
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 1;
select  
  part_1.p_name, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
    inner join customer as customer_1
      inner join part as part_1
      on (customer_1.c_address = part_1.p_name )
    on (lineitem_1.l_shipinstruct = customer_1.c_phone )
where customer_1.c_nationkey is not NULL
limit 19;
select  
  lineitem_1.l_partkey, 
  nation_2.n_regionkey, 
  nation_2.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  part_1.p_container
from 
  lineitem as lineitem_1
    inner join part as part_1
        inner join nation as nation_1
        on (part_1.p_size = nation_1.n_nationkey )
      inner join nation as nation_2
      on (part_1.p_name = nation_2.n_comment )
    on (lineitem_1.l_tax = part_1.p_retailprice )
where lineitem_1.l_shipmode >= part_1.p_brand
limit 30;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  max(
    supplier_1.s_name), 
  supplier_1.s_nationkey, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_name = supplier_1.s_phone
group by supplier_1.s_acctbal, supplier_1.s_phone, supplier_1.s_nationkey, supplier_1.s_address
limit 29;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 31;
select  
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 7;
select  
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_partkey, 
  count(
    part_1.p_type), 
  part_1.p_mfgr, 
  min(
    part_1.p_mfgr), 
  part_1.p_type
from 
  part as part_1
where part_1.provsql < part_1.provsql
group by part_1.p_size, part_1.p_brand, part_1.p_partkey, part_1.p_mfgr, part_1.p_type
limit 28;
select  
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.provsql, nation_1.n_regionkey, nation_1.n_name, nation_1.n_nationkey
limit 10;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.provsql, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.provsql, 
  orders_1.o_orderpriority, 
  sum(
    orders_1.o_shippriority), 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_shippriority, 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.provsql >= orders_1.provsql
group by orders_1.o_orderkey, orders_1.o_orderkey, orders_1.provsql, orders_1.o_custkey, orders_1.o_orderstatus, orders_1.provsql, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_clerk
limit 35;
select  
  min(
    orders_1.o_orderdate), 
  avg(
    part_1.p_retailprice), 
  region_1.provsql, 
  max(
    part_1.p_retailprice), 
  region_1.provsql
from 
  part as part_1
    inner join orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderstatus = region_1.r_name )
    on (part_1.p_container = region_1.r_name )
where orders_1.o_custkey is not NULL
group by region_1.provsql, region_1.provsql
limit 40;
select  
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 22;
select  
  part_3.p_retailprice
from 
  part as part_1
      inner join part as part_2
        inner join part as part_3
        on (part_2.p_comment = part_3.p_name )
      on (part_1.p_retailprice = part_2.p_retailprice )
    inner join nation as nation_1
    on (part_1.provsql = nation_1.provsql )
where part_1.provsql is not NULL
limit 33;
select  
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  partsupp_1.ps_availqty, 
  customer_1.c_comment, 
  customer_1.c_address
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_comment = customer_1.c_name )
where partsupp_1.ps_supplycost < customer_1.c_acctbal
limit 12;
select  
  count(*), 
  nation_1.n_name, 
  sum(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  count(*), 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_name, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_name, nation_1.n_nationkey, nation_1.provsql, nation_1.n_regionkey, nation_1.n_comment, nation_1.provsql, nation_1.provsql
limit 36;
select  
  supplier_2.provsql, 
  min(
    supplier_2.s_acctbal), 
  supplier_1.provsql
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.provsql = supplier_2.provsql )
where supplier_1.s_name <= supplier_2.s_phone
group by supplier_2.provsql, supplier_1.provsql
limit 18;
select  
  orders_2.o_custkey, 
  min(
    orders_1.o_orderdate), 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  min(
    orders_2.o_orderdate), 
  nation_1.n_nationkey, 
  orders_2.o_orderpriority, 
  orders_2.o_orderstatus, 
  orders_1.o_orderstatus, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    orders_1.o_shippriority), 
  orders_2.o_orderkey, 
  nation_1.n_comment, 
  orders_2.o_orderpriority, 
  nation_1.n_name, 
  count(*)
from 
  orders as orders_1
    inner join orders as orders_2
      inner join nation as nation_1
      on (orders_2.o_clerk = nation_1.n_name )
    on (orders_1.o_clerk = orders_2.o_orderstatus )
where orders_2.o_orderdate is not NULL
group by orders_2.o_custkey, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_nationkey, orders_2.o_orderpriority, orders_2.o_orderstatus, orders_1.o_orderstatus, nation_1.n_comment, nation_1.n_comment, orders_2.o_orderkey, nation_1.n_comment, orders_2.o_orderpriority, nation_1.n_name
limit 38;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  region_1.provsql, 
  nation_1.provsql, 
  region_1.provsql, 
  nation_1.provsql
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_name = region_1.r_name )
where nation_1.n_name < region_1.r_name
limit 10;
select  
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  count(*), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.provsql, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.provsql > nation_1.provsql
group by nation_1.provsql, nation_1.provsql, nation_1.n_regionkey, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_name, nation_1.n_regionkey, nation_1.provsql, nation_1.n_name
limit 9;
select  
  partsupp_1.ps_comment, 
  region_1.r_regionkey, 
  count(*), 
  partsupp_1.ps_partkey, 
  lineitem_1.l_shipdate, 
  region_1.r_name, 
  region_1.r_name, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_orderkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  lineitem_1.l_suppkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  max(
    lineitem_1.l_commitdate), 
  region_1.provsql, 
  max(
    region_1.r_name), 
  partsupp_1.ps_suppkey, 
  region_1.r_name, 
  region_1.r_name, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipmode, 
  region_1.r_comment, 
  lineitem_1.l_comment
from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_comment = region_1.r_comment )
    inner join lineitem as lineitem_1
    on (region_1.r_name = lineitem_1.l_returnflag )
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_comment, region_1.r_regionkey, partsupp_1.ps_partkey, lineitem_1.l_shipdate, region_1.r_name, region_1.r_name, partsupp_1.ps_partkey, lineitem_1.l_orderkey, partsupp_1.ps_availqty, partsupp_1.ps_comment, lineitem_1.l_suppkey, partsupp_1.ps_availqty, region_1.provsql, partsupp_1.ps_suppkey, region_1.r_name, region_1.r_name, partsupp_1.ps_suppkey, lineitem_1.l_linestatus, lineitem_1.l_commitdate, lineitem_1.l_shipmode, region_1.r_comment, lineitem_1.l_comment
limit 7;
select  
  avg(
    customer_1.c_custkey), 
  supplier_1.s_address
from 
  orders as orders_1
      inner join supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_address = nation_1.n_comment )
      on (orders_1.o_orderstatus = supplier_1.s_name )
    inner join supplier as supplier_2
      inner join customer as customer_1
        inner join lineitem as lineitem_1
        on (customer_1.c_nationkey = lineitem_1.l_orderkey )
      on (supplier_2.s_phone = lineitem_1.l_returnflag )
    on (nation_1.provsql = supplier_2.provsql )
where supplier_2.s_comment is not NULL
group by supplier_1.s_address
limit 34;
select  
  part_1.p_container, 
  part_1.p_name
from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 36;
select  
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate > lineitem_1.l_shipdate
limit 31;
select  
  count(*), 
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_name, part_1.p_container, part_1.p_brand, part_1.p_retailprice
limit 42;
select  
  supplier_2.provsql, 
  supplier_2.s_suppkey, 
  supplier_1.s_comment, 
  supplier_2.provsql, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_phone), 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_2.provsql, 
  supplier_2.s_name, 
  supplier_2.s_address, 
  supplier_2.s_nationkey, 
  supplier_2.s_comment, 
  supplier_2.s_nationkey, 
  supplier_2.s_phone, 
  supplier_2.s_comment, 
  min(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_acctbal = supplier_2.s_acctbal )
where supplier_1.provsql is not NULL
group by supplier_2.provsql, supplier_2.s_suppkey, supplier_1.s_comment, supplier_2.provsql, supplier_1.s_phone, supplier_1.s_comment, supplier_1.s_phone, supplier_2.provsql, supplier_2.s_name, supplier_2.s_address, supplier_2.s_nationkey, supplier_2.s_comment, supplier_2.s_nationkey, supplier_2.s_phone, supplier_2.s_comment
limit 13;
select  
  part_1.p_name
from 
  part as part_1
where part_1.p_brand is not NULL
limit 32;
select  
  supplier_1.s_suppkey
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_name = customer_1.c_phone )
where supplier_1.s_phone is not NULL
limit 26;
select  
  orders_2.o_orderdate
from 
  nation as nation_1
    inner join orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderpriority = orders_2.o_orderstatus )
      inner join orders as orders_3
      on (orders_2.o_orderdate = orders_3.o_orderdate )
    on (nation_1.n_regionkey = orders_2.o_orderkey )
where orders_1.o_totalprice is not NULL
limit 31;
select  
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.provsql, 
  count(*), 
  region_1.r_name, 
  region_1.provsql, 
  min(
    region_1.r_name)
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_regionkey, region_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.provsql, region_1.r_name, region_1.provsql
limit 35;
select  
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_orderstatus, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_shipinstruct), 
  orders_1.o_shippriority
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_returnflag < orders_1.o_clerk
group by orders_1.o_totalprice, orders_1.provsql, orders_1.o_orderstatus, orders_1.provsql, orders_1.o_orderkey, orders_1.o_orderkey, lineitem_1.l_commitdate, orders_1.o_shippriority
limit 20;
select  
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_phone <= customer_1.c_mktsegment
limit 41;
select  
  nation_1.n_comment, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.provsql >= nation_1.provsql
limit 11;
select  
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
limit 23;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.provsql is not NULL
limit 28;
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 9;
select  
  supplier_1.s_comment, 
  min(
    supplier_1.s_acctbal), 
  supplier_1.s_phone, 
  count(*), 
  min(
    supplier_1.s_nationkey), 
  nation_2.n_comment, 
  supplier_1.s_name, 
  count(*), 
  nation_2.n_comment, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_name
from 
  nation as nation_1
    inner join nation as nation_2
      inner join supplier as supplier_1
      on (nation_2.provsql = supplier_1.provsql )
    on (nation_1.n_comment = nation_2.n_comment )
where supplier_1.s_address is not NULL
group by supplier_1.s_comment, supplier_1.s_phone, nation_2.n_comment, supplier_1.s_name, nation_2.n_comment, supplier_1.s_name
limit 39;
select  
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_2.l_extendedprice, 
  orders_1.o_orderstatus, 
  lineitem_1.l_shipdate, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  lineitem_2.l_quantity, 
  lineitem_1.l_extendedprice, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  lineitem_2.l_orderkey, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_custkey
from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_suppkey = orders_1.o_orderkey )
      on (lineitem_1.l_shipinstruct = supplier_1.s_name )
    inner join lineitem as lineitem_2
    on (supplier_1.s_name = lineitem_2.l_returnflag )
where lineitem_2.l_shipmode is not NULL
group by lineitem_1.l_suppkey, lineitem_1.l_shipinstruct, lineitem_2.l_extendedprice, orders_1.o_orderstatus, lineitem_1.l_shipdate, supplier_1.s_suppkey, supplier_1.s_phone, lineitem_2.l_quantity, lineitem_1.l_extendedprice, supplier_1.s_acctbal, supplier_1.s_comment, lineitem_2.l_orderkey, orders_1.o_custkey
limit 21;
select  
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  avg(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_comment, orders_1.o_totalprice, orders_1.o_comment, orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_totalprice
limit 6;
select  
  region_1.r_name, 
  count(
    region_1.provsql), 
  region_1.r_name, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_name)
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.provsql = region_1.provsql )
where nation_1.n_regionkey <= region_1.r_regionkey
group by region_1.r_name, region_1.r_name, nation_1.n_nationkey
limit 41;
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 13;
select  
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_regionkey, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_name = customer_1.c_phone )
where customer_1.c_mktsegment = customer_1.c_phone
limit 7;
select  
  nation_1.n_nationkey, 
  sum(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_nationkey
limit 17;
select  
  nation_1.n_name, 
  nation_1.provsql, 
  min(
    nation_1.n_name), 
  avg(
    nation_1.n_nationkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.provsql, 
  count(*)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.provsql, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_name, nation_1.provsql
limit 14;
select  
  region_1.r_regionkey
from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where region_1.r_name is not NULL
limit 30;
select  
  max(
    region_1.r_regionkey), 
  partsupp_1.ps_partkey
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.provsql = partsupp_1.provsql )
where partsupp_1.ps_availqty <= partsupp_1.ps_partkey
group by partsupp_1.ps_partkey
limit 28;
select  
  orders_1.o_totalprice, 
  max(
    orders_1.o_orderdate), 
  min(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_totalprice
limit 26;
select  
  part_1.p_container, 
  part_1.p_size
from 
  partsupp as partsupp_1
        inner join part as part_1
        on (partsupp_1.ps_availqty = part_1.p_partkey )
      inner join region as region_1
      on (partsupp_1.ps_suppkey = region_1.r_regionkey )
    inner join orders as orders_1
      inner join region as region_2
      on (orders_1.o_shippriority = region_2.r_regionkey )
    on (partsupp_1.ps_availqty = orders_1.o_orderkey )
where region_1.provsql = part_1.provsql
limit 15;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  count(*)
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_nationkey, nation_1.n_name
limit 41;
select  
  partsupp_1.ps_suppkey, 
  min(
    lineitem_1.l_shipmode), 
  partsupp_1.ps_suppkey
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_suppkey
limit 31;
select  
  partsupp_2.ps_partkey, 
  supplier_2.s_comment, 
  supplier_1.s_name, 
  partsupp_2.ps_supplycost, 
  part_1.p_brand, 
  nation_1.provsql
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
          inner join supplier as supplier_2
          on (supplier_1.s_suppkey = supplier_2.s_suppkey )
        inner join nation as nation_1
          inner join partsupp as partsupp_2
          on (nation_1.n_regionkey = partsupp_2.ps_partkey )
        on (supplier_1.s_acctbal = partsupp_2.ps_supplycost )
      inner join part as part_1
      on (partsupp_2.ps_suppkey = part_1.p_partkey )
    on (partsupp_1.ps_comment = supplier_2.s_address )
where partsupp_2.ps_partkey is not NULL
limit 28;
select  
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  max(
    nation_1.n_name), 
  sum(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_nationkey, nation_1.provsql, nation_1.n_comment, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_comment
limit 15;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_nationkey, nation_1.provsql, nation_1.n_name, nation_1.n_nationkey
limit 40;
select  
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.provsql, 
  orders_1.provsql, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.provsql >= orders_1.provsql
limit 15;
select  
  customer_1.c_comment, 
  partsupp_2.ps_supplycost, 
  count(
    customer_1.c_phone), 
  nation_1.n_name, 
  customer_1.c_comment, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_phone, 
  partsupp_1.ps_availqty
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.provsql = nation_1.provsql )
      inner join partsupp as partsupp_2
        inner join customer as customer_1
        on (partsupp_2.ps_availqty = customer_1.c_custkey )
      on (nation_1.provsql = partsupp_2.provsql )
    on (lineitem_1.l_extendedprice = partsupp_2.ps_supplycost )
where nation_1.provsql is not NULL
group by customer_1.c_comment, partsupp_2.ps_supplycost, nation_1.n_name, customer_1.c_comment, customer_1.c_phone, partsupp_1.ps_availqty
limit 12;
select  
  orders_1.o_shippriority
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.provsql = region_1.provsql )
where orders_1.o_totalprice < orders_1.o_totalprice
limit 24;
select  
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  sum(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_suppkey, supplier_1.s_name
limit 3;
select  
  min(
    customer_1.c_mktsegment), 
  customer_1.provsql, 
  customer_1.c_nationkey
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_mfgr = customer_1.c_phone )
where customer_1.provsql > part_1.provsql
group by customer_1.provsql, customer_1.c_nationkey
limit 1;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_receiptdate, 
  min(
    lineitem_1.l_tax), 
  lineitem_3.l_shipmode, 
  lineitem_2.l_shipmode, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_2.l_linestatus
from 
  lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.provsql = lineitem_2.provsql )
    inner join lineitem as lineitem_3
    on (lineitem_1.l_linestatus = lineitem_3.l_returnflag )
where lineitem_1.l_shipdate >= lineitem_3.l_receiptdate
group by lineitem_1.l_partkey, lineitem_1.l_linestatus, lineitem_1.l_receiptdate, lineitem_3.l_shipmode, lineitem_2.l_shipmode, lineitem_2.l_linestatus
limit 21;
select  
  part_1.p_brand, 
  max(
    part_1.p_brand), 
  part_1.p_retailprice, 
  avg(
    part_1.p_partkey), 
  part_1.provsql
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_brand, part_1.p_retailprice, part_1.provsql
limit 6;
select  
  count(
    supplier_1.s_acctbal), 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.provsql <= supplier_1.provsql
group by supplier_1.s_suppkey
limit 23;
select  
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
limit 21;
select  
  count(*)
from 
  supplier as supplier_1
where supplier_1.provsql <= supplier_1.provsql
limit 41;
select  
  max(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  count(
    nation_1.n_nationkey), 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  count(*)
from 
  nation as nation_1
where nation_1.n_name = nation_1.n_name
group by nation_1.n_nationkey, nation_1.n_name, nation_1.provsql, nation_1.provsql, nation_1.n_name, nation_1.provsql, nation_1.n_comment, nation_1.n_comment
limit 12;
select  
  partsupp_1.provsql
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where partsupp_1.ps_partkey is not NULL
limit 27;
select  
  customer_1.c_phone, 
  customer_1.c_custkey, 
  count(*), 
  customer_1.c_acctbal, 
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_phone, customer_1.c_custkey, customer_1.c_acctbal, customer_1.provsql, customer_1.c_comment, customer_1.c_name, customer_1.c_nationkey
limit 25;
select  
  customer_1.c_comment, 
  orders_1.o_orderstatus, 
  part_1.p_brand, 
  orders_1.o_totalprice, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  max(
    customer_1.c_custkey), 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  max(
    customer_1.c_nationkey), 
  count(
    orders_1.o_custkey)
from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_brand = customer_1.c_phone )
    inner join orders as orders_1
    on (part_1.p_brand = orders_1.o_orderstatus )
where part_1.p_type is not NULL
group by customer_1.c_comment, orders_1.o_orderstatus, part_1.p_brand, orders_1.o_totalprice, customer_1.provsql, customer_1.c_mktsegment, customer_1.c_mktsegment, customer_1.c_phone, customer_1.c_acctbal, customer_1.c_name, orders_1.o_orderpriority, orders_1.o_clerk
limit 33;
select  
  region_1.provsql, 
  count(*)
from 
  nation as nation_1
    inner join region as region_1
        inner join partsupp as partsupp_1
        on (region_1.r_comment = partsupp_1.ps_comment )
      inner join lineitem as lineitem_1
      on (region_1.r_comment = lineitem_1.l_comment )
    on (nation_1.n_regionkey = region_1.r_regionkey )
where nation_1.n_comment is not NULL
group by region_1.provsql
limit 25;
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_name is not NULL
limit 36;
select  
  customer_1.c_phone, 
  region_1.r_regionkey, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  region_1.r_name, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_nationkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  max(
    customer_1.c_custkey), 
  region_1.r_comment, 
  customer_1.c_address, 
  region_1.provsql, 
  region_1.r_regionkey, 
  customer_1.c_phone, 
  region_1.r_name, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  customer_1.c_nationkey, 
  region_1.r_name, 
  customer_1.provsql, 
  region_1.r_regionkey
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.provsql = region_1.provsql )
where customer_1.c_acctbal is not NULL
group by customer_1.c_phone, region_1.r_regionkey, customer_1.c_comment, customer_1.c_address, customer_1.c_nationkey, region_1.r_name, customer_1.c_nationkey, region_1.r_comment, region_1.r_regionkey, customer_1.c_name, customer_1.c_phone, region_1.r_comment, customer_1.c_address, region_1.provsql, region_1.r_regionkey, customer_1.c_phone, region_1.r_name, customer_1.c_acctbal, customer_1.c_name, customer_1.c_acctbal, customer_1.c_acctbal, customer_1.c_comment, region_1.r_comment, region_1.r_regionkey, region_1.r_regionkey, customer_1.c_nationkey, region_1.r_name, customer_1.provsql, region_1.r_regionkey
limit 34;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 9;
select  
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_shipmode = part_1.p_mfgr )
where part_1.provsql <= lineitem_1.provsql
limit 34;
select  
  supplier_1.provsql, 
  count(
    supplier_1.s_acctbal), 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.provsql, supplier_1.s_comment
limit 4;
select  
  max(
    region_1.r_name), 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.provsql >= region_1.provsql
group by region_1.r_comment, region_1.provsql, region_1.r_name, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.provsql, region_1.provsql, region_1.r_regionkey
limit 18;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_comment, 
  max(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  min(
    customer_1.c_mktsegment), 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  avg(
    customer_1.c_acctbal), 
  customer_1.provsql, 
  customer_1.provsql, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  avg(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_phone, 
  max(
    customer_1.c_mktsegment), 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_mktsegment, customer_1.c_address, customer_1.c_comment, customer_1.c_address, customer_1.c_acctbal, customer_1.c_nationkey, customer_1.c_acctbal, customer_1.c_address, customer_1.c_address, customer_1.c_acctbal, customer_1.c_nationkey, customer_1.c_name, customer_1.provsql, customer_1.provsql, customer_1.c_name, customer_1.c_custkey, customer_1.c_custkey, customer_1.c_address, customer_1.c_phone, customer_1.c_address, customer_1.c_phone, customer_1.c_comment
limit 14;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_shipdate, 
  min(
    lineitem_1.l_receiptdate), 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_linestatus), 
  lineitem_1.l_discount, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_shipmode, 
  count(*), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_quantity), 
  lineitem_1.l_discount, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
group by lineitem_1.l_quantity, lineitem_1.l_shipdate, lineitem_1.l_linenumber, lineitem_1.l_linenumber, lineitem_1.l_receiptdate, lineitem_1.l_discount, lineitem_1.l_orderkey, lineitem_1.l_tax, lineitem_1.l_shipmode, lineitem_1.l_returnflag, lineitem_1.l_orderkey, lineitem_1.l_shipinstruct, lineitem_1.l_discount, lineitem_1.l_commitdate
limit 9;
select  
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 37;
select  
  supplier_1.s_acctbal, 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.provsql, 
  min(
    supplier_1.s_phone), 
  min(
    supplier_1.s_name), 
  supplier_1.s_address, 
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
group by supplier_1.s_acctbal, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.provsql, supplier_1.s_address, supplier_1.provsql
limit 39;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_availqty), 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.ps_partkey
limit 16;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.provsql >= partsupp_1.provsql
limit 23;
select  
  count(
    orders_1.o_orderpriority), 
  sum(
    orders_1.o_totalprice), 
  min(
    orders_1.o_orderkey), 
  min(
    orders_1.o_clerk), 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_orderpriority, orders_1.o_custkey, orders_1.o_orderstatus
limit 13;
select  
  max(
    orders_1.o_orderkey), 
  max(
    orders_1.o_clerk), 
  customer_1.c_mktsegment, 
  orders_1.o_shippriority, 
  customer_1.c_nationkey, 
  count(*), 
  orders_1.o_orderpriority, 
  customer_1.c_nationkey, 
  orders_1.provsql, 
  orders_1.o_orderpriority, 
  customer_1.c_nationkey, 
  orders_1.o_clerk, 
  min(
    customer_1.c_phone), 
  orders_1.o_custkey, 
  max(
    orders_1.o_orderpriority), 
  orders_1.o_orderpriority, 
  customer_1.c_comment, 
  orders_1.o_custkey, 
  customer_1.c_name, 
  orders_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_clerk = customer_1.c_phone )
where orders_1.provsql is not NULL
group by customer_1.c_mktsegment, orders_1.o_shippriority, customer_1.c_nationkey, orders_1.o_orderpriority, customer_1.c_nationkey, orders_1.provsql, orders_1.o_orderpriority, customer_1.c_nationkey, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderpriority, customer_1.c_comment, orders_1.o_custkey, customer_1.c_name, orders_1.provsql, customer_1.c_nationkey, customer_1.c_custkey, customer_1.c_mktsegment
limit 14;
select  
  customer_1.c_address, 
  customer_1.c_acctbal, 
  lineitem_1.l_receiptdate, 
  customer_1.provsql, 
  min(
    lineitem_1.l_suppkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  customer_1.c_custkey, 
  nation_1.n_name, 
  min(
    lineitem_1.l_commitdate)
from 
  nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.n_regionkey = lineitem_1.l_orderkey )
      inner join orders as orders_1
      on (nation_1.provsql = orders_1.provsql )
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where lineitem_1.l_discount is not NULL
group by customer_1.c_address, customer_1.c_acctbal, lineitem_1.l_receiptdate, customer_1.provsql, orders_1.o_orderpriority, orders_1.o_orderpriority, customer_1.c_custkey, nation_1.n_name
limit 16;
select  
  nation_1.n_comment, 
  count(*), 
  nation_1.n_comment, 
  min(
    nation_1.n_name), 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.provsql, 
  max(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_comment, nation_1.n_comment, nation_1.provsql, nation_1.n_regionkey, nation_1.provsql, nation_1.n_regionkey, nation_1.provsql, nation_1.n_name, nation_1.n_regionkey, nation_1.provsql, nation_1.provsql
limit 29;
select  
  customer_1.c_name, 
  customer_1.c_name, 
  min(
    partsupp_1.ps_suppkey), 
  count(
    partsupp_1.ps_supplycost), 
  customer_1.c_nationkey, 
  max(
    customer_1.c_mktsegment), 
  customer_1.c_custkey, 
  customer_1.c_custkey
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.provsql = partsupp_1.provsql )
where partsupp_1.ps_partkey < partsupp_1.ps_suppkey
group by customer_1.c_name, customer_1.c_name, customer_1.c_nationkey, customer_1.c_custkey, customer_1.c_custkey
limit 26;
select  
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  region_1.r_name, 
  lineitem_2.l_partkey
from 
  lineitem as lineitem_1
      inner join lineitem as lineitem_2
        inner join orders as orders_1
        on (lineitem_2.l_returnflag = orders_1.o_orderstatus )
      on (lineitem_1.l_commitdate = orders_1.o_orderdate )
    inner join region as region_1
    on (lineitem_2.provsql = region_1.provsql )
where orders_1.provsql = lineitem_1.provsql
limit 2;
select  
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 14;
select  
  part_1.p_brand, 
  region_1.r_name, 
  customer_1.c_address, 
  region_1.r_regionkey
from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 37;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_comment
limit 16;
select  
  nation_1.n_comment
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_regionkey = region_1.r_regionkey )
where nation_1.n_nationkey is not NULL
limit 18;
select  
  orders_1.provsql, 
  nation_1.n_regionkey, 
  orders_1.o_orderpriority, 
  nation_1.provsql, 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  nation_1.n_comment
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.provsql = nation_1.provsql )
where nation_1.n_name is not NULL
limit 30;
select  
  nation_1.n_name
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_regionkey = nation_2.n_nationkey )
where nation_1.provsql is not NULL
limit 4;
select  
  part_1.p_partkey, 
  supplier_1.provsql
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_retailprice = supplier_1.s_acctbal )
    inner join partsupp as partsupp_1
      inner join part as part_2
      on (partsupp_1.ps_comment = part_2.p_name )
    on (part_1.p_container = part_2.p_mfgr )
where partsupp_1.ps_partkey is not NULL
limit 22;
select  
  partsupp_1.provsql, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_name), 
  partsupp_1.provsql, 
  min(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost = supplier_1.s_acctbal
group by partsupp_1.provsql, supplier_1.s_suppkey, partsupp_1.provsql
limit 21;
select  
  part_1.p_mfgr, 
  part_1.p_size, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  part_1.p_retailprice, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  part_1.p_partkey, 
  region_1.r_comment, 
  part_1.provsql, 
  min(
    part_1.p_container), 
  min(
    part_1.p_retailprice), 
  min(
    part_1.p_size), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  part_1.p_brand, 
  part_1.provsql
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where region_1.provsql is not NULL
group by part_1.p_mfgr, part_1.p_size, region_1.r_regionkey, region_1.r_name, region_1.r_regionkey, part_1.p_retailprice, region_1.r_name, region_1.r_regionkey, region_1.r_regionkey, part_1.p_partkey, region_1.r_comment, part_1.provsql, region_1.r_name, region_1.r_comment, region_1.r_regionkey, region_1.r_comment, part_1.p_brand, part_1.provsql
limit 25;
select  
  nation_1.n_regionkey, 
  partsupp_1.ps_partkey
from 
  part as part_1
    inner join partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_availqty = nation_1.n_nationkey )
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    on (part_1.p_mfgr = customer_1.c_phone )
where nation_1.n_comment is not NULL
limit 12;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
limit 7;
select  
  orders_1.o_custkey, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 26;
select  
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 8;
select  
  nation_1.n_regionkey, 
  count(
    nation_1.n_comment), 
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_regionkey, nation_1.provsql, nation_1.n_nationkey
limit 24;
select  
  region_2.r_name, 
  region_1.r_regionkey, 
  orders_1.o_orderkey, 
  region_1.provsql, 
  customer_1.c_nationkey, 
  region_1.r_comment, 
  min(
    orders_1.o_orderdate), 
  customer_1.c_name, 
  region_2.provsql
from 
  region as region_1
      inner join region as region_2
      on (region_1.provsql = region_2.provsql )
    inner join customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_name = orders_1.o_comment )
    on (region_1.r_comment = customer_1.c_name )
where customer_1.c_acctbal >= orders_1.o_totalprice
group by region_2.r_name, region_1.r_regionkey, orders_1.o_orderkey, region_1.provsql, customer_1.c_nationkey, region_1.r_comment, customer_1.c_name, region_2.provsql
limit 9;
select  
  orders_1.o_custkey, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_clerk), 
  min(
    nation_1.n_regionkey), 
  orders_1.o_orderkey, 
  nation_1.n_regionkey, 
  orders_1.o_orderpriority
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_comment = orders_1.o_comment )
where orders_1.o_totalprice > orders_1.o_totalprice
group by orders_1.o_custkey, orders_1.provsql, orders_1.o_orderkey, orders_1.o_totalprice, orders_1.o_orderdate, orders_1.o_orderkey, nation_1.n_regionkey, orders_1.o_orderpriority
limit 31;
select  
  lineitem_1.provsql, 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_discount, 
  sum(
    lineitem_1.l_tax), 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.provsql, lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_commitdate, lineitem_1.l_shipmode, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.provsql
limit 4;
select  
  part_1.provsql, 
  nation_1.n_regionkey
from 
  region as region_1
      inner join part as part_1
      on (region_1.provsql = part_1.provsql )
    inner join nation as nation_1
      inner join part as part_2
      on (nation_1.n_regionkey = part_2.p_partkey )
    on (part_1.provsql = nation_1.provsql )
where part_2.p_type is not NULL
limit 32;
select  
  nation_1.n_regionkey, 
  orders_1.o_totalprice
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_clerk = nation_1.n_name )
where nation_1.n_name is not NULL
limit 2;
select  
  min(
    supplier_1.s_phone), 
  min(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_name), 
  supplier_1.s_acctbal, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_nationkey >= supplier_1.s_suppkey
group by supplier_1.s_acctbal, supplier_1.s_address
limit 20;
select  
  customer_1.c_comment, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 18;
select  
  customer_1.c_address, 
  partsupp_1.ps_partkey, 
  customer_1.c_custkey, 
  partsupp_1.ps_supplycost, 
  orders_1.o_comment
from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_address = partsupp_1.ps_comment )
    inner join orders as orders_1
    on (partsupp_1.ps_supplycost = orders_1.o_totalprice )
where orders_1.o_orderkey is not NULL
limit 3;
select  
  partsupp_2.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_2.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_2.ps_comment, 
  partsupp_2.ps_suppkey
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_comment = partsupp_2.ps_comment )
where partsupp_2.ps_availqty is not NULL
limit 16;
select  
  part_1.p_retailprice, 
  max(
    customer_2.c_phone), 
  nation_2.n_name, 
  customer_2.c_mktsegment, 
  customer_1.provsql, 
  customer_2.c_name, 
  customer_1.c_comment, 
  part_1.provsql, 
  min(
    nation_1.n_name)
from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_mfgr = customer_1.c_phone )
    inner join nation as nation_1
      inner join nation as nation_2
        inner join nation as nation_3
          inner join customer as customer_2
          on (nation_3.n_name = customer_2.c_phone )
        on (nation_2.provsql = nation_3.provsql )
      on (nation_1.n_comment = nation_2.n_comment )
    on (customer_1.c_address = nation_2.n_comment )
where customer_1.c_name is not NULL
group by part_1.p_retailprice, nation_2.n_name, customer_2.c_mktsegment, customer_1.provsql, customer_2.c_name, customer_1.c_comment, part_1.provsql
limit 18;
select  
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey >= partsupp_1.ps_partkey
group by partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.provsql
limit 13;
select  
  part_1.p_size, 
  nation_1.n_name, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
from 
  part as part_1
      inner join nation as nation_1
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      on (part_1.p_retailprice = partsupp_1.ps_supplycost )
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_partkey < part_1.p_partkey
limit 6;
select  
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  min(
    region_1.r_name)
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.provsql, region_1.r_comment, region_1.provsql, region_1.r_name, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 32;
select  
  region_1.provsql, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.provsql, region_1.r_comment, region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_comment, region_1.r_comment
limit 28;
select  
  min(
    lineitem_1.l_linestatus), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_returnflag
limit 30;
select  
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.provsql < nation_1.provsql
limit 23;
select  
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  count(*), 
  orders_1.o_clerk, 
  sum(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_totalprice, orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_clerk
limit 12;
select  
  part_1.p_size, 
  max(
    region_1.r_regionkey), 
  part_1.p_comment, 
  region_1.r_regionkey, 
  part_1.p_retailprice, 
  sum(
    part_1.p_retailprice), 
  part_2.p_name, 
  part_1.p_name
from 
  region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    inner join part as part_2
    on (part_1.p_comment = part_2.p_name )
where part_1.p_name is not NULL
group by part_1.p_size, part_1.p_comment, region_1.r_regionkey, part_1.p_retailprice, part_2.p_name, part_1.p_name
limit 8;
select  
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 36;
select  
  nation_1.provsql, 
  max(
    lineitem_1.l_shipmode), 
  lineitem_1.l_extendedprice, 
  customer_2.c_acctbal, 
  sum(
    customer_3.c_custkey), 
  nation_1.n_nationkey, 
  lineitem_1.l_suppkey, 
  customer_1.c_name, 
  nation_1.provsql, 
  customer_2.c_phone
from 
  customer as customer_1
      inner join customer as customer_2
          inner join customer as customer_3
          on (customer_2.provsql = customer_3.provsql )
        inner join lineitem as lineitem_1
        on (customer_3.provsql = lineitem_1.provsql )
      on (customer_1.c_nationkey = lineitem_1.l_orderkey )
    inner join nation as nation_1
    on (lineitem_1.l_partkey = nation_1.n_nationkey )
where lineitem_1.l_extendedprice < customer_1.c_acctbal
group by nation_1.provsql, lineitem_1.l_extendedprice, customer_2.c_acctbal, nation_1.n_nationkey, lineitem_1.l_suppkey, customer_1.c_name, nation_1.provsql, customer_2.c_phone
limit 13;
select  
  part_1.p_size
from 
  nation as nation_1
          inner join part as part_1
          on (nation_1.provsql = part_1.provsql )
        inner join customer as customer_1
        on (part_1.p_retailprice = customer_1.c_acctbal )
      inner join orders as orders_1
      on (nation_1.n_name = orders_1.o_orderstatus )
    inner join nation as nation_2
    on (orders_1.o_custkey = nation_2.n_nationkey )
where part_1.p_partkey >= orders_1.o_orderkey
limit 33;
select  
  orders_1.o_orderkey, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 15;
select  
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 35;
select  
  supplier_1.s_nationkey
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_phone = region_1.r_name )
    on (partsupp_1.provsql = region_1.provsql )
where region_1.r_comment is not NULL
limit 39;
select  
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  sum(
    customer_1.c_acctbal), 
  customer_1.c_nationkey, 
  max(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.provsql <= customer_1.provsql
group by customer_1.c_mktsegment, customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.c_phone, customer_1.provsql, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_comment, customer_1.c_nationkey
limit 34;
select  
  supplier_1.s_acctbal
from 
  customer as customer_1
    inner join supplier as supplier_1
      inner join customer as customer_2
      on (supplier_1.s_name = customer_2.c_phone )
    on (customer_1.c_acctbal = customer_2.c_acctbal )
where supplier_1.s_comment is not NULL
limit 35;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey), 
  region_1.provsql
from 
  region as region_1
where region_1.provsql < region_1.provsql
group by region_1.r_name, region_1.r_regionkey, region_1.provsql
limit 5;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  avg(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  sum(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  sum(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.provsql > partsupp_1.provsql
group by partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_availqty
limit 40;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_discount, 
  lineitem_1.l_quantity, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_discount, lineitem_1.l_quantity, lineitem_1.l_discount, lineitem_1.l_commitdate
limit 14;
select  
  max(
    supplier_1.s_phone), 
  nation_1.n_regionkey, 
  supplier_2.s_name, 
  supplier_2.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_2.s_nationkey, 
  nation_1.n_comment
from 
  supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_acctbal = supplier_2.s_acctbal )
    inner join nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_comment = customer_1.c_name )
    on (supplier_2.s_phone = customer_1.c_phone )
where supplier_2.s_phone is not NULL
group by nation_1.n_regionkey, supplier_2.s_name, supplier_2.s_acctbal, supplier_1.s_nationkey, supplier_2.s_nationkey, nation_1.n_comment
limit 27;
select  
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty = partsupp_1.ps_partkey
group by partsupp_1.provsql
limit 4;
select  
  orders_1.o_comment, 
  orders_1.provsql, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 1;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  min(
    region_1.r_name), 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_name, region_1.r_regionkey, region_1.provsql, region_1.r_regionkey, region_1.provsql, region_1.r_name, region_1.r_comment
limit 8;
select  
  orders_1.provsql, 
  orders_1.o_orderkey, 
  avg(
    orders_1.o_custkey)
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.provsql, orders_1.o_orderkey
limit 33;
select distinct 
  orders_1.provsql, 
  supplier_1.s_phone
from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_orderkey is not NULL
limit 28;
select  
  lineitem_1.l_discount, 
  lineitem_1.l_partkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
group by lineitem_1.l_discount, lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_comment, lineitem_1.l_receiptdate
limit 38;
select  
  lineitem_2.l_receiptdate, 
  orders_1.o_totalprice
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
      inner join orders as orders_1
      on (lineitem_2.l_linestatus = orders_1.o_orderstatus )
    on (lineitem_1.l_receiptdate = lineitem_2.l_shipdate )
where orders_1.o_custkey is not NULL
limit 37;
select  
  max(
    part_1.p_partkey)
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_brand = customer_1.c_phone )
where customer_1.c_phone > part_1.p_container
limit 38;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 31;
select  
  orders_1.provsql, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_totalprice > orders_1.o_totalprice
limit 23;
select  
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 37;
select  
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.provsql, 
  min(
    region_1.r_name), 
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.provsql, region_1.r_name, region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_name, region_1.r_name, region_1.provsql, region_1.provsql, region_1.r_comment
limit 2;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.provsql < supplier_1.provsql
limit 20;
select  
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.c_nationkey, 
  max(
    part_1.p_retailprice)
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_type = customer_1.c_name )
where customer_1.c_name is not NULL
group by customer_1.c_comment, customer_1.provsql, customer_1.c_nationkey
limit 15;
select  
  count(
    customer_1.c_phone), 
  max(
    customer_1.c_acctbal), 
  customer_1.c_phone, 
  region_2.r_comment, 
  sum(
    customer_1.c_nationkey), 
  region_2.r_name
from 
  region as region_1
      inner join customer as customer_1
      on (region_1.r_name = customer_1.c_phone )
    inner join region as region_2
    on (customer_1.c_nationkey = region_2.r_regionkey )
where customer_1.c_name is not NULL
group by customer_1.c_phone, region_2.r_comment, region_2.r_name
limit 24;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_commitdate)
from 
  lineitem as lineitem_1
where lineitem_1.provsql >= lineitem_1.provsql
group by lineitem_1.l_shipdate, lineitem_1.l_discount
limit 8;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  customer_1.provsql
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_name = orders_1.o_comment )
where orders_1.o_shippriority >= orders_1.o_custkey
limit 8;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_1.l_suppkey), 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.provsql, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_tax), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_quantity, 
  lineitem_1.l_tax, 
  lineitem_1.provsql, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_commitdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_tax, lineitem_1.l_extendedprice, lineitem_1.provsql, lineitem_1.l_returnflag, lineitem_1.l_orderkey, lineitem_1.l_linenumber, lineitem_1.l_shipdate, lineitem_1.l_receiptdate, lineitem_1.l_suppkey, lineitem_1.l_shipmode, lineitem_1.l_quantity, lineitem_1.l_tax, lineitem_1.provsql, lineitem_1.l_quantity
limit 7;
select  
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 26;
select  
  nation_1.n_name, 
  part_1.provsql, 
  part_1.p_comment, 
  part_1.provsql, 
  max(
    part_1.p_brand), 
  supplier_1.s_suppkey, 
  max(
    part_1.p_retailprice), 
  part_1.provsql, 
  min(
    supplier_1.s_acctbal), 
  part_1.p_comment, 
  min(
    part_1.p_mfgr), 
  max(
    part_1.p_mfgr), 
  part_1.p_type, 
  min(
    supplier_1.s_nationkey)
from 
  nation as nation_1
    inner join supplier as supplier_1
      inner join part as part_1
        inner join nation as nation_2
        on (part_1.p_mfgr = nation_2.n_name )
      on (supplier_1.s_nationkey = part_1.p_partkey )
    on (nation_1.n_name = supplier_1.s_name )
where supplier_1.s_name = nation_1.n_name
group by nation_1.n_name, part_1.provsql, part_1.p_comment, part_1.provsql, supplier_1.s_suppkey, part_1.provsql, part_1.p_comment, part_1.p_type
limit 15;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 18;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  min(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.provsql, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_discount, 
  lineitem_1.provsql, 
  lineitem_1.l_tax, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
where lineitem_1.l_discount >= lineitem_1.l_quantity
group by lineitem_1.l_shipdate, lineitem_1.l_tax, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.provsql, lineitem_1.l_discount, lineitem_1.l_shipinstruct, lineitem_1.l_shipdate, lineitem_1.l_quantity, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_orderkey, lineitem_1.l_discount, lineitem_1.provsql, lineitem_1.l_tax, lineitem_1.l_discount, lineitem_1.l_tax, lineitem_1.l_orderkey, lineitem_1.l_shipdate, lineitem_1.l_shipdate
limit 10;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 14;
select  
  sum(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_custkey > orders_1.o_orderkey
group by orders_1.o_clerk, orders_1.o_orderpriority, orders_1.o_totalprice, orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_clerk, orders_1.o_comment, orders_1.o_totalprice, orders_1.o_orderpriority, orders_1.o_shippriority
limit 10;
select  
  partsupp_1.provsql, 
  max(
    partsupp_2.ps_availqty), 
  partsupp_2.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_2.ps_comment
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.provsql = partsupp_2.provsql )
where partsupp_1.provsql = partsupp_2.provsql
group by partsupp_1.provsql, partsupp_2.ps_suppkey, partsupp_1.ps_comment, partsupp_2.ps_comment
limit 2;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_supplycost, partsupp_1.ps_supplycost
limit 2;
select  
  partsupp_1.ps_comment
from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_comment = partsupp_2.ps_comment )
    on (customer_1.c_custkey = partsupp_2.ps_partkey )
where customer_1.c_custkey is not NULL
limit 27;
select  
  part_1.p_comment, 
  part_1.p_retailprice
from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_address = lineitem_1.l_comment )
    inner join part as part_1
    on (customer_1.c_acctbal = part_1.p_retailprice )
where lineitem_1.l_commitdate = lineitem_1.l_shipdate
limit 37;
select  
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 26;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.provsql < lineitem_1.provsql
group by lineitem_1.l_tax, lineitem_1.l_comment, lineitem_1.l_shipinstruct, lineitem_1.l_linestatus, lineitem_1.l_receiptdate, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_commitdate, lineitem_1.l_receiptdate, lineitem_1.l_discount
limit 16;
select  
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  min(
    orders_1.o_orderpriority)
from 
  orders as orders_1
where orders_1.o_totalprice <= orders_1.o_totalprice
group by orders_1.o_shippriority, orders_1.o_comment
limit 1;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.s_acctbal > supplier_1.s_acctbal
group by supplier_1.s_nationkey, supplier_1.s_nationkey
limit 25;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipmode, 
  lineitem_1.provsql, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_quantity, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_comment, 
  lineitem_1.provsql, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.provsql, 
  lineitem_1.l_orderkey, 
  sum(
    lineitem_1.l_linenumber), 
  min(
    lineitem_1.l_discount), 
  count(
    lineitem_1.l_orderkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_shipmode, lineitem_1.provsql, lineitem_1.l_shipmode, lineitem_1.l_quantity, lineitem_1.l_shipmode, lineitem_1.l_comment, lineitem_1.provsql, lineitem_1.l_shipdate, lineitem_1.l_partkey, lineitem_1.l_extendedprice, lineitem_1.l_shipdate, lineitem_1.l_comment, lineitem_1.l_shipmode, lineitem_1.l_shipinstruct, lineitem_1.provsql, lineitem_1.l_orderkey
limit 35;
select  
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_size is not NULL
limit 1;
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_name), 
  max(
    nation_1.n_name), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  count(*), 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.provsql < nation_1.provsql
group by nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.provsql, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.provsql, nation_1.n_nationkey, nation_1.n_name, nation_1.provsql
limit 21;
select  
  partsupp_1.ps_supplycost
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_comment = partsupp_1.ps_comment )
where region_1.r_name <= region_1.r_name
limit 5;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.provsql > partsupp_1.provsql
group by partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_availqty
limit 29;
select  
  region_1.r_regionkey, 
  lineitem_1.l_linestatus
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where lineitem_1.l_extendedprice is not NULL
limit 17;
select  
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 19;
select  
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 27;
select  
  lineitem_1.l_quantity, 
  nation_1.n_regionkey, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_orderkey)
from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_comment = customer_1.c_name )
    inner join lineitem as lineitem_1
    on (nation_1.provsql = lineitem_1.provsql )
where nation_1.n_comment is not NULL
group by lineitem_1.l_quantity, nation_1.n_regionkey, lineitem_1.l_discount
limit 2;
select  
  partsupp_1.ps_suppkey, 
  partsupp_2.provsql, 
  partsupp_2.ps_availqty
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_supplycost = partsupp_2.ps_supplycost )
where partsupp_2.ps_suppkey is not NULL
limit 42;
select  
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderkey), 
  min(
    orders_1.o_custkey), 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_orderdate, orders_1.o_clerk
limit 29;
select  
  customer_1.c_address, 
  lineitem_1.l_comment, 
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_quantity), 
  customer_1.c_custkey, 
  lineitem_1.l_commitdate
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_receiptdate = lineitem_1.l_shipdate
group by customer_1.c_address, lineitem_1.l_comment, lineitem_1.l_linenumber, customer_1.c_custkey, lineitem_1.l_commitdate
limit 36;
select  
  customer_2.c_phone, 
  part_1.p_brand, 
  part_1.provsql, 
  customer_3.c_phone, 
  customer_2.c_custkey
from 
  part as part_1
        inner join customer as customer_1
        on (part_1.p_partkey = customer_1.c_custkey )
      inner join customer as customer_2
      on (part_1.p_name = customer_2.c_name )
    inner join orders as orders_1
      inner join customer as customer_3
      on (orders_1.o_custkey = customer_3.c_custkey )
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_2.c_nationkey = orders_1.o_orderkey
limit 33;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 39;
select  
  part_1.p_type, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.provsql, 
  part_1.p_type
from 
  part as part_1
where part_1.p_size is not NULL
limit 11;
select  
  customer_1.c_address, 
  sum(
    customer_1.c_acctbal), 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_address, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_mktsegment > customer_1.c_phone
group by customer_1.c_address, customer_1.c_address, customer_1.c_comment
limit 16;
select  
  customer_1.c_comment
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_totalprice = customer_1.c_acctbal )
where customer_1.provsql >= orders_1.provsql
limit 39;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 40;
select  
  lineitem_1.l_returnflag, 
  partsupp_1.provsql, 
  max(
    orders_1.o_clerk)
from 
  orders as orders_1
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    inner join lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_discount = lineitem_2.l_quantity )
    on (orders_1.provsql = lineitem_1.provsql )
where orders_1.o_orderdate is not NULL
group by lineitem_1.l_returnflag, partsupp_1.provsql
limit 28;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey < partsupp_1.ps_suppkey
group by partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.provsql
limit 35;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  orders_1.o_custkey
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_name = orders_1.o_orderstatus )
where orders_1.o_orderdate < orders_1.o_orderdate
limit 38;
select  
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_mktsegment > customer_1.c_phone
limit 1;
select  
  nation_1.n_name, 
  region_1.r_name
from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_regionkey = part_1.p_partkey )
    inner join region as region_1
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    on (part_1.provsql = region_2.provsql )
where nation_1.n_name <= part_1.p_brand
limit 24;
select  
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 15;
select  
  supplier_1.provsql, 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_name >= supplier_1.s_phone
limit 11;
select  
  part_1.p_partkey
from 
  part as part_1
where part_1.p_name is not NULL
limit 23;
select  
  supplier_1.s_phone, 
  supplier_1.provsql, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  max(
    supplier_1.s_phone), 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_phone, supplier_1.provsql, supplier_1.s_name, supplier_1.s_acctbal, supplier_1.s_phone, supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_address, supplier_1.s_name
limit 12;
select  
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_linenumber = region_1.r_regionkey )
    inner join lineitem as lineitem_2
    on (region_1.r_comment = lineitem_2.l_comment )
where lineitem_1.provsql >= lineitem_2.provsql
limit 5;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost
limit 23;
select  
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.provsql >= customer_1.provsql
group by customer_1.c_nationkey, customer_1.c_custkey, customer_1.c_comment, customer_1.c_nationkey, customer_1.provsql, customer_1.c_nationkey, customer_1.c_address, customer_1.c_acctbal, customer_1.c_custkey
limit 23;
select  
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_comment is not NULL
limit 39;
select  
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 9;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 37;
select  
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 2;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_partkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_partkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_returnflag, lineitem_1.l_shipmode, lineitem_1.l_partkey, lineitem_1.l_tax, lineitem_1.l_partkey, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_tax, lineitem_1.l_comment, lineitem_1.l_quantity
limit 1;
select  
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_mktsegment), 
  supplier_1.provsql, 
  max(
    supplier_1.s_suppkey), 
  customer_1.c_phone
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.provsql = customer_1.provsql )
where customer_1.c_acctbal > supplier_1.s_acctbal
group by customer_1.c_nationkey, customer_1.c_nationkey, supplier_1.provsql, customer_1.c_phone
limit 7;
select  
  partsupp_1.provsql, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 19;
select  
  region_1.r_name, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipdate, 
  sum(
    lineitem_1.l_extendedprice), 
  region_1.provsql, 
  lineitem_1.l_tax, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql
from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_returnflag = region_1.r_name )
where region_1.provsql = lineitem_1.provsql
group by region_1.r_name, lineitem_1.l_commitdate, lineitem_1.l_comment, lineitem_1.l_linenumber, lineitem_1.l_shipdate, region_1.provsql, lineitem_1.l_tax, region_1.r_regionkey, region_1.r_comment, region_1.provsql
limit 42;
select  
  customer_1.c_name
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_name = customer_1.c_phone )
where nation_1.n_regionkey is not NULL
limit 16;
select  
  customer_1.c_nationkey, 
  max(
    lineitem_1.l_linestatus), 
  lineitem_1.l_returnflag
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_phone = lineitem_1.l_returnflag )
where lineitem_1.l_discount <= lineitem_1.l_quantity
group by customer_1.c_nationkey, lineitem_1.l_returnflag
limit 9;
select  
  max(
    nation_1.n_name), 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name = nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_name, nation_1.n_comment
limit 10;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_regionkey, region_1.provsql, region_1.r_comment
limit 10;
select  
  customer_1.provsql, 
  partsupp_1.ps_availqty, 
  avg(
    customer_1.c_acctbal), 
  partsupp_2.provsql, 
  partsupp_1.ps_supplycost, 
  customer_1.c_name, 
  customer_1.c_phone, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_2.ps_comment, 
  customer_1.c_nationkey, 
  min(
    partsupp_1.ps_supplycost), 
  customer_1.provsql, 
  partsupp_1.ps_suppkey, 
  min(
    customer_1.c_phone), 
  partsupp_1.ps_partkey, 
  customer_1.c_custkey, 
  min(
    customer_1.c_custkey)
from 
  partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_comment = partsupp_2.ps_comment )
where customer_1.c_mktsegment < customer_1.c_phone
group by customer_1.provsql, partsupp_1.ps_availqty, partsupp_2.provsql, partsupp_1.ps_supplycost, customer_1.c_name, customer_1.c_phone, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_2.ps_comment, customer_1.c_nationkey, customer_1.provsql, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, customer_1.c_custkey
limit 4;
select  
  max(
    part_2.p_mfgr), 
  part_1.p_partkey, 
  min(
    part_2.p_retailprice), 
  part_2.p_size, 
  part_1.p_size, 
  part_2.p_partkey, 
  max(
    part_1.p_container), 
  part_2.p_brand, 
  part_2.p_partkey, 
  part_2.p_retailprice, 
  part_2.p_partkey, 
  sum(
    part_1.p_size), 
  part_2.p_comment, 
  max(
    part_2.p_size), 
  part_2.p_brand, 
  part_1.p_partkey
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_comment = part_2.p_name )
where part_1.p_container is not NULL
group by part_1.p_partkey, part_2.p_size, part_1.p_size, part_2.p_partkey, part_2.p_brand, part_2.p_partkey, part_2.p_retailprice, part_2.p_partkey, part_2.p_comment, part_2.p_brand, part_1.p_partkey
limit 4;
select  
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus > lineitem_1.l_shipinstruct
limit 12;
select  
  sum(
    lineitem_1.l_partkey), 
  lineitem_1.l_returnflag, 
  lineitem_1.provsql
from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_nationkey = partsupp_1.ps_partkey )
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_supplycost = lineitem_1.l_quantity )
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_returnflag, lineitem_1.provsql
limit 16;
select  
  region_2.r_comment, 
  region_2.r_comment
from 
  region as region_1
    inner join region as region_2
      inner join orders as orders_1
      on (region_2.r_comment = orders_1.o_comment )
    on (region_1.provsql = region_2.provsql )
where region_2.r_regionkey is not NULL
limit 16;
select  
  orders_2.o_custkey, 
  orders_2.o_totalprice, 
  customer_1.c_comment, 
  min(
    orders_1.o_orderdate), 
  part_1.p_mfgr
from 
  partsupp as partsupp_1
        inner join orders as orders_1
        on (partsupp_1.ps_comment = orders_1.o_comment )
      inner join partsupp as partsupp_2
        inner join region as region_1
        on (partsupp_2.ps_comment = region_1.r_comment )
      on (partsupp_1.ps_availqty = region_1.r_regionkey )
    inner join orders as orders_2
      inner join customer as customer_1
        inner join part as part_1
        on (customer_1.c_name = part_1.p_name )
      on (orders_2.o_orderpriority = customer_1.c_phone )
    on (orders_1.o_shippriority = customer_1.c_custkey )
where partsupp_1.provsql < partsupp_2.provsql
group by orders_2.o_custkey, orders_2.o_totalprice, customer_1.c_comment, part_1.p_mfgr
limit 24;
select  
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  nation_1.n_nationkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty, 
  min(
    nation_1.n_name)
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where nation_1.n_regionkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_availqty, nation_1.n_nationkey, partsupp_1.provsql, partsupp_1.ps_availqty
limit 34;
select  
  nation_1.n_comment, 
  nation_1.n_comment
from 
  region as region_1
      inner join part as part_1
        inner join region as region_2
          inner join nation as nation_1
          on (region_2.r_regionkey = nation_1.n_nationkey )
        on (part_1.provsql = nation_1.provsql )
      on (region_1.provsql = part_1.provsql )
    inner join supplier as supplier_1
    on (region_1.provsql = supplier_1.provsql )
where part_1.provsql is not NULL
limit 6;
select  
  part_1.p_comment
from 
  part as part_1
where part_1.p_name is not NULL
limit 13;
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 5;
select  
  supplier_1.s_name, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_suppkey, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
group by supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_address
limit 31;
select  
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  max(
    region_1.r_name), 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql <= region_1.provsql
group by region_1.r_regionkey, region_1.provsql, region_1.r_regionkey, region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_comment
limit 28;
select  
  region_1.r_comment
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.provsql = partsupp_1.provsql )
where region_1.r_regionkey is not NULL
limit 26;
select  
  part_1.p_retailprice, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_shipdate), 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_mfgr, 
  lineitem_2.l_shipdate
from 
  nation as nation_1
    inner join lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_quantity = lineitem_2.l_quantity )
      inner join part as part_1
      on (lineitem_1.provsql = part_1.provsql )
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where part_1.p_mfgr <= lineitem_1.l_shipmode
group by part_1.p_retailprice, lineitem_1.l_discount, part_1.p_container, part_1.p_type, part_1.p_mfgr, lineitem_2.l_shipdate
limit 17;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 32;
select  
  min(
    orders_1.o_shippriority)
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_orderdate > orders_1.o_orderdate
limit 36;
select  
  orders_1.o_orderpriority, 
  orders_1.provsql, 
  nation_1.n_name
from 
  nation as nation_1
    inner join orders as orders_1
      inner join nation as nation_2
      on (orders_1.o_custkey = nation_2.n_nationkey )
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_2.n_name >= nation_1.n_name
limit 25;
select  
  nation_2.provsql, 
  orders_1.o_comment, 
  customer_1.c_name, 
  orders_1.o_orderkey
from 
  part as part_1
    inner join region as region_1
      inner join nation as nation_1
            inner join orders as orders_1
            on (nation_1.n_name = orders_1.o_orderstatus )
          inner join customer as customer_1
          on (orders_1.o_orderstatus = customer_1.c_phone )
        inner join nation as nation_2
        on (orders_1.provsql = nation_2.provsql )
      on (region_1.r_name = nation_2.n_name )
    on (part_1.p_retailprice = orders_1.o_totalprice )
where customer_1.c_name is not NULL
limit 34;
select  
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 12;
select  
  min(
    region_1.r_name), 
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name
limit 21;
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  count(
    customer_1.c_name), 
  customer_1.c_address, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_name, customer_1.c_phone, customer_1.c_address, customer_1.c_phone
limit 38;
select  
  customer_1.c_address, 
  customer_1.provsql, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 34;
select  
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_nationkey >= customer_1.c_custkey
limit 5;
select  
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 8;
select  
  part_1.p_retailprice, 
  count(*), 
  avg(
    part_1.p_size), 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.provsql, 
  part_1.p_mfgr, 
  part_1.p_size, 
  part_1.p_retailprice, 
  sum(
    part_1.p_size), 
  part_1.p_brand, 
  part_1.p_container
from 
  part as part_1
where part_1.p_container > part_1.p_brand
group by part_1.p_retailprice, part_1.p_brand, part_1.p_container, part_1.p_comment, part_1.p_retailprice, part_1.p_container, part_1.p_type, part_1.p_mfgr, part_1.provsql, part_1.p_mfgr, part_1.p_size, part_1.p_retailprice, part_1.p_brand, part_1.p_container
limit 26;
select  
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 24;
select  
  part_1.provsql, 
  min(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  part_1.provsql, 
  part_1.provsql, 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_brand
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.provsql, part_1.p_retailprice, part_1.provsql, part_1.provsql, part_1.p_size, part_1.p_brand
limit 23;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice > lineitem_1.l_tax
limit 40;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_nationkey, nation_1.n_name
limit 36;
select  
  customer_1.c_acctbal, 
  customer_1.c_mktsegment
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_comment = customer_1.c_name )
where region_1.provsql <= customer_1.provsql
limit 19;
select  
  orders_1.o_orderstatus, 
  min(
    orders_1.o_totalprice), 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.provsql, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderstatus > orders_1.o_clerk
group by orders_1.o_orderstatus, orders_1.o_clerk, orders_1.o_orderstatus, orders_1.provsql, orders_1.o_shippriority, orders_1.o_orderstatus
limit 42;
select  
  part_1.p_brand, 
  part_1.provsql, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_brand, 
  count(*), 
  avg(
    part_1.p_size), 
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_comment, 
  part_1.p_mfgr, 
  part_1.p_container, 
  part_1.provsql, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.provsql, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_partkey < part_1.p_size
group by part_1.p_brand, part_1.provsql, part_1.p_retailprice, part_1.p_name, part_1.p_name, part_1.p_brand, part_1.p_type, part_1.p_type, part_1.p_comment, part_1.p_mfgr, part_1.p_container, part_1.provsql, part_1.p_partkey, part_1.p_mfgr, part_1.p_type, part_1.p_size, part_1.p_type, part_1.provsql, part_1.p_comment, part_1.p_container, part_1.p_retailprice, part_1.p_mfgr, part_1.p_partkey, part_1.provsql, part_1.p_retailprice
limit 18;
select  
  customer_2.c_comment, 
  part_2.p_size, 
  customer_2.c_name, 
  lineitem_1.l_orderkey, 
  part_1.provsql
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_type = supplier_1.s_address )
    inner join lineitem as lineitem_1
        inner join customer as customer_1
          inner join customer as customer_2
          on (customer_1.c_phone = customer_2.c_phone )
        on (lineitem_1.l_suppkey = customer_1.c_custkey )
      inner join part as part_2
      on (lineitem_1.l_quantity = part_2.p_retailprice )
    on (supplier_1.s_nationkey = part_2.p_partkey )
where lineitem_1.l_receiptdate >= lineitem_1.l_shipdate
limit 6;
select  
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_regionkey, nation_1.provsql, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_comment, nation_1.provsql, nation_1.n_nationkey, nation_1.n_comment, nation_1.provsql
limit 40;
select  
  part_1.provsql, 
  supplier_1.s_name, 
  region_1.r_comment, 
  part_1.p_brand, 
  supplier_1.s_acctbal, 
  lineitem_1.l_shipinstruct, 
  min(
    orders_1.o_clerk), 
  supplier_1.s_comment, 
  region_1.r_regionkey
from 
  orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_clerk = lineitem_1.l_returnflag )
    inner join part as part_1
        inner join supplier as supplier_1
        on (part_1.p_name = supplier_1.s_address )
      inner join region as region_1
      on (supplier_1.s_phone = region_1.r_name )
    on (lineitem_1.l_suppkey = supplier_1.s_suppkey )
where part_1.provsql <= lineitem_1.provsql
group by part_1.provsql, supplier_1.s_name, region_1.r_comment, part_1.p_brand, supplier_1.s_acctbal, lineitem_1.l_shipinstruct, supplier_1.s_comment, region_1.r_regionkey
limit 28;
select  
  count(
    lineitem_1.l_linenumber), 
  lineitem_1.l_tax, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount, 
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  lineitem_1.provsql, 
  lineitem_1.provsql, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate, 
  sum(
    lineitem_1.l_extendedprice), 
  count(*), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.provsql, 
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey >= lineitem_1.l_linenumber
group by lineitem_1.l_tax, lineitem_1.l_comment, lineitem_1.l_shipinstruct, lineitem_1.l_extendedprice, lineitem_1.l_discount, lineitem_1.l_partkey, lineitem_1.l_extendedprice, lineitem_1.l_comment, lineitem_1.l_tax, lineitem_1.l_extendedprice, lineitem_1.provsql, lineitem_1.provsql, lineitem_1.l_commitdate, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_suppkey, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_linenumber, lineitem_1.l_suppkey, lineitem_1.l_linenumber, lineitem_1.l_shipinstruct, lineitem_1.l_receiptdate, lineitem_1.l_tax, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_commitdate, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.provsql, lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_shipmode, lineitem_1.l_tax, lineitem_1.l_tax
limit 20;
select  
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  orders_1.o_comment, 
  region_1.provsql, 
  max(
    orders_1.o_orderdate), 
  region_1.r_comment, 
  orders_1.o_clerk, 
  orders_1.provsql, 
  region_1.r_name, 
  orders_1.o_orderkey
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_custkey = region_1.r_regionkey )
where orders_1.o_orderkey is not NULL
group by region_1.r_comment, region_1.provsql, region_1.r_regionkey, orders_1.o_comment, region_1.provsql, region_1.r_comment, orders_1.o_clerk, orders_1.provsql, region_1.r_name, orders_1.o_orderkey
limit 37;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
group by supplier_1.s_nationkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.provsql, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_suppkey, supplier_1.s_phone, supplier_1.s_comment, supplier_1.s_comment
limit 36;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_acctbal = partsupp_1.ps_supplycost )
where partsupp_1.ps_supplycost > supplier_1.s_acctbal
limit 27;
select  
  customer_1.c_custkey, 
  customer_1.provsql, 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 42;
select  
  customer_1.c_nationkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  count(
    customer_1.provsql), 
  customer_1.c_comment, 
  sum(
    customer_1.c_custkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join region as region_1
      on (customer_1.c_mktsegment = region_1.r_name )
    on (partsupp_1.ps_supplycost = customer_1.c_acctbal )
where customer_1.c_mktsegment = customer_1.c_phone
group by customer_1.c_nationkey, region_1.r_comment, region_1.r_regionkey, customer_1.c_comment, partsupp_1.ps_supplycost, partsupp_1.provsql
limit 36;
select  
  customer_1.c_phone
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_acctbal = supplier_1.s_acctbal )
where customer_1.c_phone >= supplier_1.s_phone
limit 27;
select  
  supplier_1.s_suppkey
from 
  supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join part as part_1
    on (supplier_1.s_acctbal = part_1.p_retailprice )
where supplier_1.s_nationkey is not NULL
limit 20;
select  
  part_1.p_brand, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey
from 
  supplier as supplier_1
    inner join orders as orders_1
        inner join customer as customer_1
          inner join customer as customer_2
          on (customer_1.c_phone = customer_2.c_phone )
        on (orders_1.o_orderstatus = customer_1.c_phone )
      inner join part as part_1
        inner join part as part_2
        on (part_1.p_size = part_2.p_partkey )
      on (orders_1.o_custkey = part_2.p_partkey )
    on (supplier_1.s_nationkey = customer_1.c_custkey )
where customer_2.c_name is not NULL
limit 41;
select  
  region_1.r_comment, 
  nation_2.provsql, 
  nation_1.n_name, 
  nation_2.n_comment, 
  sum(
    nation_2.n_regionkey), 
  nation_2.n_nationkey, 
  region_1.r_regionkey, 
  nation_2.n_name, 
  region_1.r_comment, 
  region_1.r_name, 
  nation_2.n_regionkey, 
  count(
    nation_2.n_comment), 
  nation_2.n_nationkey
from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_comment = region_1.r_comment )
    inner join nation as nation_2
    on (region_1.provsql = nation_2.provsql )
where nation_2.provsql is not NULL
group by region_1.r_comment, nation_2.provsql, nation_1.n_name, nation_2.n_comment, nation_2.n_nationkey, region_1.r_regionkey, nation_2.n_name, region_1.r_comment, region_1.r_name, nation_2.n_regionkey, nation_2.n_nationkey
limit 31;
select  
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_receiptdate)
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.provsql = lineitem_1.provsql )
where region_1.r_regionkey is not NULL
group by lineitem_1.l_comment
limit 40;
select  
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 20;
select  
  lineitem_1.l_returnflag, 
  part_1.p_retailprice, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_comment = part_1.p_name )
    inner join partsupp as partsupp_1
    on (part_1.p_size = partsupp_1.ps_partkey )
where lineitem_1.l_shipdate >= lineitem_1.l_receiptdate
limit 9;
select  
  lineitem_2.l_partkey, 
  avg(
    lineitem_2.l_extendedprice)
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_commitdate = lineitem_2.l_shipdate )
where lineitem_1.l_partkey >= lineitem_1.l_suppkey
group by lineitem_2.l_partkey
limit 9;
select  
  orders_1.o_orderdate, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderdate
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_retailprice = orders_1.o_totalprice )
where part_1.p_retailprice >= orders_1.o_totalprice
group by orders_1.o_orderdate, orders_1.o_custkey, orders_1.o_comment, orders_1.o_orderdate
limit 14;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_name), 
  supplier_1.s_suppkey
from 
  nation as nation_1
    inner join supplier as supplier_1
      inner join nation as nation_2
        inner join nation as nation_3
        on (nation_2.n_regionkey = nation_3.n_nationkey )
      on (supplier_1.s_suppkey = nation_2.n_nationkey )
    on (nation_1.n_regionkey = nation_3.n_nationkey )
where supplier_1.s_acctbal = supplier_1.s_acctbal
group by supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_phone, supplier_1.s_suppkey
limit 21;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
limit 30;
select  
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 23;
select  
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  min(
    orders_1.o_orderstatus), 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.o_orderdate, orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_comment, orders_1.o_comment, orders_1.o_totalprice, orders_1.o_custkey
limit 27;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.provsql <= nation_1.provsql
limit 26;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_type, 
  partsupp_1.ps_supplycost
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.provsql = partsupp_1.provsql )
where partsupp_1.provsql <= part_1.provsql
limit 7;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 30;
select  
  supplier_1.provsql
from 
  region as region_1
    inner join customer as customer_1
            inner join customer as customer_2
            on (customer_1.c_mktsegment = customer_2.c_phone )
          inner join lineitem as lineitem_1
          on (customer_2.c_address = lineitem_1.l_comment )
        inner join region as region_2
          inner join supplier as supplier_1
          on (region_2.provsql = supplier_1.provsql )
        on (customer_1.c_custkey = region_2.r_regionkey )
      inner join partsupp as partsupp_1
      on (customer_1.c_acctbal = partsupp_1.ps_supplycost )
    on (region_1.provsql = region_2.provsql )
where customer_1.c_mktsegment <= region_2.r_name
limit 9;
select  
  partsupp_1.ps_supplycost, 
  supplier_1.s_suppkey, 
  region_1.r_regionkey, 
  supplier_1.s_acctbal, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  region as region_1
      inner join partsupp as partsupp_1
      on (region_1.provsql = partsupp_1.provsql )
    inner join supplier as supplier_1
    on (partsupp_1.ps_suppkey = supplier_1.s_suppkey )
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_supplycost, supplier_1.s_suppkey, region_1.r_regionkey, supplier_1.s_acctbal, region_1.r_regionkey
limit 13;
select  
  lineitem_1.l_partkey, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_extendedprice, 
  lineitem_1.provsql, 
  max(
    lineitem_1.l_returnflag), 
  min(
    lineitem_1.l_shipinstruct), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey > lineitem_1.l_partkey
group by lineitem_1.l_partkey, lineitem_1.l_shipmode, lineitem_1.l_extendedprice, lineitem_1.provsql, lineitem_1.l_shipinstruct, lineitem_1.l_commitdate, lineitem_1.l_comment, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct
limit 12;
select  
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_container
from 
  part as part_1
where part_1.p_type is not NULL
limit 2;
select  
  min(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.p_retailprice < part_1.p_retailprice
limit 34;
select  
  orders_1.o_orderstatus, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 34;
select  
  customer_1.c_custkey, 
  supplier_1.s_name, 
  count(
    part_1.p_comment), 
  partsupp_1.ps_supplycost, 
  supplier_1.s_comment
from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_availqty = part_1.p_partkey )
    inner join customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_comment = supplier_1.s_address )
    on (partsupp_1.ps_comment = supplier_1.s_address )
where part_1.p_brand is not NULL
group by customer_1.c_custkey, supplier_1.s_name, partsupp_1.ps_supplycost, supplier_1.s_comment
limit 37;
select  
  region_1.r_name, 
  customer_1.c_name, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_name
from 
  customer as customer_1
    inner join nation as nation_1
      inner join region as region_1
      on (nation_1.n_name = region_1.r_name )
    on (customer_1.c_name = nation_1.n_comment )
where customer_1.c_mktsegment > region_1.r_name
group by region_1.r_name, customer_1.c_name, nation_1.n_name, nation_1.n_comment, nation_1.n_name
limit 15;
select  
  nation_1.n_name, 
  lineitem_1.provsql, 
  nation_1.n_name
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_partkey = nation_1.n_nationkey )
where nation_1.n_name = lineitem_1.l_shipinstruct
limit 37;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql
from 
  region as region_1
where region_1.provsql is not NULL
limit 11;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 29;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  part_2.p_size, 
  part_1.p_comment
from 
  lineitem as lineitem_1
    inner join part as part_1
        inner join nation as nation_1
        on (part_1.p_partkey = nation_1.n_nationkey )
      inner join part as part_2
      on (nation_1.n_regionkey = part_2.p_partkey )
    on (lineitem_1.l_orderkey = part_2.p_partkey )
where lineitem_1.l_partkey is not NULL
limit 14;
select  
  partsupp_1.ps_partkey, 
  orders_2.o_comment
from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join partsupp as partsupp_2
        inner join orders as orders_1
        on (partsupp_2.ps_partkey = orders_1.o_orderkey )
      inner join orders as orders_2
      on (orders_1.o_orderstatus = orders_2.o_orderstatus )
    on (nation_1.n_comment = orders_1.o_comment )
where orders_1.o_orderdate >= orders_2.o_orderdate
limit 19;
select  
  min(
    orders_1.o_orderstatus), 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_custkey = partsupp_1.ps_partkey )
where orders_1.o_clerk is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.provsql
limit 39;
select  
  orders_1.o_comment, 
  orders_1.provsql, 
  avg(
    orders_1.o_totalprice), 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_orderstatus, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_clerk > orders_1.o_orderstatus
group by orders_1.o_comment, orders_1.provsql, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_comment
limit 25;
select  
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_tax)
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_suppkey, lineitem_1.l_returnflag, lineitem_1.l_tax, lineitem_1.l_linestatus, lineitem_1.l_comment
limit 3;
select  
  min(
    lineitem_1.l_shipdate), 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  lineitem_1.l_linenumber, 
  partsupp_1.ps_supplycost, 
  nation_1.n_regionkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipinstruct, 
  partsupp_1.ps_availqty, 
  nation_1.n_regionkey
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_comment = nation_1.n_comment )
    on (lineitem_1.l_linestatus = nation_1.n_name )
where lineitem_1.l_returnflag > nation_1.n_name
group by partsupp_1.provsql, partsupp_1.provsql, lineitem_1.l_linenumber, partsupp_1.ps_supplycost, nation_1.n_regionkey, lineitem_1.l_extendedprice, lineitem_1.l_partkey, lineitem_1.l_shipinstruct, partsupp_1.ps_availqty, nation_1.n_regionkey
limit 17;
select  
  region_1.r_name
from 
  region as region_1
where region_1.provsql is not NULL
limit 39;
select  
  lineitem_1.l_discount, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice, 
  count(*), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
group by lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_suppkey, lineitem_1.l_shipdate, lineitem_1.l_tax, lineitem_1.l_tax, lineitem_1.l_shipmode, lineitem_1.l_linenumber, lineitem_1.l_returnflag
limit 28;
select  
  count(*), 
  region_1.r_comment, 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql <= region_1.provsql
group by region_1.r_comment, region_1.r_comment
limit 40;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.provsql <= nation_1.provsql
limit 3;
select  
  lineitem_1.l_orderkey, 
  region_1.r_regionkey, 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_shipmode, 
  avg(
    lineitem_1.l_suppkey), 
  region_1.r_comment
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.provsql = lineitem_1.provsql )
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_orderkey, region_1.r_regionkey, lineitem_1.l_shipmode, region_1.r_comment
limit 13;
select  
  sum(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.provsql <= partsupp_1.provsql
group by partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_comment
limit 38;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipdate
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_address = lineitem_1.l_comment )
where supplier_1.s_nationkey is not NULL
limit 11;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 7;
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 21;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_quantity, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_shipmode), 
  avg(
    lineitem_1.l_linenumber)
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
group by lineitem_1.l_shipmode, lineitem_1.l_quantity, lineitem_1.l_shipmode, lineitem_1.l_discount, lineitem_1.l_orderkey, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_partkey, lineitem_1.l_linenumber, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_quantity, lineitem_1.l_discount, lineitem_1.l_receiptdate, lineitem_1.l_orderkey, lineitem_1.l_shipinstruct
limit 6;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_shipmode
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_comment = lineitem_1.l_comment )
where lineitem_1.l_shipmode is not NULL
limit 7;
select  
  customer_1.c_comment, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  count(*)
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_comment, customer_1.c_phone, customer_1.c_acctbal, customer_1.c_name
limit 29;
select  
  sum(
    part_1.p_size), 
  part_1.p_comment
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment
limit 19;
select  
  part_1.provsql, 
  part_1.p_brand
from 
  part as part_1
where part_1.provsql is not NULL
limit 39;
select  
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_mfgr, 
  sum(
    part_1.p_retailprice), 
  part_1.p_name, 
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_size
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_name, part_1.p_container, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_brand, part_1.p_brand, part_1.p_type, part_1.p_size
limit 26;
select  
  region_1.r_name, 
  region_2.r_regionkey, 
  region_2.provsql, 
  count(
    partsupp_1.ps_availqty), 
  region_2.r_name, 
  region_2.r_regionkey, 
  region_1.r_regionkey, 
  region_2.r_name, 
  partsupp_1.ps_suppkey, 
  avg(
    partsupp_1.ps_supplycost)
from 
  region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    inner join region as region_2
    on (region_1.r_name = region_2.r_name )
where region_1.r_regionkey is not NULL
group by region_1.r_name, region_2.r_regionkey, region_2.provsql, region_2.r_name, region_2.r_regionkey, region_1.r_regionkey, region_2.r_name, partsupp_1.ps_suppkey
limit 4;
select  
  max(
    orders_1.o_orderdate), 
  orders_1.o_comment, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_comment, orders_1.o_orderkey
limit 3;
select  
  min(
    region_1.r_name)
from 
  region as region_1
where region_1.r_name is not NULL
limit 27;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_name is not NULL
limit 29;
select distinct 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.c_address = part_1.p_name )
    inner join nation as nation_1
    on (customer_1.c_phone = nation_1.n_name )
where part_1.p_partkey is not NULL
limit 36;
select  
  sum(
    lineitem_1.l_discount)
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity = lineitem_1.l_extendedprice
limit 32;
select  
  supplier_1.s_acctbal, 
  part_1.p_comment, 
  min(
    supplier_1.s_suppkey), 
  part_1.p_comment
from 
  part as part_1
      inner join partsupp as partsupp_1
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    inner join supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_nationkey = supplier_2.s_suppkey )
    on (partsupp_1.ps_availqty = supplier_2.s_suppkey )
where supplier_2.s_suppkey is not NULL
group by supplier_1.s_acctbal, part_1.p_comment, part_1.p_comment
limit 24;
select  
  region_1.provsql, 
  orders_1.o_clerk, 
  region_2.r_comment, 
  region_2.provsql, 
  orders_1.o_orderkey, 
  region_1.provsql, 
  region_2.r_regionkey
from 
  region as region_1
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    inner join orders as orders_1
    on (region_2.provsql = orders_1.provsql )
where region_2.r_regionkey is not NULL
limit 37;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 41;
select  
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_suppkey, supplier_1.s_nationkey
limit 19;
select  
  max(
    part_1.p_container), 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_name, 
  max(
    part_1.p_mfgr), 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.provsql, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_retailprice < part_1.p_retailprice
group by part_1.p_brand, part_1.p_name, part_1.p_name, part_1.p_mfgr, part_1.p_mfgr, part_1.p_mfgr, part_1.provsql, part_1.p_partkey
limit 33;
select  
  customer_1.c_phone, 
  min(
    customer_1.c_phone), 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_phone), 
  sum(
    customer_1.c_nationkey), 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_mktsegment <= customer_1.c_phone
group by customer_1.c_phone, customer_1.c_comment, customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_custkey
limit 40;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
limit 30;
select  
  orders_1.o_orderkey, 
  avg(
    orders_1.o_shippriority)
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_orderkey
limit 13;
select  
  min(
    lineitem_1.l_receiptdate), 
  min(
    part_1.p_size), 
  lineitem_1.l_tax, 
  lineitem_1.l_linenumber, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_type, 
  lineitem_1.l_commitdate, 
  part_1.p_container, 
  max(
    part_1.p_mfgr), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linenumber, 
  part_1.p_brand
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_size = lineitem_1.l_orderkey )
where part_1.p_size >= lineitem_1.l_suppkey
group by lineitem_1.l_tax, lineitem_1.l_linenumber, part_1.p_size, part_1.p_retailprice, part_1.p_comment, part_1.p_size, part_1.p_type, lineitem_1.l_commitdate, part_1.p_container, lineitem_1.l_shipdate, lineitem_1.l_linenumber, part_1.p_brand
limit 17;
select  
  nation_1.n_name, 
  avg(
    partsupp_1.ps_supplycost)
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where nation_1.n_name >= nation_1.n_name
group by nation_1.n_name
limit 29;
select  
  customer_1.c_nationkey, 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 21;
select  
  lineitem_1.l_discount, 
  region_1.r_regionkey, 
  min(
    part_1.p_retailprice)
from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_mfgr = lineitem_1.l_returnflag )
    inner join supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_phone = region_1.r_name )
    on (part_1.p_mfgr = region_1.r_name )
where lineitem_1.l_shipdate > lineitem_1.l_receiptdate
group by lineitem_1.l_discount, region_1.r_regionkey
limit 22;
select  
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.o_orderdate <= orders_1.o_orderdate
group by orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_clerk
limit 19;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode, 
  lineitem_1.provsql, 
  lineitem_1.provsql, 
  lineitem_1.l_receiptdate, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 32;
select  
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 20;
select  
  partsupp_1.provsql, 
  customer_1.c_custkey, 
  sum(
    partsupp_1.ps_suppkey), 
  customer_1.provsql, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  max(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_nationkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_availqty = customer_1.c_custkey )
where partsupp_1.provsql is not NULL
group by partsupp_1.provsql, customer_1.c_custkey, customer_1.provsql, partsupp_1.ps_supplycost, partsupp_1.provsql, customer_1.c_address, customer_1.c_nationkey
limit 35;
select  
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.provsql is not NULL
limit 5;
select  
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_comment, 
  avg(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_custkey, customer_1.c_address, customer_1.c_comment, customer_1.c_name, customer_1.c_phone, customer_1.c_address, customer_1.c_nationkey, customer_1.provsql, customer_1.c_custkey, customer_1.provsql, customer_1.c_acctbal, customer_1.c_comment, customer_1.c_address, customer_1.provsql, customer_1.c_comment, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.provsql, customer_1.c_acctbal, customer_1.c_name, customer_1.c_mktsegment, customer_1.c_mktsegment, customer_1.c_comment, customer_1.c_address, customer_1.c_custkey, customer_1.c_comment, customer_1.c_address, customer_1.c_acctbal, customer_1.c_mktsegment
limit 18;
select  
  lineitem_1.provsql, 
  lineitem_1.l_comment, 
  lineitem_1.l_discount, 
  lineitem_1.l_comment, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.provsql, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
limit 10;
select  
  part_1.provsql, 
  sum(
    part_1.p_size), 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_size, 
  part_1.p_name
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.provsql, part_1.p_container, part_1.p_mfgr, part_1.p_size, part_1.p_name
limit 20;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  supplier_1.s_address, 
  customer_1.c_name
from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    inner join supplier as supplier_1
        inner join customer as customer_1
        on (supplier_1.s_comment = customer_1.c_name )
      inner join customer as customer_2
      on (supplier_1.s_name = customer_2.c_phone )
    on (partsupp_1.provsql = supplier_1.provsql )
where supplier_1.s_comment is not NULL
limit 34;
select  
  lineitem_1.l_returnflag, 
  customer_1.c_address, 
  min(
    lineitem_1.l_linestatus)
from 
  orders as orders_1
    inner join lineitem as lineitem_1
      inner join part as part_1
          inner join partsupp as partsupp_1
          on (part_1.provsql = partsupp_1.provsql )
        inner join customer as customer_1
        on (part_1.p_container = customer_1.c_phone )
      on (lineitem_1.l_discount = partsupp_1.ps_supplycost )
    on (orders_1.o_comment = partsupp_1.ps_comment )
where customer_1.c_address is not NULL
group by lineitem_1.l_returnflag, customer_1.c_address
limit 3;
select  
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 12;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.provsql, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
group by nation_1.n_regionkey, nation_1.n_name, nation_1.n_name, nation_1.provsql, nation_1.provsql, nation_1.n_nationkey, nation_1.n_name, nation_1.provsql, nation_1.provsql, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_name, nation_1.n_name, nation_1.n_regionkey, nation_1.provsql, nation_1.n_comment
limit 34;
select  
  part_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  part_1.p_partkey, 
  region_1.r_regionkey
from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_regionkey = partsupp_1.ps_partkey )
    inner join region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    on (partsupp_1.provsql = region_1.provsql )
where nation_1.n_comment is not NULL
limit 13;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_quantity), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_shipdate, lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_receiptdate
limit 10;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_quantity = customer_1.c_acctbal )
where customer_1.c_address is not NULL
limit 42;
select  
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_2.n_comment, 
  nation_2.n_regionkey
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_name = nation_2.n_name )
where nation_2.n_regionkey is not NULL
limit 22;
select  
  part_1.p_partkey, 
  min(
    part_1.p_retailprice), 
  part_1.p_container
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_comment = part_1.p_name )
where part_1.provsql is not NULL
group by part_1.p_partkey, part_1.p_container
limit 9;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  customer_1.c_custkey, 
  nation_1.n_name, 
  min(
    nation_1.n_name), 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  customer_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_name, 
  nation_1.n_nationkey, 
  customer_1.c_address, 
  sum(
    customer_1.c_acctbal), 
  max(
    customer_1.c_nationkey), 
  min(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  customer_1.c_comment
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_regionkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, customer_1.c_custkey, nation_1.n_name, nation_1.n_regionkey, nation_1.n_regionkey, customer_1.provsql, nation_1.n_nationkey, nation_1.n_comment, customer_1.c_phone, customer_1.c_comment, customer_1.c_nationkey, customer_1.c_name, customer_1.c_phone, customer_1.c_name, nation_1.n_nationkey, customer_1.c_address, customer_1.c_custkey, customer_1.c_comment
limit 23;
select  
  part_1.p_type, 
  part_1.p_brand, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_container is not NULL
limit 28;
select  
  part_1.p_container
from 
  part as part_1
where part_1.p_retailprice <= part_1.p_retailprice
limit 40;
select  
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 6;
select distinct 
  min(
    customer_1.c_mktsegment), 
  max(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey), 
  max(
    customer_1.c_nationkey), 
  max(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_address, customer_1.c_phone, customer_1.c_acctbal, customer_1.c_name, customer_1.c_mktsegment, customer_1.c_comment, customer_1.c_comment, customer_1.provsql, customer_1.provsql, customer_1.c_mktsegment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, customer_1.c_name, customer_1.c_acctbal, customer_1.c_phone, customer_1.c_name, customer_1.c_name, customer_1.c_phone, customer_1.c_comment, customer_1.c_acctbal
limit 3;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linenumber, 
  avg(
    lineitem_1.l_orderkey), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_tax, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_shipmode), 
  min(
    lineitem_1.l_receiptdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
group by lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, lineitem_1.l_linenumber, lineitem_1.l_returnflag, lineitem_1.l_orderkey, lineitem_1.l_tax, lineitem_1.l_returnflag
limit 1;
select  
  sum(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  count(*), 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_address, customer_1.c_nationkey, customer_1.c_phone, customer_1.provsql, customer_1.c_custkey, customer_1.c_acctbal
limit 34;
select  
  region_1.r_regionkey, 
  nation_1.n_nationkey, 
  sum(
    nation_1.n_regionkey), 
  nation_1.provsql, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  nation_1.provsql
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_regionkey = region_1.r_regionkey )
where nation_1.provsql < region_1.provsql
group by region_1.r_regionkey, nation_1.n_nationkey, nation_1.provsql, region_1.r_name, region_1.r_comment, region_1.r_regionkey, nation_1.provsql
limit 26;
select  
  customer_2.c_phone, 
  orders_2.o_orderstatus, 
  nation_1.provsql
from 
  customer as customer_1
          inner join orders as orders_1
          on (customer_1.provsql = orders_1.provsql )
        inner join orders as orders_2
        on (orders_1.o_shippriority = orders_2.o_orderkey )
      inner join customer as customer_2
      on (customer_1.c_comment = customer_2.c_name )
    inner join nation as nation_1
    on (orders_2.o_orderpriority = nation_1.n_name )
where customer_1.c_comment is not NULL
limit 4;
select  
  lineitem_1.l_returnflag, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  lineitem_1.l_suppkey, 
  nation_1.n_comment, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax, 
  avg(
    nation_1.n_regionkey), 
  nation_1.provsql, 
  min(
    lineitem_1.l_quantity)
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_suppkey = nation_1.n_nationkey )
where lineitem_1.l_shipmode < nation_1.n_name
group by lineitem_1.l_returnflag, nation_1.n_regionkey, nation_1.provsql, nation_1.n_regionkey, nation_1.n_nationkey, lineitem_1.l_suppkey, nation_1.n_comment, lineitem_1.l_extendedprice, lineitem_1.l_tax, nation_1.provsql
limit 13;
select  
  part_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_phone
from 
  customer as customer_1
    inner join part as part_1
      inner join region as region_1
      on (part_1.p_mfgr = region_1.r_name )
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_phone is not NULL
limit 13;
select  
  nation_2.n_nationkey, 
  nation_1.n_name, 
  partsupp_1.ps_availqty, 
  nation_1.n_regionkey, 
  customer_1.c_name, 
  customer_1.provsql, 
  nation_2.n_name, 
  nation_1.n_comment
from 
  customer as customer_1
    inner join nation as nation_1
        inner join nation as nation_2
        on (nation_1.n_regionkey = nation_2.n_nationkey )
      inner join partsupp as partsupp_1
      on (nation_1.provsql = partsupp_1.provsql )
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where nation_1.n_name is not NULL
limit 40;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 17;
select  
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 42;
select  
  min(
    lineitem_1.l_returnflag), 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice, 
  orders_1.o_totalprice, 
  lineitem_1.l_shipdate, 
  max(
    orders_1.o_orderdate), 
  min(
    lineitem_1.l_discount)
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_suppkey is not NULL
group by orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_clerk, orders_1.o_orderkey, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_extendedprice, orders_1.o_totalprice, lineitem_1.l_shipdate
limit 38;
select  
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  sum(
    orders_1.o_orderkey)
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_totalprice, orders_1.o_shippriority, orders_1.o_orderkey, orders_1.o_custkey, orders_1.o_comment, orders_1.o_orderpriority
limit 3;
select  
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 40;
select  
  orders_1.o_clerk, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_custkey, 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.provsql
limit 14;
select  
  partsupp_1.ps_comment, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey
limit 9;
select  
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
limit 37;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.provsql, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 35;
select  
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_acctbal > customer_1.c_acctbal
limit 28;
select  
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 18;
select  
  nation_1.n_name, 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.provsql, nation_1.n_comment, nation_1.n_comment, nation_1.n_regionkey, nation_1.provsql, nation_1.n_comment, nation_1.n_nationkey
limit 4;
select  
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 25;
select  
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_supplycost), 
  avg(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
group by partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 38;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.provsql, partsupp_1.ps_partkey
limit 34;
select  
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_regionkey >= nation_1.n_nationkey
limit 18;
select  
  orders_1.o_custkey, 
  max(
    orders_1.o_orderstatus), 
  orders_1.o_comment, 
  avg(
    lineitem_1.l_extendedprice), 
  max(
    orders_1.o_orderstatus), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_extendedprice, 
  orders_1.o_custkey, 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_quantity, 
  lineitem_1.l_linenumber, 
  orders_1.o_shippriority, 
  orders_1.provsql, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipinstruct, 
  avg(
    orders_1.o_totalprice), 
  count(
    lineitem_1.l_quantity), 
  max(
    orders_1.o_clerk), 
  orders_1.o_comment, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_returnflag = orders_1.o_orderstatus )
where lineitem_1.l_quantity is not NULL
group by orders_1.o_custkey, orders_1.o_comment, lineitem_1.l_suppkey, lineitem_1.l_extendedprice, orders_1.o_custkey, lineitem_1.l_quantity, lineitem_1.l_linenumber, orders_1.o_shippriority, orders_1.provsql, lineitem_1.l_suppkey, lineitem_1.l_shipinstruct, orders_1.o_comment, lineitem_1.l_orderkey, lineitem_1.l_comment
limit 21;
select  
  partsupp_1.ps_partkey, 
  orders_1.o_clerk, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  orders_1.o_clerk
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_comment = orders_1.o_comment )
where orders_1.o_orderdate <= orders_1.o_orderdate
limit 40;
select  
  part_1.p_mfgr, 
  part_1.provsql, 
  part_1.p_name, 
  customer_1.c_address, 
  customer_1.c_mktsegment
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_mktsegment = part_1.p_mfgr )
where part_1.p_brand is not NULL
limit 23;
select  
  part_1.p_name, 
  nation_1.n_comment, 
  min(
    part_1.p_container), 
  nation_1.n_comment, 
  part_1.provsql, 
  part_1.p_mfgr
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_comment = part_1.p_name )
where nation_1.n_regionkey is not NULL
group by part_1.p_name, nation_1.n_comment, nation_1.n_comment, part_1.provsql, part_1.p_mfgr
limit 24;
select  
  min(
    lineitem_1.l_partkey), 
  lineitem_1.provsql, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode >= lineitem_1.l_shipinstruct
group by lineitem_1.provsql, lineitem_1.l_orderkey, lineitem_1.l_shipdate, lineitem_1.l_linenumber, lineitem_1.l_linenumber, lineitem_1.l_quantity, lineitem_1.l_commitdate, lineitem_1.l_partkey
limit 32;
select  
  orders_1.o_orderstatus, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  orders_1.provsql, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  partsupp_1.ps_suppkey, 
  orders_1.o_custkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
limit 29;
select  
  count(
    part_1.p_comment), 
  part_1.p_container
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_container
limit 33;
select  
  supplier_2.s_acctbal, 
  supplier_3.s_suppkey, 
  supplier_1.s_address, 
  supplier_3.s_phone, 
  part_1.p_size, 
  supplier_3.s_name, 
  count(*), 
  min(
    part_1.p_brand)
from 
  part as part_1
        inner join partsupp as partsupp_1
          inner join supplier as supplier_1
          on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
        on (part_1.p_name = supplier_1.s_address )
      inner join supplier as supplier_2
        inner join part as part_2
        on (supplier_2.s_comment = part_2.p_name )
      on (part_1.p_mfgr = supplier_2.s_name )
    inner join supplier as supplier_3
    on (part_1.p_name = supplier_3.s_address )
where part_1.p_container is not NULL
group by supplier_2.s_acctbal, supplier_3.s_suppkey, supplier_1.s_address, supplier_3.s_phone, part_1.p_size, supplier_3.s_name
limit 32;
select  
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey < nation_1.n_regionkey
limit 32;
select  
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 22;
select  
  nation_1.n_comment
from 
  nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.provsql = lineitem_1.provsql )
      inner join nation as nation_2
      on (nation_1.provsql = nation_2.provsql )
    inner join partsupp as partsupp_1
        inner join lineitem as lineitem_2
        on (partsupp_1.ps_availqty = lineitem_2.l_orderkey )
      inner join nation as nation_3
      on (partsupp_1.ps_partkey = nation_3.n_nationkey )
    on (lineitem_1.l_quantity = lineitem_2.l_quantity )
where nation_1.n_regionkey is not NULL
limit 31;
select  
  customer_2.c_custkey, 
  avg(
    orders_1.o_orderkey), 
  avg(
    lineitem_1.l_linenumber), 
  lineitem_1.provsql
from 
  nation as nation_1
      inner join orders as orders_1
            inner join customer as customer_1
            on (orders_1.o_orderstatus = customer_1.c_phone )
          inner join lineitem as lineitem_1
          on (customer_1.c_address = lineitem_1.l_comment )
        inner join orders as orders_2
        on (lineitem_1.l_linestatus = orders_2.o_orderstatus )
      on (nation_1.n_name = orders_2.o_orderstatus )
    inner join orders as orders_3
      inner join customer as customer_2
      on (orders_3.o_custkey = customer_2.c_custkey )
    on (customer_1.c_phone = customer_2.c_phone )
where orders_2.o_orderkey is not NULL
group by customer_2.c_custkey, lineitem_1.provsql
limit 24;
select  
  nation_1.provsql, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_name = customer_1.c_phone )
    inner join orders as orders_1
    on (nation_1.n_name = orders_1.o_orderstatus )
where nation_1.n_name is not NULL
limit 29;
select  
  min(
    lineitem_1.l_tax)
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_availqty = customer_1.c_custkey )
    on (lineitem_1.l_shipmode = customer_1.c_phone )
where lineitem_1.l_discount >= partsupp_1.ps_supplycost
limit 1;
select  
  min(
    orders_1.o_orderdate), 
  min(
    orders_1.o_clerk), 
  orders_1.o_custkey, 
  orders_1.provsql, 
  orders_1.o_shippriority, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_clerk > orders_1.o_orderstatus
group by orders_1.o_custkey, orders_1.provsql, orders_1.o_shippriority, orders_1.o_comment
limit 29;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 6;
select  
  part_1.p_partkey, 
  min(
    part_1.p_size), 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_container
from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_partkey, part_1.p_brand, part_1.p_mfgr, part_1.p_container
limit 35;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  count(*)
from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
group by nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_name, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_comment
limit 36;
select distinct 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_shippriority = orders_1.o_custkey
limit 28;
select  
  customer_1.c_custkey, 
  avg(
    part_1.p_partkey), 
  customer_2.c_custkey, 
  part_1.p_comment, 
  part_1.p_container, 
  sum(
    part_1.p_retailprice), 
  customer_2.provsql, 
  customer_1.c_address
from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_linestatus = customer_1.c_phone )
    inner join part as part_1
      inner join customer as customer_2
      on (part_1.p_mfgr = customer_2.c_phone )
    on (customer_1.c_nationkey = part_1.p_partkey )
where customer_2.c_comment is not NULL
group by customer_1.c_custkey, customer_2.c_custkey, part_1.p_comment, part_1.p_container, customer_2.provsql, customer_1.c_address
limit 40;
select  
  count(*), 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_regionkey, region_1.r_comment
limit 1;
select  
  part_2.p_mfgr, 
  lineitem_1.l_comment
from 
  region as region_1
      inner join nation as nation_1
      on (region_1.r_name = nation_1.n_name )
    inner join part as part_1
        inner join part as part_2
        on (part_1.p_name = part_2.p_name )
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    on (region_1.r_name = part_2.p_mfgr )
where nation_1.provsql <= lineitem_1.provsql
limit 11;
select  
  customer_1.c_mktsegment, 
  nation_1.n_name, 
  customer_1.c_nationkey, 
  nation_1.n_comment, 
  part_1.p_container, 
  part_1.p_container, 
  nation_1.n_name, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_partkey, 
  customer_1.c_phone, 
  nation_1.n_name
from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.c_acctbal = part_1.p_retailprice )
    inner join nation as nation_1
    on (part_1.provsql = nation_1.provsql )
where nation_1.n_name is not NULL
limit 39;
select  
  region_1.provsql, 
  customer_1.provsql
from 
  region as region_1
    inner join customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_address = orders_1.o_comment )
    on (region_1.r_name = customer_1.c_phone )
where customer_1.c_nationkey < region_1.r_regionkey
limit 9;
select  
  lineitem_1.l_receiptdate, 
  min(
    lineitem_1.l_shipinstruct), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_shipinstruct), 
  lineitem_1.provsql, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_comment, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  lineitem_1.provsql, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.provsql, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_receiptdate, lineitem_1.l_linenumber, lineitem_1.l_quantity, lineitem_1.l_tax, lineitem_1.l_shipinstruct, lineitem_1.l_comment, lineitem_1.provsql, lineitem_1.l_tax, lineitem_1.l_extendedprice, lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_returnflag, lineitem_1.l_discount, lineitem_1.provsql, lineitem_1.l_shipdate, lineitem_1.l_tax, lineitem_1.provsql, lineitem_1.l_orderkey, lineitem_1.l_commitdate, lineitem_1.l_shipmode, lineitem_1.l_extendedprice
limit 6;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_commitdate, 
  count(
    lineitem_1.l_orderkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey <= lineitem_1.l_linenumber
group by lineitem_1.l_shipmode, lineitem_1.l_comment, lineitem_1.l_receiptdate, lineitem_1.l_suppkey, lineitem_1.l_receiptdate, lineitem_1.l_orderkey, lineitem_1.l_commitdate, lineitem_1.l_receiptdate, lineitem_1.l_orderkey, lineitem_1.l_tax
limit 15;
select  
  region_1.r_regionkey, 
  region_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  region_1.r_name, 
  count(*), 
  partsupp_1.ps_availqty, 
  region_1.provsql, 
  partsupp_1.ps_comment, 
  region_1.r_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  region_1.r_regionkey
from 
  supplier as supplier_1
    inner join region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    on (supplier_1.s_phone = region_1.r_name )
where supplier_1.s_acctbal >= partsupp_1.ps_supplycost
group by region_1.r_regionkey, region_1.provsql, supplier_1.s_suppkey, supplier_1.s_address, region_1.r_name, partsupp_1.ps_availqty, region_1.provsql, partsupp_1.ps_comment, region_1.r_comment, partsupp_1.ps_comment, partsupp_1.ps_suppkey, region_1.r_regionkey
limit 11;
select  
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_comment, 
  max(
    region_1.r_name), 
  nation_1.n_regionkey, 
  min(
    nation_1.n_regionkey), 
  sum(
    nation_1.n_regionkey), 
  region_1.r_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  region_1.r_name, 
  nation_1.n_nationkey
from 
  region as region_1
    inner join nation as nation_1
    on (region_1.provsql = nation_1.provsql )
where nation_1.n_name is not NULL
group by nation_1.provsql, nation_1.provsql, nation_1.n_comment, nation_1.n_regionkey, region_1.r_regionkey, nation_1.n_nationkey, nation_1.n_regionkey, region_1.r_name, nation_1.n_nationkey
limit 19;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  max(
    partsupp_1.ps_availqty), 
  count(
    partsupp_1.ps_comment), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  avg(
    partsupp_1.ps_suppkey), 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.ps_availqty, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.provsql
limit 2;
select  
  min(
    orders_1.o_clerk), 
  orders_1.o_orderdate, 
  max(
    supplier_1.s_name), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_comment = supplier_1.s_address )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where partsupp_1.ps_comment is not NULL
group by orders_1.o_orderdate, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_partkey
limit 10;
select  
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice < lineitem_1.l_quantity
limit 7;
select  
  min(
    orders_1.o_orderdate), 
  orders_2.o_orderdate
from 
  region as region_1
            inner join orders as orders_1
            on (region_1.r_regionkey = orders_1.o_orderkey )
          inner join partsupp as partsupp_1
          on (orders_1.provsql = partsupp_1.provsql )
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      inner join orders as orders_2
      on (orders_1.o_orderstatus = orders_2.o_orderstatus )
    inner join part as part_1
      inner join nation as nation_1
      on (part_1.p_mfgr = nation_1.n_name )
    on (region_1.r_regionkey = part_1.p_partkey )
where orders_1.o_totalprice >= partsupp_1.ps_supplycost
group by orders_2.o_orderdate
limit 17;
select  
  part_1.p_comment, 
  part_1.p_container, 
  min(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_comment, part_1.p_container
limit 40;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_name <= region_1.r_name
limit 1;
select  
  min(
    orders_1.o_clerk), 
  supplier_1.s_comment, 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.provsql, 
  region_1.r_name, 
  orders_1.provsql, 
  region_1.r_comment, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_acctbal), 
  orders_1.o_custkey, 
  orders_1.provsql, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  region_1.r_name
from 
  region as region_1
    inner join orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderpriority = supplier_1.s_name )
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.provsql is not NULL
group by supplier_1.s_comment, supplier_1.provsql, region_1.r_name, orders_1.provsql, region_1.r_comment, supplier_1.s_phone, supplier_1.s_nationkey, orders_1.o_custkey, orders_1.provsql, orders_1.o_clerk, orders_1.o_comment, region_1.r_name
limit 37;
select  
  supplier_1.s_address, 
  count(*), 
  region_1.r_name, 
  region_1.r_regionkey, 
  part_1.provsql, 
  region_1.r_comment, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  part_1.p_mfgr
from 
  supplier as supplier_1
    inner join region as region_1
      inner join part as part_1
      on (region_1.r_name = part_1.p_mfgr )
    on (supplier_1.s_nationkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by supplier_1.s_address, region_1.r_name, region_1.r_regionkey, part_1.provsql, region_1.r_comment, supplier_1.s_phone, supplier_1.s_nationkey, part_1.p_mfgr
limit 18;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 30;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 25;
select  
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 20;
select  
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_totalprice < orders_1.o_totalprice
limit 25;
select  
  min(
    nation_1.n_regionkey), 
  max(
    lineitem_1.l_shipinstruct), 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.provsql, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_receiptdate, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  lineitem_1.l_receiptdate, 
  nation_1.n_comment, 
  max(
    lineitem_1.l_partkey)
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_partkey = nation_1.n_nationkey )
where lineitem_1.l_shipdate >= lineitem_1.l_receiptdate
group by nation_1.n_name, nation_1.n_name, nation_1.n_name, nation_1.provsql, lineitem_1.l_shipdate, lineitem_1.l_receiptdate, nation_1.n_regionkey, nation_1.n_comment, nation_1.provsql, nation_1.n_regionkey, lineitem_1.l_receiptdate, nation_1.n_comment
limit 10;
select  
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  supplier_1.s_suppkey, 
  customer_1.c_acctbal, 
  region_1.provsql
from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join region as region_1
      on (customer_1.c_name = region_1.r_comment )
    on (supplier_1.s_phone = region_1.r_name )
where region_1.r_name = customer_1.c_mktsegment
limit 32;
select  
  supplier_1.s_nationkey, 
  orders_1.o_orderkey, 
  partsupp_1.ps_availqty, 
  supplier_1.provsql, 
  max(
    orders_1.o_orderdate)
from 
  supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_nationkey = partsupp_1.ps_partkey )
    inner join orders as orders_1
    on (supplier_1.s_acctbal = orders_1.o_totalprice )
where orders_1.o_orderstatus > supplier_1.s_phone
group by supplier_1.s_nationkey, orders_1.o_orderkey, partsupp_1.ps_availqty, supplier_1.provsql
limit 11;
select  
  nation_1.n_regionkey
from 
  lineitem as lineitem_1
      inner join lineitem as lineitem_2
          inner join region as region_1
          on (lineitem_2.l_returnflag = region_1.r_name )
        inner join orders as orders_1
        on (region_1.r_regionkey = orders_1.o_orderkey )
      on (lineitem_1.l_suppkey = region_1.r_regionkey )
    inner join nation as nation_1
    on (region_1.provsql = nation_1.provsql )
where region_1.r_name is not NULL
limit 37;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.provsql is not NULL
limit 27;
select  
  supplier_1.s_comment
from 
  customer as customer_1
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_nationkey = part_1.p_partkey )
    on (customer_1.c_address = part_1.p_name )
where part_1.p_retailprice >= customer_1.c_acctbal
limit 39;
select  
  avg(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.provsql, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_name, customer_1.c_acctbal, customer_1.provsql, customer_1.c_nationkey, customer_1.provsql, customer_1.c_phone, customer_1.c_address, customer_1.c_phone, customer_1.c_mktsegment, customer_1.provsql, customer_1.c_mktsegment, customer_1.provsql
limit 30;
select  
  customer_2.c_comment, 
  partsupp_1.ps_comment, 
  customer_1.c_custkey, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  nation_1.n_regionkey, 
  count(*), 
  nation_1.provsql, 
  customer_1.c_name, 
  customer_2.c_address, 
  partsupp_1.ps_supplycost, 
  customer_2.c_mktsegment
from 
  customer as customer_1
    inner join partsupp as partsupp_1
        inner join customer as customer_2
        on (partsupp_1.ps_comment = customer_2.c_name )
      inner join nation as nation_1
      on (partsupp_1.ps_suppkey = nation_1.n_nationkey )
    on (customer_1.c_address = partsupp_1.ps_comment )
where customer_2.c_comment is not NULL
group by customer_2.c_comment, partsupp_1.ps_comment, customer_1.c_custkey, customer_1.c_phone, customer_1.c_nationkey, nation_1.n_regionkey, nation_1.provsql, customer_1.c_name, customer_2.c_address, partsupp_1.ps_supplycost, customer_2.c_mktsegment
limit 20;
select  
  supplier_2.s_suppkey, 
  region_1.provsql, 
  region_1.r_regionkey, 
  supplier_2.s_name, 
  nation_1.provsql, 
  customer_1.c_name, 
  supplier_2.s_address, 
  customer_1.c_nationkey, 
  max(
    supplier_1.s_acctbal), 
  part_1.p_comment, 
  max(
    supplier_2.s_name), 
  supplier_1.s_phone, 
  part_1.p_container, 
  supplier_1.provsql, 
  part_1.p_size, 
  region_1.r_regionkey, 
  nation_1.n_comment
from 
  nation as nation_1
        inner join supplier as supplier_1
        on (nation_1.n_nationkey = supplier_1.s_suppkey )
      inner join customer as customer_1
      on (nation_1.n_name = customer_1.c_phone )
    inner join part as part_1
        inner join region as region_1
        on (part_1.p_name = region_1.r_comment )
      inner join supplier as supplier_2
      on (region_1.r_comment = supplier_2.s_address )
    on (customer_1.provsql = region_1.provsql )
where customer_1.c_comment is not NULL
group by supplier_2.s_suppkey, region_1.provsql, region_1.r_regionkey, supplier_2.s_name, nation_1.provsql, customer_1.c_name, supplier_2.s_address, customer_1.c_nationkey, part_1.p_comment, supplier_1.s_phone, part_1.p_container, supplier_1.provsql, part_1.p_size, region_1.r_regionkey, nation_1.n_comment
limit 28;
select  
  max(
    orders_1.o_orderdate), 
  region_1.provsql, 
  orders_1.o_shippriority, 
  avg(
    orders_1.o_totalprice), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  part_1.p_retailprice, 
  region_1.r_comment, 
  orders_1.o_custkey, 
  part_1.p_partkey, 
  orders_1.o_orderstatus
from 
  orders as orders_1
      inner join region as region_1
      on (orders_1.o_shippriority = region_1.r_regionkey )
    inner join part as part_1
    on (region_1.provsql = part_1.provsql )
where orders_1.o_totalprice is not NULL
group by region_1.provsql, orders_1.o_shippriority, region_1.r_regionkey, region_1.r_comment, region_1.r_name, part_1.p_retailprice, region_1.r_comment, orders_1.o_custkey, part_1.p_partkey, orders_1.o_orderstatus
limit 27;
select  
  min(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_supplycost = part_1.p_retailprice )
    inner join nation as nation_1
      inner join partsupp as partsupp_2
      on (nation_1.n_comment = partsupp_2.ps_comment )
    on (part_1.p_container = nation_1.n_name )
where part_1.p_retailprice is not NULL
limit 10;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_partkey, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 28;
select  
  supplier_2.s_address
from 
  customer as customer_1
      inner join customer as customer_2
        inner join supplier as supplier_1
        on (customer_2.c_address = supplier_1.s_address )
      on (customer_1.provsql = customer_2.provsql )
    inner join supplier as supplier_2
    on (supplier_1.s_nationkey = supplier_2.s_suppkey )
where customer_2.c_acctbal >= supplier_1.s_acctbal
limit 22;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
limit 38;
select  
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode >= lineitem_1.l_returnflag
limit 7;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 11;
select  
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.provsql
limit 5;
select  
  part_1.provsql
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_brand = orders_1.o_orderstatus )
where orders_1.o_custkey is not NULL
limit 29;
select  
  part_1.p_container, 
  partsupp_1.ps_partkey, 
  part_1.p_partkey, 
  sum(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  partsupp_1.ps_supplycost, 
  part_1.p_mfgr, 
  count(*), 
  partsupp_1.ps_supplycost, 
  part_1.p_partkey, 
  part_1.p_brand, 
  min(
    part_1.p_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  avg(
    partsupp_1.ps_supplycost), 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  partsupp_1.ps_comment, 
  part_1.p_comment, 
  part_1.p_partkey, 
  min(
    part_1.p_brand), 
  part_1.p_brand, 
  partsupp_1.ps_supplycost, 
  sum(
    part_1.p_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  part_1.p_mfgr
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_type = partsupp_1.ps_comment )
where part_1.p_type is not NULL
group by part_1.p_container, partsupp_1.ps_partkey, part_1.p_partkey, partsupp_1.ps_comment, part_1.p_retailprice, part_1.p_mfgr, partsupp_1.ps_supplycost, part_1.p_mfgr, partsupp_1.ps_supplycost, part_1.p_partkey, part_1.p_brand, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_comment, part_1.p_mfgr, part_1.p_retailprice, partsupp_1.ps_comment, part_1.p_comment, part_1.p_partkey, part_1.p_brand, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_suppkey, part_1.p_mfgr
limit 39;
select  
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_nationkey >= customer_1.c_custkey
group by customer_1.c_comment, customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_comment
limit 6;
select  
  min(
    region_1.r_name), 
  region_1.r_name, 
  count(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_name, region_1.r_name
limit 1;
select  
  orders_1.o_shippriority, 
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_address = orders_1.o_comment )
where orders_1.o_orderkey <= supplier_1.s_suppkey
limit 14;
select  
  region_1.r_comment, 
  region_1.provsql
from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where lineitem_1.l_linestatus < lineitem_1.l_shipmode
limit 31;
select  
  max(
    lineitem_1.l_shipinstruct), 
  lineitem_1.l_comment, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linestatus, lineitem_1.l_shipdate
limit 39;
select  
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 42;
select  
  part_1.p_retailprice, 
  part_1.p_comment, 
  region_1.r_name, 
  min(
    part_1.p_retailprice), 
  part_1.p_retailprice, 
  region_1.r_comment, 
  region_1.provsql
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
group by part_1.p_retailprice, part_1.p_comment, region_1.r_name, part_1.p_retailprice, region_1.r_comment, region_1.provsql
limit 11;
select  
  customer_1.provsql, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 17;
select  
  part_1.p_retailprice, 
  supplier_1.s_phone
from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_comment = part_1.p_name )
where part_1.p_container is not NULL
limit 28;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_returnflag), 
  lineitem_1.provsql, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_orderkey), 
  avg(
    lineitem_1.l_suppkey), 
  lineitem_1.l_quantity, 
  lineitem_1.provsql, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_shipdate, lineitem_1.provsql, lineitem_1.l_comment, lineitem_1.l_tax, lineitem_1.l_shipinstruct, lineitem_1.l_quantity, lineitem_1.provsql, lineitem_1.l_returnflag, lineitem_1.l_linestatus
limit 39;
select  
  max(
    orders_1.o_clerk), 
  max(
    orders_1.o_orderdate), 
  orders_1.o_custkey, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  min(
    orders_1.o_shippriority), 
  min(
    orders_1.o_orderkey), 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_custkey, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_shippriority, orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_orderstatus
limit 15;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_quantity, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 20;
select  
  part_1.provsql
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_name = part_1.p_mfgr )
where part_1.provsql is not NULL
limit 22;
select  
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_name, supplier_1.provsql, supplier_1.s_acctbal, supplier_1.s_suppkey
limit 10;
select  
  part_1.p_mfgr, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_mktsegment), 
  part_1.p_type
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_mktsegment = part_1.p_mfgr )
where customer_1.c_acctbal is not NULL
group by part_1.p_mfgr, customer_1.c_mktsegment, customer_1.c_custkey, customer_1.c_comment, customer_1.provsql, customer_1.c_mktsegment, part_1.p_type
limit 14;
select  
  region_1.r_comment, 
  region_2.r_comment, 
  region_2.r_name, 
  region_1.r_name, 
  max(
    customer_1.c_phone)
from 
  customer as customer_1
    inner join region as region_1
      inner join region as region_2
      on (region_1.r_comment = region_2.r_comment )
    on (customer_1.c_name = region_2.r_comment )
where region_2.r_name = customer_1.c_mktsegment
group by region_1.r_comment, region_2.r_comment, region_2.r_name, region_1.r_name
limit 14;
select  
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 39;
select  
  region_1.provsql, 
  max(
    region_1.r_name), 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.provsql, region_1.r_regionkey, region_1.provsql, region_1.r_regionkey, region_1.r_comment
limit 5;
select  
  region_1.provsql, 
  region_2.r_name, 
  region_2.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_2.r_comment is not NULL
limit 25;
select  
  part_1.p_name, 
  supplier_1.s_address, 
  supplier_1.s_name
from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_size = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
limit 39;
select  
  nation_1.n_comment, 
  orders_1.o_shippriority, 
  nation_1.n_nationkey, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.provsql, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  nation_1.provsql, 
  orders_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  orders_1.o_clerk, 
  nation_1.n_regionkey
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_regionkey = orders_1.o_orderkey )
where nation_1.n_name is not NULL
limit 17;
select  
  nation_1.n_regionkey, 
  part_2.p_retailprice, 
  customer_2.c_custkey, 
  customer_1.c_nationkey, 
  part_2.p_size, 
  orders_1.o_comment, 
  nation_1.n_nationkey, 
  sum(
    customer_1.c_custkey), 
  supplier_1.s_suppkey, 
  orders_1.o_orderstatus, 
  part_1.p_type, 
  partsupp_1.ps_partkey, 
  nation_1.provsql, 
  supplier_1.s_phone, 
  nation_1.n_nationkey
from 
  partsupp as partsupp_1
        inner join orders as orders_1
        on (partsupp_1.provsql = orders_1.provsql )
      inner join part as part_1
        inner join part as part_2
        on (part_1.p_size = part_2.p_partkey )
      on (partsupp_1.ps_supplycost = part_2.p_retailprice )
    inner join customer as customer_1
          inner join supplier as supplier_1
          on (customer_1.c_mktsegment = supplier_1.s_name )
        inner join customer as customer_2
        on (supplier_1.s_name = customer_2.c_phone )
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    on (part_2.provsql = nation_1.provsql )
where orders_1.o_orderdate > orders_1.o_orderdate
group by nation_1.n_regionkey, part_2.p_retailprice, customer_2.c_custkey, customer_1.c_nationkey, part_2.p_size, orders_1.o_comment, nation_1.n_nationkey, supplier_1.s_suppkey, orders_1.o_orderstatus, part_1.p_type, partsupp_1.ps_partkey, nation_1.provsql, supplier_1.s_phone, nation_1.n_nationkey
limit 38;
select  
  customer_1.c_address, 
  sum(
    customer_1.c_acctbal), 
  customer_1.provsql, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.provsql, customer_1.c_address
limit 2;
select  
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.provsql, 
  sum(
    customer_1.c_acctbal), 
  min(
    customer_1.c_nationkey), 
  max(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_nationkey <= customer_1.c_custkey
group by customer_1.c_name, customer_1.c_mktsegment, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_phone, customer_1.provsql
limit 41;
select  
  max(
    region_1.r_name), 
  avg(
    region_1.r_regionkey), 
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.provsql, region_1.provsql
limit 31;
select  
  part_1.p_mfgr, 
  region_1.r_comment
from 
  region as region_1
        inner join partsupp as partsupp_1
        on (region_1.provsql = partsupp_1.provsql )
      inner join part as part_1
      on (region_1.provsql = part_1.provsql )
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_supplycost is not NULL
limit 7;
select  
  nation_1.provsql, 
  sum(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_nationkey >= nation_1.n_regionkey
group by nation_1.provsql, nation_1.n_name, nation_1.n_name, nation_1.provsql
limit 1;
select  
  orders_1.provsql, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_orderpriority >= orders_1.o_clerk
group by orders_1.provsql, orders_1.provsql, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_orderkey, orders_1.o_orderdate, orders_1.o_totalprice, orders_1.o_clerk, orders_1.o_clerk, orders_1.o_shippriority, orders_1.provsql
limit 31;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_receiptdate, 
  min(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
group by lineitem_1.l_returnflag, lineitem_1.l_receiptdate, lineitem_1.l_returnflag
limit 14;
select  
  partsupp_1.ps_suppkey, 
  supplier_1.provsql, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_nationkey = customer_1.c_custkey )
    inner join partsupp as partsupp_1
    on (customer_1.c_name = partsupp_1.ps_comment )
where customer_1.c_acctbal >= partsupp_1.ps_supplycost
limit 30;
select  
  part_1.p_brand, 
  customer_1.c_phone, 
  part_1.p_name
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_container = customer_1.c_phone )
where customer_1.c_nationkey is not NULL
limit 29;
select  
  region_1.r_comment, 
  min(
    orders_1.o_orderdate), 
  region_1.provsql, 
  region_1.r_name, 
  orders_2.o_orderpriority, 
  region_1.r_regionkey, 
  region_1.provsql
from 
  orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_custkey = orders_2.o_orderkey )
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_2.o_shippriority is not NULL
group by region_1.r_comment, region_1.provsql, region_1.r_name, orders_2.o_orderpriority, region_1.r_regionkey, region_1.provsql
limit 25;
select  
  part_1.p_name, 
  part_1.provsql, 
  part_1.p_partkey, 
  avg(
    part_1.p_partkey)
from 
  part as part_1
where part_1.provsql >= part_1.provsql
group by part_1.p_name, part_1.provsql, part_1.p_partkey
limit 16;
select  
  orders_1.o_totalprice, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_nationkey = orders_1.o_orderkey )
where supplier_1.s_acctbal = orders_1.o_totalprice
group by orders_1.o_totalprice, supplier_1.s_comment, supplier_1.s_suppkey
limit 22;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
limit 39;
select  
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
limit 6;
select  
  orders_1.o_shippriority, 
  nation_1.n_comment, 
  nation_1.n_name, 
  orders_2.o_comment, 
  orders_1.o_orderpriority
from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_comment = nation_1.n_comment )
    inner join orders as orders_2
    on (orders_1.o_clerk = orders_2.o_orderstatus )
where orders_1.o_custkey is not NULL
limit 13;
select  
  nation_2.provsql, 
  orders_1.o_orderdate, 
  nation_1.n_nationkey
from 
  lineitem as lineitem_1
      inner join region as region_1
          inner join region as region_2
          on (region_1.r_comment = region_2.r_comment )
        inner join nation as nation_1
        on (region_1.provsql = nation_1.provsql )
      on (lineitem_1.l_comment = region_2.r_comment )
    inner join nation as nation_2
      inner join orders as orders_1
      on (nation_2.n_regionkey = orders_1.o_orderkey )
    on (region_2.r_name = orders_1.o_orderstatus )
where nation_1.n_comment is not NULL
limit 39;
select  
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_regionkey
limit 26;
select  
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_custkey), 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_nationkey, customer_1.provsql, customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_nationkey
limit 3;
select  
  min(
    supplier_1.s_name)
from 
  supplier as supplier_1
      inner join orders as orders_1
        inner join customer as customer_1
        on (orders_1.provsql = customer_1.provsql )
      on (supplier_1.s_comment = orders_1.o_comment )
    inner join region as region_1
    on (supplier_1.s_nationkey = region_1.r_regionkey )
where orders_1.o_orderdate = orders_1.o_orderdate
limit 4;
select  
  orders_1.o_totalprice, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  customer_1.c_nationkey, 
  supplier_2.provsql, 
  customer_1.provsql, 
  partsupp_1.ps_partkey, 
  orders_1.o_clerk, 
  supplier_2.s_suppkey, 
  supplier_2.s_nationkey
from 
  customer as customer_1
        inner join lineitem as lineitem_1
        on (customer_1.c_nationkey = lineitem_1.l_orderkey )
      inner join partsupp as partsupp_1
      on (lineitem_1.l_tax = partsupp_1.ps_supplycost )
    inner join supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_acctbal = orders_1.o_totalprice )
      inner join supplier as supplier_2
      on (supplier_1.provsql = supplier_2.provsql )
    on (lineitem_1.l_linestatus = orders_1.o_orderstatus )
where lineitem_1.l_extendedprice < supplier_1.s_acctbal
limit 30;
select  
  part_1.p_type, 
  orders_1.o_orderpriority, 
  part_1.provsql, 
  orders_1.provsql, 
  orders_1.provsql, 
  part_1.p_mfgr, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  min(
    orders_1.o_orderdate), 
  part_1.provsql, 
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_container, 
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  part_1.p_mfgr, 
  min(
    orders_1.o_custkey), 
  orders_1.o_comment
from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderstatus = part_1.p_mfgr )
where orders_1.o_orderpriority is not NULL
group by part_1.p_type, orders_1.o_orderpriority, part_1.provsql, orders_1.provsql, orders_1.provsql, part_1.p_mfgr, orders_1.o_orderkey, part_1.provsql, part_1.p_name, part_1.p_name, part_1.p_container, orders_1.o_comment, orders_1.o_orderkey, part_1.p_mfgr, orders_1.o_comment
limit 13;
select  
  supplier_2.s_nationkey, 
  max(
    supplier_2.s_name), 
  supplier_2.s_nationkey, 
  supplier_2.s_acctbal, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  nation_1.n_name
from 
  supplier as supplier_1
    inner join nation as nation_1
      inner join supplier as supplier_2
      on (nation_1.n_nationkey = supplier_2.s_suppkey )
    on (supplier_1.s_comment = supplier_2.s_address )
where nation_1.n_regionkey >= supplier_1.s_nationkey
group by supplier_2.s_nationkey, supplier_2.s_nationkey, supplier_2.s_acctbal, nation_1.provsql, nation_1.n_nationkey, supplier_1.s_name, supplier_1.s_acctbal, nation_1.n_name
limit 13;
select  
  customer_2.c_comment, 
  max(
    customer_1.c_nationkey), 
  max(
    customer_1.c_custkey), 
  customer_2.c_custkey, 
  customer_2.c_nationkey, 
  customer_1.c_nationkey, 
  customer_2.c_nationkey, 
  customer_1.c_nationkey, 
  customer_1.c_address
from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_acctbal = customer_2.c_acctbal )
where customer_1.c_phone is not NULL
group by customer_2.c_comment, customer_2.c_custkey, customer_2.c_nationkey, customer_1.c_nationkey, customer_2.c_nationkey, customer_1.c_nationkey, customer_1.c_address
limit 39;
select  
  supplier_1.s_name
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_comment = customer_1.c_name )
where customer_1.c_address is not NULL
limit 33;
select  
  part_1.p_partkey, 
  part_1.p_type, 
  sum(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_brand, 
  avg(
    part_1.p_retailprice), 
  max(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_partkey, part_1.p_type, part_1.p_size, part_1.p_brand, part_1.p_name, part_1.p_name, part_1.p_retailprice, part_1.p_mfgr, part_1.p_brand
limit 27;
select  
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_name, 
  min(
    customer_1.c_mktsegment), 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.provsql = customer_1.provsql
group by customer_1.c_name, customer_1.c_name, customer_1.c_address, customer_1.c_nationkey, customer_1.c_address, customer_1.c_nationkey, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_phone, customer_1.c_name, customer_1.c_acctbal, customer_1.c_nationkey, customer_1.c_custkey
limit 19;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_linenumber, lineitem_1.l_shipinstruct, lineitem_1.l_comment, lineitem_1.l_shipinstruct, lineitem_1.l_linestatus
limit 30;
select  
  region_1.r_comment
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_comment = part_1.p_name )
where part_1.provsql is not NULL
limit 22;
select  
  min(
    lineitem_1.l_shipmode), 
  avg(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_partkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_discount = lineitem_1.l_quantity
group by lineitem_1.l_shipmode, lineitem_1.l_linestatus
limit 28;
select  
  region_1.r_comment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey
from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_shipmode = region_1.r_name )
    on (customer_1.provsql = lineitem_1.provsql )
where lineitem_1.l_returnflag is not NULL
limit 37;
select  
  lineitem_3.l_receiptdate, 
  customer_1.c_acctbal, 
  lineitem_1.l_partkey, 
  min(
    orders_1.o_orderpriority), 
  orders_1.o_orderpriority
from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
            inner join orders as orders_1
            on (partsupp_1.ps_partkey = orders_1.o_orderkey )
          inner join lineitem as lineitem_2
            inner join region as region_1
            on (lineitem_2.l_comment = region_1.r_comment )
          on (orders_1.o_comment = region_1.r_comment )
        inner join lineitem as lineitem_3
        on (partsupp_1.ps_availqty = lineitem_3.l_orderkey )
      on (lineitem_1.provsql = region_1.provsql )
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_mktsegment = customer_2.c_phone )
    on (lineitem_2.l_partkey = customer_2.c_custkey )
where lineitem_2.l_orderkey is not NULL
group by lineitem_3.l_receiptdate, customer_1.c_acctbal, lineitem_1.l_partkey, orders_1.o_orderpriority
limit 37;
select  
  customer_1.c_mktsegment, 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_phone = nation_1.n_name )
where nation_1.provsql > customer_1.provsql
limit 23;
select  
  nation_1.n_name
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_comment = nation_2.n_comment )
where nation_1.n_comment is not NULL
limit 14;
select  
  customer_1.c_address, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 37;
select  
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 34;
select  
  count(*), 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_linenumber
limit 17;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  supplier_2.s_name, 
  min(
    orders_1.o_orderpriority), 
  max(
    orders_1.o_orderpriority), 
  min(
    orders_1.o_custkey)
from 
  supplier as supplier_1
      inner join orders as orders_1
          inner join partsupp as partsupp_1
            inner join partsupp as partsupp_2
            on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
          on (orders_1.o_totalprice = partsupp_1.ps_supplycost )
        inner join customer as customer_1
        on (partsupp_1.ps_partkey = customer_1.c_custkey )
      on (supplier_1.s_phone = orders_1.o_orderstatus )
    inner join supplier as supplier_2
    on (partsupp_1.provsql = supplier_2.provsql )
where orders_1.o_custkey is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.provsql, supplier_2.s_name
limit 23;
select  
  max(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 25;
select  
  supplier_3.provsql, 
  lineitem_1.l_tax
from 
  supplier as supplier_1
      inner join supplier as supplier_2
          inner join nation as nation_1
          on (supplier_2.s_nationkey = nation_1.n_nationkey )
        inner join supplier as supplier_3
        on (supplier_2.s_phone = supplier_3.s_name )
      on (supplier_1.s_acctbal = supplier_2.s_acctbal )
    inner join lineitem as lineitem_1
    on (supplier_1.s_nationkey = lineitem_1.l_orderkey )
where supplier_1.s_acctbal is not NULL
limit 36;
select  
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey >= partsupp_1.ps_availqty
limit 12;
select  
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.provsql is not NULL
limit 17;
select  
  part_1.p_mfgr, 
  part_1.p_size
from 
  part as part_1
where part_1.provsql is not NULL
limit 4;
select  
  max(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_supplycost = customer_1.c_acctbal )
where customer_1.c_mktsegment is not NULL
limit 35;
select  
  supplier_1.s_name
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_suppkey = region_1.r_regionkey )
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where supplier_1.s_address is not NULL
limit 1;
select  
  orders_1.o_shippriority, 
  nation_1.provsql
from 
  nation as nation_1
    inner join nation as nation_2
      inner join orders as orders_1
      on (nation_2.provsql = orders_1.provsql )
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_totalprice is not NULL
limit 22;
select  
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 34;
select  
  region_1.r_comment, 
  region_2.r_comment, 
  partsupp_1.ps_comment, 
  region_1.r_name, 
  partsupp_1.ps_partkey, 
  customer_1.c_phone
from 
  partsupp as partsupp_1
      inner join customer as customer_1
          inner join region as region_1
          on (customer_1.provsql = region_1.provsql )
        inner join region as region_2
          inner join region as region_3
          on (region_2.r_comment = region_3.r_comment )
        on (region_1.r_comment = region_2.r_comment )
      on (partsupp_1.ps_availqty = region_2.r_regionkey )
    inner join nation as nation_1
    on (region_2.r_comment = nation_1.n_comment )
where region_3.r_regionkey >= customer_1.c_custkey
limit 21;
select  
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.provsql, 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  max(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.provsql, 
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_size, 
  part_1.p_retailprice, 
  count(*), 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.provsql
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
group by part_1.p_mfgr, part_1.p_name, part_1.provsql, part_1.p_partkey, part_1.p_brand, part_1.p_name, part_1.p_name, part_1.p_mfgr, part_1.p_comment, part_1.p_comment, part_1.provsql, part_1.p_partkey, part_1.p_name, part_1.p_comment, part_1.p_retailprice, part_1.p_name, part_1.p_name, part_1.p_mfgr, part_1.p_size, part_1.p_retailprice, part_1.p_size, part_1.p_brand, part_1.p_brand, part_1.p_name, part_1.provsql
limit 1;
select  
  sum(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey), 
  nation_1.provsql, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_name, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_comment, nation_1.n_name, nation_1.n_name, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_comment, nation_1.provsql, nation_1.n_comment
limit 40;
select  
  max(
    customer_1.c_acctbal), 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
group by customer_1.provsql
limit 12;
select  
  customer_1.c_acctbal, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 12;
select  
  customer_1.c_custkey
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderstatus = customer_1.c_phone )
where customer_1.c_name is not NULL
limit 7;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  max(
    supplier_1.s_phone), 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_comment = supplier_1.s_address )
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost
limit 9;
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.provsql <= orders_1.provsql
group by orders_1.o_clerk
limit 34;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity > lineitem_1.l_discount
limit 13;
select  
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_name
from 
  part as part_1
where part_1.p_type is not NULL
limit 1;
select  
  part_1.p_container
from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join part as part_2
      on (part_1.p_retailprice = part_2.p_retailprice )
    on (partsupp_1.provsql = part_1.provsql )
where part_2.p_container >= part_2.p_mfgr
limit 36;
select  
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  max(
    part_1.p_partkey), 
  part_1.p_comment
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_brand, part_1.p_mfgr, part_1.p_brand, part_1.p_mfgr, part_1.p_comment
limit 25;
select  
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  count(*)
from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderstatus
limit 6;
select  
  orders_1.o_clerk, 
  customer_2.c_nationkey, 
  customer_2.c_comment, 
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  orders_1.provsql, 
  orders_1.o_comment, 
  customer_1.c_nationkey, 
  orders_1.o_totalprice, 
  customer_2.c_custkey
from 
  customer as customer_1
    inner join orders as orders_1
      inner join customer as customer_2
      on (orders_1.provsql = customer_2.provsql )
    on (customer_1.c_comment = orders_1.o_comment )
where customer_2.c_acctbal is not NULL
limit 20;
select  
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 16;
select  
  max(
    supplier_1.s_suppkey), 
  customer_1.c_acctbal, 
  supplier_1.s_suppkey, 
  customer_1.c_mktsegment, 
  customer_1.provsql, 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  min(
    supplier_1.s_name), 
  customer_1.c_phone, 
  max(
    supplier_1.s_phone), 
  customer_1.c_name, 
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_nationkey = customer_1.c_custkey )
where customer_1.c_comment is not NULL
group by customer_1.c_acctbal, supplier_1.s_suppkey, customer_1.c_mktsegment, customer_1.provsql, customer_1.c_address, customer_1.c_address, customer_1.c_nationkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, customer_1.c_name, supplier_1.s_comment
limit 1;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
limit 14;
select  
  customer_2.c_comment, 
  part_1.p_size, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.provsql
from 
  customer as customer_1
    inner join part as part_1
      inner join customer as customer_2
      on (part_1.provsql = customer_2.provsql )
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_acctbal > part_1.p_retailprice
limit 38;
select  
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_comment, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_custkey, customer_1.c_name, customer_1.provsql, customer_1.c_mktsegment, customer_1.c_comment, customer_1.c_address
limit 14;
select  
  min(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_receiptdate, 
  lineitem_1.provsql, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_comment, 
  count(*), 
  lineitem_1.l_shipdate, 
  lineitem_1.provsql, 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_partkey, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_returnflag)
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
group by lineitem_1.l_returnflag, lineitem_1.l_receiptdate, lineitem_1.provsql, lineitem_1.l_shipmode, lineitem_1.l_comment, lineitem_1.l_shipdate, lineitem_1.provsql, lineitem_1.l_quantity, lineitem_1.l_discount, lineitem_1.l_discount, lineitem_1.l_commitdate, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_shipdate
limit 30;
select  
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 32;
select  
  min(
    part_1.p_mfgr), 
  part_1.p_partkey, 
  nation_1.provsql, 
  nation_1.provsql
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_partkey is not NULL
group by part_1.p_partkey, nation_1.provsql, nation_1.provsql
limit 39;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 30;
select  
  customer_1.c_address, 
  avg(
    part_3.p_retailprice), 
  part_1.p_partkey
from 
  part as part_1
        inner join part as part_2
        on (part_1.provsql = part_2.provsql )
      inner join customer as customer_1
      on (part_2.p_retailprice = customer_1.c_acctbal )
    inner join part as part_3
      inner join lineitem as lineitem_1
      on (part_3.provsql = lineitem_1.provsql )
    on (part_2.p_container = part_3.p_mfgr )
where part_1.p_mfgr is not NULL
group by customer_1.c_address, part_1.p_partkey
limit 7;
select  
  customer_1.c_phone, 
  max(
    customer_1.c_phone), 
  min(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_phone, customer_1.c_phone, customer_1.c_name, customer_1.provsql
limit 29;
select  
  orders_1.o_orderpriority, 
  count(*), 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_orderdate), 
  min(
    orders_1.o_shippriority), 
  min(
    orders_1.o_totalprice), 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_totalprice >= orders_1.o_totalprice
group by orders_1.o_orderpriority, orders_1.o_orderkey, orders_1.o_orderdate, orders_1.o_totalprice, orders_1.o_orderdate, orders_1.o_totalprice, orders_1.o_totalprice
limit 28;
select  
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_custkey = customer_1.c_custkey )
where orders_1.provsql is not NULL
limit 34;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  lineitem_1.provsql, 
  lineitem_1.l_partkey
from 
  nation as nation_1
    inner join lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_suppkey = customer_1.c_custkey )
    on (nation_1.n_name = customer_1.c_phone )
where nation_1.n_regionkey is not NULL
limit 22;
select distinct 
  part_1.p_name
from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_name = supplier_1.s_address )
where part_1.p_retailprice < supplier_1.s_acctbal
limit 40;
select  
  region_1.provsql, 
  max(
    nation_1.n_nationkey), 
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
    inner join nation as nation_1
    on (region_1.provsql = nation_1.provsql )
where nation_1.provsql <= region_1.provsql
group by region_1.provsql, region_1.r_comment, region_1.r_name
limit 13;
select  
  lineitem_1.l_suppkey, 
  count(*), 
  lineitem_1.l_receiptdate, 
  avg(
    lineitem_1.l_tax)
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_suppkey, lineitem_1.l_receiptdate
limit 5;
select  
  max(
    lineitem_1.l_discount), 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_tax, 
  min(
    lineitem_1.l_linestatus), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.provsql, 
  lineitem_1.provsql, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_shipinstruct), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_tax, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_discount, lineitem_1.l_tax, lineitem_1.l_shipinstruct, lineitem_1.provsql, lineitem_1.provsql, lineitem_1.l_commitdate, lineitem_1.l_linestatus, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_partkey, lineitem_1.l_suppkey, lineitem_1.l_shipinstruct, lineitem_1.l_extendedprice, lineitem_1.l_comment, lineitem_1.l_receiptdate, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_linenumber, lineitem_1.l_suppkey, lineitem_1.l_shipdate, lineitem_1.l_quantity, lineitem_1.l_orderkey, lineitem_1.l_extendedprice, lineitem_1.l_shipinstruct, lineitem_1.l_tax, lineitem_1.l_quantity, lineitem_1.l_discount, lineitem_1.l_suppkey
limit 24;
select  
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  count(*), 
  avg(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey
limit 28;
select  
  part_2.p_partkey
from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_brand = nation_1.n_name )
    inner join region as region_1
      inner join part as part_2
      on (region_1.r_comment = part_2.p_name )
    on (nation_1.n_regionkey = region_1.r_regionkey )
where region_1.provsql is not NULL
limit 20;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
      inner join partsupp as partsupp_3
      on (partsupp_2.ps_partkey = partsupp_3.ps_partkey )
    on (partsupp_1.provsql = partsupp_3.provsql )
where partsupp_3.ps_partkey is not NULL
limit 39;
select  
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 31;
select  
  part_1.p_size, 
  min(
    partsupp_1.ps_partkey)
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_comment = partsupp_1.ps_comment )
where partsupp_1.ps_partkey is not NULL
group by part_1.p_size
limit 36;
select  
  nation_1.n_regionkey, 
  sum(
    nation_1.n_nationkey), 
  nation_1.provsql, 
  nation_1.provsql, 
  count(*), 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_regionkey, nation_1.provsql, nation_1.provsql, nation_1.n_name
limit 42;
select  
  partsupp_1.ps_comment, 
  partsupp_2.ps_availqty, 
  partsupp_2.ps_availqty, 
  partsupp_2.ps_partkey, 
  min(
    partsupp_2.ps_suppkey), 
  partsupp_2.provsql, 
  sum(
    partsupp_2.ps_suppkey), 
  partsupp_2.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_2.ps_availqty
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_availqty = partsupp_2.ps_partkey )
where partsupp_2.ps_suppkey is not NULL
group by partsupp_1.ps_comment, partsupp_2.ps_availqty, partsupp_2.ps_availqty, partsupp_2.ps_partkey, partsupp_2.provsql, partsupp_2.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_2.ps_availqty
limit 15;
select  
  min(
    supplier_2.s_acctbal), 
  supplier_1.s_acctbal, 
  region_1.r_name, 
  supplier_2.provsql, 
  nation_1.provsql, 
  count(
    supplier_2.s_nationkey), 
  nation_1.n_comment, 
  count(
    supplier_1.s_address), 
  region_1.r_regionkey, 
  nation_1.n_nationkey, 
  supplier_2.s_address, 
  supplier_2.provsql, 
  nation_1.n_regionkey, 
  count(*), 
  nation_1.n_regionkey, 
  min(
    region_1.r_name), 
  min(
    supplier_2.s_acctbal)
from 
  supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_address = nation_1.n_comment )
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join supplier as supplier_2
    on (region_1.provsql = supplier_2.provsql )
where nation_1.n_name is not NULL
group by supplier_1.s_acctbal, region_1.r_name, supplier_2.provsql, nation_1.provsql, nation_1.n_comment, region_1.r_regionkey, nation_1.n_nationkey, supplier_2.s_address, supplier_2.provsql, nation_1.n_regionkey, nation_1.n_regionkey
limit 31;
select  
  customer_1.c_custkey, 
  region_1.r_name, 
  orders_1.o_orderkey, 
  customer_2.c_mktsegment, 
  max(
    region_2.r_regionkey)
from 
  orders as orders_1
    inner join supplier as supplier_1
      inner join customer as customer_1
            inner join region as region_1
            on (customer_1.c_nationkey = region_1.r_regionkey )
          inner join region as region_2
          on (region_1.r_name = region_2.r_name )
        inner join customer as customer_2
        on (customer_1.c_comment = customer_2.c_name )
      on (supplier_1.s_address = region_1.r_comment )
    on (orders_1.o_custkey = customer_1.c_custkey )
where customer_2.c_acctbal is not NULL
group by customer_1.c_custkey, region_1.r_name, orders_1.o_orderkey, customer_2.c_mktsegment
limit 31;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  count(
    region_1.provsql), 
  region_1.r_regionkey, 
  min(
    region_1.r_name), 
  region_1.r_name, 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_name, region_1.r_regionkey, region_1.provsql, region_1.r_regionkey, region_1.r_regionkey, region_1.r_regionkey, region_1.r_name, region_1.r_name
limit 9;
select  
  orders_1.o_clerk
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_totalprice = partsupp_1.ps_supplycost )
where orders_1.o_orderkey is not NULL
limit 25;
select  
  sum(
    lineitem_1.l_linenumber), 
  lineitem_1.l_returnflag, 
  max(
    lineitem_1.l_shipinstruct), 
  max(
    lineitem_1.l_shipmode), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_returnflag, lineitem_1.l_returnflag, lineitem_1.l_partkey
limit 32;
select  
  customer_1.c_custkey, 
  customer_1.c_comment, 
  count(*), 
  customer_1.c_custkey, 
  min(
    customer_1.c_phone), 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  sum(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_acctbal >= customer_1.c_acctbal
group by customer_1.c_custkey, customer_1.c_comment, customer_1.c_custkey, customer_1.provsql, customer_1.c_custkey, customer_1.c_comment, customer_1.c_comment, customer_1.c_address, customer_1.c_nationkey, customer_1.c_mktsegment, customer_1.c_custkey
limit 17;
select  
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.provsql, 
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_suppkey), 
  min(
    supplier_1.s_nationkey), 
  min(
    supplier_1.s_name), 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_phone, supplier_1.s_phone, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.provsql, supplier_1.s_nationkey, supplier_1.s_address
limit 23;
select  
  supplier_2.s_comment, 
  supplier_2.s_address, 
  max(
    orders_1.o_orderdate)
from 
  supplier as supplier_1
    inner join orders as orders_1
      inner join supplier as supplier_2
      on (orders_1.o_orderkey = supplier_2.s_suppkey )
    on (supplier_1.s_acctbal = orders_1.o_totalprice )
where orders_1.o_orderdate = orders_1.o_orderdate
group by supplier_2.s_comment, supplier_2.s_address
limit 16;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 20;
select  
  customer_1.c_acctbal
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_address = part_1.p_name )
where customer_1.c_mktsegment = part_1.p_container
limit 28;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
limit 2;
select  
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.provsql
from 
  part as part_1
where part_1.p_mfgr = part_1.p_brand
group by part_1.p_partkey, part_1.p_size, part_1.p_type, part_1.p_container, part_1.provsql
limit 1;
select  
  max(
    supplier_1.s_phone), 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.provsql, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.provsql, supplier_1.s_suppkey
limit 24;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag <= lineitem_1.l_shipinstruct
limit 35;
select  
  customer_1.c_phone, 
  max(
    customer_1.c_nationkey), 
  region_1.r_regionkey, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  region_1.provsql, 
  region_1.provsql, 
  customer_1.c_custkey
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_phone = region_1.r_name )
where customer_1.c_phone >= region_1.r_name
group by customer_1.c_phone, region_1.r_regionkey, customer_1.c_phone, customer_1.c_acctbal, customer_1.c_custkey, region_1.provsql, region_1.provsql, customer_1.c_custkey
limit 3;
select  
  orders_2.o_orderpriority, 
  region_1.r_regionkey
from 
  region as region_1
      inner join orders as orders_1
      on (region_1.provsql = orders_1.provsql )
    inner join orders as orders_2
        inner join part as part_1
        on (orders_2.o_totalprice = part_1.p_retailprice )
      inner join customer as customer_1
      on (orders_2.o_orderpriority = customer_1.c_phone )
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_brand is not NULL
limit 11;
select  
  customer_1.c_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  customer_1.c_phone, 
  region_1.r_name, 
  region_1.r_comment, 
  customer_1.c_comment, 
  region_1.r_comment, 
  region_1.provsql
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_name = customer_1.c_phone )
where region_1.r_name is not NULL
limit 42;
select  
  supplier_1.provsql, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 12;
select  
  part_1.p_partkey
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_size = partsupp_1.ps_partkey )
where part_1.p_type is not NULL
limit 2;
select  
  partsupp_1.ps_suppkey, 
  supplier_1.s_nationkey, 
  partsupp_1.provsql
from 
  part as part_1
      inner join supplier as supplier_1
        inner join supplier as supplier_2
        on (supplier_1.s_address = supplier_2.s_address )
      on (part_1.provsql = supplier_2.provsql )
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_availqty = nation_1.n_nationkey )
    on (supplier_2.s_suppkey = nation_1.n_nationkey )
where partsupp_1.ps_comment is not NULL
limit 26;
select  
  customer_1.c_nationkey, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 3;
select  
  min(
    customer_1.c_phone), 
  customer_1.provsql, 
  max(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_phone, 
  min(
    customer_1.c_acctbal), 
  count(*), 
  avg(
    customer_1.c_nationkey), 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_custkey > customer_1.c_nationkey
group by customer_1.provsql, customer_1.c_name, customer_1.c_phone, customer_1.provsql
limit 13;
select  
  part_1.p_mfgr
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_shipmode = customer_1.c_phone )
    on (part_1.p_size = lineitem_1.l_orderkey )
where lineitem_1.l_receiptdate >= lineitem_1.l_shipdate
limit 23;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.provsql, 
  lineitem_1.l_linestatus, 
  max(
    region_1.r_name), 
  region_1.r_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_name = lineitem_1.l_returnflag )
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_linenumber, lineitem_1.provsql, lineitem_1.l_linestatus, region_1.r_comment, nation_1.n_nationkey
limit 5;
select  
  orders_1.o_custkey, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 26;
select  
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 1;
select  
  orders_1.o_orderpriority
from 
  lineitem as lineitem_1
    inner join orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    on (lineitem_1.l_comment = orders_1.o_comment )
where lineitem_1.l_tax = lineitem_1.l_discount
limit 22;
select  
  lineitem_2.l_linestatus
from 
  partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.ps_comment = region_1.r_comment )
      inner join lineitem as lineitem_1
        inner join region as region_2
        on (lineitem_1.l_linestatus = region_2.r_name )
      on (region_1.r_regionkey = region_2.r_regionkey )
    inner join lineitem as lineitem_2
    on (partsupp_1.provsql = lineitem_2.provsql )
where lineitem_2.l_receiptdate is not NULL
limit 27;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 5;
select  
  partsupp_1.ps_supplycost, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_shipmode), 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_supplycost, lineitem_1.l_quantity, lineitem_1.l_shipinstruct, lineitem_1.l_receiptdate
limit 14;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_tax, 
  lineitem_1.l_partkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_orderkey, 
  lineitem_1.provsql, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
limit 40;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_commitdate, 
  lineitem_2.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_2.l_returnflag, 
  lineitem_2.l_linestatus, 
  lineitem_2.l_discount, 
  min(
    lineitem_1.l_receiptdate), 
  lineitem_2.l_shipdate, 
  lineitem_2.l_quantity, 
  lineitem_2.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_linenumber = lineitem_2.l_orderkey )
where lineitem_1.l_suppkey is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_orderkey, lineitem_1.l_commitdate, lineitem_2.l_orderkey, lineitem_1.l_returnflag, lineitem_2.l_returnflag, lineitem_2.l_linestatus, lineitem_2.l_discount, lineitem_2.l_shipdate, lineitem_2.l_quantity, lineitem_2.l_quantity, lineitem_1.l_discount, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_shipinstruct
limit 11;
select  
  orders_1.o_comment, 
  nation_1.n_name, 
  min(
    orders_1.o_orderdate)
from 
  customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_phone = nation_1.n_name )
    inner join orders as orders_1
    on (customer_1.c_name = orders_1.o_comment )
where customer_1.c_custkey is not NULL
group by orders_1.o_comment, nation_1.n_name
limit 38;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.provsql is not NULL
limit 7;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_supplycost
limit 31;
select  
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 32;
select  
  supplier_1.provsql, 
  max(
    lineitem_1.l_shipinstruct), 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  part_1.p_brand, 
  part_1.p_name, 
  min(
    part_1.p_mfgr), 
  lineitem_1.l_orderkey, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  part_1.provsql
from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_comment = lineitem_1.l_comment )
    inner join supplier as supplier_1
    on (lineitem_1.l_partkey = supplier_1.s_suppkey )
where part_1.provsql is not NULL
group by supplier_1.provsql, supplier_1.s_address, supplier_1.s_suppkey, supplier_1.s_acctbal, supplier_1.s_acctbal, part_1.p_brand, part_1.p_name, lineitem_1.l_orderkey, supplier_1.s_phone, supplier_1.s_phone, part_1.provsql
limit 7;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
limit 13;
select  
  lineitem_1.l_commitdate, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_partkey
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_partkey
limit 42;
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.provsql, 
  max(
    customer_1.c_mktsegment), 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_name, customer_1.c_phone, customer_1.provsql, customer_1.c_acctbal
limit 22;
select  
  sum(
    lineitem_1.l_tax), 
  lineitem_1.l_returnflag
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where partsupp_1.provsql is not NULL
group by lineitem_1.l_returnflag
limit 33;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 7;
select  
  customer_1.c_mktsegment
from 
  supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_phone = nation_1.n_name )
      inner join part as part_1
      on (supplier_1.s_phone = part_1.p_mfgr )
    inner join part as part_2
          inner join customer as customer_1
            inner join nation as nation_2
            on (customer_1.c_phone = nation_2.n_name )
          on (part_2.provsql = customer_1.provsql )
        inner join supplier as supplier_2
        on (part_2.p_comment = supplier_2.s_address )
      inner join supplier as supplier_3
      on (nation_2.provsql = supplier_3.provsql )
    on (part_1.p_container = nation_2.n_name )
where nation_2.provsql > part_2.provsql
limit 1;
select  
  region_2.r_name, 
  region_1.r_comment, 
  customer_1.c_mktsegment, 
  supplier_3.provsql, 
  region_2.provsql, 
  supplier_3.s_suppkey, 
  region_1.provsql, 
  partsupp_1.provsql, 
  supplier_2.s_phone, 
  region_2.r_name, 
  supplier_4.s_acctbal, 
  region_2.r_name, 
  supplier_3.s_acctbal, 
  max(
    orders_1.o_orderdate), 
  partsupp_1.ps_comment, 
  min(
    supplier_1.s_nationkey)
from 
  orders as orders_1
        inner join supplier as supplier_1
        on (orders_1.o_totalprice = supplier_1.s_acctbal )
      inner join supplier as supplier_2
      on (orders_1.o_orderstatus = supplier_2.s_name )
    inner join part as part_1
        inner join supplier as supplier_3
        on (part_1.p_container = supplier_3.s_name )
      inner join region as region_1
          inner join region as region_2
            inner join supplier as supplier_4
            on (region_2.r_comment = supplier_4.s_address )
          on (region_1.r_comment = supplier_4.s_address )
        inner join partsupp as partsupp_1
          inner join customer as customer_1
          on (partsupp_1.provsql = customer_1.provsql )
        on (region_2.r_regionkey = partsupp_1.ps_partkey )
      on (supplier_3.provsql = supplier_4.provsql )
    on (orders_1.o_orderkey = region_2.r_regionkey )
where supplier_2.s_name is not NULL
group by region_2.r_name, region_1.r_comment, customer_1.c_mktsegment, supplier_3.provsql, region_2.provsql, supplier_3.s_suppkey, region_1.provsql, partsupp_1.provsql, supplier_2.s_phone, region_2.r_name, supplier_4.s_acctbal, region_2.r_name, supplier_3.s_acctbal, partsupp_1.ps_comment
limit 26;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  part_1.p_comment, 
  orders_2.provsql, 
  customer_1.c_comment, 
  part_2.p_mfgr, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  supplier_1.s_suppkey, 
  orders_2.o_orderstatus, 
  count(
    part_1.p_partkey), 
  customer_1.c_acctbal, 
  min(
    supplier_1.s_acctbal), 
  part_1.p_name, 
  part_1.provsql, 
  part_2.p_type
from 
  supplier as supplier_1
          inner join part as part_1
          on (supplier_1.s_phone = part_1.p_mfgr )
        inner join orders as orders_1
        on (part_1.p_brand = orders_1.o_orderstatus )
      inner join orders as orders_2
        inner join nation as nation_1
        on (orders_2.o_custkey = nation_1.n_nationkey )
      on (supplier_1.s_acctbal = orders_2.o_totalprice )
    inner join part as part_2
      inner join customer as customer_1
      on (part_2.p_comment = customer_1.c_name )
    on (supplier_1.s_comment = customer_1.c_name )
where orders_2.o_orderstatus is not NULL
group by orders_1.o_orderstatus, orders_1.o_orderstatus, part_1.p_comment, orders_2.provsql, customer_1.c_comment, part_2.p_mfgr, customer_1.c_phone, customer_1.c_phone, customer_1.c_nationkey, supplier_1.s_suppkey, orders_2.o_orderstatus, customer_1.c_acctbal, part_1.p_name, part_1.provsql, part_2.p_type
limit 22;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_comment
limit 16;
select  
  customer_1.c_acctbal, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 25;
select  
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.provsql = nation_1.provsql )
      on (partsupp_1.ps_suppkey = nation_1.n_nationkey )
    inner join lineitem as lineitem_2
    on (nation_1.n_nationkey = lineitem_2.l_orderkey )
where lineitem_2.l_suppkey = lineitem_1.l_orderkey
limit 38;
select  
  customer_1.c_phone, 
  max(
    customer_1.c_phone), 
  customer_1.c_phone, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_nationkey > customer_1.c_custkey
group by customer_1.c_phone, customer_1.c_phone, customer_1.c_custkey
limit 1;
select  
  orders_2.o_clerk, 
  max(
    orders_1.o_orderstatus), 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_2.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  sum(
    orders_2.o_totalprice), 
  orders_1.o_totalprice, 
  orders_2.o_clerk, 
  orders_2.provsql
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_custkey = orders_2.o_orderkey )
where orders_1.o_orderstatus = orders_2.o_orderstatus
group by orders_2.o_clerk, orders_1.o_shippriority, orders_1.o_clerk, orders_2.o_comment, orders_1.o_totalprice, orders_1.o_shippriority, orders_1.o_totalprice, orders_2.o_clerk, orders_2.provsql
limit 41;
select  
  min(
    part_2.p_brand), 
  part_1.p_retailprice, 
  sum(
    customer_1.c_custkey), 
  part_2.p_partkey, 
  customer_1.c_comment, 
  part_2.provsql, 
  min(
    part_2.p_mfgr), 
  part_1.provsql, 
  avg(
    customer_1.c_acctbal), 
  part_2.p_name, 
  part_2.p_retailprice, 
  part_2.p_container
from 
  part as part_1
    inner join customer as customer_1
      inner join part as part_2
      on (customer_1.c_comment = part_2.p_name )
    on (part_1.provsql = part_2.provsql )
where customer_1.c_address is not NULL
group by part_1.p_retailprice, part_2.p_partkey, customer_1.c_comment, part_2.provsql, part_1.provsql, part_2.p_name, part_2.p_retailprice, part_2.p_container
limit 20;
select  
  orders_1.o_shippriority, 
  region_1.r_name
from 
  region as region_1
    inner join lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_suppkey = orders_1.o_orderkey )
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where orders_1.provsql = lineitem_1.provsql
limit 38;
select  
  partsupp_1.provsql, 
  min(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
group by partsupp_1.provsql
limit 10;
select  
  part_1.p_container, 
  part_1.provsql
from 
  part as part_1
where part_1.p_size is not NULL
limit 23;
select  
  customer_1.provsql, 
  region_1.r_name
from 
  customer as customer_1
      inner join region as region_1
      on (customer_1.provsql = region_1.provsql )
    inner join supplier as supplier_1
    on (region_1.r_name = supplier_1.s_name )
where region_1.provsql is not NULL
limit 8;
select  
  part_1.p_comment, 
  part_2.p_size
from 
  supplier as supplier_1
      inner join part as part_1
        inner join part as part_2
        on (part_1.p_size = part_2.p_partkey )
      on (supplier_1.s_phone = part_2.p_mfgr )
    inner join part as part_3
    on (supplier_1.s_suppkey = part_3.p_partkey )
where part_2.p_container is not NULL
limit 26;
select  
  supplier_1.provsql, 
  orders_2.o_totalprice, 
  orders_1.o_orderdate, 
  orders_2.o_orderpriority, 
  orders_2.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.provsql, 
  orders_2.o_shippriority, 
  supplier_1.s_name, 
  orders_2.o_custkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  orders_2.o_totalprice, 
  orders_2.provsql, 
  min(
    orders_1.o_shippriority), 
  supplier_1.s_acctbal, 
  max(
    orders_1.o_orderdate), 
  orders_2.o_totalprice, 
  orders_1.o_comment, 
  max(
    supplier_1.s_name), 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  supplier_1.s_suppkey, 
  avg(
    supplier_1.s_nationkey), 
  orders_2.o_orderstatus, 
  sum(
    orders_2.o_shippriority), 
  orders_1.provsql, 
  orders_1.o_comment
from 
  orders as orders_1
    inner join orders as orders_2
      inner join supplier as supplier_1
      on (orders_2.o_orderstatus = supplier_1.s_name )
    on (orders_1.o_orderdate = orders_2.o_orderdate )
where orders_1.o_totalprice is not NULL
group by supplier_1.provsql, orders_2.o_totalprice, orders_1.o_orderdate, orders_2.o_orderpriority, orders_2.o_orderpriority, orders_1.o_clerk, orders_1.provsql, orders_2.o_shippriority, supplier_1.s_name, orders_2.o_custkey, supplier_1.s_suppkey, supplier_1.s_suppkey, orders_2.o_totalprice, orders_2.provsql, supplier_1.s_acctbal, orders_2.o_totalprice, orders_1.o_comment, orders_1.o_totalprice, orders_1.o_orderdate, supplier_1.s_suppkey, orders_2.o_orderstatus, orders_1.provsql, orders_1.o_comment
limit 14;
select  
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_partkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_commitdate, lineitem_1.l_receiptdate, lineitem_1.l_suppkey, lineitem_1.l_tax, lineitem_1.l_shipdate, lineitem_1.l_receiptdate, lineitem_1.l_receiptdate, lineitem_1.l_comment, lineitem_1.l_comment
limit 5;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 7;
select  
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_supplycost, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 9;
select  
  part_1.p_type, 
  part_1.p_comment, 
  part_1.provsql
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
limit 40;
select  
  partsupp_1.ps_suppkey, 
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_comment = nation_1.n_comment )
where nation_1.n_regionkey is not NULL
limit 22;
select  
  supplier_1.s_name, 
  supplier_2.s_name, 
  supplier_1.s_address, 
  supplier_2.s_comment, 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_name, 
  max(
    supplier_1.s_name), 
  supplier_1.s_nationkey, 
  supplier_2.provsql, 
  supplier_1.s_nationkey, 
  supplier_2.s_address, 
  supplier_2.s_comment, 
  supplier_2.s_address, 
  supplier_2.s_phone, 
  max(
    supplier_1.s_phone), 
  supplier_2.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  count(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  min(
    supplier_2.s_phone), 
  supplier_2.s_comment
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_acctbal = supplier_2.s_acctbal )
where supplier_2.provsql = supplier_1.provsql
group by supplier_1.s_name, supplier_2.s_name, supplier_1.s_address, supplier_2.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_2.provsql, supplier_1.s_nationkey, supplier_2.s_address, supplier_2.s_comment, supplier_2.s_address, supplier_2.s_phone, supplier_2.s_name, supplier_1.s_phone, supplier_1.s_address, supplier_1.s_suppkey, supplier_2.s_comment
limit 22;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_name), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_name, region_1.r_comment, region_1.r_regionkey
limit 37;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_orderpriority, orders_1.o_custkey
limit 13;
select  
  customer_1.provsql, 
  customer_1.c_phone, 
  count(*), 
  min(
    customer_1.c_mktsegment), 
  customer_1.c_nationkey, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_address, 
  customer_1.provsql, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_acctbal > customer_1.c_acctbal
group by customer_1.provsql, customer_1.c_phone, customer_1.c_nationkey, customer_1.c_address, customer_1.provsql, customer_1.c_address, customer_1.c_phone, customer_1.c_nationkey, customer_1.c_acctbal, customer_1.c_name, customer_1.c_name
limit 41;
select  
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.provsql >= customer_1.provsql
limit 1;
select  
  max(
    region_1.r_name), 
  region_1.r_regionkey, 
  max(
    region_1.r_name), 
  nation_1.n_regionkey
from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_comment = region_1.r_comment )
    inner join lineitem as lineitem_1
    on (nation_1.n_comment = lineitem_1.l_comment )
where lineitem_1.l_shipinstruct = lineitem_1.l_returnflag
group by region_1.r_regionkey, nation_1.n_regionkey
limit 21;
select  
  nation_1.n_name, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 30;
select  
  part_1.p_mfgr, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_mfgr = part_1.p_container
limit 40;
select  
  nation_1.provsql, 
  nation_1.provsql, 
  orders_1.o_orderpriority, 
  nation_1.n_regionkey
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_comment = nation_1.n_comment )
where nation_1.n_name is not NULL
limit 8;
select  
  min(
    region_1.r_name), 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.provsql
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.provsql is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_comment, customer_1.provsql
limit 1;
select distinct 
  lineitem_1.l_quantity, 
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_shipdate), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  lineitem_1.l_comment
from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.provsql = lineitem_1.provsql )
where nation_1.n_comment is not NULL
group by lineitem_1.l_quantity, lineitem_1.l_suppkey, nation_1.n_regionkey, nation_1.n_nationkey, lineitem_1.l_comment
limit 31;
select  
  region_1.r_regionkey, 
  max(
    orders_2.o_totalprice), 
  region_1.provsql, 
  region_2.r_name, 
  orders_1.o_orderstatus, 
  region_1.r_regionkey, 
  region_2.r_comment, 
  partsupp_1.ps_supplycost
from 
  region as region_1
    inner join partsupp as partsupp_1
        inner join orders as orders_1
        on (partsupp_1.provsql = orders_1.provsql )
      inner join region as region_2
        inner join orders as orders_2
        on (region_2.r_name = orders_2.o_orderstatus )
      on (partsupp_1.ps_supplycost = orders_2.o_totalprice )
    on (region_1.r_comment = orders_2.o_comment )
where orders_1.o_comment is not NULL
group by region_1.r_regionkey, region_1.provsql, region_2.r_name, orders_1.o_orderstatus, region_1.r_regionkey, region_2.r_comment, partsupp_1.ps_supplycost
limit 42;
select  
  customer_1.provsql, 
  partsupp_1.ps_availqty, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_comment
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_suppkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
limit 12;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.provsql = region_1.provsql )
where nation_1.n_comment is not NULL
group by region_1.r_comment, region_1.r_comment
limit 33;
select  
  avg(
    orders_1.o_orderkey), 
  orders_1.o_custkey, 
  orders_1.provsql, 
  customer_1.c_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  count(*), 
  region_1.r_regionkey, 
  customer_1.c_mktsegment, 
  orders_1.o_comment, 
  customer_1.c_acctbal
from 
  customer as customer_1
    inner join orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
    on (customer_1.c_comment = region_1.r_comment )
where orders_1.o_orderdate is not NULL
group by orders_1.o_custkey, orders_1.provsql, customer_1.c_comment, orders_1.o_orderpriority, orders_1.o_orderkey, orders_1.o_orderpriority, region_1.r_regionkey, customer_1.c_mktsegment, orders_1.o_comment, customer_1.c_acctbal
limit 4;
select  
  partsupp_1.ps_availqty, 
  count(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey = partsupp_1.ps_suppkey
group by partsupp_1.ps_availqty
limit 23;
select  
  max(
    supplier_1.s_phone), 
  supplier_1.provsql, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.provsql = supplier_1.provsql
group by supplier_1.provsql, supplier_1.s_phone, supplier_1.s_comment, supplier_1.provsql
limit 16;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 4;
select  
  lineitem_2.l_linenumber, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_suppkey
from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_availqty = lineitem_1.l_orderkey )
    inner join lineitem as lineitem_2
    on (lineitem_1.l_shipdate = lineitem_2.l_shipdate )
where lineitem_2.l_quantity is not NULL
limit 41;
select  
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_phone, 
  avg(
    partsupp_1.ps_availqty), 
  customer_1.c_phone, 
  count(*)
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_supplycost >= customer_1.c_acctbal
group by customer_1.c_nationkey, customer_1.c_comment, customer_1.c_phone, customer_1.c_phone
limit 8;
select  
  region_1.provsql
from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_comment is not NULL
limit 19;
select  
  nation_1.n_regionkey, 
  orders_1.o_orderdate
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_custkey is not NULL
limit 27;
select  
  orders_1.o_comment, 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_comment, orders_1.o_comment, orders_1.o_shippriority, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice, orders_1.o_totalprice, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_clerk, orders_1.provsql, orders_1.o_orderkey, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_custkey
limit 8;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  max(
    orders_1.o_orderpriority), 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_shippriority, 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_orderkey, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_clerk, orders_1.o_orderpriority, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_totalprice, orders_1.o_orderkey, orders_1.o_shippriority, orders_1.o_shippriority, orders_1.o_orderkey, orders_1.o_custkey, orders_1.o_orderstatus, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_shippriority, orders_1.o_clerk
limit 14;
select  
  customer_1.c_comment, 
  part_1.p_name
from 
  supplier as supplier_1
    inner join customer as customer_1
        inner join partsupp as partsupp_1
        on (customer_1.c_nationkey = partsupp_1.ps_partkey )
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    on (supplier_1.s_phone = customer_1.c_phone )
where partsupp_1.ps_comment is not NULL
limit 41;
select  
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_partkey, 
  region_1.r_name, 
  region_1.provsql, 
  part_1.p_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_name
from 
  region as region_1
    inner join part as part_1
    on (region_1.provsql = part_1.provsql )
where region_1.r_comment is not NULL
limit 20;
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_totalprice
limit 7;
select  
  customer_1.c_name, 
  customer_1.c_custkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 22;
select  
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_suppkey
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.provsql = supplier_1.provsql )
where supplier_1.s_nationkey is not NULL
limit 20;
select  
  nation_1.n_name, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name
limit 40;
select  
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 28;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_discount = orders_1.o_totalprice )
where lineitem_1.l_commitdate <= lineitem_1.l_shipdate
limit 33;
select  
  supplier_1.s_comment, 
  nation_1.n_comment, 
  customer_1.c_comment, 
  min(
    nation_1.n_nationkey), 
  supplier_1.s_name
from 
  orders as orders_1
    inner join customer as customer_1
      inner join nation as nation_1
        inner join orders as orders_2
          inner join supplier as supplier_1
          on (orders_2.o_orderstatus = supplier_1.s_name )
        on (nation_1.n_nationkey = supplier_1.s_suppkey )
      on (customer_1.c_mktsegment = supplier_1.s_name )
    on (orders_1.o_clerk = supplier_1.s_name )
where orders_2.o_comment is not NULL
group by supplier_1.s_comment, nation_1.n_comment, customer_1.c_comment, supplier_1.s_name
limit 34;
select  
  supplier_1.s_name, 
  orders_1.o_totalprice, 
  nation_1.n_regionkey, 
  max(
    orders_1.o_custkey), 
  supplier_1.s_phone
from 
  supplier as supplier_1
    inner join nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    on (supplier_1.s_comment = nation_1.n_comment )
where orders_1.o_custkey is not NULL
group by supplier_1.s_name, orders_1.o_totalprice, nation_1.n_regionkey, supplier_1.s_phone
limit 14;
select  
  supplier_1.s_address, 
  supplier_1.s_name, 
  nation_1.n_nationkey
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.provsql = nation_1.provsql )
where nation_1.n_nationkey is not NULL
limit 30;
select  
  part_1.p_partkey, 
  part_1.p_container, 
  nation_1.n_name, 
  nation_1.n_name, 
  lineitem_1.l_comment, 
  lineitem_1.l_returnflag, 
  part_1.p_name
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.provsql = nation_1.provsql )
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_retailprice is not NULL
limit 13;
select  
  region_1.provsql
from 
  region as region_1
    inner join supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    on (region_1.r_comment = supplier_1.s_address )
where lineitem_1.l_returnflag is not NULL
limit 16;
select  
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.provsql, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 18;
select  
  customer_2.c_custkey, 
  customer_1.c_custkey, 
  customer_2.c_nationkey, 
  nation_1.provsql, 
  customer_2.c_nationkey
from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_address = customer_2.c_name )
    inner join nation as nation_1
    on (customer_1.c_comment = nation_1.n_comment )
where customer_2.c_phone = customer_2.c_mktsegment
limit 6;
select  
  partsupp_1.provsql, 
  lineitem_3.l_linestatus, 
  partsupp_1.ps_availqty, 
  orders_1.o_custkey
from 
  part as part_1
      inner join orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_totalprice = partsupp_1.ps_supplycost )
      on (part_1.p_retailprice = orders_1.o_totalprice )
    inner join lineitem as lineitem_1
        inner join lineitem as lineitem_2
          inner join lineitem as lineitem_3
          on (lineitem_2.l_partkey = lineitem_3.l_orderkey )
        on (lineitem_1.l_receiptdate = lineitem_2.l_shipdate )
      inner join region as region_1
      on (lineitem_3.l_shipmode = region_1.r_name )
    on (part_1.provsql = lineitem_1.provsql )
where lineitem_3.l_commitdate is not NULL
limit 12;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.provsql >= partsupp_1.provsql
limit 39;
select  
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
limit 29;
select  
  part_1.p_retailprice, 
  sum(
    part_1.p_retailprice), 
  part_1.p_partkey, 
  part_1.p_type, 
  min(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_container < part_1.p_brand
group by part_1.p_retailprice, part_1.p_partkey, part_1.p_type
limit 28;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  min(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.o_totalprice, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_comment
limit 32;
select  
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_clerk <= orders_1.o_orderpriority
limit 2;
select  
  lineitem_1.l_discount, 
  customer_1.c_name, 
  count(
    customer_1.c_address), 
  customer_1.c_nationkey, 
  min(
    lineitem_1.l_shipmode)
from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_tax = customer_1.c_acctbal )
where customer_1.c_custkey is not NULL
group by lineitem_1.l_discount, customer_1.c_name, customer_1.c_nationkey
limit 32;
select  
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 33;
select  
  region_1.provsql, 
  part_1.p_partkey, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  region_1.r_comment, 
  nation_1.n_name
from 
  part as part_1
    inner join orders as orders_1
          inner join supplier as supplier_1
          on (orders_1.o_orderpriority = supplier_1.s_name )
        inner join region as region_1
        on (orders_1.o_orderkey = region_1.r_regionkey )
      inner join nation as nation_1
      on (supplier_1.provsql = nation_1.provsql )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where nation_1.n_regionkey is not NULL
limit 34;
select  
  nation_1.n_regionkey, 
  max(
    region_1.r_name), 
  max(
    region_1.r_name), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  max(
    nation_1.n_name), 
  nation_1.n_comment, 
  region_1.r_comment, 
  nation_1.n_nationkey, 
  region_1.r_regionkey, 
  nation_1.n_name
from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_name is not NULL
group by nation_1.n_regionkey, region_1.r_regionkey, region_1.r_regionkey, nation_1.n_comment, region_1.r_comment, nation_1.n_nationkey, region_1.r_regionkey, nation_1.n_name
limit 34;
select  
  supplier_1.s_acctbal, 
  supplier_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey), 
  region_1.r_comment, 
  count(*), 
  region_1.r_name, 
  region_1.r_comment
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_comment = region_1.r_comment )
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.r_comment, region_1.r_name, supplier_1.s_comment, supplier_1.s_acctbal, region_1.r_comment, region_1.r_name, region_1.r_comment
limit 13;
select  
  region_1.r_regionkey, 
  max(
    part_1.p_brand)
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_comment = part_1.p_name )
where part_1.p_size is not NULL
group by region_1.r_regionkey
limit 32;
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 42;
select  
  supplier_2.s_phone, 
  supplier_1.s_address, 
  min(
    part_1.p_size), 
  avg(
    partsupp_1.ps_availqty), 
  supplier_2.s_name, 
  partsupp_1.ps_supplycost, 
  max(
    part_1.p_mfgr), 
  partsupp_1.ps_availqty, 
  min(
    part_1.p_container), 
  part_1.p_mfgr, 
  partsupp_1.ps_availqty, 
  supplier_2.s_address, 
  part_1.p_mfgr
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
      inner join part as part_1
        inner join supplier as supplier_2
        on (part_1.p_retailprice = supplier_2.s_acctbal )
      on (partsupp_1.ps_comment = part_1.p_name )
    on (supplier_1.s_comment = partsupp_1.ps_comment )
where supplier_2.s_suppkey <= partsupp_1.ps_suppkey
group by supplier_2.s_phone, supplier_1.s_address, supplier_2.s_name, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, part_1.p_mfgr, partsupp_1.ps_availqty, supplier_2.s_address, part_1.p_mfgr
limit 25;
select  
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_suppkey = nation_1.n_nationkey )
    on (customer_1.c_acctbal = partsupp_1.ps_supplycost )
where customer_1.provsql > partsupp_1.provsql
limit 22;
select  
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_totalprice <= orders_1.o_totalprice
limit 28;
select  
  partsupp_1.provsql
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.provsql = partsupp_1.provsql )
where region_1.provsql is not NULL
limit 27;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql
from 
  region as region_1
    inner join region as region_2
    on (region_1.r_comment = region_2.r_comment )
where region_1.r_comment is not NULL
limit 32;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_availqty), 
  count(*), 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey
limit 7;
select  
  customer_1.c_address, 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  customer_1.c_custkey, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  customer_1.provsql, 
  partsupp_1.ps_availqty, 
  count(*), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_supplycost = customer_1.c_acctbal )
where partsupp_1.ps_suppkey is not NULL
group by customer_1.c_address, customer_1.provsql, customer_1.c_acctbal, customer_1.c_acctbal, customer_1.c_nationkey, customer_1.c_name, customer_1.c_custkey, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, customer_1.c_custkey, customer_1.provsql, customer_1.c_mktsegment, customer_1.c_custkey, customer_1.provsql, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey
limit 30;
select  
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 28;
select  
  nation_1.n_regionkey, 
  part_1.p_retailprice, 
  supplier_1.s_suppkey, 
  nation_1.n_comment, 
  nation_2.provsql, 
  min(
    lineitem_1.l_receiptdate), 
  min(
    supplier_1.s_name), 
  supplier_1.s_suppkey, 
  partsupp_1.ps_suppkey, 
  lineitem_2.l_suppkey, 
  lineitem_1.provsql, 
  lineitem_1.l_shipmode, 
  nation_1.n_regionkey, 
  nation_2.n_nationkey, 
  nation_2.n_regionkey, 
  lineitem_1.l_discount, 
  partsupp_1.provsql, 
  nation_1.n_name, 
  region_1.r_comment, 
  lineitem_2.l_extendedprice
from 
  partsupp as partsupp_1
        inner join region as region_1
          inner join lineitem as lineitem_1
          on (region_1.r_regionkey = lineitem_1.l_orderkey )
        on (partsupp_1.ps_supplycost = lineitem_1.l_quantity )
      inner join part as part_1
        inner join nation as nation_1
          inner join supplier as supplier_1
          on (nation_1.n_nationkey = supplier_1.s_suppkey )
        on (part_1.p_mfgr = nation_1.n_name )
      on (partsupp_1.ps_comment = supplier_1.s_address )
    inner join nation as nation_2
      inner join lineitem as lineitem_2
      on (nation_2.n_regionkey = lineitem_2.l_orderkey )
    on (partsupp_1.ps_partkey = lineitem_2.l_orderkey )
where lineitem_2.l_shipdate < lineitem_2.l_receiptdate
group by nation_1.n_regionkey, part_1.p_retailprice, supplier_1.s_suppkey, nation_1.n_comment, nation_2.provsql, supplier_1.s_suppkey, partsupp_1.ps_suppkey, lineitem_2.l_suppkey, lineitem_1.provsql, lineitem_1.l_shipmode, nation_1.n_regionkey, nation_2.n_nationkey, nation_2.n_regionkey, lineitem_1.l_discount, partsupp_1.provsql, nation_1.n_name, region_1.r_comment, lineitem_2.l_extendedprice
limit 18;
select  
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_availqty), 
  avg(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
group by partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 41;
select  
  max(
    part_1.p_partkey), 
  customer_1.c_comment, 
  region_1.provsql, 
  part_1.p_comment, 
  region_2.r_regionkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus
from 
  nation as nation_1
        inner join lineitem as lineitem_1
          inner join customer as customer_1
            inner join region as region_1
            on (customer_1.c_custkey = region_1.r_regionkey )
          on (lineitem_1.l_shipmode = region_1.r_name )
        on (nation_1.n_comment = lineitem_1.l_comment )
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    inner join region as region_2
    on (region_1.r_name = region_2.r_name )
where part_1.p_name is not NULL
group by customer_1.c_comment, region_1.provsql, part_1.p_comment, region_2.r_regionkey, lineitem_1.l_partkey, lineitem_1.l_linestatus
limit 35;
select  
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  part_1.p_comment
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_container, part_1.p_comment
limit 21;
select  
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_phone), 
  customer_1.c_comment, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.provsql is not NULL
group by customer_1.c_mktsegment, customer_1.c_phone, customer_1.c_address, customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_custkey, customer_1.c_comment, customer_1.c_nationkey, customer_1.c_comment, customer_1.c_name
limit 39;
select  
  supplier_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.provsql = supplier_1.provsql )
where supplier_1.s_name = supplier_1.s_phone
limit 9;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_quantity, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_orderkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_quantity, lineitem_1.l_shipdate, lineitem_1.l_shipdate, lineitem_1.l_quantity, lineitem_1.l_returnflag
limit 41;
select  
  max(
    supplier_1.s_phone), 
  supplier_1.s_phone, 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_phone, supplier_1.s_address, supplier_1.provsql, supplier_1.s_nationkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_suppkey, supplier_1.s_phone
limit 11;
select  
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_nationkey
limit 11;
select  
  supplier_1.s_name, 
  lineitem_1.l_tax, 
  orders_1.o_custkey, 
  part_1.provsql
from 
  lineitem as lineitem_1
        inner join orders as orders_1
        on (lineitem_1.l_commitdate = orders_1.o_orderdate )
      inner join supplier as supplier_1
      on (lineitem_1.provsql = supplier_1.provsql )
    inner join part as part_1
    on (supplier_1.s_name = part_1.p_mfgr )
where lineitem_1.l_returnflag <= lineitem_1.l_linestatus
limit 12;
select  
  region_1.provsql
from 
  region as region_1
where region_1.r_name is not NULL
limit 8;
select  
  lineitem_2.l_quantity, 
  lineitem_2.l_tax, 
  customer_1.provsql, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_linestatus), 
  customer_1.c_address, 
  lineitem_2.l_shipinstruct, 
  lineitem_1.l_discount, 
  lineitem_1.l_comment, 
  lineitem_2.l_linenumber, 
  customer_1.c_acctbal, 
  nation_1.n_comment, 
  max(
    lineitem_2.l_partkey), 
  max(
    lineitem_1.l_quantity), 
  nation_1.n_comment, 
  customer_1.c_mktsegment, 
  nation_1.n_nationkey, 
  lineitem_1.l_linestatus, 
  lineitem_2.l_orderkey, 
  nation_1.n_comment
from 
  lineitem as lineitem_1
      inner join customer as customer_1
        inner join nation as nation_1
        on (customer_1.c_comment = nation_1.n_comment )
      on (lineitem_1.l_suppkey = customer_1.c_custkey )
    inner join lineitem as lineitem_2
    on (lineitem_1.l_shipdate = lineitem_2.l_shipdate )
where customer_1.c_address is not NULL
group by lineitem_2.l_quantity, lineitem_2.l_tax, customer_1.provsql, lineitem_1.l_commitdate, lineitem_1.l_receiptdate, customer_1.c_address, lineitem_2.l_shipinstruct, lineitem_1.l_discount, lineitem_1.l_comment, lineitem_2.l_linenumber, customer_1.c_acctbal, nation_1.n_comment, nation_1.n_comment, customer_1.c_mktsegment, nation_1.n_nationkey, lineitem_1.l_linestatus, lineitem_2.l_orderkey, nation_1.n_comment
limit 25;
select  
  count(*), 
  region_1.provsql, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.provsql, region_1.r_comment
limit 38;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name
from 
  region as region_1
where region_1.provsql is not NULL
limit 3;
select  
  lineitem_1.l_partkey, 
  min(
    lineitem_1.l_shipinstruct), 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_discount, lineitem_1.l_discount, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, lineitem_1.l_comment, lineitem_1.l_comment, lineitem_1.l_linestatus, lineitem_1.l_orderkey
limit 15;
select  
  customer_1.c_address
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where part_1.p_comment is not NULL
limit 7;
select  
  part_1.p_size, 
  part_1.provsql, 
  region_1.r_regionkey, 
  region_1.provsql, 
  part_1.p_comment, 
  count(*), 
  region_1.provsql, 
  min(
    part_1.p_container), 
  part_1.p_size
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_name is not NULL
group by part_1.p_size, part_1.provsql, region_1.r_regionkey, region_1.provsql, part_1.p_comment, region_1.provsql, part_1.p_size
limit 7;
select  
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name = nation_1.n_name
limit 21;
select  
  part_1.p_name, 
  partsupp_1.ps_comment
from 
  part as part_1
        inner join supplier as supplier_1
          inner join customer as customer_1
          on (supplier_1.s_phone = customer_1.c_phone )
        on (part_1.provsql = supplier_1.provsql )
      inner join partsupp as partsupp_1
      on (supplier_1.s_address = partsupp_1.ps_comment )
    inner join customer as customer_2
      inner join supplier as supplier_2
      on (customer_2.c_address = supplier_2.s_address )
    on (part_1.provsql = customer_2.provsql )
where supplier_2.provsql = customer_1.provsql
limit 1;
select  
  orders_1.o_orderstatus, 
  orders_1.provsql, 
  region_1.r_comment, 
  orders_1.o_orderdate, 
  orders_1.provsql
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_clerk = region_1.r_name )
where orders_1.o_orderpriority is not NULL
limit 23;
select  
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.provsql, 
  min(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_totalprice, orders_1.o_shippriority, orders_1.provsql
limit 25;
select  
  min(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_nationkey >= nation_1.n_regionkey
limit 13;
select  
  customer_1.c_comment, 
  partsupp_1.ps_comment, 
  customer_1.c_comment, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_nationkey = partsupp_1.ps_partkey )
where customer_1.c_mktsegment >= customer_1.c_phone
limit 14;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 21;
select  
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  count(*), 
  orders_1.o_totalprice, 
  max(
    orders_1.o_clerk), 
  min(
    orders_1.o_clerk), 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.o_clerk, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderkey, orders_1.o_totalprice, orders_1.o_totalprice, orders_1.o_orderpriority, orders_1.o_custkey, orders_1.o_shippriority, orders_1.o_shippriority
limit 9;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 31;
select  
  orders_1.o_orderdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct, 
  orders_1.o_orderpriority, 
  min(
    lineitem_1.l_tax), 
  min(
    lineitem_1.l_shipinstruct), 
  orders_1.o_clerk, 
  count(
    lineitem_1.l_orderkey)
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
group by orders_1.o_orderdate, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, orders_1.o_orderpriority, orders_1.o_clerk
limit 9;
select  
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 41;
select  
  orders_1.o_orderkey, 
  part_1.p_size, 
  part_1.p_name, 
  max(
    part_1.p_brand), 
  max(
    part_1.p_partkey), 
  part_1.p_name, 
  orders_1.o_orderdate, 
  part_1.p_brand, 
  min(
    orders_1.o_orderdate), 
  part_1.p_brand, 
  part_1.p_type, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  sum(
    part_1.p_size), 
  part_1.p_container
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.provsql = orders_1.provsql )
where part_1.p_container is not NULL
group by orders_1.o_orderkey, part_1.p_size, part_1.p_name, part_1.p_name, orders_1.o_orderdate, part_1.p_brand, part_1.p_brand, part_1.p_type, orders_1.o_totalprice, orders_1.o_totalprice, part_1.p_container
limit 7;
select  
  partsupp_1.ps_supplycost
from 
  nation as nation_1
    inner join lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_linenumber = partsupp_1.ps_partkey )
    on (nation_1.provsql = lineitem_1.provsql )
where lineitem_1.l_shipinstruct > nation_1.n_name
limit 12;
select  
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.provsql = supplier_1.provsql
limit 42;
select  
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_brand is not NULL
limit 8;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql is not NULL
limit 17;
select  
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_returnflag
limit 11;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_name)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_comment, region_1.r_regionkey
limit 26;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.provsql <= lineitem_1.provsql
limit 26;
select  
  max(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 28;
select  
  part_1.p_container, 
  part_1.p_size, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_regionkey, 
  count(
    part_1.p_retailprice), 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.provsql, 
  part_1.p_comment, 
  part_1.p_brand, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  part_1.p_type, 
  region_1.r_name
from 
  region as region_1
    inner join part as part_1
    on (region_1.provsql = part_1.provsql )
where part_1.p_mfgr is not NULL
group by part_1.p_container, part_1.p_size, region_1.r_regionkey, region_1.r_name, region_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.provsql, part_1.p_comment, part_1.p_brand, region_1.r_comment, region_1.r_name, region_1.r_name, part_1.p_type, region_1.r_name
limit 17;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 37;
select  
  count(*), 
  region_1.r_regionkey, 
  max(
    region_1.r_name), 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  part_1.provsql, 
  region_1.provsql
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_comment = region_1.r_comment )
where part_1.provsql > region_1.provsql
group by region_1.r_regionkey, region_1.provsql, region_1.provsql, region_1.r_comment, region_1.r_name, region_1.r_regionkey, region_1.r_comment, part_1.provsql, region_1.provsql
limit 7;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 26;
select  
  orders_2.o_custkey, 
  lineitem_1.l_returnflag
from 
  orders as orders_1
    inner join region as region_1
        inner join orders as orders_2
        on (region_1.provsql = orders_2.provsql )
      inner join lineitem as lineitem_1
      on (orders_2.o_totalprice = lineitem_1.l_quantity )
    on (orders_1.provsql = region_1.provsql )
where lineitem_1.l_partkey is not NULL
limit 40;
select  
  min(
    region_1.r_name)
from 
  region as region_1
where region_1.r_comment is not NULL
limit 31;
select  
  nation_1.n_name, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  customer_1.c_address, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  nation_1.n_name
from 
  orders as orders_1
    inner join orders as orders_2
        inner join nation as nation_1
        on (orders_2.o_orderstatus = nation_1.n_name )
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_totalprice <= customer_1.c_acctbal
limit 39;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  sum(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_availqty
limit 15;
select distinct 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.provsql, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 37;
select  
  orders_1.provsql, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.provsql, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.provsql, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_totalprice <= orders_1.o_totalprice
group by orders_1.provsql, orders_1.o_orderpriority, orders_1.o_custkey, orders_1.provsql, orders_1.o_totalprice, orders_1.o_orderkey, orders_1.provsql, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.provsql, orders_1.o_totalprice, orders_1.provsql, orders_1.o_orderstatus, orders_1.o_orderstatus, orders_1.o_orderkey, orders_1.o_comment
limit 6;
select  
  lineitem_1.l_linenumber, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_comment = lineitem_1.l_comment )
where nation_1.provsql is not NULL
limit 16;
select  
  region_2.r_name
from 
  region as region_1
    inner join region as region_2
      inner join partsupp as partsupp_1
      on (region_2.r_comment = partsupp_1.ps_comment )
    on (region_1.r_name = region_2.r_name )
where region_2.provsql is not NULL
limit 25;
select  
  region_1.provsql, 
  supplier_1.s_acctbal, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_comment, 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_address = region_1.r_comment )
where region_1.r_name <= supplier_1.s_name
group by region_1.provsql, supplier_1.s_acctbal, region_1.provsql, region_1.provsql, region_1.r_comment
limit 23;
select  
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_partkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_commitdate, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey < lineitem_1.l_partkey
group by lineitem_1.l_shipmode, lineitem_1.l_partkey, lineitem_1.l_returnflag, lineitem_1.l_comment, lineitem_1.l_tax, lineitem_1.l_commitdate, lineitem_1.provsql
limit 42;
select  
  customer_1.c_acctbal, 
  customer_1.c_address, 
  lineitem_1.l_shipmode, 
  nation_1.n_name, 
  customer_1.c_name, 
  min(
    lineitem_2.l_extendedprice), 
  sum(
    lineitem_1.l_tax), 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  lineitem_2.l_commitdate, 
  lineitem_2.l_comment, 
  nation_1.provsql
from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_suppkey = customer_1.c_custkey )
    inner join lineitem as lineitem_2
      inner join nation as nation_1
      on (lineitem_2.provsql = nation_1.provsql )
    on (lineitem_1.l_linenumber = lineitem_2.l_orderkey )
where lineitem_2.l_commitdate >= lineitem_2.l_shipdate
group by customer_1.c_acctbal, customer_1.c_address, lineitem_1.l_shipmode, nation_1.n_name, customer_1.c_name, nation_1.n_regionkey, nation_1.n_name, nation_1.n_regionkey, lineitem_2.l_commitdate, lineitem_2.l_comment, nation_1.provsql
limit 29;
select  
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.provsql
limit 27;
select  
  customer_1.c_custkey, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    inner join nation as nation_1
      inner join region as region_1
      on (nation_1.n_regionkey = region_1.r_regionkey )
    on (partsupp_1.ps_availqty = region_1.r_regionkey )
where customer_1.c_phone is not NULL
limit 12;
select  
  lineitem_1.l_shipmode
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_name = lineitem_1.l_returnflag )
where lineitem_1.l_receiptdate is not NULL
limit 27;
select  
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_phone), 
  customer_1.c_mktsegment
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_phone = nation_1.n_name )
where nation_1.n_comment is not NULL
group by customer_1.c_phone, customer_1.c_acctbal, customer_1.c_mktsegment
limit 42;
select  
  region_1.r_comment, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name
limit 3;
select  
  orders_1.o_orderpriority, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 41;
select  
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.provsql, 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.provsql, 
  part_1.p_size, 
  part_1.provsql, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_size = part_1.p_partkey
limit 17;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 3;
select  
  max(
    nation_1.n_name), 
  max(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_comment, 
  nation_1.n_name, 
  customer_1.c_name
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.provsql = customer_1.provsql )
where nation_1.n_regionkey is not NULL
group by customer_1.c_comment, customer_1.c_comment, nation_1.n_name, customer_1.c_name
limit 32;
select  
  nation_1.n_nationkey, 
  customer_1.c_acctbal, 
  nation_1.n_name, 
  customer_1.c_phone
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_comment = customer_1.c_name )
where nation_1.n_regionkey is not NULL
limit 12;
select  
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 34;
select  
  part_1.p_retailprice, 
  lineitem_1.l_returnflag, 
  part_1.p_brand, 
  orders_1.o_orderkey, 
  part_1.p_type, 
  orders_1.provsql, 
  orders_1.o_totalprice, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_tax = orders_1.o_totalprice )
    inner join part as part_1
    on (orders_1.o_shippriority = part_1.p_partkey )
where part_1.provsql is not NULL
limit 17;
select  
  min(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_quantity, 
  part_1.provsql, 
  lineitem_1.provsql, 
  part_1.p_mfgr, 
  part_1.p_size, 
  lineitem_1.l_comment, 
  part_2.p_partkey
from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.provsql = part_1.provsql )
    inner join part as part_2
      inner join lineitem as lineitem_1
      on (part_2.p_comment = lineitem_1.l_comment )
    on (customer_1.c_nationkey = lineitem_1.l_orderkey )
where customer_1.c_mktsegment is not NULL
group by lineitem_1.l_quantity, part_1.provsql, lineitem_1.provsql, part_1.p_mfgr, part_1.p_size, lineitem_1.l_comment, part_2.p_partkey
limit 26;
select  
  region_1.provsql, 
  lineitem_1.l_shipmode, 
  avg(
    part_1.p_partkey), 
  max(
    part_1.p_size), 
  part_1.p_type, 
  part_1.p_name, 
  lineitem_1.l_linenumber
from 
  region as region_1
      inner join part as part_1
      on (region_1.r_comment = part_1.p_name )
    inner join lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_linenumber = partsupp_1.ps_partkey )
    on (region_1.provsql = partsupp_1.provsql )
where region_1.provsql is not NULL
group by region_1.provsql, lineitem_1.l_shipmode, part_1.p_type, part_1.p_name, lineitem_1.l_linenumber
limit 6;
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  count(
    nation_1.n_comment), 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_name, nation_1.n_name, nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, nation_1.n_name, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_comment, nation_1.provsql, nation_1.provsql, nation_1.provsql, nation_1.n_name, nation_1.n_name
limit 38;
select  
  count(
    supplier_1.s_address), 
  supplier_1.s_address, 
  min(
    supplier_1.s_phone), 
  supplier_1.s_comment, 
  min(
    supplier_1.s_phone)
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_address, supplier_1.s_comment
limit 23;
select  
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.provsql is not NULL
limit 8;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  avg(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.provsql, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_acctbal = supplier_1.s_acctbal )
where supplier_1.s_acctbal < customer_1.c_acctbal
group by supplier_1.s_nationkey, supplier_1.s_address, customer_1.c_mktsegment, customer_1.provsql, supplier_1.s_acctbal, supplier_1.s_name
limit 34;
select  
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  count(*), 
  customer_1.c_acctbal, 
  customer_1.provsql, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_mktsegment = customer_1.c_phone
group by customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_address, customer_1.c_acctbal, customer_1.provsql, customer_1.c_address, customer_1.c_custkey, customer_1.c_acctbal, customer_1.provsql, customer_1.c_comment, customer_1.c_comment, customer_1.c_nationkey
limit 13;
select  
  min(
    lineitem_1.l_commitdate), 
  part_1.p_partkey, 
  min(
    lineitem_1.l_partkey), 
  part_1.p_size, 
  part_1.p_size, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipinstruct, 
  part_1.p_brand, 
  part_1.p_mfgr
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_suppkey = part_1.p_partkey )
where lineitem_1.l_discount >= part_1.p_retailprice
group by part_1.p_partkey, part_1.p_size, part_1.p_size, lineitem_1.l_shipinstruct, lineitem_1.l_shipinstruct, part_1.p_brand, part_1.p_mfgr
limit 12;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_phone >= supplier_1.s_name
limit 11;
select  
  part_1.provsql, 
  part_1.p_size
from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 31;
select  
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 28;
select  
  min(
    region_1.r_name), 
  region_1.r_comment, 
  region_1.provsql, 
  count(
    region_1.r_comment), 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.provsql, region_1.r_comment, region_1.r_regionkey
limit 13;
select  
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 16;
select  
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_container, 
  min(
    part_1.p_size), 
  part_1.p_brand, 
  count(*), 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_name, part_1.p_retailprice, part_1.p_brand, part_1.p_retailprice, part_1.p_container, part_1.p_brand, part_1.p_mfgr
limit 27;
select  
  max(
    orders_1.o_orderpriority), 
  orders_1.o_custkey, 
  count(
    orders_1.o_orderpriority), 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_custkey = orders_1.o_orderkey
group by orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_orderpriority
limit 12;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 9;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 27;
select  
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 16;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderstatus), 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.provsql, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_shippriority, 
  orders_1.provsql, 
  orders_1.provsql, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_clerk), 
  max(
    orders_1.o_orderpriority), 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.provsql, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_clerk)
from 
  orders as orders_1
where orders_1.o_orderkey > orders_1.o_custkey
group by orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_totalprice, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_shippriority, orders_1.o_clerk, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.provsql, orders_1.o_comment, orders_1.o_clerk, orders_1.o_shippriority, orders_1.provsql, orders_1.provsql, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_orderkey, orders_1.o_orderkey, orders_1.o_clerk, orders_1.o_custkey, orders_1.provsql, orders_1.o_shippriority, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_shippriority
limit 5;
select  
  part_1.p_retailprice, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 40;
select  
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  max(
    supplier_1.s_phone), 
  customer_1.c_acctbal, 
  min(
    supplier_1.s_name), 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  customer_1.c_custkey
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.provsql = supplier_1.provsql )
where supplier_1.provsql is not NULL
group by customer_1.c_phone, customer_1.c_nationkey, customer_1.c_phone, customer_1.c_acctbal, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_acctbal, customer_1.c_custkey
limit 13;
select  
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_acctbal < supplier_1.s_acctbal
limit 5;
select  
  region_1.r_regionkey, 
  region_1.provsql, 
  count(
    region_1.provsql), 
  orders_1.o_shippriority, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  orders_1.o_orderstatus, 
  region_1.r_name
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_clerk is not NULL
group by region_1.r_regionkey, region_1.provsql, orders_1.o_shippriority, region_1.r_comment, region_1.r_regionkey, orders_1.o_orderstatus, region_1.r_name
limit 19;
select  
  part_1.p_mfgr, 
  count(*), 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_type
from 
  part as part_1
where part_1.p_size < part_1.p_partkey
group by part_1.p_mfgr, part_1.p_brand, part_1.p_mfgr, part_1.p_type
limit 23;
select  
  nation_2.n_comment
from 
  nation as nation_1
    inner join part as part_1
        inner join region as region_1
        on (part_1.p_size = region_1.r_regionkey )
      inner join nation as nation_2
      on (part_1.p_container = nation_2.n_name )
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_2.n_comment is not NULL
limit 29;
select  
  region_1.provsql, 
  supplier_1.provsql, 
  region_1.provsql, 
  supplier_1.s_suppkey, 
  region_1.r_name, 
  count(*)
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.provsql = region_1.provsql )
where region_1.r_regionkey is not NULL
group by region_1.provsql, supplier_1.provsql, region_1.provsql, supplier_1.s_suppkey, region_1.r_name
limit 24;
select  
  nation_1.n_regionkey, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  avg(
    nation_1.n_regionkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  count(
    nation_1.n_regionkey)
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderstatus = nation_1.n_name )
where orders_1.o_orderdate <= orders_1.o_orderdate
group by nation_1.n_regionkey, orders_1.o_shippriority, orders_1.o_orderdate, orders_1.o_comment, orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_orderpriority, orders_1.o_orderpriority
limit 36;
select  
  customer_1.provsql, 
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_mktsegment >= customer_1.c_phone
limit 36;
select  
  nation_1.n_name
from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_brand = nation_1.n_name )
    inner join partsupp as partsupp_1
      inner join nation as nation_2
        inner join nation as nation_3
        on (nation_2.provsql = nation_3.provsql )
      on (partsupp_1.ps_availqty = nation_2.n_nationkey )
    on (nation_1.provsql = nation_3.provsql )
where nation_3.provsql is not NULL
limit 25;
select  
  count(*)
from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_suppkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (partsupp_1.ps_comment = supplier_2.s_address )
where partsupp_1.ps_availqty is not NULL
limit 29;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 24;
select  
  partsupp_1.ps_availqty, 
  nation_1.provsql, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  nation_1.n_name, 
  partsupp_1.ps_availqty, 
  nation_1.n_comment, 
  part_1.p_size, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  min(
    partsupp_1.ps_suppkey), 
  part_1.p_name, 
  part_1.p_type, 
  partsupp_1.ps_comment, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.provsql, 
  part_1.p_comment
from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_container = nation_1.n_name )
    inner join partsupp as partsupp_1
    on (nation_1.provsql = partsupp_1.provsql )
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, nation_1.provsql, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, nation_1.n_name, partsupp_1.ps_availqty, nation_1.n_comment, part_1.p_size, nation_1.provsql, nation_1.n_regionkey, part_1.p_name, part_1.p_type, partsupp_1.ps_comment, part_1.p_mfgr, part_1.p_mfgr, part_1.provsql, part_1.p_comment
limit 1;
select  
  customer_1.provsql, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_phone, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.provsql, customer_1.c_name, customer_1.c_comment, customer_1.c_address, customer_1.c_custkey, customer_1.c_phone, customer_1.c_comment
limit 10;
select  
  part_1.p_brand, 
  max(
    part_1.p_container), 
  region_1.r_comment
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_name = region_1.r_comment )
where part_1.p_brand is not NULL
group by part_1.p_brand, region_1.r_comment
limit 21;
select  
  lineitem_2.l_comment, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_suppkey = lineitem_2.l_orderkey )
where lineitem_2.l_tax is not NULL
limit 22;
select  
  lineitem_1.l_linenumber, 
  orders_1.o_orderkey, 
  lineitem_1.l_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_returnflag), 
  orders_1.o_clerk, 
  sum(
    lineitem_1.l_suppkey), 
  orders_1.o_orderpriority, 
  count(
    orders_1.provsql), 
  min(
    lineitem_1.l_shipdate)
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_returnflag = orders_1.o_orderstatus )
where orders_1.o_totalprice >= lineitem_1.l_quantity
group by lineitem_1.l_linenumber, orders_1.o_orderkey, lineitem_1.l_orderkey, orders_1.o_orderdate, orders_1.o_orderkey, lineitem_1.l_shipmode, lineitem_1.l_returnflag, orders_1.o_clerk, orders_1.o_orderpriority
limit 31;
select  
  nation_1.n_name
from 
  nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    inner join part as part_1
      inner join part as part_2
      on (part_1.p_comment = part_2.p_name )
    on (nation_1.n_comment = part_2.p_name )
where orders_1.provsql >= part_2.provsql
limit 20;
select  
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal < customer_1.c_acctbal
limit 15;
select  
  min(
    orders_1.o_shippriority), 
  max(
    supplier_1.s_phone), 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  count(*), 
  count(*), 
  part_1.p_mfgr, 
  orders_1.o_clerk, 
  supplier_1.s_suppkey, 
  part_1.p_retailprice
from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_totalprice = part_1.p_retailprice )
    inner join nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_name = supplier_1.s_name )
    on (part_1.p_retailprice = supplier_1.s_acctbal )
where orders_1.o_custkey <= nation_1.n_regionkey
group by nation_1.provsql, nation_1.n_regionkey, part_1.p_mfgr, orders_1.o_clerk, supplier_1.s_suppkey, part_1.p_retailprice
limit 12;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus = lineitem_1.l_shipinstruct
limit 42;
select  
  region_2.provsql, 
  region_1.r_regionkey, 
  part_1.provsql, 
  region_2.r_comment, 
  part_1.p_name
from 
  part as part_1
    inner join nation as nation_1
        inner join orders as orders_1
          inner join region as region_1
          on (orders_1.o_shippriority = region_1.r_regionkey )
        on (nation_1.n_regionkey = region_1.r_regionkey )
      inner join region as region_2
      on (region_1.r_comment = region_2.r_comment )
    on (part_1.p_mfgr = orders_1.o_orderstatus )
where orders_1.provsql is not NULL
limit 2;
select  
  customer_2.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_phone
from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_address = customer_2.c_name )
where customer_1.c_mktsegment is not NULL
limit 35;
select  
  supplier_1.provsql, 
  supplier_1.s_nationkey
from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_comment = supplier_1.s_address )
where orders_1.o_custkey > supplier_1.s_nationkey
limit 41;
select  
  orders_1.o_orderstatus, 
  count(
    orders_1.o_custkey), 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_orderstatus, orders_1.o_orderpriority
limit 24;
select distinct 
  partsupp_1.ps_partkey, 
  max(
    partsupp_2.ps_suppkey)
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_comment = partsupp_2.ps_comment )
where partsupp_1.provsql is not NULL
group by partsupp_1.ps_partkey
limit 8;
select  
  partsupp_1.ps_availqty, 
  region_1.r_comment, 
  count(
    part_1.p_name), 
  region_1.r_regionkey, 
  partsupp_1.ps_supplycost, 
  part_1.p_mfgr, 
  partsupp_1.ps_suppkey, 
  part_1.p_partkey, 
  part_1.p_type
from 
  region as region_1
    inner join part as part_1
      inner join partsupp as partsupp_1
        inner join part as part_2
        on (partsupp_1.ps_availqty = part_2.p_partkey )
      on (part_1.p_partkey = part_2.p_partkey )
    on (region_1.r_name = part_1.p_mfgr )
where part_2.p_name is not NULL
group by partsupp_1.ps_availqty, region_1.r_comment, region_1.r_regionkey, partsupp_1.ps_supplycost, part_1.p_mfgr, partsupp_1.ps_suppkey, part_1.p_partkey, part_1.p_type
limit 33;
select  
  part_1.p_size, 
  nation_1.n_comment, 
  lineitem_1.l_suppkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  lineitem_1.l_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_suppkey, 
  nation_1.n_nationkey, 
  lineitem_1.l_shipmode
from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_retailprice = lineitem_1.l_quantity )
    inner join nation as nation_1
    on (part_1.p_name = nation_1.n_comment )
where lineitem_1.l_orderkey is not NULL
limit 27;
select  
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 23;
select  
  part_1.provsql, 
  lineitem_1.l_orderkey, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  partsupp_1.ps_supplycost, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  partsupp_1.ps_supplycost, 
  part_1.p_brand, 
  part_1.p_partkey
from 
  part as part_1
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.s_comment = lineitem_1.l_comment )
      on (part_1.p_comment = supplier_1.s_address )
    inner join partsupp as partsupp_1
    on (supplier_1.s_address = partsupp_1.ps_comment )
where lineitem_1.l_shipdate >= lineitem_1.l_commitdate
limit 31;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey)
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_comment
limit 20;
select  
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderdate), 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.o_comment, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_comment
limit 19;
select  
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_commitdate), 
  partsupp_1.provsql, 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.provsql = partsupp_1.provsql )
where partsupp_1.ps_partkey is not NULL
group by lineitem_1.l_linenumber, partsupp_1.provsql, lineitem_1.l_tax
limit 20;
select  
  supplier_1.s_address, 
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join nation as nation_1
    on (part_1.provsql = nation_1.provsql )
where supplier_1.s_name is not NULL
limit 9;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_phone >= supplier_1.s_name
limit 10;
select  
  max(
    nation_1.n_name), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  max(
    nation_1.n_name), 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.provsql, 
  avg(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_nationkey >= nation_1.n_regionkey
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_name, nation_1.n_comment, nation_1.n_comment, nation_1.n_name, nation_1.provsql
limit 31;
select  
  region_1.r_name, 
  region_1.provsql, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_name, region_1.provsql, region_1.r_name, region_1.r_comment, region_1.r_regionkey
limit 40;
select  
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_name is not NULL
limit 27;
select  
  supplier_1.provsql
from 
  supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_phone = part_1.p_mfgr )
    inner join orders as orders_1
      inner join region as region_1
        inner join orders as orders_2
        on (region_1.r_name = orders_2.o_orderstatus )
      on (orders_1.o_custkey = orders_2.o_orderkey )
    on (part_1.p_container = orders_1.o_orderstatus )
where part_1.p_partkey is not NULL
limit 40;
select  
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 21;
select  
  nation_1.n_nationkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  nation_1.n_regionkey, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.provsql = nation_1.provsql )
where partsupp_1.ps_availqty is not NULL
limit 41;
select  
  lineitem_1.l_quantity, 
  nation_1.provsql, 
  lineitem_1.l_suppkey, 
  region_1.r_regionkey, 
  customer_1.c_acctbal, 
  customer_2.c_custkey, 
  nation_1.n_comment, 
  lineitem_1.l_extendedprice, 
  customer_1.c_address, 
  region_1.r_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  region_1.r_comment, 
  customer_2.c_custkey, 
  customer_2.c_address
from 
  customer as customer_1
        inner join nation as nation_1
        on (customer_1.c_nationkey = nation_1.n_nationkey )
      inner join customer as customer_2
        inner join lineitem as lineitem_1
        on (customer_2.c_name = lineitem_1.l_comment )
      on (customer_1.c_mktsegment = customer_2.c_phone )
    inner join region as region_1
    on (nation_1.n_regionkey = region_1.r_regionkey )
where customer_2.provsql = region_1.provsql
limit 38;
select  
  customer_1.provsql, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_nationkey > customer_1.c_custkey
limit 31;
select  
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_mktsegment
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_comment = region_1.r_comment )
where region_1.provsql > customer_1.provsql
group by customer_1.c_comment, customer_1.c_address, customer_1.c_acctbal, customer_1.c_name, customer_1.c_mktsegment, customer_1.c_mktsegment
limit 8;
select  
  region_1.r_name, 
  supplier_1.s_name, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.provsql, 
  supplier_1.s_name, 
  region_1.r_comment, 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.provsql, 
  supplier_1.provsql, 
  region_1.r_regionkey, 
  count(
    region_1.r_comment), 
  supplier_1.provsql
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_name = supplier_1.s_name )
where region_1.r_comment is not NULL
group by region_1.r_name, supplier_1.s_name, region_1.r_regionkey, region_1.provsql, region_1.provsql, supplier_1.s_name, region_1.r_comment, supplier_1.s_acctbal, supplier_1.provsql, supplier_1.provsql, region_1.r_regionkey, supplier_1.provsql
limit 10;
select  
  min(
    orders_1.o_clerk), 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  avg(
    orders_1.o_totalprice), 
  min(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.provsql, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.provsql, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.provsql <= orders_1.provsql
group by orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_totalprice, orders_1.o_orderkey, orders_1.provsql, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_custkey, orders_1.o_comment, orders_1.provsql, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_orderstatus, orders_1.provsql, orders_1.o_orderdate, orders_1.o_comment, orders_1.o_orderpriority
limit 16;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  region_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  region_1.r_name
from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_regionkey = region_1.r_regionkey )
    inner join region as region_2
    on (nation_1.n_comment = region_2.r_comment )
where nation_1.n_regionkey > nation_1.n_nationkey
limit 39;
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_clerk, 
  region_1.provsql
from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_comment = orders_1.o_comment )
where region_1.r_name is not NULL
group by orders_1.o_clerk, region_1.provsql
limit 32;
select  
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_returnflag = lineitem_2.l_returnflag )
where lineitem_1.provsql is not NULL
limit 22;
select  
  supplier_1.s_address, 
  region_1.provsql
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.provsql = supplier_1.provsql )
where supplier_1.s_nationkey is not NULL
limit 21;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  count(
    region_1.r_comment), 
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_name, region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_comment
limit 33;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_returnflag, 
  count(
    lineitem_1.l_linestatus), 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_returnflag, lineitem_1.l_suppkey, lineitem_1.l_comment, lineitem_1.l_tax, lineitem_1.l_comment
limit 42;
select  
  part_2.p_type, 
  orders_1.o_orderstatus
from 
  part as part_1
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      inner join supplier as supplier_1
      on (part_1.p_brand = supplier_1.s_name )
    inner join supplier as supplier_2
      inner join part as part_2
          inner join region as region_1
          on (part_2.p_brand = region_1.r_name )
        inner join supplier as supplier_3
        on (part_2.p_brand = supplier_3.s_name )
      on (supplier_2.provsql = part_2.provsql )
    on (part_1.p_size = supplier_2.s_suppkey )
where supplier_2.s_suppkey >= orders_1.o_shippriority
limit 36;
select  
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_commitdate)
from 
  customer as customer_1
      inner join lineitem as lineitem_1
        inner join region as region_1
        on (lineitem_1.l_comment = region_1.r_comment )
      on (customer_1.c_custkey = region_1.r_regionkey )
    inner join orders as orders_1
    on (lineitem_1.l_shipdate = orders_1.o_orderdate )
where orders_1.o_orderstatus < customer_1.c_phone
group by lineitem_1.l_suppkey
limit 23;
select  
  region_1.provsql
from 
  region as region_1
where region_1.provsql = region_1.provsql
limit 25;
select  
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 31;
select  
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_orderstatus >= orders_1.o_orderpriority
limit 40;
select  
  supplier_1.s_address, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 34;
select  
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_type
from 
  part as part_1
where part_1.p_size is not NULL
limit 38;
select  
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_returnflag)
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
group by lineitem_1.l_orderkey
limit 11;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 36;
select  
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_suppkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_suppkey
limit 8;
select  
  lineitem_1.l_linenumber, 
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_size, 
  lineitem_1.l_returnflag, 
  max(
    lineitem_1.l_orderkey), 
  part_1.p_size, 
  avg(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_returnflag)
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_quantity = part_1.p_retailprice )
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_linenumber, part_1.p_retailprice, part_1.p_container, part_1.p_size, lineitem_1.l_returnflag, part_1.p_size
limit 36;
select  
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_name, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_phone >= supplier_1.s_name
group by supplier_1.s_name, supplier_1.s_phone
limit 4;
select  
  supplier_1.s_comment, 
  max(
    customer_1.c_phone), 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  supplier_1.s_suppkey
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_address = supplier_1.s_address )
where supplier_1.provsql > customer_1.provsql
group by supplier_1.s_comment, supplier_1.s_suppkey, supplier_1.s_comment, customer_1.provsql, customer_1.c_mktsegment, supplier_1.s_suppkey
limit 38;
select  
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_comment, 
  sum(
    nation_1.n_regionkey), 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.provsql, nation_1.provsql, nation_1.provsql, nation_1.n_name, nation_1.n_name, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.provsql, nation_1.n_comment, nation_1.n_name
limit 28;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_comment, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
limit 10;
select  
  region_1.r_regionkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_comment
from 
  region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    inner join lineitem as lineitem_1
    on (partsupp_1.provsql = lineitem_1.provsql )
where partsupp_1.ps_comment is not NULL
limit 4;
select  
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
limit 31;
select  
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  sum(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_name), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.provsql
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_name, region_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.r_regionkey, region_1.r_comment, region_1.r_regionkey, region_1.r_regionkey, region_1.r_regionkey, region_1.r_regionkey, region_1.r_regionkey, region_1.provsql
limit 1;
select  
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_nationkey >= supplier_1.s_suppkey
limit 42;
select  
  orders_1.provsql, 
  min(
    orders_1.o_orderpriority), 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  max(
    orders_1.o_custkey), 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.provsql, orders_1.o_totalprice, orders_1.provsql, orders_1.o_shippriority
limit 8;
select  
  part_1.p_retailprice, 
  max(
    part_1.p_mfgr)
from 
  part as part_1
where part_1.p_retailprice > part_1.p_retailprice
group by part_1.p_retailprice
limit 42;
select  
  count(*), 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_acctbal
limit 31;
select  
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  avg(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_name), 
  nation_1.n_comment, 
  nation_1.provsql, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.provsql, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_comment, nation_1.provsql, nation_1.n_comment, nation_1.provsql, nation_1.n_regionkey, nation_1.n_comment, nation_1.provsql, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_name, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 35;
select  
  part_1.provsql, 
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_1.p_comment, 
  part_1.p_name, 
  sum(
    part_1.p_partkey), 
  part_1.p_type
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.provsql, part_1.p_retailprice, part_1.p_partkey, part_1.p_comment, part_1.p_name, part_1.p_type
limit 21;
select  
  customer_1.provsql, 
  customer_1.c_acctbal, 
  count(*), 
  customer_2.c_custkey
from 
  supplier as supplier_1
    inner join customer as customer_1
        inner join region as region_1
        on (customer_1.c_name = region_1.r_comment )
      inner join customer as customer_2
      on (region_1.provsql = customer_2.provsql )
    on (supplier_1.s_address = region_1.r_comment )
where region_1.provsql >= supplier_1.provsql
group by customer_1.provsql, customer_1.c_acctbal, customer_2.c_custkey
limit 31;
select  
  nation_1.provsql, 
  part_1.p_brand, 
  lineitem_1.l_partkey
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.provsql = nation_1.provsql )
    on (part_1.p_container = nation_1.n_name )
where lineitem_1.l_tax = lineitem_1.l_quantity
limit 39;
select  
  part_1.p_mfgr, 
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  part_1.p_comment, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey
from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_container = supplier_1.s_name )
where part_1.p_partkey is not NULL
group by part_1.p_mfgr, supplier_1.provsql, supplier_1.s_acctbal, part_1.p_comment, supplier_1.s_nationkey
limit 24;
select  
  region_1.r_regionkey, 
  region_1.provsql
from 
  region as region_1
where region_1.r_comment is not NULL
limit 21;
select  
  supplier_1.s_address, 
  partsupp_1.ps_availqty
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
          inner join supplier as supplier_2
          on (supplier_1.s_address = supplier_2.s_address )
        inner join nation as nation_1
        on (supplier_1.s_phone = nation_1.n_name )
      inner join partsupp as partsupp_1
      on (supplier_2.s_acctbal = partsupp_1.ps_supplycost )
    on (lineitem_1.l_returnflag = supplier_1.s_name )
where partsupp_1.ps_supplycost < supplier_1.s_acctbal
limit 8;
select  
  partsupp_1.ps_availqty, 
  lineitem_1.l_comment, 
  supplier_1.provsql, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_orderkey, 
  supplier_1.s_acctbal, 
  partsupp_1.ps_availqty, 
  sum(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_linestatus = supplier_1.s_name )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where lineitem_1.l_quantity >= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, lineitem_1.l_comment, supplier_1.provsql, lineitem_1.l_orderkey, supplier_1.s_acctbal, partsupp_1.ps_availqty
limit 13;
select  
  count(*), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_partkey, 
  lineitem_1.l_discount, 
  sum(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice, 
  sum(
    lineitem_1.l_orderkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_discount = lineitem_1.l_tax
group by lineitem_1.l_shipinstruct, lineitem_1.l_partkey, lineitem_1.l_discount, lineitem_1.l_partkey, lineitem_1.l_extendedprice
limit 24;
select  
  part_1.p_container, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_name
from 
  part as part_1
where part_1.p_container >= part_1.p_brand
limit 19;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_name), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.provsql <= nation_1.provsql
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.n_name, nation_1.n_name, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.provsql, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.provsql, nation_1.provsql, nation_1.n_nationkey, nation_1.n_name, nation_1.n_nationkey
limit 31;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey >= lineitem_1.l_partkey
limit 42;
select  
  customer_1.c_custkey
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.provsql = supplier_1.provsql )
where supplier_1.s_nationkey is not NULL
limit 18;
select  
  supplier_1.s_acctbal
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
    on (lineitem_1.l_quantity = supplier_1.s_acctbal )
where lineitem_1.l_orderkey >= supplier_1.s_nationkey
limit 23;
select  
  customer_1.provsql, 
  count(*), 
  nation_1.n_comment, 
  supplier_1.s_phone
from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_nationkey = nation_1.n_nationkey )
    on (supplier_1.provsql = nation_1.provsql )
where customer_1.c_name is not NULL
group by customer_1.provsql, nation_1.n_comment, supplier_1.s_phone
limit 26;
select  
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 38;
select  
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_returnflag is not NULL
limit 21;
select  
  supplier_1.s_name, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 28;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_comment
limit 12;
select  
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 16;
select  
  orders_1.provsql, 
  orders_2.o_orderstatus
from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_quantity = orders_1.o_totalprice )
    inner join orders as orders_2
    on (orders_1.o_shippriority = orders_2.o_orderkey )
where lineitem_1.l_commitdate is not NULL
limit 6;
select  
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_comment
from 
  orders as orders_1
    inner join part as part_1
      inner join region as region_1
      on (part_1.p_container = region_1.r_name )
    on (orders_1.o_shippriority = region_1.r_regionkey )
where orders_1.provsql is not NULL
limit 16;
select  
  nation_1.provsql, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_name), 
  min(
    nation_1.n_name), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.provsql, nation_1.n_regionkey, nation_1.n_name, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_comment
limit 37;
select  
  nation_1.n_nationkey, 
  lineitem_1.l_linestatus, 
  orders_1.o_orderkey, 
  lineitem_1.l_receiptdate, 
  part_1.p_type, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_partkey, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
    inner join nation as nation_1
        inner join part as part_1
        on (nation_1.n_name = part_1.p_mfgr )
      inner join orders as orders_1
      on (nation_1.n_name = orders_1.o_orderstatus )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_shipdate is not NULL
group by nation_1.n_nationkey, lineitem_1.l_linestatus, orders_1.o_orderkey, lineitem_1.l_receiptdate, part_1.p_type, lineitem_1.l_partkey, lineitem_1.l_linenumber
limit 11;
select  
  partsupp_1.ps_supplycost, 
  part_2.p_type, 
  part_2.p_retailprice, 
  avg(
    partsupp_1.ps_supplycost)
from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join part as part_2
        inner join region as region_1
        on (part_2.p_comment = region_1.r_comment )
      on (partsupp_1.ps_suppkey = region_1.r_regionkey )
    on (part_1.p_type = region_1.r_comment )
where region_1.r_regionkey is not NULL
group by partsupp_1.ps_supplycost, part_2.p_type, part_2.p_retailprice
limit 17;
select  
  region_1.r_regionkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_comment = region_1.r_comment )
where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
limit 14;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipmode, 
  count(
    lineitem_1.provsql), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_partkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber, 
  sum(
    lineitem_1.l_quantity), 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_shipmode, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_tax, lineitem_1.l_returnflag, lineitem_1.l_tax, lineitem_1.l_linestatus, lineitem_1.l_linestatus, lineitem_1.l_suppkey, lineitem_1.l_returnflag, lineitem_1.l_linenumber, lineitem_1.l_discount
limit 36;
select  
  part_1.p_brand, 
  part_1.p_container
from 
  part as part_1
where part_1.p_comment is not NULL
limit 29;
select  
  orders_1.o_orderkey, 
  nation_1.n_name, 
  orders_1.o_shippriority
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_regionkey = orders_1.o_orderkey )
where orders_1.o_totalprice >= orders_1.o_totalprice
limit 37;
select  
  region_1.provsql
from 
  region as region_1
where region_1.r_name >= region_1.r_name
limit 23;
select  
  supplier_1.provsql, 
  partsupp_1.ps_suppkey
from 
  supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_nationkey = partsupp_1.ps_partkey )
    inner join part as part_1
      inner join orders as orders_1
      on (part_1.p_comment = orders_1.o_comment )
    on (supplier_1.s_phone = part_1.p_mfgr )
where partsupp_1.provsql is not NULL
limit 18;
select  
  supplier_1.s_phone, 
  supplier_1.s_nationkey
from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderstatus = supplier_1.s_name )
where supplier_1.s_address is not NULL
limit 22;
select  
  min(
    lineitem_1.l_commitdate)
from 
  supplier as supplier_1
      inner join nation as nation_1
          inner join supplier as supplier_2
          on (nation_1.n_regionkey = supplier_2.s_suppkey )
        inner join supplier as supplier_3
          inner join supplier as supplier_4
          on (supplier_3.s_name = supplier_4.s_name )
        on (nation_1.provsql = supplier_4.provsql )
      on (supplier_1.s_comment = supplier_4.s_address )
    inner join lineitem as lineitem_1
    on (supplier_4.s_phone = lineitem_1.l_returnflag )
where supplier_3.provsql is not NULL
limit 38;
select  
  lineitem_1.l_shipdate, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  region_1.r_regionkey, 
  supplier_1.s_suppkey, 
  lineitem_1.l_linestatus, 
  supplier_1.s_comment, 
  region_1.r_comment
from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_address = lineitem_1.l_comment )
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where region_1.provsql is not NULL
limit 24;
select  
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_container, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_type is not NULL
limit 5;
select  
  region_1.r_name
from 
  nation as nation_1
    inner join region as region_1
      inner join region as region_2
      on (region_1.r_name = region_2.r_name )
    on (nation_1.provsql = region_1.provsql )
where region_1.provsql <= region_2.provsql
limit 28;
select  
  part_1.provsql, 
  part_1.p_partkey, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  lineitem_1.l_commitdate, 
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.provsql, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_shipinstruct = part_1.p_mfgr )
where part_1.p_partkey is not NULL
group by part_1.provsql, part_1.p_partkey, lineitem_1.l_commitdate, lineitem_1.l_returnflag, lineitem_1.l_quantity, lineitem_1.l_commitdate, part_1.p_partkey, part_1.p_name, part_1.provsql, lineitem_1.l_linestatus, lineitem_1.l_quantity
limit 26;
select  
  part_1.p_comment
from 
  part as part_1
where part_1.p_mfgr > part_1.p_container
limit 34;
select  
  avg(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  max(
    region_1.r_name), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_name, region_1.r_name, region_1.r_regionkey, region_1.r_name, region_1.r_comment, region_1.r_regionkey, region_1.r_regionkey
limit 23;
select  
  max(
    orders_1.o_custkey), 
  orders_1.o_custkey, 
  orders_1.provsql, 
  orders_1.provsql, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_orderkey > orders_1.o_shippriority
group by orders_1.o_custkey, orders_1.provsql, orders_1.provsql, orders_1.o_clerk, orders_1.o_shippriority, orders_1.o_comment, orders_1.o_orderstatus, orders_1.o_comment, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_orderpriority, orders_1.o_orderpriority, orders_1.o_orderdate, orders_1.provsql
limit 36;
select  
  avg(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_phone = customer_1.c_phone )
where supplier_1.provsql <= customer_1.provsql
limit 42;
select  
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_name)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_name, region_1.provsql, region_1.r_regionkey, region_1.r_name, region_1.r_comment
limit 40;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  count(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_comment
limit 33;
select  
  part_1.p_brand
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_name = partsupp_1.ps_comment )
where partsupp_1.ps_comment is not NULL
limit 2;
select  
  part_1.p_name, 
  part_1.p_retailprice, 
  nation_1.provsql, 
  part_1.p_size, 
  region_1.r_regionkey, 
  part_1.p_retailprice, 
  sum(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  region_1.r_name, 
  nation_1.n_regionkey, 
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
    inner join part as part_1
      inner join nation as nation_1
      on (part_1.provsql = nation_1.provsql )
    on (region_1.r_regionkey = nation_1.n_nationkey )
where part_1.p_retailprice >= part_1.p_retailprice
group by part_1.p_name, part_1.p_retailprice, nation_1.provsql, part_1.p_size, region_1.r_regionkey, part_1.p_retailprice, nation_1.n_nationkey, nation_1.n_nationkey, region_1.r_name, nation_1.n_regionkey, region_1.r_name, region_1.r_comment
limit 17;
select  
  count(*), 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_partkey >= part_1.p_size
group by part_1.p_mfgr
limit 7;
select  
  part_1.p_size, 
  part_1.provsql, 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_brand, 
  part_1.p_size
from 
  part as part_1
where part_1.p_size is not NULL
limit 15;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  lineitem_1.l_discount, 
  region_1.r_comment, 
  lineitem_1.l_shipmode, 
  customer_1.c_address, 
  part_1.p_comment, 
  region_2.r_comment, 
  sum(
    region_1.r_regionkey), 
  region_1.r_name, 
  part_1.p_retailprice, 
  lineitem_1.l_extendedprice, 
  count(
    lineitem_1.l_tax), 
  region_1.r_regionkey, 
  region_2.r_comment, 
  max(
    customer_1.c_phone)
from 
  lineitem as lineitem_1
    inner join region as region_1
          inner join region as region_2
          on (region_1.r_name = region_2.r_name )
        inner join customer as customer_1
        on (region_2.provsql = customer_1.provsql )
      inner join part as part_1
      on (region_2.provsql = part_1.provsql )
    on (lineitem_1.l_comment = part_1.p_name )
where region_2.r_comment is not NULL
group by region_1.r_comment, region_1.r_comment, lineitem_1.l_discount, region_1.r_comment, lineitem_1.l_shipmode, customer_1.c_address, part_1.p_comment, region_2.r_comment, region_1.r_name, part_1.p_retailprice, lineitem_1.l_extendedprice, region_1.r_regionkey, region_2.r_comment
limit 20;
select  
  sum(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_regionkey = nation_1.n_nationkey
limit 8;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount is not NULL
limit 20;
select  
  customer_1.provsql
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_supplycost = customer_1.c_acctbal )
where customer_1.c_acctbal = partsupp_1.ps_supplycost
limit 6;
select  
  customer_1.c_phone, 
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
limit 38;
select  
  min(
    part_1.p_partkey), 
  part_1.p_name
from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.c_nationkey = part_1.p_partkey )
    inner join region as region_1
    on (part_1.p_name = region_1.r_comment )
where part_1.p_partkey is not NULL
group by part_1.p_name
limit 4;
select  
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_mktsegment), 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_comment
limit 25;
select  
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.provsql, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment, 
  avg(
    partsupp_1.ps_suppkey), 
  sum(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey, 
  count(
    partsupp_1.ps_comment), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 20;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  avg(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 33;
select  
  max(
    region_1.r_name)
from 
  region as region_1
where region_1.r_name is not NULL
limit 23;
select  
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  count(*), 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_name
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_brand, part_1.p_brand, part_1.p_mfgr, part_1.p_size, part_1.p_mfgr, part_1.p_type, part_1.p_mfgr, part_1.p_name
limit 23;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey
limit 15;
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_name <= region_1.r_name
limit 30;
select  
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 10;
select  
  avg(
    lineitem_1.l_quantity), 
  lineitem_1.l_receiptdate, 
  part_1.p_partkey, 
  lineitem_1.provsql, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_commitdate, 
  part_1.p_retailprice, 
  part_1.p_partkey, 
  max(
    lineitem_1.l_linestatus), 
  part_1.p_size, 
  lineitem_1.l_returnflag, 
  part_1.p_retailprice, 
  part_1.p_container, 
  lineitem_1.l_shipmode, 
  part_1.p_retailprice
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_brand = lineitem_1.l_returnflag )
where lineitem_1.l_tax >= lineitem_1.l_discount
group by lineitem_1.l_receiptdate, part_1.p_partkey, lineitem_1.provsql, lineitem_1.l_commitdate, part_1.p_retailprice, part_1.p_partkey, part_1.p_size, lineitem_1.l_returnflag, part_1.p_retailprice, part_1.p_container, lineitem_1.l_shipmode, part_1.p_retailprice
limit 26;
select  
  partsupp_1.ps_comment
from 
  region as region_1
      inner join nation as nation_1
        inner join region as region_2
        on (nation_1.n_name = region_2.r_name )
      on (region_1.r_regionkey = nation_1.n_nationkey )
    inner join partsupp as partsupp_1
        inner join customer as customer_1
        on (partsupp_1.ps_comment = customer_1.c_name )
      inner join nation as nation_2
        inner join part as part_1
          inner join orders as orders_1
          on (part_1.p_size = orders_1.o_orderkey )
        on (nation_2.provsql = orders_1.provsql )
      on (customer_1.c_mktsegment = nation_2.n_name )
    on (nation_1.n_regionkey = orders_1.o_orderkey )
where partsupp_1.ps_supplycost < customer_1.c_acctbal
limit 41;
select  
  part_2.p_comment
from 
  part as part_1
    inner join part as part_2
    on (part_1.provsql = part_2.provsql )
where part_2.p_size <= part_1.p_size
limit 24;
select  
  supplier_1.s_address, 
  supplier_1.s_comment, 
  min(
    supplier_1.s_acctbal), 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_phone
limit 32;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 8;
select  
  min(
    lineitem_1.l_commitdate), 
  part_1.p_partkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  lineitem_1.l_shipmode, 
  nation_1.n_name, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.provsql, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_returnflag, 
  count(
    part_1.p_name), 
  part_1.p_type, 
  lineitem_1.l_comment, 
  sum(
    lineitem_1.l_linenumber), 
  part_1.p_mfgr, 
  lineitem_1.l_shipmode, 
  nation_1.n_nationkey, 
  lineitem_1.l_shipinstruct, 
  part_1.p_size, 
  nation_1.n_regionkey, 
  part_1.p_mfgr, 
  nation_1.n_regionkey, 
  lineitem_1.l_partkey, 
  min(
    part_1.p_partkey), 
  lineitem_1.l_tax, 
  nation_1.provsql
from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_name = part_1.p_mfgr )
    inner join lineitem as lineitem_1
    on (part_1.p_container = lineitem_1.l_returnflag )
where nation_1.n_nationkey <= nation_1.n_regionkey
group by part_1.p_partkey, nation_1.n_nationkey, nation_1.provsql, nation_1.n_regionkey, nation_1.n_name, lineitem_1.l_shipmode, nation_1.n_name, part_1.p_mfgr, part_1.p_retailprice, part_1.provsql, lineitem_1.l_shipdate, lineitem_1.l_returnflag, part_1.p_type, lineitem_1.l_comment, part_1.p_mfgr, lineitem_1.l_shipmode, nation_1.n_nationkey, lineitem_1.l_shipinstruct, part_1.p_size, nation_1.n_regionkey, part_1.p_mfgr, nation_1.n_regionkey, lineitem_1.l_partkey, lineitem_1.l_tax, nation_1.provsql
limit 22;
select  
  min(
    nation_1.n_name), 
  nation_1.n_comment, 
  supplier_1.provsql, 
  supplier_1.provsql, 
  nation_1.n_regionkey, 
  supplier_1.s_suppkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_regionkey = supplier_1.s_suppkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, supplier_1.provsql, supplier_1.provsql, nation_1.n_regionkey, supplier_1.s_suppkey
limit 42;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
limit 39;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_nationkey, nation_1.provsql, nation_1.n_nationkey
limit 23;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 5;
select  
  supplier_1.s_acctbal
from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.provsql = orders_1.provsql )
where supplier_1.s_nationkey is not NULL
limit 22;
select  
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.provsql
limit 15;
select  
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.provsql = orders_1.provsql
group by orders_1.o_totalprice, orders_1.o_clerk, orders_1.o_orderdate
limit 3;
select  
  nation_1.n_name, 
  max(
    nation_1.n_name), 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  avg(
    nation_1.n_nationkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_name, nation_1.n_name, nation_1.n_name, nation_1.n_nationkey, nation_1.n_name, nation_1.n_name, nation_1.n_name, nation_1.n_name, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_regionkey, nation_1.provsql, nation_1.n_regionkey, nation_1.n_name, nation_1.n_comment, nation_1.n_comment
limit 36;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  part_1.p_size
from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_address = part_1.p_name )
where supplier_1.s_name is not NULL
limit 39;
select  
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_type, 
  max(
    lineitem_1.l_extendedprice), 
  max(
    lineitem_1.l_commitdate)
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join part as part_2
      on (lineitem_1.l_comment = part_2.p_name )
    on (part_1.p_mfgr = lineitem_1.l_returnflag )
where part_1.p_container >= lineitem_1.l_shipinstruct
group by part_1.p_name, part_1.p_type, part_1.p_type
limit 1;
select  
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linestatus, 
  avg(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_partkey, 
  count(*), 
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate > lineitem_1.l_receiptdate
group by lineitem_1.l_shipmode, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_tax, lineitem_1.l_tax, lineitem_1.l_tax
limit 20;
select  
  lineitem_1.l_tax, 
  count(*)
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_tax
limit 38;
select  
  customer_1.c_phone, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.provsql is not NULL
limit 36;
select  
  region_1.provsql, 
  region_1.r_regionkey, 
  lineitem_1.l_discount
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_comment = lineitem_1.l_comment )
where lineitem_1.l_extendedprice >= lineitem_1.l_tax
limit 4;
select  
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_nationkey)
from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_comment = supplier_1.s_address )
where orders_1.o_orderdate <= orders_1.o_orderdate
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_address, supplier_1.s_nationkey
limit 5;
select  
  nation_1.provsql, 
  sum(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  max(
    nation_1.n_name), 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  count(*), 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.provsql, nation_1.n_comment, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.provsql, nation_1.n_regionkey, nation_1.n_name, nation_1.n_name, nation_1.n_comment, nation_1.n_regionkey
limit 32;
select  
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  max(
    orders_1.o_custkey)
from 
  orders as orders_1
where orders_1.o_custkey > orders_1.o_orderkey
group by orders_1.o_clerk, orders_1.o_clerk, orders_1.o_clerk
limit 24;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 40;
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 26;
select  
  sum(
    supplier_1.s_acctbal)
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.provsql = supplier_1.provsql )
where supplier_1.s_acctbal < supplier_1.s_acctbal
limit 29;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey > nation_1.n_nationkey
limit 10;
select  
  part_1.p_partkey, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  part_1.p_size, 
  customer_1.c_acctbal, 
  customer_1.c_phone
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_phone = part_1.p_mfgr )
where customer_1.provsql = part_1.provsql
limit 5;
select  
  nation_1.provsql, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.provsql, nation_1.n_name
limit 22;
select  
  min(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.provsql >= customer_1.provsql
limit 6;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.provsql
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_name, region_1.provsql
limit 3;
select  
  min(
    supplier_1.s_acctbal), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_phone = customer_1.c_phone )
    on (partsupp_1.ps_supplycost = supplier_1.s_acctbal )
where customer_1.c_acctbal is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 32;
select  
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  sum(
    customer_1.c_nationkey), 
  avg(
    customer_1.c_nationkey)
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.provsql, customer_1.c_nationkey, customer_1.c_nationkey
limit 15;
select  
  count(*), 
  supplier_1.s_address, 
  region_1.provsql, 
  region_1.provsql, 
  supplier_1.s_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  avg(
    supplier_1.s_nationkey), 
  supplier_1.provsql, 
  avg(
    region_1.r_regionkey), 
  region_1.r_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_address
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_comment = supplier_1.s_address )
where region_1.provsql >= supplier_1.provsql
group by supplier_1.s_address, region_1.provsql, region_1.provsql, supplier_1.s_comment, region_1.r_name, region_1.r_comment, supplier_1.provsql, region_1.r_name, supplier_1.s_acctbal, supplier_1.s_address
limit 1;
select  
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  customer_1.c_address, 
  supplier_1.provsql, 
  customer_1.c_custkey, 
  supplier_1.s_comment, 
  nation_1.n_comment, 
  supplier_1.s_comment, 
  customer_1.provsql, 
  max(
    nation_1.n_nationkey), 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_name, 
  supplier_1.s_comment, 
  nation_1.n_comment, 
  supplier_1.provsql, 
  supplier_1.s_acctbal
from 
  customer as customer_1
    inner join nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    on (customer_1.c_comment = supplier_1.s_address )
where nation_1.provsql is not NULL
group by supplier_1.s_comment, supplier_1.s_nationkey, customer_1.c_address, supplier_1.provsql, customer_1.c_custkey, supplier_1.s_comment, nation_1.n_comment, supplier_1.s_comment, customer_1.provsql, nation_1.provsql, nation_1.n_comment, nation_1.n_name, nation_1.n_name, supplier_1.s_comment, nation_1.n_comment, supplier_1.provsql, supplier_1.s_acctbal
limit 19;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql is not NULL
limit 13;
select  
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.provsql, 
  min(
    customer_1.c_acctbal), 
  customer_1.provsql, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_nationkey, customer_1.c_name, customer_1.c_phone, customer_1.provsql, customer_1.provsql, customer_1.c_phone, customer_1.c_nationkey, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_comment, customer_1.c_acctbal, customer_1.c_comment, customer_1.c_address, customer_1.c_mktsegment, customer_1.c_acctbal
limit 2;
select  
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_mktsegment > customer_1.c_phone
limit 34;
select  
  sum(
    lineitem_1.l_extendedprice), 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.provsql
limit 10;
select  
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.provsql, 
  max(
    region_1.r_name)
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.provsql, region_1.r_regionkey, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.provsql
limit 27;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
limit 34;
select  
  partsupp_1.ps_suppkey, 
  min(
    region_1.r_name), 
  region_1.r_comment
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_comment = region_1.r_comment )
where region_1.provsql is not NULL
group by partsupp_1.ps_suppkey, region_1.r_comment
limit 16;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.provsql, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
limit 6;
select  
  lineitem_1.provsql, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
limit 41;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  count(
    orders_1.o_totalprice), 
  orders_1.o_orderkey, 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_orderdate, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_clerk
limit 31;
select  
  region_1.provsql, 
  lineitem_1.l_suppkey, 
  lineitem_1.provsql, 
  lineitem_1.l_extendedprice, 
  region_1.r_comment, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_shipmode = region_1.r_name )
where lineitem_1.provsql = region_1.provsql
limit 14;
select  
  supplier_1.s_address
from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_comment = part_1.p_name )
where supplier_1.s_suppkey < supplier_1.s_nationkey
limit 13;
select  
  supplier_1.s_suppkey, 
  supplier_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  supplier_1.s_nationkey
from 
  part as part_1
    inner join customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_acctbal = supplier_1.s_acctbal )
    on (part_1.p_mfgr = supplier_1.s_name )
where customer_1.c_nationkey is not NULL
limit 1;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 22;
select  
  max(
    orders_1.o_orderpriority), 
  orders_1.o_orderdate, 
  region_2.r_name, 
  max(
    part_1.p_partkey), 
  lineitem_1.l_shipdate, 
  region_2.r_comment, 
  partsupp_1.provsql, 
  region_2.provsql, 
  region_2.r_name, 
  region_2.r_comment, 
  region_2.r_name, 
  region_1.provsql, 
  orders_1.o_shippriority, 
  orders_1.o_comment
from 
  partsupp as partsupp_1
          inner join region as region_1
          on (partsupp_1.provsql = region_1.provsql )
        inner join region as region_2
        on (region_1.r_comment = region_2.r_comment )
      inner join part as part_1
        inner join orders as orders_1
        on (part_1.p_retailprice = orders_1.o_totalprice )
      on (region_1.r_comment = orders_1.o_comment )
    inner join lineitem as lineitem_1
    on (part_1.p_brand = lineitem_1.l_returnflag )
where lineitem_1.l_linenumber = region_1.r_regionkey
group by orders_1.o_orderdate, region_2.r_name, lineitem_1.l_shipdate, region_2.r_comment, partsupp_1.provsql, region_2.provsql, region_2.r_name, region_2.r_comment, region_2.r_name, region_1.provsql, orders_1.o_shippriority, orders_1.o_comment
limit 4;
select  
  customer_1.c_name, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  sum(
    customer_1.c_nationkey)
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_name, customer_1.provsql, customer_1.c_custkey, customer_1.c_name, customer_1.c_custkey, customer_1.c_custkey, customer_1.c_address
limit 18;
select  
  nation_1.n_nationkey, 
  nation_2.n_name, 
  nation_1.provsql, 
  customer_1.c_comment, 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_2.provsql, 
  nation_1.n_regionkey, 
  avg(
    customer_1.c_acctbal), 
  nation_1.n_nationkey, 
  nation_2.provsql, 
  max(
    customer_1.c_custkey), 
  nation_1.provsql, 
  nation_2.n_name, 
  customer_1.c_name, 
  customer_1.provsql, 
  nation_1.provsql
from 
  nation as nation_1
    inner join customer as customer_1
      inner join nation as nation_2
      on (customer_1.c_comment = nation_2.n_comment )
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_2.n_nationkey is not NULL
group by nation_1.n_nationkey, nation_2.n_name, nation_1.provsql, customer_1.c_comment, nation_1.provsql, nation_2.provsql, nation_1.n_regionkey, nation_1.n_nationkey, nation_2.provsql, nation_1.provsql, nation_2.n_name, customer_1.c_name, customer_1.provsql, nation_1.provsql
limit 33;
select  
  max(
    region_1.r_name), 
  region_1.r_comment, 
  supplier_1.s_address, 
  region_1.r_name, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  min(
    region_1.r_name), 
  region_1.r_name, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where supplier_1.s_comment is not NULL
group by region_1.r_comment, supplier_1.s_address, region_1.r_name, supplier_1.s_name, supplier_1.s_nationkey, region_1.r_name, supplier_1.s_suppkey
limit 33;
select  
  region_2.r_regionkey
from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_comment is not NULL
limit 12;
select  
  sum(
    part_1.p_retailprice)
from 
  part as part_1
where part_1.provsql > part_1.provsql
limit 32;
select  
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.provsql, 
  max(
    part_1.p_brand), 
  part_1.provsql, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.provsql, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  part_1.p_container
from 
  part as part_1
where part_1.p_size <= part_1.p_partkey
group by part_1.p_size, part_1.p_comment, part_1.p_partkey, part_1.p_name, part_1.provsql, part_1.provsql, part_1.p_retailprice, part_1.p_mfgr, part_1.p_brand, part_1.p_size, part_1.provsql, part_1.p_name, part_1.p_container
limit 41;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_tax < lineitem_1.l_extendedprice
limit 34;
select  
  nation_1.provsql, 
  min(
    part_1.p_brand), 
  count(
    nation_1.n_regionkey), 
  count(
    part_1.p_brand), 
  nation_1.n_comment, 
  nation_1.n_name
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.provsql = nation_1.provsql )
where part_1.p_brand is not NULL
group by nation_1.provsql, nation_1.n_comment, nation_1.n_name
limit 32;
select  
  max(
    lineitem_1.l_returnflag), 
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_partkey = region_1.r_regionkey )
    on (customer_1.c_name = lineitem_1.l_comment )
where customer_1.c_address is not NULL
group by customer_1.c_nationkey
limit 3;
select  
  max(
    part_1.p_container), 
  part_1.p_partkey, 
  part_1.p_comment, 
  max(
    part_1.p_size), 
  part_1.p_partkey, 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_brand > part_1.p_container
group by part_1.p_partkey, part_1.p_comment, part_1.p_partkey, part_1.p_comment, part_1.p_partkey, part_1.p_mfgr, part_1.p_comment, part_1.p_mfgr
limit 25;
select  
  max(
    orders_1.o_orderdate), 
  region_2.r_name, 
  region_1.provsql, 
  region_3.r_name, 
  region_1.r_name, 
  min(
    orders_1.o_orderstatus), 
  orders_1.o_orderdate, 
  orders_1.provsql
from 
  region as region_1
        inner join region as region_2
        on (region_1.r_name = region_2.r_name )
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
    inner join region as region_3
    on (orders_1.o_shippriority = region_3.r_regionkey )
where orders_1.o_orderkey is not NULL
group by region_2.r_name, region_1.provsql, region_3.r_name, region_1.r_name, orders_1.o_orderdate, orders_1.provsql
limit 13;
select  
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_name <= supplier_1.s_phone
limit 16;
select  
  supplier_1.s_suppkey, 
  nation_1.n_comment, 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  nation_1.n_name, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_totalprice < supplier_1.s_acctbal
limit 36;
select  
  region_2.r_comment, 
  part_2.p_comment, 
  part_1.p_comment, 
  lineitem_1.l_suppkey, 
  part_2.p_container, 
  lineitem_1.l_shipdate, 
  part_2.p_type
from 
  region as region_1
      inner join part as part_1
        inner join lineitem as lineitem_1
          inner join part as part_2
          on (lineitem_1.l_partkey = part_2.p_partkey )
        on (part_1.p_name = part_2.p_name )
      on (region_1.r_regionkey = part_1.p_partkey )
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_2.r_regionkey < lineitem_1.l_orderkey
limit 15;
select  
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  orders_1.provsql
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_comment = orders_1.o_comment )
where orders_1.o_totalprice is not NULL
limit 20;
select  
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.provsql = partsupp_1.provsql
limit 15;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.provsql, 
  max(
    supplier_1.s_phone)
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_comment, supplier_1.provsql
limit 35;
select  
  orders_1.o_orderstatus, 
  supplier_1.s_phone, 
  lineitem_1.l_commitdate, 
  orders_1.o_totalprice, 
  lineitem_1.l_linestatus, 
  sum(
    orders_1.o_custkey), 
  orders_2.o_clerk, 
  orders_2.o_orderdate, 
  orders_2.o_comment, 
  lineitem_1.l_orderkey
from 
  orders as orders_1
    inner join lineitem as lineitem_1
        inner join supplier as supplier_1
        on (lineitem_1.l_suppkey = supplier_1.s_suppkey )
      inner join orders as orders_2
      on (supplier_1.s_acctbal = orders_2.o_totalprice )
    on (orders_1.o_orderdate = lineitem_1.l_shipdate )
where supplier_1.s_name is not NULL
group by orders_1.o_orderstatus, supplier_1.s_phone, lineitem_1.l_commitdate, orders_1.o_totalprice, lineitem_1.l_linestatus, orders_2.o_clerk, orders_2.o_orderdate, orders_2.o_comment, lineitem_1.l_orderkey
limit 29;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  count(
    part_1.p_container), 
  max(
    partsupp_1.ps_partkey)
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_supplycost = part_1.p_retailprice )
where partsupp_1.ps_supplycost <= part_1.p_retailprice
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost
limit 4;
select  
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_linestatus), 
  max(
    lineitem_1.l_shipinstruct), 
  max(
    lineitem_1.l_partkey), 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_returnflag), 
  lineitem_1.provsql, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
group by lineitem_1.l_returnflag, lineitem_1.l_tax, lineitem_1.provsql, lineitem_1.l_discount, lineitem_1.l_discount
limit 14;
select  
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_address, 
  min(
    customer_1.c_mktsegment), 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_mktsegment < customer_1.c_phone
group by customer_1.c_comment, customer_1.c_nationkey, customer_1.c_address, customer_1.c_address, customer_1.c_nationkey
limit 23;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 11;
select  
  part_1.p_brand, 
  part_1.p_size, 
  part_1.provsql, 
  avg(
    part_1.p_retailprice), 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  count(
    part_1.p_type), 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_brand > part_1.p_mfgr
group by part_1.p_brand, part_1.p_size, part_1.provsql, part_1.p_retailprice, part_1.p_type, part_1.p_retailprice, part_1.p_name, part_1.p_name, part_1.p_retailprice, part_1.p_comment, part_1.p_brand, part_1.p_brand
limit 2;
select  
  max(
    supplier_1.s_phone), 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  avg(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_phone, supplier_1.s_nationkey, supplier_1.provsql, supplier_1.s_suppkey
limit 9;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  count(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.provsql < partsupp_1.provsql
group by partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.ps_comment
limit 12;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_discount, 
  partsupp_1.ps_supplycost, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipdate
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_tax is not NULL
limit 4;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_shippriority
limit 11;
select  
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
limit 8;
select  
  region_1.provsql
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_name = region_1.r_comment )
where customer_1.c_acctbal >= customer_1.c_acctbal
limit 39;
select  
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 28;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 38;
select  
  supplier_1.provsql
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_name = supplier_1.s_address )
where customer_1.c_custkey is not NULL
limit 27;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_phone), 
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.provsql, 
  min(
    supplier_1.s_phone), 
  supplier_1.s_nationkey, 
  supplier_1.provsql, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  supplier_1.provsql, 
  max(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
group by supplier_1.s_acctbal, supplier_1.s_acctbal, supplier_1.provsql, supplier_1.s_acctbal, supplier_1.s_suppkey, supplier_1.s_suppkey, supplier_1.provsql, supplier_1.s_nationkey, supplier_1.provsql, supplier_1.s_phone, supplier_1.provsql
limit 17;
select  
  min(
    partsupp_1.ps_supplycost), 
  supplier_1.s_nationkey
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_comment = supplier_1.s_address )
where supplier_1.s_phone is not NULL
group by supplier_1.s_nationkey
limit 24;
select  
  min(
    supplier_1.s_name), 
  region_1.r_name, 
  customer_1.c_acctbal, 
  region_1.provsql, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey
from 
  region as region_1
    inner join supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_phone = customer_1.c_phone )
    on (region_1.r_name = customer_1.c_phone )
where region_1.provsql is not NULL
group by region_1.r_name, customer_1.c_acctbal, region_1.provsql, supplier_1.s_comment, supplier_1.s_nationkey
limit 42;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 10;
select  
  nation_1.n_comment
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_name = nation_1.n_comment )
where customer_1.c_name is not NULL
limit 37;
select  
  supplier_1.s_phone, 
  max(
    supplier_1.s_phone), 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_comment, 
  supplier_1.provsql, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_phone, supplier_1.s_comment, supplier_1.provsql, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_acctbal
limit 34;
select  
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  max(
    supplier_1.s_phone), 
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_phone)
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_phone, supplier_1.s_phone, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_address, supplier_1.s_acctbal, supplier_1.s_nationkey, supplier_1.s_suppkey, supplier_1.s_address, supplier_1.s_phone, supplier_1.s_address, supplier_1.s_nationkey
limit 36;
select  
  max(
    lineitem_1.l_returnflag), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_1.l_orderkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode > lineitem_1.l_linestatus
group by lineitem_1.l_suppkey, lineitem_1.l_returnflag, lineitem_1.l_extendedprice
limit 18;
select  
  customer_1.c_comment, 
  avg(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_comment
limit 36;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  min(
    region_1.r_name), 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 18;
select  
  region_1.provsql, 
  count(
    region_1.r_name)
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.provsql
limit 40;
select  
  max(
    lineitem_1.l_discount), 
  sum(
    lineitem_1.l_discount), 
  part_1.provsql, 
  customer_1.c_name, 
  count(
    part_1.p_retailprice), 
  lineitem_1.l_returnflag, 
  customer_1.c_nationkey
from 
  lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_linestatus = part_1.p_mfgr )
    inner join customer as customer_1
    on (part_1.p_container = customer_1.c_phone )
where customer_1.c_address is not NULL
group by part_1.provsql, customer_1.c_name, lineitem_1.l_returnflag, customer_1.c_nationkey
limit 3;
select  
  orders_1.o_custkey, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.provsql >= orders_1.provsql
limit 41;
select  
  min(
    supplier_1.s_acctbal), 
  supplier_1.s_comment, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_comment, supplier_1.s_suppkey
limit 25;
select  
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  count(
    supplier_1.s_comment)
from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
group by supplier_1.s_comment, supplier_1.s_suppkey
limit 24;
select  
  avg(
    supplier_2.s_acctbal), 
  region_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  region_1.r_comment, 
  min(
    orders_1.o_shippriority), 
  region_1.r_regionkey, 
  supplier_2.s_name, 
  max(
    orders_1.o_orderdate)
from 
  region as region_1
      inner join supplier as supplier_1
        inner join supplier as supplier_2
        on (supplier_1.s_phone = supplier_2.s_name )
      on (region_1.provsql = supplier_2.provsql )
    inner join orders as orders_1
    on (supplier_2.s_address = orders_1.o_comment )
where region_1.r_name < supplier_1.s_name
group by region_1.provsql, orders_1.o_orderkey, orders_1.o_comment, region_1.r_comment, region_1.r_regionkey, supplier_2.s_name
limit 32;
select  
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_receiptdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_linestatus
limit 31;
select  
  orders_1.o_comment
from 
  orders as orders_1
    inner join lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_suppkey is not NULL
limit 8;
select  
  customer_1.c_comment
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_phone = orders_1.o_orderstatus )
where orders_1.o_comment is not NULL
limit 4;
select  
  part_1.provsql
from 
  part as part_1
where part_1.p_container is not NULL
limit 41;
select  
  count(
    orders_1.o_orderkey), 
  region_2.r_name, 
  supplier_1.s_suppkey, 
  supplier_1.provsql, 
  max(
    region_1.r_regionkey), 
  orders_1.o_orderkey
from 
  region as region_1
    inner join region as region_2
        inner join orders as orders_1
        on (region_2.provsql = orders_1.provsql )
      inner join supplier as supplier_1
      on (orders_1.o_comment = supplier_1.s_address )
    on (region_1.r_comment = region_2.r_comment )
where region_2.r_name is not NULL
group by region_2.r_name, supplier_1.s_suppkey, supplier_1.provsql, orders_1.o_orderkey
limit 39;
select  
  max(
    orders_1.o_totalprice), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  orders_1.o_orderpriority, 
  nation_1.n_comment
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderpriority = nation_1.n_name )
where orders_1.o_custkey is not NULL
group by nation_1.n_regionkey, nation_1.n_comment, nation_1.n_name, orders_1.o_orderpriority, nation_1.n_comment
limit 35;
select  
  lineitem_1.l_tax, 
  region_1.r_regionkey, 
  region_2.r_comment
from 
  region as region_1
    inner join region as region_2
      inner join lineitem as lineitem_1
      on (region_2.r_regionkey = lineitem_1.l_orderkey )
    on (region_1.provsql = region_2.provsql )
where lineitem_1.l_shipdate <= lineitem_1.l_receiptdate
limit 36;
select  
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_mktsegment)
from 
  customer as customer_1
where customer_1.c_custkey < customer_1.c_nationkey
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_acctbal
limit 13;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_availqty)
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.provsql, partsupp_1.ps_availqty, partsupp_1.provsql, partsupp_1.ps_supplycost
limit 30;
select  
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
group by supplier_1.s_nationkey
limit 38;
select distinct 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.provsql is not NULL
limit 42;
select  
  avg(
    orders_1.o_totalprice), 
  orders_1.o_comment, 
  partsupp_1.provsql
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_comment = partsupp_1.ps_comment )
where orders_1.o_totalprice is not NULL
group by orders_1.o_comment, partsupp_1.provsql
limit 11;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  max(
    supplier_1.s_name), 
  supplier_1.provsql, 
  supplier_1.provsql, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_address, supplier_1.provsql, supplier_1.provsql, supplier_1.s_nationkey, supplier_1.s_name, supplier_1.s_name, supplier_1.s_phone
limit 14;
select  
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 21;
select  
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 34;
select  
  part_1.p_partkey
from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_suppkey = lineitem_2.l_orderkey )
    on (part_1.p_retailprice = lineitem_2.l_quantity )
where lineitem_2.l_returnflag <= lineitem_1.l_shipinstruct
limit 33;
select  
  customer_2.c_mktsegment, 
  customer_2.c_acctbal
from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_name = customer_2.c_name )
where customer_1.c_nationkey is not NULL
limit 6;
select  
  min(
    supplier_1.s_phone), 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_suppkey, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_address, supplier_1.provsql, supplier_1.s_comment, supplier_1.s_phone, supplier_1.s_phone
limit 39;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_quantity, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 35;
select  
  count(*)
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 25;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct >= lineitem_1.l_returnflag
group by lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_tax, lineitem_1.l_orderkey, lineitem_1.l_suppkey, lineitem_1.l_shipinstruct
limit 26;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  part_2.p_size, 
  min(
    part_2.p_partkey), 
  part_1.p_container, 
  part_2.p_size, 
  part_2.p_container
from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join part as part_2
      on (part_1.p_container = part_2.p_mfgr )
    on (partsupp_1.ps_partkey = part_2.p_partkey )
where part_2.p_partkey > partsupp_1.ps_suppkey
group by partsupp_1.ps_supplycost, partsupp_1.ps_comment, part_2.p_size, part_1.p_container, part_2.p_size, part_2.p_container
limit 1;
select  
  orders_1.o_orderpriority, 
  supplier_1.s_suppkey, 
  part_1.p_size, 
  supplier_1.s_comment, 
  part_1.p_retailprice
from 
  supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_comment = orders_1.o_comment )
      inner join lineitem as lineitem_1
      on (supplier_1.s_phone = lineitem_1.l_returnflag )
    inner join part as part_1
    on (orders_1.o_custkey = part_1.p_partkey )
where lineitem_1.l_quantity <= lineitem_1.l_tax
limit 30;
select  
  partsupp_1.ps_partkey, 
  min(
    nation_1.n_nationkey), 
  orders_1.o_orderpriority, 
  count(
    nation_2.n_regionkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
        inner join orders as orders_1
        on (nation_1.n_name = orders_1.o_orderstatus )
      inner join nation as nation_2
      on (nation_1.n_regionkey = nation_2.n_nationkey )
    inner join partsupp as partsupp_1
    on (nation_2.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost > orders_1.o_totalprice
group by partsupp_1.ps_partkey, orders_1.o_orderpriority, nation_1.n_regionkey
limit 31;
select  
  customer_2.c_comment, 
  customer_2.c_acctbal, 
  region_1.r_name
from 
  part as part_1
    inner join region as region_1
          inner join customer as customer_1
          on (region_1.r_comment = customer_1.c_name )
        inner join region as region_2
        on (customer_1.c_mktsegment = region_2.r_name )
      inner join customer as customer_2
          inner join part as part_2
          on (customer_2.c_custkey = part_2.p_partkey )
        inner join region as region_3
        on (customer_2.c_nationkey = region_3.r_regionkey )
      on (region_1.r_regionkey = customer_2.c_custkey )
    on (part_1.provsql = part_2.provsql )
where part_1.p_retailprice <= part_2.p_retailprice
limit 36;
select  
  part_1.p_comment, 
  part_1.provsql
from 
  part as part_1
where part_1.p_comment is not NULL
limit 32;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.provsql, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  lineitem_1.l_comment, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 15;
select  
  part_1.p_type, 
  part_1.provsql, 
  part_1.provsql, 
  part_1.p_name
from 
  part as part_1
where part_1.provsql < part_1.provsql
limit 26;
select  
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 41;
select  
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_availqty
limit 7;
select  
  nation_1.provsql, 
  customer_1.c_address
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_phone = nation_1.n_name
limit 19;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 42;
select  
  region_1.provsql, 
  region_2.r_name
from 
  region as region_1
    inner join region as region_2
    on (region_1.provsql = region_2.provsql )
where region_1.provsql is not NULL
limit 41;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.provsql, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost
limit 35;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 25;
select  
  avg(
    partsupp_1.ps_supplycost), 
  nation_1.n_regionkey
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_comment = partsupp_1.ps_comment )
where nation_1.n_name is not NULL
group by nation_1.n_regionkey
limit 14;
select  
  part_1.p_partkey, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_comment is not NULL
limit 31;
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_retailprice < part_1.p_retailprice
limit 41;
select  
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 22;
select  
  min(
    supplier_1.s_phone), 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_name <= supplier_1.s_phone
group by supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_comment
limit 6;
select  
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderdate < orders_1.o_orderdate
limit 10;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
limit 9;
select  
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  min(
    supplier_1.s_phone), 
  partsupp_1.ps_comment, 
  supplier_1.s_suppkey, 
  nation_1.n_comment, 
  partsupp_1.ps_availqty, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  supplier_1.s_name, 
  supplier_1.provsql
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_availqty = nation_1.n_nationkey )
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where nation_1.provsql is not NULL
group by supplier_1.s_comment, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_comment, supplier_1.s_suppkey, nation_1.n_comment, partsupp_1.ps_availqty, nation_1.n_comment, nation_1.n_comment, supplier_1.s_name, supplier_1.provsql
limit 7;
select  
  orders_1.o_shippriority, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 28;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  count(
    part_1.p_comment), 
  sum(
    part_1.p_retailprice), 
  min(
    nation_1.n_nationkey)
from 
  part as part_1
    inner join partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.provsql = region_1.provsql )
      inner join nation as nation_1
      on (partsupp_1.ps_availqty = nation_1.n_nationkey )
    on (part_1.p_brand = region_1.r_name )
where part_1.p_size is not NULL
group by region_1.r_regionkey, region_1.r_regionkey
limit 23;
select  
  partsupp_1.ps_availqty, 
  min(
    nation_1.n_name), 
  nation_1.n_regionkey, 
  partsupp_1.ps_comment, 
  nation_1.provsql, 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_comment = nation_1.n_comment )
where nation_1.n_regionkey is not NULL
group by partsupp_1.ps_availqty, nation_1.n_regionkey, partsupp_1.ps_comment, nation_1.provsql, partsupp_1.ps_comment
limit 2;
select  
  customer_2.c_nationkey, 
  max(
    customer_1.c_phone), 
  region_1.r_name, 
  customer_1.c_address, 
  max(
    customer_1.c_mktsegment), 
  customer_2.c_custkey, 
  min(
    customer_2.c_acctbal), 
  customer_2.c_phone, 
  customer_1.c_acctbal, 
  region_1.r_comment, 
  min(
    customer_1.c_custkey)
from 
  customer as customer_1
    inner join region as region_1
      inner join customer as customer_2
      on (region_1.provsql = customer_2.provsql )
    on (customer_1.c_nationkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by customer_2.c_nationkey, region_1.r_name, customer_1.c_address, customer_2.c_custkey, customer_2.c_phone, customer_1.c_acctbal, region_1.r_comment
limit 13;
select  
  nation_1.n_regionkey, 
  min(
    lineitem_1.l_shipinstruct), 
  lineitem_1.l_comment, 
  lineitem_1.l_orderkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  lineitem_1.l_commitdate, 
  nation_1.n_name
from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_regionkey = lineitem_1.l_orderkey )
where nation_1.n_regionkey is not NULL
group by nation_1.n_regionkey, lineitem_1.l_comment, lineitem_1.l_orderkey, nation_1.n_nationkey, nation_1.n_name, nation_1.n_nationkey, lineitem_1.l_commitdate, nation_1.n_name
limit 8;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 39;
select  
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 24;
select  
  part_1.p_name
from 
  part as part_1
where part_1.p_container >= part_1.p_mfgr
limit 11;
select  
  partsupp_1.ps_comment, 
  region_1.r_comment, 
  partsupp_1.ps_partkey, 
  region_1.provsql, 
  max(
    partsupp_1.ps_partkey)
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.provsql = partsupp_1.provsql )
where region_1.r_regionkey is not NULL
group by partsupp_1.ps_comment, region_1.r_comment, partsupp_1.ps_partkey, region_1.provsql
limit 18;
select  
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 24;
select  
  region_1.r_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  region_1.r_comment
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 36;
select  
  region_1.r_name
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.provsql = region_1.provsql )
where region_1.r_regionkey is not NULL
limit 7;
select  
  part_1.provsql, 
  customer_1.c_name, 
  min(
    part_1.p_container), 
  nation_1.n_regionkey, 
  customer_1.c_custkey, 
  part_1.p_type, 
  part_1.p_mfgr, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  nation_1.provsql, 
  customer_1.c_acctbal, 
  nation_1.n_regionkey, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  nation_1.n_comment, 
  customer_1.provsql, 
  nation_1.n_nationkey, 
  part_1.p_size, 
  customer_1.c_phone, 
  nation_1.n_name
from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_comment = customer_1.c_name )
    inner join nation as nation_1
    on (part_1.p_container = nation_1.n_name )
where part_1.p_retailprice is not NULL
group by part_1.provsql, customer_1.c_name, nation_1.n_regionkey, customer_1.c_custkey, part_1.p_type, part_1.p_mfgr, customer_1.c_nationkey, customer_1.c_address, nation_1.provsql, customer_1.c_acctbal, nation_1.n_regionkey, customer_1.c_nationkey, customer_1.c_custkey, customer_1.c_address, nation_1.n_comment, customer_1.provsql, nation_1.n_nationkey, part_1.p_size, customer_1.c_phone, nation_1.n_name
limit 20;
select  
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.provsql <= lineitem_1.provsql
limit 5;
select  
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
limit 34;
select  
  supplier_1.provsql, 
  min(
    partsupp_1.ps_suppkey), 
  sum(
    partsupp_1.ps_availqty), 
  supplier_1.provsql, 
  supplier_1.s_phone, 
  max(
    supplier_1.s_phone), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_comment = partsupp_1.ps_comment )
where partsupp_1.ps_suppkey <= partsupp_1.ps_partkey
group by supplier_1.provsql, supplier_1.provsql, supplier_1.s_phone, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 18;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipdate, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_quantity > lineitem_1.l_extendedprice
group by lineitem_1.l_quantity, lineitem_1.l_suppkey, lineitem_1.l_shipdate, lineitem_1.l_extendedprice, lineitem_1.l_extendedprice, lineitem_1.l_commitdate, lineitem_1.l_commitdate
limit 8;
select  
  orders_1.o_totalprice, 
  count(*), 
  region_1.r_name, 
  avg(
    orders_1.o_custkey), 
  count(*), 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  region_1.provsql, 
  orders_1.o_custkey
from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_name = orders_1.o_orderstatus )
where region_1.provsql is not NULL
group by orders_1.o_totalprice, region_1.r_name, orders_1.o_totalprice, orders_1.o_orderdate, orders_1.o_orderpriority, region_1.provsql, orders_1.o_custkey
limit 17;
select  
  customer_1.c_custkey, 
  region_1.r_name
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_name = customer_1.c_phone )
where customer_1.c_phone is not NULL
limit 34;
select  
  min(
    orders_1.o_totalprice), 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_custkey
limit 12;
select  
  lineitem_1.l_quantity, 
  part_1.p_comment, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  part_1.p_partkey, 
  part_1.p_type
from 
  part as part_1
        inner join orders as orders_1
        on (part_1.p_comment = orders_1.o_comment )
      inner join lineitem as lineitem_1
      on (part_1.p_size = lineitem_1.l_orderkey )
    inner join customer as customer_1
    on (part_1.p_brand = customer_1.c_phone )
where part_1.p_brand is not NULL
limit 34;
select  
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 14;
select  
  customer_1.c_mktsegment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_acctbal, 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  sum(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_acctbal >= customer_1.c_acctbal
group by customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.provsql, customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_custkey, customer_1.c_comment, customer_1.c_name, customer_1.c_comment
limit 14;
select  
  supplier_1.s_name, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 15;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_quantity, 
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_extendedprice, lineitem_1.l_quantity, lineitem_1.l_tax, lineitem_1.l_tax, lineitem_1.l_comment, lineitem_1.l_shipmode, lineitem_1.l_receiptdate, lineitem_1.l_comment, lineitem_1.l_shipdate, lineitem_1.l_linenumber, lineitem_1.l_suppkey, lineitem_1.l_partkey, lineitem_1.l_suppkey, lineitem_1.l_returnflag, lineitem_1.l_receiptdate, lineitem_1.l_partkey, lineitem_1.l_shipdate
limit 25;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_comment, 
  lineitem_1.l_suppkey, 
  count(*), 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice, 
  count(*), 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_tax, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_comment, lineitem_1.l_suppkey, lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_tax
limit 25;
select  
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 19;
select  
  sum(
    partsupp_1.ps_suppkey), 
  count(*), 
  min(
    supplier_2.s_nationkey), 
  supplier_2.s_nationkey, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  nation_1.n_name, 
  partsupp_1.ps_availqty, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey
from 
  part as part_1
      inner join partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_availqty = supplier_1.s_suppkey )
      on (part_1.p_comment = partsupp_1.ps_comment )
    inner join nation as nation_1
      inner join supplier as supplier_2
      on (nation_1.n_nationkey = supplier_2.s_suppkey )
    on (partsupp_1.ps_availqty = nation_1.n_nationkey )
where supplier_2.s_suppkey is not NULL
group by supplier_2.s_nationkey, part_1.p_brand, part_1.p_mfgr, nation_1.n_name, partsupp_1.ps_availqty, supplier_1.s_suppkey, supplier_1.s_suppkey
limit 40;
select  
  min(
    partsupp_1.ps_partkey), 
  min(
    orders_1.o_orderkey), 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  orders_1.o_clerk, 
  partsupp_1.ps_comment, 
  count(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.provsql, 
  orders_1.o_comment
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_custkey = partsupp_1.ps_partkey )
where partsupp_1.provsql is not NULL
group by partsupp_1.ps_suppkey, orders_1.o_clerk, partsupp_1.ps_comment, partsupp_1.ps_availqty, orders_1.o_orderpriority, orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.provsql, orders_1.o_comment
limit 8;
select  
  supplier_1.s_suppkey, 
  orders_2.o_orderpriority
from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
        inner join orders as orders_1
        on (supplier_1.s_name = orders_1.o_orderstatus )
      on (lineitem_1.l_comment = orders_1.o_comment )
    inner join orders as orders_2
    on (lineitem_1.l_linenumber = orders_2.o_orderkey )
where orders_1.o_totalprice is not NULL
limit 40;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_supplycost), 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.provsql, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.provsql
limit 14;
select  
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 2;
select  
  nation_1.provsql, 
  part_1.p_mfgr, 
  nation_1.n_regionkey, 
  part_1.p_type, 
  nation_1.n_nationkey, 
  avg(
    nation_1.n_nationkey), 
  sum(
    part_1.p_retailprice), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  part_1.p_type, 
  nation_1.provsql
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_name = nation_1.n_comment )
where part_1.provsql > nation_1.provsql
group by nation_1.provsql, part_1.p_mfgr, nation_1.n_regionkey, part_1.p_type, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.n_nationkey, part_1.p_type, nation_1.provsql
limit 19;
select  
  customer_1.c_address
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_phone = supplier_1.s_name )
where supplier_1.provsql is not NULL
limit 9;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_supplycost), 
  sum(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.provsql
limit 31;
select  
  part_1.provsql, 
  partsupp_1.provsql
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_name = partsupp_1.ps_comment )
where partsupp_1.ps_supplycost > part_1.p_retailprice
limit 31;
select  
  max(
    nation_1.n_name), 
  nation_1.n_comment, 
  count(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  max(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  max(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_name, nation_1.n_name
limit 13;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  region_1.r_regionkey, 
  count(
    region_1.r_comment), 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  region_1.r_comment, 
  nation_1.n_comment
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_regionkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by nation_1.n_regionkey, nation_1.n_name, nation_1.n_nationkey, region_1.r_regionkey, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.n_nationkey, region_1.r_comment, nation_1.n_comment
limit 41;
select  
  count(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_nationkey, supplier_1.s_phone
limit 42;
select  
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_comment, 
  part_1.p_name, 
  max(
    part_1.p_mfgr), 
  part_1.provsql, 
  part_1.p_type, 
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  part_1.provsql, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_brand, part_1.p_type, part_1.p_comment, part_1.p_name, part_1.provsql, part_1.p_type, part_1.p_partkey, part_1.provsql, part_1.p_container, part_1.p_brand, part_1.p_container, part_1.p_retailprice
limit 18;
select  
  count(
    part_1.p_partkey)
from 
  part as part_1
where part_1.provsql >= part_1.provsql
limit 23;
select  
  supplier_1.s_acctbal, 
  part_1.p_retailprice, 
  part_1.provsql, 
  min(
    part_1.p_partkey), 
  part_1.provsql, 
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  supplier_1.s_phone, 
  part_1.provsql
from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_name = part_1.p_mfgr )
where part_1.provsql is not NULL
group by supplier_1.s_acctbal, part_1.p_retailprice, part_1.provsql, part_1.provsql, part_1.p_container, supplier_1.s_phone, part_1.provsql
limit 11;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_name), 
  max(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
group by nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_name, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_nationkey
limit 17;
select  
  avg(
    customer_1.c_acctbal), 
  customer_1.provsql, 
  customer_1.c_name, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey), 
  sum(
    customer_1.c_acctbal), 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_name = nation_1.n_comment )
where nation_1.n_name is not NULL
group by customer_1.provsql, customer_1.c_name, nation_1.provsql, nation_1.provsql, nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, nation_1.n_name, nation_1.n_name, customer_1.c_nationkey, customer_1.c_acctbal
limit 7;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.provsql = partsupp_1.provsql
limit 11;
select  
  partsupp_1.ps_availqty, 
  supplier_1.s_address
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_supplycost = supplier_1.s_acctbal )
where partsupp_1.provsql is not NULL
limit 34;
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 20;
select  
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  max(
    supplier_1.s_acctbal), 
  orders_1.o_totalprice, 
  supplier_1.s_suppkey, 
  orders_1.o_orderkey, 
  customer_1.c_phone
from 
  orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_clerk = customer_1.c_phone )
    inner join supplier as supplier_1
    on (customer_1.c_address = supplier_1.s_address )
where supplier_1.s_suppkey is not NULL
group by supplier_1.provsql, supplier_1.s_acctbal, customer_1.c_nationkey, customer_1.c_name, orders_1.o_totalprice, supplier_1.s_suppkey, orders_1.o_orderkey, customer_1.c_phone
limit 8;
select  
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_availqty), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.provsql > partsupp_1.provsql
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.provsql
limit 13;
select  
  partsupp_1.ps_partkey, 
  nation_2.n_name, 
  partsupp_1.ps_partkey, 
  nation_1.n_comment
from 
  nation as nation_1
    inner join partsupp as partsupp_1
      inner join nation as nation_2
      on (partsupp_1.ps_suppkey = nation_2.n_nationkey )
    on (nation_1.n_comment = partsupp_1.ps_comment )
where partsupp_1.ps_availqty is not NULL
limit 12;
select  
  orders_1.o_orderkey, 
  lineitem_1.l_tax, 
  orders_1.o_orderkey
from 
  customer as customer_1
    inner join nation as nation_1
      inner join lineitem as lineitem_1
        inner join orders as orders_1
        on (lineitem_1.l_comment = orders_1.o_comment )
      on (nation_1.provsql = lineitem_1.provsql )
    on (customer_1.c_name = orders_1.o_comment )
where lineitem_1.l_shipdate is not NULL
limit 20;
select  
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey > partsupp_1.ps_suppkey
group by partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_comment
limit 7;
select  
  region_1.r_name, 
  supplier_1.s_acctbal, 
  region_1.provsql, 
  min(
    lineitem_1.l_commitdate)
from 
  region as region_1
        inner join lineitem as lineitem_1
        on (region_1.r_regionkey = lineitem_1.l_orderkey )
      inner join supplier as supplier_1
      on (lineitem_1.l_tax = supplier_1.s_acctbal )
    inner join nation as nation_1
    on (region_1.provsql = nation_1.provsql )
where supplier_1.s_phone > lineitem_1.l_linestatus
group by region_1.r_name, supplier_1.s_acctbal, region_1.provsql
limit 31;
select  
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 10;
select  
  partsupp_1.provsql, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_phone), 
  customer_1.c_acctbal, 
  nation_1.n_comment, 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    on (customer_1.provsql = partsupp_1.provsql )
where customer_1.c_custkey = nation_1.n_regionkey
group by partsupp_1.provsql, customer_1.c_acctbal, customer_1.c_acctbal, nation_1.n_comment, nation_1.provsql, nation_1.provsql, nation_1.n_nationkey
limit 19;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  sum(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.provsql, 
  customer_1.c_address, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_acctbal >= customer_1.c_acctbal
group by customer_1.c_mktsegment, customer_1.c_address, customer_1.c_phone, customer_1.provsql, customer_1.c_address, customer_1.c_address
limit 22;
select  
  min(
    customer_1.c_acctbal), 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_name
limit 16;
select  
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  nation_1.n_name, 
  customer_1.provsql, 
  min(
    customer_1.c_custkey), 
  sum(
    customer_1.c_nationkey), 
  nation_1.provsql, 
  nation_1.n_comment, 
  customer_1.c_name, 
  max(
    customer_1.c_nationkey), 
  nation_1.n_name, 
  customer_1.c_nationkey
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.provsql = customer_1.provsql )
where nation_1.provsql <= customer_1.provsql
group by customer_1.c_phone, nation_1.n_name, customer_1.provsql, nation_1.provsql, nation_1.n_comment, customer_1.c_name, nation_1.n_name, customer_1.c_nationkey
limit 20;
select  
  nation_1.provsql, 
  avg(
    orders_1.o_custkey)
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_comment = nation_1.n_comment )
where nation_1.provsql is not NULL
group by nation_1.provsql
limit 30;
select  
  orders_1.o_comment
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_name = orders_1.o_orderstatus )
where orders_1.o_clerk < orders_1.o_orderstatus
limit 16;
select  
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  avg(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_comment, region_1.r_regionkey
limit 28;
select  
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_acctbal), 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  sum(
    customer_1.c_nationkey), 
  customer_1.c_name, 
  customer_1.provsql, 
  customer_1.c_name, 
  customer_1.provsql, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_custkey), 
  min(
    customer_1.c_custkey), 
  avg(
    customer_1.c_nationkey), 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_mktsegment = customer_1.c_phone
group by customer_1.c_address, customer_1.c_address, customer_1.c_mktsegment, customer_1.c_comment, customer_1.c_acctbal, customer_1.c_phone, customer_1.c_custkey, customer_1.c_phone, customer_1.c_nationkey, customer_1.c_mktsegment, customer_1.c_phone, customer_1.c_custkey, customer_1.c_name, customer_1.provsql, customer_1.c_name, customer_1.provsql, customer_1.c_name, customer_1.c_nationkey, customer_1.c_name
limit 16;
select  
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_orderstatus = orders_1.o_clerk
limit 7;
select  
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_comment = customer_1.c_name )
where supplier_1.s_name is not NULL
limit 27;
select  
  orders_2.o_custkey, 
  part_1.p_container, 
  orders_1.o_clerk, 
  lineitem_1.l_shipinstruct, 
  max(
    orders_2.o_clerk)
from 
  part as part_1
        inner join orders as orders_1
          inner join orders as orders_2
          on (orders_1.provsql = orders_2.provsql )
        on (part_1.p_container = orders_1.o_orderstatus )
      inner join lineitem as lineitem_1
      on (part_1.p_size = lineitem_1.l_orderkey )
    inner join nation as nation_1
    on (part_1.provsql = nation_1.provsql )
where orders_2.o_shippriority is not NULL
group by orders_2.o_custkey, part_1.p_container, orders_1.o_clerk, lineitem_1.l_shipinstruct
limit 18;
select  
  orders_1.provsql, 
  max(
    orders_1.o_orderstatus), 
  lineitem_1.l_receiptdate, 
  partsupp_1.ps_supplycost, 
  orders_1.o_totalprice, 
  partsupp_1.ps_partkey, 
  max(
    lineitem_1.l_shipinstruct), 
  partsupp_1.ps_availqty, 
  lineitem_1.l_shipinstruct, 
  orders_1.o_totalprice, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  count(*), 
  orders_1.o_clerk, 
  orders_1.o_totalprice
from 
  orders as orders_1
    inner join nation as nation_1
      inner join lineitem as lineitem_1
        inner join partsupp as partsupp_1
        on (lineitem_1.l_tax = partsupp_1.ps_supplycost )
      on (nation_1.n_name = lineitem_1.l_returnflag )
    on (orders_1.o_orderpriority = nation_1.n_name )
where partsupp_1.provsql is not NULL
group by orders_1.provsql, lineitem_1.l_receiptdate, partsupp_1.ps_supplycost, orders_1.o_totalprice, partsupp_1.ps_partkey, partsupp_1.ps_availqty, lineitem_1.l_shipinstruct, orders_1.o_totalprice, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_comment, orders_1.o_clerk, orders_1.o_totalprice
limit 14;
select  
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join orders as orders_1
        inner join partsupp as partsupp_2
        on (orders_1.o_custkey = partsupp_2.ps_partkey )
      inner join lineitem as lineitem_1
        inner join orders as orders_2
        on (lineitem_1.l_receiptdate = orders_2.o_orderdate )
      on (orders_1.o_clerk = lineitem_1.l_returnflag )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_2.ps_supplycost <= partsupp_1.ps_supplycost
limit 3;
select  
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 4;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  sum(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  count(*)
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_comment, nation_1.provsql, nation_1.n_name, nation_1.n_regionkey, nation_1.provsql, nation_1.n_nationkey
limit 34;
select  
  max(
    lineitem_1.l_commitdate), 
  orders_1.o_orderkey, 
  orders_1.o_clerk, 
  nation_1.provsql, 
  orders_1.o_orderpriority, 
  orders_2.o_shippriority, 
  orders_1.o_clerk, 
  count(
    nation_1.n_nationkey), 
  orders_1.provsql, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  count(*), 
  orders_1.o_orderkey, 
  orders_2.o_orderpriority, 
  orders_2.o_orderdate, 
  orders_2.o_totalprice, 
  orders_2.o_orderkey, 
  lineitem_1.l_shipdate
from 
  orders as orders_1
    inner join nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.n_name = lineitem_1.l_returnflag )
      inner join orders as orders_2
      on (lineitem_1.l_receiptdate = orders_2.o_orderdate )
    on (orders_1.o_orderpriority = orders_2.o_orderstatus )
where lineitem_1.l_comment is not NULL
group by orders_1.o_orderkey, orders_1.o_clerk, nation_1.provsql, orders_1.o_orderpriority, orders_2.o_shippriority, orders_1.o_clerk, orders_1.provsql, lineitem_1.l_shipdate, lineitem_1.l_tax, orders_1.o_orderkey, orders_2.o_orderpriority, orders_2.o_orderdate, orders_2.o_totalprice, orders_2.o_orderkey, lineitem_1.l_shipdate
limit 28;
select  
  sum(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey, supplier_1.s_address, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_comment, supplier_1.s_acctbal
limit 5;
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 20;
select  
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 35;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  avg(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_comment, 
  count(*), 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_name), 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
group by region_1.r_regionkey, region_1.r_name, region_1.provsql, region_1.provsql, region_1.provsql, region_1.r_name, region_1.r_name, region_1.r_comment, region_1.r_regionkey, region_1.r_regionkey, region_1.r_comment, region_1.r_regionkey, region_1.r_name, region_1.r_name, region_1.provsql, region_1.provsql, region_1.r_name, region_1.r_comment, region_1.r_name, region_1.provsql, region_1.r_comment, region_1.r_name, region_1.r_comment, region_1.provsql, region_1.r_name, region_1.r_regionkey
limit 37;
select  
  customer_2.c_comment, 
  sum(
    customer_2.c_acctbal), 
  customer_2.c_name
from 
  customer as customer_1
      inner join nation as nation_1
        inner join region as region_1
        on (nation_1.n_name = region_1.r_name )
      on (customer_1.c_mktsegment = region_1.r_name )
    inner join customer as customer_2
    on (region_1.r_comment = customer_2.c_name )
where customer_1.c_name is not NULL
group by customer_2.c_comment, customer_2.c_name
limit 31;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.provsql, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 12;
select  
  nation_1.provsql, 
  nation_1.n_regionkey, 
  customer_1.c_address
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_regionkey = customer_1.c_custkey )
where nation_1.provsql is not NULL
limit 26;
select  
  avg(
    lineitem_1.l_discount), 
  min(
    lineitem_1.l_partkey), 
  nation_1.n_regionkey, 
  max(
    lineitem_1.l_commitdate)
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_partkey = nation_1.n_nationkey )
where lineitem_1.l_shipdate >= lineitem_1.l_receiptdate
group by nation_1.n_regionkey
limit 17;
select  
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.provsql is not NULL
limit 26;
select  
  partsupp_1.ps_partkey, 
  part_1.provsql, 
  part_1.p_type, 
  nation_1.n_nationkey
from 
  part as part_1
      inner join partsupp as partsupp_1
      on (part_1.p_retailprice = partsupp_1.ps_supplycost )
    inner join nation as nation_1
    on (part_1.p_type = nation_1.n_comment )
where partsupp_1.provsql is not NULL
limit 16;
select  
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 5;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 9;
select  
  max(
    part_1.p_brand), 
  supplier_1.s_phone
from 
  nation as nation_1
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_nationkey = part_1.p_partkey )
    on (nation_1.n_comment = part_1.p_name )
where supplier_1.s_suppkey > supplier_1.s_nationkey
group by supplier_1.s_phone
limit 39;
select  
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 11;
select  
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 22;
select  
  min(
    region_1.r_regionkey), 
  region_1.provsql, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.provsql, region_1.r_name, region_1.provsql, region_1.provsql, region_1.provsql, region_1.r_comment, region_1.r_regionkey
limit 25;
select  
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 11;
select  
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.provsql > nation_1.provsql
group by nation_1.n_name, nation_1.provsql, nation_1.n_comment, nation_1.n_comment, nation_1.n_nationkey, nation_1.provsql, nation_1.n_nationkey, nation_1.provsql
limit 26;
select  
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderpriority), 
  orders_1.o_orderdate, 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_orderdate, orders_1.o_orderdate, orders_1.provsql
limit 36;
select distinct 
  region_1.r_name, 
  customer_1.c_acctbal, 
  region_1.provsql, 
  customer_1.c_mktsegment
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_mktsegment <= customer_1.c_phone
limit 7;
select  
  avg(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.provsql, 
  part_1.p_size, 
  sum(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_type
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_retailprice, part_1.p_size, part_1.provsql, part_1.p_size, part_1.p_size, part_1.p_retailprice, part_1.p_type
limit 22;
select  
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey), 
  lineitem_1.l_discount
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_availqty = lineitem_1.l_orderkey )
where lineitem_1.provsql >= partsupp_1.provsql
group by partsupp_1.ps_supplycost, lineitem_1.l_discount
limit 8;
select  
  max(
    part_1.p_container), 
  part_1.p_brand, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_brand, part_1.p_brand
limit 33;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  count(*), 
  partsupp_1.ps_suppkey, 
  supplier_2.s_nationkey, 
  supplier_2.s_comment, 
  supplier_2.s_nationkey, 
  supplier_2.s_phone
from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_availqty = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (partsupp_1.ps_supplycost = supplier_2.s_acctbal )
where partsupp_1.ps_supplycost >= supplier_1.s_acctbal
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, supplier_2.s_nationkey, supplier_2.s_comment, supplier_2.s_nationkey, supplier_2.s_phone
limit 17;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 2;
select  
  orders_1.o_shippriority, 
  orders_2.o_orderpriority, 
  orders_1.o_clerk, 
  orders_2.o_orderstatus, 
  orders_2.o_comment
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderstatus = orders_2.o_orderstatus )
where orders_1.o_custkey is not NULL
limit 25;
select  
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  nation_1.n_comment, 
  part_1.p_mfgr
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_brand = nation_1.n_name )
where nation_1.n_comment is not NULL
limit 16;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.provsql, 
  min(
    region_1.r_name), 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
group by region_1.r_regionkey, region_1.r_comment, region_1.r_comment, region_1.provsql, region_1.r_comment, region_1.provsql, region_1.r_comment, region_1.r_regionkey
limit 6;
select  
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_size, 
  nation_1.provsql, 
  nation_1.n_name, 
  part_1.p_comment
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.provsql = part_1.provsql )
where part_1.p_retailprice is not NULL
limit 6;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  partsupp_1.ps_partkey, 
  nation_1.n_regionkey, 
  avg(
    nation_1.n_regionkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_suppkey), 
  count(*)
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.provsql = partsupp_1.provsql )
where partsupp_1.provsql is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, nation_1.n_regionkey, nation_1.n_nationkey, partsupp_1.ps_partkey, nation_1.n_regionkey, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_partkey
limit 9;
select  
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  min(
    part_1.p_container), 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.provsql, 
  max(
    part_1.p_retailprice), 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.provsql, 
  max(
    part_1.p_container), 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment, part_1.p_size, part_1.p_retailprice, part_1.p_type, part_1.p_partkey, part_1.p_retailprice, part_1.p_comment, part_1.p_container, part_1.p_comment, part_1.p_partkey, part_1.p_size, part_1.p_brand, part_1.p_container, part_1.p_size, part_1.p_size, part_1.provsql, part_1.p_partkey, part_1.p_container, part_1.p_type, part_1.p_size, part_1.provsql, part_1.p_comment, part_1.p_size, part_1.p_comment, part_1.p_comment
limit 6;
select  
  region_1.r_regionkey, 
  supplier_2.s_comment, 
  region_1.provsql, 
  min(
    partsupp_1.ps_supplycost), 
  min(
    supplier_2.s_acctbal)
from 
  partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.provsql = supplier_1.provsql )
      inner join supplier as supplier_2
      on (partsupp_1.ps_availqty = supplier_2.s_suppkey )
    inner join region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    on (supplier_2.s_acctbal = customer_1.c_acctbal )
where region_1.r_comment is not NULL
group by region_1.r_regionkey, supplier_2.s_comment, region_1.provsql
limit 3;
select  
  supplier_1.s_phone, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  avg(
    supplier_1.s_acctbal), 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.provsql, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
group by supplier_1.s_phone, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_nationkey, supplier_1.s_suppkey, supplier_1.s_address, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_name, supplier_1.s_name, supplier_1.s_acctbal, supplier_1.s_acctbal, supplier_1.provsql, supplier_1.s_suppkey
limit 34;
select  
  customer_1.c_phone, 
  customer_2.c_comment, 
  orders_1.o_shippriority, 
  min(
    customer_1.c_acctbal), 
  orders_1.o_custkey, 
  supplier_1.s_suppkey, 
  customer_2.provsql, 
  supplier_1.s_name
from 
  supplier as supplier_1
      inner join customer as customer_1
        inner join customer as customer_2
        on (customer_1.c_name = customer_2.c_name )
      on (supplier_1.provsql = customer_1.provsql )
    inner join orders as orders_1
    on (supplier_1.s_name = orders_1.o_orderstatus )
where supplier_1.s_acctbal is not NULL
group by customer_1.c_phone, customer_2.c_comment, orders_1.o_shippriority, orders_1.o_custkey, supplier_1.s_suppkey, customer_2.provsql, supplier_1.s_name
limit 2;
select  
  orders_2.o_totalprice, 
  orders_2.o_totalprice
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_1.o_orderstatus is not NULL
limit 31;
select  
  part_1.p_retailprice
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_name is not NULL
limit 30;
select  
  orders_1.o_shippriority, 
  supplier_1.s_suppkey, 
  avg(
    lineitem_1.l_linenumber), 
  lineitem_1.l_quantity, 
  orders_1.o_shippriority, 
  lineitem_1.l_comment
from 
  nation as nation_1
    inner join orders as orders_1
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.provsql = lineitem_1.provsql )
      on (orders_1.o_orderstatus = lineitem_1.l_returnflag )
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where lineitem_1.l_commitdate > lineitem_1.l_shipdate
group by orders_1.o_shippriority, supplier_1.s_suppkey, lineitem_1.l_quantity, orders_1.o_shippriority, lineitem_1.l_comment
limit 30;
select  
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_comment = partsupp_1.ps_comment )
where lineitem_1.l_returnflag is not NULL
limit 36;
select  
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 24;
select  
  nation_1.n_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_availqty = nation_1.n_nationkey )
    inner join supplier as supplier_1
    on (nation_1.n_name = supplier_1.s_name )
where supplier_1.s_name is not NULL
limit 5;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 8;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_name)
from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
group by region_1.r_regionkey, region_1.r_regionkey
limit 27;
select  
  customer_1.provsql, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  max(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_acctbal = customer_1.c_acctbal )
where supplier_1.s_nationkey is not NULL
group by customer_1.provsql, customer_1.c_address, customer_1.c_nationkey, customer_1.c_name
limit 34;
select  
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_type
from 
  part as part_1
where part_1.p_size is not NULL
limit 8;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.provsql, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
group by lineitem_1.l_linenumber, lineitem_1.provsql, lineitem_1.l_quantity, lineitem_1.l_orderkey
limit 9;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey), 
  sum(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey
limit 16;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.provsql, 
  min(
    region_1.r_name), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  min(
    region_1.r_name), 
  region_1.provsql
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.provsql, region_1.r_comment, region_1.r_comment, region_1.r_name, region_1.provsql
limit 32;
select  
  part_1.p_mfgr, 
  max(
    part_1.p_retailprice), 
  part_1.p_partkey, 
  part_1.p_name, 
  customer_1.provsql, 
  nation_2.n_comment, 
  count(
    nation_1.n_nationkey)
from 
  nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_name = nation_2.n_name )
    inner join customer as customer_1
      inner join part as part_1
      on (customer_1.c_nationkey = part_1.p_partkey )
    on (nation_2.n_comment = part_1.p_name )
where nation_1.provsql <= nation_2.provsql
group by part_1.p_mfgr, part_1.p_partkey, part_1.p_name, customer_1.provsql, nation_2.n_comment
limit 2;
select  
  customer_1.c_custkey, 
  supplier_1.s_nationkey, 
  customer_1.c_name, 
  max(
    customer_1.c_nationkey), 
  supplier_1.s_acctbal, 
  customer_1.c_comment
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where customer_1.c_phone < customer_1.c_mktsegment
group by customer_1.c_custkey, supplier_1.s_nationkey, customer_1.c_name, supplier_1.s_acctbal, customer_1.c_comment
limit 17;
select  
  avg(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.provsql, 
  avg(
    part_1.p_size), 
  part_1.p_partkey, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_comment, part_1.p_retailprice, part_1.p_type, part_1.p_partkey, part_1.provsql, part_1.p_partkey, part_1.p_partkey
limit 10;
select  
  orders_1.o_custkey, 
  supplier_3.s_nationkey, 
  min(
    orders_1.o_orderdate), 
  supplier_1.provsql
from 
  orders as orders_1
      inner join supplier as supplier_1
        inner join supplier as supplier_2
        on (supplier_1.provsql = supplier_2.provsql )
      on (orders_1.o_orderstatus = supplier_1.s_name )
    inner join supplier as supplier_3
    on (orders_1.o_totalprice = supplier_3.s_acctbal )
where orders_1.o_orderpriority <= supplier_2.s_name
group by orders_1.o_custkey, supplier_3.s_nationkey, supplier_1.provsql
limit 31;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  avg(
    partsupp_1.ps_supplycost), 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  partsupp_1.ps_supplycost, 
  supplier_1.s_acctbal, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.provsql = supplier_1.provsql )
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_availqty, supplier_1.s_comment, supplier_1.s_comment, partsupp_1.ps_supplycost, supplier_1.s_acctbal, partsupp_1.ps_partkey
limit 36;
select  
  customer_1.c_acctbal, 
  count(
    customer_1.c_custkey)
from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_mktsegment = customer_2.c_phone )
    inner join supplier as supplier_1
    on (customer_2.provsql = supplier_1.provsql )
where customer_1.provsql is not NULL
group by customer_1.c_acctbal
limit 39;
select  
  customer_1.c_address, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey)
from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
        inner join supplier as supplier_1
        on (partsupp_2.ps_partkey = supplier_1.s_suppkey )
      on (partsupp_1.provsql = partsupp_2.provsql )
    on (customer_1.c_comment = supplier_1.s_address )
where partsupp_1.ps_supplycost is not NULL
group by customer_1.c_address, partsupp_1.provsql, partsupp_1.ps_comment
limit 35;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 42;
select  
  region_1.provsql, 
  max(
    region_1.r_name), 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.provsql, region_1.r_regionkey, region_1.r_name
limit 13;
select  
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 19;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_name), 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_acctbal, supplier_1.s_acctbal, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_acctbal, supplier_1.s_phone
limit 7;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipdate, 
  lineitem_1.provsql, 
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.l_receiptdate, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_shipinstruct, lineitem_1.l_shipdate, lineitem_1.provsql, lineitem_1.l_commitdate, lineitem_1.l_receiptdate, lineitem_1.provsql
limit 9;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
limit 11;
select  
  region_1.r_comment, 
  part_1.provsql, 
  min(
    region_1.r_name), 
  max(
    part_1.p_partkey), 
  part_1.p_partkey, 
  region_1.r_name
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_mfgr = region_1.r_name )
where part_1.p_partkey > region_1.r_regionkey
group by region_1.r_comment, part_1.provsql, part_1.p_partkey, region_1.r_name
limit 19;
select  
  lineitem_2.l_suppkey, 
  count(*), 
  lineitem_1.l_discount, 
  lineitem_2.l_extendedprice
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_shipinstruct = lineitem_2.l_returnflag )
where lineitem_1.l_shipdate is not NULL
group by lineitem_2.l_suppkey, lineitem_1.l_discount, lineitem_2.l_extendedprice
limit 10;
select  
  customer_1.provsql
from 
  partsupp as partsupp_1
      inner join orders as orders_1
      on (partsupp_1.ps_availqty = orders_1.o_orderkey )
    inner join customer as customer_1
    on (orders_1.provsql = customer_1.provsql )
where customer_1.c_address is not NULL
limit 29;
select  
  min(
    partsupp_1.ps_availqty), 
  customer_1.c_name, 
  min(
    lineitem_1.l_shipdate), 
  customer_1.c_phone, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipmode, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_linestatus
from 
  region as region_1
    inner join partsupp as partsupp_1
        inner join lineitem as lineitem_1
          inner join customer as customer_1
          on (lineitem_1.l_discount = customer_1.c_acctbal )
        on (partsupp_1.ps_availqty = customer_1.c_custkey )
      inner join nation as nation_1
      on (partsupp_1.ps_availqty = nation_1.n_nationkey )
    on (region_1.r_comment = partsupp_1.ps_comment )
where partsupp_1.ps_partkey is not NULL
group by customer_1.c_name, customer_1.c_phone, lineitem_1.l_shipmode, lineitem_1.l_shipmode, partsupp_1.ps_availqty, lineitem_1.l_linestatus
limit 30;
select  
  region_1.provsql, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  region_1.r_regionkey
from 
  part as part_1
    inner join supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_comment = region_1.r_comment )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where region_1.r_comment is not NULL
limit 1;
select  
  orders_1.o_orderpriority
from 
  orders as orders_1
    inner join orders as orders_2
      inner join orders as orders_3
      on (orders_2.o_totalprice = orders_3.o_totalprice )
    on (orders_1.o_orderpriority = orders_2.o_orderstatus )
where orders_2.o_orderstatus is not NULL
limit 29;
select  
  min(
    customer_1.c_acctbal), 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.provsql = region_1.provsql )
where customer_1.c_acctbal is not NULL
group by customer_1.c_mktsegment, customer_1.c_nationkey
limit 26;
select  
  max(
    part_1.p_brand), 
  supplier_1.s_name, 
  max(
    supplier_1.s_name)
from 
  supplier as supplier_1
    inner join region as region_1
      inner join part as part_1
      on (region_1.provsql = part_1.provsql )
    on (supplier_1.s_name = part_1.p_mfgr )
where region_1.r_regionkey is not NULL
group by supplier_1.s_name
limit 30;
select  
  supplier_1.s_name
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_comment = supplier_1.s_address )
where supplier_1.s_suppkey is not NULL
limit 8;
select  
  min(
    part_1.p_retailprice)
from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_totalprice = part_1.p_retailprice )
where part_1.p_retailprice > orders_1.o_totalprice
limit 9;
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  min(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment
limit 39;
select  
  nation_1.n_comment
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_regionkey = part_1.p_partkey )
where part_1.p_comment is not NULL
limit 37;
select  
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber = lineitem_1.l_suppkey
limit 20;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  min(
    partsupp_1.ps_availqty)
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_supplycost, partsupp_1.provsql
limit 30;
select  
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_nationkey = supplier_1.s_suppkey )
where customer_1.c_address is not NULL
group by supplier_1.s_acctbal, customer_1.c_nationkey
limit 27;
select  
  supplier_1.s_comment, 
  lineitem_1.l_quantity, 
  supplier_1.s_address
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_phone = lineitem_1.l_returnflag )
where lineitem_1.provsql is not NULL
limit 2;
select  
  sum(
    orders_2.o_totalprice), 
  orders_1.o_clerk, 
  orders_2.o_orderdate, 
  orders_2.o_shippriority, 
  nation_1.n_name, 
  min(
    nation_1.n_nationkey), 
  orders_2.o_custkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_2.o_comment
from 
  orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_comment = orders_2.o_comment )
    inner join nation as nation_1
    on (orders_1.o_orderpriority = nation_1.n_name )
where nation_1.provsql is not NULL
group by orders_1.o_clerk, orders_2.o_orderdate, orders_2.o_shippriority, nation_1.n_name, orders_2.o_custkey, nation_1.n_comment, nation_1.n_comment, orders_1.o_custkey, orders_1.o_orderstatus, orders_2.o_comment
limit 39;
select  
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.provsql is not NULL
limit 31;
select  
  customer_1.c_address
from 
  part as part_1
      inner join region as region_1
      on (part_1.p_name = region_1.r_comment )
    inner join customer as customer_1
    on (region_1.provsql = customer_1.provsql )
where customer_1.c_nationkey = part_1.p_size
limit 27;
select  
  max(
    lineitem_1.l_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_orderkey
from 
  orders as orders_1
      inner join region as region_1
      on (orders_1.o_custkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
    on (orders_1.o_comment = lineitem_1.l_comment )
where orders_1.o_totalprice is not NULL
group by orders_1.o_orderdate, orders_1.o_orderkey
limit 31;
select  
  orders_1.o_custkey, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 27;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_orderpriority), 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_orderstatus)
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_totalprice, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderpriority, orders_1.o_orderpriority, orders_1.o_orderpriority
limit 39;
select  
  nation_1.n_name, 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_name, nation_1.provsql, nation_1.n_nationkey
limit 20;
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.provsql, nation_1.n_comment, nation_1.n_name
limit 38;
select  
  orders_1.o_comment, 
  part_1.p_retailprice
from 
  part as part_1
            inner join partsupp as partsupp_1
            on (part_1.provsql = partsupp_1.provsql )
          inner join partsupp as partsupp_2
          on (part_1.p_size = partsupp_2.ps_partkey )
        inner join partsupp as partsupp_3
        on (partsupp_2.ps_suppkey = partsupp_3.ps_partkey )
      inner join supplier as supplier_1
      on (part_1.provsql = supplier_1.provsql )
    inner join orders as orders_1
    on (supplier_1.s_nationkey = orders_1.o_orderkey )
where orders_1.o_totalprice >= part_1.p_retailprice
limit 39;
select  
  lineitem_1.provsql, 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_shipdate = orders_1.o_orderdate )
    inner join supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.s_name = nation_1.n_name )
    on (lineitem_1.l_linenumber = supplier_1.s_suppkey )
where supplier_1.s_suppkey is not NULL
limit 26;
select  
  nation_1.n_nationkey, 
  nation_2.n_name, 
  nation_2.n_comment, 
  nation_2.n_regionkey
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_name = nation_2.n_name )
where nation_2.n_comment is not NULL
limit 13;
select  
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 15;
select  
  supplier_1.s_name, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 35;
select  
  orders_2.o_clerk, 
  min(
    orders_2.o_orderdate)
from 
  orders as orders_1
      inner join customer as customer_1
          inner join orders as orders_2
          on (customer_1.provsql = orders_2.provsql )
        inner join partsupp as partsupp_1
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      on (orders_1.o_shippriority = orders_2.o_orderkey )
    inner join customer as customer_2
    on (orders_1.o_orderstatus = customer_2.c_phone )
where orders_1.o_orderkey is not NULL
group by orders_2.o_clerk
limit 7;
select  
  orders_1.provsql, 
  partsupp_2.ps_comment, 
  max(
    lineitem_1.l_receiptdate), 
  partsupp_2.ps_partkey
from 
  customer as customer_1
      inner join region as region_1
      on (customer_1.provsql = region_1.provsql )
    inner join partsupp as partsupp_1
          inner join orders as orders_1
          on (partsupp_1.ps_availqty = orders_1.o_orderkey )
        inner join lineitem as lineitem_1
        on (orders_1.o_shippriority = lineitem_1.l_orderkey )
      inner join partsupp as partsupp_2
          inner join orders as orders_2
          on (partsupp_2.ps_suppkey = orders_2.o_orderkey )
        inner join supplier as supplier_1
          inner join customer as customer_2
          on (supplier_1.s_nationkey = customer_2.c_custkey )
        on (orders_2.o_custkey = customer_2.c_custkey )
      on (partsupp_1.ps_comment = supplier_1.s_address )
    on (region_1.r_name = orders_2.o_orderstatus )
where orders_1.o_orderdate is not NULL
group by orders_1.provsql, partsupp_2.ps_comment, partsupp_2.ps_partkey
limit 42;
select  
  supplier_1.s_name, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_linestatus), 
  supplier_1.s_name, 
  lineitem_1.l_shipdate, 
  nation_1.n_nationkey, 
  region_1.r_name, 
  max(
    lineitem_1.l_tax), 
  region_1.provsql, 
  supplier_1.provsql, 
  part_1.p_size, 
  part_1.p_name, 
  supplier_1.s_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  lineitem_1.l_returnflag, 
  supplier_1.s_acctbal, 
  part_1.p_comment, 
  nation_1.provsql, 
  lineitem_1.l_linenumber, 
  nation_1.n_nationkey, 
  part_1.p_container
from 
  supplier as supplier_1
      inner join part as part_1
        inner join nation as nation_1
          inner join region as region_1
          on (nation_1.provsql = region_1.provsql )
        on (part_1.p_partkey = region_1.r_regionkey )
      on (supplier_1.s_name = part_1.p_mfgr )
    inner join lineitem as lineitem_1
    on (part_1.provsql = lineitem_1.provsql )
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_name, lineitem_1.l_comment, supplier_1.s_name, lineitem_1.l_shipdate, nation_1.n_nationkey, region_1.r_name, region_1.provsql, supplier_1.provsql, part_1.p_size, part_1.p_name, supplier_1.s_comment, region_1.r_comment, region_1.r_regionkey, lineitem_1.l_returnflag, supplier_1.s_acctbal, part_1.p_comment, nation_1.provsql, lineitem_1.l_linenumber, nation_1.n_nationkey, part_1.p_container
limit 3;
select  
  count(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_partkey
limit 24;
select  
  count(*), 
  customer_1.c_nationkey, 
  min(
    customer_1.c_mktsegment), 
  min(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_acctbal >= customer_1.c_acctbal
group by customer_1.c_nationkey
limit 16;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_returnflag, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_acctbal = lineitem_1.l_quantity )
where lineitem_1.l_linestatus < lineitem_1.l_shipinstruct
limit 11;
select  
  customer_1.c_address, 
  customer_1.c_custkey, 
  partsupp_1.ps_suppkey
from 
  orders as orders_1
      inner join partsupp as partsupp_1
      on (orders_1.o_comment = partsupp_1.ps_comment )
    inner join partsupp as partsupp_2
      inner join customer as customer_1
      on (partsupp_2.ps_comment = customer_1.c_name )
    on (partsupp_1.provsql = partsupp_2.provsql )
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 2;
select  
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_suppkey, 
  part_1.p_retailprice
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_returnflag = part_1.p_mfgr )
where lineitem_1.l_shipinstruct is not NULL
group by lineitem_1.l_suppkey, part_1.p_retailprice
limit 6;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  region_1.provsql, 
  region_1.r_name, 
  nation_1.n_regionkey, 
  count(*), 
  region_2.r_name, 
  region_2.r_name, 
  region_2.r_regionkey, 
  min(
    region_2.r_name), 
  region_2.r_name, 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
      inner join nation as nation_1
      on (region_1.r_comment = nation_1.n_comment )
    inner join region as region_2
    on (region_1.r_comment = region_2.r_comment )
where region_1.provsql is not NULL
group by nation_1.n_regionkey, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_nationkey, region_1.provsql, region_1.r_name, nation_1.n_regionkey, region_2.r_name, region_2.r_name, region_2.r_regionkey, region_2.r_name, region_1.r_regionkey, region_1.r_name
limit 30;
select  
  sum(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_comment
limit 5;
select  
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  nation_1.n_comment
from 
  orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_shippriority = orders_2.o_orderkey )
      inner join region as region_1
      on (orders_2.o_shippriority = region_1.r_regionkey )
    inner join nation as nation_1
    on (region_1.r_name = nation_1.n_name )
where orders_2.provsql is not NULL
limit 16;
select  
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 9;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.provsql = orders_1.provsql )
where orders_1.provsql >= supplier_1.provsql
limit 6;
select  
  part_1.p_container, 
  min(
    part_1.p_mfgr)
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
group by part_1.p_container
limit 37;
select  
  lineitem_1.l_comment, 
  count(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_partkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_partkey, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_shipinstruct), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipdate, 
  count(*), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_tax), 
  lineitem_1.l_quantity, 
  sum(
    lineitem_1.l_tax), 
  lineitem_1.l_shipdate, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
group by lineitem_1.l_comment, lineitem_1.l_partkey, lineitem_1.l_tax, lineitem_1.l_partkey, lineitem_1.l_discount, lineitem_1.l_shipdate, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_receiptdate, lineitem_1.l_quantity, lineitem_1.l_linestatus, lineitem_1.l_linestatus, lineitem_1.l_shipinstruct, lineitem_1.l_quantity, lineitem_1.l_shipdate, lineitem_1.provsql
limit 27;
select  
  region_1.r_name, 
  sum(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.provsql
from 
  region as region_1
where region_1.provsql > region_1.provsql
group by region_1.r_name, region_1.r_name, region_1.r_name, region_1.r_regionkey, region_1.r_name, region_1.r_regionkey, region_1.provsql
limit 11;
select  
  orders_1.o_orderdate, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  orders_2.o_orderkey, 
  sum(
    supplier_1.s_acctbal), 
  count(
    orders_1.o_comment), 
  orders_2.provsql, 
  orders_2.o_orderdate, 
  supplier_1.s_suppkey, 
  max(
    orders_1.o_orderstatus), 
  orders_2.o_custkey, 
  orders_2.o_orderkey, 
  orders_2.o_orderdate, 
  min(
    orders_2.o_orderstatus)
from 
  orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderdate = orders_2.o_orderdate )
      inner join supplier as supplier_1
      on (orders_2.o_totalprice = supplier_1.s_acctbal )
    inner join partsupp as partsupp_1
    on (orders_2.o_custkey = partsupp_1.ps_partkey )
where orders_1.o_orderstatus = supplier_1.s_name
group by orders_1.o_orderdate, supplier_1.s_acctbal, supplier_1.s_comment, orders_2.o_orderkey, orders_2.provsql, orders_2.o_orderdate, supplier_1.s_suppkey, orders_2.o_custkey, orders_2.o_orderkey, orders_2.o_orderdate
limit 8;
select  
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.provsql
from 
  part as part_1
where part_1.p_brand is not NULL
limit 38;
select  
  customer_1.c_comment, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 14;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_commitdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_shipmode
limit 34;
select  
  max(
    nation_1.n_name), 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_regionkey, nation_1.provsql, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.n_regionkey
limit 5;
select  
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_name is not NULL
limit 15;
select  
  sum(
    part_1.p_retailprice)
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_type = customer_1.c_name )
where customer_1.c_acctbal is not NULL
limit 37;
select  
  part_1.p_comment, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_suppkey = part_1.p_partkey )
where lineitem_1.l_receiptdate is not NULL
limit 5;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  sum(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_regionkey, nation_1.n_name, nation_1.n_name, nation_1.n_name, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_regionkey
limit 27;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  max(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  avg(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.provsql, nation_1.n_name, nation_1.provsql, nation_1.provsql, nation_1.n_name, nation_1.n_nationkey, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_name, nation_1.n_comment, nation_1.n_comment, nation_1.n_name
limit 42;
select  
  part_2.p_size, 
  max(
    lineitem_1.l_tax), 
  part_2.p_brand
from 
  part as part_1
        inner join nation as nation_1
          inner join part as part_2
          on (nation_1.n_nationkey = part_2.p_partkey )
        on (part_1.p_comment = part_2.p_name )
      inner join lineitem as lineitem_1
      on (part_1.p_retailprice = lineitem_1.l_quantity )
    inner join part as part_3
    on (part_1.p_type = part_3.p_name )
where nation_1.n_regionkey is not NULL
group by part_2.p_size, part_2.p_brand
limit 4;
select  
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_container, 
  min(
    part_1.p_size), 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_comment, 
  max(
    part_1.p_partkey), 
  min(
    part_1.p_partkey), 
  part_1.p_type
from 
  part as part_1
where part_1.p_brand < part_1.p_mfgr
group by part_1.p_mfgr, part_1.p_partkey, part_1.p_retailprice, part_1.p_container, part_1.p_type, part_1.p_size, part_1.p_comment, part_1.p_type
limit 15;
select  
  customer_1.c_name, 
  supplier_1.s_acctbal, 
  customer_1.c_acctbal
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.provsql = customer_1.provsql )
where supplier_1.s_nationkey <= supplier_1.s_suppkey
limit 16;
select  
  max(
    customer_1.c_acctbal), 
  customer_1.c_acctbal, 
  avg(
    customer_1.c_acctbal)
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_acctbal
limit 37;
select  
  max(
    region_1.r_name), 
  sum(
    customer_1.c_custkey), 
  region_1.r_comment
from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_acctbal = partsupp_1.ps_supplycost )
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
group by region_1.r_comment
limit 3;
select  
  region_1.provsql, 
  region_1.r_comment, 
  max(
    lineitem_2.l_shipdate), 
  lineitem_1.l_comment, 
  part_1.p_brand
from 
  part as part_1
    inner join lineitem as lineitem_1
          inner join supplier as supplier_1
          on (lineitem_1.provsql = supplier_1.provsql )
        inner join region as region_1
        on (lineitem_1.l_linenumber = region_1.r_regionkey )
      inner join lineitem as lineitem_2
      on (lineitem_1.l_linenumber = lineitem_2.l_orderkey )
    on (part_1.p_retailprice = lineitem_1.l_quantity )
where region_1.provsql is not NULL
group by region_1.provsql, region_1.r_comment, lineitem_1.l_comment, part_1.p_brand
limit 9;
select  
  supplier_1.s_nationkey
from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.provsql = supplier_1.provsql )
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_supplycost = lineitem_1.l_quantity )
where supplier_1.s_name is not NULL
limit 21;
select distinct 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  min(
    lineitem_1.l_shipdate)
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_partkey = nation_1.n_nationkey )
where lineitem_1.l_commitdate is not NULL
group by lineitem_1.l_receiptdate, lineitem_1.l_suppkey, nation_1.provsql, nation_1.provsql, nation_1.n_nationkey
limit 32;
select  
  region_1.provsql, 
  sum(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql
from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
group by region_1.provsql, region_1.r_regionkey, region_1.r_regionkey, region_1.r_name, region_1.r_regionkey, region_1.r_name, region_1.r_regionkey, region_1.r_name, region_1.provsql
limit 25;
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  min(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.provsql, nation_1.n_nationkey, nation_1.provsql
limit 13;
select  
  min(
    supplier_1.s_name), 
  max(
    supplier_1.s_acctbal), 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.provsql > supplier_1.provsql
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_phone
limit 33;
select distinct 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  max(
    supplier_1.s_acctbal), 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_phone <= supplier_1.s_name
group by supplier_1.s_comment, supplier_1.s_phone, supplier_1.s_address, supplier_1.s_nationkey
limit 25;
select  
  nation_1.n_nationkey, 
  customer_1.c_name
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.provsql is not NULL
limit 19;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  count(*), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  sum(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey < partsupp_1.ps_availqty
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_comment
limit 22;
select  
  nation_1.n_comment, 
  region_1.r_regionkey
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_comment = region_1.r_comment )
where nation_1.provsql <= region_1.provsql
limit 4;
select  
  avg(
    lineitem_1.l_discount), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_suppkey, 
  lineitem_1.provsql, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber > lineitem_1.l_partkey
group by lineitem_1.l_returnflag, lineitem_1.l_extendedprice, lineitem_1.l_tax, lineitem_1.l_extendedprice, lineitem_1.l_suppkey, lineitem_1.provsql, lineitem_1.l_extendedprice, lineitem_1.l_shipinstruct, lineitem_1.l_linestatus, lineitem_1.l_shipmode
limit 5;
select  
  part_1.p_type, 
  part_1.p_size, 
  nation_1.n_regionkey
from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join customer as customer_1
    on (nation_1.n_regionkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
limit 21;
select  
  part_1.p_container, 
  part_1.provsql, 
  part_1.p_brand
from 
  nation as nation_1
    inner join partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_comment = part_1.p_name )
    on (nation_1.provsql = part_1.provsql )
where nation_1.n_nationkey is not NULL
limit 19;
select  
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_phone > customer_1.c_mktsegment
limit 17;
select  
  nation_1.n_name, 
  partsupp_1.ps_supplycost, 
  nation_1.n_regionkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_suppkey = nation_1.n_nationkey )
where nation_1.n_name >= nation_1.n_name
limit 27;
select  
  region_1.r_regionkey, 
  nation_2.n_nationkey, 
  avg(
    region_1.r_regionkey), 
  region_1.r_comment, 
  nation_1.n_nationkey, 
  region_1.provsql, 
  nation_1.n_name
from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_comment = region_1.r_comment )
    inner join nation as nation_2
    on (region_1.r_comment = nation_2.n_comment )
where region_1.r_comment is not NULL
group by region_1.r_regionkey, nation_2.n_nationkey, region_1.r_comment, nation_1.n_nationkey, region_1.provsql, nation_1.n_name
limit 13;
select  
  max(
    lineitem_1.l_shipdate), 
  supplier_3.s_acctbal, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_discount, 
  supplier_1.s_comment, 
  lineitem_1.l_extendedprice
from 
  supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.provsql = supplier_2.provsql )
    inner join lineitem as lineitem_1
      inner join supplier as supplier_3
      on (lineitem_1.l_returnflag = supplier_3.s_name )
    on (supplier_2.s_name = supplier_3.s_name )
where supplier_2.s_nationkey is not NULL
group by supplier_3.s_acctbal, lineitem_1.l_linestatus, lineitem_1.l_discount, supplier_1.s_comment, lineitem_1.l_extendedprice
limit 26;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_2.provsql, 
  region_1.r_regionkey, 
  count(
    region_1.r_name), 
  region_2.r_name, 
  max(
    region_2.r_regionkey)
from 
  region as region_1
    inner join region as region_2
    on (region_1.provsql = region_2.provsql )
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_name, region_2.provsql, region_1.r_regionkey, region_2.r_name
limit 40;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  nation_1.n_comment, 
  region_1.r_comment, 
  count(*)
from 
  region as region_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_suppkey = nation_1.n_nationkey )
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
group by region_1.r_regionkey, region_1.r_name, nation_1.n_comment, region_1.r_comment
limit 16;
select  
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_name = nation_1.n_comment )
where customer_1.c_mktsegment is not NULL
limit 21;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_regionkey, nation_1.n_name, nation_1.n_comment
limit 14;
select  
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
limit 16;
select  
  partsupp_1.ps_suppkey, 
  region_1.r_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  min(
    partsupp_1.ps_availqty), 
  supplier_1.s_acctbal, 
  partsupp_1.provsql, 
  region_1.r_regionkey, 
  supplier_1.s_acctbal, 
  partsupp_1.provsql, 
  supplier_1.s_acctbal
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_nationkey = region_1.r_regionkey )
    on (partsupp_1.provsql = region_1.provsql )
where supplier_1.s_acctbal is not NULL
group by partsupp_1.ps_suppkey, region_1.r_comment, supplier_1.s_suppkey, supplier_1.s_phone, supplier_1.s_acctbal, partsupp_1.provsql, region_1.r_regionkey, supplier_1.s_acctbal, partsupp_1.provsql, supplier_1.s_acctbal
limit 20;
select  
  min(
    region_1.r_regionkey), 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.provsql, region_1.r_regionkey, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.provsql, region_1.r_comment, region_1.r_comment, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.r_name, region_1.r_name
limit 7;
select  
  orders_1.o_orderstatus, 
  sum(
    orders_1.o_totalprice), 
  orders_1.o_orderstatus, 
  count(
    orders_1.o_comment), 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_orderstatus, orders_1.o_orderstatus, orders_1.o_custkey
limit 36;
select  
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.provsql = supplier_1.provsql )
where supplier_1.provsql is not NULL
limit 13;
select  
  orders_1.o_orderdate, 
  min(
    orders_1.o_orderpriority)
from 
  orders as orders_1
where orders_1.o_orderdate < orders_1.o_orderdate
group by orders_1.o_orderdate
limit 34;
select  
  supplier_1.s_address, 
  supplier_1.s_phone, 
  avg(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_phone), 
  count(*), 
  supplier_1.provsql, 
  min(
    supplier_1.s_name), 
  supplier_1.s_phone, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.provsql < supplier_1.provsql
group by supplier_1.s_address, supplier_1.s_phone, supplier_1.s_address, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_phone, supplier_1.s_address, supplier_1.s_address, supplier_1.s_suppkey, supplier_1.provsql, supplier_1.s_phone, supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_phone, supplier_1.provsql
limit 40;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  orders_1.provsql
from 
  orders as orders_1
    inner join customer as customer_1
      inner join partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_supplycost = supplier_1.s_acctbal )
      on (customer_1.c_comment = supplier_1.s_address )
    on (orders_1.o_clerk = supplier_1.s_name )
where orders_1.o_orderdate = orders_1.o_orderdate
limit 1;
select  
  part_1.p_size
from 
  part as part_1
where part_1.p_container is not NULL
limit 36;
select  
  part_1.p_mfgr, 
  min(
    part_1.p_mfgr), 
  part_1.p_size, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_brand, 
  sum(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
group by part_1.p_mfgr, part_1.p_size, part_1.p_mfgr, part_1.p_comment, part_1.p_brand
limit 21;
select  
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.provsql is not NULL
limit 21;
select  
  part_1.p_type, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderdate), 
  partsupp_1.ps_comment, 
  min(
    orders_2.o_orderdate), 
  nation_2.provsql
from 
  nation as nation_1
          inner join orders as orders_1
          on (nation_1.n_comment = orders_1.o_comment )
        inner join part as part_1
          inner join orders as orders_2
          on (part_1.p_retailprice = orders_2.o_totalprice )
        on (orders_1.o_orderstatus = part_1.p_mfgr )
      inner join supplier as supplier_1
      on (part_1.p_comment = supplier_1.s_address )
    inner join nation as nation_2
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_supplycost = partsupp_2.ps_supplycost )
      on (nation_2.n_comment = partsupp_2.ps_comment )
    on (orders_2.o_orderkey = partsupp_2.ps_partkey )
where supplier_1.s_phone > orders_2.o_orderstatus
group by part_1.p_type, orders_1.o_orderstatus, partsupp_1.ps_comment, nation_2.provsql
limit 22;
select  
  min(
    orders_2.o_orderkey), 
  customer_1.c_phone, 
  lineitem_1.l_extendedprice, 
  nation_1.provsql, 
  max(
    lineitem_1.l_commitdate)
from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_name = lineitem_1.l_comment )
    inner join nation as nation_1
      inner join orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderdate = orders_2.o_orderdate )
      on (nation_1.n_regionkey = orders_1.o_orderkey )
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where customer_1.c_comment is not NULL
group by customer_1.c_phone, lineitem_1.l_extendedprice, nation_1.provsql
limit 4;
select  
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 9;
select  
  lineitem_1.provsql, 
  part_1.p_partkey, 
  lineitem_1.l_extendedprice, 
  nation_1.provsql, 
  lineitem_1.l_quantity, 
  part_1.p_name, 
  nation_1.n_name, 
  nation_2.provsql, 
  nation_2.n_comment
from 
  part as part_1
      inner join nation as nation_1
        inner join nation as nation_2
        on (nation_1.n_name = nation_2.n_name )
      on (part_1.p_partkey = nation_2.n_nationkey )
    inner join lineitem as lineitem_1
    on (part_1.p_mfgr = lineitem_1.l_returnflag )
where nation_2.provsql is not NULL
limit 3;
select  
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_type is not NULL
limit 3;
select  
  part_1.p_container, 
  region_1.r_name, 
  avg(
    part_1.p_size), 
  region_1.r_regionkey
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.provsql >= region_1.provsql
group by part_1.p_container, region_1.r_name, region_1.r_regionkey
limit 23;
select  
  customer_1.c_custkey, 
  count(*), 
  customer_1.c_phone, 
  customer_1.c_name, 
  lineitem_1.provsql, 
  lineitem_2.l_orderkey, 
  lineitem_1.l_linestatus, 
  lineitem_2.l_shipinstruct
from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_quantity = customer_1.c_acctbal )
    inner join lineitem as lineitem_2
    on (customer_1.c_acctbal = lineitem_2.l_quantity )
where customer_1.c_name is not NULL
group by customer_1.c_custkey, customer_1.c_phone, customer_1.c_name, lineitem_1.provsql, lineitem_2.l_orderkey, lineitem_1.l_linestatus, lineitem_2.l_shipinstruct
limit 30;
select  
  customer_1.c_phone, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  count(
    customer_1.c_nationkey), 
  avg(
    orders_1.o_totalprice), 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority, 
  customer_2.c_name, 
  customer_1.c_acctbal, 
  partsupp_1.ps_comment
from 
  customer as customer_1
        inner join partsupp as partsupp_1
        on (customer_1.provsql = partsupp_1.provsql )
      inner join orders as orders_1
      on (customer_1.c_nationkey = orders_1.o_orderkey )
    inner join customer as customer_2
      inner join nation as nation_1
      on (customer_2.c_nationkey = nation_1.n_nationkey )
    on (partsupp_1.ps_supplycost = customer_2.c_acctbal )
where customer_2.provsql = partsupp_1.provsql
group by customer_1.c_phone, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, customer_2.c_name, customer_1.c_acctbal, partsupp_1.ps_comment
limit 22;
select  
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.provsql, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  max(
    supplier_1.s_name), 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_address, supplier_1.s_acctbal, supplier_1.s_acctbal, supplier_1.provsql, supplier_1.s_address, supplier_1.s_address, supplier_1.provsql, supplier_1.s_phone, supplier_1.s_name, supplier_1.s_name
limit 40;
select  
  nation_1.n_nationkey, 
  avg(
    supplier_1.s_nationkey), 
  nation_1.n_name, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.provsql, 
  nation_1.provsql
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_name = supplier_1.s_name )
where supplier_1.s_acctbal < supplier_1.s_acctbal
group by nation_1.n_nationkey, nation_1.n_name, supplier_1.s_comment, supplier_1.s_comment, supplier_1.provsql, nation_1.provsql
limit 32;
select  
  partsupp_1.ps_partkey, 
  partsupp_2.ps_partkey
from 
  orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_comment = lineitem_1.l_comment )
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_supplycost = partsupp_2.ps_supplycost )
      on (lineitem_1.l_partkey = partsupp_2.ps_partkey )
    inner join region as region_1
    on (partsupp_2.ps_suppkey = region_1.r_regionkey )
where region_1.r_name <= lineitem_1.l_shipinstruct
limit 40;
select  
  orders_1.o_shippriority, 
  supplier_1.s_nationkey, 
  supplier_1.provsql, 
  orders_1.provsql, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  orders_1.o_orderdate, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  max(
    supplier_1.s_phone), 
  supplier_1.s_nationkey, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  nation_1.n_regionkey, 
  orders_1.o_orderkey, 
  supplier_1.s_acctbal, 
  nation_1.n_nationkey, 
  orders_1.o_orderdate, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  orders_1.o_orderkey, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  orders_1.o_custkey
from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderstatus = nation_1.n_name )
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where orders_1.o_comment is not NULL
group by orders_1.o_shippriority, supplier_1.s_nationkey, supplier_1.provsql, orders_1.provsql, nation_1.n_name, nation_1.n_name, nation_1.n_regionkey, orders_1.o_orderdate, nation_1.n_regionkey, nation_1.n_name, supplier_1.s_nationkey, orders_1.o_orderdate, orders_1.o_custkey, nation_1.n_regionkey, orders_1.o_orderkey, supplier_1.s_acctbal, nation_1.n_nationkey, orders_1.o_orderdate, supplier_1.s_name, supplier_1.s_phone, orders_1.o_orderkey, supplier_1.s_phone, supplier_1.s_nationkey, orders_1.o_custkey
limit 18;
select  
  orders_1.o_shippriority, 
  orders_1.provsql, 
  partsupp_1.ps_comment, 
  region_1.provsql, 
  max(
    orders_1.o_orderdate), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  orders_1.o_shippriority, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  orders_1.o_orderdate, 
  orders_1.provsql, 
  partsupp_1.ps_supplycost
from 
  region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    inner join orders as orders_1
    on (partsupp_1.provsql = orders_1.provsql )
where orders_1.o_orderpriority is not NULL
group by orders_1.o_shippriority, orders_1.provsql, partsupp_1.ps_comment, region_1.provsql, partsupp_1.ps_partkey, orders_1.o_shippriority, region_1.r_name, region_1.r_regionkey, region_1.r_comment, orders_1.o_orderdate, orders_1.provsql, partsupp_1.ps_supplycost
limit 4;
select  
  min(
    region_1.r_name), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name = region_1.r_name
group by region_1.r_name, region_1.r_regionkey, region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey, region_1.r_regionkey
limit 4;
select distinct 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_shipdate), 
  supplier_1.s_name
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.provsql = lineitem_1.provsql )
where lineitem_1.l_linestatus = supplier_1.s_name
group by lineitem_1.l_receiptdate, supplier_1.s_name
limit 17;
select  
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_phone), 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.provsql, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_mktsegment
limit 13;
select  
  region_1.r_comment, 
  sum(
    orders_1.o_totalprice), 
  nation_1.n_comment, 
  nation_1.n_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  nation_1.n_name, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  nation_1.n_comment, 
  orders_1.o_orderkey, 
  orders_1.provsql, 
  nation_1.provsql, 
  nation_1.n_name, 
  min(
    orders_1.o_orderdate), 
  max(
    orders_1.o_orderkey), 
  avg(
    orders_1.o_custkey)
from 
  region as region_1
      inner join nation as nation_1
      on (region_1.r_regionkey = nation_1.n_nationkey )
    inner join orders as orders_1
    on (region_1.r_comment = orders_1.o_comment )
where orders_1.o_orderdate < orders_1.o_orderdate
group by region_1.r_comment, nation_1.n_comment, nation_1.n_comment, region_1.r_comment, region_1.r_regionkey, nation_1.n_name, orders_1.o_orderpriority, orders_1.o_clerk, nation_1.n_comment, orders_1.o_orderkey, orders_1.provsql, nation_1.provsql, nation_1.n_name
limit 42;
select  
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_clerk), 
  min(
    orders_1.o_orderdate), 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_comment, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_orderdate <= orders_1.o_orderdate
group by orders_1.o_orderdate, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_orderdate, orders_1.o_totalprice, orders_1.provsql, orders_1.o_comment, orders_1.o_orderdate
limit 34;
select  
  nation_1.n_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  min(
    supplier_1.s_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  supplier_1.provsql, 
  count(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  max(
    nation_1.n_name), 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  nation_1.n_name, 
  supplier_1.s_nationkey, 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_acctbal), 
  avg(
    supplier_1.s_acctbal), 
  count(*), 
  supplier_1.s_name, 
  nation_1.n_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  nation_1.n_regionkey, 
  avg(
    supplier_1.s_acctbal), 
  avg(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  nation_1.n_name
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_name = nation_1.n_name )
where nation_1.n_name is not NULL
group by nation_1.n_nationkey, supplier_1.s_suppkey, supplier_1.s_phone, supplier_1.s_comment, supplier_1.s_comment, nation_1.n_regionkey, nation_1.n_comment, supplier_1.provsql, nation_1.n_nationkey, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_address, supplier_1.s_comment, nation_1.n_name, supplier_1.s_nationkey, nation_1.n_name, nation_1.n_comment, supplier_1.s_acctbal, supplier_1.s_name, nation_1.n_name, supplier_1.s_acctbal, supplier_1.s_phone, nation_1.n_regionkey, supplier_1.s_suppkey, supplier_1.s_suppkey, nation_1.n_name
limit 37;
select  
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_comment, 
  part_1.p_partkey, 
  orders_1.o_orderstatus, 
  part_1.p_name, 
  orders_1.o_shippriority
from 
  orders as orders_1
    inner join part as part_1
      inner join customer as customer_1
      on (part_1.p_type = customer_1.c_name )
    on (orders_1.o_orderpriority = part_1.p_mfgr )
where customer_1.c_mktsegment is not NULL
limit 42;
select  
  min(
    orders_1.o_shippriority), 
  orders_2.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  count(
    orders_2.o_custkey), 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_shippriority), 
  orders_2.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_2.o_shippriority, 
  count(
    orders_1.o_clerk)
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_shippriority = orders_2.o_orderkey )
where orders_1.o_shippriority is not NULL
group by orders_2.o_orderdate, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_orderstatus, orders_2.o_comment, orders_1.o_orderkey, orders_1.o_totalprice, orders_1.o_orderpriority, orders_2.o_shippriority
limit 1;
select  
  count(*), 
  max(
    nation_1.n_regionkey), 
  sum(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_nationkey, nation_1.n_nationkey
limit 39;
select  
  orders_1.o_clerk, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_linestatus, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderdate)
from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_quantity = customer_1.c_acctbal )
    inner join partsupp as partsupp_1
      inner join orders as orders_1
        inner join part as part_1
        on (orders_1.o_shippriority = part_1.p_partkey )
      on (partsupp_1.provsql = orders_1.provsql )
    on (customer_1.c_name = orders_1.o_comment )
where lineitem_1.l_suppkey = lineitem_1.l_orderkey
group by orders_1.o_clerk, partsupp_1.ps_suppkey, lineitem_1.l_linestatus, orders_1.o_clerk
limit 3;
select  
  min(
    lineitem_1.l_tax)
from 
  region as region_1
      inner join customer as customer_1
      on (region_1.r_comment = customer_1.c_name )
    inner join lineitem as lineitem_1
    on (customer_1.c_acctbal = lineitem_1.l_quantity )
where region_1.r_name < customer_1.c_mktsegment
limit 22;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  sum(
    partsupp_1.ps_partkey), 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.provsql >= partsupp_1.provsql
group by partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.provsql
limit 10;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 3;
select  
  max(
    nation_1.n_name), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name
limit 6;
select  
  partsupp_1.ps_partkey
from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_regionkey = part_1.p_partkey )
    inner join partsupp as partsupp_1
    on (nation_1.n_regionkey = partsupp_1.ps_partkey )
where nation_1.provsql is not NULL
limit 7;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 39;
select  
  lineitem_1.l_discount, 
  avg(
    lineitem_1.l_orderkey), 
  lineitem_1.l_quantity, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipdate, 
  lineitem_1.provsql, 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_discount, lineitem_1.l_quantity, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.provsql, lineitem_1.l_comment
limit 40;
select  
  sum(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  min(
    supplier_1.s_phone), 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_address, supplier_1.s_nationkey
limit 42;
select  
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 5;
select  
  region_2.r_regionkey, 
  orders_1.o_orderpriority, 
  partsupp_2.ps_partkey, 
  partsupp_2.ps_suppkey
from 
  orders as orders_1
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_suppkey = partsupp_2.ps_partkey )
      on (orders_1.o_orderkey = partsupp_2.ps_partkey )
    inner join region as region_1
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    on (partsupp_1.provsql = region_2.provsql )
where region_2.provsql is not NULL
limit 7;
select  
  count(*), 
  part_1.p_partkey, 
  customer_1.c_mktsegment
from 
  customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_mktsegment = supplier_1.s_name )
    inner join part as part_1
    on (supplier_1.s_phone = part_1.p_mfgr )
where customer_1.c_name is not NULL
group by part_1.p_partkey, customer_1.c_mktsegment
limit 23;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_name, 
  sum(
    nation_1.n_regionkey), 
  min(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_name
limit 6;
select  
  part_1.p_mfgr, 
  part_1.provsql, 
  lineitem_1.l_shipmode, 
  part_1.p_size, 
  lineitem_1.l_extendedprice, 
  part_1.provsql, 
  max(
    part_1.p_partkey), 
  lineitem_1.l_partkey, 
  min(
    lineitem_1.l_linenumber), 
  part_1.p_comment, 
  lineitem_1.l_partkey, 
  part_1.p_mfgr, 
  lineitem_1.l_linestatus, 
  part_1.p_mfgr, 
  part_1.p_container, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.provsql = part_1.provsql )
where lineitem_1.provsql >= part_1.provsql
group by part_1.p_mfgr, part_1.provsql, lineitem_1.l_shipmode, part_1.p_size, lineitem_1.l_extendedprice, part_1.provsql, lineitem_1.l_partkey, part_1.p_comment, lineitem_1.l_partkey, part_1.p_mfgr, lineitem_1.l_linestatus, part_1.p_mfgr, part_1.p_container, lineitem_1.provsql
limit 1;
select  
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_nationkey < nation_1.n_regionkey
group by nation_1.n_comment
limit 8;
select  
  max(
    orders_1.o_orderdate), 
  partsupp_1.ps_partkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_totalprice), 
  partsupp_1.ps_supplycost, 
  orders_1.o_custkey, 
  orders_1.provsql, 
  orders_1.o_shippriority
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_shippriority = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_partkey, orders_1.o_orderdate, orders_1.o_orderpriority, partsupp_1.ps_supplycost, orders_1.o_custkey, orders_1.provsql, orders_1.o_shippriority
limit 26;
select  
  region_1.r_comment, 
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
limit 16;
select  
  region_1.r_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  region_1.r_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where region_1.provsql is not NULL
limit 39;
select  
  customer_1.c_custkey, 
  customer_1.provsql, 
  part_1.p_container, 
  min(
    part_1.p_retailprice), 
  max(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  part_1.p_size
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_name = part_1.p_name )
where part_1.p_mfgr > part_1.p_container
group by customer_1.c_custkey, customer_1.provsql, part_1.p_container, customer_1.c_address, customer_1.c_mktsegment, customer_1.c_nationkey, part_1.p_size
limit 4;
select  
  orders_1.o_orderstatus
from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_acctbal = orders_1.o_totalprice )
    inner join customer as customer_2
      inner join nation as nation_1
      on (customer_2.c_name = nation_1.n_comment )
    on (orders_1.o_clerk = customer_2.c_phone )
where customer_2.c_mktsegment < customer_1.c_mktsegment
limit 4;
select  
  part_1.p_partkey, 
  count(
    part_1.p_comment), 
  part_1.p_comment, 
  min(
    part_1.p_brand), 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_partkey, part_1.p_comment, part_1.p_brand, part_1.p_retailprice, part_1.p_size, part_1.p_brand
limit 12;
select  
  avg(
    part_1.p_retailprice), 
  part_1.p_type, 
  supplier_1.s_name, 
  part_1.p_mfgr, 
  count(*), 
  sum(
    part_1.p_retailprice), 
  supplier_1.s_name, 
  part_1.p_retailprice, 
  avg(
    part_1.p_retailprice), 
  part_1.provsql, 
  part_1.p_size, 
  part_1.provsql, 
  part_1.p_partkey, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  part_1.provsql, 
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_name, 
  part_1.p_name, 
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_suppkey), 
  part_1.provsql, 
  supplier_1.s_nationkey
from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_retailprice = supplier_1.s_acctbal )
where supplier_1.s_suppkey is not NULL
group by part_1.p_type, supplier_1.s_name, part_1.p_mfgr, supplier_1.s_name, part_1.p_retailprice, part_1.provsql, part_1.p_size, part_1.provsql, part_1.p_partkey, supplier_1.s_name, supplier_1.s_address, part_1.provsql, supplier_1.provsql, supplier_1.s_acctbal, part_1.p_partkey, part_1.provsql, part_1.p_name, part_1.p_name, supplier_1.s_nationkey, part_1.provsql, supplier_1.s_nationkey
limit 16;
select  
  nation_1.n_name
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.ps_comment = region_1.r_comment )
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where partsupp_1.provsql = supplier_1.provsql
limit 9;
select  
  orders_1.o_orderstatus, 
  orders_1.provsql, 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 39;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name = nation_1.n_name
limit 23;
select  
  part_1.p_name, 
  part_1.p_brand, 
  part_1.p_comment, 
  count(
    part_1.p_retailprice), 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_shipdate, 
  region_1.r_regionkey, 
  part_1.p_mfgr, 
  part_1.p_size
from 
  region as region_1
      inner join part as part_1
      on (region_1.r_comment = part_1.p_name )
    inner join lineitem as lineitem_1
    on (part_1.provsql = lineitem_1.provsql )
where region_1.r_name is not NULL
group by part_1.p_name, part_1.p_brand, part_1.p_comment, lineitem_1.l_shipdate, region_1.r_regionkey, part_1.p_mfgr, part_1.p_size
limit 26;
select  
  customer_1.c_mktsegment, 
  lineitem_1.l_returnflag, 
  max(
    lineitem_2.l_receiptdate), 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_custkey
from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_comment = lineitem_1.l_comment )
    inner join lineitem as lineitem_2
    on (lineitem_1.l_returnflag = lineitem_2.l_returnflag )
where customer_1.c_nationkey is not NULL
group by customer_1.c_mktsegment, lineitem_1.l_returnflag, customer_1.c_phone, customer_1.c_custkey, customer_1.c_phone, customer_1.c_custkey
limit 1;
select  
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderstatus), 
  orders_1.o_custkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where orders_1.o_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_clerk, orders_1.o_custkey, partsupp_1.provsql, partsupp_1.ps_suppkey
limit 3;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_supplycost), 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.provsql, 
  count(
    partsupp_1.ps_availqty)
from 
  partsupp as partsupp_1
where partsupp_1.provsql <= partsupp_1.provsql
group by partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.ps_comment, partsupp_1.provsql
limit 40;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 38;
select  
  customer_1.c_acctbal, 
  part_1.p_type, 
  avg(
    part_1.p_retailprice), 
  part_1.p_retailprice, 
  customer_1.c_address, 
  part_1.p_type, 
  part_1.p_brand, 
  customer_1.c_address, 
  part_1.p_mfgr
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, part_1.p_type, part_1.p_retailprice, customer_1.c_address, part_1.p_type, part_1.p_brand, customer_1.c_address, part_1.p_mfgr
limit 29;
select  
  lineitem_1.l_suppkey, 
  count(*), 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  max(
    part_1.p_mfgr), 
  supplier_1.s_address, 
  lineitem_1.l_shipmode, 
  supplier_1.s_address, 
  part_1.p_retailprice, 
  supplier_1.provsql, 
  part_1.provsql, 
  supplier_1.provsql, 
  lineitem_1.l_returnflag, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  part_1.p_comment, 
  max(
    lineitem_1.l_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_address, 
  lineitem_1.l_orderkey, 
  part_1.p_brand, 
  lineitem_1.l_partkey, 
  part_1.p_container, 
  supplier_1.s_name, 
  lineitem_1.l_discount
from 
  supplier as supplier_1
    inner join part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where part_1.p_comment is not NULL
group by lineitem_1.l_suppkey, supplier_1.s_nationkey, supplier_1.s_suppkey, supplier_1.s_address, lineitem_1.l_shipmode, supplier_1.s_address, part_1.p_retailprice, supplier_1.provsql, part_1.provsql, supplier_1.provsql, lineitem_1.l_returnflag, supplier_1.s_comment, part_1.p_comment, supplier_1.s_address, supplier_1.s_address, lineitem_1.l_orderkey, part_1.p_brand, lineitem_1.l_partkey, part_1.p_container, supplier_1.s_name, lineitem_1.l_discount
limit 22;
select  
  nation_1.n_nationkey, 
  count(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.provsql = nation_1.provsql )
where nation_1.provsql <= supplier_1.provsql
group by nation_1.n_nationkey
limit 5;
select  
  customer_1.c_name, 
  customer_1.provsql, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 16;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
group by supplier_1.s_suppkey, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_suppkey, supplier_1.s_phone, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_nationkey, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_nationkey, supplier_1.s_nationkey
limit 21;
select  
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  max(
    supplier_1.s_name), 
  supplier_1.provsql, 
  supplier_1.provsql, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_address, supplier_1.provsql, supplier_1.provsql, supplier_1.s_address, supplier_1.s_name, supplier_1.s_name, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_acctbal, supplier_1.s_address
limit 42;
select  
  max(
    nation_2.n_name), 
  min(
    nation_2.n_nationkey), 
  nation_1.provsql
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_comment = nation_2.n_comment )
where nation_2.provsql is not NULL
group by nation_1.provsql
limit 16;
select  
  region_1.r_comment, 
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_name is not NULL
limit 2;
select  
  min(
    region_2.r_regionkey), 
  region_3.provsql
from 
  region as region_1
    inner join region as region_2
        inner join orders as orders_1
        on (region_2.r_comment = orders_1.o_comment )
      inner join region as region_3
      on (orders_1.o_shippriority = region_3.r_regionkey )
    on (region_1.r_name = orders_1.o_orderstatus )
where orders_1.provsql is not NULL
group by region_3.provsql
limit 26;
select  
  min(
    part_1.p_brand)
from 
  part as part_1
where part_1.p_comment is not NULL
limit 35;
select  
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderdate, 
  count(
    orders_1.o_comment)
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_orderdate
limit 2;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode >= lineitem_1.l_shipinstruct
limit 19;
select  
  nation_1.n_comment, 
  orders_1.o_orderpriority, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.provsql
from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_comment = orders_1.o_comment )
    inner join nation as nation_1
    on (customer_1.c_nationkey = nation_1.n_nationkey )
where nation_1.provsql <= customer_1.provsql
limit 21;
select  
  part_1.p_container, 
  orders_1.o_orderdate, 
  part_1.p_mfgr, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_brand, 
  max(
    part_1.p_size), 
  part_1.p_retailprice, 
  region_1.r_name, 
  part_1.p_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  orders_1.o_orderstatus
from 
  region as region_1
    inner join part as part_1
      inner join orders as orders_1
      on (part_1.p_container = orders_1.o_orderstatus )
    on (region_1.r_name = part_1.p_mfgr )
where orders_1.o_orderdate = orders_1.o_orderdate
group by part_1.p_container, orders_1.o_orderdate, part_1.p_mfgr, orders_1.o_comment, orders_1.o_comment, part_1.p_partkey, part_1.p_type, part_1.p_brand, part_1.p_retailprice, region_1.r_name, part_1.p_comment, region_1.r_name, region_1.r_regionkey, orders_1.o_orderstatus
limit 29;
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey <= region_1.r_regionkey
limit 38;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  count(*), 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  count(*)
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_supplycost
limit 4;
select  
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_availqty, partsupp_1.ps_availqty
limit 24;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 11;
select  
  sum(
    part_2.p_retailprice), 
  part_1.p_type
from 
  nation as nation_1
    inner join part as part_1
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
    on (nation_1.n_nationkey = part_2.p_partkey )
where part_2.p_type is not NULL
group by part_1.p_type
limit 2;
select  
  lineitem_1.l_returnflag
from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
limit 13;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_availqty = region_1.r_regionkey )
where region_1.provsql is not NULL
limit 35;
select  
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 37;
select  
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.provsql > customer_1.provsql
limit 24;
select  
  part_1.p_type
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_type = lineitem_1.l_comment )
where lineitem_1.l_linenumber is not NULL
limit 28;
select  
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_address, 
  max(
    customer_1.c_phone), 
  customer_1.c_nationkey, 
  max(
    customer_1.c_mktsegment), 
  customer_1.c_address, 
  customer_1.c_address, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  max(
    customer_1.c_nationkey)
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_comment, customer_1.c_address, customer_1.c_phone, customer_1.c_address, customer_1.c_nationkey, customer_1.c_address, customer_1.c_address, customer_1.c_address
limit 5;
select  
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 31;
select  
  orders_1.o_custkey, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderkey, 
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_shippriority
limit 33;
select  
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  count(*), 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey), 
  nation_1.provsql, 
  nation_1.provsql, 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.provsql, nation_1.n_nationkey, nation_1.n_name, nation_1.n_name, nation_1.provsql, nation_1.provsql, nation_1.provsql, nation_1.n_comment
limit 15;
select  
  partsupp_1.ps_comment, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_supplycost
limit 41;
select  
  orders_1.o_totalprice, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_totalprice, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_orderkey, orders_1.o_clerk
limit 14;
select  
  customer_1.provsql, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  count(
    customer_1.c_comment), 
  customer_1.c_custkey, 
  customer_1.provsql, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.provsql, customer_1.c_phone, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_phone, customer_1.c_custkey, customer_1.provsql, customer_1.c_name, customer_1.c_name, customer_1.c_nationkey, customer_1.c_address, customer_1.c_mktsegment
limit 40;
select  
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 10;
select  
  nation_1.provsql
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 9;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  partsupp_1.ps_comment, 
  region_2.r_name
from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.provsql = region_1.provsql )
    inner join orders as orders_1
      inner join region as region_2
        inner join supplier as supplier_1
        on (region_2.r_regionkey = supplier_1.s_suppkey )
      on (orders_1.o_orderstatus = region_2.r_name )
    on (partsupp_1.ps_availqty = supplier_1.s_suppkey )
where partsupp_1.ps_supplycost is not NULL
limit 5;
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_totalprice
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_nationkey = orders_1.o_orderkey )
where customer_1.c_comment is not NULL
group by orders_1.o_totalprice
limit 26;
select  
  min(
    part_1.p_size), 
  part_1.p_partkey
from 
  nation as nation_1
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    inner join lineitem as lineitem_1
    on (part_1.p_retailprice = lineitem_1.l_quantity )
where part_1.p_mfgr <= orders_1.o_orderpriority
group by part_1.p_partkey
limit 10;
select distinct 
  part_1.p_brand, 
  part_1.provsql, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_type
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
limit 2;
select  
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 30;
select  
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_acctbal > customer_1.c_acctbal
limit 10;
select  
  min(
    lineitem_1.l_shipdate), 
  nation_1.n_regionkey, 
  lineitem_1.l_orderkey, 
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_name = lineitem_1.l_returnflag )
where lineitem_1.provsql > nation_1.provsql
group by nation_1.n_regionkey, lineitem_1.l_orderkey, nation_1.provsql, nation_1.n_nationkey
limit 38;
select distinct 
  sum(
    part_1.p_retailprice), 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_partkey, part_1.p_type, part_1.p_brand
limit 11;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
limit 35;
select  
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_regionkey, 
  count(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.provsql, region_1.provsql, region_1.r_regionkey
limit 42;
select  
  lineitem_1.l_quantity, 
  part_1.p_brand, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  min(
    part_1.p_mfgr), 
  supplier_1.s_suppkey, 
  customer_1.c_nationkey
from 
  lineitem as lineitem_1
    inner join part as part_1
        inner join supplier as supplier_1
        on (part_1.p_partkey = supplier_1.s_suppkey )
      inner join customer as customer_1
      on (part_1.p_mfgr = customer_1.c_phone )
    on (lineitem_1.l_discount = part_1.p_retailprice )
where supplier_1.provsql is not NULL
group by lineitem_1.l_quantity, part_1.p_brand, supplier_1.s_phone, supplier_1.s_acctbal, supplier_1.s_suppkey, customer_1.c_nationkey
limit 10;
select  
  part_1.p_brand
from 
  customer as customer_1
    inner join part as part_1
      inner join orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_shippriority = partsupp_1.ps_partkey )
      on (part_1.p_name = orders_1.o_comment )
    on (customer_1.c_phone = part_1.p_mfgr )
where partsupp_1.ps_supplycost < orders_1.o_totalprice
limit 24;
select  
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.provsql, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.provsql
limit 38;
select  
  part_1.provsql
from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_nationkey = part_1.p_partkey )
where supplier_1.s_phone <= supplier_1.s_name
limit 24;
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_comment is not NULL
limit 13;
select  
  supplier_1.s_phone, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_phone, supplier_1.s_name, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_address, supplier_1.s_suppkey, supplier_1.s_address, supplier_1.provsql, supplier_1.s_acctbal
limit 20;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_phone, 
  orders_1.o_shippriority, 
  max(
    customer_1.c_custkey), 
  sum(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  customer_1.c_mktsegment, 
  sum(
    customer_1.c_custkey), 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  orders_1.provsql, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_orderdate), 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  orders_1.o_clerk
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_shippriority = customer_1.c_custkey )
where orders_1.o_orderpriority = customer_1.c_mktsegment
group by orders_1.o_totalprice, orders_1.o_orderstatus, orders_1.o_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone, orders_1.o_shippriority, orders_1.o_orderpriority, customer_1.c_mktsegment, orders_1.o_custkey, orders_1.o_orderkey, customer_1.provsql, customer_1.c_custkey, customer_1.c_name, customer_1.c_phone, orders_1.provsql, orders_1.o_custkey, orders_1.o_orderpriority, customer_1.c_name, customer_1.c_nationkey, customer_1.c_address, orders_1.o_clerk
limit 23;
select  
  part_1.provsql, 
  part_1.p_container, 
  orders_1.o_orderkey, 
  orders_2.provsql, 
  orders_2.o_custkey, 
  part_1.p_size
from 
  orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_totalprice = orders_2.o_totalprice )
    inner join part as part_1
    on (orders_2.o_orderstatus = part_1.p_mfgr )
where orders_2.o_shippriority is not NULL
limit 26;
select  
  sum(
    part_1.p_retailprice), 
  part_1.p_type, 
  part_1.provsql
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_type, part_1.provsql
limit 37;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_regionkey, nation_1.n_nationkey, nation_1.provsql, nation_1.n_regionkey, nation_1.provsql, nation_1.provsql, nation_1.n_comment, nation_1.n_nationkey
limit 33;
select  
  part_1.p_retailprice, 
  sum(
    part_1.p_retailprice), 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_retailprice, part_1.p_partkey
limit 41;
select  
  customer_2.c_name, 
  customer_1.c_name
from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_phone = customer_2.c_phone )
    on (partsupp_1.ps_supplycost = customer_1.c_acctbal )
where partsupp_1.ps_supplycost = customer_2.c_acctbal
limit 4;
select  
  nation_1.n_comment, 
  nation_1.n_comment, 
  count(
    partsupp_1.provsql), 
  nation_1.n_name, 
  nation_1.provsql, 
  min(
    nation_1.n_name), 
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  supplier_1.provsql, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.provsql = supplier_1.provsql )
    on (partsupp_1.ps_suppkey = nation_1.n_nationkey )
where partsupp_1.ps_suppkey is not NULL
group by nation_1.n_comment, nation_1.n_comment, nation_1.n_name, nation_1.provsql, partsupp_1.provsql, partsupp_1.provsql, supplier_1.provsql, partsupp_1.ps_suppkey
limit 27;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  avg(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_mktsegment, customer_1.c_address
limit 5;
select  
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.provsql, 
  part_1.p_name, 
  count(
    part_1.p_type), 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_name, 
  part_1.provsql, 
  part_1.p_container, 
  part_1.provsql, 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_mfgr, 
  max(
    part_1.p_brand), 
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_container, part_1.p_retailprice, part_1.p_partkey, part_1.p_type, part_1.provsql, part_1.p_name, part_1.p_type, part_1.p_mfgr, part_1.p_partkey, part_1.provsql, part_1.p_brand, part_1.p_container, part_1.p_name, part_1.provsql, part_1.p_container, part_1.provsql, part_1.p_retailprice, part_1.p_size, part_1.p_mfgr, part_1.p_name, part_1.p_name, part_1.p_type, part_1.p_mfgr, part_1.p_comment
limit 8;
select  
  lineitem_1.l_linestatus
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_comment = lineitem_1.l_comment )
where lineitem_1.l_receiptdate is not NULL
limit 19;
select  
  max(
    customer_1.c_acctbal), 
  customer_1.provsql, 
  max(
    customer_1.c_mktsegment), 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.provsql, customer_1.c_address
limit 4;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  avg(
    region_1.r_regionkey), 
  sum(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_phone, 
  region_1.r_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  region_1.r_regionkey, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_comment, region_1.r_name, region_1.r_comment, supplier_1.s_phone, region_1.r_comment, supplier_1.s_acctbal, supplier_1.s_comment, region_1.r_regionkey, supplier_1.s_comment, supplier_1.s_suppkey
limit 1;
select  
  part_1.provsql, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
limit 13;
select  
  customer_1.c_custkey, 
  customer_1.c_phone, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  customer_1.c_mktsegment
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where customer_1.c_acctbal >= orders_1.o_totalprice
limit 21;
select  
  customer_1.c_address, 
  customer_1.c_comment
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_1.c_custkey is not NULL
limit 29;
select  
  max(
    part_2.p_partkey), 
  part_1.p_partkey, 
  lineitem_2.l_partkey, 
  part_2.p_size, 
  lineitem_1.l_discount, 
  region_1.provsql
from 
  lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.provsql = part_1.provsql )
    inner join lineitem as lineitem_2
      inner join part as part_2
          inner join orders as orders_1
            inner join region as region_1
            on (orders_1.o_shippriority = region_1.r_regionkey )
          on (part_2.p_container = region_1.r_name )
        inner join part as part_3
        on (part_2.p_retailprice = part_3.p_retailprice )
      on (lineitem_2.l_quantity = orders_1.o_totalprice )
    on (lineitem_1.l_linestatus = part_2.p_mfgr )
where part_2.p_size is not NULL
group by part_1.p_partkey, lineitem_2.l_partkey, part_2.p_size, lineitem_1.l_discount, region_1.provsql
limit 27;
select  
  lineitem_1.l_linestatus, 
  customer_1.c_custkey
from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_comment = lineitem_1.l_comment )
    inner join orders as orders_1
    on (customer_1.c_address = orders_1.o_comment )
where customer_1.c_address is not NULL
limit 36;
select  
  orders_2.o_clerk, 
  orders_2.provsql, 
  max(
    orders_1.o_orderdate), 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  orders_2.o_custkey
from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_address = orders_1.o_comment )
    inner join orders as orders_2
    on (customer_1.c_mktsegment = orders_2.o_orderstatus )
where customer_1.provsql is not NULL
group by orders_2.o_clerk, orders_2.provsql, customer_1.c_acctbal, customer_1.c_nationkey, orders_2.o_custkey
limit 40;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_tax, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
group by lineitem_1.l_comment, lineitem_1.l_shipinstruct, lineitem_1.l_linestatus, lineitem_1.l_tax, lineitem_1.l_discount
limit 42;
select  
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 1;
select  
  customer_1.c_name, 
  customer_1.c_mktsegment
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 3;
select  
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_extendedprice, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  lineitem_1.l_comment, 
  lineitem_1.l_comment, 
  nation_1.provsql, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_commitdate, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_quantity
from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_availqty = nation_1.n_nationkey )
    inner join lineitem as lineitem_1
    on (nation_1.n_comment = lineitem_1.l_comment )
where nation_1.provsql <= lineitem_1.provsql
group by lineitem_1.l_extendedprice, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.provsql, lineitem_1.l_comment, lineitem_1.l_comment, nation_1.provsql, lineitem_1.l_shipmode, lineitem_1.l_commitdate, partsupp_1.ps_suppkey, lineitem_1.l_quantity
limit 5;
select  
  supplier_1.s_comment, 
  avg(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_comment
limit 28;
select  
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 11;
select  
  customer_1.c_nationkey, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 27;
select  
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_name), 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.provsql
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.provsql, region_1.r_name, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.provsql
limit 6;
select  
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_acctbal >= customer_1.c_acctbal
limit 11;
select distinct 
  region_1.r_regionkey, 
  region_1.r_name, 
  nation_1.n_comment, 
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
      inner join region as region_1
        inner join part as part_1
          inner join supplier as supplier_2
            inner join part as part_2
            on (supplier_2.s_comment = part_2.p_name )
          on (part_1.p_type = supplier_2.s_address )
        on (region_1.r_regionkey = part_2.p_partkey )
      on (supplier_1.s_phone = part_2.p_mfgr )
    inner join orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderstatus = nation_1.n_name )
    on (supplier_1.s_name = orders_1.o_orderstatus )
where nation_1.n_name is not NULL
group by region_1.r_regionkey, region_1.r_name, nation_1.n_comment
limit 27;
select  
  min(
    part_1.p_mfgr), 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_container, 
  min(
    part_1.p_size)
from 
  part as part_1
where part_1.provsql is not NULL
group by part_1.p_type, part_1.p_mfgr, part_1.p_type, part_1.p_partkey, part_1.p_retailprice, part_1.p_mfgr, part_1.p_type, part_1.p_mfgr, part_1.p_retailprice, part_1.p_container
limit 2;
select  
  customer_1.c_comment, 
  region_1.r_regionkey, 
  customer_1.c_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  part as part_1
      inner join region as region_1
      on (part_1.p_container = region_1.r_name )
    inner join customer as customer_1
    on (part_1.provsql = customer_1.provsql )
where customer_1.c_mktsegment = part_1.p_brand
limit 9;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  avg(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey), 
  sum(
    partsupp_1.ps_supplycost), 
  count(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.ps_comment
limit 13;
select  
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  min(
    orders_1.o_clerk), 
  min(
    orders_1.o_orderdate), 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderdate), 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_name, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.provsql, 
  orders_1.o_orderstatus, 
  region_1.r_comment, 
  orders_1.o_totalprice
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_custkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by orders_1.o_orderdate, orders_1.o_custkey, orders_1.o_clerk, region_1.r_comment, orders_1.o_orderdate, region_1.provsql, region_1.r_name, region_1.r_name, orders_1.o_totalprice, orders_1.provsql, orders_1.provsql, orders_1.o_orderstatus, region_1.r_comment, orders_1.o_totalprice
limit 26;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 41;
select  
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.provsql, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_size
from 
  part as part_1
where part_1.p_partkey >= part_1.p_size
limit 32;
select  
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  max(
    supplier_1.s_name)
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_address, supplier_1.s_address, supplier_1.s_suppkey, supplier_1.s_address
limit 8;
select  
  supplier_1.s_suppkey, 
  part_1.provsql, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_2.p_size, 
  part_2.p_type, 
  part_2.p_size, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  supplier_1.s_suppkey, 
  max(
    part_2.p_size)
from 
  part as part_1
    inner join part as part_2
      inner join supplier as supplier_1
      on (part_2.p_retailprice = supplier_1.s_acctbal )
    on (part_1.p_brand = part_2.p_mfgr )
where part_1.p_brand = part_1.p_mfgr
group by supplier_1.s_suppkey, part_1.provsql, part_1.p_mfgr, part_1.p_retailprice, part_2.p_size, part_2.p_type, part_2.p_size, part_1.p_mfgr, part_1.p_mfgr, supplier_1.s_suppkey
limit 20;
select  
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
group by partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.provsql
limit 27;
select  
  supplier_1.s_acctbal
from 
  supplier as supplier_1
    inner join nation as nation_1
      inner join part as part_1
      on (nation_1.n_regionkey = part_1.p_partkey )
    on (supplier_1.s_name = nation_1.n_name )
where supplier_1.s_address is not NULL
limit 4;
select  
  orders_1.o_orderpriority, 
  orders_1.provsql, 
  orders_1.o_comment, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 31;
select  
  sum(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.provsql > nation_1.provsql
group by nation_1.n_nationkey, nation_1.n_comment, nation_1.provsql, nation_1.n_comment, nation_1.n_regionkey
limit 10;
select  
  min(
    customer_2.c_phone), 
  customer_2.c_comment
from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_mktsegment = customer_2.c_phone )
    inner join part as part_1
    on (customer_2.provsql = part_1.provsql )
where customer_1.provsql = part_1.provsql
group by customer_2.c_comment
limit 21;
select  
  region_2.r_regionkey
from 
  region as region_1
    inner join region as region_2
      inner join partsupp as partsupp_1
      on (region_2.provsql = partsupp_1.provsql )
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where region_2.r_name = region_1.r_name
limit 17;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_comment, 
  count(*), 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  avg(
    region_1.r_regionkey), 
  region_1.provsql, 
  avg(
    region_1.r_regionkey), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_regionkey, region_1.r_regionkey, region_1.provsql, region_1.r_comment, region_1.r_regionkey, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.r_regionkey
limit 31;
select  
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  sum(
    orders_1.o_orderkey), 
  avg(
    orders_1.o_totalprice), 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_orderdate, orders_1.o_totalprice, orders_1.o_totalprice, orders_1.provsql, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_custkey
limit 32;
select  
  partsupp_1.ps_partkey, 
  part_1.p_partkey, 
  part_1.p_brand, 
  region_1.provsql, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
        inner join part as part_1
        on (supplier_1.s_comment = part_1.p_name )
      inner join region as region_1
      on (supplier_1.s_nationkey = region_1.r_regionkey )
    on (partsupp_1.ps_availqty = part_1.p_partkey )
where partsupp_1.ps_suppkey is not NULL
limit 19;
select  
  sum(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_regionkey < region_1.r_regionkey
limit 26;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 4;
select  
  customer_1.c_mktsegment, 
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.provsql < customer_1.provsql
limit 28;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.provsql, 
  max(
    supplier_1.s_phone), 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_address, supplier_1.provsql, supplier_1.s_phone, supplier_1.s_phone, supplier_1.s_suppkey, supplier_1.s_nationkey, supplier_1.provsql, supplier_1.s_phone
limit 31;
select  
  customer_1.c_name, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_nationkey <= customer_1.c_custkey
limit 35;
select  
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.provsql < nation_1.provsql
group by nation_1.n_comment, nation_1.n_comment, nation_1.n_name
limit 2;
select  
  part_1.p_size, 
  part_1.p_container
from 
  part as part_1
where part_1.provsql is not NULL
limit 8;
select  
  orders_1.provsql, 
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
limit 36;
select  
  max(
    supplier_1.s_name), 
  nation_1.n_comment, 
  supplier_1.s_comment
from 
  supplier as supplier_1
      inner join supplier as supplier_2
        inner join partsupp as partsupp_1
        on (supplier_2.provsql = partsupp_1.provsql )
      on (supplier_1.s_address = supplier_2.s_address )
    inner join nation as nation_1
    on (supplier_2.s_name = nation_1.n_name )
where partsupp_1.ps_supplycost > supplier_2.s_acctbal
group by nation_1.n_comment, supplier_1.s_comment
limit 1;
select  
  customer_1.provsql, 
  customer_1.c_name, 
  partsupp_1.ps_suppkey, 
  customer_1.provsql, 
  customer_1.c_name, 
  customer_1.c_address
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_address = partsupp_1.ps_comment )
where partsupp_1.ps_supplycost <= customer_1.c_acctbal
limit 30;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_shipdate = lineitem_2.l_shipdate )
where lineitem_1.provsql < lineitem_2.provsql
limit 28;
select  
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  max(
    part_1.p_size), 
  part_1.p_type, 
  part_1.provsql, 
  part_1.p_container, 
  part_1.p_size, 
  sum(
    part_1.p_size)
from 
  part as part_1
where part_1.provsql >= part_1.provsql
group by part_1.p_container, part_1.p_comment, part_1.p_comment, part_1.p_retailprice, part_1.p_type, part_1.provsql, part_1.p_container, part_1.p_size
limit 6;
select  
  customer_1.c_mktsegment
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderstatus = customer_1.c_phone )
where orders_1.o_comment is not NULL
limit 38;
select  
  part_1.p_type, 
  part_1.p_retailprice
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_brand = customer_1.c_phone )
where customer_1.c_mktsegment <= part_1.p_mfgr
limit 31;
select  
  max(
    nation_1.n_name), 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_name
limit 6;
select  
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_availqty = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 42;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  count(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_nationkey, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_comment
limit 11;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    part_2.p_partkey), 
  part_1.p_partkey, 
  region_1.r_regionkey, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  min(
    part_1.p_mfgr)
from 
  part as part_1
    inner join region as region_1
      inner join part as part_2
      on (region_1.provsql = part_2.provsql )
    on (part_1.p_container = part_2.p_mfgr )
where part_2.p_partkey is not NULL
group by region_1.r_regionkey, region_1.r_comment, part_1.p_partkey, region_1.r_regionkey, part_1.p_mfgr, part_1.p_brand
limit 29;
select  
  region_1.r_name, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.provsql, 
  max(
    region_1.r_regionkey), 
  count(
    region_1.provsql), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey <= region_1.r_regionkey
group by region_1.r_name, region_1.provsql, region_1.provsql, region_1.provsql, region_1.r_regionkey, region_1.r_regionkey, region_1.r_regionkey, region_1.provsql, region_1.r_comment
limit 11;
select  
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.provsql, 
  nation_1.n_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  nation_1.n_nationkey, 
  orders_1.o_orderpriority, 
  nation_1.provsql, 
  orders_1.o_orderpriority
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderpriority = nation_1.n_name )
where nation_1.n_nationkey is not NULL
limit 6;
select  
  part_1.p_mfgr, 
  part_1.provsql, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_container = part_1.p_brand
limit 6;
select  
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.provsql, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.provsql, nation_1.n_name, nation_1.n_name, nation_1.provsql
limit 36;
select  
  customer_1.c_phone, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  partsupp_1.ps_suppkey, 
  customer_1.c_nationkey, 
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.provsql, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_supplycost = customer_1.c_acctbal )
where customer_1.c_address is not NULL
limit 39;
select  
  nation_1.provsql, 
  min(
    supplier_1.s_name), 
  nation_1.n_regionkey, 
  supplier_1.provsql, 
  min(
    supplier_1.s_phone), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_comment = supplier_1.s_address )
where nation_1.n_regionkey is not NULL
group by nation_1.provsql, nation_1.n_regionkey, supplier_1.provsql, nation_1.n_regionkey, nation_1.n_nationkey
limit 4;
select distinct 
  partsupp_2.ps_supplycost, 
  avg(
    partsupp_1.ps_suppkey), 
  partsupp_2.provsql, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.provsql = partsupp_2.provsql )
where partsupp_2.provsql is not NULL
group by partsupp_2.ps_supplycost, partsupp_2.provsql, partsupp_1.ps_availqty
limit 18;
select  
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 27;
select  
  max(
    lineitem_1.l_partkey)
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_comment = lineitem_1.l_comment )
where part_1.p_partkey is not NULL
limit 41;
select  
  max(
    lineitem_1.l_shipdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 41;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  count(
    nation_1.n_comment), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_name, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_comment
limit 36;
select  
  sum(
    customer_1.c_custkey), 
  region_1.r_name, 
  customer_1.c_mktsegment
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_name = customer_1.c_phone )
where customer_1.c_name is not NULL
group by region_1.r_name, customer_1.c_mktsegment
limit 13;
select  
  count(*), 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_regionkey, region_1.r_comment
limit 21;
select  
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_supplycost
limit 13;
select  
  nation_1.n_comment, 
  customer_1.c_name, 
  nation_1.n_comment, 
  nation_4.provsql, 
  nation_4.n_nationkey, 
  max(
    nation_1.n_name), 
  nation_3.n_regionkey, 
  nation_2.n_nationkey, 
  region_1.provsql, 
  max(
    nation_3.n_name), 
  lineitem_1.l_discount
from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_comment = customer_1.c_name )
    inner join lineitem as lineitem_1
          inner join nation as nation_2
          on (lineitem_1.l_comment = nation_2.n_comment )
        inner join nation as nation_3
        on (lineitem_1.l_partkey = nation_3.n_nationkey )
      inner join nation as nation_4
        inner join region as region_1
        on (nation_4.n_name = region_1.r_name )
      on (nation_3.n_name = region_1.r_name )
    on (customer_1.c_comment = nation_4.n_comment )
where nation_3.n_name > nation_4.n_name
group by nation_1.n_comment, customer_1.c_name, nation_1.n_comment, nation_4.provsql, nation_4.n_nationkey, nation_3.n_regionkey, nation_2.n_nationkey, region_1.provsql, lineitem_1.l_discount
limit 36;
select  
  supplier_1.provsql
from 
  orders as orders_1
      inner join part as part_1
        inner join region as region_1
        on (part_1.p_size = region_1.r_regionkey )
      on (orders_1.o_clerk = part_1.p_mfgr )
    inner join supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.provsql = nation_1.provsql )
    on (region_1.r_comment = supplier_1.s_address )
where nation_1.provsql <= orders_1.provsql
limit 42;
select  
  supplier_1.s_phone, 
  orders_1.o_orderpriority, 
  count(*), 
  orders_1.o_orderkey, 
  min(
    orders_1.o_orderdate), 
  supplier_1.provsql, 
  orders_1.provsql, 
  orders_1.o_custkey, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  orders_2.o_orderstatus, 
  supplier_2.s_address, 
  supplier_2.s_nationkey, 
  orders_1.o_comment, 
  supplier_1.s_comment, 
  orders_2.o_comment, 
  supplier_1.s_name, 
  orders_2.o_orderdate
from 
  orders as orders_1
    inner join orders as orders_2
      inner join supplier as supplier_1
        inner join supplier as supplier_2
        on (supplier_1.s_phone = supplier_2.s_name )
      on (orders_2.provsql = supplier_1.provsql )
    on (orders_1.o_comment = supplier_2.s_address )
where orders_1.o_comment is not NULL
group by supplier_1.s_phone, orders_1.o_orderpriority, orders_1.o_orderkey, supplier_1.provsql, orders_1.provsql, orders_1.o_custkey, supplier_1.s_comment, supplier_1.s_name, orders_2.o_orderstatus, supplier_2.s_address, supplier_2.s_nationkey, orders_1.o_comment, supplier_1.s_comment, orders_2.o_comment, supplier_1.s_name, orders_2.o_orderdate
limit 14;
select  
  orders_2.o_shippriority, 
  min(
    orders_2.o_orderstatus), 
  min(
    lineitem_2.l_commitdate)
from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_receiptdate = orders_1.o_orderdate )
    inner join orders as orders_2
      inner join lineitem as lineitem_2
      on (orders_2.o_clerk = lineitem_2.l_returnflag )
    on (lineitem_1.l_commitdate = orders_2.o_orderdate )
where orders_2.o_clerk is not NULL
group by orders_2.o_shippriority
limit 28;
select  
  customer_1.c_nationkey, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.provsql is not NULL
limit 24;
select  
  nation_1.n_nationkey, 
  count(*)
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_nationkey
limit 6;
select  
  orders_1.o_orderstatus, 
  sum(
    orders_1.o_custkey), 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.o_orderstatus, orders_1.o_orderpriority
limit 31;
select  
  max(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey >= lineitem_1.l_linenumber
group by lineitem_1.l_linestatus, lineitem_1.l_linestatus
limit 41;
select  
  min(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  count(*), 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.provsql, 
  avg(
    nation_1.n_nationkey), 
  min(
    nation_1.n_regionkey), 
  max(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  max(
    nation_1.n_name), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey <= nation_1.n_regionkey
group by nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_name, nation_1.provsql, nation_1.provsql, nation_1.n_nationkey, nation_1.n_comment
limit 20;
select  
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.provsql = region_1.provsql )
where nation_1.n_regionkey is not NULL
limit 10;
select  
  part_1.p_type, 
  sum(
    part_1.p_retailprice), 
  part_1.p_mfgr, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_acctbal), 
  part_1.p_container, 
  customer_1.c_phone, 
  part_1.p_brand, 
  min(
    part_1.p_partkey)
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_size = customer_1.c_custkey )
where customer_1.c_acctbal is not NULL
group by part_1.p_type, part_1.p_mfgr, customer_1.c_nationkey, part_1.p_container, customer_1.c_phone, part_1.p_brand
limit 9;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 16;
select  
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
group by supplier_1.s_phone, supplier_1.s_suppkey, supplier_1.s_suppkey, supplier_1.s_acctbal
limit 30;
select  
  orders_1.o_comment, 
  partsupp_1.provsql, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_shippriority
from 
  orders as orders_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.provsql = nation_1.provsql )
    on (orders_1.o_totalprice = partsupp_1.ps_supplycost )
where orders_1.o_orderkey > partsupp_1.ps_suppkey
group by orders_1.o_comment, partsupp_1.provsql, orders_1.o_shippriority
limit 19;
select  
  orders_1.o_comment, 
  max(
    orders_1.o_totalprice)
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_comment
limit 20;
select  
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  avg(
    orders_1.o_orderkey), 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_comment, orders_1.o_totalprice, orders_1.o_orderstatus, orders_1.o_totalprice, orders_1.o_orderstatus, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_orderdate, orders_1.o_comment
limit 32;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 28;
select  
  region_2.r_name, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  region_1.r_name
from 
  region as region_1
    inner join region as region_2
      inner join partsupp as partsupp_1
      on (region_2.r_regionkey = partsupp_1.ps_partkey )
    on (region_1.r_regionkey = region_2.r_regionkey )
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
limit 25;
select  
  customer_1.c_mktsegment, 
  max(
    lineitem_2.l_commitdate), 
  lineitem_2.l_discount, 
  max(
    lineitem_2.l_partkey), 
  lineitem_2.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount, 
  customer_1.c_phone, 
  min(
    customer_1.c_mktsegment), 
  min(
    customer_1.c_mktsegment), 
  min(
    lineitem_1.l_shipinstruct), 
  max(
    lineitem_1.l_commitdate), 
  lineitem_2.l_extendedprice, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  max(
    lineitem_1.l_commitdate), 
  customer_1.c_custkey, 
  customer_1.c_address, 
  lineitem_1.l_extendedprice
from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_extendedprice = lineitem_2.l_quantity )
    on (customer_1.c_comment = lineitem_1.l_comment )
where lineitem_1.l_commitdate <= lineitem_1.l_receiptdate
group by customer_1.c_mktsegment, lineitem_2.l_discount, lineitem_2.l_receiptdate, lineitem_1.l_extendedprice, lineitem_1.l_discount, customer_1.c_phone, lineitem_2.l_extendedprice, customer_1.c_phone, customer_1.c_nationkey, customer_1.c_custkey, customer_1.c_address, lineitem_1.l_extendedprice
limit 18;
select  
  lineitem_1.l_commitdate, 
  min(
    lineitem_1.l_linestatus), 
  customer_1.c_comment
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_phone = lineitem_1.l_returnflag )
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_commitdate, customer_1.c_comment
limit 28;
select  
  region_1.r_regionkey
from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_comment = nation_1.n_comment )
where nation_1.n_comment is not NULL
limit 14;
select  
  region_1.r_comment, 
  partsupp_1.ps_supplycost, 
  customer_1.c_nationkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  region_1.r_name, 
  supplier_1.provsql, 
  customer_1.c_comment, 
  partsupp_1.ps_suppkey
from 
  region as region_1
      inner join region as region_2
      on (region_1.provsql = region_2.provsql )
    inner join customer as customer_1
      inner join supplier as supplier_1
        inner join partsupp as partsupp_1
        on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
      on (customer_1.c_name = partsupp_1.ps_comment )
    on (region_2.r_regionkey = partsupp_1.ps_partkey )
where customer_1.c_nationkey is not NULL
limit 12;
select  
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.provsql, 
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_container, 
  max(
    part_1.p_size)
from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.provsql, part_1.p_container, part_1.p_name, part_1.p_size, part_1.p_mfgr, part_1.p_brand, part_1.p_container
limit 6;
select  
  region_1.provsql, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.provsql
from 
  region as region_1
where region_1.r_regionkey < region_1.r_regionkey
group by region_1.provsql, region_1.r_name, region_1.provsql
limit 27;
select  
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 2;
select  
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 25;
select  
  nation_1.provsql, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  count(
    nation_1.n_name), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    nation_1.n_name), 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  max(
    nation_1.n_name), 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name <= nation_1.n_name
group by nation_1.provsql, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_comment, nation_1.n_comment, nation_1.n_comment, nation_1.n_name, nation_1.provsql, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.provsql, nation_1.n_regionkey
limit 1;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 3;
select  
  part_1.p_partkey, 
  part_1.p_comment, 
  part_1.p_container, 
  min(
    part_1.p_partkey), 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_partkey, part_1.p_comment, part_1.p_container, part_1.p_comment, part_1.p_retailprice
limit 21;
select  
  region_1.r_regionkey, 
  lineitem_1.l_linestatus, 
  min(
    partsupp_1.ps_suppkey), 
  nation_1.n_name, 
  count(*), 
  supplier_1.s_address
from 
  supplier as supplier_1
    inner join nation as nation_1
        inner join lineitem as lineitem_1
          inner join partsupp as partsupp_1
          on (lineitem_1.provsql = partsupp_1.provsql )
        on (nation_1.n_nationkey = lineitem_1.l_orderkey )
      inner join region as region_1
      on (lineitem_1.l_returnflag = region_1.r_name )
    on (supplier_1.s_address = region_1.r_comment )
where supplier_1.s_acctbal is not NULL
group by region_1.r_regionkey, lineitem_1.l_linestatus, nation_1.n_name, supplier_1.s_address
limit 41;
select  
  nation_1.n_name, 
  customer_1.c_name, 
  min(
    customer_1.c_nationkey), 
  nation_1.n_comment, 
  sum(
    customer_1.c_nationkey), 
  nation_1.n_name, 
  nation_1.n_name, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_acctbal), 
  nation_1.n_comment, 
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_mktsegment = nation_1.n_name )
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, customer_1.c_name, nation_1.n_comment, nation_1.n_name, nation_1.n_name, customer_1.c_custkey, customer_1.c_mktsegment, nation_1.n_comment, customer_1.c_nationkey
limit 13;
select  
  avg(
    lineitem_1.l_extendedprice)
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 34;
select  
  orders_1.o_clerk
from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_phone = orders_1.o_orderstatus )
where orders_1.o_clerk is not NULL
limit 19;
select  
  part_1.p_name, 
  min(
    part_1.p_mfgr)
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_name
limit 14;
select  
  avg(
    orders_1.o_totalprice), 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  max(
    orders_1.o_clerk), 
  max(
    orders_1.o_clerk), 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_clerk), 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.o_clerk, orders_1.o_shippriority, orders_1.o_orderkey, orders_1.o_orderdate, orders_1.o_orderdate, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_comment, orders_1.o_orderkey
limit 17;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.provsql >= partsupp_1.provsql
limit 39;
select  
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
limit 8;
select  
  count(*), 
  supplier_1.s_nationkey, 
  min(
    part_1.p_brand), 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_linestatus), 
  lineitem_1.provsql, 
  max(
    lineitem_1.l_shipdate), 
  max(
    supplier_1.s_phone), 
  supplier_1.s_nationkey
from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_size = lineitem_1.l_orderkey )
    inner join supplier as supplier_1
    on (lineitem_1.l_partkey = supplier_1.s_suppkey )
where supplier_1.s_address is not NULL
group by supplier_1.s_nationkey, lineitem_1.l_receiptdate, lineitem_1.provsql, supplier_1.s_nationkey
limit 19;
select  
  part_1.p_name, 
  part_1.p_partkey, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_retailprice <= part_1.p_retailprice
limit 8;
select  
  supplier_1.s_nationkey, 
  supplier_1.provsql, 
  sum(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.provsql <= supplier_1.provsql
group by supplier_1.s_nationkey, supplier_1.provsql
limit 38;
select  
  nation_1.n_name, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 1;
select  
  part_1.p_mfgr, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.provsql, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.provsql, 
  max(
    part_1.p_partkey)
from 
  part as part_1
where part_1.p_partkey > part_1.p_size
group by part_1.p_mfgr, part_1.p_container, part_1.p_brand, part_1.p_type, part_1.provsql, part_1.p_type, part_1.p_retailprice, part_1.p_brand, part_1.provsql
limit 28;
select  
  customer_1.c_mktsegment, 
  min(
    part_1.p_size)
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.provsql = customer_1.provsql )
where part_1.p_name is not NULL
group by customer_1.c_mktsegment
limit 5;
select  
  orders_1.provsql, 
  orders_1.o_orderkey, 
  lineitem_1.provsql, 
  orders_1.o_comment, 
  lineitem_1.l_partkey, 
  orders_1.o_orderdate, 
  count(*), 
  lineitem_1.l_shipdate, 
  orders_1.o_custkey, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  sum(
    lineitem_1.l_linenumber), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_commitdate), 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  lineitem_1.l_partkey, 
  orders_1.o_totalprice, 
  lineitem_1.l_linestatus, 
  orders_1.o_orderpriority, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linestatus, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_clerk
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_linestatus = orders_1.o_orderstatus )
where lineitem_1.l_extendedprice >= lineitem_1.l_quantity
group by orders_1.provsql, orders_1.o_orderkey, lineitem_1.provsql, orders_1.o_comment, lineitem_1.l_partkey, orders_1.o_orderdate, lineitem_1.l_shipdate, orders_1.o_custkey, orders_1.o_totalprice, orders_1.o_shippriority, lineitem_1.l_suppkey, lineitem_1.l_comment, orders_1.o_clerk, orders_1.o_orderstatus, lineitem_1.l_partkey, orders_1.o_totalprice, lineitem_1.l_linestatus, orders_1.o_orderpriority, lineitem_1.l_returnflag, lineitem_1.l_linestatus, orders_1.o_totalprice, orders_1.provsql, orders_1.o_clerk
limit 32;
select  
  region_1.provsql, 
  region_1.provsql, 
  orders_1.o_orderpriority, 
  nation_3.n_regionkey
from 
  orders as orders_1
      inner join supplier as supplier_1
            inner join region as region_1
            on (supplier_1.s_name = region_1.r_name )
          inner join nation as nation_1
          on (supplier_1.s_nationkey = nation_1.n_nationkey )
        inner join nation as nation_2
        on (nation_1.provsql = nation_2.provsql )
      on (orders_1.o_comment = supplier_1.s_address )
    inner join nation as nation_3
    on (nation_1.n_nationkey = nation_3.n_nationkey )
where orders_1.o_custkey is not NULL
limit 27;
select  
  customer_1.c_address, 
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.c_comment, 
  avg(
    customer_1.c_custkey), 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_address, customer_1.provsql, customer_1.c_comment, customer_1.c_comment, customer_1.provsql, customer_1.c_comment, customer_1.provsql
limit 14;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
group by partsupp_1.ps_supplycost, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_suppkey
limit 40;
select  
  customer_1.c_nationkey, 
  customer_1.provsql, 
  customer_1.c_name, 
  count(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  max(
    customer_1.c_phone), 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.provsql, 
  customer_1.c_name, 
  max(
    customer_1.c_phone)
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_nationkey, customer_1.provsql, customer_1.c_name, customer_1.c_phone, customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_name, customer_1.provsql, customer_1.c_name
limit 18;
select  
  lineitem_1.l_linenumber, 
  max(
    lineitem_1.l_shipdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_linenumber
limit 22;
select  
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 13;
select  
  supplier_1.provsql, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 19;
select  
  customer_1.c_custkey, 
  min(
    customer_1.c_custkey), 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_acctbal = customer_1.c_acctbal
group by customer_1.c_custkey, customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_address, customer_1.c_acctbal
limit 3;
select  
  region_1.r_comment, 
  count(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.r_comment
limit 23;
select  
  min(
    customer_1.c_phone)
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_address = partsupp_1.ps_comment )
where customer_1.c_address is not NULL
limit 30;
select  
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_commitdate), 
  sum(
    customer_1.c_acctbal)
from 
  customer as customer_1
    inner join orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_clerk = lineitem_1.l_returnflag )
    on (customer_1.c_phone = orders_1.o_orderstatus )
where lineitem_1.l_quantity > lineitem_1.l_discount
group by lineitem_1.l_shipmode
limit 37;
select  
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_container
from 
  part as part_1
where part_1.provsql is not NULL
limit 5;
select  
  orders_1.o_shippriority, 
  min(
    orders_1.o_orderdate), 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  orders_1.o_totalprice
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_availqty = orders_1.o_orderkey )
where partsupp_1.ps_availqty is not NULL
group by orders_1.o_shippriority, partsupp_1.ps_supplycost, partsupp_1.provsql, orders_1.o_totalprice
limit 4;
select  
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_name, 
  max(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_regionkey >= nation_1.n_nationkey
group by nation_1.n_comment, nation_1.provsql, nation_1.n_name
limit 18;
select  
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_linenumber, 
  lineitem_1.provsql, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  sum(
    lineitem_1.l_quantity), 
  lineitem_1.l_partkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.l_tax, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_linenumber, lineitem_1.provsql, lineitem_1.l_shipdate, lineitem_1.l_tax, lineitem_1.l_partkey, lineitem_1.l_returnflag, lineitem_1.l_orderkey, lineitem_1.l_tax, lineitem_1.l_shipinstruct
limit 3;
select  
  orders_1.o_comment, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_shipdate), 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_comment, 
  lineitem_1.l_discount, 
  orders_1.provsql, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_shipdate)
from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_clerk = lineitem_1.l_returnflag )
where lineitem_1.l_suppkey is not NULL
group by orders_1.o_comment, lineitem_1.l_shipinstruct, orders_1.o_comment, orders_1.o_totalprice, orders_1.o_orderkey, lineitem_1.l_shipinstruct, lineitem_1.l_comment, lineitem_1.l_discount, orders_1.provsql, lineitem_1.l_receiptdate, lineitem_1.l_suppkey
limit 34;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
limit 40;
select  
  min(
    orders_1.o_orderdate), 
  min(
    orders_1.o_orderkey), 
  customer_1.c_nationkey, 
  orders_1.o_totalprice, 
  customer_1.c_mktsegment, 
  orders_2.o_orderdate, 
  orders_1.o_totalprice, 
  orders_2.o_totalprice, 
  orders_2.o_comment, 
  customer_1.c_comment, 
  customer_1.c_phone
from 
  orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_totalprice = orders_2.o_totalprice )
    inner join customer as customer_1
    on (orders_2.o_comment = customer_1.c_name )
where customer_1.c_custkey >= orders_1.o_shippriority
group by customer_1.c_nationkey, orders_1.o_totalprice, customer_1.c_mktsegment, orders_2.o_orderdate, orders_1.o_totalprice, orders_2.o_totalprice, orders_2.o_comment, customer_1.c_comment, customer_1.c_phone
limit 27;
select  
  nation_1.provsql, 
  count(*), 
  partsupp_1.provsql, 
  supplier_1.s_nationkey, 
  min(
    nation_1.n_nationkey), 
  max(
    orders_1.o_orderstatus), 
  orders_1.o_comment, 
  partsupp_1.ps_partkey, 
  customer_1.c_address, 
  part_1.p_retailprice, 
  customer_1.c_custkey, 
  partsupp_1.ps_availqty, 
  part_2.p_brand, 
  part_2.p_container, 
  avg(
    part_1.p_retailprice), 
  nation_1.n_name, 
  orders_1.o_orderstatus, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  part_2.p_container, 
  part_1.p_partkey, 
  part_2.p_mfgr
from 
  part as part_1
          inner join part as part_2
          on (part_1.p_size = part_2.p_partkey )
        inner join nation as nation_1
        on (part_1.p_container = nation_1.n_name )
      inner join customer as customer_1
      on (part_1.p_type = customer_1.c_name )
    inner join orders as orders_1
      inner join partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
      on (orders_1.provsql = partsupp_1.provsql )
    on (customer_1.c_address = orders_1.o_comment )
where part_2.p_container is not NULL
group by nation_1.provsql, partsupp_1.provsql, supplier_1.s_nationkey, orders_1.o_comment, partsupp_1.ps_partkey, customer_1.c_address, part_1.p_retailprice, customer_1.c_custkey, partsupp_1.ps_availqty, part_2.p_brand, part_2.p_container, nation_1.n_name, orders_1.o_orderstatus, supplier_1.s_phone, supplier_1.s_phone, part_2.p_container, part_1.p_partkey, part_2.p_mfgr
limit 3;
select  
  max(
    nation_1.n_name), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_nationkey
limit 5;
select  
  region_1.r_comment, 
  part_1.p_mfgr, 
  supplier_1.s_phone, 
  part_1.provsql, 
  region_1.provsql, 
  sum(
    part_1.p_retailprice), 
  supplier_1.s_comment, 
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_brand, 
  supplier_1.s_acctbal, 
  supplier_1.provsql, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  part_1.p_name, 
  max(
    region_1.r_regionkey), 
  max(
    supplier_1.s_phone), 
  region_1.r_regionkey, 
  supplier_1.provsql, 
  count(*), 
  supplier_1.s_acctbal, 
  region_1.r_comment, 
  supplier_1.provsql, 
  part_1.p_type, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  sum(
    part_1.p_retailprice), 
  max(
    supplier_1.s_phone)
from 
  supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_nationkey = region_1.r_regionkey )
    inner join part as part_1
    on (supplier_1.s_phone = part_1.p_mfgr )
where part_1.p_container is not NULL
group by region_1.r_comment, part_1.p_mfgr, supplier_1.s_phone, part_1.provsql, region_1.provsql, supplier_1.s_comment, part_1.p_container, part_1.p_container, part_1.p_brand, supplier_1.s_acctbal, supplier_1.provsql, part_1.p_name, part_1.p_name, region_1.r_regionkey, supplier_1.provsql, supplier_1.s_acctbal, region_1.r_comment, supplier_1.provsql, part_1.p_type, region_1.r_regionkey, region_1.r_regionkey
limit 31;
select  
  lineitem_1.l_commitdate, 
  customer_2.provsql, 
  lineitem_1.l_discount, 
  supplier_1.s_acctbal, 
  supplier_1.provsql, 
  supplier_2.s_suppkey, 
  customer_2.c_nationkey
from 
  lineitem as lineitem_1
      inner join customer as customer_1
        inner join supplier as supplier_1
        on (customer_1.c_name = supplier_1.s_address )
      on (lineitem_1.l_shipinstruct = customer_1.c_phone )
    inner join supplier as supplier_2
      inner join region as region_1
        inner join customer as customer_2
        on (region_1.provsql = customer_2.provsql )
      on (supplier_2.s_nationkey = customer_2.c_custkey )
    on (customer_1.provsql = customer_2.provsql )
where supplier_1.s_nationkey is not NULL
limit 25;
select  
  part_1.p_partkey, 
  part_1.p_name, 
  avg(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_type
from 
  part as part_1
where part_1.p_retailprice > part_1.p_retailprice
group by part_1.p_partkey, part_1.p_name, part_1.p_brand, part_1.p_name, part_1.p_type
limit 4;
select  
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_retailprice, 
  min(
    part_1.p_retailprice), 
  part_1.p_retailprice, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_type = partsupp_1.ps_comment )
where partsupp_1.provsql is not NULL
group by part_1.p_brand, part_1.p_retailprice, part_1.p_container, part_1.p_retailprice, part_1.p_retailprice, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment
limit 19;
select  
  min(
    supplier_1.s_name), 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.provsql > supplier_1.provsql
group by supplier_1.s_acctbal, supplier_1.s_phone, supplier_1.s_acctbal, supplier_1.s_comment
limit 40;
select  
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  partsupp_2.ps_suppkey, 
  count(
    customer_1.c_nationkey), 
  partsupp_3.provsql, 
  customer_1.c_custkey, 
  partsupp_3.ps_availqty, 
  max(
    customer_1.c_mktsegment), 
  partsupp_3.ps_partkey, 
  min(
    partsupp_2.ps_availqty), 
  partsupp_3.ps_comment, 
  customer_1.c_address, 
  max(
    customer_1.c_phone)
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
      inner join customer as customer_1
        inner join partsupp as partsupp_3
        on (customer_1.c_address = partsupp_3.ps_comment )
      on (partsupp_2.ps_availqty = customer_1.c_custkey )
    on (partsupp_1.ps_suppkey = partsupp_3.ps_partkey )
where partsupp_3.provsql < partsupp_1.provsql
group by customer_1.c_nationkey, customer_1.c_custkey, partsupp_2.ps_suppkey, partsupp_3.provsql, customer_1.c_custkey, partsupp_3.ps_availqty, partsupp_3.ps_partkey, partsupp_3.ps_comment, customer_1.c_address
limit 11;
select  
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.provsql, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 23;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  lineitem_1.l_shipdate, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_extendedprice
from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_availqty = lineitem_1.l_orderkey )
where lineitem_1.l_partkey is not NULL
limit 8;
select  
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  sum(
    orders_1.o_totalprice), 
  nation_1.provsql, 
  nation_1.n_comment
from 
  nation as nation_1
    inner join part as part_1
      inner join orders as orders_1
      on (part_1.p_name = orders_1.o_comment )
    on (nation_1.n_name = part_1.p_mfgr )
where nation_1.n_name is not NULL
group by part_1.p_partkey, part_1.provsql, part_1.p_mfgr, part_1.p_mfgr, nation_1.provsql, nation_1.n_comment
limit 29;
select  
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  max(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderstatus), 
  orders_1.o_shippriority, 
  orders_1.provsql, 
  orders_1.o_orderstatus, 
  count(*), 
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderpriority), 
  min(
    orders_1.o_clerk), 
  orders_1.o_comment, 
  avg(
    orders_1.o_custkey)
from 
  orders as orders_1
where orders_1.o_orderkey <= orders_1.o_custkey
group by orders_1.o_totalprice, orders_1.o_clerk, orders_1.o_clerk, orders_1.o_shippriority, orders_1.o_orderstatus, orders_1.o_comment, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_comment, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.provsql, orders_1.o_orderstatus, orders_1.o_orderdate, orders_1.o_comment
limit 27;
select  
  customer_1.c_comment
from 
  customer as customer_1
      inner join region as region_1
      on (customer_1.c_nationkey = region_1.r_regionkey )
    inner join region as region_2
    on (customer_1.c_name = region_2.r_comment )
where region_2.r_regionkey is not NULL
limit 32;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_name = partsupp_1.ps_comment )
where part_1.p_size = part_1.p_partkey
limit 22;
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_clerk, 
  region_1.provsql
from 
  orders as orders_1
    inner join part as part_1
      inner join region as region_1
        inner join orders as orders_2
        on (region_1.r_regionkey = orders_2.o_orderkey )
      on (part_1.p_brand = orders_2.o_orderstatus )
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_2.o_totalprice >= orders_1.o_totalprice
group by orders_1.o_clerk, region_1.provsql
limit 20;
select  
  region_1.provsql, 
  part_1.p_mfgr, 
  region_1.r_regionkey, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_orderdate), 
  part_1.p_container, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate
from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_custkey = part_1.p_partkey )
    inner join region as region_1
    on (part_1.p_size = region_1.r_regionkey )
where orders_1.o_orderkey is not NULL
group by region_1.provsql, part_1.p_mfgr, region_1.r_regionkey, orders_1.o_totalprice, part_1.p_container, orders_1.o_orderstatus, orders_1.o_orderdate
limit 1;
select  
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 26;
select  
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty = partsupp_1.ps_partkey
limit 32;
select  
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 18;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_tax, 
  lineitem_1.provsql, 
  lineitem_1.l_commitdate, 
  lineitem_1.provsql, 
  lineitem_1.l_quantity, 
  lineitem_1.provsql, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate <= lineitem_1.l_commitdate
limit 20;
select  
  orders_1.o_clerk, 
  orders_2.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_2.o_shippriority, 
  orders_2.o_totalprice, 
  orders_2.o_shippriority, 
  sum(
    orders_1.o_totalprice), 
  orders_2.o_orderstatus
from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderstatus = orders_2.o_orderstatus )
where orders_2.o_orderstatus >= orders_2.o_clerk
group by orders_1.o_clerk, orders_2.o_shippriority, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_totalprice, orders_2.o_shippriority, orders_2.o_totalprice, orders_2.o_shippriority, orders_2.o_orderstatus
limit 27;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
limit 40;
select  
  customer_1.c_comment, 
  nation_1.n_comment, 
  customer_1.provsql, 
  customer_1.c_phone, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  nation_1.provsql, 
  min(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  nation_1.n_comment
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.provsql = nation_1.provsql )
where nation_1.n_comment is not NULL
group by customer_1.c_comment, nation_1.n_comment, customer_1.provsql, customer_1.c_phone, nation_1.n_comment, nation_1.n_regionkey, nation_1.n_comment, customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.c_phone, customer_1.c_comment, nation_1.provsql, customer_1.c_phone, nation_1.n_comment
limit 30;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  sum(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.ps_availqty
limit 25;
select distinct 
  min(
    lineitem_1.l_orderkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 42;
select  
  region_1.r_comment
from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_comment = orders_1.o_comment )
where region_1.r_name is not NULL
limit 29;
select  
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  avg(
    region_1.r_regionkey), 
  region_1.r_name
from 
  region as region_1
where region_1.r_name <= region_1.r_name
group by region_1.provsql, region_1.r_comment, region_1.r_regionkey, region_1.r_name, region_1.r_regionkey, region_1.r_name
limit 28;
select  
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  max(
    orders_1.o_clerk), 
  orders_1.o_custkey, 
  orders_1.o_custkey, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_shippriority, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_custkey, orders_1.o_custkey
limit 12;
select  
  lineitem_1.l_extendedprice
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_name = lineitem_1.l_returnflag )
where region_1.r_comment is not NULL
limit 17;
select  
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus, 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_shippriority < orders_1.o_custkey
group by orders_1.o_clerk, orders_1.o_totalprice, orders_1.o_totalprice, orders_1.o_orderpriority, orders_1.o_totalprice, orders_1.o_orderstatus, orders_1.provsql
limit 12;
select  
  sum(
    supplier_1.s_acctbal), 
  sum(
    lineitem_1.l_tax), 
  lineitem_1.l_linestatus, 
  nation_1.n_regionkey, 
  part_1.p_size
from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_linestatus = supplier_1.s_name )
    inner join part as part_1
      inner join nation as nation_1
      on (part_1.provsql = nation_1.provsql )
    on (lineitem_1.provsql = part_1.provsql )
where part_1.p_size < lineitem_1.l_orderkey
group by lineitem_1.l_linestatus, nation_1.n_regionkey, part_1.p_size
limit 13;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus, 
  sum(
    lineitem_1.l_orderkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_discount, 
  lineitem_1.provsql
from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_linestatus, lineitem_1.l_tax, lineitem_1.l_discount, lineitem_1.provsql
limit 34;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 7;
select  
  part_1.p_size, 
  part_1.p_brand, 
  max(
    part_1.p_size), 
  part_2.p_size, 
  part_1.provsql
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_comment = part_2.p_name )
where part_1.p_container > part_1.p_mfgr
group by part_1.p_size, part_1.p_brand, part_2.p_size, part_1.provsql
limit 22;
select  
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_comment, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_nationkey, supplier_1.s_nationkey
limit 9;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name <= nation_1.n_name
limit 37;
select  
  customer_1.c_custkey, 
  min(
    customer_1.c_phone)
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_custkey
limit 33;
select  
  customer_1.c_phone, 
  max(
    customer_1.c_acctbal), 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.provsql, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_acctbal < customer_1.c_acctbal
group by customer_1.c_phone, customer_1.c_name, customer_1.c_phone, customer_1.provsql, customer_1.c_custkey, customer_1.c_address, customer_1.c_mktsegment, customer_1.c_address, customer_1.provsql, customer_1.c_comment, customer_1.provsql, customer_1.c_name
limit 40;
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 17;
select  
  partsupp_1.provsql, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  part_1.p_type, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey
from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join supplier as supplier_1
      on (part_1.p_type = supplier_1.s_address )
    on (partsupp_1.ps_supplycost = part_1.p_retailprice )
where supplier_1.s_comment is not NULL
group by partsupp_1.provsql, supplier_1.s_address, supplier_1.s_name, part_1.p_type, supplier_1.s_address, supplier_1.s_nationkey, part_1.p_partkey
limit 12;
select  
  supplier_2.s_phone, 
  orders_1.o_orderstatus, 
  lineitem_1.l_linestatus, 
  orders_1.o_shippriority, 
  partsupp_1.ps_comment, 
  max(
    orders_1.o_orderdate)
from 
  lineitem as lineitem_1
        inner join orders as orders_1
        on (lineitem_1.l_extendedprice = orders_1.o_totalprice )
      inner join supplier as supplier_1
      on (lineitem_1.l_linestatus = supplier_1.s_name )
    inner join supplier as supplier_2
        inner join customer as customer_1
        on (supplier_2.provsql = customer_1.provsql )
      inner join partsupp as partsupp_1
      on (supplier_2.provsql = partsupp_1.provsql )
    on (supplier_1.s_comment = partsupp_1.ps_comment )
where partsupp_1.ps_partkey is not NULL
group by supplier_2.s_phone, orders_1.o_orderstatus, lineitem_1.l_linestatus, orders_1.o_shippriority, partsupp_1.ps_comment
limit 25;
select  
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_mfgr, 
  part_1.p_container, 
  count(
    lineitem_1.l_linestatus), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linestatus, 
  min(
    part_1.p_partkey), 
  lineitem_1.l_tax, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_partkey, 
  lineitem_1.l_discount
from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_brand = lineitem_1.l_returnflag )
where lineitem_1.l_receiptdate >= lineitem_1.l_commitdate
group by part_1.p_container, part_1.p_comment, part_1.p_mfgr, part_1.p_container, lineitem_1.l_orderkey, lineitem_1.l_suppkey, lineitem_1.l_linestatus, lineitem_1.l_tax, part_1.p_comment, part_1.p_brand, part_1.p_partkey, lineitem_1.l_discount
limit 37;
select  
  min(
    part_1.p_partkey), 
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_size, part_1.p_partkey, part_1.p_mfgr, part_1.p_brand, part_1.p_brand
limit 9;
select  
  nation_2.n_regionkey, 
  nation_1.n_name, 
  sum(
    nation_1.n_regionkey)
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_regionkey = nation_2.n_nationkey )
where nation_1.n_nationkey is not NULL
group by nation_2.n_regionkey, nation_1.n_name
limit 26;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.provsql > partsupp_1.provsql
limit 37;
select  
  lineitem_1.l_shipdate, 
  orders_1.o_totalprice
from 
  lineitem as lineitem_1
    inner join orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_custkey = nation_1.n_nationkey )
    on (lineitem_1.l_returnflag = orders_1.o_orderstatus )
where lineitem_1.l_tax > orders_1.o_totalprice
limit 10;
select  
  orders_1.o_shippriority
from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 19;
select  
  min(
    orders_1.o_orderkey), 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_name, 
  orders_1.o_shippriority, 
  region_1.r_regionkey, 
  orders_1.provsql, 
  orders_1.o_comment, 
  region_1.r_regionkey, 
  min(
    orders_1.o_orderdate)
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_orderstatus <= region_1.r_name
group by region_1.r_regionkey, region_1.provsql, region_1.r_name, region_1.r_name, orders_1.o_shippriority, region_1.r_regionkey, orders_1.provsql, orders_1.o_comment, region_1.r_regionkey
limit 28;
select  
  nation_1.provsql, 
  max(
    customer_1.c_mktsegment), 
  nation_1.provsql
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.provsql = customer_1.provsql )
where customer_1.c_nationkey is not NULL
group by nation_1.provsql, nation_1.provsql
limit 41;
select  
  min(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  max(
    partsupp_1.ps_availqty), 
  orders_1.o_clerk, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  orders_1.o_shippriority, 
  partsupp_1.ps_availqty, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderkey), 
  min(
    orders_1.o_orderpriority), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  orders_1.provsql, 
  partsupp_1.ps_partkey, 
  orders_1.o_custkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_supplycost = orders_1.o_totalprice )
where orders_1.o_orderkey < orders_1.o_shippriority
group by orders_1.o_orderdate, orders_1.o_clerk, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, orders_1.o_shippriority, partsupp_1.ps_availqty, orders_1.o_orderstatus, partsupp_1.ps_supplycost, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, orders_1.provsql, partsupp_1.ps_partkey, orders_1.o_custkey, partsupp_1.ps_comment
limit 19;
select  
  supplier_1.s_suppkey
from 
  supplier as supplier_1
          inner join nation as nation_1
          on (supplier_1.s_suppkey = nation_1.n_nationkey )
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join partsupp as partsupp_2
      on (nation_1.n_regionkey = partsupp_2.ps_partkey )
    inner join partsupp as partsupp_3
        inner join nation as nation_2
          inner join lineitem as lineitem_1
          on (nation_2.provsql = lineitem_1.provsql )
        on (partsupp_3.provsql = nation_2.provsql )
      inner join nation as nation_3
      on (lineitem_1.l_suppkey = nation_3.n_nationkey )
    on (partsupp_1.ps_partkey = nation_3.n_nationkey )
where nation_3.n_regionkey is not NULL
limit 11;
select  
  customer_1.c_mktsegment, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.provsql is not NULL
limit 19;
select  
  part_1.p_brand, 
  part_1.p_size
from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 26;
select  
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_type
from 
  part as part_1
where part_1.p_brand is not NULL
limit 20;
select  
  region_1.r_name, 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_acctbal), 
  supplier_1.s_phone
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_phone = region_1.r_name )
where supplier_1.s_address is not NULL
group by region_1.r_name, supplier_1.s_phone, supplier_1.s_nationkey, supplier_1.s_phone
limit 12;
select  
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 24;
select  
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_phone > customer_1.c_mktsegment
limit 27;
select  
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.provsql, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
group by partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_comment, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.provsql, partsupp_1.ps_comment
limit 28;
select  
  part_1.provsql, 
  count(*), 
  part_2.p_brand, 
  part_1.p_retailprice
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_container = part_2.p_mfgr )
where part_1.p_retailprice is not NULL
group by part_1.provsql, part_2.p_brand, part_1.p_retailprice
limit 8;
select  
  region_1.provsql, 
  count(*), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.provsql, region_1.r_comment, region_1.r_comment, region_1.r_regionkey, region_1.r_name, region_1.r_comment, region_1.provsql, region_1.provsql
limit 25;
select  
  nation_1.provsql, 
  max(
    nation_1.n_nationkey), 
  supplier_1.s_name, 
  nation_1.n_regionkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_regionkey = supplier_1.s_suppkey )
where nation_1.provsql < supplier_1.provsql
group by nation_1.provsql, supplier_1.s_name, nation_1.n_regionkey, supplier_1.s_acctbal, supplier_1.s_phone, supplier_1.s_phone, supplier_1.s_comment, nation_1.n_nationkey, nation_1.n_nationkey
limit 34;
select  
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_container is not NULL
limit 16;
select  
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_brand, 
  part_1.provsql, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_container, 
  max(
    part_1.p_mfgr), 
  part_1.provsql, 
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_type
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_partkey, part_1.p_name, part_1.p_size, part_1.p_type, part_1.p_brand, part_1.provsql, part_1.p_mfgr, part_1.p_partkey, part_1.p_mfgr, part_1.p_container, part_1.provsql, part_1.p_mfgr, part_1.p_name, part_1.p_type
limit 31;
select  
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_orderdate > orders_1.o_orderdate
limit 6;
select  
  part_1.p_name, 
  part_1.p_name
from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
limit 41;
select  
  lineitem_1.l_commitdate, 
  min(
    lineitem_1.l_linestatus), 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_extendedprice
limit 20;
select  
  partsupp_1.provsql, 
  supplier_2.s_address
from 
  nation as nation_1
    inner join supplier as supplier_1
        inner join supplier as supplier_2
        on (supplier_1.s_address = supplier_2.s_address )
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_supplycost = partsupp_2.ps_supplycost )
      on (supplier_2.s_comment = partsupp_1.ps_comment )
    on (nation_1.n_nationkey = supplier_2.s_suppkey )
where supplier_1.s_acctbal = partsupp_1.ps_supplycost
limit 42;
select  
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_type
from 
  part as part_1
where part_1.p_brand is not NULL
limit 16;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  count(*), 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  sum(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_name), 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
group by supplier_1.s_nationkey, supplier_1.s_acctbal, supplier_1.s_phone, supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_name, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_suppkey, supplier_1.s_address, supplier_1.s_nationkey
limit 24;
select  
  max(
    supplier_1.s_phone), 
  sum(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  part_1.p_mfgr, 
  lineitem_1.l_orderkey, 
  lineitem_1.provsql, 
  supplier_1.s_address, 
  part_1.p_size, 
  max(
    lineitem_1.l_shipinstruct), 
  max(
    lineitem_1.l_commitdate), 
  part_1.p_brand, 
  part_1.p_type
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_acctbal = part_1.p_retailprice )
    on (lineitem_1.provsql = part_1.provsql )
where part_1.provsql < lineitem_1.provsql
group by supplier_1.s_phone, part_1.p_mfgr, lineitem_1.l_orderkey, lineitem_1.provsql, supplier_1.s_address, part_1.p_size, part_1.p_brand, part_1.p_type
limit 42;
select  
  customer_1.c_address, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  customer_1.c_address, 
  customer_1.c_name
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_supplycost = customer_1.c_acctbal )
where partsupp_1.ps_suppkey > customer_1.c_custkey
limit 15;
select  
  nation_1.n_regionkey, 
  supplier_1.s_nationkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  min(
    supplier_1.s_name)
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_suppkey is not NULL
group by nation_1.n_regionkey, supplier_1.s_nationkey, nation_1.n_nationkey, nation_1.provsql
limit 3;
select distinct 
  part_1.p_name, 
  max(
    part_1.p_partkey), 
  part_1.p_container, 
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_mfgr < part_1.p_container
group by part_1.p_name, part_1.p_container, part_1.p_retailprice
limit 39;
select  
  lineitem_1.provsql, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 15;
select  
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_type, 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_brand is not NULL
limit 34;
select  
  part_1.p_type, 
  max(
    part_1.p_mfgr), 
  part_1.p_type
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_type, part_1.p_type
limit 22;
select  
  orders_1.o_orderpriority, 
  max(
    orders_1.o_clerk), 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.provsql, 
  max(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_orderpriority, orders_1.o_orderpriority, orders_1.provsql
limit 5;
select  
  part_1.p_retailprice
from 
  part as part_1
where part_1.p_name is not NULL
limit 10;
select  
  orders_1.o_orderkey, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 22;
select  
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_name < region_1.r_name
limit 4;
select  
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_regionkey < nation_1.n_nationkey
limit 3;
select  
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_size < part_1.p_partkey
limit 3;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 40;
select  
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 3;
select  
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 24;
select  
  customer_1.c_comment, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_orderdate), 
  orders_1.provsql, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  customer_1.c_mktsegment
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_clerk = customer_1.c_phone )
where orders_1.o_orderdate is not NULL
group by customer_1.c_comment, orders_1.o_orderstatus, orders_1.provsql, orders_1.o_comment, orders_1.o_totalprice, orders_1.o_orderstatus, customer_1.c_mktsegment
limit 13;
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 40;
select  
  customer_1.provsql, 
  customer_1.provsql, 
  region_1.provsql, 
  customer_1.c_acctbal, 
  region_1.r_comment, 
  max(
    customer_1.c_acctbal), 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  region_1.r_name, 
  region_1.provsql, 
  min(
    region_1.r_regionkey), 
  customer_1.c_mktsegment, 
  region_1.provsql, 
  customer_1.c_phone, 
  region_1.r_comment, 
  customer_1.c_comment, 
  region_1.r_comment, 
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_address = region_1.r_comment )
where customer_1.c_acctbal is not NULL
group by customer_1.provsql, customer_1.provsql, region_1.provsql, customer_1.c_acctbal, region_1.r_comment, customer_1.c_acctbal, customer_1.c_acctbal, customer_1.c_phone, region_1.r_name, region_1.provsql, customer_1.c_mktsegment, region_1.provsql, customer_1.c_phone, region_1.r_comment, customer_1.c_comment, region_1.r_comment, customer_1.c_nationkey
limit 8;
select  
  customer_1.provsql, 
  customer_1.c_phone
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 20;
select  
  part_1.p_retailprice, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_container is not NULL
limit 12;
select  
  nation_1.provsql, 
  count(
    nation_1.n_name), 
  nation_1.n_nationkey, 
  max(
    nation_1.n_name), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.provsql, nation_1.n_nationkey, nation_1.n_nationkey
limit 42;
select  
  part_1.p_comment, 
  max(
    part_1.p_container), 
  part_1.p_mfgr, 
  count(*), 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_container, 
  max(
    part_1.p_retailprice), 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_partkey < part_1.p_size
group by part_1.p_comment, part_1.p_mfgr, part_1.p_brand, part_1.p_comment, part_1.p_name, part_1.p_comment, part_1.p_container, part_1.p_partkey
limit 27;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  sum(
    region_1.r_regionkey), 
  region_1.provsql, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  max(
    region_1.r_name), 
  sum(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_comment, region_1.provsql, region_1.r_name
limit 13;
select  
  max(
    part_1.p_container), 
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_container, 
  min(
    part_1.p_mfgr)
from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_container, part_1.p_retailprice, part_1.p_retailprice, part_1.p_name, part_1.p_container
limit 16;
select  
  customer_1.c_address, 
  max(
    lineitem_1.l_tax), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity
from 
  supplier as supplier_1
        inner join customer as customer_1
        on (supplier_1.s_name = customer_1.c_phone )
      inner join supplier as supplier_2
      on (customer_1.provsql = supplier_2.provsql )
    inner join orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_shippriority = lineitem_1.l_orderkey )
      inner join partsupp as partsupp_1
      on (orders_1.o_comment = partsupp_1.ps_comment )
    on (supplier_1.s_nationkey = partsupp_1.ps_partkey )
where lineitem_1.l_discount <= supplier_2.s_acctbal
group by customer_1.c_address, lineitem_1.l_receiptdate, lineitem_1.l_quantity
limit 24;
select  
  count(
    region_1.provsql), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.provsql
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_regionkey, region_1.r_regionkey, region_1.r_name, region_1.provsql, region_1.r_comment, region_1.r_comment, region_1.r_regionkey, region_1.r_regionkey, region_1.provsql
limit 8;
select  
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 30;
select  
  supplier_1.s_name, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 22;
select  
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_quantity, 
  max(
    lineitem_1.l_suppkey)
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_quantity
limit 13;
select  
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.provsql >= part_1.provsql
limit 16;
select  
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  sum(
    orders_1.o_totalprice), 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  avg(
    orders_1.o_shippriority), 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_orderkey <= orders_1.o_custkey
group by orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_comment, orders_1.o_custkey, orders_1.o_comment, orders_1.o_shippriority, orders_1.o_orderstatus, orders_1.o_comment, orders_1.o_totalprice, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_clerk, orders_1.o_totalprice, orders_1.o_orderdate, orders_1.o_totalprice, orders_1.provsql, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_orderdate
limit 19;
select  
  min(
    part_1.p_size), 
  lineitem_1.l_orderkey, 
  lineitem_2.l_linestatus
from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.provsql = lineitem_1.provsql )
    inner join lineitem as lineitem_2
    on (lineitem_1.l_discount = lineitem_2.l_quantity )
where part_1.p_size is not NULL
group by lineitem_1.l_orderkey, lineitem_2.l_linestatus
limit 10;
select  
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_name), 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_nationkey, supplier_1.s_name, supplier_1.s_suppkey
limit 4;
select  
  sum(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 41;
select  
  part_1.p_comment, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_size is not NULL
limit 6;
select  
  customer_1.c_acctbal, 
  region_1.provsql, 
  region_1.r_regionkey
from 
  customer as customer_1
      inner join region as region_1
      on (customer_1.c_phone = region_1.r_name )
    inner join orders as orders_1
      inner join region as region_2
      on (orders_1.o_custkey = region_2.r_regionkey )
    on (customer_1.c_address = region_2.r_comment )
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 39;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 26;
select  
  customer_1.c_mktsegment, 
  nation_1.n_comment, 
  customer_1.c_name, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  customer_1.c_comment, 
  nation_1.n_nationkey
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_mktsegment = nation_1.n_name )
where customer_1.c_name is not NULL
limit 10;
select  
  avg(
    lineitem_1.l_linenumber), 
  sum(
    lineitem_1.l_extendedprice)
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 36;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice, 
  region_1.r_name, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_quantity, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linestatus, 
  region_1.r_regionkey, 
  min(
    lineitem_1.l_shipdate)
from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_suppkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_extendedprice, region_1.r_name, lineitem_1.l_comment, lineitem_1.l_quantity, lineitem_1.l_linenumber, lineitem_1.l_linestatus, region_1.r_regionkey
limit 21;
select  
  nation_1.n_nationkey
from 
  supplier as supplier_1
    inner join nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_regionkey = customer_1.c_custkey )
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where lineitem_1.l_suppkey is not NULL
limit 32;
select  
  supplier_1.s_nationkey, 
  lineitem_2.l_tax, 
  avg(
    lineitem_1.l_extendedprice), 
  partsupp_1.provsql, 
  orders_1.o_shippriority, 
  orders_1.o_custkey
from 
  supplier as supplier_1
      inner join orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_custkey = partsupp_1.ps_partkey )
      on (supplier_1.s_acctbal = partsupp_1.ps_supplycost )
    inner join lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.provsql = lineitem_2.provsql )
    on (partsupp_1.ps_comment = lineitem_1.l_comment )
where partsupp_1.provsql <= orders_1.provsql
group by supplier_1.s_nationkey, lineitem_2.l_tax, partsupp_1.provsql, orders_1.o_shippriority, orders_1.o_custkey
limit 35;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  max(
    region_1.r_name), 
  min(
    region_1.r_regionkey), 
  region_1.provsql, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.r_regionkey, region_1.r_name, region_1.provsql, region_1.provsql, region_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.r_regionkey
limit 10;
select  
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.provsql, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 5;
select  
  part_1.p_type
from 
  part as part_1
where part_1.p_mfgr <= part_1.p_container
limit 14;
select  
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
group by supplier_1.s_nationkey, supplier_1.s_name
limit 8;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 5;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  customer_1.c_address, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  supplier_1.provsql, 
  min(
    supplier_1.s_phone), 
  customer_1.c_comment, 
  supplier_1.s_suppkey, 
  customer_1.c_custkey, 
  customer_1.c_phone
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_name = customer_1.c_phone )
where customer_1.c_address is not NULL
group by supplier_1.s_phone, customer_1.c_address, supplier_1.s_name, supplier_1.s_name, supplier_1.provsql, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_mktsegment, supplier_1.provsql, customer_1.c_comment, supplier_1.s_suppkey, customer_1.c_custkey, customer_1.c_phone
limit 22;
select  
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  sum(
    supplier_1.s_acctbal), 
  min(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
group by supplier_1.s_name, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_phone, supplier_1.s_address
limit 22;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name <= nation_1.n_name
limit 7;
select  
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join nation as nation_2
      inner join nation as nation_3
        inner join lineitem as lineitem_1
        on (nation_3.n_name = lineitem_1.l_returnflag )
      on (nation_2.n_regionkey = nation_3.n_nationkey )
    on (nation_1.provsql = lineitem_1.provsql )
where nation_2.n_regionkey = lineitem_1.l_orderkey
limit 15;
select  
  nation_1.n_name, 
  supplier_1.s_phone, 
  max(
    supplier_1.s_phone), 
  nation_1.provsql, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_name = supplier_1.s_name )
where supplier_1.provsql is not NULL
group by nation_1.n_name, supplier_1.s_phone, nation_1.provsql, supplier_1.s_acctbal, supplier_1.s_comment
limit 18;
select  
  partsupp_2.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  count(*), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.provsql = partsupp_2.provsql )
where partsupp_2.ps_comment is not NULL
group by partsupp_2.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 21;
select  
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderkey)
from 
  orders as orders_1
where orders_1.o_orderkey <= orders_1.o_shippriority
group by orders_1.o_shippriority, orders_1.o_orderpriority, orders_1.o_totalprice, orders_1.o_orderstatus
limit 33;
select  
  customer_1.c_name, 
  customer_1.c_address, 
  orders_1.o_orderdate
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where customer_1.provsql = orders_1.provsql
limit 19;
select  
  orders_2.o_orderdate, 
  supplier_1.provsql
from 
  orders as orders_1
          inner join orders as orders_2
          on (orders_1.o_totalprice = orders_2.o_totalprice )
        inner join supplier as supplier_1
        on (orders_2.o_clerk = supplier_1.s_name )
      inner join orders as orders_3
        inner join customer as customer_1
        on (orders_3.o_custkey = customer_1.c_custkey )
      on (orders_1.provsql = customer_1.provsql )
    inner join supplier as supplier_2
    on (supplier_1.s_comment = supplier_2.s_address )
where supplier_1.provsql is not NULL
limit 4;
select  
  orders_1.provsql, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 8;
select  
  region_1.r_comment, 
  partsupp_1.ps_supplycost, 
  region_2.provsql, 
  region_1.r_name, 
  partsupp_1.ps_comment, 
  region_3.r_regionkey, 
  region_1.r_comment
from 
  region as region_1
      inner join region as region_2
      on (region_1.r_name = region_2.r_name )
    inner join region as region_3
      inner join partsupp as partsupp_1
      on (region_3.provsql = partsupp_1.provsql )
    on (region_1.r_comment = partsupp_1.ps_comment )
where partsupp_1.ps_suppkey = region_3.r_regionkey
limit 30;
select  
  count(*), 
  max(
    partsupp_1.ps_availqty)
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
limit 38;
select  
  customer_1.provsql, 
  customer_1.c_nationkey, 
  part_2.p_type, 
  min(
    part_2.p_container)
from 
  part as part_1
    inner join customer as customer_1
      inner join part as part_2
      on (customer_1.c_comment = part_2.p_name )
    on (part_1.p_mfgr = customer_1.c_phone )
where customer_1.c_nationkey is not NULL
group by customer_1.provsql, customer_1.c_nationkey, part_2.p_type
limit 39;
select  
  region_1.provsql, 
  max(
    region_1.r_regionkey), 
  count(
    region_1.provsql)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.provsql
limit 28;
select  
  count(
    part_1.p_type), 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  sum(
    part_1.p_retailprice), 
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_partkey, part_1.p_brand, part_1.p_container, part_1.p_comment, part_1.p_container, part_1.p_comment, part_1.p_mfgr, part_1.p_retailprice, part_1.p_retailprice, part_1.p_retailprice, part_1.p_comment, part_1.p_size, part_1.p_container, part_1.p_partkey, part_1.p_partkey
limit 6;
select  
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 23;
select  
  count(
    part_1.provsql), 
  part_1.p_comment
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
group by part_1.p_comment
limit 11;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  count(*), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey, region_1.r_regionkey, region_1.provsql, region_1.provsql, region_1.r_name, region_1.r_comment, region_1.r_regionkey, region_1.r_regionkey, region_1.r_name
limit 25;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_comment
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_suppkey, lineitem_1.l_shipmode, lineitem_1.l_linenumber, lineitem_1.l_returnflag, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_comment
limit 16;
select  
  nation_1.provsql
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.provsql is not NULL
limit 25;
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_mktsegment), 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  customer_1.c_address, 
  supplier_1.provsql, 
  sum(
    supplier_1.s_nationkey), 
  customer_1.c_comment, 
  customer_1.c_phone, 
  supplier_1.s_acctbal, 
  avg(
    supplier_1.s_nationkey), 
  customer_1.c_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  customer_1.c_mktsegment, 
  supplier_1.s_phone, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  avg(
    supplier_1.s_nationkey), 
  supplier_1.s_phone
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_nationkey = customer_1.c_custkey )
where supplier_1.s_address is not NULL
group by supplier_1.s_address, supplier_1.s_nationkey, customer_1.c_mktsegment, customer_1.c_address, customer_1.c_nationkey, supplier_1.s_address, supplier_1.s_phone, supplier_1.s_comment, customer_1.c_address, supplier_1.provsql, customer_1.c_comment, customer_1.c_phone, supplier_1.s_acctbal, customer_1.c_acctbal, supplier_1.s_acctbal, supplier_1.s_name, customer_1.c_mktsegment, supplier_1.s_phone, customer_1.c_nationkey, customer_1.c_nationkey, supplier_1.s_phone
limit 10;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.provsql, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_discount, 
  sum(
    lineitem_1.l_quantity), 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where lineitem_1.l_partkey < region_1.r_regionkey
group by region_1.r_name, region_1.r_name, region_1.provsql, lineitem_1.l_suppkey, lineitem_1.l_discount, lineitem_1.l_discount
limit 35;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.provsql, 
  max(
    region_1.r_name), 
  min(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_regionkey, region_1.r_name, region_1.r_regionkey, region_1.provsql
limit 22;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_commitdate)
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_returnflag
limit 40;
select  
  supplier_1.provsql, 
  nation_1.n_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  avg(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.provsql = supplier_1.provsql )
where supplier_1.s_acctbal is not NULL
group by supplier_1.provsql, nation_1.n_nationkey, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_nationkey
limit 16;
select  
  max(
    orders_1.o_orderpriority), 
  avg(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  count(*), 
  orders_1.o_orderdate, 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_clerk, orders_1.o_shippriority, orders_1.o_orderdate, orders_1.provsql
limit 22;
select  
  avg(
    customer_1.c_nationkey)
from 
  customer as customer_1
    inner join lineitem as lineitem_1
        inner join orders as orders_1
        on (lineitem_1.l_quantity = orders_1.o_totalprice )
      inner join nation as nation_1
      on (orders_1.o_clerk = nation_1.n_name )
    on (customer_1.c_address = lineitem_1.l_comment )
where lineitem_1.l_receiptdate is not NULL
limit 17;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_partkey, 
  lineitem_1.provsql, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_returnflag), 
  lineitem_1.l_tax, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.provsql, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.provsql is not NULL
group by lineitem_1.l_tax, lineitem_1.l_suppkey, lineitem_1.l_comment, lineitem_1.l_partkey, lineitem_1.provsql, lineitem_1.l_tax, lineitem_1.l_tax, lineitem_1.l_receiptdate, lineitem_1.l_quantity, lineitem_1.l_shipdate, lineitem_1.l_shipdate, lineitem_1.l_orderkey, lineitem_1.l_shipmode, lineitem_1.provsql, lineitem_1.l_quantity
limit 13;
select  
  count(
    region_2.r_name), 
  count(
    partsupp_1.ps_partkey), 
  region_1.r_comment, 
  count(*), 
  region_2.provsql
from 
  region as region_1
    inner join customer as customer_1
      inner join region as region_2
        inner join partsupp as partsupp_1
        on (region_2.r_regionkey = partsupp_1.ps_partkey )
      on (customer_1.c_acctbal = partsupp_1.ps_supplycost )
    on (region_1.r_name = region_2.r_name )
where region_1.r_name is not NULL
group by region_1.r_comment, region_2.provsql
limit 11;
select  
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  avg(
    orders_1.o_custkey), 
  orders_1.o_comment, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_totalprice = orders_1.o_totalprice
group by orders_1.o_clerk, orders_1.o_clerk, orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_comment, orders_1.o_shippriority, orders_1.o_orderstatus, orders_1.o_orderkey
limit 32;
select  
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority
from 
  region as region_1
    inner join orders as orders_1
    on (region_1.provsql = orders_1.provsql )
where orders_1.o_orderdate < orders_1.o_orderdate
limit 20;
select  
  max(
    orders_1.o_orderdate), 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderdate
from 
  orders as orders_1
where orders_1.o_custkey < orders_1.o_orderkey
group by orders_1.o_totalprice, orders_1.o_shippriority, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_clerk, orders_1.o_orderdate
limit 23;
select  
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderkey
from 
  supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join customer as customer_1
    on (orders_1.o_orderpriority = customer_1.c_phone )
where supplier_1.provsql = customer_1.provsql
group by orders_1.o_orderkey
limit 19;
select  
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 34;
select  
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 3;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 29;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 34;
select  
  part_1.p_type, 
  sum(
    part_1.p_retailprice), 
  part_1.p_type, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_type, part_1.p_type, part_1.p_comment
limit 29;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
limit 26;
select  
  max(
    part_1.p_size), 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.provsql
from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_container, part_1.p_comment, part_1.p_name, part_1.p_comment, part_1.p_name, part_1.p_type, part_1.p_mfgr, part_1.provsql
limit 7;
select  
  max(
    region_1.r_name), 
  region_1.r_name, 
  max(
    region_1.r_name), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_name, region_1.r_name, region_1.r_comment, region_1.r_regionkey, region_1.r_name
limit 30;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
limit 40;
select  
  count(*), 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.provsql >= nation_1.provsql
group by nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.provsql
limit 40;
select  
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 11;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 26;
select  
  partsupp_1.ps_availqty, 
  count(*), 
  max(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty
limit 18;
select  
  nation_1.n_nationkey, 
  max(
    orders_1.o_clerk)
from 
  partsupp as partsupp_1
    inner join region as region_1
          inner join partsupp as partsupp_2
          on (region_1.r_comment = partsupp_2.ps_comment )
        inner join nation as nation_1
          inner join orders as orders_1
          on (nation_1.n_name = orders_1.o_orderstatus )
        on (region_1.r_comment = orders_1.o_comment )
      inner join lineitem as lineitem_1
      on (orders_1.o_clerk = lineitem_1.l_returnflag )
    on (partsupp_1.ps_suppkey = partsupp_2.ps_partkey )
where lineitem_1.l_orderkey is not NULL
group by nation_1.n_nationkey
limit 31;
select  
  part_1.p_size
from 
  nation as nation_1
    inner join part as part_1
      inner join part as part_2
          inner join part as part_3
          on (part_2.p_name = part_3.p_name )
        inner join customer as customer_1
          inner join part as part_4
          on (customer_1.c_comment = part_4.p_name )
        on (part_3.p_size = customer_1.c_custkey )
      on (part_1.p_comment = customer_1.c_name )
    on (nation_1.n_comment = part_2.p_name )
where part_4.provsql is not NULL
limit 35;
select  
  lineitem_1.l_comment, 
  nation_1.n_nationkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linenumber, 
  min(
    nation_1.n_regionkey), 
  lineitem_1.provsql, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_returnflag = nation_1.n_name )
where nation_1.n_name is not NULL
group by lineitem_1.l_comment, nation_1.n_nationkey, lineitem_1.l_commitdate, lineitem_1.l_linestatus, lineitem_1.l_linenumber, lineitem_1.provsql, lineitem_1.l_shipdate
limit 20;
select  
  customer_1.c_custkey, 
  customer_1.provsql, 
  sum(
    customer_1.c_acctbal), 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_phone)
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_custkey, customer_1.provsql, customer_1.c_nationkey, customer_1.c_mktsegment, customer_1.provsql, customer_1.c_acctbal, customer_1.c_comment, customer_1.c_nationkey
limit 20;
select  
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_name, 
  max(
    part_1.p_retailprice), 
  part_2.p_name, 
  part_1.provsql, 
  part_2.p_container, 
  part_1.p_name, 
  part_2.p_mfgr, 
  part_1.p_mfgr, 
  part_1.provsql, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_2.p_size, 
  part_2.p_retailprice, 
  part_2.p_retailprice
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_size > part_1.p_partkey
group by part_1.p_comment, part_1.p_comment, part_1.p_name, part_2.p_name, part_1.provsql, part_2.p_container, part_1.p_name, part_2.p_mfgr, part_1.p_mfgr, part_1.provsql, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_mfgr, part_2.p_size, part_2.p_retailprice, part_2.p_retailprice
limit 35;
select  
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_size, 
  avg(
    part_1.p_retailprice), 
  part_1.p_partkey, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_mfgr, 
  max(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  min(
    part_1.p_brand), 
  part_1.provsql, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.provsql, 
  max(
    part_1.p_size), 
  max(
    part_1.p_container), 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_type, 
  part_1.p_comment, 
  max(
    part_1.p_container), 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  count(
    part_1.p_comment)
from 
  part as part_1
where part_1.provsql >= part_1.provsql
group by part_1.p_container, part_1.p_comment, part_1.p_name, part_1.p_size, part_1.p_partkey, part_1.p_size, part_1.p_brand, part_1.p_container, part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_comment, part_1.p_brand, part_1.p_mfgr, part_1.provsql, part_1.p_comment, part_1.p_comment, part_1.p_retailprice, part_1.provsql, part_1.p_retailprice, part_1.p_size, part_1.p_size, part_1.p_retailprice, part_1.p_comment, part_1.p_type, part_1.p_comment, part_1.p_partkey, part_1.p_type, part_1.p_container, part_1.p_size, part_1.p_mfgr, part_1.p_brand
limit 35;
select  
  region_1.r_regionkey, 
  region_1.provsql
from 
  region as region_1
where region_1.r_name is not NULL
limit 16;
select  
  region_1.provsql, 
  region_1.r_regionkey, 
  max(
    region_1.r_name), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.provsql, region_1.r_regionkey, region_1.r_regionkey, region_1.r_regionkey, region_1.r_regionkey
limit 3;
select  
  avg(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.provsql
limit 1;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  lineitem_1.l_discount, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.l_shipinstruct, 
  customer_1.c_custkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  customer_1.c_custkey, 
  customer_1.c_acctbal
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_mktsegment = lineitem_1.l_returnflag )
where customer_1.c_name is not NULL
group by lineitem_1.l_tax, lineitem_1.l_tax, lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_shipinstruct, customer_1.c_custkey, lineitem_1.l_suppkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, customer_1.c_custkey, customer_1.c_acctbal
limit 34;
select  
  partsupp_1.ps_supplycost, 
  count(*), 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_supplycost, partsupp_1.provsql, partsupp_1.ps_availqty, partsupp_1.ps_availqty
limit 26;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 23;
select  
  part_1.p_type, 
  region_1.provsql, 
  region_1.r_comment, 
  part_1.p_size, 
  min(
    part_1.p_brand), 
  part_1.p_comment, 
  region_1.r_name, 
  part_1.p_container, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_partkey
from 
  region as region_1
    inner join part as part_1
    on (region_1.provsql = part_1.provsql )
where region_1.r_comment is not NULL
group by part_1.p_type, region_1.provsql, region_1.r_comment, part_1.p_size, part_1.p_comment, region_1.r_name, part_1.p_container, region_1.r_regionkey, region_1.r_regionkey, region_1.r_name, part_1.p_comment, part_1.p_container, part_1.p_container, part_1.p_partkey
limit 27;
select  
  part_1.p_comment
from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.provsql <= part_1.provsql
limit 31;
select  
  supplier_1.s_nationkey
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_comment = nation_1.n_comment )
where nation_1.provsql > supplier_1.provsql
limit 15;
select  
  region_2.r_name, 
  part_1.p_type, 
  region_2.r_comment, 
  region_2.provsql
from 
  part as part_1
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
      inner join lineitem as lineitem_2
        inner join region as region_2
        on (lineitem_2.l_linestatus = region_2.r_name )
      on (lineitem_1.l_discount = lineitem_2.l_quantity )
    on (region_1.r_comment = lineitem_1.l_comment )
where region_2.provsql >= lineitem_2.provsql
limit 21;
select  
  customer_1.c_acctbal, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.provsql = lineitem_1.provsql )
where customer_1.provsql is not NULL
group by customer_1.c_acctbal, customer_1.c_nationkey
limit 22;
select  
  part_1.p_partkey, 
  sum(
    part_1.p_retailprice), 
  min(
    part_1.p_partkey), 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_partkey, part_1.p_container, part_1.p_mfgr, part_1.p_mfgr, part_1.p_comment
limit 12;
select  
  min(
    nation_1.n_name), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_comment
limit 42;
select  
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_returnflag), 
  supplier_1.provsql, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag, 
  supplier_1.s_suppkey, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_shipinstruct), 
  supplier_1.s_address, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity, 
  max(
    lineitem_1.l_returnflag)
from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
    on (lineitem_1.l_partkey = supplier_1.s_suppkey )
where lineitem_1.l_extendedprice < supplier_1.s_acctbal
group by lineitem_1.l_commitdate, supplier_1.provsql, lineitem_1.l_linenumber, lineitem_1.l_returnflag, supplier_1.s_suppkey, lineitem_1.l_shipdate, supplier_1.s_address, lineitem_1.l_receiptdate, lineitem_1.l_quantity
limit 32;
select  
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 29;
select  
  part_1.p_mfgr, 
  part_1.provsql, 
  part_1.provsql
from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 35;
select  
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.provsql, 
  min(
    part_1.p_retailprice), 
  max(
    part_1.p_size), 
  part_1.p_size
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_name = nation_1.n_comment )
where nation_1.n_nationkey is not NULL
group by nation_1.provsql, nation_1.n_name, nation_1.provsql, part_1.p_size
limit 41;
select  
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  nation_1.provsql, 
  customer_1.c_name, 
  nation_1.n_name, 
  customer_1.provsql, 
  customer_1.c_mktsegment
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_name = nation_1.n_comment )
where customer_1.c_custkey is not NULL
limit 16;
select  
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.provsql
limit 36;
select  
  region_1.r_comment, 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql is not NULL
limit 29;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_regionkey > nation_1.n_nationkey
limit 38;
select  
  avg(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.s_nationkey = supplier_1.s_suppkey
group by supplier_1.s_name, supplier_1.s_acctbal
limit 5;
select  
  customer_1.c_nationkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey
from 
  supplier as supplier_1
    inner join orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderstatus = customer_1.c_phone )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_acctbal is not NULL
limit 18;
select  
  customer_1.c_mktsegment, 
  nation_2.n_name, 
  orders_1.o_custkey, 
  sum(
    customer_1.c_nationkey), 
  orders_1.o_clerk, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  nation_1.n_comment, 
  min(
    supplier_1.s_acctbal), 
  nation_2.n_regionkey, 
  nation_1.provsql, 
  nation_2.n_name, 
  sum(
    orders_1.o_totalprice), 
  count(
    nation_3.n_nationkey)
from 
  partsupp as partsupp_1
      inner join orders as orders_1
          inner join nation as nation_1
          on (orders_1.o_comment = nation_1.n_comment )
        inner join customer as customer_1
        on (nation_1.n_regionkey = customer_1.c_custkey )
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    inner join nation as nation_2
        inner join nation as nation_3
        on (nation_2.n_nationkey = nation_3.n_nationkey )
      inner join supplier as supplier_1
      on (nation_3.n_nationkey = supplier_1.s_suppkey )
    on (customer_1.c_nationkey = supplier_1.s_suppkey )
where orders_1.provsql is not NULL
group by customer_1.c_mktsegment, nation_2.n_name, orders_1.o_custkey, orders_1.o_clerk, supplier_1.s_address, supplier_1.s_name, nation_1.n_comment, nation_2.n_regionkey, nation_1.provsql, nation_2.n_name
limit 34;
select  
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  count(*), 
  customer_1.provsql, 
  customer_1.c_name, 
  avg(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_address, 
  avg(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  sum(
    customer_1.c_acctbal), 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_name, customer_1.c_custkey, customer_1.c_phone, customer_1.c_custkey, customer_1.c_address, customer_1.c_mktsegment, customer_1.provsql, customer_1.c_name, customer_1.c_comment, customer_1.c_address, customer_1.c_name, customer_1.c_comment, customer_1.provsql, customer_1.c_mktsegment, customer_1.c_address, customer_1.c_name
limit 31;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_discount), 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate > lineitem_1.l_shipdate
group by lineitem_1.l_shipdate, lineitem_1.l_tax, lineitem_1.l_orderkey, lineitem_1.l_suppkey
limit 32;
select  
  orders_1.o_totalprice, 
  nation_1.n_comment, 
  orders_1.o_comment, 
  orders_2.o_shippriority
from 
  orders as orders_1
    inner join nation as nation_1
      inner join orders as orders_2
      on (nation_1.n_comment = orders_2.o_comment )
    on (orders_1.o_orderstatus = orders_2.o_orderstatus )
where nation_1.n_regionkey is not NULL
limit 27;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey < partsupp_1.ps_availqty
limit 2;
select  
  customer_1.c_address, 
  customer_1.c_address, 
  lineitem_1.l_shipmode, 
  customer_1.provsql
from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.provsql = customer_1.provsql )
where customer_1.c_acctbal <= lineitem_1.l_extendedprice
limit 6;
select  
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.provsql, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  min(
    partsupp_1.ps_availqty), 
  orders_1.o_shippriority, 
  partsupp_1.ps_partkey, 
  orders_1.o_orderkey, 
  avg(
    orders_1.o_totalprice), 
  partsupp_1.ps_comment, 
  orders_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_shippriority = partsupp_1.ps_partkey )
where orders_1.o_totalprice is not NULL
group by partsupp_1.ps_supplycost, partsupp_1.provsql, orders_1.o_orderkey, orders_1.o_comment, orders_1.o_orderpriority, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.provsql, orders_1.o_orderdate, orders_1.o_shippriority, partsupp_1.ps_partkey, orders_1.o_orderkey, partsupp_1.ps_comment, orders_1.provsql, partsupp_1.ps_partkey, partsupp_1.provsql, partsupp_1.ps_comment
limit 22;
select  
  orders_1.o_comment, 
  part_1.p_size, 
  part_1.p_partkey, 
  orders_2.o_orderstatus, 
  part_1.provsql, 
  part_1.p_size, 
  max(
    orders_1.o_orderkey)
from 
  orders as orders_1
    inner join part as part_1
      inner join orders as orders_2
      on (part_1.p_comment = orders_2.o_comment )
    on (orders_1.o_clerk = orders_2.o_orderstatus )
where orders_2.o_custkey is not NULL
group by orders_1.o_comment, part_1.p_size, part_1.p_partkey, orders_2.o_orderstatus, part_1.provsql, part_1.p_size
limit 32;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 34;
select  
  customer_1.provsql, 
  max(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.provsql, customer_1.c_phone, customer_1.c_nationkey, customer_1.c_phone, customer_1.c_comment
limit 21;
select  
  customer_1.c_mktsegment, 
  customer_1.c_comment
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 31;
select  
  supplier_1.s_address, 
  min(
    nation_1.n_name)
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.n_regionkey is not NULL
group by supplier_1.s_address
limit 36;
select  
  count(
    region_1.provsql), 
  sum(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  count(
    region_1.provsql), 
  region_1.provsql
from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
group by region_1.r_comment, region_1.r_regionkey, region_1.provsql
limit 4;
select  
  nation_1.provsql, 
  customer_1.c_comment, 
  nation_1.n_regionkey, 
  customer_1.c_name
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_comment = customer_1.c_name )
where customer_1.c_acctbal > customer_1.c_acctbal
limit 37;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_partkey), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 40;
select  
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty = partsupp_1.ps_partkey
limit 32;
select  
  orders_1.o_orderpriority
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_comment = region_1.r_comment )
where region_1.r_comment is not NULL
limit 28;
select  
  part_1.p_size, 
  part_1.p_container
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_comment = part_1.p_name )
where partsupp_1.ps_partkey is not NULL
limit 29;
select  
  partsupp_1.ps_partkey, 
  region_1.r_comment, 
  partsupp_1.ps_suppkey, 
  region_1.r_regionkey, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  sum(
    partsupp_1.ps_supplycost), 
  part_1.p_type, 
  max(
    partsupp_1.ps_partkey)
from 
  part as part_1
      inner join region as region_1
      on (part_1.p_mfgr = region_1.r_name )
    inner join partsupp as partsupp_1
    on (part_1.p_comment = partsupp_1.ps_comment )
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_partkey, region_1.r_comment, partsupp_1.ps_suppkey, region_1.r_regionkey, part_1.p_brand, part_1.p_mfgr, part_1.p_type
limit 17;
select  
  part_1.p_brand
from 
  part as part_1
where part_1.provsql <= part_1.provsql
limit 9;
select  
  min(
    customer_1.c_mktsegment)
from 
  customer as customer_1
where customer_1.provsql is not NULL
limit 4;
select  
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_nationkey = lineitem_1.l_orderkey )
where lineitem_1.l_partkey is not NULL
limit 3;
select  
  min(
    part_1.p_mfgr), 
  part_1.p_type, 
  part_1.p_container
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_type, part_1.p_container
limit 40;
select  
  max(
    partsupp_1.ps_suppkey), 
  min(
    lineitem_1.l_shipmode), 
  max(
    region_1.r_regionkey)
from 
  lineitem as lineitem_1
    inner join region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_comment = partsupp_1.ps_comment )
    on (lineitem_1.l_linestatus = region_1.r_name )
where lineitem_1.l_partkey is not NULL
limit 40;
select  
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.provsql > partsupp_1.provsql
limit 8;
select  
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderpriority), 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.provsql = orders_1.provsql
group by orders_1.o_shippriority, orders_1.o_totalprice, orders_1.o_comment, orders_1.o_orderstatus, orders_1.o_orderstatus, orders_1.o_orderstatus, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_orderpriority
limit 19;
select  
  partsupp_1.ps_availqty, 
  nation_1.n_comment, 
  region_1.r_regionkey, 
  nation_1.n_nationkey
from 
  region as region_1
      inner join partsupp as partsupp_1
      on (region_1.provsql = partsupp_1.provsql )
    inner join nation as nation_1
    on (partsupp_1.ps_suppkey = nation_1.n_nationkey )
where nation_1.n_regionkey is not NULL
limit 15;
select  
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_shippriority < orders_1.o_orderkey
limit 26;
select  
  min(
    orders_1.o_clerk), 
  orders_1.o_shippriority, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  min(
    orders_1.o_clerk), 
  sum(
    customer_1.c_acctbal), 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderstatus, 
  customer_1.c_custkey
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderstatus = customer_1.c_phone )
where orders_1.o_orderdate < orders_1.o_orderdate
group by orders_1.o_shippriority, customer_1.c_custkey, customer_1.c_custkey, customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, orders_1.o_orderstatus, customer_1.c_custkey
limit 30;
select  
  nation_1.n_regionkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  lineitem_1.l_returnflag, 
  supplier_2.s_suppkey, 
  part_1.provsql, 
  part_1.p_partkey, 
  part_1.p_comment, 
  supplier_1.provsql, 
  min(
    supplier_2.s_nationkey), 
  nation_1.provsql, 
  part_2.p_size, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  nation_1.n_nationkey, 
  part_2.p_comment
from 
  part as part_1
      inner join nation as nation_1
        inner join supplier as supplier_1
        on (nation_1.n_nationkey = supplier_1.s_suppkey )
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
      inner join part as part_2
        inner join lineitem as lineitem_1
        on (part_2.p_name = lineitem_1.l_comment )
      on (supplier_2.s_nationkey = lineitem_1.l_orderkey )
    on (part_1.p_comment = supplier_2.s_address )
where part_1.p_size is not NULL
group by nation_1.n_regionkey, supplier_1.s_suppkey, supplier_1.s_nationkey, lineitem_1.l_returnflag, supplier_2.s_suppkey, part_1.provsql, part_1.p_partkey, part_1.p_comment, supplier_1.provsql, nation_1.provsql, part_2.p_size, lineitem_1.l_shipinstruct, lineitem_1.l_extendedprice, nation_1.n_nationkey, part_2.p_comment
limit 17;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 8;
select  
  orders_1.o_custkey, 
  min(
    orders_1.o_orderpriority), 
  orders_1.provsql, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_custkey, orders_1.provsql, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_custkey, orders_1.o_shippriority, orders_1.o_orderdate, orders_1.o_comment
limit 8;
select  
  lineitem_1.l_shipmode, 
  nation_1.n_regionkey, 
  max(
    lineitem_1.l_shipdate), 
  nation_1.n_nationkey, 
  min(
    lineitem_1.l_linenumber), 
  nation_1.n_regionkey, 
  lineitem_1.l_shipdate, 
  nation_1.n_name, 
  lineitem_1.l_shipdate, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  count(
    lineitem_1.l_receiptdate), 
  nation_1.n_comment, 
  nation_1.n_comment, 
  min(
    lineitem_1.l_linestatus), 
  nation_1.provsql, 
  avg(
    lineitem_1.l_orderkey), 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_shipinstruct = nation_1.n_name )
where nation_1.provsql is not NULL
group by lineitem_1.l_shipmode, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_regionkey, lineitem_1.l_shipdate, nation_1.n_name, lineitem_1.l_shipdate, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_comment, nation_1.n_comment, nation_1.provsql, nation_1.n_nationkey, nation_1.n_name, nation_1.n_comment
limit 7;
select  
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey, 
  sum(
    supplier_1.s_acctbal)
from 
  supplier as supplier_1
where supplier_1.provsql = supplier_1.provsql
group by supplier_1.s_nationkey
limit 13;
select  
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
limit 19;
select  
  nation_1.n_comment, 
  partsupp_1.ps_supplycost, 
  nation_1.n_comment
from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_availqty = nation_1.n_nationkey )
where partsupp_1.ps_comment is not NULL
limit 14;
select  
  min(
    lineitem_1.l_shipdate), 
  partsupp_1.ps_availqty
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty
limit 25;
select  
  lineitem_1.l_commitdate
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 26;
select  
  min(
    orders_1.o_orderdate), 
  min(
    orders_1.o_orderdate), 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  part_1.p_comment, 
  orders_1.o_comment, 
  nation_2.n_name
from 
  nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_name = orders_1.o_orderstatus )
    inner join part as part_1
      inner join nation as nation_2
      on (part_1.p_name = nation_2.n_comment )
    on (nation_1.provsql = part_1.provsql )
where nation_2.n_nationkey >= part_1.p_size
group by nation_1.n_regionkey, part_1.p_comment, orders_1.o_comment, nation_2.n_name
limit 24;
select  
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  max(
    part_1.p_partkey), 
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_size, 
  part_1.p_container
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_brand, part_1.p_size, part_1.p_comment, part_1.p_comment, part_1.p_name, part_1.p_type, part_1.p_partkey, part_1.p_comment, part_1.p_type, part_1.p_type, part_1.p_mfgr, part_1.p_size, part_1.p_container
limit 29;
select  
  orders_1.o_orderstatus, 
  lineitem_1.provsql, 
  orders_1.o_orderdate, 
  customer_1.c_acctbal
from 
  lineitem as lineitem_1
    inner join customer as customer_1
        inner join orders as orders_1
        on (customer_1.c_address = orders_1.o_comment )
      inner join customer as customer_2
      on (customer_1.c_name = customer_2.c_name )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_comment is not NULL
limit 23;
select  
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_name), 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_address, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.provsql, supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_acctbal, supplier_1.s_comment
limit 28;
select  
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct < lineitem_1.l_returnflag
limit 13;
select  
  max(
    part_1.p_partkey), 
  part_1.p_size, 
  part_1.p_retailprice, 
  sum(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_size, part_1.p_retailprice, part_1.p_comment, part_1.p_name, part_1.p_brand, part_1.p_container, part_1.p_brand
limit 38;
select  
  orders_2.o_orderkey, 
  lineitem_1.l_partkey, 
  orders_2.o_shippriority, 
  orders_2.provsql, 
  orders_2.o_orderdate, 
  orders_2.o_orderdate, 
  orders_2.o_orderdate, 
  min(
    orders_1.o_orderkey), 
  min(
    lineitem_1.l_shipdate), 
  max(
    orders_1.o_orderpriority), 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
        inner join orders as orders_1
        on (partsupp_1.ps_availqty = orders_1.o_orderkey )
      inner join orders as orders_2
      on (partsupp_1.ps_supplycost = orders_2.o_totalprice )
    on (lineitem_1.l_linenumber = orders_2.o_orderkey )
where lineitem_1.l_commitdate is not NULL
group by orders_2.o_orderkey, lineitem_1.l_partkey, orders_2.o_shippriority, orders_2.provsql, orders_2.o_orderdate, orders_2.o_orderdate, orders_2.o_orderdate, lineitem_1.l_tax
limit 18;
select  
  lineitem_1.l_orderkey, 
  part_3.p_retailprice, 
  part_2.p_size, 
  part_2.p_name, 
  lineitem_2.l_shipdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber, 
  lineitem_2.l_shipdate, 
  max(
    lineitem_2.l_partkey), 
  part_1.provsql, 
  part_1.p_name, 
  orders_1.o_comment, 
  orders_1.provsql, 
  min(
    part_1.p_brand), 
  part_1.p_type, 
  part_2.p_mfgr, 
  part_1.p_name, 
  orders_1.o_orderdate, 
  count(
    part_3.p_brand), 
  part_1.p_name, 
  part_2.p_partkey, 
  part_2.p_size, 
  min(
    lineitem_1.l_shipdate), 
  partsupp_1.provsql, 
  partsupp_1.ps_suppkey, 
  lineitem_2.l_shipinstruct, 
  orders_1.provsql, 
  part_1.p_brand, 
  part_3.provsql
from 
  lineitem as lineitem_1
          inner join part as part_1
          on (lineitem_1.l_linestatus = part_1.p_mfgr )
        inner join part as part_2
          inner join part as part_3
          on (part_2.p_comment = part_3.p_name )
        on (part_1.p_mfgr = part_3.p_mfgr )
      inner join partsupp as partsupp_1
      on (part_1.p_retailprice = partsupp_1.ps_supplycost )
    inner join orders as orders_1
      inner join lineitem as lineitem_2
      on (orders_1.o_clerk = lineitem_2.l_returnflag )
    on (part_2.p_container = lineitem_2.l_returnflag )
where lineitem_2.l_suppkey > lineitem_1.l_linenumber
group by lineitem_1.l_orderkey, part_3.p_retailprice, part_2.p_size, part_2.p_name, lineitem_2.l_shipdate, lineitem_1.l_returnflag, lineitem_1.l_linenumber, lineitem_2.l_shipdate, part_1.provsql, part_1.p_name, orders_1.o_comment, orders_1.provsql, part_1.p_type, part_2.p_mfgr, part_1.p_name, orders_1.o_orderdate, part_1.p_name, part_2.p_partkey, part_2.p_size, partsupp_1.provsql, partsupp_1.ps_suppkey, lineitem_2.l_shipinstruct, orders_1.provsql, part_1.p_brand, part_3.provsql
limit 17;
select  
  region_1.provsql, 
  min(
    orders_1.o_orderdate), 
  partsupp_1.ps_partkey, 
  region_1.provsql, 
  orders_1.o_orderpriority, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  partsupp_1.ps_comment, 
  orders_1.o_orderstatus
from 
  partsupp as partsupp_1
      inner join orders as orders_1
      on (partsupp_1.ps_availqty = orders_1.o_orderkey )
    inner join region as region_1
    on (orders_1.o_comment = region_1.r_comment )
where partsupp_1.ps_suppkey is not NULL
group by region_1.provsql, partsupp_1.ps_partkey, region_1.provsql, orders_1.o_orderpriority, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, partsupp_1.ps_comment, region_1.r_regionkey, region_1.r_comment, partsupp_1.ps_comment, orders_1.o_orderstatus
limit 10;
select  
  region_1.provsql, 
  count(*), 
  region_2.r_comment, 
  region_1.r_name, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  min(
    region_1.r_name), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  region_1.r_regionkey, 
  region_2.provsql, 
  partsupp_1.ps_suppkey, 
  region_2.r_regionkey, 
  partsupp_1.provsql, 
  region_2.r_name, 
  region_2.provsql
from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    inner join region as region_2
    on (region_1.r_comment = region_2.r_comment )
where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
group by region_1.provsql, region_2.r_comment, region_1.r_name, partsupp_1.ps_comment, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, region_1.r_regionkey, region_2.provsql, partsupp_1.ps_suppkey, region_2.r_regionkey, partsupp_1.provsql, region_2.r_name, region_2.provsql
limit 18;
select  
  orders_1.o_custkey
from 
  partsupp as partsupp_1
      inner join part as part_1
        inner join customer as customer_1
        on (part_1.p_brand = customer_1.c_phone )
      on (partsupp_1.ps_comment = customer_1.c_name )
    inner join orders as orders_1
    on (customer_1.c_mktsegment = orders_1.o_orderstatus )
where orders_1.o_orderstatus < orders_1.o_orderpriority
limit 30;
select  
  region_1.r_name, 
  customer_1.c_name, 
  nation_1.n_nationkey, 
  customer_1.c_phone, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  count(*), 
  customer_1.c_name
from 
  lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_linenumber = region_1.r_regionkey )
    inner join lineitem as lineitem_2
      inner join nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_comment = customer_1.c_name )
      on (lineitem_2.l_returnflag = nation_1.n_name )
    on (region_1.provsql = nation_1.provsql )
where customer_1.c_comment is not NULL
group by region_1.r_name, customer_1.c_name, nation_1.n_nationkey, customer_1.c_phone, region_1.r_regionkey, region_1.r_comment, customer_1.c_name
limit 29;
select  
  partsupp_1.ps_suppkey, 
  customer_1.c_address
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.provsql = partsupp_1.provsql )
where partsupp_1.provsql <= customer_1.provsql
limit 13;
select  
  orders_1.o_comment, 
  orders_1.provsql, 
  orders_1.o_shippriority, 
  orders_1.provsql, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  min(
    orders_1.o_shippriority)
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_comment, orders_1.provsql, orders_1.o_shippriority, orders_1.provsql, orders_1.o_orderpriority, orders_1.o_clerk
limit 19;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_regionkey, 
  max(
    region_1.r_name), 
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_comment, 
  max(
    region_1.r_name), 
  region_1.provsql, 
  region_1.provsql, 
  region_1.provsql, 
  region_1.r_name
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.r_name, region_1.r_regionkey, region_1.r_regionkey, region_1.r_comment, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.r_regionkey, region_1.r_comment, region_1.provsql, region_1.r_comment, region_1.provsql, region_1.provsql, region_1.provsql, region_1.r_name
limit 25;
select  
  nation_1.provsql
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_regionkey = customer_1.c_custkey )
where customer_1.c_acctbal = customer_1.c_acctbal
limit 33;
select  
  supplier_1.s_acctbal, 
  count(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment
limit 13;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.provsql
limit 8;
select  
  customer_1.c_name, 
  partsupp_1.provsql, 
  orders_2.o_orderkey, 
  nation_1.provsql, 
  min(
    orders_2.o_shippriority)
from 
  region as region_1
    inner join customer as customer_1
        inner join part as part_1
          inner join orders as orders_1
          on (part_1.p_type = orders_1.o_comment )
        on (customer_1.c_mktsegment = orders_1.o_orderstatus )
      inner join orders as orders_2
        inner join partsupp as partsupp_1
          inner join nation as nation_1
          on (partsupp_1.provsql = nation_1.provsql )
        on (orders_2.o_custkey = partsupp_1.ps_partkey )
      on (customer_1.c_address = partsupp_1.ps_comment )
    on (region_1.r_name = orders_1.o_orderstatus )
where customer_1.c_mktsegment is not NULL
group by customer_1.c_name, partsupp_1.provsql, orders_2.o_orderkey, nation_1.provsql
limit 17;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty < partsupp_1.ps_partkey
limit 22;
select  
  orders_1.o_orderstatus
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 20;
select  
  region_1.r_comment
from 
  region as region_1
where region_1.provsql is not NULL
limit 42;
select  
  lineitem_1.l_linestatus, 
  partsupp_1.ps_partkey, 
  count(*), 
  part_1.p_partkey, 
  partsupp_1.ps_supplycost, 
  part_1.p_partkey, 
  partsupp_1.ps_partkey, 
  max(
    part_1.p_container), 
  part_1.p_mfgr
from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_availqty = lineitem_1.l_orderkey )
    on (part_1.provsql = partsupp_1.provsql )
where partsupp_1.ps_comment is not NULL
group by lineitem_1.l_linestatus, partsupp_1.ps_partkey, part_1.p_partkey, partsupp_1.ps_supplycost, part_1.p_partkey, partsupp_1.ps_partkey, part_1.p_mfgr
limit 24;
select  
  supplier_1.s_suppkey, 
  min(
    part_1.p_mfgr), 
  part_1.p_mfgr, 
  supplier_1.s_address
from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.provsql is not NULL
group by supplier_1.s_suppkey, part_1.p_mfgr, supplier_1.s_address
limit 6;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  region_1.r_regionkey, 
  customer_1.c_name
from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join region as region_1
      on (customer_1.c_mktsegment = region_1.r_name )
    on (supplier_1.provsql = customer_1.provsql )
where customer_1.c_nationkey is not NULL
limit 35;
select  
  orders_1.o_clerk, 
  supplier_2.s_comment, 
  lineitem_1.l_suppkey, 
  part_1.p_type, 
  supplier_2.provsql, 
  lineitem_1.l_orderkey, 
  orders_1.o_comment, 
  max(
    lineitem_1.l_shipdate), 
  lineitem_1.provsql, 
  orders_1.o_totalprice, 
  supplier_2.s_suppkey, 
  supplier_2.s_nationkey, 
  lineitem_1.l_quantity, 
  part_1.provsql, 
  lineitem_1.provsql, 
  supplier_1.s_name, 
  part_1.p_name, 
  part_1.p_comment, 
  supplier_3.s_name, 
  max(
    lineitem_1.l_shipinstruct), 
  orders_1.o_orderkey
from 
  orders as orders_1
      inner join supplier as supplier_1
          inner join lineitem as lineitem_1
          on (supplier_1.s_address = lineitem_1.l_comment )
        inner join supplier as supplier_2
        on (lineitem_1.l_quantity = supplier_2.s_acctbal )
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    inner join supplier as supplier_3
      inner join part as part_1
      on (supplier_3.s_comment = part_1.p_name )
    on (orders_1.provsql = supplier_3.provsql )
where supplier_2.provsql > supplier_3.provsql
group by orders_1.o_clerk, supplier_2.s_comment, lineitem_1.l_suppkey, part_1.p_type, supplier_2.provsql, lineitem_1.l_orderkey, orders_1.o_comment, lineitem_1.provsql, orders_1.o_totalprice, supplier_2.s_suppkey, supplier_2.s_nationkey, lineitem_1.l_quantity, part_1.provsql, lineitem_1.provsql, supplier_1.s_name, part_1.p_name, part_1.p_comment, supplier_3.s_name, orders_1.o_orderkey
limit 9;
select  
  sum(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate <= lineitem_1.l_commitdate
group by lineitem_1.l_shipinstruct, lineitem_1.l_linenumber
limit 7;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_discount), 
  lineitem_1.l_receiptdate, 
  sum(
    lineitem_1.l_extendedprice), 
  lineitem_1.provsql, 
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
group by lineitem_1.l_quantity, lineitem_1.l_extendedprice, lineitem_1.l_commitdate, lineitem_1.l_suppkey, lineitem_1.l_extendedprice, lineitem_1.l_receiptdate, lineitem_1.provsql, lineitem_1.l_returnflag, lineitem_1.l_orderkey, lineitem_1.l_shipinstruct, lineitem_1.l_tax, lineitem_1.l_discount, lineitem_1.l_returnflag, lineitem_1.l_commitdate, lineitem_1.l_receiptdate
limit 40;
select  
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_quantity, lineitem_1.l_partkey, lineitem_1.l_extendedprice
limit 28;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  customer_1.c_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty <= partsupp_1.ps_partkey
limit 15;
select  
  count(
    region_1.provsql), 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
group by region_1.r_regionkey
limit 34;
select  
  customer_1.c_mktsegment
from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_suppkey = lineitem_1.l_orderkey )
    on (customer_1.provsql = lineitem_1.provsql )
where customer_1.c_acctbal <= partsupp_1.ps_supplycost
limit 13;
select  
  min(
    part_1.p_retailprice), 
  region_1.r_name, 
  region_1.r_comment, 
  part_1.p_name, 
  lineitem_1.l_linenumber, 
  part_1.p_size, 
  lineitem_1.l_comment, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  region_1.r_comment, 
  max(
    part_1.p_container)
from 
  lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.provsql = part_1.provsql )
    inner join region as region_1
    on (part_1.provsql = region_1.provsql )
where part_1.p_mfgr is not NULL
group by region_1.r_name, region_1.r_comment, part_1.p_name, lineitem_1.l_linenumber, part_1.p_size, lineitem_1.l_comment, part_1.p_brand, part_1.p_retailprice, part_1.p_retailprice, region_1.r_comment
limit 12;
select  
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_size, 
  count(
    part_1.p_comment), 
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_container
from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_mfgr, part_1.p_name, part_1.p_size, part_1.p_retailprice, part_1.p_container, part_1.p_size, part_1.p_container
limit 37;
select  
  min(
    lineitem_1.l_returnflag), 
  lineitem_1.l_partkey, 
  supplier_1.s_address, 
  supplier_1.s_suppkey
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_retailprice = supplier_1.s_acctbal )
    inner join lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.l_comment = nation_1.n_comment )
    on (part_1.p_size = nation_1.n_nationkey )
where nation_1.n_nationkey is not NULL
group by lineitem_1.l_partkey, supplier_1.s_address, supplier_1.s_suppkey
limit 24;
select  
  customer_1.c_name, 
  part_1.p_name, 
  part_1.p_partkey, 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  part_1.p_name
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_container = customer_1.c_phone )
where part_1.p_size is not NULL
limit 32;
select  
  part_1.p_partkey, 
  part_1.p_comment
from 
  part as part_1
where part_1.p_brand is not NULL
limit 25;
select  
  lineitem_1.l_orderkey
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey < lineitem_1.l_partkey
limit 8;
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  count(
    nation_1.n_name), 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  sum(
    nation_1.n_nationkey), 
  min(
    nation_1.n_name), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
group by nation_1.n_name, nation_1.n_regionkey, nation_1.n_name, nation_1.provsql, nation_1.n_comment, nation_1.provsql, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_name
limit 10;
select  
  partsupp_1.ps_availqty, 
  region_1.r_name, 
  supplier_1.s_acctbal, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  partsupp_1.provsql, 
  supplier_1.s_acctbal, 
  region_1.r_comment, 
  region_1.r_comment, 
  supplier_1.provsql
from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_address = region_1.r_comment )
    on (partsupp_1.provsql = supplier_1.provsql )
where region_1.r_regionkey is not NULL
limit 38;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_nationkey, nation_1.n_nationkey
limit 4;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 14;
select  
  partsupp_1.ps_comment, 
  part_1.p_comment, 
  part_1.p_size, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  part_1.p_mfgr, 
  max(
    part_1.p_container), 
  part_1.p_comment, 
  part_1.p_partkey, 
  min(
    part_1.p_size), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  count(*), 
  part_1.p_mfgr
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.provsql = part_1.provsql )
where partsupp_1.ps_supplycost < part_1.p_retailprice
group by partsupp_1.ps_comment, part_1.p_comment, part_1.p_size, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, part_1.p_mfgr, part_1.p_comment, part_1.p_partkey, partsupp_1.ps_comment, partsupp_1.ps_availqty, part_1.p_partkey, part_1.p_retailprice, part_1.p_mfgr
limit 9;
select  
  orders_1.o_orderstatus, 
  supplier_1.s_comment
from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_comment = orders_1.o_comment )
where supplier_1.provsql < orders_1.provsql
limit 4;
select  
  customer_1.provsql, 
  min(
    supplier_1.s_name), 
  max(
    customer_1.c_mktsegment)
from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_nationkey = customer_1.c_custkey )
where customer_1.c_address is not NULL
group by customer_1.provsql
limit 42;
select  
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  partsupp_1.ps_comment, 
  customer_1.c_phone, 
  region_1.provsql, 
  partsupp_1.ps_comment, 
  customer_1.c_comment, 
  avg(
    customer_1.c_acctbal), 
  region_1.r_comment, 
  max(
    customer_1.c_mktsegment), 
  customer_1.c_custkey, 
  customer_1.c_comment
from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    on (customer_1.c_address = partsupp_1.ps_comment )
where region_1.provsql = customer_1.provsql
group by customer_1.c_nationkey, customer_1.c_acctbal, partsupp_1.ps_comment, customer_1.c_phone, region_1.provsql, partsupp_1.ps_comment, customer_1.c_comment, region_1.r_comment, customer_1.c_custkey, customer_1.c_comment
limit 40;
select  
  region_1.r_comment, 
  lineitem_1.l_suppkey, 
  region_1.r_regionkey, 
  lineitem_1.l_suppkey
from 
  supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_address = region_1.r_comment )
    inner join lineitem as lineitem_1
    on (supplier_1.s_address = lineitem_1.l_comment )
where lineitem_1.l_returnflag is not NULL
limit 5;
select  
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_name
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_comment = part_1.p_name )
where partsupp_1.ps_comment is not NULL
limit 12;
select  
  min(
    orders_1.o_orderstatus), 
  nation_1.n_name
from 
  region as region_1
    inner join customer as customer_1
        inner join orders as orders_1
        on (customer_1.c_acctbal = orders_1.o_totalprice )
      inner join part as part_1
          inner join nation as nation_1
          on (part_1.p_name = nation_1.n_comment )
        inner join lineitem as lineitem_1
        on (nation_1.n_comment = lineitem_1.l_comment )
      on (orders_1.o_orderdate = lineitem_1.l_shipdate )
    on (region_1.provsql = lineitem_1.provsql )
where lineitem_1.l_returnflag is not NULL
group by nation_1.n_name
limit 26;
select  
  nation_1.n_regionkey
from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_name = region_1.r_name )
where region_1.r_name is not NULL
limit 34;
select distinct 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 29;
select  
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 30;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
limit 32;
select  
  nation_1.provsql, 
  max(
    nation_1.n_name), 
  min(
    nation_1.n_nationkey), 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.provsql, 
  avg(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.provsql, nation_1.provsql, nation_1.n_nationkey, nation_1.provsql, nation_1.n_name, nation_1.provsql, nation_1.n_name, nation_1.n_regionkey
limit 19;
select  
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 6;
select  
  region_1.provsql, 
  region_1.provsql, 
  count(*), 
  max(
    region_1.r_name), 
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.provsql, region_1.provsql, region_1.provsql, region_1.provsql
limit 30;
select  
  part_1.p_size, 
  region_1.r_regionkey
from 
  region as region_1
    inner join part as part_1
    on (region_1.provsql = part_1.provsql )
where part_1.p_partkey is not NULL
limit 8;
select  
  avg(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_name < supplier_1.s_phone
limit 20;
select  
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  lineitem_2.l_discount, 
  lineitem_2.l_discount, 
  supplier_1.s_phone, 
  min(
    lineitem_1.l_returnflag), 
  lineitem_2.l_tax, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_2.l_orderkey, 
  lineitem_2.l_partkey, 
  customer_1.provsql, 
  max(
    supplier_1.s_nationkey), 
  min(
    lineitem_1.l_shipmode), 
  customer_1.c_name, 
  lineitem_1.provsql, 
  supplier_1.s_name, 
  lineitem_1.l_comment, 
  lineitem_2.l_comment, 
  max(
    lineitem_1.l_returnflag), 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  lineitem_1.l_quantity, 
  customer_1.c_mktsegment, 
  lineitem_2.l_returnflag, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  customer_1.provsql, 
  lineitem_1.l_orderkey, 
  supplier_1.s_phone, 
  lineitem_2.l_shipmode, 
  supplier_1.provsql, 
  customer_1.c_nationkey, 
  lineitem_2.l_linenumber, 
  lineitem_2.l_suppkey, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
    inner join customer as customer_1
        inner join supplier as supplier_1
        on (customer_1.c_custkey = supplier_1.s_suppkey )
      inner join lineitem as lineitem_2
      on (customer_1.c_mktsegment = lineitem_2.l_returnflag )
    on (lineitem_1.l_linenumber = customer_1.c_custkey )
where customer_1.c_address is not NULL
group by supplier_1.s_name, supplier_1.s_suppkey, lineitem_2.l_discount, lineitem_2.l_discount, supplier_1.s_phone, lineitem_2.l_tax, lineitem_1.l_commitdate, lineitem_1.l_returnflag, lineitem_2.l_orderkey, lineitem_2.l_partkey, customer_1.provsql, customer_1.c_name, lineitem_1.provsql, supplier_1.s_name, lineitem_1.l_comment, lineitem_2.l_comment, supplier_1.s_acctbal, supplier_1.s_nationkey, supplier_1.s_address, lineitem_1.l_quantity, customer_1.c_mktsegment, lineitem_2.l_returnflag, supplier_1.s_address, supplier_1.s_phone, customer_1.provsql, lineitem_1.l_orderkey, supplier_1.s_phone, lineitem_2.l_shipmode, supplier_1.provsql, customer_1.c_nationkey, lineitem_2.l_linenumber, lineitem_2.l_suppkey, lineitem_1.l_suppkey
limit 36;
select  
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 29;
select  
  partsupp_1.ps_suppkey, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  orders_1.o_orderpriority
from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_suppkey = part_1.p_partkey )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where part_1.p_retailprice <= partsupp_1.ps_supplycost
limit 19;
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
limit 18;
select  
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  count(*), 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  count(*), 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
group by supplier_1.s_name, supplier_1.s_acctbal, supplier_1.s_nationkey, supplier_1.s_name, supplier_1.s_address, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_nationkey, supplier_1.s_acctbal, supplier_1.provsql, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_nationkey
limit 28;
select  
  partsupp_1.ps_availqty, 
  count(
    partsupp_1.ps_suppkey), 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.provsql, partsupp_1.ps_availqty
limit 3;
select  
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_comment, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  min(
    orders_1.o_orderdate)
from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_custkey, orders_1.o_shippriority, orders_1.o_clerk, orders_1.o_totalprice, orders_1.provsql, orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_totalprice, orders_1.o_custkey
limit 34;
select  
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 16;
select  
  part_1.p_brand
from 
  part as part_1
where part_1.p_brand <= part_1.p_container
limit 30;
select  
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  part_1.p_container
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_comment = part_1.p_name )
where region_1.r_regionkey is not NULL
limit 41;
select  
  lineitem_1.l_suppkey, 
  count(*), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.l_tax < lineitem_1.l_discount
group by lineitem_1.l_suppkey, lineitem_1.l_suppkey, lineitem_1.l_quantity
limit 10;
select  
  supplier_1.s_acctbal, 
  customer_1.c_address, 
  customer_1.c_comment, 
  count(
    customer_1.c_comment), 
  supplier_1.s_name, 
  supplier_1.provsql, 
  lineitem_1.l_linenumber, 
  supplier_1.s_nationkey, 
  lineitem_1.l_orderkey, 
  sum(
    lineitem_1.l_quantity), 
  min(
    customer_1.c_mktsegment)
from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    on (supplier_1.s_acctbal = lineitem_1.l_quantity )
where lineitem_1.l_linenumber <= supplier_1.s_suppkey
group by supplier_1.s_acctbal, customer_1.c_address, customer_1.c_comment, supplier_1.s_name, supplier_1.provsql, lineitem_1.l_linenumber, supplier_1.s_nationkey, lineitem_1.l_orderkey
limit 2;
select  
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_comment is not NULL
limit 14;
select  
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  sum(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey >= partsupp_1.ps_partkey
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_comment, partsupp_1.provsql
limit 6;
select  
  customer_1.c_custkey, 
  max(
    customer_1.c_phone), 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_custkey, customer_1.provsql
limit 32;
select  
  avg(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.provsql = partsupp_1.provsql
group by partsupp_1.ps_partkey, partsupp_1.ps_availqty
limit 23;
select  
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  sum(
    orders_1.o_totalprice), 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_orderpriority, orders_1.o_custkey, orders_1.o_orderkey
limit 5;
select  
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_regionkey, 
  supplier_1.provsql, 
  region_1.r_name
from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.provsql = region_1.provsql )
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_address, supplier_1.s_comment, region_1.r_name, region_1.provsql, region_1.r_regionkey, supplier_1.provsql, region_1.r_name
limit 21;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  avg(
    nation_1.n_nationkey)
from 
  nation as nation_1
where nation_1.n_regionkey <= nation_1.n_nationkey
group by nation_1.n_name, nation_1.n_name
limit 34;
select  
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 1;
select  
  nation_1.n_comment, 
  nation_1.provsql, 
  lineitem_1.l_linestatus, 
  part_1.p_size, 
  part_1.p_size, 
  lineitem_1.l_comment, 
  nation_1.n_name, 
  lineitem_1.l_suppkey, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  lineitem_1.provsql, 
  max(
    part_1.p_size), 
  max(
    nation_1.n_nationkey), 
  lineitem_1.l_quantity, 
  part_1.p_partkey, 
  lineitem_1.provsql
from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_mfgr = nation_1.n_name )
    inner join lineitem as lineitem_1
    on (nation_1.n_regionkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount is not NULL
group by nation_1.n_comment, nation_1.provsql, lineitem_1.l_linestatus, part_1.p_size, part_1.p_size, lineitem_1.l_comment, nation_1.n_name, lineitem_1.l_suppkey, part_1.p_retailprice, part_1.p_retailprice, lineitem_1.provsql, lineitem_1.l_quantity, part_1.p_partkey, lineitem_1.provsql
limit 27;
select  
  part_1.p_retailprice, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_size > part_1.p_partkey
limit 4;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  avg(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_comment, region_1.r_comment, region_1.r_comment
limit 7;
select  
  part_1.p_type, 
  part_1.provsql, 
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_partkey, 
  part_1.provsql, 
  part_1.p_size
from 
  part as part_1
where part_1.p_type is not NULL
limit 24;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_tax
from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 12;
select  
  nation_1.n_regionkey, 
  orders_1.o_totalprice, 
  nation_1.provsql, 
  nation_1.n_name, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus
from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_regionkey = orders_1.o_orderkey )
where nation_1.n_name < orders_1.o_orderpriority
limit 13;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_returnflag, 
  lineitem_1.provsql, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
limit 21;
select  
  supplier_1.s_address, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  max(
    orders_2.o_orderkey), 
  min(
    orders_1.o_shippriority)
from 
  orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    inner join orders as orders_2
    on (supplier_1.s_suppkey = orders_2.o_orderkey )
where orders_1.o_totalprice is not NULL
group by supplier_1.s_address, orders_1.o_totalprice, orders_1.o_orderstatus
limit 20;
select  
  customer_1.c_address, 
  orders_1.provsql, 
  customer_1.c_phone, 
  customer_1.c_custkey
from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_clerk = customer_1.c_phone )
where orders_1.o_orderdate is not NULL
limit 7;
select  
  partsupp_1.ps_partkey, 
  min(
    nation_1.n_regionkey), 
  customer_1.c_phone, 
  customer_1.c_phone, 
  orders_1.o_totalprice, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  partsupp_1.ps_availqty, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  customer_1.c_custkey, 
  partsupp_1.provsql, 
  sum(
    orders_1.o_custkey), 
  max(
    orders_1.o_orderdate), 
  max(
    orders_1.o_orderstatus)
from 
  nation as nation_1
        inner join partsupp as partsupp_1
        on (nation_1.n_regionkey = partsupp_1.ps_partkey )
      inner join orders as orders_1
      on (partsupp_1.ps_supplycost = orders_1.o_totalprice )
    inner join customer as customer_1
    on (nation_1.provsql = customer_1.provsql )
where orders_1.o_orderdate is not NULL
group by partsupp_1.ps_partkey, customer_1.c_phone, customer_1.c_phone, orders_1.o_totalprice, nation_1.n_regionkey, nation_1.n_regionkey, partsupp_1.ps_availqty, orders_1.o_orderdate, orders_1.o_comment, orders_1.o_orderstatus, customer_1.c_custkey, partsupp_1.provsql
limit 15;
select  
  part_1.p_type, 
  part_1.provsql, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_type, 
  max(
    part_1.p_size), 
  max(
    part_1.p_mfgr), 
  max(
    part_1.p_mfgr), 
  part_1.provsql, 
  count(*), 
  part_1.p_container, 
  max(
    part_1.p_container), 
  part_1.provsql
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_type, part_1.provsql, part_1.p_comment, part_1.p_retailprice, part_1.p_type, part_1.provsql, part_1.p_container, part_1.provsql
limit 3;
select  
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.provsql, 
  max(
    customer_1.c_acctbal), 
  nation_1.n_regionkey, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_acctbal), 
  customer_1.provsql, 
  customer_1.c_phone, 
  nation_1.n_nationkey, 
  customer_1.c_mktsegment, 
  nation_1.n_comment, 
  min(
    customer_1.c_nationkey), 
  nation_1.provsql, 
  nation_1.n_comment
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_mktsegment = nation_1.n_name )
where customer_1.c_acctbal > customer_1.c_acctbal
group by customer_1.c_name, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.provsql, nation_1.n_regionkey, customer_1.c_address, customer_1.c_acctbal, customer_1.provsql, customer_1.c_phone, nation_1.n_nationkey, customer_1.c_mktsegment, nation_1.n_comment, nation_1.provsql, nation_1.n_comment
limit 40;
select  
  partsupp_1.ps_availqty, 
  customer_1.c_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment
from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_comment = customer_1.c_name )
where customer_1.c_nationkey is not NULL
limit 7;
select  
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.provsql, 
  supplier_1.s_address, 
  nation_1.n_comment, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  nation_1.n_regionkey
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_comment = nation_1.n_comment )
where supplier_1.s_comment is not NULL
limit 18;
select  
  partsupp_1.provsql, 
  orders_1.o_orderstatus, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_comment = orders_1.o_comment )
where partsupp_1.ps_supplycost is not NULL
limit 32;
select  
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.provsql, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.provsql, customer_1.c_phone, customer_1.c_mktsegment, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.c_comment, customer_1.provsql, customer_1.provsql
limit 4;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  partsupp_1.provsql, 
  partsupp_1.ps_availqty, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  partsupp_1.provsql, 
  max(
    nation_1.n_regionkey)
from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where nation_1.n_nationkey = partsupp_1.ps_suppkey
group by nation_1.n_name, nation_1.n_name, partsupp_1.provsql, partsupp_1.ps_availqty, nation_1.n_regionkey, nation_1.n_name, nation_1.n_nationkey, nation_1.provsql, partsupp_1.provsql
limit 34;
select  
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.provsql
from 
  customer as customer_1
where customer_1.provsql is not NULL
group by customer_1.c_address, customer_1.c_address, customer_1.c_name, customer_1.c_acctbal, customer_1.c_comment, customer_1.c_nationkey, customer_1.c_mktsegment, customer_1.c_custkey, customer_1.provsql
limit 38;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 10;
select  
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 6;
select  
  nation_1.provsql, 
  supplier_1.provsql, 
  nation_1.provsql, 
  max(
    supplier_1.s_acctbal), 
  nation_1.n_comment, 
  nation_1.n_nationkey
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_name = nation_1.n_name )
where nation_1.n_regionkey is not NULL
group by nation_1.provsql, supplier_1.provsql, nation_1.provsql, nation_1.n_comment, nation_1.n_nationkey
limit 23;
select  
  supplier_1.s_address, 
  sum(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  sum(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  min(
    supplier_1.s_suppkey), 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_acctbal > supplier_1.s_acctbal
group by supplier_1.s_address, supplier_1.s_suppkey, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_address, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_phone
limit 23;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  region_1.r_name, 
  region_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where region_1.provsql is not NULL
limit 40;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_partkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_tax, 
  lineitem_1.provsql, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
limit 24;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
limit 38;
select  
  max(
    nation_1.n_name), 
  min(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 10;
select  
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 29;
select  
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  count(*)
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_orderdate, orders_1.o_orderdate, orders_1.o_orderstatus
limit 6;
select  
  lineitem_1.l_partkey, 
  lineitem_1.provsql, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_linestatus), 
  max(
    lineitem_1.l_linestatus)
from 
  lineitem as lineitem_1
where lineitem_1.l_tax = lineitem_1.l_discount
group by lineitem_1.l_partkey, lineitem_1.provsql, lineitem_1.l_comment
limit 17;
select  
  avg(
    orders_1.o_shippriority)
from 
  orders as orders_1
where orders_1.provsql is not NULL
limit 20;
select  
  orders_1.provsql
from 
  region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (orders_1.o_custkey = orders_2.o_orderkey )
where orders_1.o_custkey <= orders_2.o_orderkey
limit 6;
select  
  supplier_1.s_suppkey, 
  lineitem_1.l_discount, 
  supplier_1.provsql, 
  supplier_1.s_nationkey, 
  lineitem_1.l_quantity
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
      inner join supplier as supplier_2
      on (lineitem_1.l_linenumber = supplier_2.s_suppkey )
    on (supplier_1.s_comment = lineitem_1.l_comment )
where supplier_2.s_acctbal is not NULL
limit 7;
select  
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.provsql <= lineitem_1.provsql
limit 19;
select  
  partsupp_1.ps_suppkey
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_totalprice = partsupp_1.ps_supplycost )
where orders_1.provsql <= partsupp_1.provsql
limit 32;
select  
  nation_1.n_comment
from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.provsql = nation_1.provsql )
where nation_1.n_regionkey is not NULL
limit 33;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  min(
    region_1.r_name), 
  partsupp_2.ps_partkey, 
  part_1.p_type, 
  region_1.r_regionkey, 
  region_1.r_comment
from 
  partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_availqty = partsupp_2.ps_partkey )
    inner join part as part_1
      inner join region as region_1
      on (part_1.provsql = region_1.provsql )
    on (partsupp_2.ps_comment = part_1.p_name )
where region_1.provsql = partsupp_1.provsql
group by partsupp_1.ps_supplycost, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_2.ps_partkey, part_1.p_type, region_1.r_regionkey, region_1.r_comment
limit 32;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.provsql = nation_1.provsql
limit 23;
select  
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_shipdate), 
  lineitem_1.l_returnflag, 
  partsupp_1.ps_supplycost, 
  nation_1.n_name
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    on (lineitem_1.l_partkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_returnflag, partsupp_1.ps_supplycost, nation_1.n_name
limit 8;
select  
  orders_1.o_comment
from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
          inner join supplier as supplier_1
            inner join orders as orders_1
            on (supplier_1.s_nationkey = orders_1.o_orderkey )
          on (partsupp_1.ps_supplycost = orders_1.o_totalprice )
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      on (lineitem_1.provsql = partsupp_1.provsql )
    inner join part as part_1
    on (partsupp_1.provsql = part_1.provsql )
where part_1.p_container is not NULL
limit 20;
select  
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_phone <= supplier_1.s_name
limit 38;
select  
  region_1.r_comment, 
  region_1.provsql, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 33;
select  
  part_1.p_retailprice, 
  orders_1.o_orderstatus, 
  nation_1.n_name, 
  sum(
    orders_1.o_totalprice), 
  min(
    orders_1.o_shippriority), 
  max(
    orders_1.o_orderkey), 
  nation_1.n_regionkey, 
  orders_1.provsql, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_retailprice, 
  nation_1.n_regionkey
from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_orderstatus = part_1.p_mfgr )
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_custkey is not NULL
group by part_1.p_retailprice, orders_1.o_orderstatus, nation_1.n_name, nation_1.n_regionkey, orders_1.provsql, part_1.p_type, part_1.p_container, part_1.p_retailprice, nation_1.n_regionkey
limit 21;
select  
  sum(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_suppkey, supplier_1.s_address, supplier_1.s_phone, supplier_1.provsql
limit 13;
select  
  nation_1.n_nationkey, 
  avg(
    nation_1.n_nationkey), 
  min(
    nation_1.n_name), 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_nationkey, nation_1.n_comment
limit 24;
select  
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey
from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 36;
select  
  min(
    region_1.r_name), 
  region_1.r_comment, 
  region_1.provsql
from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
group by region_1.r_comment, region_1.provsql
limit 33;
select  
  supplier_1.provsql, 
  supplier_1.s_suppkey
from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_regionkey = supplier_1.s_suppkey )
where nation_1.n_nationkey is not NULL
limit 25;
select  
  count(*), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  nation_1.provsql
from 
  region as region_1
    inner join nation as nation_1
    on (region_1.provsql = nation_1.provsql )
where nation_1.n_regionkey is not NULL
group by region_1.r_regionkey, region_1.r_comment, nation_1.provsql
limit 42;
select  
  orders_1.o_orderkey, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 25;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 35;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate <= lineitem_1.l_shipdate
limit 23;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_commitdate, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_suppkey = region_1.r_regionkey )
where lineitem_1.l_commitdate is not NULL
group by region_1.r_name, region_1.r_regionkey, lineitem_1.l_shipdate, lineitem_1.l_partkey, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_suppkey
limit 41;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 19;
select  
  max(
    orders_1.o_orderdate), 
  orders_1.provsql
from 
  orders as orders_1
where orders_1.provsql is not NULL
group by orders_1.provsql
limit 21;
select  
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_suppkey, 
  count(
    supplier_1.s_nationkey), 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_suppkey, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_address, supplier_1.provsql, supplier_1.s_name
limit 37;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 3;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_nationkey, nation_1.n_nationkey
limit 10;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_name
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 12;
select  
  sum(
    customer_1.c_acctbal), 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  nation_1.n_name, 
  customer_1.c_acctbal
from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_comment = customer_1.c_name )
where nation_1.n_comment is not NULL
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_nationkey, nation_1.n_name, customer_1.c_acctbal
limit 37;
select  
  orders_1.o_custkey, 
  partsupp_1.ps_partkey, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.provsql, 
  min(
    region_1.r_name), 
  region_1.provsql, 
  sum(
    orders_1.o_totalprice), 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_acctbal, 
  partsupp_1.ps_partkey
from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    inner join orders as orders_1
      inner join region as region_1
      on (orders_1.o_clerk = region_1.r_name )
    on (partsupp_1.ps_availqty = region_1.r_regionkey )
where supplier_1.s_nationkey is not NULL
group by orders_1.o_custkey, partsupp_1.ps_partkey, region_1.provsql, region_1.r_comment, region_1.provsql, region_1.provsql, supplier_1.s_acctbal, partsupp_1.ps_partkey
limit 21;
select  
  partsupp_1.ps_suppkey, 
  avg(
    partsupp_1.ps_supplycost), 
  nation_1.n_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.provsql = partsupp_1.provsql )
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_suppkey, nation_1.n_comment, partsupp_1.ps_supplycost, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, partsupp_1.ps_availqty, partsupp_1.ps_comment, nation_1.n_regionkey
limit 8;
select  
  nation_1.n_regionkey, 
  orders_1.o_orderkey, 
  nation_1.provsql, 
  orders_1.o_custkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  orders_1.o_totalprice, 
  min(
    orders_1.o_totalprice), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  count(
    orders_1.o_comment), 
  max(
    orders_1.o_orderdate), 
  orders_1.provsql, 
  sum(
    orders_1.o_totalprice)
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
group by nation_1.n_regionkey, orders_1.o_orderkey, nation_1.provsql, orders_1.o_custkey, nation_1.n_name, nation_1.n_name, nation_1.n_nationkey, nation_1.n_nationkey, orders_1.o_totalprice, nation_1.n_regionkey, nation_1.n_nationkey, orders_1.provsql
limit 9;
select  
  max(
    orders_1.o_orderdate), 
  orders_1.o_orderkey, 
  partsupp_1.provsql, 
  orders_1.o_totalprice, 
  orders_1.provsql, 
  orders_1.o_orderstatus
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.provsql = orders_1.provsql )
where partsupp_1.ps_availqty is not NULL
group by orders_1.o_orderkey, partsupp_1.provsql, orders_1.o_totalprice, orders_1.provsql, orders_1.o_orderstatus
limit 13;
select  
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
limit 17;
select  
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 36;
select  
  nation_1.n_comment
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_custkey = nation_1.n_nationkey )
where orders_1.o_orderdate = orders_1.o_orderdate
limit 17;
select  
  region_1.provsql, 
  orders_1.o_orderstatus, 
  customer_1.c_comment, 
  max(
    customer_1.c_nationkey), 
  sum(
    region_1.r_regionkey), 
  customer_1.c_acctbal, 
  orders_1.o_orderpriority
from 
  region as region_1
      inner join orders as orders_1
        inner join part as part_1
        on (orders_1.o_orderpriority = part_1.p_mfgr )
      on (region_1.r_regionkey = part_1.p_partkey )
    inner join customer as customer_1
    on (part_1.p_comment = customer_1.c_name )
where orders_1.o_orderdate = orders_1.o_orderdate
group by region_1.provsql, orders_1.o_orderstatus, customer_1.c_comment, customer_1.c_acctbal, orders_1.o_orderpriority
limit 4;
select  
  lineitem_1.provsql, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipdate, 
  lineitem_1.provsql, 
  min(
    lineitem_1.l_extendedprice), 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_partkey, 
  lineitem_1.l_linenumber, 
  count(
    lineitem_1.l_receiptdate), 
  lineitem_1.l_shipmode
from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.provsql, lineitem_1.l_shipmode, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_shipdate, lineitem_1.provsql, lineitem_1.l_partkey, lineitem_1.l_linenumber, lineitem_1.l_shipmode
limit 32;
select  
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  max(
    customer_1.c_acctbal), 
  count(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  max(
    customer_1.c_phone), 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.provsql, 
  customer_1.c_comment, 
  sum(
    customer_1.c_custkey), 
  sum(
    customer_1.c_custkey)
from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_phone, customer_1.c_custkey, customer_1.c_phone, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_custkey, customer_1.c_comment, customer_1.c_custkey, customer_1.c_address, customer_1.c_name, customer_1.c_custkey, customer_1.c_nationkey, customer_1.c_address, customer_1.c_name, customer_1.c_name, customer_1.c_comment, customer_1.provsql, customer_1.c_comment
limit 1;
select  
  region_1.provsql
from 
  region as region_1
where region_1.provsql is not NULL
limit 18;
select  
  part_1.p_type, 
  partsupp_1.provsql, 
  part_1.p_partkey, 
  supplier_1.s_comment, 
  part_1.p_container, 
  partsupp_1.ps_suppkey
from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join supplier as supplier_1
      on (part_1.p_name = supplier_1.s_address )
    on (partsupp_1.ps_suppkey = part_1.p_partkey )
where part_1.p_container = supplier_1.s_phone
limit 38;
select  
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.r_name is not NULL
limit 42;
select  
  supplier_1.provsql, 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.provsql
limit 25;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber <= lineitem_1.l_suppkey
limit 3;
select  
  partsupp_1.ps_suppkey, 
  part_1.p_container
from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_name = partsupp_1.ps_comment )
where partsupp_1.ps_supplycost is not NULL
limit 35;
select  
  customer_1.c_phone, 
  customer_1.c_name
from 
  region as region_1
    inner join customer as customer_1
      inner join partsupp as partsupp_1
            inner join orders as orders_1
            on (partsupp_1.ps_partkey = orders_1.o_orderkey )
          inner join lineitem as lineitem_1
          on (orders_1.o_orderstatus = lineitem_1.l_returnflag )
        inner join lineitem as lineitem_2
        on (lineitem_1.l_shipmode = lineitem_2.l_returnflag )
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    on (region_1.r_regionkey = customer_1.c_custkey )
where region_1.r_name is not NULL
limit 35;
select  
  customer_1.c_custkey, 
  partsupp_1.ps_supplycost, 
  customer_1.provsql
from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join part as part_1
      on (customer_1.c_address = part_1.p_name )
    on (partsupp_1.ps_supplycost = part_1.p_retailprice )
where part_1.p_comment is not NULL
limit 41;
select  
  customer_1.c_acctbal, 
  customer_1.c_address
from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_acctbal = orders_1.o_totalprice )
where customer_1.c_nationkey is not NULL
limit 30;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  count(
    supplier_1.provsql), 
  min(
    supplier_1.s_name), 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_phone), 
  avg(
    supplier_1.s_acctbal), 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.provsql, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey)
from 
  supplier as supplier_1
where supplier_1.s_name <= supplier_1.s_phone
group by supplier_1.s_acctbal, supplier_1.s_suppkey, supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_suppkey, supplier_1.s_comment, supplier_1.s_suppkey, supplier_1.provsql, supplier_1.s_phone, supplier_1.s_phone, supplier_1.s_suppkey
limit 41;
select  
  nation_1.provsql, 
  nation_1.n_comment
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 9;
select  
  nation_1.n_comment, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  max(
    nation_1.n_name)
from 
  nation as nation_1
where nation_1.provsql is not NULL
group by nation_1.n_comment, nation_1.provsql, nation_1.n_comment, nation_1.n_nationkey, nation_1.provsql
limit 26;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 38;
select  
  part_1.provsql, 
  orders_1.o_clerk
from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_clerk = part_1.p_brand
limit 38;
select  
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_totalprice >= orders_1.o_totalprice
limit 20;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 1;
select  
  partsupp_1.ps_supplycost, 
  region_1.r_comment, 
  partsupp_1.ps_availqty, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_comment = region_1.r_comment )
where partsupp_1.ps_partkey is not NULL
limit 34;
select  
  region_1.r_name, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_suppkey), 
  region_1.r_name, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linestatus, 
  region_1.r_name, 
  region_1.r_name, 
  min(
    lineitem_1.l_extendedprice), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_orderkey, 
  sum(
    lineitem_1.l_partkey), 
  count(*), 
  min(
    lineitem_1.l_returnflag)
from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_comment = lineitem_1.l_comment )
where lineitem_1.l_returnflag is not NULL
group by region_1.r_name, lineitem_1.l_shipdate, region_1.r_name, lineitem_1.l_suppkey, lineitem_1.l_linestatus, region_1.r_name, region_1.r_name, lineitem_1.l_linenumber, lineitem_1.l_shipdate, lineitem_1.l_orderkey, lineitem_1.l_orderkey
limit 5;
select  
  min(
    nation_1.n_regionkey), 
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.provsql, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name
from 
  nation as nation_1
where nation_1.n_name = nation_1.n_name
group by nation_1.provsql, nation_1.n_regionkey, nation_1.n_name, nation_1.n_name, nation_1.provsql, nation_1.n_nationkey, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_name, nation_1.n_name
limit 3;
select  
  part_1.p_brand, 
  min(
    lineitem_1.l_receiptdate)
from 
  part as part_1
      inner join partsupp as partsupp_1
      on (part_1.p_name = partsupp_1.ps_comment )
    inner join lineitem as lineitem_1
    on (partsupp_1.provsql = lineitem_1.provsql )
where lineitem_1.l_orderkey > partsupp_1.ps_suppkey
group by part_1.p_brand
limit 24;
select  
  region_2.r_regionkey, 
  supplier_2.provsql, 
  region_2.r_comment, 
  orders_1.o_orderstatus, 
  lineitem_1.l_extendedprice, 
  region_1.r_name, 
  orders_1.o_custkey, 
  max(
    orders_1.o_orderdate), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_2.provsql
from 
  supplier as supplier_1
            inner join orders as orders_1
            on (supplier_1.s_address = orders_1.o_comment )
          inner join region as region_1
          on (supplier_1.s_nationkey = region_1.r_regionkey )
        inner join lineitem as lineitem_1
        on (orders_1.o_totalprice = lineitem_1.l_quantity )
      inner join supplier as supplier_2
        inner join orders as orders_2
        on (supplier_2.s_comment = orders_2.o_comment )
      on (supplier_1.s_phone = orders_2.o_orderstatus )
    inner join region as region_2
    on (region_1.r_name = region_2.r_name )
where lineitem_1.l_partkey > orders_1.o_orderkey
group by region_2.r_regionkey, supplier_2.provsql, region_2.r_comment, orders_1.o_orderstatus, lineitem_1.l_extendedprice, region_1.r_name, orders_1.o_custkey, region_1.r_comment, region_1.r_comment, region_2.provsql
limit 20;
select  
  supplier_1.s_nationkey, 
  count(
    lineitem_1.l_receiptdate), 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_returnflag)
from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_comment = lineitem_1.l_comment )
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_name, lineitem_1.l_shipinstruct
limit 26;
select  
  part_1.p_brand, 
  supplier_1.s_address, 
  avg(
    supplier_1.s_nationkey), 
  supplier_1.provsql, 
  supplier_1.s_acctbal, 
  part_1.p_type, 
  part_1.p_brand
from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_container = supplier_1.s_name )
where supplier_1.s_comment is not NULL
group by part_1.p_brand, supplier_1.s_address, supplier_1.provsql, supplier_1.s_acctbal, part_1.p_type, part_1.p_brand
limit 26;
select  
  sum(
    part_2.p_size), 
  part_1.p_container, 
  max(
    part_3.p_mfgr), 
  part_2.p_comment, 
  region_1.provsql, 
  part_1.p_container, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  min(
    region_1.r_name), 
  part_2.p_name, 
  part_2.p_brand, 
  part_2.p_comment, 
  region_1.provsql, 
  part_2.p_retailprice, 
  part_1.p_type, 
  region_1.provsql, 
  count(*), 
  region_1.r_regionkey, 
  part_2.provsql, 
  region_1.provsql, 
  part_1.p_partkey
from 
  part as part_1
    inner join part as part_2
        inner join part as part_3
        on (part_2.p_partkey = part_3.p_partkey )
      inner join region as region_1
      on (part_2.p_size = region_1.r_regionkey )
    on (part_1.p_retailprice = part_2.p_retailprice )
where region_1.r_comment is not NULL
group by part_1.p_container, part_2.p_comment, region_1.provsql, part_1.p_container, region_1.r_comment, region_1.r_name, region_1.r_regionkey, part_2.p_name, part_2.p_brand, part_2.p_comment, region_1.provsql, part_2.p_retailprice, part_1.p_type, region_1.provsql, region_1.r_regionkey, part_2.provsql, region_1.provsql, part_1.p_partkey
limit 8;
select  
  lineitem_1.l_linenumber, 
  max(
    nation_1.n_nationkey), 
  nation_1.provsql, 
  lineitem_1.l_receiptdate, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_comment, 
  lineitem_1.l_returnflag, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  lineitem_1.l_shipinstruct, 
  nation_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_comment = lineitem_1.l_comment )
where nation_1.provsql is not NULL
group by lineitem_1.l_linenumber, nation_1.provsql, lineitem_1.l_receiptdate, nation_1.provsql, nation_1.n_name, nation_1.n_comment, lineitem_1.l_returnflag, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_name, lineitem_1.l_shipinstruct, nation_1.provsql, nation_1.n_nationkey
limit 1;
select  
  avg(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.provsql <= nation_1.provsql
group by nation_1.n_regionkey, nation_1.provsql
limit 19;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_phone
from 
  supplier as supplier_1
where supplier_1.s_name >= supplier_1.s_phone
limit 38;
select  
  customer_1.c_custkey, 
  region_1.provsql, 
  nation_1.n_nationkey
from 
  nation as nation_1
        inner join nation as nation_2
        on (nation_1.n_name = nation_2.n_name )
      inner join customer as customer_1
      on (nation_1.n_comment = customer_1.c_name )
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_nationkey is not NULL
limit 25;
select  
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.provsql, 
  sum(
    supplier_1.s_acctbal), 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.provsql, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_name, supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_nationkey, supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.provsql, supplier_1.s_name, supplier_1.s_acctbal, supplier_1.s_nationkey, supplier_1.s_suppkey, supplier_1.s_address, supplier_1.provsql, supplier_1.s_nationkey
limit 32;
select  
  sum(
    region_1.r_regionkey), 
  region_1.r_comment
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment
limit 40;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 26;
select distinct 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 36;
select  
  nation_1.provsql, 
  part_1.p_brand, 
  nation_1.n_comment, 
  part_1.p_type, 
  nation_1.n_name, 
  part_1.p_type, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  part_1.p_name, 
  part_1.p_container
from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_type = nation_1.n_comment )
where nation_1.n_comment is not NULL
limit 20;
select  
  min(
    region_2.r_regionkey), 
  avg(
    partsupp_1.ps_suppkey), 
  part_1.p_size
from 
  region as region_1
    inner join part as part_1
        inner join orders as orders_1
          inner join partsupp as partsupp_1
          on (orders_1.provsql = partsupp_1.provsql )
        on (part_1.p_type = orders_1.o_comment )
      inner join region as region_2
      on (partsupp_1.provsql = region_2.provsql )
    on (region_1.r_name = region_2.r_name )
where part_1.provsql is not NULL
group by part_1.p_size
limit 35;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.provsql, 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_regionkey >= nation_1.n_nationkey
limit 2;
select  
  customer_1.c_nationkey, 
  min(
    supplier_2.s_name), 
  nation_3.n_nationkey, 
  customer_1.c_mktsegment
from 
  customer as customer_1
          inner join nation as nation_1
          on (customer_1.c_comment = nation_1.n_comment )
        inner join customer as customer_2
        on (nation_1.provsql = customer_2.provsql )
      inner join nation as nation_2
      on (customer_2.c_address = nation_2.n_comment )
    inner join nation as nation_3
      inner join supplier as supplier_1
        inner join supplier as supplier_2
        on (supplier_1.s_nationkey = supplier_2.s_suppkey )
      on (nation_3.n_comment = supplier_2.s_address )
    on (customer_1.c_acctbal = supplier_2.s_acctbal )
where nation_2.n_name is not NULL
group by customer_1.c_nationkey, nation_3.n_nationkey, customer_1.c_mktsegment
limit 9;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_comment, 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_shipdate, lineitem_1.l_commitdate, lineitem_1.l_suppkey, lineitem_1.l_shipinstruct, lineitem_1.l_shipinstruct, lineitem_1.l_commitdate, lineitem_1.l_receiptdate, lineitem_1.l_comment, lineitem_1.l_quantity, lineitem_1.l_orderkey, lineitem_1.l_receiptdate
limit 3;
select  
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_name), 
  supplier_1.s_name, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_name, supplier_1.s_comment, supplier_1.s_suppkey
limit 19;
select  
  orders_2.provsql
from 
  customer as customer_1
    inner join partsupp as partsupp_1
          inner join supplier as supplier_1
          on (partsupp_1.ps_availqty = supplier_1.s_suppkey )
        inner join orders as orders_1
        on (supplier_1.provsql = orders_1.provsql )
      inner join orders as orders_2
      on (supplier_1.s_acctbal = orders_2.o_totalprice )
    on (customer_1.provsql = partsupp_1.provsql )
where partsupp_1.ps_availqty is not NULL
limit 8;
select  
  max(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_name, 
  max(
    part_1.p_container), 
  min(
    part_1.p_container), 
  part_1.p_retailprice, 
  part_1.provsql, 
  part_1.p_comment, 
  part_1.provsql, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_retailprice, part_1.p_name, part_1.p_retailprice, part_1.provsql, part_1.p_comment, part_1.provsql, part_1.p_partkey
limit 19;
select  
  orders_1.o_comment, 
  nation_1.n_regionkey, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  sum(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  orders_1.o_orderdate, 
  count(*), 
  nation_1.provsql, 
  orders_1.o_custkey, 
  nation_1.n_name
from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderkey is not NULL
group by orders_1.o_comment, nation_1.n_regionkey, orders_1.o_clerk, orders_1.o_orderstatus, nation_1.n_regionkey, orders_1.o_orderdate, nation_1.provsql, orders_1.o_custkey, nation_1.n_name
limit 17;
select  
  orders_1.o_totalprice, 
  avg(
    partsupp_1.ps_partkey), 
  partsupp_1.provsql, 
  orders_1.o_orderstatus
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
group by orders_1.o_totalprice, partsupp_1.provsql, orders_1.o_orderstatus
limit 39;
select  
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.provsql is not NULL
limit 27;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  part_1.p_retailprice
from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_address = part_1.p_name )
where supplier_1.s_phone is not NULL
limit 2;
select  
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.provsql
from 
  part as part_1
where part_1.p_name is not NULL
limit 4;
select  
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 10;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  part_1.p_comment, 
  part_1.p_mfgr, 
  region_1.r_name, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_type
from 
  region as region_1
    inner join part as part_1
    on (region_1.r_name = part_1.p_mfgr )
where region_1.r_regionkey is not NULL
limit 17;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  max(
    orders_2.o_totalprice), 
  orders_2.o_clerk, 
  part_1.provsql, 
  region_1.r_name, 
  partsupp_1.ps_supplycost, 
  nation_1.n_comment, 
  orders_2.o_orderdate, 
  nation_1.n_nationkey, 
  supplier_1.provsql, 
  count(
    part_1.p_size), 
  region_1.r_regionkey, 
  supplier_1.s_address
from 
  orders as orders_1
          inner join partsupp as partsupp_1
          on (orders_1.o_shippriority = partsupp_1.ps_partkey )
        inner join nation as nation_1
        on (orders_1.o_custkey = nation_1.n_nationkey )
      inner join region as region_1
          inner join part as part_1
          on (region_1.provsql = part_1.provsql )
        inner join orders as orders_2
        on (region_1.r_comment = orders_2.o_comment )
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join supplier as supplier_1
    on (part_1.p_retailprice = supplier_1.s_acctbal )
where partsupp_1.provsql < orders_1.provsql
group by nation_1.n_nationkey, orders_2.o_clerk, part_1.provsql, region_1.r_name, partsupp_1.ps_supplycost, nation_1.n_comment, orders_2.o_orderdate, nation_1.n_nationkey, supplier_1.provsql, region_1.r_regionkey, supplier_1.s_address
limit 26;
select  
  part_1.p_partkey, 
  count(
    part_1.p_brand), 
  nation_1.provsql
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_name = part_1.p_mfgr )
where part_1.p_name is not NULL
group by part_1.p_partkey, nation_1.provsql
limit 19;
select  
  supplier_1.s_name, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 30;
select  
  part_1.p_mfgr, 
  orders_1.o_orderpriority, 
  part_1.p_type
from 
  orders as orders_1
    inner join region as region_1
      inner join part as part_1
      on (region_1.r_name = part_1.p_mfgr )
    on (orders_1.o_orderpriority = part_1.p_mfgr )
where orders_1.o_clerk < part_1.p_mfgr
limit 11;
select  
  sum(
    lineitem_1.l_orderkey), 
  orders_1.o_orderpriority, 
  part_1.p_name, 
  supplier_1.s_address, 
  lineitem_1.l_extendedprice, 
  orders_1.o_shippriority
from 
  lineitem as lineitem_1
        inner join part as part_1
        on (lineitem_1.l_tax = part_1.p_retailprice )
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
    on (part_1.p_name = supplier_1.s_address )
where part_1.p_container = lineitem_1.l_returnflag
group by orders_1.o_orderpriority, part_1.p_name, supplier_1.s_address, lineitem_1.l_extendedprice, orders_1.o_shippriority
limit 9;
select  
  count(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey
from 
  nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join nation as nation_2
    on (supplier_1.s_phone = nation_2.n_name )
where supplier_1.s_name is not NULL
group by supplier_1.s_nationkey, supplier_1.s_suppkey
limit 38;
select  
  part_1.p_comment, 
  part_1.p_name
from 
  part as part_1
where part_1.provsql is not NULL
limit 15;
select  
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  max(
    supplier_1.s_acctbal), 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.provsql, 
  supplier_1.s_address, 
  supplier_1.s_address
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_suppkey, supplier_1.s_nationkey, supplier_1.s_comment, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_comment, supplier_1.s_address, supplier_1.provsql, supplier_1.s_address, supplier_1.s_address
limit 39;
select  
  partsupp_1.provsql
from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_comment = partsupp_1.ps_comment )
where partsupp_1.ps_availqty is not NULL
limit 11;
select  
  supplier_1.s_nationkey, 
  supplier_2.s_address, 
  supplier_2.s_acctbal, 
  supplier_2.s_name, 
  max(
    supplier_1.s_suppkey), 
  supplier_2.provsql, 
  supplier_2.s_comment
from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_address is not NULL
group by supplier_1.s_nationkey, supplier_2.s_address, supplier_2.s_acctbal, supplier_2.s_name, supplier_2.provsql, supplier_2.s_comment
limit 12;
select  
  part_1.provsql, 
  lineitem_1.l_linestatus
from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_quantity = part_1.p_retailprice )
where part_1.provsql < lineitem_1.provsql
limit 10;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority
from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
limit 5;
select  
  min(
    orders_1.o_orderpriority), 
  avg(
    orders_1.o_totalprice), 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderstatus)
from 
  orders as orders_1
where orders_1.o_custkey > orders_1.o_orderkey
group by orders_1.o_clerk, orders_1.o_shippriority, orders_1.o_totalprice, orders_1.o_orderpriority, orders_1.o_orderkey, orders_1.o_orderdate
limit 25;
select  
  part_1.p_comment, 
  part_1.p_type, 
  region_1.provsql, 
  region_1.provsql, 
  avg(
    part_1.p_partkey), 
  part_1.p_comment
from 
  part as part_1
    inner join region as region_1
    on (part_1.p_brand = region_1.r_name )
where part_1.p_retailprice < part_1.p_retailprice
group by part_1.p_comment, part_1.p_type, region_1.provsql, region_1.provsql, part_1.p_comment
limit 32;
select  
  supplier_1.s_name, 
  orders_1.o_shippriority, 
  customer_1.c_custkey
from 
  customer as customer_1
    inner join orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.provsql = supplier_1.provsql )
    on (customer_1.c_mktsegment = supplier_1.s_name )
where orders_1.provsql > customer_1.provsql
limit 19;
select  
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_name
from 
  supplier as supplier_1
      inner join region as region_1
        inner join lineitem as lineitem_1
          inner join customer as customer_1
          on (lineitem_1.provsql = customer_1.provsql )
        on (region_1.r_regionkey = customer_1.c_custkey )
      on (supplier_1.s_name = region_1.r_name )
    inner join nation as nation_1
    on (customer_1.provsql = nation_1.provsql )
where nation_1.n_name = lineitem_1.l_linestatus
limit 35;
select  
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  lineitem_1.l_commitdate, 
  lineitem_1.provsql, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate > lineitem_1.l_commitdate
group by lineitem_1.l_tax, lineitem_1.l_receiptdate, lineitem_1.l_shipmode, lineitem_1.l_tax, lineitem_1.l_tax, lineitem_1.l_commitdate, lineitem_1.provsql, lineitem_1.l_discount
limit 34;
select  
  min(
    partsupp_1.ps_suppkey)
from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_comment = partsupp_1.ps_comment )
    inner join supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_acctbal = supplier_2.s_acctbal )
    on (partsupp_1.ps_supplycost = supplier_1.s_acctbal )
where partsupp_1.ps_suppkey is not NULL
limit 9;
select  
  part_1.p_partkey, 
  partsupp_1.ps_supplycost, 
  part_1.p_comment, 
  partsupp_1.ps_comment, 
  part_1.p_name, 
  part_1.p_size, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  part_1.p_size, 
  partsupp_1.ps_comment
from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where part_1.p_comment is not NULL
limit 22;
select  
  avg(
    supplier_1.s_acctbal), 
  region_1.r_name, 
  count(
    supplier_1.s_address), 
  region_1.provsql, 
  supplier_1.s_acctbal, 
  region_1.r_name
from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.provsql is not NULL
group by region_1.r_name, region_1.provsql, supplier_1.s_acctbal, region_1.r_name
limit 18;
select  
  orders_1.o_orderdate, 
  lineitem_1.l_commitdate, 
  orders_1.o_totalprice, 
  min(
    lineitem_1.l_commitdate), 
  lineitem_1.provsql, 
  lineitem_1.l_extendedprice, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice
from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.provsql = orders_1.provsql )
where lineitem_1.provsql < orders_1.provsql
group by orders_1.o_orderdate, lineitem_1.l_commitdate, orders_1.o_totalprice, lineitem_1.provsql, lineitem_1.l_extendedprice, orders_1.o_shippriority, orders_1.o_totalprice
limit 36;
select  
  customer_1.c_mktsegment, 
  customer_1.provsql, 
  nation_1.n_name
from 
  region as region_1
      inner join part as part_1
        inner join customer as customer_1
        on (part_1.p_comment = customer_1.c_name )
      on (region_1.r_name = part_1.p_mfgr )
    inner join part as part_2
      inner join nation as nation_1
      on (part_2.p_mfgr = nation_1.n_name )
    on (customer_1.c_mktsegment = nation_1.n_name )
where part_1.p_container = customer_1.c_mktsegment
limit 36;
select  
  lineitem_1.l_partkey, 
  lineitem_2.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  supplier_1.s_comment, 
  lineitem_2.l_receiptdate
from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
      inner join orders as orders_1
        inner join supplier as supplier_1
        on (orders_1.o_custkey = supplier_1.s_suppkey )
      on (lineitem_2.l_shipmode = orders_1.o_orderstatus )
    on (lineitem_1.l_commitdate = orders_1.o_orderdate )
where lineitem_1.l_linenumber is not NULL
limit 8;
select  
  min(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  avg(
    customer_1.c_acctbal), 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.provsql is not NULL
group by customer_1.c_phone, customer_1.c_custkey, customer_1.c_nationkey, customer_1.c_address
limit 13;
select  
  orders_1.o_orderdate, 
  sum(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  region_1.r_name, 
  region_1.r_name, 
  orders_1.provsql, 
  orders_1.o_orderdate, 
  region_1.r_comment
from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_shippriority = region_1.r_regionkey )
where orders_1.o_totalprice = orders_1.o_totalprice
group by orders_1.o_orderdate, orders_1.o_orderdate, region_1.r_name, region_1.r_name, orders_1.provsql, orders_1.o_orderdate, region_1.r_comment
limit 18;
select  
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
limit 38;
select  
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 7;
select  
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.provsql is not NULL
limit 33;
select  
  region_1.provsql, 
  region_1.provsql
from 
  region as region_1
where region_1.r_name = region_1.r_name
limit 38;
select  
  customer_1.c_address, 
  region_1.r_regionkey
from 
  region as region_1
    inner join customer as customer_1
    on (region_1.provsql = customer_1.provsql )
where customer_1.c_custkey > region_1.r_regionkey
limit 42;
select  
  supplier_1.s_comment, 
  min(
    partsupp_1.ps_partkey), 
  supplier_1.provsql
from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_acctbal = partsupp_1.ps_supplycost )
where partsupp_1.ps_partkey is not NULL
group by supplier_1.s_comment, supplier_1.provsql
limit 31;
select  
  avg(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_comment, 
  partsupp_1.provsql, 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_supplycost)
from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_comment, partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey
limit 40;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.provsql, 
  region_1.r_comment, 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql is not NULL
group by region_1.r_regionkey, region_1.r_name, region_1.provsql, region_1.r_comment, region_1.r_comment
limit 39;
select  
  lineitem_1.l_tax, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey
from 
  supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.s_address = nation_1.n_comment )
    inner join lineitem as lineitem_1
    on (supplier_1.s_phone = lineitem_1.l_returnflag )
where supplier_1.s_nationkey is not NULL
limit 40;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.provsql <= nation_1.provsql
limit 19;
select  
  lineitem_1.l_discount, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_tax), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount
from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber <= lineitem_1.l_partkey
group by lineitem_1.l_discount, lineitem_1.l_suppkey, lineitem_1.l_orderkey, lineitem_1.l_suppkey, lineitem_1.l_discount, lineitem_1.l_receiptdate, lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_discount
limit 33;
select  
  part_1.p_comment, 
  partsupp_1.ps_suppkey, 
  nation_1.provsql, 
  nation_1.n_comment, 
  partsupp_1.ps_suppkey, 
  part_1.p_name, 
  max(
    part_1.p_container), 
  partsupp_1.ps_supplycost
from 
  region as region_1
      inner join partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_comment = nation_1.n_comment )
      on (region_1.provsql = nation_1.provsql )
    inner join part as part_1
    on (region_1.r_comment = part_1.p_name )
where part_1.p_retailprice < partsupp_1.ps_supplycost
group by part_1.p_comment, partsupp_1.ps_suppkey, nation_1.provsql, nation_1.n_comment, partsupp_1.ps_suppkey, part_1.p_name, partsupp_1.ps_supplycost
limit 34;
select  
  avg(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  customer_1.c_acctbal, 
  max(
    orders_1.o_orderdate)
from 
  customer as customer_1
          inner join orders as orders_1
          on (customer_1.c_custkey = orders_1.o_orderkey )
        inner join region as region_1
        on (orders_1.provsql = region_1.provsql )
      inner join nation as nation_1
      on (orders_1.o_clerk = nation_1.n_name )
    inner join partsupp as partsupp_1
    on (customer_1.provsql = partsupp_1.provsql )
where nation_1.n_name is not NULL
group by partsupp_1.ps_comment, customer_1.c_acctbal
limit 37;
select  
  min(
    part_1.p_mfgr), 
  supplier_1.s_nationkey
from 
  orders as orders_1
      inner join supplier as supplier_1
        inner join part as part_1
            inner join lineitem as lineitem_1
            on (part_1.provsql = lineitem_1.provsql )
          inner join orders as orders_2
            inner join partsupp as partsupp_1
            on (orders_2.o_orderkey = partsupp_1.ps_partkey )
          on (lineitem_1.provsql = partsupp_1.provsql )
        on (supplier_1.s_phone = lineitem_1.l_returnflag )
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    inner join lineitem as lineitem_2
    on (part_1.p_type = lineitem_2.l_comment )
where orders_1.o_clerk is not NULL
group by supplier_1.s_nationkey
limit 31;
select distinct 
  supplier_1.provsql, 
  supplier_1.s_name, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  supplier_1.s_nationkey, 
  nation_1.n_nationkey
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.provsql = nation_1.provsql )
where supplier_1.s_phone < supplier_1.s_name
limit 18;
select  
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty
from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.provsql is not NULL
group by partsupp_1.ps_availqty
limit 40;
select  
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.provsql, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.provsql, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  count(
    supplier_1.s_phone), 
  count(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_name, supplier_1.s_phone, supplier_1.provsql, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_name, supplier_1.provsql, supplier_1.s_nationkey, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_suppkey, supplier_1.s_acctbal, supplier_1.s_acctbal
limit 25;
select  
  partsupp_1.ps_availqty, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_linestatus), 
  partsupp_1.ps_suppkey, 
  min(
    lineitem_1.l_suppkey), 
  partsupp_1.provsql, 
  lineitem_1.l_shipinstruct
from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_tax = partsupp_1.ps_supplycost )
where lineitem_1.l_shipdate > lineitem_1.l_receiptdate
group by partsupp_1.ps_availqty, lineitem_1.l_quantity, lineitem_1.l_receiptdate, partsupp_1.ps_comment, partsupp_1.ps_comment, lineitem_1.l_shipmode, partsupp_1.ps_suppkey, partsupp_1.provsql, lineitem_1.l_shipinstruct
limit 6;
select  
  min(
    part_2.p_retailprice)
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_name = part_2.p_name )
where part_2.p_partkey < part_1.p_size
limit 39;
select  
  lineitem_1.l_discount, 
  sum(
    lineitem_1.l_quantity), 
  lineitem_1.l_commitdate, 
  nation_1.provsql, 
  lineitem_1.provsql, 
  lineitem_1.l_shipdate
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_shipinstruct = nation_1.n_name )
where nation_1.provsql is not NULL
group by lineitem_1.l_discount, lineitem_1.l_commitdate, nation_1.provsql, lineitem_1.provsql, lineitem_1.l_shipdate
limit 39;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.provsql, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 29;
select  
  orders_1.o_orderstatus, 
  orders_1.provsql, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_clerk
from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 19;
select  
  count(*), 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_suppkey
limit 9;
select  
  customer_1.c_nationkey
from 
  customer as customer_1
    inner join region as region_1
      inner join part as part_1
        inner join region as region_2
        on (part_1.provsql = region_2.provsql )
      on (region_1.r_comment = part_1.p_name )
    on (customer_1.c_name = region_1.r_comment )
where customer_1.c_acctbal is not NULL
limit 30;
select  
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
from 
  nation as nation_1
where nation_1.provsql is not NULL
limit 19;
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  count(*), 
  max(
    nation_1.n_name), 
  nation_1.n_nationkey
from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_nationkey, nation_1.n_nationkey
limit 17;
select  
  sum(
    customer_1.c_acctbal), 
  part_1.p_retailprice
from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_mfgr = customer_1.c_phone )
where customer_1.provsql is not NULL
group by part_1.p_retailprice
limit 31;
select  
  part_1.p_container, 
  part_1.p_name
from 
  part as part_1
where part_1.p_partkey is not NULL
limit 10;
select  
  region_1.r_name
from 
  region as region_1
where region_1.r_name is not NULL
limit 17;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_tax, 
  nation_1.provsql
from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_shipinstruct = nation_1.n_name )
where nation_1.n_name is not NULL
limit 23;
select  
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_container, 
  min(
    part_1.p_retailprice), 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  avg(
    part_1.p_retailprice), 
  part_1.provsql, 
  part_1.p_partkey
from 
  part as part_1
where part_1.p_mfgr >= part_1.p_brand
group by part_1.p_type, part_1.p_container, part_1.p_partkey, part_1.p_partkey, part_1.p_container, part_1.p_type, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice, part_1.p_retailprice, part_1.provsql, part_1.p_partkey
limit 12;
select  
  customer_1.c_phone, 
  partsupp_1.provsql, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  customer_1.c_acctbal, 
  partsupp_1.ps_availqty, 
  customer_1.c_address
from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_acctbal = partsupp_1.ps_supplycost )
where partsupp_1.ps_partkey <= partsupp_1.ps_suppkey
limit 29;
select  
  supplier_1.s_suppkey, 
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 1;
select  
  count(*), 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_extendedprice), 
  min(
    lineitem_1.l_shipdate)
from 
  nation as nation_1
    inner join nation as nation_2
        inner join region as region_1
        on (nation_2.n_regionkey = region_1.r_regionkey )
      inner join partsupp as partsupp_1
        inner join lineitem as lineitem_1
        on (partsupp_1.ps_availqty = lineitem_1.l_orderkey )
      on (nation_2.n_nationkey = partsupp_1.ps_partkey )
    on (nation_1.n_comment = partsupp_1.ps_comment )
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_comment
limit 24;
select  
  count(
    nation_1.provsql), 
  nation_2.n_comment
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.provsql = nation_2.provsql )
where nation_1.n_nationkey is not NULL
group by nation_2.n_comment
limit 23;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment
from 
  region as region_1
where region_1.provsql >= region_1.provsql
limit 9;
select  
  max(
    orders_1.o_orderdate), 
  orders_1.o_custkey
from 
  orders as orders_1
where orders_1.o_clerk < orders_1.o_orderpriority
group by orders_1.o_custkey
limit 21;
select  
  supplier_1.s_nationkey, 
  sum(
    supplier_1.s_suppkey)
from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_nationkey
limit 20;
select  
  customer_2.c_custkey, 
  supplier_1.s_comment, 
  customer_2.c_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  region_1.r_regionkey, 
  region_1.r_name, 
  customer_2.c_phone, 
  supplier_1.s_address, 
  customer_1.c_custkey, 
  region_1.provsql
from 
  supplier as supplier_1
    inner join region as region_1
        inner join customer as customer_1
        on (region_1.r_name = customer_1.c_phone )
      inner join customer as customer_2
      on (region_1.r_regionkey = customer_2.c_custkey )
    on (supplier_1.s_comment = region_1.r_comment )
where customer_2.c_nationkey <= customer_1.c_custkey
limit 27;
select  
  customer_2.c_phone, 
  customer_1.c_acctbal, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  customer_1.c_mktsegment
from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.provsql = customer_1.provsql )
    inner join customer as customer_2
    on (customer_1.c_phone = customer_2.c_phone )
where nation_1.n_nationkey is not NULL
limit 26;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 14;
select  
  region_1.r_regionkey, 
  avg(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    region_1.r_name), 
  min(
    region_1.r_name), 
  max(
    region_1.r_name), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
from 
  region as region_1
where region_1.provsql >= region_1.provsql
group by region_1.r_regionkey, region_1.r_comment, region_1.r_name, region_1.r_name, region_1.r_comment, region_1.r_regionkey
limit 30;
select  
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_type, 
  max(
    part_1.p_mfgr), 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_mfgr
from 
  part as part_1
where part_1.p_retailprice < part_1.p_retailprice
group by part_1.p_brand, part_1.p_brand, part_1.p_brand, part_1.p_type, part_1.p_brand, part_1.p_name, part_1.p_comment, part_1.p_brand, part_1.p_name, part_1.p_mfgr
limit 38;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey)
from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_comment
limit 31;
select  
  min(
    region_1.r_name), 
  min(
    customer_1.c_phone)
from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_phone = region_1.r_name )
where customer_1.provsql < region_1.provsql
limit 36;
select distinct 
  customer_1.c_acctbal, 
  supplier_1.provsql
from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.provsql = supplier_1.provsql )
where customer_1.provsql <= supplier_1.provsql
limit 21;
select distinct 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_name
from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_address = nation_1.n_comment )
where nation_1.provsql is not NULL
limit 34;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_totalprice
from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 7;
select  
  min(
    nation_1.n_name), 
  nation_1.provsql, 
  nation_1.n_name, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.provsql
from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.provsql, nation_1.n_name, nation_1.n_name, nation_1.provsql
limit 10;
select  
  min(
    supplier_1.s_suppkey), 
  supplier_1.provsql, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  part_1.p_retailprice, 
  max(
    part_1.p_brand), 
  part_1.p_size, 
  max(
    part_1.p_partkey)
from 
  region as region_1
      inner join part as part_1
      on (region_1.provsql = part_1.provsql )
    inner join supplier as supplier_1
    on (part_1.p_comment = supplier_1.s_address )
where supplier_1.s_name <= supplier_1.s_phone
group by supplier_1.provsql, supplier_1.s_suppkey, supplier_1.s_nationkey, part_1.p_retailprice, part_1.p_size
limit 28;
select  
  partsupp_1.provsql, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.provsql
from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.provsql, partsupp_1.ps_partkey, partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.provsql
limit 42;
select  
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_type, 
  max(
    part_1.p_brand), 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_partkey, 
  min(
    part_1.p_size), 
  part_1.p_retailprice, 
  avg(
    part_1.p_size), 
  part_1.p_mfgr, 
  part_1.p_name, 
  min(
    part_1.p_mfgr)
from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_name, part_1.p_name, part_1.p_retailprice, part_1.p_comment, part_1.p_partkey, part_1.p_type, part_1.p_mfgr, part_1.p_type, part_1.p_comment, part_1.p_comment, part_1.p_partkey, part_1.p_retailprice, part_1.p_mfgr, part_1.p_name
limit 13;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_shipmode), 
  lineitem_1.l_receiptdate
from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_quantity, lineitem_1.l_discount, lineitem_1.l_receiptdate
limit 30;
select  
  part_1.p_size, 
  part_1.provsql, 
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_partkey, 
  part_1.p_brand
from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
limit 16;
select  
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.provsql, 
  sum(
    partsupp_1.ps_supplycost), 
  partsupp_1.ps_supplycost
from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_availqty, partsupp_1.provsql, partsupp_1.ps_supplycost
limit 20;
select  
  customer_1.provsql, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_address
from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 25;
select  
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_name
from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 9;
select  
  orders_1.provsql
from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 28;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.provsql
from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 28;
select  
  part_2.p_size, 
  part_1.p_mfgr
from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_retailprice is not NULL
limit 27;
select distinct 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty
from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_suppkey, partsupp_1.ps_availqty
limit 41;
select  
  max(
    part_1.p_brand), 
  nation_1.provsql, 
  part_1.p_name, 
  nation_1.n_comment, 
  part_1.p_size, 
  sum(
    part_1.p_retailprice)
from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_name = part_1.p_mfgr )
where part_1.p_retailprice is not NULL
group by nation_1.provsql, part_1.p_name, nation_1.n_comment, part_1.p_size
limit 30;
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  min(
    nation_2.n_name), 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey
from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_name is not NULL
group by nation_1.n_name, nation_1.n_regionkey, nation_1.n_regionkey, nation_1.n_nationkey, nation_1.n_name, nation_1.n_nationkey
limit 16;
select  
  part_1.p_name, 
  part_1.p_comment
from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_1.s_name is not NULL
limit 10;
select  
  max(
    part_1.p_retailprice), 
  part_1.p_size, 
  max(
    orders_1.o_orderdate), 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  count(*), 
  orders_1.provsql, 
  part_1.p_brand, 
  orders_1.o_totalprice, 
  min(
    part_1.p_partkey), 
  orders_1.o_orderpriority, 
  orders_1.o_comment
from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_comment = orders_1.o_comment )
where orders_1.o_orderstatus is not NULL
group by part_1.p_size, part_1.p_partkey, part_1.p_brand, part_1.p_type, part_1.p_comment, part_1.p_retailprice, orders_1.provsql, part_1.p_brand, orders_1.o_totalprice, orders_1.o_orderpriority, orders_1.o_comment
limit 12;
select  
  customer_1.c_nationkey
from 
  customer as customer_1
where customer_1.provsql > customer_1.provsql
limit 26;
select  
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  max(
    customer_1.c_phone), 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_phone), 
  customer_1.provsql, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_address, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_phone), 
  customer_1.c_acctbal
from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_mktsegment, customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_phone, customer_1.c_custkey, customer_1.c_phone, customer_1.c_custkey, customer_1.c_address, customer_1.c_address, customer_1.c_acctbal, customer_1.provsql, customer_1.c_custkey, customer_1.c_nationkey, customer_1.c_name, customer_1.c_address, customer_1.c_phone, customer_1.c_mktsegment, customer_1.c_phone, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_acctbal
limit 10;
select  
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_commitdate), 
  lineitem_1.l_discount
from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_container = supplier_1.s_name )
    inner join lineitem as lineitem_1
    on (supplier_1.s_comment = lineitem_1.l_comment )
where supplier_1.s_nationkey <= lineitem_1.l_linenumber
group by lineitem_1.l_shipdate, lineitem_1.l_discount
limit 30;
select  
  partsupp_1.provsql, 
  partsupp_1.provsql, 
  part_1.p_name, 
  part_1.p_size, 
  part_2.p_retailprice, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty
from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join part as part_2
      on (partsupp_1.provsql = part_2.provsql )
    on (part_1.p_comment = partsupp_1.ps_comment )
where part_2.provsql > partsupp_1.provsql
limit 2;
select  
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  min(
    orders_1.o_orderdate), 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority
from 
  orders as orders_1
where orders_1.o_orderkey = orders_1.o_shippriority
group by orders_1.o_comment, orders_1.o_totalprice, orders_1.o_clerk, orders_1.o_orderstatus, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_orderpriority
limit 30;
select  
  lineitem_1.l_linenumber
from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 2;
select  
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  max(
    orders_1.o_totalprice), 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_orderdate), 
  orders_1.o_comment
from 
  orders as orders_1
where orders_1.o_shippriority <= orders_1.o_orderkey
group by orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_custkey, orders_1.o_clerk, orders_1.o_shippriority, orders_1.o_shippriority, orders_1.o_comment
limit 10;
select  
  part_1.p_partkey, 
  part_1.p_partkey, 
  min(
    part_1.p_brand), 
  part_1.p_container
from 
  part as part_1
where part_1.provsql = part_1.provsql
group by part_1.p_partkey, part_1.p_partkey, part_1.p_container
limit 9;
select  
  sum(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_comment, 
  max(
    part_1.p_size), 
  part_1.provsql
from 
  part as part_1
where part_1.provsql = part_1.provsql
group by part_1.p_name, part_1.p_size, part_1.p_comment, part_1.provsql
limit 4;
select  
  max(
    supplier_1.s_suppkey), 
  avg(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_comment
from 
  supplier as supplier_1
where supplier_1.s_acctbal < supplier_1.s_acctbal
group by supplier_1.s_name, supplier_1.s_comment
limit 41;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.provsql, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  count(*), 
  min(
    nation_1.n_name), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey)
from 
  nation as nation_1
where nation_1.provsql <= nation_1.provsql
group by nation_1.n_comment, nation_1.n_regionkey, nation_1.provsql, nation_1.n_comment, nation_1.n_comment, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 42;
