select  
  lineitem.l_extendedprice, 
  lineitem.l_quantity, 
  supplier.s_comment, 
  lineitem.l_comment, 
  lineitem.l_quantity, 
  supplier.s_nationkey, 
  lineitem.l_partkey
from 
  lineitem
    left join supplier
    on (supplier.s_comment is NULL)
where lineitem.l_discount is NULL
limit 166;
select  
  nation.n_nationkey, 
  min(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(cast(null as "time") as "time")), 
  lineitem.l_shipmode, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  nation.n_regionkey, 
  region.r_regionkey, 
  customer.c_acctbal, 
  customer.c_address, 
  part.p_type
from 
  part
      inner join region
          inner join region
              inner join customer
              on (customer.c_phone < customer.c_phone)
            inner join nation
            on (customer.c_custkey = nation.n_nationkey )
          on (nation.n_name <= region.r_name)
        right join orders
          right join orders
              inner join lineitem
                left join customer
                on (lineitem.l_partkey <= lineitem.l_suppkey)
              on (lineitem.l_commitdate = lineitem.l_commitdate)
            inner join nation
            on (orders.o_clerk = nation.n_name )
          on (orders.o_orderdate < orders.o_orderdate)
        on (nation.n_regionkey = orders.o_orderkey )
      on (orders.o_orderdate < lineitem.l_receiptdate)
    inner join part
      right join part
      on (part.p_container > part.p_mfgr)
    on (part.p_brand = part.p_mfgr)
where region.r_regionkey is not NULL;
select  
  partsupp.ps_availqty, 
  count(*), 
  orders.o_orderstatus, 
  min(
    cast(cast(null as "interval") as "interval")), 
  orders.o_shippriority, 
  orders.o_orderpriority, 
  min(
    cast(cast(null as inet) as inet)), 
  orders.o_orderdate, 
  region.r_comment, 
  orders.o_totalprice, 
  region.r_regionkey, 
  orders.o_totalprice, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  part.p_name
from 
  part
      left join orders
        inner join region
        on (orders.o_totalprice = orders.o_totalprice)
      on (orders.o_orderpriority > part.p_mfgr)
    inner join partsupp
      inner join orders
      on (orders.o_orderstatus > orders.o_orderpriority)
    on (orders.o_clerk > orders.o_orderpriority)
where partsupp.ps_supplycost is not NULL
limit 114;
select  
  supplier.s_name, 
  supplier.s_nationkey, 
  min(
    cast(supplier.s_suppkey as int4))
from 
  supplier
where supplier.s_acctbal is not NULL
limit 40;
select  
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  min(
    cast(supplier.s_nationkey as int4)), 
  supplier.s_acctbal, 
  supplier.s_address, 
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_phone
from 
  supplier
where supplier.s_name is not NULL;
select  
  customer.c_nationkey, 
  min(
    cast(cast(null as money) as money)), 
  customer.c_comment, 
  partsupp.ps_partkey, 
  customer.c_address, 
  orders.o_orderkey, 
  partsupp.ps_partkey, 
  nation.n_comment, 
  orders.o_orderstatus, 
  nation.n_regionkey
from 
  nation
      inner join orders
      on (orders.o_orderdate >= orders.o_orderdate)
    inner join partsupp
          inner join part
          on (part.p_partkey < partsupp.ps_suppkey)
        inner join customer
        on (partsupp.ps_supplycost = partsupp.ps_supplycost)
      right join part
      on (part.p_mfgr <= part.p_brand)
    on (part.p_mfgr is NULL)
where orders.o_orderdate = orders.o_orderdate;
select  
  part.p_brand, 
  min(
    cast(cast(null as int8) as int8))
from 
  part
    inner join customer
    on (customer.c_mktsegment is NULL)
where part.p_mfgr is NULL
limit 77;
select  
  nation.n_regionkey
from 
  part
      left join lineitem
          left join nation
            inner join nation
                inner join region
                on (nation.n_nationkey = region.r_regionkey )
              left join nation
              on (region.r_name >= nation.n_name)
            on (nation.n_name = nation.n_name)
          on (lineitem.l_partkey = nation.n_nationkey )
        inner join nation
        on (lineitem.l_partkey = nation.n_nationkey )
      on (nation.n_regionkey > nation.n_regionkey)
    inner join partsupp
    on (lineitem.l_commitdate >= lineitem.l_commitdate)
where region.r_name is not NULL
limit 175;
select  
  region.r_name
from 
  orders
        left join nation
        on (orders.o_orderstatus = orders.o_orderpriority)
      inner join orders
          inner join customer
              left join partsupp
                right join supplier
                on (supplier.s_acctbal >= partsupp.ps_supplycost)
              on (customer.c_comment = supplier.s_address )
            left join region
              left join nation
              on (region.r_name > nation.n_name)
            on (supplier.s_suppkey = nation.n_nationkey )
          on (nation.n_regionkey = supplier.s_suppkey)
        right join supplier
        on (supplier.s_nationkey > nation.n_regionkey)
      on (orders.o_comment = supplier.s_address )
    inner join supplier
    on (region.r_regionkey is not NULL)
where customer.c_mktsegment is NULL
limit 136;
select  
  customer.c_phone
from 
  customer
    right join supplier
    on (supplier.s_comment is NULL)
where supplier.s_acctbal = supplier.s_acctbal;
select  
  part.p_comment, 
  region.r_regionkey
from 
  region
          inner join part
          on (region.r_comment = part.p_name )
        right join orders
        on (orders.o_shippriority < orders.o_custkey)
      right join nation
      on (orders.o_orderdate >= orders.o_orderdate)
    inner join supplier
    on (part.p_mfgr is NULL)
where nation.n_nationkey is NULL
limit 106;
select  
  supplier.s_phone
from 
  supplier
      right join partsupp
      on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
    inner join region
      inner join region
          right join region
          on (region.r_name <= region.r_name)
        inner join customer
          right join part
          on (part.p_partkey > part.p_partkey)
        on (region.r_name <= part.p_container)
      on (region.r_comment = part.p_name )
    on (supplier.s_comment = region.r_comment )
where supplier.s_nationkey is not NULL;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  orders.o_orderpriority, 
  orders.o_comment, 
  orders.o_shippriority, 
  min(
    cast(orders.o_orderpriority as bpchar))
from 
  orders
where orders.o_shippriority is not NULL
limit 23;
select  
  orders.o_comment, 
  region.r_comment, 
  max(
    cast(cast(null as oid) as oid)), 
  orders.o_clerk, 
  region.r_name, 
  orders.o_custkey, 
  orders.o_custkey
from 
  orders
      right join supplier
        right join region
        on (region.r_name > region.r_name)
      on (orders.o_orderdate = orders.o_orderdate)
    inner join orders
    on (orders.o_custkey is NULL)
where supplier.s_nationkey <= orders.o_custkey
limit 76;
select  
  part.p_size, 
  part.p_size, 
  min(
    cast(cast(null as int8) as int8)), 
  part.p_container, 
  lineitem.l_linenumber, 
  sum(
    cast(cast(null as money) as money)), 
  part.p_container, 
  lineitem.l_partkey, 
  lineitem.l_quantity, 
  part.p_partkey, 
  lineitem.l_shipdate, 
  lineitem.l_tax, 
  part.p_name, 
  lineitem.l_partkey, 
  part.p_mfgr, 
  part.p_mfgr, 
  lineitem.l_receiptdate, 
  part.p_container, 
  part.p_retailprice, 
  max(
    cast(part.p_mfgr as bpchar)), 
  lineitem.l_quantity, 
  part.p_retailprice, 
  lineitem.l_partkey, 
  lineitem.l_partkey, 
  lineitem.l_receiptdate
from 
  lineitem
    left join part
    on (lineitem.l_shipinstruct < lineitem.l_shipmode)
where part.p_brand is NULL;
select  
  lineitem.l_returnflag
from 
  orders
        left join lineitem
            right join nation
              inner join region
              on (nation.n_regionkey <= nation.n_regionkey)
            on (nation.n_name > lineitem.l_linestatus)
          inner join nation
          on (nation.n_nationkey >= lineitem.l_orderkey)
        on (orders.o_custkey >= region.r_regionkey)
      inner join nation
      on (lineitem.l_receiptdate > lineitem.l_commitdate)
    inner join partsupp
    on (lineitem.l_shipdate < lineitem.l_shipdate)
where nation.n_name > lineitem.l_returnflag
limit 44;
select  
  lineitem.l_shipinstruct, 
  lineitem.l_shipinstruct, 
  min(
    cast(cast(null as inet) as inet)), 
  lineitem.l_partkey, 
  lineitem.l_comment, 
  max(
    cast(cast(null as float8) as float8))
from 
  lineitem
    inner join lineitem
    on (lineitem.l_tax = lineitem.l_discount)
where lineitem.l_orderkey is not NULL;
select  
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_regionkey is not NULL;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as "time") as "time"))
from 
  customer
where customer.c_mktsegment is not NULL;
select  
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_comment, 
  sum(
    cast(cast(null as money) as money))
from 
  nation
where nation.n_name is not NULL;
select  
  lineitem.l_receiptdate, 
  lineitem.l_shipinstruct, 
  avg(
    cast(cast(null as float4) as float4))
from 
  lineitem
where lineitem.l_linestatus > lineitem.l_linestatus
limit 64;
select  
  nation.n_regionkey
from 
  nation
    inner join region
      right join lineitem
      on (lineitem.l_shipinstruct > lineitem.l_linestatus)
    on (nation.n_nationkey is NULL)
where region.r_comment is not NULL;
select  
  lineitem.l_tax, 
  lineitem.l_orderkey
from 
  orders
            left join partsupp
              inner join region
              on (partsupp.ps_supplycost = partsupp.ps_supplycost)
            on (orders.o_orderpriority = region.r_name )
          inner join region
          on (orders.o_orderdate >= orders.o_orderdate)
        inner join lineitem
        on (region.r_regionkey < region.r_regionkey)
      left join nation
      on (orders.o_orderdate > orders.o_orderdate)
    left join lineitem
          inner join region
          on (lineitem.l_returnflag = region.r_name )
        left join lineitem
        on (lineitem.l_commitdate >= lineitem.l_commitdate)
      left join supplier
      on (lineitem.l_discount > lineitem.l_discount)
    on (region.r_name is not NULL)
where region.r_name is not NULL;
select  
  orders.o_orderpriority, 
  orders.o_orderpriority, 
  orders.o_orderstatus, 
  orders.o_custkey
from 
  orders
where orders.o_comment is NULL
limit 37;
select  
  region.r_regionkey
from 
  region
where region.r_name is NULL;
select  
  customer.c_phone, 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  customer.c_phone
from 
  customer
where customer.c_custkey is NULL
limit 125;
select  
  nation.n_nationkey
from 
  nation
where nation.n_name is NULL
limit 120;
select  
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_nationkey, 
  supplier.s_name, 
  supplier.s_comment, 
  supplier.s_name, 
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_address, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_name, 
  max(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_acctbal, 
  supplier.s_name
from 
  supplier
where supplier.s_nationkey is not NULL
limit 116;
select  
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  count(
    cast(region.r_comment as "varchar")), 
  region.r_comment, 
  region.r_name
from 
  region
where region.r_name is NULL
limit 84;
select  
  region.r_regionkey, 
  region.r_name, 
  region.r_comment
from 
  region
where region.r_regionkey is not NULL
limit 62;
select  
  lineitem.l_orderkey, 
  lineitem.l_discount, 
  orders.o_totalprice, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  supplier.s_nationkey, 
  supplier.s_phone, 
  region.r_name, 
  region.r_name
from 
  supplier
    left join lineitem
      inner join customer
        inner join orders
          inner join region
          on (orders.o_custkey < orders.o_shippriority)
        on (orders.o_totalprice >= orders.o_totalprice)
      on (orders.o_orderdate >= lineitem.l_receiptdate)
    on (orders.o_custkey is NULL)
where lineitem.l_receiptdate < lineitem.l_shipdate
limit 133;
select distinct 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_regionkey is NULL;
select  
  orders.o_comment, 
  part.p_comment, 
  part.p_type, 
  max(
    cast(cast(null as int8) as int8))
from 
  nation
    left join orders
        inner join nation
          inner join part
          on (part.p_size = nation.n_nationkey)
        on (orders.o_orderstatus = orders.o_orderstatus)
      inner join orders
            inner join supplier
            on (orders.o_orderdate > orders.o_orderdate)
          inner join orders
          on (orders.o_orderdate <= orders.o_orderdate)
        inner join part
        on (orders.o_orderstatus > orders.o_orderstatus)
      on (orders.o_custkey <= part.p_partkey)
    on (nation.n_comment = part.p_name )
where orders.o_custkey is not NULL
limit 112;
select  
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_name
from 
  nation
where nation.n_name is not NULL
limit 11;
select  
  partsupp.ps_supplycost, 
  region.r_regionkey, 
  region.r_comment
from 
  partsupp
    inner join region
    on (partsupp.ps_supplycost < partsupp.ps_supplycost)
where region.r_name is not NULL
limit 122;
select  
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_comment, 
  supplier.s_name
from 
  supplier
where supplier.s_name is not NULL
limit 23;
select  
  customer.c_name, 
  customer.c_comment, 
  customer.c_custkey, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  customer.c_custkey, 
  customer.c_custkey
from 
  customer
where customer.c_mktsegment is not NULL
limit 134;
select  
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_address, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  supplier.s_name, 
  supplier.s_phone, 
  max(
    cast(supplier.s_nationkey as int4)), 
  supplier.s_comment, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_name, 
  max(
    cast(cast(null as float4) as float4)), 
  supplier.s_comment, 
  max(
    cast(supplier.s_name as bpchar)), 
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_acctbal is NULL
limit 113;
select  
  part.p_name, 
  sum(
    cast(cast(null as int2) as int2)), 
  part.p_name
from 
  part
where part.p_comment is not NULL;
select  
  region.r_comment
from 
  region
where region.r_comment is NULL
limit 124;
select  
  customer.c_acctbal, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  customer.c_mktsegment, 
  customer.c_phone
from 
  customer
where customer.c_acctbal < customer.c_acctbal
limit 85;
select  
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_comment
from 
  nation
where nation.n_nationkey <= nation.n_nationkey;
select  
  region.r_comment, 
  region.r_comment
from 
  region
      inner join lineitem
      on (lineitem.l_partkey > lineitem.l_suppkey)
    right join customer
    on (region.r_regionkey is not NULL)
where region.r_name is NULL;
select  
  orders.o_totalprice, 
  orders.o_orderdate, 
  max(
    cast(cast(null as oid) as oid))
from 
  orders
    right join lineitem
    on (orders.o_orderstatus is NULL)
where orders.o_orderkey is not NULL;
select  
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_comment, 
  part.p_name, 
  part.p_size, 
  min(
    cast(cast(null as money) as money)), 
  supplier.s_acctbal, 
  customer.c_mktsegment, 
  customer.c_name, 
  lineitem.l_shipmode, 
  supplier.s_phone, 
  part.p_size, 
  customer.c_name, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as float4) as float4)), 
  sum(
    cast(cast(null as money) as money)), 
  part.p_mfgr, 
  part.p_name, 
  orders.o_orderstatus, 
  customer.c_comment, 
  min(
    cast(cast(null as int8) as int8)), 
  part.p_size, 
  part.p_mfgr, 
  customer.c_phone
from 
  customer
        left join customer
        on (customer.c_mktsegment >= customer.c_phone)
      inner join customer
        left join supplier
          inner join supplier
            right join part
                right join orders
                on (orders.o_orderkey >= orders.o_orderkey)
              inner join customer
              on (customer.c_acctbal > customer.c_acctbal)
            on (customer.c_nationkey > supplier.s_nationkey)
          on (orders.o_orderdate > orders.o_orderdate)
        on (orders.o_orderdate >= orders.o_orderdate)
      on (orders.o_orderdate <= orders.o_orderdate)
    inner join lineitem
    on (orders.o_orderstatus is NULL)
where customer.c_custkey < part.p_size
limit 99;
select  
  supplier.s_phone, 
  partsupp.ps_availqty, 
  supplier.s_suppkey, 
  partsupp.ps_partkey, 
  region.r_regionkey
from 
  supplier
      inner join partsupp
      on (supplier.s_acctbal = partsupp.ps_supplycost)
    inner join region
    on (region.r_name is not NULL)
where supplier.s_comment is not NULL
limit 123;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  lineitem.l_shipinstruct, 
  lineitem.l_comment, 
  region.r_regionkey, 
  region.r_name, 
  lineitem.l_partkey
from 
  region
    right join lineitem
    on (lineitem.l_linenumber is NULL)
where lineitem.l_shipdate is NULL
limit 166;
select  
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_name
from 
  region
where region.r_comment is NULL
limit 146;
select  
  region.r_comment, 
  region.r_comment, 
  part.p_container, 
  partsupp.ps_availqty, 
  orders.o_custkey
from 
  region
          inner join orders
            inner join partsupp
            on (orders.o_orderkey = partsupp.ps_partkey )
          on (partsupp.ps_supplycost > orders.o_totalprice)
        inner join partsupp
        on (region.r_name = region.r_name)
      inner join part
        inner join orders
        on (orders.o_orderdate = orders.o_orderdate)
      on (orders.o_orderstatus > orders.o_orderstatus)
    inner join orders
    on (orders.o_comment is not NULL)
where orders.o_orderkey is NULL
limit 140;
select  
  orders.o_orderpriority
from 
  nation
            inner join supplier
            on (supplier.s_acctbal >= supplier.s_acctbal)
          right join nation
          on (supplier.s_comment = nation.n_comment )
        inner join orders
        on (orders.o_shippriority >= supplier.s_nationkey)
      inner join lineitem
        right join region
            right join orders
            on (region.r_name = orders.o_orderstatus )
          inner join region
          on (region.r_name >= orders.o_clerk)
        on (lineitem.l_partkey > region.r_regionkey)
      on (orders.o_orderdate <= lineitem.l_receiptdate)
    right join part
      right join nation
      on (part.p_retailprice < part.p_retailprice)
    on (lineitem.l_returnflag <= orders.o_orderstatus)
where nation.n_comment is NULL
limit 96;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  nation.n_name, 
  nation.n_regionkey, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  nation.n_name, 
  avg(
    cast(partsupp.ps_supplycost as "numeric"))
from 
  nation
      right join part
      on (part.p_partkey < part.p_partkey)
    right join nation
          inner join partsupp
          on (nation.n_name <= nation.n_name)
        right join part
            left join nation
            on (part.p_partkey > nation.n_regionkey)
          inner join nation
          on (nation.n_name = nation.n_name)
        on (part.p_mfgr < part.p_mfgr)
      inner join region
      on (part.p_comment = region.r_comment )
    on (nation.n_comment is NULL)
where nation.n_regionkey is not NULL;
select  
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_regionkey <= region.r_regionkey;
select  
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  avg(
    cast(cast(null as float4) as float4))
from 
  partsupp
      inner join part
      on (part.p_retailprice <= partsupp.ps_supplycost)
    left join customer
    on (part.p_retailprice = customer.c_acctbal )
where partsupp.ps_suppkey >= part.p_size
limit 44;
select  
  partsupp.ps_supplycost, 
  sum(
    cast(cast(null as float4) as float4))
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 93;
select  
  orders.o_totalprice, 
  supplier.s_nationkey
from 
  partsupp
    left join lineitem
        right join supplier
        on (supplier.s_acctbal < lineitem.l_tax)
      inner join orders
      on (lineitem.l_receiptdate > lineitem.l_commitdate)
    on (lineitem.l_shipinstruct is NULL)
where orders.o_totalprice is not NULL
limit 125;
select  
  nation.n_regionkey, 
  lineitem.l_partkey, 
  supplier.s_comment, 
  nation.n_nationkey, 
  count(*), 
  min(
    cast(cast(null as float8) as float8)), 
  customer.c_custkey, 
  min(
    cast(cast(null as timetz) as timetz)), 
  region.r_name, 
  orders.o_orderdate, 
  lineitem.l_tax
from 
  orders
      right join customer
          left join region
            inner join nation
            on (region.r_regionkey < nation.n_nationkey)
          on (customer.c_acctbal < customer.c_acctbal)
        inner join lineitem
            inner join nation
            on (lineitem.l_shipmode < lineitem.l_shipmode)
          left join nation
            left join region
            on (nation.n_name = region.r_name )
          on (lineitem.l_tax < lineitem.l_discount)
        on (lineitem.l_returnflag > lineitem.l_shipmode)
      on (nation.n_name >= lineitem.l_shipinstruct)
    inner join supplier
    on (orders.o_shippriority > orders.o_custkey)
where nation.n_comment is not NULL
limit 116;
select  
  lineitem.l_partkey, 
  avg(
    cast(lineitem.l_partkey as int4)), 
  lineitem.l_returnflag, 
  lineitem.l_tax, 
  max(
    cast(lineitem.l_suppkey as int4)), 
  lineitem.l_quantity, 
  lineitem.l_commitdate, 
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_tax is NULL;
select  
  partsupp.ps_supplycost, 
  orders.o_custkey, 
  part.p_partkey, 
  min(
    cast(cast(null as text) as text)), 
  part.p_name, 
  region.r_regionkey, 
  part.p_partkey, 
  customer.c_phone, 
  orders.o_totalprice, 
  partsupp.ps_availqty
from 
  customer
      right join part
            inner join partsupp
            on (partsupp.ps_supplycost < partsupp.ps_supplycost)
          inner join partsupp
          on (partsupp.ps_availqty = partsupp.ps_partkey )
        inner join orders
        on (partsupp.ps_supplycost = partsupp.ps_supplycost)
      on (customer.c_phone = part.p_mfgr )
    right join region
    on (orders.o_clerk is NULL)
where orders.o_orderdate = orders.o_orderdate;
select  
  supplier.s_address
from 
  supplier
where supplier.s_phone is NULL;
select  
  min(
    cast(cast(null as "time") as "time")), 
  lineitem.l_commitdate, 
  lineitem.l_shipinstruct, 
  lineitem.l_partkey, 
  part.p_comment, 
  lineitem.l_suppkey
from 
  lineitem
    inner join part
    on (lineitem.l_extendedprice is NULL)
where part.p_mfgr is not NULL;
select  
  region.r_regionkey
from 
  region
where region.r_name <= region.r_name
limit 133;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  part.p_type, 
  nation.n_comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  supplier.s_acctbal, 
  part.p_size
from 
  nation
      inner join supplier
        inner join part
        on (supplier.s_acctbal < supplier.s_acctbal)
      on (nation.n_name = part.p_mfgr )
    inner join lineitem
    on (nation.n_name is NULL)
where nation.n_regionkey is NULL
limit 166;
select  
  partsupp.ps_partkey, 
  supplier.s_name, 
  partsupp.ps_partkey, 
  supplier.s_phone, 
  supplier.s_name
from 
  lineitem
      right join supplier
      on (supplier.s_name = lineitem.l_linestatus)
    inner join partsupp
        inner join supplier
        on (partsupp.ps_availqty < partsupp.ps_availqty)
      right join customer
          right join partsupp
            inner join partsupp
              right join customer
              on (partsupp.ps_supplycost = partsupp.ps_supplycost)
            on (customer.c_phone = customer.c_phone)
          on (customer.c_phone = customer.c_phone )
        inner join partsupp
          left join supplier
          on (supplier.s_acctbal < partsupp.ps_supplycost)
        on (customer.c_acctbal < customer.c_acctbal)
      on (partsupp.ps_supplycost <= supplier.s_acctbal)
    on (partsupp.ps_supplycost < partsupp.ps_supplycost)
where lineitem.l_returnflag < customer.c_mktsegment
limit 123;
select  
  supplier.s_name, 
  nation.n_comment, 
  partsupp.ps_partkey, 
  supplier.s_name, 
  nation.n_name
from 
  region
        left join supplier
          left join nation
          on (supplier.s_phone >= nation.n_name)
        on (region.r_name >= region.r_name)
      inner join part
          right join supplier
          on (part.p_brand <= part.p_brand)
        inner join nation
        on (nation.n_regionkey >= nation.n_nationkey)
      on (part.p_mfgr >= nation.n_name)
    inner join region
      inner join partsupp
      on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
    on (supplier.s_acctbal = partsupp.ps_supplycost )
where region.r_comment is NULL;
select  
  orders.o_orderdate, 
  customer.c_custkey, 
  part.p_brand, 
  customer.c_address, 
  lineitem.l_linenumber, 
  max(
    cast(cast(null as int8) as int8)), 
  nation.n_regionkey, 
  supplier.s_nationkey, 
  nation.n_nationkey, 
  supplier.s_acctbal, 
  orders.o_orderpriority, 
  partsupp.ps_availqty
from 
  lineitem
    left join supplier
        right join orders
          inner join part
          on (orders.o_orderdate = orders.o_orderdate)
        on (part.p_retailprice > orders.o_totalprice)
      right join nation
            right join supplier
              right join part
              on (supplier.s_name < part.p_mfgr)
            on (supplier.s_acctbal <= part.p_retailprice)
          inner join partsupp
            right join nation
              inner join partsupp
              on (nation.n_regionkey > nation.n_nationkey)
            on (nation.n_name <= nation.n_name)
          on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
        inner join customer
        on (part.p_retailprice = partsupp.ps_supplycost)
      on (part.p_brand > orders.o_clerk)
    on (lineitem.l_returnflag = supplier.s_name )
where partsupp.ps_partkey is not NULL
limit 121;
select  
  part.p_mfgr, 
  part.p_size
from 
  part
where part.p_comment is NULL
limit 122;
select  
  region.r_regionkey, 
  customer.c_address, 
  customer.c_comment
from 
  customer
    right join region
    on (region.r_regionkey is not NULL)
where customer.c_address is not NULL
limit 139;
select  
  customer.c_nationkey, 
  max(
    cast(cast(null as int2) as int2)), 
  region.r_regionkey, 
  customer.c_nationkey, 
  customer.c_nationkey, 
  orders.o_clerk, 
  nation.n_regionkey
from 
  orders
        inner join nation
          inner join region
            inner join customer
            on (customer.c_acctbal > customer.c_acctbal)
          on (customer.c_nationkey < customer.c_nationkey)
        on (orders.o_orderdate >= orders.o_orderdate)
      left join nation
        inner join lineitem
          inner join region
          on (lineitem.l_returnflag = region.r_name )
        on (lineitem.l_tax <= lineitem.l_extendedprice)
      on (nation.n_name > nation.n_name)
    inner join customer
    on (lineitem.l_receiptdate < lineitem.l_commitdate)
where nation.n_nationkey is not NULL;
select  
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 68;
select  
  orders.o_comment, 
  supplier.s_suppkey, 
  orders.o_custkey, 
  sum(
    cast(cast(null as float8) as float8)), 
  customer.c_comment, 
  customer.c_name, 
  min(
    cast(cast(null as inet) as inet)), 
  max(
    cast(cast(null as int2) as int2)), 
  nation.n_comment, 
  supplier.s_acctbal
from 
  orders
    inner join nation
        left join customer
              inner join orders
              on (orders.o_orderdate = orders.o_orderdate)
            inner join supplier
            on (orders.o_totalprice >= supplier.s_acctbal)
          right join customer
          on (supplier.s_acctbal > customer.c_acctbal)
        on (orders.o_orderkey >= supplier.s_suppkey)
      inner join supplier
      on (orders.o_orderdate < orders.o_orderdate)
    on (orders.o_orderstatus is not NULL)
where supplier.s_acctbal = supplier.s_acctbal
limit 113;
select  
  partsupp.ps_availqty, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as date) as date))
from 
  partsupp
where partsupp.ps_suppkey is NULL;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  nation.n_regionkey, 
  lineitem.l_shipmode, 
  customer.c_acctbal, 
  orders.o_clerk
from 
  lineitem
      inner join nation
      on (lineitem.l_tax < lineitem.l_tax)
    inner join orders
      left join customer
        inner join nation
        on (customer.c_nationkey > customer.c_nationkey)
      on (orders.o_orderdate < orders.o_orderdate)
    on (nation.n_comment is NULL)
where customer.c_phone is not NULL;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 133;
select  
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_name, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  max(
    cast(cast(null as money) as money)), 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is NULL
limit 80;
select  
  max(
    cast(cast(null as oid) as oid)), 
  nation.n_nationkey, 
  nation.n_name
from 
  nation
where nation.n_regionkey is not NULL
limit 67;
select  
  customer.c_nationkey, 
  avg(
    cast(customer.c_acctbal as "numeric")), 
  avg(
    cast(cast(null as int2) as int2))
from 
  customer
where customer.c_mktsegment is NULL;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 90;
select  
  part.p_size
from 
  part
where part.p_size = part.p_partkey;
select  
  region.r_regionkey, 
  min(
    cast(cast(null as inet) as inet)), 
  supplier.s_phone
from 
  supplier
            left join supplier
            on (supplier.s_acctbal >= supplier.s_acctbal)
          left join supplier
          on (supplier.s_phone > supplier.s_name)
        inner join supplier
          right join region
          on (supplier.s_nationkey <= supplier.s_suppkey)
        on (supplier.s_acctbal < supplier.s_acctbal)
      right join supplier
      on (supplier.s_acctbal >= supplier.s_acctbal)
    inner join region
    on (supplier.s_nationkey is NULL)
where supplier.s_suppkey is NULL
limit 123;
select  
  customer.c_phone, 
  customer.c_phone, 
  customer.c_name, 
  customer.c_name, 
  customer.c_acctbal
from 
  customer
where customer.c_acctbal is not NULL;
select  
  nation.n_nationkey, 
  max(
    cast(cast(null as float8) as float8))
from 
  customer
    inner join part
          left join nation
          on (part.p_partkey = nation.n_regionkey)
        right join partsupp
        on (partsupp.ps_availqty > partsupp.ps_suppkey)
      right join lineitem
            inner join lineitem
            on (lineitem.l_linestatus >= lineitem.l_returnflag)
          inner join part
          on (lineitem.l_tax > lineitem.l_tax)
        left join lineitem
          right join partsupp
          on (lineitem.l_commitdate >= lineitem.l_shipdate)
        on (lineitem.l_receiptdate < lineitem.l_receiptdate)
      on (lineitem.l_discount <= lineitem.l_discount)
    on (customer.c_comment = lineitem.l_comment )
where lineitem.l_comment is NULL;
select  
  lineitem.l_returnflag, 
  lineitem.l_shipinstruct, 
  lineitem.l_receiptdate, 
  lineitem.l_discount, 
  lineitem.l_quantity, 
  part.p_brand
from 
  part
    right join lineitem
        left join supplier
        on (lineitem.l_shipmode = supplier.s_phone)
      inner join partsupp
        left join lineitem
        on (partsupp.ps_supplycost = lineitem.l_discount)
      on (lineitem.l_commitdate > lineitem.l_receiptdate)
    on (partsupp.ps_partkey is not NULL)
where lineitem.l_shipmode <= part.p_mfgr
limit 77;
select  
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_regionkey
from 
  nation
    right join nation
    on (nation.n_regionkey is not NULL)
where nation.n_name > nation.n_name
limit 67;
select  
  part.p_comment, 
  min(
    cast(cast(null as "time") as "time")), 
  part.p_container, 
  min(
    cast(cast(null as tid) as tid)), 
  part.p_type, 
  max(
    cast(cast(null as "time") as "time")), 
  part.p_comment, 
  part.p_size, 
  part.p_mfgr, 
  part.p_name, 
  part.p_retailprice, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  part
where part.p_brand < part.p_container
limit 144;
select  
  orders.o_custkey, 
  orders.o_orderstatus, 
  orders.o_comment
from 
  orders
where orders.o_orderpriority is not NULL
limit 145;
select  
  nation.n_regionkey, 
  lineitem.l_quantity, 
  nation.n_regionkey, 
  lineitem.l_shipdate, 
  customer.c_acctbal, 
  lineitem.l_shipinstruct, 
  lineitem.l_discount
from 
  lineitem
      inner join orders
      on (orders.o_shippriority > orders.o_custkey)
    left join lineitem
          right join customer
          on (lineitem.l_orderkey = customer.c_custkey )
        inner join nation
        on (lineitem.l_receiptdate = lineitem.l_receiptdate)
      left join lineitem
            right join partsupp
            on (lineitem.l_returnflag < lineitem.l_shipinstruct)
          left join nation
          on (lineitem.l_tax <= partsupp.ps_supplycost)
        left join partsupp
        on (partsupp.ps_availqty >= lineitem.l_orderkey)
      on (lineitem.l_tax < partsupp.ps_supplycost)
    on (lineitem.l_shipmode = nation.n_name )
where nation.n_nationkey is not NULL
limit 147;
select  
  supplier.s_acctbal
from 
  part
          inner join customer
            inner join supplier
            on (supplier.s_nationkey <= supplier.s_suppkey)
          on (customer.c_nationkey >= customer.c_nationkey)
        inner join lineitem
        on (lineitem.l_receiptdate > lineitem.l_shipdate)
      right join customer
      on (lineitem.l_discount = customer.c_acctbal )
    inner join supplier
            inner join part
            on (supplier.s_phone > part.p_mfgr)
          inner join lineitem
            inner join nation
              inner join orders
              on (orders.o_totalprice >= orders.o_totalprice)
            on (lineitem.l_receiptdate >= orders.o_orderdate)
          on (part.p_type = lineitem.l_comment )
        right join lineitem
            inner join part
            on (lineitem.l_commitdate = lineitem.l_commitdate)
          left join region
          on (part.p_mfgr < lineitem.l_returnflag)
        on (part.p_retailprice >= part.p_retailprice)
      right join part
      on (part.p_size = lineitem.l_suppkey)
    on (customer.c_custkey is NULL)
where lineitem.l_comment is NULL;
select  
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name
from 
  region
where region.r_name is NULL;
select  
  orders.o_totalprice, 
  orders.o_orderkey, 
  orders.o_orderstatus, 
  avg(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_comment, 
  orders.o_custkey, 
  orders.o_custkey, 
  orders.o_orderdate, 
  avg(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(orders.o_totalprice as "numeric")), 
  max(
    cast(cast(null as float4) as float4)), 
  orders.o_orderstatus, 
  orders.o_orderstatus
from 
  orders
where orders.o_orderdate >= orders.o_orderdate
limit 65;
select  
  nation.n_name, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_name
from 
  nation
where nation.n_name is NULL;
select  
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 30;
select  
  lineitem.l_discount, 
  region.r_regionkey, 
  max(
    cast(cast(null as tid) as tid)), 
  lineitem.l_shipmode, 
  orders.o_custkey, 
  region.r_regionkey, 
  supplier.s_acctbal, 
  max(
    cast(cast(null as oid) as oid)), 
  customer.c_nationkey, 
  partsupp.ps_availqty
from 
  lineitem
          inner join supplier
          on (supplier.s_phone >= supplier.s_name)
        right join region
        on (lineitem.l_extendedprice < lineitem.l_discount)
      inner join region
        left join part
              inner join customer
              on (part.p_partkey = customer.c_custkey )
            inner join orders
              left join region
              on (orders.o_orderpriority < region.r_name)
            on (orders.o_totalprice = orders.o_totalprice)
          inner join partsupp
          on (orders.o_totalprice >= part.p_retailprice)
        on (part.p_retailprice = partsupp.ps_supplycost)
      on (orders.o_orderdate < orders.o_orderdate)
    inner join customer
    on (lineitem.l_shipdate < lineitem.l_receiptdate)
where lineitem.l_commitdate <= lineitem.l_receiptdate
limit 103;
select  
  nation.n_comment, 
  nation.n_regionkey, 
  max(
    cast(cast(null as xid8) as xid8)), 
  nation.n_name
from 
  nation
where nation.n_name is not NULL;
select  
  lineitem.l_extendedprice, 
  customer.c_comment, 
  region.r_comment, 
  orders.o_comment, 
  lineitem.l_tax
from 
  part
        inner join region
        on (part.p_retailprice > part.p_retailprice)
      right join customer
            right join lineitem
            on (lineitem.l_receiptdate >= lineitem.l_commitdate)
          inner join partsupp
          on (customer.c_custkey = partsupp.ps_partkey )
        right join orders
        on (lineitem.l_shipinstruct >= orders.o_clerk)
      on (customer.c_acctbal <= partsupp.ps_supplycost)
    inner join lineitem
    on (orders.o_totalprice > lineitem.l_extendedprice)
where part.p_brand is not NULL
limit 71;
select  
  orders.o_clerk
from 
  supplier
    left join orders
    on (orders.o_totalprice < orders.o_totalprice)
where orders.o_orderdate = orders.o_orderdate
limit 134;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_comment, 
  max(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  max(
    cast(partsupp.ps_availqty as int4)), 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as tid) as tid)), 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_availqty is not NULL
limit 39;
select  
  supplier.s_name, 
  min(
    cast(cast(null as date) as date)), 
  supplier.s_nationkey, 
  supplier.s_suppkey, 
  sum(
    cast(supplier.s_nationkey as int4)), 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_nationkey, 
  supplier.s_name, 
  sum(
    cast(cast(null as int8) as int8)), 
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_address, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_acctbal is NULL
limit 132;
select  
  min(
    cast(customer.c_mktsegment as bpchar)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  customer.c_address, 
  supplier.s_acctbal, 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_address, 
  orders.o_totalprice, 
  customer.c_nationkey, 
  orders.o_custkey, 
  region.r_comment, 
  supplier.s_phone, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  orders.o_orderdate, 
  region.r_name, 
  supplier.s_acctbal
from 
  part
    left join region
        right join customer
          inner join supplier
          on (customer.c_nationkey >= supplier.s_suppkey)
        on (customer.c_phone = customer.c_phone)
      right join orders
      on (supplier.s_acctbal <= orders.o_totalprice)
    on (part.p_type = supplier.s_address )
where part.p_mfgr <= part.p_container;
select  
  supplier.s_phone
from 
  supplier
where supplier.s_acctbal is NULL
limit 103;
select  
  lineitem.l_shipmode, 
  lineitem.l_tax, 
  lineitem.l_quantity, 
  lineitem.l_comment, 
  lineitem.l_shipinstruct, 
  lineitem.l_commitdate, 
  lineitem.l_shipinstruct, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  lineitem.l_tax, 
  lineitem.l_discount, 
  lineitem.l_tax, 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_commitdate is not NULL
limit 43;
select  
  supplier.s_phone, 
  orders.o_comment, 
  region.r_name, 
  max(
    cast(cast(null as text) as text))
from 
  part
    left join region
        right join partsupp
            left join supplier
            on (partsupp.ps_suppkey > partsupp.ps_suppkey)
          inner join lineitem
          on (partsupp.ps_supplycost = lineitem.l_quantity )
        on (supplier.s_name > region.r_name)
      right join region
        left join customer
              inner join orders
              on (orders.o_orderkey > orders.o_custkey)
            inner join region
            on (orders.o_orderpriority < orders.o_orderstatus)
          right join orders
              left join nation
              on (orders.o_totalprice < orders.o_totalprice)
            inner join part
            on (part.p_retailprice < orders.o_totalprice)
          on (orders.o_totalprice >= orders.o_totalprice)
        on (orders.o_shippriority > orders.o_custkey)
      on (orders.o_shippriority >= lineitem.l_linenumber)
    on (supplier.s_phone is not NULL)
where part.p_brand = orders.o_orderpriority;
select  
  region.r_regionkey, 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as float8) as float8)), 
  orders.o_totalprice, 
  orders.o_orderdate, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_orderpriority
from 
  orders
    inner join region
    on (orders.o_orderdate < orders.o_orderdate)
where orders.o_totalprice <= orders.o_totalprice;
select  
  orders.o_orderkey, 
  orders.o_custkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey
from 
  orders
    right join orders
              left join region
              on (orders.o_shippriority = region.r_regionkey )
            right join lineitem
            on (lineitem.l_suppkey <= lineitem.l_orderkey)
          inner join nation
          on (orders.o_orderkey > lineitem.l_partkey)
        right join orders
        on (region.r_comment = orders.o_comment )
      left join region
      on (region.r_regionkey = region.r_regionkey )
    on (nation.n_name is NULL)
where nation.n_name is NULL;
select  
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_nationkey, 
  sum(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_name, 
  supplier.s_name, 
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_name, 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_suppkey, 
  max(
    cast(supplier.s_acctbal as "numeric")), 
  avg(
    cast(cast(null as float4) as float4)), 
  supplier.s_acctbal, 
  min(
    cast(cast(null as oid) as oid))
from 
  supplier
where supplier.s_address is NULL;
select  
  supplier.s_name, 
  supplier.s_address
from 
  supplier
where supplier.s_comment is NULL
limit 159;
select  
  orders.o_totalprice, 
  region.r_name, 
  region.r_name, 
  lineitem.l_extendedprice, 
  region.r_regionkey, 
  region.r_comment, 
  orders.o_clerk, 
  region.r_regionkey, 
  lineitem.l_quantity, 
  orders.o_orderpriority, 
  lineitem.l_orderkey, 
  lineitem.l_tax, 
  region.r_comment, 
  lineitem.l_orderkey, 
  customer.c_acctbal, 
  customer.c_nationkey
from 
  region
        right join lineitem
          right join customer
          on (lineitem.l_linestatus <= lineitem.l_returnflag)
        on (lineitem.l_shipdate <= lineitem.l_receiptdate)
      left join lineitem
      on (lineitem.l_linenumber = customer.c_nationkey)
    left join region
      left join region
        left join orders
        on (orders.o_orderdate >= orders.o_orderdate)
      on (region.r_name = region.r_name )
    on (lineitem.l_shipmode is not NULL)
where customer.c_nationkey is NULL;
select  
  region.r_comment
from 
  region
where region.r_comment is not NULL
limit 62;
select  
  supplier.s_phone, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  min(
    cast(cast(null as tid) as tid)), 
  supplier.s_acctbal, 
  supplier.s_name, 
  min(
    cast(supplier.s_phone as bpchar)), 
  max(
    cast(cast(null as "time") as "time")), 
  supplier.s_comment, 
  supplier.s_name
from 
  supplier
where supplier.s_address is not NULL
limit 73;
select  
  partsupp.ps_availqty, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  supplier.s_name, 
  supplier.s_name, 
  partsupp.ps_supplycost, 
  count(*), 
  lineitem.l_orderkey, 
  partsupp.ps_partkey
from 
  supplier
    inner join lineitem
      left join partsupp
      on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
    on (supplier.s_name <= supplier.s_name)
where lineitem.l_shipdate is not NULL
limit 170;
select  
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  region.r_name
from 
  region
where region.r_comment is NULL
limit 84;
select  
  orders.o_orderstatus, 
  orders.o_totalprice
from 
  orders
where orders.o_shippriority <= orders.o_orderkey
limit 135;
select  
  orders.o_shippriority, 
  orders.o_comment, 
  orders.o_custkey, 
  orders.o_orderpriority
from 
  orders
where orders.o_orderstatus is NULL
limit 113;
select  
  partsupp.ps_suppkey, 
  sum(
    cast(cast(null as float4) as float4)), 
  part.p_partkey, 
  partsupp.ps_comment
from 
  region
          inner join orders
          on (orders.o_orderstatus <= orders.o_clerk)
        right join part
        on (orders.o_orderdate <= orders.o_orderdate)
      left join part
      on (orders.o_orderdate >= orders.o_orderdate)
    inner join partsupp
      left join customer
            right join region
            on (customer.c_acctbal > customer.c_acctbal)
          right join part
          on (customer.c_custkey >= region.r_regionkey)
        inner join lineitem
          right join partsupp
            inner join customer
            on (partsupp.ps_availqty = customer.c_custkey )
          on (lineitem.l_receiptdate < lineitem.l_receiptdate)
        on (lineitem.l_orderkey >= part.p_partkey)
      on (partsupp.ps_supplycost = lineitem.l_quantity )
    on (part.p_comment = customer.c_name )
where orders.o_clerk is not NULL
limit 165;
select  
  lineitem.l_commitdate
from 
  orders
          inner join nation
          on (orders.o_custkey = nation.n_nationkey )
        inner join lineitem
        on (lineitem.l_tax = lineitem.l_tax)
      inner join part
      on (lineitem.l_shipdate = lineitem.l_shipdate)
    right join lineitem
    on (orders.o_custkey is NULL)
where orders.o_orderstatus is not NULL
limit 71;
select  
  customer.c_comment, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_nationkey, 
  min(
    cast(cast(null as int8) as int8)), 
  customer.c_comment, 
  customer.c_address
from 
  customer
where customer.c_acctbal = customer.c_acctbal
limit 24;
select  
  supplier.s_phone, 
  orders.o_orderdate, 
  supplier.s_acctbal, 
  orders.o_orderstatus, 
  max(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_partkey
from 
  supplier
      inner join customer
        left join orders
        on (orders.o_totalprice > customer.c_acctbal)
      on (orders.o_orderstatus = orders.o_orderpriority)
    inner join lineitem
    on (orders.o_orderstatus is NULL)
where customer.c_phone is NULL;
select  
  nation.n_regionkey, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_nationkey
from 
  nation
where nation.n_comment is not NULL;
select  
  customer.c_custkey, 
  nation.n_nationkey
from 
  customer
      left join nation
      on (customer.c_custkey = nation.n_nationkey )
    inner join lineitem
      inner join supplier
      on (lineitem.l_quantity < lineitem.l_discount)
    on (nation.n_regionkey is not NULL)
where lineitem.l_orderkey is not NULL
limit 74;
select  
  count(*), 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  region.r_regionkey, 
  min(
    cast(cast(null as "time") as "time"))
from 
  part
    inner join region
      right join partsupp
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    on (part.p_brand <= part.p_mfgr)
where partsupp.ps_supplycost is not NULL
limit 102;
select  
  part.p_container, 
  max(
    cast(cast(null as float4) as float4)), 
  part.p_size, 
  part.p_partkey, 
  part.p_comment, 
  sum(
    cast(part.p_retailprice as "numeric"))
from 
  part
where part.p_partkey is not NULL;
select  
  lineitem.l_discount, 
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_shipmode is NULL;
select  
  supplier.s_suppkey, 
  supplier.s_address
from 
  supplier
where supplier.s_acctbal = supplier.s_acctbal;
select  
  customer.c_nationkey, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_address
from 
  customer
where customer.c_phone is NULL
limit 42;
select  
  customer.c_phone
from 
  customer
where customer.c_mktsegment is NULL
limit 195;
select  
  lineitem.l_extendedprice, 
  lineitem.l_suppkey
from 
  lineitem
where lineitem.l_quantity = lineitem.l_extendedprice
limit 164;
select  
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_comment is NULL
limit 45;
select  
  partsupp.ps_availqty, 
  part.p_mfgr, 
  orders.o_totalprice, 
  supplier.s_nationkey, 
  partsupp.ps_supplycost, 
  nation.n_regionkey, 
  customer.c_mktsegment, 
  partsupp.ps_supplycost, 
  region.r_comment, 
  min(
    cast(part.p_brand as bpchar)), 
  avg(
    cast(cast(null as int2) as int2))
from 
  customer
      right join part
        inner join partsupp
            inner join supplier
              left join nation
                left join orders
                on (orders.o_orderkey < orders.o_shippriority)
              on (supplier.s_acctbal >= supplier.s_acctbal)
            on (orders.o_orderdate <= orders.o_orderdate)
          right join part
          on (orders.o_orderpriority = part.p_mfgr )
        on (orders.o_totalprice = part.p_retailprice)
      on (part.p_retailprice > customer.c_acctbal)
    inner join part
        inner join partsupp
        on (partsupp.ps_supplycost > part.p_retailprice)
      inner join region
          right join partsupp
          on (region.r_regionkey = partsupp.ps_partkey )
        inner join nation
        on (region.r_name = nation.n_name )
      on (nation.n_name >= part.p_mfgr)
    on (supplier.s_name is NULL)
where partsupp.ps_partkey is not NULL
limit 123;
select  
  max(
    cast(cast(null as float4) as float4)), 
  supplier.s_comment, 
  lineitem.l_returnflag, 
  lineitem.l_receiptdate
from 
  supplier
    inner join lineitem
    on (lineitem.l_commitdate is NULL)
where lineitem.l_comment is NULL
limit 75;
select  
  max(
    cast(lineitem.l_discount as "numeric")), 
  lineitem.l_returnflag, 
  region.r_comment, 
  lineitem.l_shipinstruct, 
  supplier.s_nationkey, 
  lineitem.l_partkey, 
  lineitem.l_extendedprice, 
  min(
    cast(cast(null as tid) as tid)), 
  lineitem.l_tax, 
  max(
    cast(cast(null as timetz) as timetz)), 
  lineitem.l_comment, 
  lineitem.l_partkey, 
  lineitem.l_linestatus
from 
  customer
      left join region
            inner join supplier
            on (region.r_comment = supplier.s_address )
          inner join lineitem
          on (lineitem.l_shipdate > lineitem.l_shipdate)
        left join lineitem
        on (lineitem.l_shipdate = lineitem.l_shipdate )
      on (lineitem.l_partkey >= customer.c_custkey)
    inner join lineitem
    on (lineitem.l_comment is NULL)
where customer.c_name is not NULL
limit 31;
select  
  customer.c_acctbal
from 
  customer
where customer.c_acctbal is NULL
limit 81;
select  
  nation.n_name, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  nation.n_name, 
  nation.n_name, 
  nation.n_name, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  min(
    cast(cast(null as date) as date))
from 
  nation
where nation.n_name >= nation.n_name;
select  
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_name, 
  min(
    cast(cast(null as timetz) as timetz)), 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_regionkey, 
  min(
    cast(cast(null as tid) as tid)), 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_comment
from 
  nation
where nation.n_name < nation.n_name
limit 132;
select  
  lineitem.l_linenumber, 
  supplier.s_nationkey, 
  supplier.s_comment, 
  lineitem.l_suppkey, 
  supplier.s_acctbal, 
  lineitem.l_quantity, 
  max(
    cast(cast(null as int8) as int8)), 
  supplier.s_nationkey
from 
  lineitem
    left join supplier
    on (supplier.s_phone is NULL)
where supplier.s_comment is NULL;
select  
  customer.c_acctbal, 
  customer.c_address
from 
  customer
where customer.c_acctbal is NULL
limit 80;
select  
  region.r_regionkey, 
  lineitem.l_receiptdate, 
  lineitem.l_suppkey, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  lineitem.l_discount
from 
  region
      inner join lineitem
      on (region.r_name <= lineitem.l_shipinstruct)
    left join lineitem
    on (lineitem.l_tax is not NULL)
where lineitem.l_orderkey is not NULL;
select  
  partsupp.ps_suppkey
from 
  partsupp
      inner join orders
      on (orders.o_orderdate <= orders.o_orderdate)
    inner join part
    on (orders.o_totalprice > orders.o_totalprice)
where partsupp.ps_comment is not NULL;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment
from 
  nation
where nation.n_name is NULL;
select  
  customer.c_acctbal, 
  customer.c_nationkey, 
  customer.c_mktsegment
from 
  customer
where customer.c_nationkey is not NULL
limit 112;
select  
  partsupp.ps_comment, 
  orders.o_comment, 
  part.p_type, 
  customer.c_acctbal, 
  orders.o_comment
from 
  part
      inner join customer
            left join part
            on (part.p_brand = part.p_brand)
          inner join partsupp
          on (part.p_brand > part.p_mfgr)
        inner join customer
        on (customer.c_phone = customer.c_mktsegment)
      on (part.p_mfgr >= part.p_container)
    inner join part
          left join supplier
          on (supplier.s_acctbal > part.p_retailprice)
        inner join lineitem
          inner join region
          on (lineitem.l_comment = region.r_comment )
        on (lineitem.l_shipdate <= lineitem.l_commitdate)
      left join part
        inner join orders
        on (part.p_mfgr = orders.o_orderstatus )
      on (part.p_retailprice <= lineitem.l_tax)
    on (part.p_container is not NULL)
where customer.c_acctbal is not NULL
limit 99;
select  
  part.p_brand, 
  part.p_retailprice, 
  part.p_retailprice, 
  min(
    cast(part.p_retailprice as "numeric")), 
  count(*), 
  max(
    cast(part.p_retailprice as "numeric")), 
  part.p_comment, 
  part.p_name, 
  part.p_container
from 
  part
where part.p_type is NULL;
select  
  customer.c_name, 
  customer.c_address, 
  customer.c_name
from 
  customer
where customer.c_nationkey < customer.c_custkey
limit 149;
select  
  nation.n_comment, 
  supplier.s_acctbal, 
  supplier.s_phone
from 
  supplier
    right join lineitem
          inner join lineitem
          on (lineitem.l_suppkey = lineitem.l_suppkey)
        right join nation
        on (lineitem.l_tax < lineitem.l_tax)
      inner join lineitem
      on (lineitem.l_shipinstruct <= lineitem.l_shipinstruct)
    on (supplier.s_comment is NULL)
where lineitem.l_receiptdate > lineitem.l_receiptdate
limit 70;
select  
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_comment, 
  max(
    cast(nation.n_regionkey as int4)), 
  nation.n_name, 
  nation.n_name
from 
  nation
where nation.n_name is not NULL;
select  
  partsupp.ps_availqty, 
  nation.n_regionkey, 
  nation.n_comment
from 
  supplier
    right join partsupp
      left join partsupp
        inner join nation
          right join part
          on (part.p_retailprice > part.p_retailprice)
        on (part.p_retailprice <= part.p_retailprice)
      on (part.p_container > part.p_container)
    on (part.p_brand = nation.n_name)
where supplier.s_name < part.p_container;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  region.r_regionkey, 
  region.r_comment, 
  min(
    cast(cast(null as float4) as float4)), 
  region.r_name
from 
  region
where region.r_name is NULL
limit 142;
select  
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_nationkey
from 
  nation
where nation.n_comment is not NULL
limit 122;
select  
  customer.c_acctbal, 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_address, 
  max(
    cast(cast(null as date) as date)), 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_mktsegment, 
  customer.c_address, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_mktsegment, 
  customer.c_comment, 
  customer.c_address, 
  customer.c_comment, 
  customer.c_custkey, 
  customer.c_custkey, 
  customer.c_name, 
  customer.c_mktsegment
from 
  customer
where customer.c_phone is not NULL;
select  
  region.r_regionkey, 
  min(
    cast(cast(null as int2) as int2)), 
  region.r_name, 
  avg(
    cast(cast(null as float4) as float4))
from 
  region
where region.r_name is NULL
limit 93;
select  
  max(
    cast(cast(null as money) as money)), 
  customer.c_mktsegment
from 
  customer
where customer.c_custkey is not NULL
limit 72;
select  
  part.p_size
from 
  part
      right join region
        right join lineitem
        on (lineitem.l_partkey <= region.r_regionkey)
      on (part.p_size = lineitem.l_orderkey )
    inner join region
        inner join region
          inner join supplier
            right join supplier
              left join supplier
              on (supplier.s_acctbal < supplier.s_acctbal)
            on (supplier.s_acctbal = supplier.s_acctbal)
          on (region.r_name <= supplier.s_name)
        on (supplier.s_nationkey < supplier.s_nationkey)
      inner join part
      on (supplier.s_acctbal >= supplier.s_acctbal)
    on (supplier.s_suppkey > lineitem.l_partkey)
where part.p_retailprice < lineitem.l_extendedprice
limit 167;
select  
  avg(
    cast(cast(null as int8) as int8)), 
  nation.n_nationkey, 
  min(
    cast(cast(null as "time") as "time"))
from 
  nation
        left join nation
        on (nation.n_nationkey > nation.n_regionkey)
      right join partsupp
        right join part
          inner join partsupp
              inner join customer
              on (partsupp.ps_comment = customer.c_name )
            inner join part
              inner join orders
                right join lineitem
                on (lineitem.l_discount = lineitem.l_tax)
              on (lineitem.l_quantity = lineitem.l_extendedprice)
            on (lineitem.l_receiptdate > lineitem.l_receiptdate)
          on (lineitem.l_receiptdate > lineitem.l_shipdate)
        on (partsupp.ps_comment = partsupp.ps_comment )
      on (partsupp.ps_suppkey >= partsupp.ps_partkey)
    inner join lineitem
    on (customer.c_phone < lineitem.l_linestatus)
where orders.o_totalprice is not NULL
limit 50;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  part.p_comment
from 
  nation
      inner join region
              left join part
              on (part.p_retailprice = part.p_retailprice)
            left join lineitem
            on (lineitem.l_shipdate <= lineitem.l_shipdate)
          inner join part
          on (lineitem.l_commitdate >= lineitem.l_receiptdate)
        inner join lineitem
        on (lineitem.l_partkey < lineitem.l_partkey)
      on (lineitem.l_receiptdate = lineitem.l_commitdate)
    inner join lineitem
    on (lineitem.l_linestatus > part.p_container)
where lineitem.l_commitdate is NULL
limit 91;
select  
  nation.n_nationkey, 
  avg(
    cast(customer.c_acctbal as "numeric")), 
  region.r_comment
from 
  part
      inner join region
      on (region.r_regionkey > part.p_partkey)
    left join nation
        inner join region
        on (nation.n_regionkey > nation.n_regionkey)
      right join region
        right join customer
        on (customer.c_acctbal < customer.c_acctbal)
      on (customer.c_phone < customer.c_phone)
    on (region.r_regionkey is not NULL)
where region.r_name = part.p_mfgr
limit 100;
select  
  lineitem.l_comment
from 
  orders
            left join region
            on (orders.o_orderpriority > orders.o_orderstatus)
          right join lineitem
          on (lineitem.l_shipinstruct = lineitem.l_shipmode)
        inner join supplier
          left join nation
          on (nation.n_regionkey = nation.n_regionkey)
        on (lineitem.l_returnflag > supplier.s_phone)
      left join supplier
      on (lineitem.l_suppkey < orders.o_custkey)
    inner join lineitem
        inner join part
        on (lineitem.l_receiptdate > lineitem.l_receiptdate)
      inner join part
          inner join partsupp
            left join nation
              left join orders
              on (nation.n_regionkey = orders.o_orderkey )
            on (orders.o_orderdate <= orders.o_orderdate)
          on (part.p_mfgr > orders.o_clerk)
        inner join supplier
        on (orders.o_orderpriority <= part.p_container)
      on (lineitem.l_shipmode <= part.p_brand)
    on (supplier.s_acctbal = partsupp.ps_supplycost )
where supplier.s_name is not NULL;
select  
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name
from 
  nation
where nation.n_regionkey is NULL;
select  
  customer.c_comment, 
  customer.c_acctbal, 
  customer.c_comment, 
  customer.c_name, 
  customer.c_phone
from 
  customer
where customer.c_nationkey is not NULL;
select  
  lineitem.l_tax
from 
  lineitem
where lineitem.l_commitdate = lineitem.l_shipdate
limit 38;
select  
  supplier.s_acctbal, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_name, 
  supplier.s_comment, 
  max(
    cast(cast(null as float8) as float8)), 
  supplier.s_acctbal
from 
  supplier
where supplier.s_acctbal is not NULL
limit 110;
select  
  customer.c_name, 
  customer.c_mktsegment
from 
  customer
    right join customer
      right join customer
        inner join part
        on (part.p_retailprice = part.p_retailprice)
      on (customer.c_nationkey = customer.c_custkey)
    on (customer.c_acctbal = customer.c_acctbal )
where customer.c_nationkey <= customer.c_custkey
limit 114;
select  
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_address, 
  max(
    cast(cast(null as float4) as float4)), 
  supplier.s_name
from 
  supplier
where supplier.s_acctbal <= supplier.s_acctbal
limit 55;
select  
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment
from 
  nation
where nation.n_regionkey is not NULL;
select  
  max(
    cast(orders.o_orderpriority as bpchar))
from 
  orders
where orders.o_totalprice is NULL
limit 12;
select  
  part.p_partkey, 
  part.p_container
from 
  part
where part.p_retailprice is NULL
limit 143;
select  
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  sum(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  sum(
    cast(cast(null as int8) as int8)), 
  supplier.s_comment, 
  supplier.s_comment
from 
  supplier
where supplier.s_address is not NULL
limit 124;
select  
  orders.o_comment, 
  min(
    cast(partsupp.ps_availqty as int4))
from 
  partsupp
      inner join customer
      on (partsupp.ps_availqty = customer.c_custkey )
    left join orders
            left join nation
            on (nation.n_nationkey <= nation.n_regionkey)
          left join orders
          on (nation.n_nationkey = orders.o_orderkey )
        left join supplier
          left join customer
          on (supplier.s_acctbal >= supplier.s_acctbal)
        on (nation.n_name = customer.c_phone)
      inner join nation
        right join partsupp
          inner join customer
              right join supplier
                left join partsupp
                on (supplier.s_acctbal < partsupp.ps_supplycost)
              on (customer.c_mktsegment < supplier.s_name)
            inner join nation
            on (supplier.s_name = nation.n_name)
          on (supplier.s_acctbal < customer.c_acctbal)
        on (partsupp.ps_supplycost < partsupp.ps_supplycost)
      on (customer.c_acctbal > customer.c_acctbal)
    on (orders.o_shippriority is NULL)
where partsupp.ps_supplycost = partsupp.ps_supplycost
limit 84;
select  
  nation.n_nationkey
from 
  partsupp
        left join partsupp
          right join partsupp
              left join lineitem
              on (lineitem.l_quantity < partsupp.ps_supplycost)
            inner join orders
            on (lineitem.l_receiptdate > lineitem.l_shipdate)
          on (orders.o_orderstatus <= orders.o_orderpriority)
        on (orders.o_orderpriority <= lineitem.l_shipinstruct)
      inner join region
          left join partsupp
          on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
        left join lineitem
        on (region.r_name > lineitem.l_linestatus)
      on (orders.o_orderdate > lineitem.l_commitdate)
    inner join nation
    on (region.r_regionkey is not NULL)
where partsupp.ps_suppkey is not NULL
limit 188;
select  
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  part.p_mfgr
from 
  lineitem
      inner join supplier
        left join part
        on (supplier.s_acctbal < supplier.s_acctbal)
      on (supplier.s_phone <= lineitem.l_returnflag)
    inner join partsupp
      inner join nation
        inner join part
        on (part.p_brand = part.p_container)
      on (partsupp.ps_supplycost <= part.p_retailprice)
    on (part.p_retailprice >= lineitem.l_discount)
where part.p_retailprice is not NULL;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  lineitem.l_shipdate, 
  lineitem.l_shipdate
from 
  part
    right join lineitem
      left join lineitem
      on (lineitem.l_orderkey = lineitem.l_suppkey)
    on (lineitem.l_shipdate = lineitem.l_commitdate)
where lineitem.l_quantity >= part.p_retailprice;
select  
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_regionkey <= region.r_regionkey;
select  
  lineitem.l_orderkey, 
  lineitem.l_receiptdate, 
  lineitem.l_commitdate, 
  avg(
    cast(lineitem.l_tax as "numeric"))
from 
  lineitem
where lineitem.l_extendedprice >= lineitem.l_discount
limit 103;
select  
  region.r_name, 
  avg(
    cast(lineitem.l_extendedprice as "numeric")), 
  lineitem.l_receiptdate, 
  lineitem.l_tax, 
  lineitem.l_comment, 
  region.r_comment, 
  lineitem.l_shipdate, 
  max(
    cast(cast(null as oid) as oid)), 
  region.r_name
from 
  lineitem
    inner join region
    on (region.r_name is not NULL)
where region.r_name is NULL
limit 79;
select  
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_address
from 
  supplier
where supplier.s_comment is not NULL
limit 111;
select  
  lineitem.l_tax, 
  customer.c_address, 
  lineitem.l_tax, 
  customer.c_mktsegment, 
  sum(
    cast(cast(null as money) as money)), 
  lineitem.l_discount, 
  customer.c_custkey
from 
  customer
    left join lineitem
    on (lineitem.l_shipdate = lineitem.l_receiptdate)
where lineitem.l_shipdate > lineitem.l_commitdate;
select  
  part.p_brand, 
  supplier.s_comment, 
  lineitem.l_tax, 
  supplier.s_suppkey, 
  lineitem.l_linestatus
from 
  partsupp
      inner join part
            inner join lineitem
            on (part.p_partkey = lineitem.l_orderkey )
          inner join partsupp
            left join region
            on (partsupp.ps_partkey <= region.r_regionkey)
          on (lineitem.l_partkey > part.p_size)
        right join supplier
        on (lineitem.l_partkey > lineitem.l_orderkey)
      on (part.p_retailprice >= part.p_retailprice)
    right join supplier
    on (part.p_name is NULL)
where partsupp.ps_comment is not NULL
limit 31;
select  
  min(
    cast(supplier.s_suppkey as int4))
from 
  supplier
where supplier.s_phone < supplier.s_phone
limit 113;
select  
  region.r_comment, 
  part.p_size, 
  part.p_partkey, 
  region.r_comment, 
  part.p_mfgr, 
  region.r_name
from 
  partsupp
    right join region
      inner join part
      on (part.p_brand <= region.r_name)
    on (region.r_regionkey is NULL)
where part.p_retailprice is NULL;
select  
  part.p_name, 
  part.p_partkey
from 
  part
where part.p_retailprice < part.p_retailprice
limit 89;
select  
  region.r_name, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_regionkey, 
  max(
    cast(cast(null as float8) as float8)), 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  min(
    cast(cast(null as text) as text)), 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_name is NULL
limit 135;
select  
  part.p_container
from 
  part
where part.p_size > part.p_size
limit 52;
select  
  max(
    cast(cast(null as oid) as oid)), 
  lineitem.l_orderkey, 
  lineitem.l_shipinstruct, 
  nation.n_name, 
  sum(
    cast(cast(null as int8) as int8))
from 
  lineitem
    right join nation
    on (lineitem.l_shipinstruct = nation.n_name )
where nation.n_name is not NULL;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  nation.n_nationkey
from 
  nation
    inner join supplier
    on (nation.n_comment = supplier.s_address )
where supplier.s_acctbal < supplier.s_acctbal
limit 123;
select  
  supplier.s_address, 
  supplier.s_suppkey, 
  supplier.s_address
from 
  supplier
where supplier.s_phone >= supplier.s_phone
limit 126;
select  
  customer.c_acctbal, 
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_custkey, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_custkey, 
  customer.c_custkey, 
  sum(
    cast(customer.c_nationkey as int4)), 
  sum(
    cast(customer.c_nationkey as int4)), 
  customer.c_phone, 
  customer.c_custkey, 
  max(
    cast(customer.c_nationkey as int4)), 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_address, 
  min(
    cast(cast(null as inet) as inet)), 
  customer.c_custkey
from 
  customer
where customer.c_acctbal = customer.c_acctbal
limit 156;
select distinct 
  orders.o_shippriority, 
  sum(
    cast(partsupp.ps_availqty as int4))
from 
  region
    right join orders
        inner join nation
            right join orders
            on (orders.o_totalprice >= orders.o_totalprice)
          right join supplier
          on (orders.o_orderdate < orders.o_orderdate)
        on (supplier.s_acctbal >= supplier.s_acctbal)
      inner join supplier
        inner join supplier
          inner join partsupp
          on (supplier.s_suppkey >= partsupp.ps_suppkey)
        on (supplier.s_name > supplier.s_name)
      on (orders.o_orderpriority = supplier.s_phone)
    on (orders.o_orderstatus is NULL)
where region.r_regionkey <= supplier.s_suppkey
limit 119;
select distinct 
  customer.c_acctbal, 
  min(
    cast(cast(null as tid) as tid)), 
  supplier.s_acctbal, 
  customer.c_nationkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  part.p_brand, 
  region.r_name, 
  customer.c_mktsegment, 
  supplier.s_comment, 
  supplier.s_address, 
  min(
    cast(cast(null as money) as money))
from 
  customer
      left join part
        inner join supplier
        on (supplier.s_nationkey >= supplier.s_nationkey)
      on (supplier.s_nationkey < customer.c_custkey)
    inner join region
    on (supplier.s_comment is NULL)
where supplier.s_phone is NULL;
select  
  supplier.s_comment, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  supplier
where supplier.s_nationkey = supplier.s_suppkey
limit 90;
select  
  max(
    cast(cast(null as oid) as oid)), 
  nation.n_comment, 
  nation.n_regionkey
from 
  nation
    right join orders
      right join nation
        inner join partsupp
        on (partsupp.ps_supplycost < partsupp.ps_supplycost)
      on (nation.n_nationkey < orders.o_custkey)
    on (nation.n_name is NULL)
where nation.n_regionkey is NULL
limit 151;
select  
  region.r_name, 
  supplier.s_nationkey
from 
  supplier
      inner join nation
      on (supplier.s_name = nation.n_name )
    inner join region
        inner join customer
        on (region.r_regionkey = customer.c_custkey )
      inner join supplier
      on (customer.c_acctbal > supplier.s_acctbal)
    on (nation.n_regionkey is NULL)
where customer.c_mktsegment is NULL;
select  
  region.r_name
from 
  orders
    inner join region
    on (orders.o_orderdate < orders.o_orderdate)
where region.r_name is not NULL;
select  
  orders.o_orderdate, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  orders.o_orderkey, 
  partsupp.ps_supplycost, 
  nation.n_name, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  region.r_name, 
  min(
    cast(cast(null as inet) as inet)), 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as money) as money)), 
  orders.o_orderpriority
from 
  lineitem
        inner join lineitem
        on (lineitem.l_shipinstruct <= lineitem.l_shipinstruct)
      left join customer
        left join region
          right join partsupp
              inner join orders
                inner join partsupp
                on (orders.o_orderstatus > orders.o_orderpriority)
              on (partsupp.ps_partkey < partsupp.ps_suppkey)
            left join nation
            on (nation.n_name > orders.o_orderpriority)
          on (orders.o_orderpriority < region.r_name)
        on (region.r_name < customer.c_phone)
      on (lineitem.l_receiptdate > lineitem.l_shipdate)
    left join orders
      inner join partsupp
      on (partsupp.ps_suppkey = partsupp.ps_partkey)
    on (lineitem.l_comment is NULL)
where nation.n_regionkey is NULL;
select  
  part.p_partkey, 
  part.p_brand, 
  part.p_container, 
  part.p_comment, 
  min(
    cast(cast(null as timetz) as timetz)), 
  part.p_container, 
  part.p_brand, 
  part.p_mfgr, 
  part.p_mfgr, 
  part.p_brand, 
  part.p_partkey, 
  part.p_container, 
  part.p_brand, 
  part.p_mfgr, 
  max(
    cast(cast(null as "interval") as "interval")), 
  part.p_brand, 
  part.p_brand, 
  avg(
    cast(cast(null as float4) as float4))
from 
  part
where part.p_comment is NULL
limit 112;
select  
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_suppkey is not NULL;
select  
  avg(
    cast(orders.o_shippriority as int4)), 
  partsupp.ps_supplycost, 
  orders.o_shippriority, 
  orders.o_comment, 
  max(
    cast(cast(null as tid) as tid)), 
  orders.o_custkey, 
  partsupp.ps_partkey
from 
  orders
    left join partsupp
    on (orders.o_custkey = partsupp.ps_partkey )
where partsupp.ps_supplycost is not NULL
limit 111;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_partkey is NULL
limit 111;
select  
  lineitem.l_commitdate, 
  lineitem.l_comment
from 
  lineitem
where lineitem.l_shipdate >= lineitem.l_shipdate;
select  
  nation.n_regionkey, 
  part.p_partkey, 
  max(
    cast(cast(null as int2) as int2))
from 
  region
    right join part
      right join supplier
              right join nation
              on (supplier.s_nationkey = supplier.s_suppkey)
            inner join orders
            on (supplier.s_acctbal < supplier.s_acctbal)
          right join nation
            left join lineitem
            on (lineitem.l_orderkey >= nation.n_regionkey)
          on (lineitem.l_commitdate = lineitem.l_commitdate)
        inner join region
          inner join partsupp
            right join customer
              inner join supplier
              on (customer.c_address = supplier.s_address )
            on (partsupp.ps_supplycost < partsupp.ps_supplycost)
          on (supplier.s_name = supplier.s_phone)
        on (partsupp.ps_supplycost < customer.c_acctbal)
      on (part.p_partkey = supplier.s_nationkey)
    on (region.r_name = nation.n_name )
where lineitem.l_shipdate = orders.o_orderdate
limit 124;
select  
  region.r_name, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_comment is NULL;
select  
  count(*), 
  max(
    cast(cast(null as float4) as float4)), 
  lineitem.l_tax, 
  lineitem.l_shipmode, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  lineitem.l_suppkey, 
  region.r_regionkey, 
  region.r_comment, 
  lineitem.l_returnflag, 
  lineitem.l_extendedprice, 
  region.r_name, 
  region.r_name, 
  region.r_name, 
  lineitem.l_receiptdate, 
  lineitem.l_returnflag, 
  lineitem.l_discount, 
  lineitem.l_returnflag, 
  lineitem.l_commitdate, 
  region.r_comment, 
  region.r_name, 
  lineitem.l_quantity, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  lineitem.l_quantity, 
  lineitem.l_tax, 
  region.r_regionkey, 
  region.r_name, 
  min(
    cast(cast(null as money) as money)), 
  lineitem.l_linestatus
from 
  lineitem
    inner join region
    on (lineitem.l_partkey is not NULL)
where lineitem.l_discount is NULL
limit 123;
select  
  customer.c_custkey, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  customer.c_address
from 
  customer
where customer.c_phone is not NULL
limit 56;
select  
  region.r_comment, 
  lineitem.l_linenumber, 
  min(
    cast(cast(null as timetz) as timetz)), 
  orders.o_clerk, 
  nation.n_comment
from 
  lineitem
        inner join partsupp
        on (lineitem.l_shipdate <= lineitem.l_receiptdate)
      inner join nation
        left join customer
              inner join region
              on (region.r_regionkey > customer.c_custkey)
            inner join nation
            on (region.r_regionkey >= nation.n_nationkey)
          left join supplier
          on (customer.c_acctbal = customer.c_acctbal)
        on (customer.c_acctbal >= customer.c_acctbal)
      on (lineitem.l_returnflag = customer.c_phone )
    inner join orders
    on (customer.c_comment = orders.o_comment )
where orders.o_orderkey is NULL;
select  
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_name
from 
  nation
where nation.n_name is not NULL;
select  
  nation.n_nationkey, 
  nation.n_name
from 
  nation
where nation.n_comment is not NULL
limit 90;
select  
  min(
    cast(cast(null as money) as money)), 
  min(
    cast(cast(null as money) as money)), 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_supplycost <= partsupp.ps_supplycost;
select  
  partsupp.ps_availqty, 
  max(
    cast(cast(null as int8) as int8))
from 
  part
      inner join partsupp
      on (part.p_retailprice >= partsupp.ps_supplycost)
    left join supplier
      left join lineitem
        inner join nation
        on (nation.n_name < lineitem.l_returnflag)
      on (supplier.s_nationkey = lineitem.l_orderkey )
    on (partsupp.ps_partkey is NULL)
where lineitem.l_discount = lineitem.l_quantity
limit 144;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_linestatus = lineitem.l_shipinstruct;
select  
  customer.c_address, 
  customer.c_mktsegment
from 
  customer
where customer.c_nationkey < customer.c_nationkey
limit 92;
select  
  sum(
    cast(cast(null as float8) as float8))
from 
  lineitem
where lineitem.l_receiptdate is not NULL;
select  
  region.r_comment, 
  region.r_name, 
  region.r_comment, 
  sum(
    cast(cast(null as float8) as float8)), 
  region.r_regionkey, 
  region.r_name, 
  max(
    cast(cast(null as "time") as "time")), 
  region.r_comment
from 
  region
where region.r_regionkey is not NULL
limit 95;
select  
  partsupp.ps_partkey, 
  region.r_comment, 
  part.p_container, 
  orders.o_orderkey, 
  orders.o_orderkey, 
  max(
    cast(cast(null as xid8) as xid8)), 
  supplier.s_address, 
  orders.o_orderdate
from 
  orders
          right join supplier
          on (orders.o_shippriority = supplier.s_suppkey )
        left join partsupp
          inner join supplier
          on (partsupp.ps_partkey = partsupp.ps_suppkey)
        on (orders.o_clerk = supplier.s_name )
      inner join orders
          right join part
            inner join part
            on (part.p_partkey <= part.p_partkey)
          on (orders.o_totalprice >= part.p_retailprice)
        left join supplier
          inner join region
          on (supplier.s_acctbal <= supplier.s_acctbal)
        on (orders.o_orderdate > orders.o_orderdate)
      on (supplier.s_phone > supplier.s_phone)
    left join partsupp
    on (part.p_container < part.p_mfgr)
where supplier.s_name is NULL;
select  
  customer.c_comment, 
  orders.o_comment, 
  orders.o_orderpriority, 
  orders.o_orderstatus, 
  nation.n_name, 
  customer.c_nationkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_availqty, 
  orders.o_custkey, 
  avg(
    cast(customer.c_custkey as int4)), 
  orders.o_shippriority, 
  customer.c_mktsegment, 
  orders.o_orderdate, 
  customer.c_mktsegment
from 
  partsupp
        inner join orders
        on (partsupp.ps_partkey >= orders.o_orderkey)
      inner join nation
        inner join customer
        on (nation.n_comment = customer.c_name )
      on (orders.o_orderdate <= orders.o_orderdate)
    left join customer
      inner join orders
      on (orders.o_shippriority > customer.c_custkey)
    on (nation.n_comment = customer.c_name )
where partsupp.ps_suppkey is NULL;
select  
  part.p_comment, 
  part.p_mfgr, 
  part.p_container
from 
  part
where part.p_size is NULL
limit 101;
select  
  orders.o_orderdate, 
  orders.o_orderstatus, 
  orders.o_orderdate
from 
  orders
where orders.o_clerk is not NULL;
select  
  orders.o_clerk, 
  sum(
    cast(lineitem.l_suppkey as int4)), 
  lineitem.l_shipmode, 
  lineitem.l_comment
from 
  lineitem
    inner join orders
      inner join lineitem
        inner join lineitem
        on (lineitem.l_linenumber < lineitem.l_partkey)
      on (lineitem.l_suppkey < orders.o_orderkey)
    on (lineitem.l_partkey = lineitem.l_orderkey )
where lineitem.l_linestatus is not NULL
limit 39;
select  
  lineitem.l_linenumber
from 
  lineitem
        left join partsupp
          right join lineitem
          on (lineitem.l_linenumber = lineitem.l_linenumber)
        on (partsupp.ps_suppkey >= lineitem.l_linenumber)
      right join customer
        inner join lineitem
          right join nation
            left join orders
              inner join nation
              on (orders.o_orderdate = orders.o_orderdate)
            on (nation.n_regionkey >= orders.o_custkey)
          on (orders.o_orderdate <= lineitem.l_receiptdate)
        on (lineitem.l_commitdate > lineitem.l_shipdate)
      on (lineitem.l_shipdate < lineitem.l_shipdate)
    right join part
    on (lineitem.l_shipinstruct = lineitem.l_returnflag)
where lineitem.l_comment is not NULL
limit 111;
select  
  customer.c_comment, 
  customer.c_phone, 
  part.p_mfgr, 
  customer.c_comment
from 
  customer
    right join part
    on (customer.c_address is not NULL)
where customer.c_acctbal is not NULL
limit 101;
select  
  part.p_type, 
  part.p_container, 
  part.p_partkey, 
  part.p_name, 
  part.p_mfgr, 
  part.p_type, 
  part.p_container, 
  part.p_size, 
  avg(
    cast(part.p_size as int4)), 
  part.p_mfgr, 
  part.p_retailprice, 
  part.p_size, 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  part
where part.p_comment is NULL;
select  
  part.p_partkey, 
  part.p_type, 
  part.p_retailprice, 
  max(
    cast(cast(null as float8) as float8)), 
  part.p_size, 
  part.p_mfgr, 
  part.p_type, 
  part.p_retailprice, 
  part.p_partkey, 
  part.p_container, 
  max(
    cast(cast(null as int2) as int2)), 
  part.p_name
from 
  part
where part.p_container > part.p_container
limit 132;
select  
  part.p_comment, 
  region.r_name, 
  supplier.s_acctbal, 
  nation.n_comment, 
  nation.n_comment, 
  customer.c_mktsegment
from 
  supplier
        inner join customer
          inner join part
              right join nation
                inner join region
                on (region.r_regionkey >= nation.n_nationkey)
              on (part.p_retailprice < part.p_retailprice)
            left join nation
            on (part.p_retailprice = part.p_retailprice)
          on (part.p_container < region.r_name)
        on (region.r_name >= customer.c_phone)
      right join partsupp
      on (partsupp.ps_suppkey > nation.n_regionkey)
    left join nation
    on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
where nation.n_regionkey is NULL;
select  
  part.p_container, 
  part.p_name, 
  part.p_container, 
  part.p_partkey, 
  part.p_mfgr, 
  part.p_type
from 
  part
where part.p_size is not NULL;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  part.p_retailprice, 
  supplier.s_address, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_comment, 
  part.p_comment, 
  lineitem.l_discount, 
  part.p_comment, 
  customer.c_name, 
  customer.c_phone, 
  avg(
    cast(cast(null as float8) as float8)), 
  supplier.s_comment, 
  max(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_mktsegment, 
  supplier.s_address, 
  customer.c_address, 
  customer.c_acctbal, 
  customer.c_comment, 
  max(
    cast(supplier.s_name as bpchar)), 
  supplier.s_suppkey
from 
  part
    right join lineitem
        left join supplier
          left join customer
          on (supplier.s_suppkey <= customer.c_nationkey)
        on (customer.c_acctbal < customer.c_acctbal)
      left join customer
      on (lineitem.l_returnflag >= lineitem.l_linestatus)
    on (lineitem.l_partkey is not NULL)
where customer.c_custkey is NULL
limit 101;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  supplier.s_nationkey, 
  orders.o_orderpriority
from 
  supplier
    inner join supplier
          left join nation
            right join orders
              right join nation
              on (orders.o_totalprice >= orders.o_totalprice)
            on (nation.n_nationkey <= nation.n_regionkey)
          on (orders.o_orderdate <= orders.o_orderdate)
        right join customer
        on (nation.n_nationkey = customer.c_custkey )
      inner join customer
      on (customer.c_acctbal < orders.o_totalprice)
    on (orders.o_orderdate < orders.o_orderdate)
where customer.c_acctbal is not NULL;
select  
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  min(
    cast(cast(null as tid) as tid)), 
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as int2) as int2))
from 
  region
where region.r_name is NULL
limit 106;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_regionkey, 
  orders.o_orderkey, 
  nation.n_comment, 
  orders.o_clerk
from 
  customer
      inner join lineitem
                inner join orders
                on (lineitem.l_quantity < lineitem.l_discount)
              right join region
              on (orders.o_clerk = region.r_name )
            left join part
            on (lineitem.l_quantity = part.p_retailprice )
          right join nation
              right join orders
              on (nation.n_name = orders.o_orderstatus )
            inner join lineitem
            on (orders.o_totalprice = lineitem.l_quantity )
          on (orders.o_clerk = orders.o_orderstatus )
        right join nation
          inner join part
              left join partsupp
              on (part.p_retailprice > partsupp.ps_supplycost)
            inner join lineitem
            on (lineitem.l_quantity <= part.p_retailprice)
          on (part.p_container >= part.p_brand)
        on (lineitem.l_discount <= lineitem.l_discount)
      on (part.p_mfgr < customer.c_mktsegment)
    left join supplier
    on (nation.n_regionkey is NULL)
where supplier.s_comment is NULL
limit 102;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  part.p_partkey, 
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  nation.n_regionkey
from 
  customer
        inner join lineitem
        on (customer.c_custkey = lineitem.l_orderkey )
      right join nation
          inner join orders
            inner join supplier
            on (orders.o_totalprice > supplier.s_acctbal)
          on (orders.o_totalprice = supplier.s_acctbal)
        inner join partsupp
          left join part
          on (partsupp.ps_partkey = partsupp.ps_suppkey)
        on (supplier.s_acctbal < partsupp.ps_supplycost)
      on (customer.c_acctbal > customer.c_acctbal)
    right join lineitem
      inner join customer
        right join supplier
        on (customer.c_address = supplier.s_address )
      on (customer.c_custkey = lineitem.l_orderkey)
    on (supplier.s_nationkey = nation.n_nationkey)
where customer.c_mktsegment is not NULL;
select  
  lineitem.l_partkey, 
  lineitem.l_quantity, 
  lineitem.l_discount, 
  lineitem.l_orderkey, 
  nation.n_nationkey, 
  lineitem.l_shipmode, 
  min(
    cast(lineitem.l_extendedprice as "numeric")), 
  partsupp.ps_suppkey, 
  nation.n_comment, 
  lineitem.l_comment, 
  lineitem.l_extendedprice, 
  partsupp.ps_comment, 
  lineitem.l_linenumber, 
  lineitem.l_shipdate
from 
  partsupp
        left join lineitem
        on (lineitem.l_shipdate >= lineitem.l_receiptdate)
      inner join nation
      on (lineitem.l_shipinstruct = lineitem.l_shipinstruct)
    inner join lineitem
        left join region
        on (lineitem.l_suppkey > lineitem.l_partkey)
      inner join lineitem
      on (lineitem.l_receiptdate >= lineitem.l_receiptdate)
    on (lineitem.l_extendedprice is not NULL)
where partsupp.ps_suppkey is not NULL
limit 62;
select  
  supplier.s_name, 
  supplier.s_address, 
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  count(*)
from 
  supplier
where supplier.s_nationkey is not NULL
limit 116;
select  
  customer.c_mktsegment, 
  customer.c_phone, 
  customer.c_comment, 
  customer.c_nationkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  customer.c_address, 
  max(
    cast(cast(null as oid) as oid))
from 
  customer
where customer.c_acctbal is NULL
limit 80;
select  
  sum(
    cast(part.p_retailprice as "numeric")), 
  lineitem.l_partkey, 
  max(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_comment, 
  part.p_type, 
  min(
    cast(cast(null as float4) as float4))
from 
  region
    inner join supplier
        inner join customer
        on (supplier.s_phone = supplier.s_name)
      inner join part
        left join partsupp
              right join part
                  right join partsupp
                  on (partsupp.ps_partkey <= partsupp.ps_suppkey)
                right join lineitem
                on (lineitem.l_suppkey < lineitem.l_linenumber)
              on (partsupp.ps_partkey = lineitem.l_orderkey )
            left join supplier
            on (lineitem.l_extendedprice < partsupp.ps_supplycost)
          left join lineitem
          on (part.p_size < partsupp.ps_partkey)
        on (lineitem.l_extendedprice < partsupp.ps_supplycost)
      on (lineitem.l_commitdate < lineitem.l_shipdate)
    on (lineitem.l_returnflag > part.p_container)
where lineitem.l_receiptdate is not NULL
limit 79;
select  
  min(
    cast(cast(null as oid) as oid)), 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  nation
where nation.n_nationkey is not NULL
limit 95;
select  
  orders.o_orderpriority, 
  orders.o_orderdate, 
  orders.o_totalprice
from 
  orders
where orders.o_totalprice < orders.o_totalprice
limit 167;
select  
  partsupp.ps_availqty, 
  orders.o_orderpriority, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  orders.o_orderdate
from 
  orders
    inner join partsupp
    on (orders.o_totalprice = partsupp.ps_supplycost )
where partsupp.ps_supplycost is not NULL;
select  
  supplier.s_name, 
  min(
    cast(cast(null as float4) as float4)), 
  nation.n_comment, 
  lineitem.l_quantity, 
  lineitem.l_tax, 
  lineitem.l_commitdate, 
  lineitem.l_shipinstruct, 
  customer.c_address, 
  lineitem.l_discount, 
  supplier.s_address
from 
  nation
        right join lineitem
        on (lineitem.l_shipinstruct > lineitem.l_shipinstruct)
      left join supplier
          inner join lineitem
          on (lineitem.l_quantity < lineitem.l_discount)
        inner join supplier
        on (lineitem.l_commitdate < lineitem.l_commitdate)
      on (nation.n_regionkey = supplier.s_suppkey )
    inner join customer
    on (lineitem.l_partkey = customer.c_custkey )
where lineitem.l_linestatus is NULL;
select  
  orders.o_orderstatus, 
  min(
    cast(orders.o_orderkey as int4)), 
  orders.o_orderpriority
from 
  orders
    left join orders
    on (orders.o_orderdate is NULL)
where orders.o_orderstatus >= orders.o_orderstatus
limit 181;
select  
  nation.n_name, 
  lineitem.l_shipinstruct, 
  supplier.s_suppkey
from 
  nation
    right join supplier
      right join lineitem
      on (supplier.s_acctbal < lineitem.l_extendedprice)
    on (nation.n_name is NULL)
where supplier.s_suppkey < supplier.s_suppkey;
select  
  supplier.s_name, 
  supplier.s_comment
from 
  supplier
where supplier.s_nationkey is NULL
limit 182;
select  
  nation.n_name, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name
from 
  nation
where nation.n_nationkey is not NULL
limit 57;
select distinct 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  partsupp.ps_availqty, 
  region.r_name
from 
  partsupp
        inner join region
        on (region.r_name < region.r_name)
      inner join partsupp
          inner join customer
              inner join part
              on (customer.c_acctbal <= customer.c_acctbal)
            inner join region
            on (customer.c_acctbal < customer.c_acctbal)
          on (part.p_partkey <= part.p_partkey)
        inner join region
          right join region
          on (region.r_regionkey <= region.r_regionkey)
        on (partsupp.ps_suppkey >= region.r_regionkey)
      on (region.r_regionkey <= region.r_regionkey)
    left join nation
    on (part.p_partkey is NULL)
where region.r_name is NULL
limit 165;
select  
  region.r_regionkey
from 
  region
where region.r_name is NULL;
select  
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_discount is NULL;
select  
  lineitem.l_comment, 
  lineitem.l_receiptdate, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  max(
    cast(cast(null as text) as text)), 
  lineitem.l_linestatus, 
  lineitem.l_receiptdate, 
  avg(
    cast(lineitem.l_partkey as int4)), 
  lineitem.l_extendedprice, 
  lineitem.l_shipinstruct, 
  lineitem.l_partkey, 
  max(
    cast(cast(null as tid) as tid)), 
  max(
    cast(lineitem.l_extendedprice as "numeric")), 
  lineitem.l_linenumber, 
  lineitem.l_discount, 
  lineitem.l_discount, 
  lineitem.l_discount, 
  lineitem.l_commitdate
from 
  lineitem
where lineitem.l_extendedprice <= lineitem.l_extendedprice;
select  
  part.p_mfgr, 
  max(
    cast(cast(null as xid8) as xid8)), 
  part.p_name, 
  part.p_comment, 
  part.p_name, 
  max(
    cast(cast(null as "time") as "time")), 
  part.p_partkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  part.p_container, 
  part.p_container
from 
  part
where part.p_brand = part.p_container
limit 96;
select  
  lineitem.l_shipdate, 
  sum(
    cast(cast(null as int8) as int8)), 
  region.r_name
from 
  supplier
      inner join region
        inner join partsupp
            left join lineitem
            on (lineitem.l_shipdate = lineitem.l_shipdate)
          right join orders
            inner join lineitem
            on (orders.o_orderpriority = lineitem.l_returnflag )
          on (lineitem.l_partkey <= orders.o_shippriority)
        on (lineitem.l_shipdate <= lineitem.l_shipdate)
      on (lineitem.l_quantity >= lineitem.l_tax)
    left join region
    on (orders.o_orderstatus = region.r_name )
where lineitem.l_suppkey is not NULL
limit 116;
select  
  supplier.s_suppkey, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_name, 
  max(
    cast(lineitem.l_quantity as "numeric")), 
  region.r_name, 
  max(
    cast(supplier.s_name as bpchar)), 
  lineitem.l_receiptdate, 
  region.r_comment
from 
  region
        inner join lineitem
        on (region.r_name = lineitem.l_returnflag )
      inner join supplier
        right join supplier
        on (supplier.s_nationkey > supplier.s_nationkey)
      on (supplier.s_name < supplier.s_phone)
    left join customer
      left join partsupp
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    on (partsupp.ps_supplycost is not NULL)
where supplier.s_acctbal is NULL
limit 140;
select  
  max(
    cast(cast(null as "time") as "time")), 
  customer.c_nationkey
from 
  customer
      inner join customer
      on (customer.c_acctbal > customer.c_acctbal)
    inner join customer
    on (customer.c_acctbal <= customer.c_acctbal)
where customer.c_custkey = customer.c_custkey;
select  
  region.r_name, 
  avg(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  part.p_brand
from 
  region
    inner join region
          right join part
          on (region.r_name = part.p_container)
        inner join supplier
        on (supplier.s_name >= part.p_brand)
      right join region
      on (part.p_container <= region.r_name)
    on (region.r_comment is NULL)
where part.p_partkey > supplier.s_suppkey
limit 152;
select  
  region.r_regionkey, 
  min(
    cast(cast(null as int2) as int2)), 
  sum(
    cast(cast(null as float8) as float8)), 
  customer.c_comment, 
  nation.n_nationkey, 
  nation.n_nationkey
from 
  nation
      inner join region
        inner join customer
        on (customer.c_acctbal = customer.c_acctbal)
      on (customer.c_acctbal >= customer.c_acctbal)
    right join customer
    on (customer.c_nationkey > customer.c_custkey)
where customer.c_phone is NULL;
select  
  max(
    cast(cast(null as float8) as float8)), 
  orders.o_orderkey, 
  orders.o_orderstatus
from 
  orders
    inner join partsupp
    on (partsupp.ps_comment is not NULL)
where partsupp.ps_partkey is NULL
limit 113;
select  
  orders.o_orderpriority, 
  max(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as text) as text))
from 
  orders
where orders.o_orderkey < orders.o_shippriority
limit 124;
select  
  supplier.s_suppkey, 
  supplier.s_phone, 
  sum(
    cast(cast(null as money) as money)), 
  supplier.s_acctbal, 
  part.p_container, 
  part.p_name
from 
  supplier
      inner join part
      on (part.p_container > part.p_mfgr)
    inner join supplier
    on (supplier.s_name is not NULL)
where supplier.s_nationkey is NULL
limit 81;
select  
  part.p_name, 
  min(
    cast(cast(null as tid) as tid))
from 
  customer
        inner join customer
        on (customer.c_nationkey < customer.c_nationkey)
      right join lineitem
      on (lineitem.l_shipmode > lineitem.l_linestatus)
    inner join part
        left join supplier
                inner join orders
                on (orders.o_totalprice > orders.o_totalprice)
              right join lineitem
              on (orders.o_orderdate = lineitem.l_shipdate )
            left join supplier
            on (lineitem.l_receiptdate = orders.o_orderdate)
          inner join region
          on (lineitem.l_shipdate = lineitem.l_receiptdate)
        on (lineitem.l_shipinstruct = orders.o_clerk)
      inner join part
        right join supplier
            inner join region
            on (supplier.s_nationkey > supplier.s_suppkey)
          inner join supplier
              left join part
              on (part.p_container < part.p_brand)
            left join customer
            on (supplier.s_name = customer.c_phone )
          on (region.r_comment = part.p_name )
        on (supplier.s_acctbal > supplier.s_acctbal)
      on (supplier.s_acctbal < supplier.s_acctbal)
    on (lineitem.l_orderkey is NULL)
where lineitem.l_commitdate >= lineitem.l_shipdate
limit 71;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_availqty, 
  customer.c_acctbal, 
  region.r_name, 
  region.r_name, 
  supplier.s_acctbal, 
  nation.n_comment
from 
  customer
              inner join partsupp
              on (partsupp.ps_supplycost > partsupp.ps_supplycost)
            inner join lineitem
            on (lineitem.l_shipdate >= lineitem.l_shipdate)
          inner join supplier
          on (partsupp.ps_supplycost = supplier.s_acctbal )
        inner join part
        on (customer.c_custkey < part.p_partkey)
      inner join nation
              left join partsupp
              on (partsupp.ps_suppkey < partsupp.ps_suppkey)
            inner join region
            on (partsupp.ps_supplycost > partsupp.ps_supplycost)
          left join nation
            right join lineitem
            on (lineitem.l_shipdate >= lineitem.l_shipdate)
          on (lineitem.l_shipdate >= lineitem.l_receiptdate)
        inner join region
        on (lineitem.l_shipinstruct = lineitem.l_shipmode)
      on (nation.n_regionkey <= partsupp.ps_partkey)
    inner join region
      left join part
      on (region.r_regionkey = part.p_partkey )
    on (customer.c_acctbal = lineitem.l_extendedprice)
where region.r_comment is NULL
limit 87;
select  
  lineitem.l_linenumber, 
  lineitem.l_linestatus, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  avg(
    cast(cast(null as int8) as int8)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  lineitem.l_extendedprice, 
  lineitem.l_commitdate, 
  lineitem.l_shipinstruct, 
  lineitem.l_shipinstruct, 
  lineitem.l_discount, 
  lineitem.l_linestatus, 
  lineitem.l_partkey, 
  lineitem.l_comment, 
  max(
    cast(cast(null as int8) as int8)), 
  lineitem.l_shipmode, 
  lineitem.l_commitdate
from 
  lineitem
where lineitem.l_shipdate is not NULL;
select  
  nation.n_comment
from 
  nation
where nation.n_regionkey > nation.n_regionkey
limit 58;
select  
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
where nation.n_comment is NULL;
select  
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_name
from 
  nation
where nation.n_name is not NULL;
select  
  supplier.s_name, 
  supplier.s_comment, 
  part.p_brand, 
  supplier.s_nationkey, 
  part.p_mfgr, 
  part.p_container, 
  part.p_partkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as date) as date))
from 
  supplier
    right join part
      left join supplier
          right join part
          on (supplier.s_address = part.p_name )
        left join supplier
        on (part.p_size > supplier.s_nationkey)
      on (supplier.s_suppkey <= supplier.s_suppkey)
    on (part.p_type is NULL)
where supplier.s_phone > part.p_brand
limit 105;
select  
  min(
    cast(cast(null as date) as date)), 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_availqty, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_availqty = partsupp.ps_partkey
limit 29;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  region.r_comment
from 
  region
    inner join lineitem
            inner join part
            on (lineitem.l_receiptdate > lineitem.l_receiptdate)
          inner join region
          on (lineitem.l_quantity < lineitem.l_tax)
        right join lineitem
        on (lineitem.l_discount >= lineitem.l_tax)
      right join lineitem
      on (lineitem.l_returnflag < lineitem.l_shipmode)
    on (region.r_comment is not NULL)
where lineitem.l_receiptdate > lineitem.l_shipdate
limit 90;
select  
  supplier.s_acctbal, 
  max(
    cast(cast(null as int8) as int8)), 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_address, 
  max(
    cast(cast(null as inet) as inet)), 
  supplier.s_nationkey, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_phone
from 
  supplier
where supplier.s_name is NULL
limit 147;
select  
  nation.n_name, 
  nation.n_comment, 
  nation.n_name, 
  max(
    cast(cast(null as timetz) as timetz)), 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_name, 
  max(
    cast(cast(null as int2) as int2)), 
  nation.n_name, 
  nation.n_name
from 
  nation
where nation.n_comment is NULL
limit 109;
select  
  customer.c_comment, 
  avg(
    cast(cast(null as float8) as float8))
from 
  partsupp
        right join part
          right join customer
          on (customer.c_nationkey > customer.c_custkey)
        on (customer.c_acctbal > part.p_retailprice)
      left join part
      on (customer.c_phone > part.p_container)
    inner join lineitem
    on (partsupp.ps_comment is not NULL)
where lineitem.l_tax is NULL;
select  
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_name is not NULL
limit 45;
select  
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_acctbal, 
  customer.c_acctbal
from 
  customer
    inner join supplier
    on (customer.c_mktsegment < supplier.s_name)
where supplier.s_nationkey is not NULL;
select  
  customer.c_nationkey, 
  customer.c_nationkey, 
  customer.c_nationkey
from 
  customer
where customer.c_nationkey is not NULL;
select  
  customer.c_mktsegment, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  lineitem
    inner join lineitem
        inner join customer
        on (lineitem.l_shipdate <= lineitem.l_shipdate)
      inner join customer
      on (lineitem.l_partkey = customer.c_custkey )
    on (lineitem.l_commitdate >= lineitem.l_commitdate)
where customer.c_acctbal is not NULL;
select  
  max(
    cast(cast(null as float4) as float4))
from 
  supplier
where supplier.s_address is not NULL
limit 47;
select  
  supplier.s_suppkey, 
  part.p_retailprice, 
  part.p_brand, 
  lineitem.l_discount, 
  lineitem.l_shipinstruct
from 
  lineitem
      left join orders
          inner join part
          on (part.p_brand <= orders.o_orderpriority)
        right join supplier
        on (orders.o_orderdate < orders.o_orderdate)
      on (supplier.s_acctbal >= supplier.s_acctbal)
    inner join region
    on (region.r_name is not NULL)
where lineitem.l_linestatus > part.p_container;
select  
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 110;
select  
  customer.c_acctbal, 
  customer.c_nationkey, 
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_name, 
  min(
    cast(cast(null as date) as date)), 
  customer.c_mktsegment, 
  min(
    cast(cast(null as int8) as int8)), 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_acctbal, 
  customer.c_nationkey, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  customer.c_phone, 
  customer.c_phone, 
  customer.c_phone
from 
  customer
where customer.c_custkey = customer.c_nationkey;
select  
  part.p_size, 
  part.p_type, 
  part.p_type
from 
  part
where part.p_container is not NULL
limit 117;
select  
  orders.o_orderkey, 
  min(
    cast(supplier.s_phone as bpchar)), 
  min(
    cast(cast(null as oid) as oid)), 
  orders.o_orderpriority, 
  lineitem.l_commitdate, 
  partsupp.ps_comment, 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  lineitem.l_shipmode, 
  supplier.s_suppkey
from 
  supplier
      right join orders
        inner join lineitem
        on (orders.o_orderpriority = lineitem.l_returnflag )
      on (lineitem.l_returnflag < lineitem.l_returnflag)
    inner join partsupp
    on (lineitem.l_partkey > supplier.s_suppkey)
where lineitem.l_returnflag is NULL;
select  
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is NULL
limit 99;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  region.r_name, 
  region.r_name, 
  part.p_brand, 
  min(
    cast(cast(null as oid) as oid)), 
  region.r_name
from 
  region
    inner join part
    on (region.r_name = part.p_mfgr )
where part.p_retailprice is NULL
limit 130;
select  
  orders.o_custkey, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  region.r_regionkey, 
  orders.o_orderdate, 
  orders.o_comment, 
  max(
    cast(orders.o_clerk as bpchar)), 
  orders.o_custkey, 
  orders.o_orderkey, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as tid) as tid))
from 
  orders
    right join orders
      inner join region
      on (orders.o_orderpriority = region.r_name )
    on (orders.o_shippriority < orders.o_custkey)
where region.r_name is NULL
limit 197;
select  
  part.p_comment, 
  part.p_size, 
  part.p_comment, 
  part.p_comment, 
  part.p_container, 
  part.p_type, 
  part.p_retailprice
from 
  part
where part.p_retailprice > part.p_retailprice
limit 94;
select  
  region.r_regionkey
from 
  region
    left join customer
    on (customer.c_name is not NULL)
where region.r_name is not NULL
limit 66;
select  
  nation.n_regionkey
from 
  nation
    left join orders
    on (nation.n_name is NULL)
where nation.n_nationkey is not NULL
limit 84;
select  
  orders.o_custkey, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  sum(
    cast(cast(null as int8) as int8)), 
  orders.o_orderpriority, 
  min(
    cast(orders.o_orderstatus as bpchar)), 
  orders.o_shippriority, 
  nation.n_comment, 
  orders.o_comment
from 
  nation
    inner join orders
    on (orders.o_clerk is NULL)
where orders.o_orderdate = orders.o_orderdate
limit 68;
select  
  region.r_regionkey
from 
  region
where region.r_name is not NULL;
select  
  lineitem.l_linestatus
from 
  supplier
      inner join partsupp
        inner join lineitem
          inner join nation
          on (lineitem.l_linenumber < lineitem.l_partkey)
        on (lineitem.l_shipinstruct >= lineitem.l_shipinstruct)
      on (lineitem.l_shipmode >= supplier.s_phone)
    left join nation
    on (nation.n_nationkey is not NULL)
where partsupp.ps_supplycost > supplier.s_acctbal
limit 81;
select  
  count(*), 
  customer.c_address, 
  customer.c_phone, 
  max(
    cast(cast(null as xid8) as xid8)), 
  customer.c_name, 
  customer.c_mktsegment, 
  customer.c_custkey, 
  customer.c_acctbal, 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_address
from 
  customer
where customer.c_custkey is not NULL;
select  
  lineitem.l_returnflag, 
  min(
    cast(lineitem.l_receiptdate as date)), 
  lineitem.l_suppkey, 
  lineitem.l_shipinstruct, 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_shipinstruct is NULL;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  nation.n_name, 
  part.p_size, 
  partsupp.ps_supplycost, 
  lineitem.l_partkey
from 
  lineitem
          left join orders
          on (lineitem.l_quantity < lineitem.l_tax)
        inner join region
        on (lineitem.l_tax < lineitem.l_tax)
      inner join part
        inner join lineitem
          left join supplier
          on (lineitem.l_linestatus = supplier.s_name)
        on (supplier.s_nationkey < supplier.s_suppkey)
      on (orders.o_totalprice = lineitem.l_quantity )
    inner join partsupp
      inner join part
        left join nation
        on (nation.n_name < part.p_container)
      on (part.p_size < part.p_size)
    on (lineitem.l_comment is NULL)
where lineitem.l_comment is not NULL
limit 154;
select  
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_phone, 
  max(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(cast(null as xid8) as xid8)), 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  supplier
where supplier.s_nationkey is not NULL
limit 69;
select  
  lineitem.l_tax, 
  lineitem.l_returnflag
from 
  lineitem
where lineitem.l_returnflag is not NULL
limit 23;
select  
  lineitem.l_comment, 
  max(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  lineitem
where lineitem.l_orderkey is not NULL;
select  
  orders.o_orderstatus, 
  orders.o_custkey
from 
  orders
where orders.o_custkey is not NULL;
select  
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as int8) as int8)), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  min(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 150;
select  
  partsupp.ps_partkey, 
  count(
    cast(part.p_partkey as int4)), 
  part.p_container, 
  partsupp.ps_comment, 
  orders.o_orderstatus, 
  partsupp.ps_suppkey
from 
  partsupp
    left join orders
      right join part
      on (part.p_retailprice < orders.o_totalprice)
    on (partsupp.ps_supplycost is NULL)
where part.p_container < part.p_container;
select  
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_comment, 
  max(
    cast(cast(null as money) as money)), 
  nation.n_name, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  min(
    cast(cast(null as "interval") as "interval")), 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_nationkey, 
  avg(
    cast(nation.n_regionkey as int4)), 
  nation.n_comment, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
where nation.n_nationkey is not NULL
limit 107;
select  
  orders.o_custkey
from 
  orders
where orders.o_clerk is NULL
limit 104;
select  
  max(
    cast(cast(null as inet) as inet)), 
  lineitem.l_shipdate, 
  region.r_name, 
  avg(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as timetz) as timetz)), 
  part.p_comment, 
  region.r_regionkey, 
  lineitem.l_orderkey, 
  max(
    cast(cast(null as text) as text)), 
  lineitem.l_comment, 
  part.p_type, 
  min(
    cast(cast(null as money) as money)), 
  region.r_regionkey, 
  part.p_mfgr, 
  part.p_brand, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  min(
    cast(cast(null as money) as money))
from 
  region
    inner join lineitem
      inner join part
      on (lineitem.l_orderkey = part.p_partkey )
    on (region.r_comment is NULL)
where part.p_name is not NULL
limit 124;
select  
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_regionkey is NULL
limit 93;
select  
  nation.n_name
from 
  part
          inner join customer
          on (part.p_type = customer.c_name )
        inner join part
          inner join supplier
          on (part.p_container = supplier.s_name )
        on (part.p_retailprice <= customer.c_acctbal)
      left join nation
      on (supplier.s_nationkey = nation.n_nationkey )
    inner join lineitem
            right join customer
            on (lineitem.l_returnflag = lineitem.l_shipinstruct)
          left join nation
            inner join nation
            on (nation.n_name <= nation.n_name)
          on (lineitem.l_linestatus < lineitem.l_returnflag)
        inner join nation
        on (customer.c_acctbal > lineitem.l_extendedprice)
      left join nation
            right join supplier
            on (nation.n_name <= supplier.s_phone)
          inner join partsupp
          on (supplier.s_address = partsupp.ps_comment )
        inner join orders
        on (supplier.s_comment = orders.o_comment )
      on (orders.o_orderstatus = orders.o_orderstatus)
    on (nation.n_regionkey = supplier.s_suppkey )
where nation.n_regionkey is NULL;
select  
  part.p_type, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  part.p_type
from 
  part
where part.p_size is NULL
limit 116;
select  
  supplier.s_nationkey, 
  supplier.s_suppkey, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_nationkey > supplier.s_nationkey;
select  
  part.p_brand
from 
  customer
    inner join lineitem
        inner join lineitem
            right join part
            on (lineitem.l_linestatus >= part.p_brand)
          left join partsupp
              left join nation
              on (partsupp.ps_suppkey = nation.n_nationkey )
            right join part
            on (nation.n_regionkey < nation.n_nationkey)
          on (lineitem.l_suppkey > nation.n_nationkey)
        on (lineitem.l_commitdate >= lineitem.l_receiptdate)
      inner join orders
      on (part.p_brand > part.p_brand)
    on (partsupp.ps_availqty is NULL)
where partsupp.ps_partkey is not NULL
limit 136;
select  
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_comment, 
  customer.c_mktsegment, 
  customer.c_acctbal, 
  customer.c_comment, 
  customer.c_custkey
from 
  customer
where customer.c_name is not NULL
limit 112;
select  
  orders.o_clerk, 
  min(
    cast(cast(null as "interval") as "interval")), 
  orders.o_clerk, 
  orders.o_clerk, 
  supplier.s_comment, 
  lineitem.l_receiptdate, 
  orders.o_clerk, 
  max(
    cast(cast(null as float8) as float8)), 
  min(
    cast(lineitem.l_shipinstruct as bpchar)), 
  max(
    cast(cast(null as float8) as float8)), 
  lineitem.l_orderkey, 
  lineitem.l_linenumber, 
  lineitem.l_suppkey, 
  orders.o_totalprice, 
  sum(
    cast(cast(null as float4) as float4)), 
  orders.o_totalprice
from 
  orders
      inner join supplier
        left join lineitem
        on (supplier.s_suppkey = lineitem.l_orderkey)
      on (orders.o_orderkey < supplier.s_suppkey)
    inner join partsupp
    on (supplier.s_nationkey is not NULL)
where lineitem.l_commitdate <= lineitem.l_receiptdate;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 127;
select  
  customer.c_name, 
  min(
    cast(orders.o_totalprice as "numeric")), 
  partsupp.ps_supplycost, 
  region.r_name, 
  customer.c_phone, 
  sum(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_comment, 
  min(
    cast(customer.c_custkey as int4)), 
  customer.c_name, 
  orders.o_totalprice, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  customer.c_phone, 
  customer.c_mktsegment
from 
  orders
          inner join partsupp
          on (orders.o_totalprice < orders.o_totalprice)
        inner join customer
        on (orders.o_totalprice <= partsupp.ps_supplycost)
      right join customer
          left join region
          on (customer.c_acctbal >= customer.c_acctbal)
        inner join partsupp
        on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
      on (customer.c_acctbal < orders.o_totalprice)
    right join partsupp
    on (partsupp.ps_supplycost is not NULL)
where region.r_comment is NULL;
select  
  orders.o_orderkey, 
  nation.n_comment
from 
  nation
    left join orders
    on (orders.o_totalprice <= orders.o_totalprice)
where nation.n_nationkey is NULL
limit 45;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_partkey is NULL;
select  
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_name, 
  customer.c_acctbal
from 
  customer
where customer.c_acctbal <= customer.c_acctbal;
select  
  avg(
    cast(partsupp.ps_supplycost as "numeric")), 
  max(
    cast(orders.o_clerk as bpchar)), 
  sum(
    cast(cast(null as float8) as float8))
from 
  partsupp
    right join supplier
      left join orders
      on (orders.o_orderkey > orders.o_orderkey)
    on (partsupp.ps_comment is NULL)
where partsupp.ps_comment is not NULL;
select  
  max(
    cast(cast(null as tid) as tid)), 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_comment is NULL;
select  
  sum(
    cast(cast(null as money) as money)), 
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_phone, 
  region.r_comment, 
  customer.c_phone, 
  region.r_name
from 
  customer
      inner join region
        inner join customer
        on (region.r_regionkey = customer.c_custkey )
      on (customer.c_nationkey = region.r_regionkey )
    inner join lineitem
    on (customer.c_address = lineitem.l_comment )
where region.r_name is not NULL
limit 67;
select  
  nation.n_comment, 
  max(
    cast(cast(null as text) as text)), 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_name, 
  sum(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as float4) as float4))
from 
  nation
where nation.n_name is NULL
limit 77;
select  
  lineitem.l_commitdate, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  lineitem
where lineitem.l_receiptdate is not NULL;
select  
  min(
    cast(cast(null as int2) as int2)), 
  region.r_regionkey, 
  lineitem.l_linestatus, 
  lineitem.l_tax, 
  nation.n_name
from 
  lineitem
          right join partsupp
          on (lineitem.l_suppkey < lineitem.l_partkey)
        inner join region
            right join region
                inner join part
                on (part.p_brand <= part.p_container)
              left join partsupp
              on (region.r_comment = partsupp.ps_comment )
            on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
          right join nation
          on (part.p_container >= region.r_name)
        on (partsupp.ps_partkey = part.p_partkey )
      inner join lineitem
        inner join lineitem
        on (lineitem.l_linenumber >= lineitem.l_suppkey)
      on (region.r_regionkey >= nation.n_regionkey)
    left join region
      right join lineitem
      on (region.r_regionkey = lineitem.l_orderkey )
    on (region.r_name is not NULL)
where lineitem.l_quantity < lineitem.l_tax;
select  
  orders.o_orderdate, 
  customer.c_nationkey
from 
  customer
      right join nation
      on (customer.c_comment = nation.n_comment )
    inner join orders
    on (customer.c_acctbal <= orders.o_totalprice)
where customer.c_acctbal >= orders.o_totalprice
limit 140;
select  
  customer.c_custkey, 
  customer.c_address, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_nationkey, 
  customer.c_acctbal, 
  customer.c_name, 
  customer.c_acctbal, 
  customer.c_acctbal, 
  min(
    cast(cast(null as int2) as int2)), 
  customer.c_custkey
from 
  customer
where customer.c_acctbal is NULL;
select  
  min(
    cast(cast(null as text) as text)), 
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_comment
from 
  supplier
where supplier.s_acctbal is NULL
limit 66;
select  
  partsupp.ps_partkey, 
  orders.o_custkey, 
  sum(
    cast(cast(null as int8) as int8))
from 
  nation
        inner join lineitem
        on (lineitem.l_quantity >= lineitem.l_quantity)
      inner join nation
          left join region
          on (nation.n_name < nation.n_name)
        inner join partsupp
          right join region
          on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
        on (region.r_name > nation.n_name)
      on (lineitem.l_shipinstruct = region.r_name )
    inner join nation
          inner join partsupp
            inner join region
            on (partsupp.ps_availqty <= region.r_regionkey)
          on (nation.n_regionkey = region.r_regionkey )
        inner join partsupp
        on (nation.n_name >= region.r_name)
      left join lineitem
              left join partsupp
              on (lineitem.l_returnflag <= lineitem.l_shipinstruct)
            inner join orders
            on (lineitem.l_returnflag >= orders.o_orderstatus)
          inner join nation
          on (nation.n_regionkey = partsupp.ps_availqty)
        inner join partsupp
        on (lineitem.l_shipmode <= lineitem.l_linestatus)
      on (lineitem.l_shipdate >= orders.o_orderdate)
    on (partsupp.ps_comment = partsupp.ps_comment )
where region.r_regionkey is NULL
limit 118;
select  
  region.r_name, 
  orders.o_totalprice
from 
  nation
      right join orders
        inner join customer
              left join partsupp
                right join orders
                on (orders.o_orderdate >= orders.o_orderdate)
              on (orders.o_orderdate = orders.o_orderdate)
            right join customer
            on (customer.c_mktsegment <= orders.o_orderstatus)
          right join part
            inner join region
            on (part.p_size = region.r_regionkey )
          on (customer.c_mktsegment < orders.o_orderstatus)
        on (orders.o_orderdate > orders.o_orderdate)
      on (part.p_retailprice <= customer.c_acctbal)
    left join part
    on (orders.o_shippriority = part.p_partkey )
where orders.o_comment is NULL
limit 147;
select  
  lineitem.l_suppkey, 
  part.p_name, 
  part.p_type, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  part
    left join lineitem
    on (lineitem.l_orderkey = lineitem.l_orderkey)
where part.p_container is not NULL;
select  
  partsupp.ps_partkey
from 
  partsupp
      inner join nation
      on (partsupp.ps_suppkey = nation.n_nationkey )
    inner join region
    on (nation.n_nationkey is not NULL)
where partsupp.ps_comment is not NULL;
select  
  customer.c_mktsegment, 
  count(*), 
  customer.c_name, 
  customer.c_custkey, 
  customer.c_comment, 
  customer.c_comment, 
  customer.c_address, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_name, 
  sum(
    cast(cast(null as int2) as int2)), 
  customer.c_phone, 
  min(
    cast(cast(null as money) as money)), 
  customer.c_name, 
  customer.c_address, 
  customer.c_nationkey
from 
  customer
where customer.c_acctbal is NULL
limit 104;
select  
  nation.n_name, 
  nation.n_name, 
  nation.n_name, 
  nation.n_name
from 
  nation
where nation.n_nationkey is not NULL
limit 39;
select  
  lineitem.l_linenumber, 
  lineitem.l_discount, 
  lineitem.l_quantity, 
  lineitem.l_tax, 
  lineitem.l_suppkey, 
  lineitem.l_linenumber, 
  lineitem.l_orderkey, 
  lineitem.l_shipmode, 
  max(
    cast(cast(null as float8) as float8)), 
  lineitem.l_shipinstruct, 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_shipdate is not NULL
limit 164;
select  
  orders.o_orderkey, 
  orders.o_shippriority
from 
  orders
    left join orders
    on (orders.o_custkey = orders.o_shippriority)
where orders.o_comment is NULL;
select  
  supplier.s_comment, 
  part.p_name, 
  part.p_size
from 
  supplier
        right join lineitem
        on (supplier.s_nationkey = lineitem.l_orderkey )
      inner join part
      on (part.p_brand = supplier.s_phone)
    right join part
        inner join part
        on (part.p_type = part.p_name )
      inner join customer
          left join nation
            left join supplier
            on (supplier.s_acctbal = supplier.s_acctbal)
          on (nation.n_regionkey <= nation.n_nationkey)
        inner join part
        on (nation.n_name = part.p_mfgr )
      on (part.p_brand = supplier.s_name )
    on (lineitem.l_linestatus = supplier.s_name )
where part.p_brand > part.p_brand;
select  
  lineitem.l_suppkey, 
  lineitem.l_receiptdate, 
  partsupp.ps_comment, 
  region.r_name, 
  max(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_extendedprice
from 
  lineitem
        inner join lineitem
          inner join part
          on (lineitem.l_shipmode = lineitem.l_shipmode)
        on (lineitem.l_shipdate <= lineitem.l_commitdate)
      inner join customer
        right join partsupp
          right join lineitem
          on (lineitem.l_commitdate = lineitem.l_receiptdate)
        on (customer.c_nationkey > lineitem.l_orderkey)
      on (lineitem.l_quantity < lineitem.l_quantity)
    right join region
    on (part.p_brand is NULL)
where customer.c_address is not NULL
limit 90;
select  
  orders.o_orderdate, 
  orders.o_orderkey
from 
  orders
where orders.o_clerk < orders.o_orderstatus;
select  
  lineitem.l_linenumber, 
  lineitem.l_returnflag, 
  lineitem.l_comment, 
  sum(
    cast(cast(null as float4) as float4)), 
  sum(
    cast(cast(null as money) as money)), 
  lineitem.l_shipdate, 
  lineitem.l_receiptdate, 
  sum(
    cast(lineitem.l_linenumber as int4)), 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_receiptdate is not NULL
limit 153;
select  
  supplier.s_comment, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_phone is not NULL
limit 82;
select  
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL
limit 48;
select  
  region.r_comment
from 
  nation
    left join nation
        right join lineitem
        on (lineitem.l_discount = lineitem.l_tax)
      inner join region
          inner join orders
            right join partsupp
            on (orders.o_shippriority < partsupp.ps_partkey)
          on (orders.o_orderdate <= orders.o_orderdate)
        inner join customer
            right join customer
              inner join part
                right join orders
                on (orders.o_orderdate >= orders.o_orderdate)
              on (customer.c_acctbal = orders.o_totalprice )
            on (customer.c_acctbal < part.p_retailprice)
          left join supplier
            inner join nation
            on (supplier.s_acctbal > supplier.s_acctbal)
          on (customer.c_acctbal < customer.c_acctbal)
        on (nation.n_name <= part.p_brand)
      on (lineitem.l_extendedprice > lineitem.l_tax)
    on (nation.n_regionkey >= nation.n_regionkey)
where orders.o_orderstatus is not NULL
limit 96;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_commitdate, 
  customer.c_phone
from 
  part
      inner join lineitem
      on (lineitem.l_shipinstruct < lineitem.l_returnflag)
    inner join customer
      inner join lineitem
          inner join region
          on (lineitem.l_shipdate = lineitem.l_receiptdate)
        left join lineitem
        on (lineitem.l_shipinstruct <= region.r_name)
      on (customer.c_phone = lineitem.l_returnflag )
    on (part.p_partkey > lineitem.l_linenumber)
where customer.c_nationkey is NULL;
select  
  customer.c_nationkey, 
  part.p_retailprice, 
  lineitem.l_comment
from 
  lineitem
      inner join part
      on (lineitem.l_returnflag = part.p_mfgr )
    right join part
        inner join customer
        on (customer.c_acctbal < customer.c_acctbal)
      right join lineitem
      on (lineitem.l_partkey = part.p_partkey)
    on (lineitem.l_linestatus is not NULL)
where part.p_comment is not NULL;
select  
  customer.c_phone
from 
  customer
where customer.c_name is NULL
limit 195;
select  
  min(
    cast(cast(null as text) as text)), 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  part
      right join supplier
      on (supplier.s_suppkey < supplier.s_suppkey)
    inner join orders
    on (orders.o_comment is not NULL)
where orders.o_shippriority is not NULL
limit 85;
select  
  min(
    cast(cast(null as text) as text)), 
  lineitem.l_quantity, 
  supplier.s_comment, 
  customer.c_nationkey, 
  partsupp.ps_partkey, 
  customer.c_name, 
  lineitem.l_shipinstruct, 
  customer.c_custkey, 
  min(
    cast(cast(null as oid) as oid)), 
  supplier.s_comment, 
  supplier.s_phone
from 
  supplier
    inner join lineitem
        right join customer
        on (lineitem.l_linestatus >= customer.c_mktsegment)
      inner join customer
        inner join partsupp
        on (partsupp.ps_supplycost = partsupp.ps_supplycost)
      on (lineitem.l_shipinstruct = customer.c_phone )
    on (supplier.s_nationkey < partsupp.ps_availqty)
where lineitem.l_receiptdate > lineitem.l_receiptdate
limit 176;
select  
  customer.c_mktsegment, 
  customer.c_comment, 
  customer.c_phone
from 
  customer
where customer.c_mktsegment is NULL
limit 114;
select  
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_comment, 
  min(
    cast(cast(null as tid) as tid)), 
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_name, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_comment
from 
  supplier
where supplier.s_phone >= supplier.s_phone
limit 125;
select  
  part.p_type
from 
  part
      right join region
        left join orders
          inner join supplier
          on (supplier.s_acctbal <= supplier.s_acctbal)
        on (orders.o_orderkey <= supplier.s_suppkey)
      on (orders.o_clerk > orders.o_orderpriority)
    inner join nation
      inner join nation
      on (nation.n_nationkey < nation.n_regionkey)
    on (nation.n_regionkey is NULL)
where nation.n_name is NULL
limit 87;
select  
  supplier.s_comment, 
  nation.n_nationkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  nation.n_name, 
  nation.n_name, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  supplier
    inner join nation
    on (supplier.s_suppkey is not NULL)
where supplier.s_acctbal = supplier.s_acctbal
limit 115;
select  
  region.r_name
from 
  region
where region.r_comment is not NULL;
select  
  supplier.s_suppkey, 
  supplier.s_suppkey, 
  part.p_partkey, 
  supplier.s_nationkey, 
  supplier.s_address
from 
  orders
    left join orders
      right join part
              inner join part
              on (part.p_mfgr >= part.p_container)
            right join supplier
            on (part.p_retailprice < part.p_retailprice)
          left join partsupp
          on (partsupp.ps_supplycost = part.p_retailprice)
        inner join supplier
        on (partsupp.ps_suppkey <= supplier.s_suppkey)
      on (part.p_retailprice > part.p_retailprice)
    on (partsupp.ps_comment is NULL)
where part.p_partkey is not NULL
limit 156;
select  
  partsupp.ps_supplycost, 
  region.r_name, 
  partsupp.ps_supplycost
from 
  lineitem
        right join partsupp
        on (lineitem.l_extendedprice = partsupp.ps_supplycost )
      left join partsupp
      on (lineitem.l_returnflag >= lineitem.l_returnflag)
    left join region
    on (partsupp.ps_partkey is NULL)
where lineitem.l_discount is NULL
limit 49;
select  
  region.r_regionkey, 
  partsupp.ps_availqty, 
  region.r_regionkey, 
  partsupp.ps_suppkey, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  region.r_comment, 
  partsupp.ps_partkey, 
  region.r_regionkey, 
  region.r_name, 
  partsupp.ps_comment, 
  region.r_comment, 
  partsupp.ps_supplycost
from 
  partsupp
    inner join region
    on (partsupp.ps_availqty is not NULL)
where partsupp.ps_supplycost is not NULL
limit 166;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  lineitem.l_tax, 
  lineitem.l_linenumber, 
  lineitem.l_commitdate, 
  lineitem.l_shipdate, 
  avg(
    cast(cast(null as int8) as int8)), 
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  partsupp.ps_comment, 
  partsupp.ps_supplycost
from 
  lineitem
    left join partsupp
    on (partsupp.ps_supplycost is not NULL)
where partsupp.ps_availqty is not NULL
limit 34;
select  
  customer.c_address, 
  orders.o_orderdate, 
  customer.c_name, 
  customer.c_mktsegment
from 
  customer
            inner join customer
            on (customer.c_nationkey = customer.c_custkey )
          right join customer
          on (customer.c_nationkey >= customer.c_custkey)
        right join orders
        on (customer.c_nationkey > customer.c_nationkey)
      right join lineitem
      on (orders.o_totalprice = orders.o_totalprice)
    right join partsupp
    on (customer.c_mktsegment is not NULL)
where customer.c_name is NULL
limit 114;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_suppkey is not NULL;
select  
  nation.n_name, 
  customer.c_acctbal, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_nationkey
from 
  customer
      inner join lineitem
        right join lineitem
        on (lineitem.l_shipdate = lineitem.l_shipdate )
      on (lineitem.l_suppkey > customer.c_nationkey)
    inner join nation
    on (lineitem.l_orderkey < nation.n_nationkey)
where nation.n_regionkey = nation.n_regionkey;
select  
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_phone is NULL
limit 14;
select  
  sum(
    cast(part.p_retailprice as "numeric")), 
  part.p_container, 
  part.p_mfgr, 
  part.p_size, 
  part.p_name, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  part.p_brand, 
  part.p_name, 
  part.p_mfgr, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  part.p_size, 
  part.p_comment, 
  part.p_container
from 
  part
where part.p_retailprice is not NULL
limit 36;
select  
  part.p_brand, 
  part.p_name, 
  part.p_name, 
  part.p_comment, 
  part.p_retailprice, 
  part.p_brand
from 
  part
where part.p_size < part.p_size
limit 82;
select  
  nation.n_name, 
  nation.n_comment, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_regionkey, 
  max(
    cast(cast(null as float4) as float4)), 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  nation.n_name, 
  nation.n_name, 
  nation.n_regionkey
from 
  nation
where nation.n_comment is NULL
limit 75;
select  
  supplier.s_name, 
  supplier.s_nationkey, 
  orders.o_orderkey, 
  orders.o_clerk, 
  customer.c_custkey, 
  customer.c_name, 
  region.r_regionkey, 
  supplier.s_acctbal, 
  min(
    cast(orders.o_orderkey as int4))
from 
  region
      inner join customer
      on (customer.c_custkey = region.r_regionkey)
    right join supplier
      inner join orders
      on (orders.o_orderdate < orders.o_orderdate)
    on (orders.o_clerk = orders.o_clerk)
where customer.c_name is not NULL
limit 73;
select  
  orders.o_orderpriority, 
  supplier.s_acctbal, 
  part.p_type, 
  lineitem.l_comment, 
  lineitem.l_returnflag, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  lineitem.l_tax, 
  supplier.s_name, 
  supplier.s_comment, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  avg(
    cast(cast(null as int2) as int2)), 
  part.p_retailprice, 
  lineitem.l_shipdate
from 
  supplier
      left join lineitem
      on (supplier.s_phone = lineitem.l_returnflag )
    left join orders
      inner join supplier
        inner join nation
          inner join part
          on (part.p_retailprice > part.p_retailprice)
        on (part.p_retailprice = part.p_retailprice)
      on (orders.o_comment = supplier.s_address )
    on (supplier.s_name = part.p_mfgr )
where supplier.s_name is not NULL;
select  
  orders.o_orderstatus, 
  orders.o_orderpriority
from 
  region
    inner join orders
    on (orders.o_orderkey is NULL)
where region.r_name is not NULL
limit 126;
select distinct 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_name, 
  region.r_comment, 
  max(
    cast(cast(null as money) as money)), 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_name is NULL;
select  
  supplier.s_acctbal, 
  supplier.s_comment, 
  supplier.s_phone, 
  max(
    cast(cast(null as text) as text)), 
  supplier.s_nationkey, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_suppkey = supplier.s_nationkey
limit 45;
select  
  lineitem.l_tax, 
  avg(
    cast(cast(null as int8) as int8)), 
  max(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as tid) as tid)), 
  lineitem.l_orderkey, 
  max(
    cast(cast(null as text) as text)), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  lineitem.l_linestatus, 
  lineitem.l_commitdate, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  lineitem.l_suppkey, 
  lineitem.l_returnflag, 
  lineitem.l_returnflag, 
  lineitem.l_suppkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_returnflag is NULL;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_name, 
  supplier.s_name, 
  max(
    cast(cast(null as float8) as float8)), 
  nation.n_name, 
  nation.n_name
from 
  region
          left join customer
          on (customer.c_phone > customer.c_phone)
        inner join region
        on (region.r_name = region.r_name)
      right join nation
      on (region.r_comment = nation.n_comment )
    right join supplier
    on (region.r_name is not NULL)
where nation.n_regionkey is not NULL
limit 39;
select  
  nation.n_name
from 
  nation
where nation.n_regionkey is NULL;
select  
  region.r_comment, 
  avg(
    cast(cast(null as int8) as int8)), 
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_name is NULL
limit 77;
select  
  region.r_regionkey, 
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  avg(
    cast(cast(null as float8) as float8))
from 
  region
where region.r_name is NULL
limit 104;
select  
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL;
select  
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  max(
    cast(supplier.s_nationkey as int4)), 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  supplier.s_nationkey, 
  supplier.s_phone
from 
  supplier
where supplier.s_phone is NULL;
select  
  region.r_name, 
  region.r_comment, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  region
where region.r_name is not NULL
limit 74;
select  
  orders.o_shippriority, 
  partsupp.ps_availqty, 
  orders.o_shippriority, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  region.r_comment, 
  min(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_availqty
from 
  region
    left join partsupp
        inner join partsupp
        on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
      right join orders
      on (partsupp.ps_comment = orders.o_comment )
    on (orders.o_orderpriority is not NULL)
where orders.o_totalprice < partsupp.ps_supplycost
limit 150;
select  
  orders.o_orderpriority
from 
  orders
    inner join customer
            right join partsupp
              inner join region
              on (region.r_name > region.r_name)
            on (region.r_name > region.r_name)
          inner join part
            left join lineitem
            on (lineitem.l_shipdate >= lineitem.l_shipdate)
          on (lineitem.l_commitdate >= lineitem.l_shipdate)
        inner join customer
            right join region
            on (customer.c_nationkey = customer.c_custkey)
          inner join supplier
          on (supplier.s_acctbal > customer.c_acctbal)
        on (region.r_name >= region.r_name)
      inner join part
            right join lineitem
            on (lineitem.l_linenumber >= part.p_partkey)
          inner join partsupp
                inner join region
                on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
              right join orders
              on (orders.o_orderdate = orders.o_orderdate)
            inner join part
            on (partsupp.ps_partkey = part.p_partkey )
          on (part.p_mfgr >= lineitem.l_linestatus)
        inner join orders
        on (orders.o_orderstatus <= lineitem.l_linestatus)
      on (orders.o_orderpriority < lineitem.l_returnflag)
    on (orders.o_comment = partsupp.ps_comment )
where region.r_regionkey <= region.r_regionkey
limit 116;
select  
  region.r_name, 
  region.r_comment, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  min(
    cast(cast(null as date) as date)), 
  max(
    cast(cast(null as "time") as "time")), 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL
limit 88;
select  
  orders.o_clerk, 
  orders.o_comment
from 
  orders
where orders.o_orderstatus <= orders.o_clerk
limit 44;
select  
  orders.o_comment, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  orders
          inner join orders
          on (orders.o_orderstatus > orders.o_orderstatus)
        inner join nation
          right join orders
          on (orders.o_totalprice <= orders.o_totalprice)
        on (orders.o_orderdate < orders.o_orderdate)
      inner join lineitem
      on (orders.o_orderkey <= orders.o_custkey)
    right join region
      left join orders
      on (orders.o_orderdate < orders.o_orderdate)
    on (orders.o_comment is NULL)
where lineitem.l_linestatus is NULL
limit 96;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  max(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_supplycost, 
  avg(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as int2) as int2)), 
  min(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_supplycost
from 
  partsupp
    inner join partsupp
    on (partsupp.ps_partkey is NULL)
where partsupp.ps_supplycost < partsupp.ps_supplycost;
select  
  nation.n_name, 
  nation.n_name, 
  nation.n_name
from 
  nation
where nation.n_nationkey is not NULL
limit 9;
select  
  nation.n_regionkey, 
  lineitem.l_orderkey, 
  lineitem.l_comment, 
  lineitem.l_orderkey
from 
  orders
      inner join lineitem
      on (lineitem.l_receiptdate > lineitem.l_receiptdate)
    inner join nation
    on (orders.o_clerk = nation.n_name )
where orders.o_shippriority is NULL;
select  
  region.r_regionkey, 
  region.r_name, 
  region.r_comment, 
  region.r_name
from 
  region
where region.r_comment is NULL
limit 106;
select  
  min(
    cast(cast(null as "time") as "time")), 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is NULL;
select  
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_phone, 
  min(
    cast(cast(null as date) as date)), 
  supplier.s_address
from 
  supplier
where supplier.s_name is NULL
limit 66;
select  
  orders.o_orderstatus, 
  orders.o_totalprice, 
  min(
    cast(cast(null as int8) as int8)), 
  count(*)
from 
  orders
      left join orders
      on (orders.o_orderdate < orders.o_orderdate)
    inner join nation
    on (orders.o_totalprice > orders.o_totalprice)
where orders.o_totalprice <= orders.o_totalprice;
select  
  customer.c_address, 
  region.r_comment, 
  max(
    cast(orders.o_orderdate as date)), 
  customer.c_comment, 
  orders.o_orderdate, 
  partsupp.ps_supplycost
from 
  orders
    inner join nation
      right join customer
        right join partsupp
          left join region
          on (partsupp.ps_availqty < partsupp.ps_availqty)
        on (partsupp.ps_supplycost > partsupp.ps_supplycost)
      on (customer.c_mktsegment < customer.c_phone)
    on (orders.o_comment = partsupp.ps_comment )
where region.r_name is NULL
limit 81;
select  
  part.p_partkey, 
  orders.o_custkey
from 
  lineitem
          inner join part
          on (lineitem.l_quantity <= lineitem.l_extendedprice)
        inner join nation
        on (lineitem.l_discount >= lineitem.l_quantity)
      inner join region
            right join region
            on (region.r_name = region.r_name )
          right join orders
            left join orders
            on (orders.o_totalprice = orders.o_totalprice )
          on (orders.o_totalprice > orders.o_totalprice)
        inner join supplier
            inner join customer
            on (supplier.s_suppkey >= supplier.s_nationkey)
          left join orders
          on (customer.c_mktsegment = customer.c_phone)
        on (orders.o_orderstatus < orders.o_clerk)
      on (nation.n_nationkey <= part.p_size)
    inner join part
        left join orders
        on (orders.o_orderstatus <= part.p_container)
      right join part
        inner join partsupp
            inner join supplier
            on (partsupp.ps_supplycost <= supplier.s_acctbal)
          right join customer
          on (supplier.s_suppkey < partsupp.ps_suppkey)
        on (part.p_retailprice = supplier.s_acctbal )
      on (part.p_retailprice < customer.c_acctbal)
    on (customer.c_nationkey is NULL)
where orders.o_totalprice = orders.o_totalprice
limit 76;
select  
  partsupp.ps_partkey
from 
  customer
    left join nation
        right join supplier
          inner join partsupp
          on (supplier.s_acctbal = partsupp.ps_supplycost )
        on (partsupp.ps_partkey > nation.n_regionkey)
      inner join region
          inner join partsupp
            inner join lineitem
            on (lineitem.l_quantity <= lineitem.l_quantity)
          on (region.r_regionkey = partsupp.ps_partkey )
        left join orders
        on (lineitem.l_shipdate >= lineitem.l_commitdate)
      on (lineitem.l_tax < partsupp.ps_supplycost)
    on (orders.o_totalprice < lineitem.l_tax)
where partsupp.ps_partkey < region.r_regionkey;
select  
  part.p_retailprice
from 
  part
where part.p_mfgr = part.p_container
limit 131;
select  
  nation.n_nationkey, 
  nation.n_regionkey, 
  lineitem.l_linestatus, 
  nation.n_comment, 
  customer.c_phone
from 
  customer
        inner join nation
        on (customer.c_acctbal >= customer.c_acctbal)
      inner join lineitem
      on (customer.c_custkey = lineitem.l_orderkey)
    right join lineitem
    on (lineitem.l_quantity is NULL)
where lineitem.l_receiptdate = lineitem.l_shipdate
limit 124;
select  
  customer.c_comment, 
  min(
    cast(lineitem.l_returnflag as bpchar)), 
  region.r_regionkey, 
  customer.c_name, 
  region.r_regionkey, 
  customer.c_nationkey, 
  region.r_comment, 
  partsupp.ps_partkey, 
  region.r_name, 
  lineitem.l_linestatus, 
  region.r_name, 
  customer.c_address, 
  partsupp.ps_availqty, 
  region.r_regionkey, 
  customer.c_name, 
  customer.c_mktsegment, 
  sum(
    cast(region.r_regionkey as int4)), 
  partsupp.ps_partkey, 
  min(
    cast(lineitem.l_commitdate as date))
from 
  customer
      inner join region
      on (customer.c_acctbal > customer.c_acctbal)
    right join region
      left join partsupp
        right join lineitem
        on (lineitem.l_receiptdate < lineitem.l_commitdate)
      on (lineitem.l_partkey < partsupp.ps_partkey)
    on (region.r_comment is not NULL)
where partsupp.ps_supplycost is NULL;
select  
  customer.c_phone, 
  region.r_comment, 
  supplier.s_address, 
  part.p_size, 
  region.r_comment
from 
  region
        left join supplier
              inner join supplier
              on (supplier.s_acctbal < supplier.s_acctbal)
            inner join customer
            on (customer.c_acctbal >= supplier.s_acctbal)
          inner join part
            right join nation
            on (part.p_retailprice <= part.p_retailprice)
          on (supplier.s_phone >= supplier.s_phone)
        on (nation.n_regionkey >= part.p_size)
      inner join part
      on (supplier.s_acctbal = part.p_retailprice)
    inner join region
      right join orders
      on (region.r_name < region.r_name)
    on (nation.n_comment = region.r_comment )
where part.p_mfgr is not NULL
limit 99;
select  
  supplier.s_name, 
  avg(
    cast(cast(null as float8) as float8)), 
  nation.n_comment, 
  lineitem.l_comment, 
  customer.c_custkey
from 
  supplier
    inner join nation
          inner join part
          on (nation.n_nationkey <= nation.n_nationkey)
        inner join customer
        on (part.p_retailprice = customer.c_acctbal)
      inner join lineitem
      on (lineitem.l_shipdate > lineitem.l_receiptdate)
    on (part.p_brand <= lineitem.l_returnflag)
where supplier.s_nationkey >= nation.n_regionkey
limit 117;
select  
  min(
    cast(cast(null as float8) as float8))
from 
  partsupp
where partsupp.ps_availqty is NULL;
select  
  region.r_comment, 
  region.r_name
from 
  region
where region.r_regionkey is NULL;
select  
  customer.c_address, 
  customer.c_comment, 
  min(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(customer.c_mktsegment as bpchar))
from 
  customer
where customer.c_nationkey is not NULL
limit 119;
select  
  part.p_comment, 
  avg(
    cast(part.p_retailprice as "numeric"))
from 
  part
where part.p_container < part.p_container
limit 90;
select  
  orders.o_orderdate
from 
  orders
    inner join region
      inner join lineitem
      on (lineitem.l_quantity <= lineitem.l_discount)
    on (orders.o_comment is not NULL)
where region.r_regionkey is NULL;
select  
  customer.c_nationkey, 
  customer.c_nationkey
from 
  customer
where customer.c_name is not NULL;
select  
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  min(
    cast(cast(null as int2) as int2)), 
  supplier.s_name, 
  supplier.s_name
from 
  supplier
where supplier.s_phone is NULL
limit 106;
select  
  region.r_regionkey
from 
  region
where region.r_regionkey is NULL
limit 94;
select  
  part.p_type
from 
  part
where part.p_brand < part.p_brand;
select  
  partsupp.ps_comment, 
  avg(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  sum(
    cast(cast(null as float8) as float8)), 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  sum(
    cast(cast(null as int8) as int8)), 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  partsupp
where partsupp.ps_supplycost is NULL
limit 67;
select  
  min(
    cast(cast(null as int2) as int2))
from 
  supplier
where supplier.s_suppkey < supplier.s_nationkey
limit 102;
select  
  lineitem.l_tax
from 
  orders
      inner join customer
      on (orders.o_custkey < orders.o_shippriority)
    right join lineitem
      left join partsupp
        inner join nation
          right join lineitem
            left join part
              right join customer
              on (customer.c_nationkey = part.p_partkey)
            on (part.p_brand < part.p_mfgr)
          on (lineitem.l_discount < lineitem.l_discount)
        on (partsupp.ps_partkey = lineitem.l_orderkey )
      on (lineitem.l_discount > part.p_retailprice)
    on (orders.o_shippriority = partsupp.ps_partkey )
where lineitem.l_commitdate < lineitem.l_receiptdate
limit 52;
select  
  nation.n_name, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_comment
from 
  nation
where nation.n_regionkey is NULL;
select  
  supplier.s_acctbal
from 
  customer
      inner join partsupp
        left join region
          right join supplier
          on (region.r_regionkey = region.r_regionkey)
        on (partsupp.ps_supplycost > partsupp.ps_supplycost)
      on (supplier.s_name < customer.c_phone)
    inner join lineitem
    on (lineitem.l_commitdate is not NULL)
where customer.c_phone >= lineitem.l_linestatus
limit 85;
select  
  part.p_mfgr, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  part.p_comment, 
  part.p_brand
from 
  part
where part.p_type is NULL;
select  
  supplier.s_nationkey, 
  part.p_container
from 
  supplier
        inner join lineitem
          inner join lineitem
            right join region
            on (region.r_name <= lineitem.l_shipmode)
          on (lineitem.l_partkey = lineitem.l_linenumber)
        on (lineitem.l_linenumber > lineitem.l_partkey)
      left join part
      on (lineitem.l_shipmode = part.p_mfgr )
    inner join nation
          inner join lineitem
          on (lineitem.l_tax >= lineitem.l_discount)
        right join partsupp
        on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
      inner join lineitem
        inner join region
        on (lineitem.l_shipmode = region.r_name )
      on (lineitem.l_shipinstruct < lineitem.l_returnflag)
    on (lineitem.l_tax < lineitem.l_extendedprice)
where supplier.s_comment is not NULL;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as text) as text)), 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 91;
select  
  orders.o_clerk, 
  orders.o_clerk, 
  orders.o_orderkey, 
  max(
    cast(cast(null as money) as money)), 
  min(
    cast(orders.o_orderstatus as bpchar)), 
  orders.o_orderdate, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  orders
where orders.o_orderstatus is not NULL
limit 94;
select  
  customer.c_comment, 
  customer.c_phone, 
  customer.c_custkey, 
  supplier.s_name, 
  customer.c_phone, 
  supplier.s_nationkey, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_comment, 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  supplier
    right join customer
    on (supplier.s_address is NULL)
where customer.c_acctbal is NULL;
select  
  customer.c_mktsegment, 
  customer.c_name
from 
  lineitem
    right join customer
    on (lineitem.l_commitdate <= lineitem.l_receiptdate)
where customer.c_custkey is not NULL
limit 70;
select  
  region.r_name
from 
  partsupp
        left join region
          inner join region
          on (region.r_regionkey = region.r_regionkey )
        on (partsupp.ps_suppkey = region.r_regionkey )
      right join nation
            inner join supplier
            on (supplier.s_acctbal <= supplier.s_acctbal)
          inner join region
          on (supplier.s_acctbal > supplier.s_acctbal)
        inner join part
              left join nation
              on (part.p_mfgr > part.p_container)
            right join region
            on (nation.n_nationkey = region.r_regionkey )
          left join nation
            left join partsupp
            on (nation.n_regionkey = nation.n_regionkey)
          on (part.p_mfgr <= part.p_brand)
        on (nation.n_regionkey = nation.n_nationkey)
      on (partsupp.ps_partkey = region.r_regionkey)
    left join region
      right join customer
        inner join region
        on (customer.c_custkey <= customer.c_custkey)
      on (customer.c_acctbal = customer.c_acctbal)
    on (nation.n_nationkey is not NULL)
where part.p_partkey > nation.n_nationkey
limit 152;
select  
  customer.c_mktsegment, 
  customer.c_custkey, 
  customer.c_phone
from 
  customer
    inner join customer
    on (customer.c_name is NULL)
where customer.c_phone is not NULL;
select  
  nation.n_name
from 
  nation
where nation.n_nationkey is NULL
limit 134;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  lineitem.l_linestatus
from 
  supplier
    left join customer
      right join customer
          inner join lineitem
          on (lineitem.l_discount > customer.c_acctbal)
        inner join partsupp
          inner join nation
            inner join customer
            on (customer.c_mktsegment <= nation.n_name)
          on (customer.c_acctbal <= customer.c_acctbal)
        on (customer.c_acctbal <= lineitem.l_quantity)
      on (customer.c_nationkey > customer.c_custkey)
    on (lineitem.l_shipdate <= lineitem.l_receiptdate)
where partsupp.ps_supplycost <= lineitem.l_discount;
select  
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  part.p_mfgr, 
  customer.c_mktsegment, 
  part.p_brand
from 
  customer
      inner join supplier
        left join part
          inner join part
          on (part.p_size > part.p_partkey)
        on (part.p_retailprice <= supplier.s_acctbal)
      on (customer.c_custkey = part.p_partkey )
    left join lineitem
    on (supplier.s_comment is NULL)
where lineitem.l_commitdate <= lineitem.l_shipdate
limit 68;
select  
  region.r_comment
from 
  region
where region.r_name is not NULL
limit 115;
select  
  nation.n_nationkey
from 
  nation
where nation.n_nationkey is NULL
limit 37;
select  
  supplier.s_address, 
  region.r_comment, 
  lineitem.l_receiptdate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  region.r_regionkey, 
  lineitem.l_commitdate
from 
  orders
        inner join customer
            inner join partsupp
            on (customer.c_comment = partsupp.ps_comment )
          inner join supplier
          on (supplier.s_phone < customer.c_mktsegment)
        on (customer.c_acctbal <= orders.o_totalprice)
      inner join lineitem
      on (lineitem.l_receiptdate <= lineitem.l_shipdate)
    inner join region
    on (customer.c_name = region.r_comment )
where customer.c_nationkey is NULL;
select  
  orders.o_orderkey, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  orders.o_custkey
from 
  partsupp
    inner join orders
    on (partsupp.ps_comment is NULL)
where orders.o_clerk >= orders.o_orderpriority
limit 126;
select  
  supplier.s_address
from 
  supplier
    inner join nation
    on (supplier.s_phone = nation.n_name )
where supplier.s_suppkey is NULL
limit 138;
select  
  max(
    cast(cast(null as int8) as int8)), 
  region.r_comment, 
  region.r_comment, 
  nation.n_name, 
  min(
    cast(cast(null as inet) as inet)), 
  region.r_regionkey, 
  nation.n_regionkey, 
  nation.n_name
from 
  nation
    inner join region
    on (nation.n_name is not NULL)
where nation.n_regionkey is not NULL
limit 132;
select  
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_phone, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_suppkey, 
  supplier.s_address, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_phone is not NULL;
select  
  region.r_name
from 
  region
where region.r_name is NULL;
select  
  lineitem.l_returnflag, 
  lineitem.l_linenumber
from 
  partsupp
    inner join supplier
      left join lineitem
      on (supplier.s_nationkey = supplier.s_nationkey)
    on (lineitem.l_returnflag is NULL)
where lineitem.l_quantity is NULL
limit 135;
select  
  lineitem.l_linestatus
from 
  lineitem
where lineitem.l_shipinstruct is NULL;
select  
  part.p_type, 
  max(
    cast(cast(null as tid) as tid)), 
  part.p_container
from 
  customer
        inner join customer
        on (customer.c_acctbal < customer.c_acctbal)
      right join part
        left join supplier
        on (part.p_container = supplier.s_name )
      on (supplier.s_suppkey > supplier.s_nationkey)
    inner join customer
      left join partsupp
      on (customer.c_acctbal < customer.c_acctbal)
    on (supplier.s_address is not NULL)
where customer.c_acctbal is NULL
limit 106;
select  
  nation.n_comment, 
  part.p_type, 
  part.p_comment, 
  part.p_mfgr, 
  sum(
    cast(cast(null as float8) as float8)), 
  part.p_retailprice, 
  part.p_name
from 
  part
    inner join nation
    on (nation.n_comment is NULL)
where part.p_mfgr = part.p_mfgr
limit 18;
select  
  region.r_name
from 
  region
where region.r_name > region.r_name
limit 120;
select  
  max(
    cast(cast(null as oid) as oid)), 
  part.p_name, 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(part.p_mfgr as bpchar))
from 
  part
where part.p_partkey is not NULL
limit 77;
select  
  supplier.s_phone, 
  supplier.s_comment
from 
  supplier
where supplier.s_comment is NULL
limit 92;
select  
  part.p_retailprice, 
  partsupp.ps_partkey
from 
  orders
      inner join customer
        inner join partsupp
            inner join part
            on (part.p_mfgr > part.p_container)
          right join lineitem
          on (part.p_container < lineitem.l_linestatus)
        on (customer.c_custkey = lineitem.l_orderkey )
      on (part.p_size >= lineitem.l_suppkey)
    inner join region
    on (customer.c_name is NULL)
where part.p_retailprice > part.p_retailprice
limit 84;
select  
  part.p_container, 
  orders.o_orderpriority, 
  supplier.s_acctbal, 
  supplier.s_phone
from 
  part
      right join supplier
      on (supplier.s_phone < part.p_container)
    inner join orders
    on (supplier.s_acctbal >= supplier.s_acctbal)
where part.p_brand = part.p_container;
select  
  orders.o_totalprice, 
  lineitem.l_discount, 
  lineitem.l_quantity, 
  lineitem.l_shipinstruct, 
  orders.o_comment, 
  nation.n_name, 
  supplier.s_nationkey, 
  nation.n_nationkey, 
  supplier.s_comment
from 
  nation
    inner join orders
        left join lineitem
        on (lineitem.l_commitdate < orders.o_orderdate)
      left join supplier
      on (lineitem.l_extendedprice < supplier.s_acctbal)
    on (lineitem.l_shipdate <= lineitem.l_commitdate)
where lineitem.l_discount > orders.o_totalprice
limit 165;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  orders.o_totalprice, 
  orders.o_clerk, 
  orders.o_clerk, 
  orders.o_clerk, 
  max(
    cast(cast(null as xid8) as xid8)), 
  orders.o_orderkey, 
  orders.o_orderkey
from 
  orders
where orders.o_clerk is NULL
limit 129;
select  
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as timetz) as timetz)), 
  region.r_name, 
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_name is NULL;
select  
  customer.c_comment, 
  supplier.s_comment, 
  customer.c_phone, 
  customer.c_name, 
  supplier.s_phone, 
  nation.n_regionkey, 
  customer.c_address, 
  nation.n_nationkey, 
  supplier.s_address, 
  customer.c_acctbal
from 
  customer
      left join nation
      on (customer.c_phone > customer.c_mktsegment)
    left join supplier
    on (nation.n_name is not NULL)
where customer.c_address is NULL;
select  
  orders.o_orderkey, 
  orders.o_orderkey, 
  orders.o_orderpriority, 
  orders.o_clerk, 
  orders.o_clerk, 
  orders.o_comment
from 
  orders
where orders.o_orderstatus is not NULL;
select  
  partsupp.ps_availqty, 
  min(
    cast(orders.o_shippriority as int4)), 
  partsupp.ps_partkey, 
  lineitem.l_receiptdate, 
  orders.o_orderstatus, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  orders.o_custkey
from 
  lineitem
    inner join partsupp
          right join partsupp
          on (partsupp.ps_supplycost > partsupp.ps_supplycost)
        inner join orders
        on (orders.o_totalprice >= partsupp.ps_supplycost)
      inner join orders
            inner join partsupp
            on (orders.o_totalprice = partsupp.ps_supplycost )
          right join customer
          on (partsupp.ps_suppkey = customer.c_custkey )
        inner join partsupp
        on (customer.c_phone < customer.c_phone)
      on (orders.o_orderdate = orders.o_orderdate)
    on (partsupp.ps_suppkey is NULL)
where partsupp.ps_partkey is NULL;
select  
  sum(
    cast(cast(null as int2) as int2))
from 
  nation
        inner join part
            right join lineitem
              left join customer
              on (customer.c_acctbal < lineitem.l_tax)
            on (lineitem.l_suppkey > lineitem.l_linenumber)
          right join customer
            inner join lineitem
            on (customer.c_mktsegment = lineitem.l_returnflag )
          on (lineitem.l_tax <= lineitem.l_tax)
        on (nation.n_nationkey < nation.n_regionkey)
      right join partsupp
          inner join region
          on (partsupp.ps_availqty = region.r_regionkey )
        right join part
        on (part.p_container <= part.p_brand)
      on (lineitem.l_shipdate < lineitem.l_commitdate)
    inner join region
      inner join orders
          right join partsupp
          on (orders.o_orderdate = orders.o_orderdate)
        right join part
            inner join lineitem
            on (part.p_brand > lineitem.l_returnflag)
          inner join supplier
            right join lineitem
            on (supplier.s_address = lineitem.l_comment )
          on (part.p_type = lineitem.l_comment )
        on (lineitem.l_extendedprice >= lineitem.l_quantity)
      on (partsupp.ps_supplycost = supplier.s_acctbal)
    on (nation.n_regionkey is not NULL)
where lineitem.l_tax is not NULL;
select  
  partsupp.ps_partkey, 
  region.r_name, 
  partsupp.ps_partkey, 
  region.r_regionkey
from 
  partsupp
      left join region
      on (partsupp.ps_partkey = region.r_regionkey )
    right join region
    on (partsupp.ps_availqty is not NULL)
where region.r_regionkey is not NULL;
select  
  max(
    cast(part.p_retailprice as "numeric")), 
  part.p_size
from 
  part
where part.p_name is NULL
limit 93;
select  
  nation.n_comment, 
  nation.n_name
from 
  nation
where nation.n_regionkey > nation.n_nationkey
limit 101;
select  
  orders.o_orderdate, 
  orders.o_custkey, 
  orders.o_orderstatus
from 
  orders
where orders.o_orderdate <= orders.o_orderdate;
select  
  lineitem.l_quantity, 
  lineitem.l_discount, 
  max(
    cast(cast(null as text) as text))
from 
  lineitem
where lineitem.l_orderkey is NULL
limit 118;
select  
  orders.o_orderstatus, 
  orders.o_clerk, 
  avg(
    cast(cast(null as float4) as float4)), 
  orders.o_comment, 
  orders.o_custkey, 
  orders.o_custkey, 
  orders.o_orderstatus, 
  orders.o_clerk
from 
  orders
where orders.o_comment is NULL
limit 34;
select  
  max(
    cast(cast(null as text) as text)), 
  region.r_regionkey
from 
  region
where region.r_name <= region.r_name
limit 71;
select  
  customer.c_nationkey, 
  orders.o_clerk, 
  nation.n_regionkey, 
  supplier.s_address, 
  supplier.s_acctbal, 
  orders.o_orderstatus, 
  sum(
    cast(nation.n_nationkey as int4)), 
  nation.n_name, 
  orders.o_comment, 
  orders.o_custkey, 
  avg(
    cast(cast(null as int8) as int8)), 
  supplier.s_name, 
  nation.n_comment, 
  supplier.s_acctbal, 
  orders.o_orderdate, 
  lineitem.l_partkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  orders.o_orderstatus, 
  max(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_suppkey
from 
  lineitem
      left join customer
        inner join orders
            inner join orders
            on (orders.o_orderkey = orders.o_orderkey )
          right join supplier
          on (orders.o_shippriority = supplier.s_suppkey)
        on (orders.o_clerk > orders.o_orderstatus)
      on (supplier.s_acctbal <= lineitem.l_extendedprice)
    right join nation
    on (orders.o_orderstatus is not NULL)
where supplier.s_nationkey < orders.o_orderkey
limit 74;
select  
  sum(
    cast(region.r_regionkey as int4)), 
  region.r_comment, 
  region.r_regionkey, 
  orders.o_totalprice, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as float4) as float4)), 
  orders.o_orderstatus
from 
  orders
      inner join partsupp
      on (partsupp.ps_suppkey < orders.o_orderkey)
    right join region
    on (orders.o_orderdate > orders.o_orderdate)
where orders.o_orderkey is NULL;
select  
  max(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_phone
from 
  customer
where customer.c_acctbal >= customer.c_acctbal
limit 62;
select  
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  customer.c_name, 
  max(
    cast(cast(null as int8) as int8)), 
  customer.c_acctbal
from 
  customer
where customer.c_phone >= customer.c_mktsegment
limit 135;
select  
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_name
from 
  supplier
where supplier.s_nationkey is not NULL;
select  
  customer.c_acctbal, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as inet) as inet)), 
  customer.c_comment, 
  customer.c_custkey, 
  customer.c_comment, 
  min(
    cast(cast(null as money) as money)), 
  customer.c_nationkey, 
  customer.c_nationkey, 
  min(
    cast(cast(null as text) as text)), 
  avg(
    cast(cast(null as int2) as int2)), 
  customer.c_phone, 
  customer.c_custkey, 
  customer.c_mktsegment, 
  customer.c_acctbal, 
  sum(
    cast(cast(null as int8) as int8)), 
  customer.c_phone, 
  customer.c_phone
from 
  customer
where customer.c_custkey is not NULL;
select  
  customer.c_comment, 
  min(
    cast(cast(null as timetz) as timetz)), 
  customer.c_address, 
  customer.c_custkey, 
  customer.c_name, 
  customer.c_name
from 
  customer
where customer.c_address is NULL;
select  
  nation.n_name, 
  lineitem.l_partkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_name
from 
  region
      left join lineitem
      on (lineitem.l_linestatus > lineitem.l_linestatus)
    inner join nation
    on (region.r_regionkey = nation.n_nationkey )
where lineitem.l_commitdate is NULL
limit 135;
select  
  max(
    cast(cast(null as int8) as int8)), 
  orders.o_totalprice, 
  supplier.s_suppkey, 
  lineitem.l_linenumber, 
  lineitem.l_receiptdate, 
  orders.o_orderstatus, 
  lineitem.l_tax, 
  orders.o_orderpriority, 
  supplier.s_acctbal, 
  customer.c_phone, 
  nation.n_nationkey
from 
  nation
        left join orders
        on (orders.o_orderdate < orders.o_orderdate)
      inner join orders
        right join supplier
        on (supplier.s_acctbal = supplier.s_acctbal)
      on (nation.n_nationkey = orders.o_orderkey )
    left join orders
          left join lineitem
            inner join orders
            on (lineitem.l_orderkey = orders.o_orderkey )
          on (lineitem.l_suppkey > lineitem.l_suppkey)
        inner join partsupp
        on (lineitem.l_extendedprice = partsupp.ps_supplycost )
      left join customer
      on (orders.o_totalprice < lineitem.l_discount)
    on (orders.o_orderdate is not NULL)
where lineitem.l_tax is NULL
limit 106;
select  
  part.p_brand, 
  max(
    cast(cast(null as float4) as float4)), 
  part.p_comment
from 
  supplier
    inner join part
    on (supplier.s_name <= part.p_mfgr)
where part.p_name is NULL
limit 102;
select  
  part.p_size, 
  part.p_size, 
  min(
    cast(cast(null as "interval") as "interval")), 
  part.p_mfgr, 
  part.p_partkey, 
  part.p_brand
from 
  part
where part.p_brand < part.p_container;
select  
  orders.o_orderdate, 
  orders.o_orderdate, 
  orders.o_orderdate, 
  orders.o_comment, 
  orders.o_orderpriority, 
  min(
    cast(cast(null as "time") as "time")), 
  nation.n_comment, 
  nation.n_comment
from 
  nation
    right join orders
    on (orders.o_clerk is NULL)
where orders.o_totalprice is not NULL
limit 63;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  orders.o_orderdate, 
  part.p_size, 
  orders.o_totalprice, 
  min(
    cast(cast(null as float8) as float8)), 
  orders.o_orderpriority, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  orders
        right join part
        on (orders.o_orderdate <= orders.o_orderdate)
      inner join lineitem
      on (part.p_size < part.p_partkey)
    right join nation
    on (lineitem.l_receiptdate >= lineitem.l_commitdate)
where nation.n_comment is not NULL;
select  
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  partsupp
where partsupp.ps_availqty is not NULL;
select  
  lineitem.l_returnflag, 
  region.r_comment, 
  region.r_comment
from 
  region
      inner join supplier
        inner join customer
        on (supplier.s_name >= customer.c_mktsegment)
      on (supplier.s_phone = supplier.s_name)
    right join lineitem
    on (lineitem.l_partkey is not NULL)
where supplier.s_phone is not NULL;
select  
  supplier.s_comment, 
  part.p_retailprice, 
  region.r_name, 
  partsupp.ps_availqty, 
  orders.o_totalprice, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  orders.o_orderstatus, 
  orders.o_shippriority, 
  orders.o_clerk, 
  orders.o_shippriority, 
  part.p_container, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  orders
      inner join region
        right join nation
          right join partsupp
              inner join part
              on (partsupp.ps_availqty = part.p_partkey)
            inner join customer
              right join lineitem
                inner join orders
                on (orders.o_orderkey >= lineitem.l_partkey)
              on (lineitem.l_quantity <= lineitem.l_quantity)
            on (part.p_partkey <= partsupp.ps_partkey)
          on (nation.n_nationkey = customer.c_custkey )
        on (orders.o_shippriority = customer.c_nationkey)
      on (orders.o_comment = orders.o_comment )
    inner join supplier
    on (lineitem.l_tax is not NULL)
where part.p_type is not NULL;
select  
  supplier.s_address, 
  partsupp.ps_supplycost
from 
  lineitem
    left join region
          left join partsupp
              inner join region
              on (region.r_regionkey > partsupp.ps_suppkey)
            left join lineitem
            on (region.r_name > lineitem.l_shipmode)
          on (lineitem.l_linestatus < lineitem.l_shipmode)
        inner join supplier
          inner join partsupp
          on (supplier.s_name = supplier.s_phone)
        on (partsupp.ps_supplycost = supplier.s_acctbal )
      left join customer
      on (customer.c_nationkey < supplier.s_nationkey)
    on (lineitem.l_tax <= lineitem.l_tax)
where region.r_regionkey = supplier.s_suppkey
limit 180;
select  
  min(
    cast(part.p_brand as bpchar)), 
  part.p_brand, 
  part.p_container, 
  orders.o_orderpriority, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  orders
    right join part
    on (part.p_brand is NULL)
where part.p_name is NULL
limit 62;
select  
  max(
    cast(lineitem.l_extendedprice as "numeric")), 
  nation.n_nationkey, 
  lineitem.l_shipinstruct, 
  supplier.s_address, 
  customer.c_name, 
  customer.c_name, 
  nation.n_nationkey, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as "time") as "time")), 
  supplier.s_acctbal, 
  customer.c_custkey
from 
  orders
        inner join supplier
              left join nation
              on (supplier.s_phone = nation.n_name )
            right join customer
              left join supplier
              on (customer.c_acctbal < supplier.s_acctbal)
            on (supplier.s_acctbal = customer.c_acctbal )
          inner join orders
            right join customer
            on (orders.o_totalprice >= orders.o_totalprice)
          on (customer.c_mktsegment = customer.c_phone )
        on (orders.o_orderdate <= orders.o_orderdate)
      left join customer
        left join part
        on (customer.c_acctbal = part.p_retailprice)
      on (part.p_retailprice >= part.p_retailprice)
    inner join lineitem
    on (orders.o_orderkey is NULL)
where lineitem.l_suppkey is NULL
limit 95;
select  
  orders.o_totalprice, 
  orders.o_custkey
from 
  orders
where orders.o_comment is NULL
limit 107;
select  
  region.r_comment, 
  region.r_name, 
  nation.n_name, 
  lineitem.l_suppkey, 
  region.r_regionkey, 
  region.r_name, 
  region.r_comment, 
  min(
    cast(cast(null as inet) as inet)), 
  max(
    cast(cast(null as xid8) as xid8))
from 
  lineitem
      inner join nation
      on (lineitem.l_quantity = lineitem.l_tax)
    inner join nation
      right join region
      on (nation.n_name = region.r_name )
    on (lineitem.l_extendedprice is not NULL)
where nation.n_nationkey is not NULL
limit 52;
select  
  customer.c_custkey, 
  customer.c_custkey, 
  min(
    cast(cast(null as inet) as inet))
from 
  customer
where customer.c_name is not NULL
limit 115;
select  
  partsupp.ps_suppkey, 
  supplier.s_name, 
  lineitem.l_quantity, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  sum(
    cast(cast(null as money) as money)), 
  supplier.s_nationkey
from 
  partsupp
      inner join supplier
        inner join partsupp
        on (supplier.s_acctbal = supplier.s_acctbal)
      on (partsupp.ps_supplycost > partsupp.ps_supplycost)
    right join lineitem
    on (partsupp.ps_suppkey = lineitem.l_orderkey )
where lineitem.l_comment is NULL
limit 136;
select  
  nation.n_name, 
  part.p_container, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_comment, 
  supplier.s_address, 
  part.p_container, 
  supplier.s_nationkey, 
  avg(
    cast(supplier.s_acctbal as "numeric"))
from 
  nation
    inner join part
      right join supplier
      on (supplier.s_nationkey >= supplier.s_nationkey)
    on (nation.n_nationkey >= supplier.s_suppkey)
where nation.n_comment is NULL
limit 127;
select  
  orders.o_custkey
from 
  nation
    inner join partsupp
          left join orders
            inner join region
            on (orders.o_orderstatus > orders.o_orderstatus)
          on (orders.o_orderdate > orders.o_orderdate)
        left join partsupp
        on (partsupp.ps_supplycost = partsupp.ps_supplycost )
      right join part
        inner join orders
          inner join part
          on (orders.o_orderdate > orders.o_orderdate)
        on (orders.o_clerk < part.p_container)
      on (part.p_size > orders.o_orderkey)
    on (orders.o_orderdate is NULL)
where orders.o_shippriority < partsupp.ps_partkey
limit 20;
select  
  customer.c_acctbal, 
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_acctbal, 
  customer.c_custkey
from 
  customer
where customer.c_nationkey >= customer.c_custkey
limit 169;
select  
  lineitem.l_quantity, 
  lineitem.l_receiptdate, 
  lineitem.l_returnflag, 
  customer.c_nationkey, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  customer.c_address, 
  lineitem.l_partkey
from 
  region
      inner join lineitem
        right join customer
        on (customer.c_phone > customer.c_mktsegment)
      on (lineitem.l_tax >= lineitem.l_discount)
    right join supplier
    on (lineitem.l_discount > lineitem.l_extendedprice)
where lineitem.l_commitdate >= lineitem.l_receiptdate
limit 107;
select  
  orders.o_clerk, 
  orders.o_shippriority, 
  orders.o_totalprice, 
  orders.o_orderdate, 
  max(
    cast(cast(null as money) as money)), 
  orders.o_orderpriority, 
  orders.o_orderkey, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  orders.o_totalprice, 
  orders.o_comment, 
  orders.o_orderstatus, 
  orders.o_comment, 
  orders.o_orderdate
from 
  orders
where orders.o_clerk > orders.o_clerk;
select  
  region.r_name
from 
  region
where region.r_name is NULL;
select  
  customer.c_acctbal, 
  supplier.s_address, 
  lineitem.l_suppkey, 
  orders.o_comment
from 
  supplier
          left join supplier
            inner join supplier
            on (supplier.s_name >= supplier.s_name)
          on (supplier.s_phone <= supplier.s_name)
        inner join part
        on (part.p_partkey >= part.p_size)
      right join orders
      on (supplier.s_nationkey >= part.p_partkey)
    inner join lineitem
              inner join partsupp
              on (lineitem.l_tax < lineitem.l_discount)
            left join supplier
              inner join supplier
              on (supplier.s_phone < supplier.s_phone)
            on (partsupp.ps_suppkey = supplier.s_nationkey)
          inner join lineitem
          on (supplier.s_name > lineitem.l_returnflag)
        inner join part
          right join customer
            right join orders
              inner join supplier
              on (orders.o_shippriority = supplier.s_suppkey)
            on (orders.o_orderdate = orders.o_orderdate)
          on (customer.c_acctbal = orders.o_totalprice)
        on (lineitem.l_suppkey > lineitem.l_suppkey)
      right join partsupp
          right join customer
          on (partsupp.ps_supplycost = partsupp.ps_supplycost)
        inner join orders
        on (partsupp.ps_availqty >= orders.o_custkey)
      on (lineitem.l_commitdate = lineitem.l_receiptdate)
    on (lineitem.l_commitdate = orders.o_orderdate)
where supplier.s_address is not NULL
limit 100;
select  
  region.r_regionkey, 
  nation.n_nationkey, 
  customer.c_phone, 
  nation.n_nationkey
from 
  customer
      right join part
        right join nation
            right join region
            on (region.r_name = nation.n_name)
          inner join nation
          on (region.r_name = nation.n_name)
        on (region.r_regionkey < part.p_size)
      on (customer.c_comment = nation.n_comment )
    inner join nation
    on (nation.n_regionkey is not NULL)
where part.p_retailprice = part.p_retailprice;
select  
  nation.n_regionkey, 
  partsupp.ps_partkey, 
  nation.n_regionkey, 
  orders.o_orderdate, 
  partsupp.ps_comment, 
  min(
    cast(cast(null as text) as text)), 
  nation.n_name, 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_partkey, 
  nation.n_nationkey, 
  orders.o_shippriority, 
  partsupp.ps_supplycost, 
  nation.n_nationkey, 
  min(
    cast(cast(null as inet) as inet)), 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  avg(
    cast(orders.o_shippriority as int4)), 
  max(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as int8) as int8)), 
  nation.n_comment, 
  nation.n_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  orders.o_orderdate
from 
  partsupp
      right join nation
      on (partsupp.ps_partkey > partsupp.ps_availqty)
    inner join orders
    on (orders.o_custkey is NULL)
where orders.o_orderdate < orders.o_orderdate
limit 127;
select  
  nation.n_regionkey, 
  max(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_comment, 
  lineitem.l_discount, 
  supplier.s_phone, 
  lineitem.l_tax, 
  lineitem.l_shipinstruct, 
  max(
    cast(cast(null as inet) as inet)), 
  partsupp.ps_partkey
from 
  partsupp
        right join supplier
        on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
      inner join customer
          left join supplier
          on (customer.c_phone < customer.c_mktsegment)
        inner join lineitem
          right join partsupp
                right join supplier
                  inner join lineitem
                  on (lineitem.l_quantity >= supplier.s_acctbal)
                on (lineitem.l_tax < lineitem.l_discount)
              inner join nation
              on (partsupp.ps_suppkey >= supplier.s_nationkey)
            left join customer
              inner join partsupp
              on (customer.c_acctbal <= partsupp.ps_supplycost)
            on (lineitem.l_shipmode < lineitem.l_shipinstruct)
          on (lineitem.l_discount >= customer.c_acctbal)
        on (supplier.s_nationkey = lineitem.l_orderkey )
      on (lineitem.l_receiptdate <= lineitem.l_commitdate)
    left join partsupp
    on (lineitem.l_shipinstruct > lineitem.l_shipmode)
where supplier.s_phone >= supplier.s_phone;
select  
  region.r_name, 
  customer.c_custkey
from 
  region
      left join customer
      on (region.r_regionkey = customer.c_custkey )
    left join supplier
    on (customer.c_nationkey = supplier.s_suppkey )
where customer.c_mktsegment <= customer.c_mktsegment
limit 126;
select  
  min(
    cast(cast(null as text) as text)), 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as money) as money)), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  min(
    cast(cast(null as int8) as int8)), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  max(
    cast(cast(null as money) as money)), 
  region.r_name, 
  region.r_name, 
  max(
    cast(cast(null as money) as money)), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  region.r_name, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as oid) as oid)), 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_comment is not NULL
limit 161;
select  
  min(
    cast(cast(null as inet) as inet)), 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  supplier.s_name, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  max(
    cast(supplier.s_name as bpchar)), 
  supplier.s_comment, 
  supplier.s_name, 
  min(
    cast(cast(null as text) as text)), 
  max(
    cast(supplier.s_acctbal as "numeric"))
from 
  supplier
where supplier.s_acctbal is not NULL
limit 108;
select  
  lineitem.l_discount, 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_comment is NULL
limit 108;
select  
  customer.c_address, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as "time") as "time")), 
  max(
    cast(customer.c_mktsegment as bpchar)), 
  customer.c_phone, 
  customer.c_comment, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_phone, 
  count(*), 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_custkey, 
  customer.c_phone
from 
  customer
where customer.c_name is NULL
limit 111;
select  
  supplier.s_nationkey, 
  supplier.s_comment, 
  sum(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_name, 
  supplier.s_phone, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_suppkey
from 
  supplier
where supplier.s_phone is NULL;
select  
  lineitem.l_shipinstruct, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  lineitem.l_partkey, 
  lineitem.l_extendedprice, 
  avg(
    cast(lineitem.l_quantity as "numeric")), 
  lineitem.l_shipdate, 
  lineitem.l_shipinstruct, 
  lineitem.l_receiptdate, 
  lineitem.l_partkey, 
  lineitem.l_discount, 
  lineitem.l_receiptdate, 
  lineitem.l_linestatus, 
  sum(
    cast(cast(null as int2) as int2)), 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_returnflag < lineitem.l_shipinstruct
limit 125;
select  
  nation.n_name, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_name
from 
  nation
where nation.n_regionkey is NULL
limit 60;
select  
  nation.n_nationkey, 
  min(
    cast(cast(null as int2) as int2))
from 
  nation
where nation.n_comment is NULL;
select  
  max(
    cast(cast(null as int8) as int8)), 
  region.r_name, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  region.r_regionkey, 
  customer.c_custkey, 
  region.r_comment, 
  customer.c_address, 
  region.r_name, 
  region.r_regionkey, 
  customer.c_comment, 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  region.r_comment
from 
  partsupp
    left join region
      right join customer
      on (customer.c_mktsegment >= region.r_name)
    on (customer.c_phone is not NULL)
where customer.c_acctbal is NULL
limit 114;
select  
  nation.n_regionkey
from 
  nation
where nation.n_regionkey is NULL;
select  
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is NULL;
select  
  supplier.s_phone, 
  supplier.s_acctbal, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  supplier.s_suppkey, 
  supplier.s_name, 
  supplier.s_phone, 
  supplier.s_name, 
  avg(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_supplycost, 
  supplier.s_suppkey, 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_address, 
  partsupp.ps_supplycost, 
  supplier.s_acctbal, 
  supplier.s_name
from 
  supplier
      inner join supplier
      on (supplier.s_phone < supplier.s_phone)
    right join partsupp
    on (supplier.s_nationkey is NULL)
where supplier.s_name < supplier.s_phone
limit 110;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  max(
    cast(cast(null as oid) as oid)), 
  orders.o_orderdate, 
  orders.o_orderkey, 
  min(
    cast(lineitem.l_orderkey as int4)), 
  supplier.s_comment, 
  sum(
    cast(cast(null as int2) as int2)), 
  customer.c_phone, 
  nation.n_name, 
  orders.o_orderpriority, 
  min(
    cast(orders.o_orderkey as int4)), 
  orders.o_custkey, 
  customer.c_custkey, 
  nation.n_regionkey, 
  customer.c_name, 
  lineitem.l_shipinstruct, 
  lineitem.l_linestatus, 
  nation.n_name, 
  lineitem.l_shipdate, 
  customer.c_phone
from 
  nation
      right join lineitem
      on (lineitem.l_linenumber >= lineitem.l_partkey)
    inner join customer
        left join supplier
        on (supplier.s_nationkey < customer.c_custkey)
      right join orders
      on (orders.o_totalprice >= supplier.s_acctbal)
    on (lineitem.l_returnflag = supplier.s_name )
where nation.n_name is not NULL;
select  
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_comment is NULL;
select  
  region.r_regionkey, 
  supplier.s_nationkey, 
  sum(
    cast(part.p_retailprice as "numeric")), 
  region.r_regionkey, 
  supplier.s_address
from 
  region
      right join supplier
              left join region
              on (supplier.s_acctbal < supplier.s_acctbal)
            inner join region
              inner join region
                right join lineitem
                on (lineitem.l_linenumber = lineitem.l_partkey)
              on (region.r_comment = lineitem.l_comment )
            on (region.r_name <= lineitem.l_linestatus)
          inner join part
          on (lineitem.l_commitdate >= lineitem.l_shipdate)
        inner join customer
        on (lineitem.l_receiptdate <= lineitem.l_commitdate)
      on (part.p_container <= part.p_brand)
    inner join lineitem
    on (region.r_name is not NULL)
where region.r_comment is NULL;
select  
  orders.o_orderdate, 
  orders.o_shippriority, 
  min(
    cast(cast(null as tid) as tid)), 
  orders.o_shippriority, 
  max(
    cast(orders.o_orderdate as date))
from 
  orders
where orders.o_shippriority is not NULL
limit 58;
select  
  orders.o_orderstatus, 
  orders.o_comment, 
  orders.o_comment, 
  orders.o_orderkey, 
  orders.o_shippriority
from 
  orders
where orders.o_orderpriority is not NULL
limit 112;
select  
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  max(
    cast(cast(null as float8) as float8)), 
  nation.n_regionkey, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  nation.n_nationkey
from 
  nation
where nation.n_comment is not NULL;
select  
  supplier.s_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  sum(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as int8) as int8)), 
  supplier.s_phone, 
  min(
    cast(partsupp.ps_availqty as int4)), 
  partsupp.ps_supplycost, 
  supplier.s_name, 
  partsupp.ps_availqty
from 
  supplier
    right join partsupp
    on (partsupp.ps_suppkey is not NULL)
where supplier.s_comment is not NULL
limit 123;
select  
  orders.o_orderdate, 
  orders.o_clerk, 
  orders.o_orderdate, 
  orders.o_totalprice
from 
  orders
where orders.o_orderstatus is not NULL
limit 120;
select  
  max(
    cast(cast(null as int8) as int8)), 
  part.p_partkey, 
  part.p_brand
from 
  part
where part.p_container <= part.p_brand;
select  
  max(
    cast(region.r_name as bpchar))
from 
  region
where region.r_comment is not NULL
limit 119;
select  
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_partkey is NULL;
select  
  max(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(cast(null as text) as text))
from 
  nation
where nation.n_name <= nation.n_name
limit 103;
select  
  region.r_regionkey, 
  region.r_name, 
  region.r_comment
from 
  region
where region.r_regionkey is not NULL;
select  
  orders.o_custkey, 
  orders.o_shippriority, 
  orders.o_shippriority, 
  orders.o_orderpriority, 
  orders.o_orderstatus, 
  orders.o_custkey, 
  min(
    cast(cast(null as money) as money)), 
  orders.o_shippriority, 
  min(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_orderkey, 
  orders.o_shippriority
from 
  orders
where orders.o_comment is NULL
limit 65;
select  
  customer.c_address, 
  customer.c_name, 
  customer.c_mktsegment, 
  customer.c_address, 
  customer.c_address, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  customer.c_comment
from 
  customer
where customer.c_name is NULL;
select  
  lineitem.l_comment, 
  lineitem.l_comment, 
  min(
    cast(orders.o_shippriority as int4))
from 
  lineitem
    inner join orders
    on (lineitem.l_suppkey = orders.o_orderkey )
where orders.o_orderstatus is not NULL
limit 40;
select  
  customer.c_custkey, 
  customer.c_nationkey, 
  sum(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_suppkey, 
  customer.c_address
from 
  partsupp
    inner join orders
            inner join customer
            on (orders.o_totalprice >= orders.o_totalprice)
          left join supplier
          on (orders.o_orderdate <= orders.o_orderdate)
        inner join region
        on (customer.c_custkey > customer.c_custkey)
      inner join customer
      on (orders.o_orderkey < customer.c_nationkey)
    on (partsupp.ps_supplycost is NULL)
where orders.o_clerk <= region.r_name
limit 124;
select  
  part.p_retailprice, 
  customer.c_mktsegment, 
  region.r_name, 
  region.r_name, 
  customer.c_comment, 
  region.r_name, 
  customer.c_mktsegment, 
  customer.c_name
from 
  customer
    right join region
      left join part
      on (region.r_name = part.p_mfgr )
    on (customer.c_phone is NULL)
where region.r_regionkey is not NULL
limit 160;
select  
  region.r_name
from 
  region
where region.r_name = region.r_name
limit 132;
select distinct 
  lineitem.l_commitdate, 
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_tax is not NULL
limit 125;
select  
  orders.o_clerk, 
  part.p_retailprice
from 
  nation
    left join orders
      left join part
          left join nation
          on (part.p_retailprice = part.p_retailprice)
        inner join orders
        on (nation.n_name <= orders.o_orderstatus)
      on (orders.o_totalprice = part.p_retailprice)
    on (orders.o_totalprice < orders.o_totalprice)
where orders.o_shippriority >= part.p_size
limit 134;
select  
  nation.n_regionkey, 
  customer.c_custkey, 
  nation.n_regionkey, 
  customer.c_address, 
  customer.c_acctbal, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  customer.c_acctbal, 
  part.p_container, 
  nation.n_regionkey
from 
  customer
    inner join lineitem
      inner join nation
        left join part
        on (nation.n_comment = part.p_name )
      on (lineitem.l_linestatus = part.p_mfgr )
    on (customer.c_nationkey = lineitem.l_orderkey )
where lineitem.l_commitdate > lineitem.l_shipdate
limit 182;
select  
  region.r_regionkey, 
  region.r_comment, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_regionkey = region.r_regionkey
limit 56;
select  
  sum(
    cast(cast(null as int2) as int2))
from 
  supplier
where supplier.s_nationkey is not NULL
limit 95;
select  
  supplier.s_comment
from 
  supplier
where supplier.s_nationkey is not NULL
limit 100;
select  
  orders.o_clerk, 
  orders.o_orderdate, 
  part.p_brand, 
  min(
    cast(cast(null as int2) as int2)), 
  orders.o_orderstatus, 
  part.p_brand, 
  part.p_type
from 
  part
    right join orders
    on (part.p_partkey is not NULL)
where orders.o_orderdate > orders.o_orderdate
limit 122;
select  
  supplier.s_comment, 
  count(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_address
from 
  supplier
where supplier.s_comment is NULL
limit 75;
select  
  region.r_regionkey, 
  nation.n_comment, 
  supplier.s_suppkey, 
  min(
    cast(cast(null as "time") as "time")), 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  partsupp.ps_partkey, 
  count(*), 
  supplier.s_comment, 
  supplier.s_nationkey, 
  partsupp.ps_availqty, 
  supplier.s_address, 
  supplier.s_name
from 
  supplier
      inner join partsupp
          inner join lineitem
              right join region
              on (lineitem.l_linenumber = region.r_regionkey )
            left join supplier
            on (lineitem.l_suppkey < lineitem.l_suppkey)
          on (partsupp.ps_supplycost = supplier.s_acctbal)
        inner join part
        on (supplier.s_acctbal <= lineitem.l_tax)
      on (supplier.s_acctbal >= partsupp.ps_supplycost)
    inner join nation
    on (part.p_comment is not NULL)
where lineitem.l_receiptdate is NULL;
select  
  lineitem.l_tax, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_extendedprice, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  lineitem.l_suppkey, 
  lineitem.l_returnflag, 
  lineitem.l_receiptdate, 
  lineitem.l_linenumber, 
  lineitem.l_partkey, 
  lineitem.l_orderkey, 
  lineitem.l_discount, 
  lineitem.l_partkey, 
  lineitem.l_linenumber, 
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_linestatus is NULL
limit 110;
select  
  nation.n_nationkey, 
  min(
    cast(cast(null as int8) as int8)), 
  part.p_size, 
  partsupp.ps_partkey, 
  part.p_name, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  avg(
    cast(cast(null as float4) as float4)), 
  nation.n_comment
from 
  partsupp
        left join nation
            inner join region
            on (nation.n_nationkey <= nation.n_nationkey)
          inner join nation
          on (nation.n_name = nation.n_name)
        on (region.r_name = nation.n_name)
      left join part
      on (part.p_container > region.r_name)
    inner join nation
      inner join region
      on (nation.n_name > region.r_name)
    on (nation.n_comment is not NULL)
where partsupp.ps_availqty is not NULL
limit 106;
select  
  supplier.s_phone, 
  supplier.s_comment, 
  min(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_acctbal, 
  supplier.s_phone, 
  avg(
    cast(cast(null as int2) as int2)), 
  supplier.s_suppkey
from 
  supplier
where supplier.s_nationkey is not NULL
limit 71;
select  
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_address, 
  max(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_name
from 
  supplier
where supplier.s_suppkey >= supplier.s_suppkey;
select  
  min(
    cast(cast(null as "time") as "time"))
from 
  lineitem
where lineitem.l_partkey < lineitem.l_partkey;
select  
  region.r_comment, 
  region.r_name, 
  min(
    cast(region.r_name as bpchar)), 
  max(
    cast(region.r_regionkey as int4)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL;
select  
  count(
    cast(region.r_name as bpchar)), 
  max(
    cast(cast(null as inet) as inet)), 
  region.r_comment, 
  region.r_name, 
  region.r_name
from 
  region
where region.r_name <= region.r_name
limit 87;
select  
  supplier.s_acctbal
from 
  supplier
where supplier.s_suppkey <= supplier.s_suppkey
limit 157;
select  
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_partkey is NULL;
select  
  region.r_name, 
  partsupp.ps_availqty
from 
  lineitem
          left join orders
          on (lineitem.l_tax = orders.o_totalprice )
        left join partsupp
        on (orders.o_orderstatus < orders.o_clerk)
      inner join customer
        inner join lineitem
        on (customer.c_acctbal = lineitem.l_quantity )
      on (orders.o_totalprice < lineitem.l_quantity)
    right join region
      inner join orders
        inner join region
        on (orders.o_clerk > orders.o_orderstatus)
      on (region.r_name = orders.o_orderstatus )
    on (partsupp.ps_partkey is not NULL)
where lineitem.l_shipdate <= lineitem.l_commitdate;
select  
  nation.n_regionkey, 
  nation.n_name, 
  supplier.s_nationkey, 
  partsupp.ps_suppkey, 
  lineitem.l_tax, 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_availqty
from 
  partsupp
    left join supplier
      right join nation
            inner join region
            on (region.r_name < region.r_name)
          inner join lineitem
          on (region.r_comment = lineitem.l_comment )
        inner join partsupp
        on (lineitem.l_extendedprice < lineitem.l_discount)
      on (supplier.s_suppkey = nation.n_nationkey )
    on (lineitem.l_quantity <= lineitem.l_discount)
where region.r_regionkey is not NULL
limit 105;
select  
  avg(
    cast(cast(null as int8) as int8)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  partsupp.ps_suppkey, 
  customer.c_phone, 
  nation.n_regionkey, 
  partsupp.ps_availqty, 
  nation.n_comment, 
  partsupp.ps_comment, 
  customer.c_comment, 
  sum(
    cast(nation.n_nationkey as int4)), 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  customer
      inner join partsupp
      on (customer.c_phone >= customer.c_phone)
    inner join nation
    on (nation.n_regionkey is NULL)
where nation.n_regionkey >= customer.c_custkey
limit 71;
select distinct 
  nation.n_regionkey, 
  orders.o_comment
from 
  orders
            inner join partsupp
            on (orders.o_shippriority = partsupp.ps_partkey)
          right join orders
          on (orders.o_totalprice <= orders.o_totalprice)
        right join orders
          left join part
          on (orders.o_totalprice < orders.o_totalprice)
        on (orders.o_orderdate <= orders.o_orderdate)
      right join part
      on (orders.o_totalprice < orders.o_totalprice)
    right join nation
    on (part.p_mfgr = nation.n_name )
where orders.o_comment is not NULL;
select  
  nation.n_nationkey, 
  region.r_name
from 
  region
    right join nation
    on (region.r_regionkey = nation.n_nationkey )
where nation.n_name is not NULL
limit 128;
select  
  part.p_type, 
  max(
    cast(cast(null as oid) as oid)), 
  part.p_name, 
  part.p_type, 
  part.p_size
from 
  part
where part.p_retailprice <= part.p_retailprice
limit 116;
select  
  avg(
    cast(lineitem.l_discount as "numeric"))
from 
  partsupp
      inner join orders
      on (partsupp.ps_availqty <= partsupp.ps_partkey)
    inner join nation
      left join part
          inner join lineitem
              inner join partsupp
              on (lineitem.l_shipinstruct = lineitem.l_returnflag)
            right join region
              right join customer
              on (region.r_regionkey <= region.r_regionkey)
            on (lineitem.l_commitdate = lineitem.l_commitdate)
          on (part.p_comment = lineitem.l_comment )
        inner join region
        on (partsupp.ps_suppkey = region.r_regionkey )
      on (lineitem.l_receiptdate > lineitem.l_receiptdate)
    on (region.r_regionkey is NULL)
where lineitem.l_receiptdate >= lineitem.l_commitdate;
select  
  sum(
    cast(cast(null as money) as money)), 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  lineitem.l_shipinstruct, 
  lineitem.l_suppkey, 
  max(
    cast(orders.o_totalprice as "numeric")), 
  lineitem.l_partkey, 
  orders.o_comment, 
  lineitem.l_discount, 
  region.r_name, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_regionkey, 
  lineitem.l_shipinstruct, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  lineitem.l_partkey, 
  lineitem.l_shipmode, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  lineitem.l_orderkey, 
  region.r_name, 
  region.r_name, 
  orders.o_orderstatus, 
  lineitem.l_extendedprice, 
  region.r_name, 
  region.r_regionkey
from 
  lineitem
        left join orders
        on (lineitem.l_tax = orders.o_totalprice )
      inner join region
      on (lineitem.l_returnflag <= lineitem.l_returnflag)
    right join region
    on (lineitem.l_suppkey is NULL)
where orders.o_shippriority <= lineitem.l_linenumber
limit 77;
select  
  nation.n_comment, 
  nation.n_nationkey
from 
  nation
where nation.n_name is NULL;
select  
  orders.o_comment
from 
  orders
where orders.o_shippriority is not NULL;
select  
  partsupp.ps_partkey
from 
  partsupp
    right join partsupp
        inner join customer
        on (partsupp.ps_supplycost = customer.c_acctbal )
      inner join part
          right join part
            left join customer
            on (part.p_mfgr >= part.p_brand)
          on (customer.c_nationkey > part.p_partkey)
        inner join partsupp
        on (part.p_brand > part.p_mfgr)
      on (partsupp.ps_supplycost >= part.p_retailprice)
    on (customer.c_acctbal is not NULL)
where partsupp.ps_supplycost is NULL;
select  
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  nation.n_name, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  nation.n_nationkey, 
  nation.n_regionkey, 
  region.r_comment, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment
from 
  nation
    inner join region
    on (region.r_comment is not NULL)
where region.r_comment is NULL
limit 113;
select  
  supplier.s_address, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  supplier
      inner join lineitem
      on (supplier.s_acctbal > supplier.s_acctbal)
    inner join orders
        inner join nation
        on (orders.o_orderdate > orders.o_orderdate)
      inner join customer
        right join partsupp
        on (customer.c_phone > customer.c_phone)
      on (orders.o_orderpriority = orders.o_clerk)
    on (supplier.s_nationkey > partsupp.ps_suppkey)
where orders.o_totalprice > supplier.s_acctbal
limit 130;
select  
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  max(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_suppkey, 
  min(
    cast(cast(null as text) as text)), 
  min(
    cast(supplier.s_acctbal as "numeric"))
from 
  supplier
where supplier.s_acctbal is NULL;
select  
  supplier.s_name, 
  supplier.s_name, 
  supplier.s_nationkey, 
  supplier.s_name, 
  supplier.s_name, 
  max(
    cast(cast(null as float4) as float4)), 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  avg(
    cast(cast(null as int8) as int8)), 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_comment
from 
  supplier
where supplier.s_name = supplier.s_name
limit 119;
select  
  customer.c_name, 
  customer.c_acctbal, 
  customer.c_name, 
  customer.c_phone, 
  customer.c_comment, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  customer.c_mktsegment, 
  customer.c_acctbal, 
  customer.c_phone
from 
  customer
where customer.c_acctbal > customer.c_acctbal;
select  
  part.p_mfgr, 
  supplier.s_suppkey, 
  lineitem.l_tax
from 
  nation
        right join part
            right join customer
            on (part.p_partkey = customer.c_custkey )
          left join supplier
          on (part.p_retailprice = customer.c_acctbal)
        on (nation.n_name <= supplier.s_name)
      inner join supplier
        left join nation
        on (nation.n_nationkey = supplier.s_nationkey)
      on (customer.c_mktsegment <= customer.c_mktsegment)
    inner join lineitem
        inner join part
        on (part.p_partkey >= part.p_size)
      inner join customer
        left join region
          right join lineitem
          on (lineitem.l_extendedprice = lineitem.l_extendedprice)
        on (lineitem.l_tax < lineitem.l_tax)
      on (customer.c_custkey = lineitem.l_partkey)
    on (customer.c_address is not NULL)
where supplier.s_address is not NULL
limit 70;
select  
  customer.c_address, 
  customer.c_custkey, 
  customer.c_name, 
  customer.c_address, 
  customer.c_custkey, 
  customer.c_acctbal, 
  customer.c_custkey
from 
  customer
where customer.c_acctbal >= customer.c_acctbal
limit 187;
select  
  customer.c_phone, 
  customer.c_phone
from 
  customer
where customer.c_name is not NULL
limit 70;
select  
  lineitem.l_shipmode, 
  region.r_regionkey, 
  supplier.s_acctbal, 
  region.r_name
from 
  lineitem
          left join region
          on (lineitem.l_tax <= lineitem.l_tax)
        inner join region
        on (lineitem.l_shipinstruct >= lineitem.l_linestatus)
      right join supplier
      on (supplier.s_name >= lineitem.l_shipinstruct)
    right join lineitem
    on (lineitem.l_orderkey is not NULL)
where lineitem.l_commitdate <= lineitem.l_commitdate;
select  
  nation.n_regionkey, 
  nation.n_comment, 
  max(
    cast(cast(null as "interval") as "interval")), 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is not NULL
limit 107;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_comment, 
  part.p_size, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  partsupp.ps_availqty, 
  nation.n_name, 
  part.p_size, 
  partsupp.ps_partkey, 
  nation.n_name
from 
  nation
    left join lineitem
        inner join nation
        on (lineitem.l_tax = lineitem.l_tax)
      right join partsupp
        left join partsupp
          inner join part
          on (part.p_brand = part.p_mfgr)
        on (partsupp.ps_partkey <= part.p_size)
      on (partsupp.ps_availqty <= partsupp.ps_partkey)
    on (partsupp.ps_suppkey is not NULL)
where nation.n_name >= lineitem.l_linestatus;
select  
  supplier.s_nationkey, 
  partsupp.ps_comment, 
  supplier.s_name, 
  supplier.s_name, 
  supplier.s_suppkey, 
  partsupp.ps_suppkey, 
  supplier.s_name, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  supplier.s_name, 
  partsupp.ps_partkey
from 
  partsupp
    inner join supplier
    on (supplier.s_phone > supplier.s_name)
where supplier.s_acctbal is not NULL;
select  
  partsupp.ps_comment, 
  sum(
    cast(cast(null as money) as money)), 
  nation.n_regionkey, 
  min(
    cast(cast(null as int2) as int2)), 
  supplier.s_comment, 
  region.r_comment, 
  region.r_comment, 
  lineitem.l_extendedprice, 
  supplier.s_comment, 
  part.p_partkey, 
  max(
    cast(cast(null as tid) as tid)), 
  supplier.s_acctbal, 
  partsupp.ps_comment, 
  lineitem.l_shipdate, 
  supplier.s_comment, 
  region.r_regionkey
from 
  supplier
    right join nation
      right join supplier
          left join lineitem
          on (lineitem.l_shipmode <= lineitem.l_shipinstruct)
        left join region
          inner join partsupp
            left join part
            on (part.p_container <= part.p_mfgr)
          on (part.p_size = partsupp.ps_partkey)
        on (lineitem.l_receiptdate <= lineitem.l_commitdate)
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    on (nation.n_regionkey is not NULL)
where supplier.s_phone is not NULL
limit 82;
select  
  part.p_retailprice
from 
  customer
    inner join lineitem
      left join part
        left join supplier
          right join lineitem
          on (lineitem.l_shipinstruct <= lineitem.l_shipinstruct)
        on (lineitem.l_extendedprice >= lineitem.l_discount)
      on (lineitem.l_shipinstruct = lineitem.l_shipmode)
    on (lineitem.l_quantity is not NULL)
where lineitem.l_shipmode >= lineitem.l_shipmode
limit 61;
select  
  orders.o_orderpriority, 
  orders.o_orderpriority, 
  orders.o_totalprice, 
  orders.o_orderpriority, 
  orders.o_custkey, 
  orders.o_comment, 
  orders.o_clerk, 
  orders.o_orderpriority, 
  max(
    cast(cast(null as oid) as oid)), 
  orders.o_comment, 
  orders.o_custkey, 
  orders.o_totalprice, 
  orders.o_clerk, 
  orders.o_totalprice, 
  max(
    cast(cast(null as money) as money)), 
  orders.o_custkey, 
  orders.o_orderstatus
from 
  orders
where orders.o_custkey is not NULL;
select  
  nation.n_regionkey
from 
  nation
            inner join partsupp
            on (partsupp.ps_availqty = partsupp.ps_availqty)
          inner join part
          on (partsupp.ps_availqty > nation.n_nationkey)
        inner join part
          inner join lineitem
            right join part
            on (lineitem.l_commitdate > lineitem.l_commitdate)
          on (lineitem.l_tax >= lineitem.l_tax)
        on (lineitem.l_returnflag <= part.p_mfgr)
      inner join supplier
      on (part.p_brand < part.p_mfgr)
    inner join region
      left join lineitem
      on (lineitem.l_partkey <= lineitem.l_orderkey)
    on (part.p_retailprice = part.p_retailprice)
where lineitem.l_returnflag is NULL
limit 54;
select  
  lineitem.l_shipmode, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  max(
    cast(cast(null as "time") as "time")), 
  avg(
    cast(cast(null as float4) as float4)), 
  avg(
    cast(cast(null as int8) as int8))
from 
  nation
    inner join region
      inner join part
          right join supplier
            inner join nation
            on (supplier.s_acctbal < supplier.s_acctbal)
          on (part.p_retailprice < part.p_retailprice)
        right join lineitem
        on (lineitem.l_linestatus <= part.p_container)
      on (supplier.s_nationkey <= region.r_regionkey)
    on (lineitem.l_comment is not NULL)
where supplier.s_acctbal is NULL
limit 134;
select  
  orders.o_totalprice, 
  orders.o_clerk, 
  orders.o_custkey, 
  orders.o_totalprice
from 
  orders
where orders.o_shippriority is not NULL;
select  
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_regionkey >= region.r_regionkey
limit 138;
select  
  region.r_regionkey, 
  nation.n_regionkey, 
  region.r_comment, 
  part.p_partkey, 
  customer.c_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name
from 
  customer
    inner join customer
      inner join region
        inner join orders
            inner join part
              inner join part
              on (part.p_partkey = part.p_partkey )
            on (part.p_retailprice < orders.o_totalprice)
          left join nation
            left join partsupp
            on (nation.n_name >= nation.n_name)
          on (part.p_retailprice <= partsupp.ps_supplycost)
        on (part.p_container < orders.o_orderstatus)
      on (customer.c_nationkey = orders.o_custkey)
    on (orders.o_orderdate is not NULL)
where partsupp.ps_suppkey is NULL
limit 132;
select  
  part.p_comment, 
  part.p_container
from 
  part
where part.p_size is NULL;
select  
  supplier.s_suppkey, 
  part.p_comment, 
  nation.n_name, 
  customer.c_custkey, 
  customer.c_name, 
  customer.c_comment
from 
  region
        left join part
            right join nation
            on (nation.n_name < part.p_container)
          right join supplier
          on (nation.n_name = supplier.s_name )
        on (part.p_mfgr > part.p_container)
      inner join customer
        right join nation
        on (customer.c_acctbal >= customer.c_acctbal)
      on (customer.c_nationkey >= customer.c_custkey)
    left join region
    on (customer.c_acctbal is NULL)
where nation.n_name is not NULL
limit 82;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  part.p_type, 
  part.p_container, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  part.p_name, 
  part.p_size, 
  part.p_name, 
  part.p_type, 
  sum(
    cast(cast(null as float4) as float4)), 
  part.p_name, 
  part.p_size, 
  part.p_comment, 
  part.p_retailprice, 
  part.p_comment, 
  min(
    cast(cast(null as int8) as int8)), 
  sum(
    cast(cast(null as float8) as float8)), 
  part.p_name
from 
  part
where part.p_comment is NULL
limit 65;
select  
  customer.c_acctbal, 
  customer.c_phone
from 
  customer
where customer.c_address is not NULL
limit 154;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_comment is not NULL
limit 149;
select  
  lineitem.l_discount, 
  avg(
    cast(customer.c_acctbal as "numeric"))
from 
  part
            right join nation
            on (part.p_mfgr <= part.p_brand)
          left join lineitem
          on (part.p_partkey <= lineitem.l_orderkey)
        inner join customer
            inner join part
            on (part.p_retailprice = customer.c_acctbal)
          inner join part
          on (part.p_mfgr <= customer.c_phone)
        on (lineitem.l_commitdate = lineitem.l_shipdate)
      right join partsupp
      on (nation.n_nationkey = partsupp.ps_partkey )
    inner join partsupp
    on (part.p_partkey >= lineitem.l_orderkey)
where partsupp.ps_suppkey < nation.n_nationkey
limit 144;
select  
  sum(
    cast(customer.c_custkey as int4)), 
  customer.c_name, 
  lineitem.l_commitdate, 
  customer.c_comment, 
  max(
    cast(customer.c_custkey as int4)), 
  supplier.s_suppkey
from 
  part
            inner join customer
            on (part.p_mfgr <= part.p_mfgr)
          inner join partsupp
          on (customer.c_nationkey <= partsupp.ps_partkey)
        inner join partsupp
              inner join part
              on (partsupp.ps_suppkey = part.p_partkey )
            inner join nation
            on (partsupp.ps_availqty = nation.n_nationkey )
          inner join supplier
            right join customer
            on (customer.c_custkey > supplier.s_suppkey)
          on (partsupp.ps_partkey = customer.c_custkey )
        on (part.p_partkey < nation.n_nationkey)
      right join lineitem
      on (lineitem.l_shipdate < lineitem.l_commitdate)
    inner join supplier
    on (customer.c_custkey <= supplier.s_suppkey)
where nation.n_regionkey is not NULL;
select  
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_availqty = partsupp.ps_availqty
limit 163;
select  
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_comment, 
  sum(
    cast(cast(null as int8) as int8)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_name, 
  sum(
    cast(nation.n_regionkey as int4))
from 
  nation
where nation.n_regionkey is not NULL
limit 110;
select  
  supplier.s_acctbal, 
  nation.n_comment, 
  supplier.s_suppkey, 
  nation.n_comment
from 
  supplier
    left join supplier
        left join region
        on (supplier.s_suppkey = supplier.s_nationkey)
      inner join nation
        inner join nation
        on (nation.n_name <= nation.n_name)
      on (nation.n_nationkey < supplier.s_nationkey)
    on (supplier.s_name = nation.n_name)
where nation.n_regionkey is NULL
limit 141;
select  
  nation.n_comment, 
  nation.n_comment, 
  nation.n_nationkey, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_comment
from 
  nation
where nation.n_comment is NULL
limit 31;
select  
  supplier.s_comment, 
  supplier.s_phone, 
  region.r_regionkey, 
  region.r_comment, 
  supplier.s_acctbal
from 
  supplier
    right join region
    on (supplier.s_suppkey is NULL)
where supplier.s_comment is not NULL
limit 94;
select  
  customer.c_custkey, 
  customer.c_custkey, 
  customer.c_nationkey, 
  part.p_mfgr, 
  nation.n_regionkey, 
  customer.c_acctbal, 
  part.p_type
from 
  nation
    left join customer
          inner join part
          on (part.p_container >= part.p_mfgr)
        inner join part
        on (part.p_mfgr = customer.c_mktsegment)
      right join customer
      on (part.p_size > customer.c_custkey)
    on (customer.c_mktsegment = customer.c_mktsegment)
where customer.c_acctbal is not NULL
limit 99;
select  
  nation.n_comment, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  nation.n_regionkey, 
  customer.c_comment, 
  nation.n_name, 
  nation.n_nationkey, 
  customer.c_address, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  nation.n_name, 
  region.r_comment, 
  region.r_comment, 
  sum(
    cast(customer.c_nationkey as int4)), 
  nation.n_name
from 
  customer
      right join region
      on (customer.c_acctbal < customer.c_acctbal)
    right join nation
    on (customer.c_acctbal < customer.c_acctbal)
where customer.c_acctbal < customer.c_acctbal;
select  
  max(
    cast(cast(null as inet) as inet))
from 
  customer
where customer.c_nationkey > customer.c_custkey
limit 110;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  region.r_comment, 
  customer.c_phone, 
  lineitem.l_receiptdate, 
  min(
    cast(cast(null as inet) as inet)), 
  region.r_regionkey, 
  customer.c_address, 
  partsupp.ps_suppkey
from 
  partsupp
              inner join customer
              on (customer.c_acctbal >= customer.c_acctbal)
            inner join region
              left join lineitem
              on (lineitem.l_linenumber < region.r_regionkey)
            on (partsupp.ps_partkey > partsupp.ps_partkey)
          left join part
          on (part.p_retailprice >= lineitem.l_tax)
        right join region
        on (customer.c_name = region.r_comment )
      inner join partsupp
      on (customer.c_phone < lineitem.l_linestatus)
    inner join lineitem
      left join part
      on (lineitem.l_quantity >= lineitem.l_extendedprice)
    on (region.r_regionkey = part.p_partkey )
where lineitem.l_quantity < lineitem.l_tax;
select  
  lineitem.l_shipinstruct
from 
  lineitem
    right join partsupp
    on (lineitem.l_commitdate is NULL)
where lineitem.l_extendedprice > lineitem.l_quantity
limit 92;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  min(
    cast(cast(null as "time") as "time")), 
  nation.n_nationkey, 
  partsupp.ps_partkey, 
  nation.n_name, 
  nation.n_nationkey, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as inet) as inet)), 
  nation.n_comment, 
  sum(
    cast(cast(null as money) as money)), 
  partsupp.ps_suppkey
from 
  partsupp
        inner join partsupp
        on (partsupp.ps_supplycost < partsupp.ps_supplycost)
      left join nation
      on (nation.n_name < nation.n_name)
    left join partsupp
    on (partsupp.ps_suppkey is not NULL)
where partsupp.ps_availqty is NULL
limit 75;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  orders.o_orderdate, 
  orders.o_orderstatus, 
  orders.o_orderkey, 
  orders.o_orderdate, 
  orders.o_comment, 
  orders.o_custkey, 
  orders.o_totalprice
from 
  orders
where orders.o_orderdate is not NULL
limit 13;
select  
  part.p_retailprice, 
  supplier.s_acctbal
from 
  customer
            inner join supplier
            on (customer.c_mktsegment = supplier.s_name )
          inner join region
          on (customer.c_phone = region.r_name )
        inner join region
        on (region.r_regionkey >= region.r_regionkey)
      inner join orders
      on (customer.c_acctbal <= supplier.s_acctbal)
    inner join partsupp
          right join part
          on (part.p_partkey >= part.p_partkey)
        right join partsupp
        on (partsupp.ps_partkey = partsupp.ps_partkey )
      inner join partsupp
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    on (orders.o_custkey = part.p_partkey )
where partsupp.ps_supplycost <= orders.o_totalprice
limit 148;
select  
  part.p_retailprice, 
  part.p_partkey, 
  part.p_comment, 
  part.p_container, 
  lineitem.l_returnflag, 
  part.p_comment, 
  part.p_partkey
from 
  lineitem
    right join part
    on (part.p_retailprice is not NULL)
where lineitem.l_comment is not NULL
limit 131;
select  
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_partkey is NULL;
select  
  customer.c_acctbal, 
  min(
    cast(customer.c_mktsegment as bpchar)), 
  customer.c_custkey, 
  customer.c_address
from 
  customer
where customer.c_custkey <= customer.c_nationkey
limit 164;
select  
  supplier.s_comment, 
  supplier.s_comment
from 
  customer
      inner join nation
      on (customer.c_mktsegment >= customer.c_mktsegment)
    right join part
          inner join part
            inner join lineitem
              left join supplier
              on (lineitem.l_partkey = supplier.s_suppkey )
            on (part.p_type = lineitem.l_comment )
          on (part.p_partkey = lineitem.l_orderkey )
        right join orders
        on (lineitem.l_linestatus < lineitem.l_linestatus)
      right join orders
        inner join nation
        on (orders.o_orderkey < orders.o_custkey)
      on (orders.o_orderdate >= lineitem.l_shipdate)
    on (orders.o_comment is NULL)
where orders.o_totalprice is NULL
limit 93;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_name, 
  part.p_retailprice, 
  count(
    cast(region.r_regionkey as int4)), 
  partsupp.ps_partkey, 
  region.r_name, 
  part.p_retailprice, 
  max(
    cast(cast(null as text) as text)), 
  min(
    cast(part.p_retailprice as "numeric"))
from 
  region
    right join region
          inner join part
              inner join region
              on (part.p_brand < part.p_brand)
            inner join region
              left join part
              on (part.p_retailprice <= part.p_retailprice)
            on (part.p_comment = part.p_name )
          on (region.r_regionkey > part.p_size)
        right join partsupp
        on (part.p_retailprice > part.p_retailprice)
      inner join customer
        right join region
        on (customer.c_mktsegment = region.r_name )
      on (part.p_retailprice <= partsupp.ps_supplycost)
    on (customer.c_name is not NULL)
where region.r_name is not NULL
limit 85;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  min(
    cast(cast(null as float4) as float4))
from 
  region
where region.r_name is not NULL
limit 100;
select  
  min(
    cast(cast(null as money) as money))
from 
  orders
where orders.o_comment is not NULL;
select  
  lineitem.l_quantity, 
  lineitem.l_shipmode, 
  lineitem.l_shipinstruct, 
  lineitem.l_discount, 
  lineitem.l_discount, 
  lineitem.l_comment, 
  lineitem.l_extendedprice
from 
  lineitem
    right join lineitem
    on (lineitem.l_quantity is NULL)
where lineitem.l_discount >= lineitem.l_discount
limit 95;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(lineitem.l_linenumber as int4))
from 
  lineitem
        left join nation
          left join part
          on (part.p_container > part.p_mfgr)
        on (lineitem.l_extendedprice = part.p_retailprice )
      right join part
        right join region
        on (part.p_size < part.p_size)
      on (nation.n_name = part.p_mfgr)
    inner join orders
    on (nation.n_nationkey >= part.p_partkey)
where lineitem.l_linenumber < lineitem.l_linenumber
limit 102;
select  
  lineitem.l_shipinstruct, 
  lineitem.l_linenumber, 
  nation.n_nationkey, 
  lineitem.l_shipdate, 
  nation.n_name
from 
  lineitem
      left join lineitem
        right join nation
        on (lineitem.l_shipinstruct = nation.n_name )
      on (lineitem.l_discount = lineitem.l_quantity )
    right join nation
        inner join lineitem
        on (lineitem.l_receiptdate >= lineitem.l_commitdate)
      inner join supplier
            inner join part
            on (supplier.s_name <= part.p_container)
          inner join nation
          on (supplier.s_nationkey = nation.n_nationkey )
        inner join partsupp
          inner join lineitem
          on (lineitem.l_returnflag > lineitem.l_shipmode)
        on (lineitem.l_shipdate <= lineitem.l_shipdate)
      on (lineitem.l_receiptdate >= lineitem.l_commitdate)
    on (lineitem.l_returnflag = supplier.s_name )
where part.p_brand > lineitem.l_returnflag;
select  
  part.p_retailprice, 
  part.p_retailprice, 
  part.p_comment, 
  part.p_name, 
  part.p_comment, 
  part.p_container, 
  part.p_mfgr, 
  max(
    cast(cast(null as money) as money)), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  part.p_type, 
  part.p_retailprice, 
  part.p_container
from 
  part
where part.p_mfgr is NULL
limit 105;
select  
  customer.c_phone
from 
  nation
      inner join supplier
        left join lineitem
          inner join part
            inner join part
            on (part.p_container = part.p_container)
          on (lineitem.l_tax > lineitem.l_tax)
        on (lineitem.l_shipdate <= lineitem.l_receiptdate)
      on (lineitem.l_shipinstruct >= part.p_container)
    inner join partsupp
          right join nation
          on (partsupp.ps_availqty <= nation.n_nationkey)
        right join region
          inner join customer
          on (customer.c_phone >= customer.c_phone)
        on (partsupp.ps_comment = region.r_comment )
      left join nation
      on (nation.n_name < customer.c_mktsegment)
    on (customer.c_acctbal >= partsupp.ps_supplycost)
where lineitem.l_receiptdate > lineitem.l_commitdate;
select  
  part.p_size, 
  partsupp.ps_supplycost, 
  orders.o_orderstatus, 
  nation.n_nationkey, 
  customer.c_comment, 
  orders.o_comment, 
  part.p_name
from 
  customer
        inner join part
          inner join nation
            inner join partsupp
            on (nation.n_name < nation.n_name)
          on (part.p_brand >= part.p_mfgr)
        on (part.p_size > partsupp.ps_suppkey)
      right join orders
      on (orders.o_orderdate >= orders.o_orderdate)
    inner join region
        right join nation
              right join orders
              on (orders.o_orderstatus <= orders.o_orderstatus)
            inner join supplier
              left join supplier
              on (supplier.s_suppkey = supplier.s_suppkey)
            on (supplier.s_name = nation.n_name)
          right join nation
          on (supplier.s_phone >= supplier.s_name)
        on (region.r_regionkey = supplier.s_suppkey )
      inner join customer
        inner join part
        on (part.p_retailprice <= part.p_retailprice)
      on (nation.n_regionkey = supplier.s_nationkey)
    on (part.p_container is not NULL)
where part.p_comment is NULL
limit 92;
select  
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_mktsegment
from 
  customer
where customer.c_acctbal > customer.c_acctbal;
select  
  customer.c_mktsegment, 
  avg(
    cast(cast(null as int8) as int8)), 
  customer.c_name, 
  customer.c_acctbal, 
  customer.c_custkey
from 
  customer
where customer.c_phone > customer.c_phone
limit 159;
select  
  customer.c_mktsegment, 
  customer.c_custkey, 
  customer.c_nationkey, 
  nation.n_comment, 
  customer.c_name, 
  customer.c_name, 
  customer.c_phone, 
  sum(
    cast(cast(null as int8) as int8)), 
  nation.n_comment, 
  max(
    cast(cast(null as date) as date)), 
  nation.n_comment
from 
  nation
    left join customer
    on (nation.n_regionkey = customer.c_custkey )
where nation.n_comment is not NULL;
select  
  part.p_partkey
from 
  orders
    inner join part
    on (orders.o_comment = part.p_name )
where orders.o_totalprice = orders.o_totalprice
limit 82;
select  
  orders.o_orderdate, 
  customer.c_mktsegment, 
  customer.c_address, 
  orders.o_comment
from 
  lineitem
      right join customer
      on (lineitem.l_shipdate >= lineitem.l_receiptdate)
    inner join orders
    on (lineitem.l_commitdate > lineitem.l_shipdate)
where lineitem.l_linenumber is not NULL
limit 26;
select  
  lineitem.l_tax, 
  lineitem.l_partkey, 
  lineitem.l_extendedprice, 
  lineitem.l_shipinstruct
from 
  lineitem
where lineitem.l_linestatus is not NULL;
select  
  lineitem.l_linenumber
from 
  customer
      left join region
        inner join partsupp
          inner join lineitem
          on (lineitem.l_shipmode = lineitem.l_shipmode)
        on (lineitem.l_shipdate < lineitem.l_receiptdate)
      on (partsupp.ps_availqty < lineitem.l_partkey)
    left join part
        right join supplier
        on (part.p_partkey > supplier.s_suppkey)
      right join lineitem
      on (supplier.s_acctbal = lineitem.l_quantity )
    on (customer.c_acctbal = part.p_retailprice )
where part.p_brand <= lineitem.l_linestatus;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  region
where region.r_name is not NULL;
select  
  region.r_name
from 
  region
where region.r_comment is NULL
limit 38;
select  
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_mktsegment, 
  customer.c_phone
from 
  customer
where customer.c_phone is not NULL
limit 127;
select  
  supplier.s_phone, 
  supplier.s_address
from 
  supplier
where supplier.s_comment is not NULL
limit 123;
select  
  supplier.s_nationkey, 
  part.p_comment, 
  nation.n_comment, 
  count(
    cast(lineitem.l_linestatus as bpchar)), 
  nation.n_comment, 
  part.p_mfgr, 
  supplier.s_phone
from 
  supplier
    right join supplier
        left join part
        on (part.p_retailprice <= part.p_retailprice)
      inner join nation
        left join region
          right join part
            right join lineitem
            on (part.p_comment = lineitem.l_comment )
          on (lineitem.l_commitdate < lineitem.l_commitdate)
        on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
      on (lineitem.l_partkey >= part.p_size)
    on (supplier.s_comment is NULL)
where supplier.s_acctbal is not NULL;
select  
  part.p_type
from 
  part
where part.p_retailprice < part.p_retailprice
limit 146;
select  
  part.p_type, 
  nation.n_regionkey, 
  part.p_name, 
  part.p_comment, 
  nation.n_comment, 
  nation.n_nationkey, 
  avg(
    cast(partsupp.ps_suppkey as int4)), 
  part.p_partkey, 
  region.r_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  nation.n_name, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  count(*)
from 
  partsupp
    left join part
        right join nation
        on (part.p_retailprice = part.p_retailprice)
      inner join region
      on (part.p_retailprice = part.p_retailprice)
    on (part.p_partkey is NULL)
where part.p_mfgr is not NULL
limit 99;
select  
  count(*)
from 
  lineitem
where lineitem.l_receiptdate is not NULL
limit 49;
select  
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  sum(
    cast(nation.n_nationkey as int4)), 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_nationkey is NULL
limit 53;
select  
  lineitem.l_commitdate, 
  lineitem.l_extendedprice, 
  lineitem.l_extendedprice
from 
  lineitem
    left join lineitem
    on (lineitem.l_receiptdate is not NULL)
where lineitem.l_shipdate is NULL
limit 137;
select  
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  nation.n_comment, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
where nation.n_name is NULL;
select  
  region.r_comment, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  lineitem.l_shipmode, 
  lineitem.l_shipmode, 
  customer.c_nationkey
from 
  lineitem
      inner join customer
      on (lineitem.l_orderkey >= lineitem.l_orderkey)
    left join region
    on (lineitem.l_tax is not NULL)
where lineitem.l_receiptdate is not NULL
limit 59;
select  
  nation.n_comment, 
  nation.n_comment
from 
  region
            left join nation
            on (nation.n_name = region.r_name)
          inner join nation
            inner join orders
            on (orders.o_shippriority > nation.n_nationkey)
          on (orders.o_orderdate = orders.o_orderdate)
        left join nation
          inner join customer
          on (customer.c_phone < customer.c_phone)
        on (nation.n_name <= orders.o_clerk)
      left join partsupp
      on (orders.o_orderdate >= orders.o_orderdate)
    left join supplier
      left join lineitem
        right join nation
        on (lineitem.l_shipmode = nation.n_name)
      on (lineitem.l_returnflag >= lineitem.l_returnflag)
    on (partsupp.ps_availqty > orders.o_orderkey)
where region.r_regionkey is NULL
limit 112;
select  
  partsupp.ps_comment, 
  max(
    cast(cast(null as date) as date)), 
  partsupp.ps_partkey, 
  avg(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 102;
select  
  lineitem.l_shipinstruct
from 
  lineitem
where lineitem.l_suppkey > lineitem.l_suppkey
limit 97;
select  
  supplier.s_address, 
  nation.n_regionkey, 
  count(*)
from 
  region
    inner join nation
      left join supplier
      on (nation.n_nationkey >= nation.n_nationkey)
    on (supplier.s_phone is not NULL)
where region.r_regionkey is not NULL
limit 135;
select  
  lineitem.l_receiptdate, 
  lineitem.l_comment, 
  lineitem.l_shipinstruct, 
  lineitem.l_partkey, 
  lineitem.l_extendedprice, 
  lineitem.l_suppkey, 
  lineitem.l_returnflag, 
  lineitem.l_suppkey, 
  lineitem.l_partkey, 
  lineitem.l_discount, 
  lineitem.l_comment, 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_partkey is not NULL
limit 115;
select  
  orders.o_orderkey, 
  min(
    cast(cast(null as oid) as oid)), 
  sum(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_comment, 
  min(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  max(
    cast(orders.o_totalprice as "numeric"))
from 
  orders
where orders.o_orderstatus is not NULL;
select  
  nation.n_comment, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  sum(
    cast(cast(null as float8) as float8))
from 
  nation
where nation.n_comment is NULL
limit 160;
select  
  region.r_comment, 
  region.r_name, 
  region.r_name
from 
  region
where region.r_comment is NULL
limit 173;
select  
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_name, 
  min(
    cast(nation.n_nationkey as int4)), 
  nation.n_comment, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is NULL
limit 52;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  nation.n_nationkey, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_name
from 
  nation
where nation.n_nationkey > nation.n_nationkey
limit 91;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  nation.n_nationkey, 
  count(
    cast(supplier.s_phone as bpchar)), 
  supplier.s_suppkey
from 
  orders
      inner join nation
        left join supplier
        on (nation.n_nationkey >= supplier.s_nationkey)
      on (supplier.s_acctbal = orders.o_totalprice)
    inner join nation
        inner join region
        on (nation.n_regionkey = region.r_regionkey )
      inner join supplier
      on (supplier.s_name <= supplier.s_name)
    on (nation.n_name = nation.n_name)
where region.r_name is not NULL
limit 38;
select  
  customer.c_comment, 
  customer.c_nationkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  orders
        right join customer
        on (orders.o_orderstatus < customer.c_phone)
      right join partsupp
        inner join customer
        on (partsupp.ps_supplycost >= customer.c_acctbal)
      on (customer.c_mktsegment >= orders.o_orderstatus)
    left join orders
          right join partsupp
          on (orders.o_totalprice < orders.o_totalprice)
        inner join nation
          left join orders
          on (orders.o_clerk > nation.n_name)
        on (nation.n_regionkey = nation.n_nationkey)
      inner join lineitem
              right join orders
              on (orders.o_orderkey > orders.o_shippriority)
            left join customer
            on (lineitem.l_tax < lineitem.l_extendedprice)
          inner join partsupp
          on (lineitem.l_shipinstruct > lineitem.l_linestatus)
        inner join customer
            inner join region
            on (region.r_regionkey >= region.r_regionkey)
          right join customer
              right join region
                inner join nation
                on (region.r_regionkey = nation.n_nationkey )
              on (customer.c_acctbal > customer.c_acctbal)
            inner join customer
            on (customer.c_acctbal <= customer.c_acctbal)
          on (customer.c_mktsegment <= customer.c_mktsegment)
        on (customer.c_acctbal <= customer.c_acctbal)
      on (orders.o_custkey = lineitem.l_suppkey)
    on (orders.o_orderpriority is not NULL)
where customer.c_phone < orders.o_orderpriority;
select  
  orders.o_custkey, 
  min(
    cast(cast(null as oid) as oid)), 
  nation.n_name, 
  lineitem.l_orderkey, 
  orders.o_shippriority, 
  orders.o_orderdate, 
  nation.n_regionkey, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  lineitem.l_shipinstruct
from 
  lineitem
      inner join orders
            inner join nation
            on (orders.o_orderdate >= orders.o_orderdate)
          inner join nation
          on (nation.n_name = nation.n_name )
        inner join region
        on (orders.o_orderdate > orders.o_orderdate)
      on (nation.n_name = orders.o_clerk)
    left join customer
      inner join orders
          right join orders
          on (orders.o_totalprice < orders.o_totalprice)
        left join orders
            inner join part
            on (part.p_size < orders.o_orderkey)
          right join orders
            right join customer
            on (orders.o_orderstatus <= customer.c_phone)
          on (orders.o_orderdate > orders.o_orderdate)
        on (orders.o_orderstatus = part.p_mfgr)
      on (orders.o_orderdate < orders.o_orderdate)
    on (orders.o_orderstatus = orders.o_orderstatus )
where orders.o_orderpriority >= orders.o_orderstatus
limit 53;
select  
  supplier.s_phone, 
  lineitem.l_orderkey, 
  lineitem.l_returnflag, 
  lineitem.l_discount, 
  avg(
    cast(cast(null as int8) as int8)), 
  lineitem.l_discount, 
  lineitem.l_quantity
from 
  supplier
    inner join lineitem
    on (supplier.s_address is not NULL)
where lineitem.l_suppkey is not NULL;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_comment, 
  nation.n_comment, 
  nation.n_comment, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  orders.o_totalprice
from 
  part
      inner join region
      on (part.p_retailprice >= part.p_retailprice)
    left join region
        inner join partsupp
          right join orders
          on (orders.o_orderdate <= orders.o_orderdate)
        on (partsupp.ps_partkey = orders.o_orderkey)
      inner join supplier
            left join region
            on (supplier.s_acctbal <= supplier.s_acctbal)
          right join nation
          on (supplier.s_suppkey = nation.n_nationkey )
        left join orders
        on (supplier.s_acctbal < orders.o_totalprice)
      on (orders.o_orderkey = orders.o_orderkey)
    on (part.p_size is not NULL)
where region.r_regionkey is NULL
limit 128;
select  
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_phone is NULL
limit 122;
select  
  customer.c_custkey, 
  customer.c_custkey
from 
  customer
where customer.c_comment is not NULL;
select  
  lineitem.l_tax, 
  lineitem.l_extendedprice, 
  orders.o_orderstatus, 
  orders.o_clerk, 
  orders.o_totalprice, 
  supplier.s_phone
from 
  orders
    inner join supplier
      left join lineitem
      on (supplier.s_nationkey = lineitem.l_suppkey)
    on (lineitem.l_shipmode <= lineitem.l_returnflag)
where lineitem.l_linenumber is NULL;
select  
  lineitem.l_extendedprice, 
  max(
    cast(lineitem.l_suppkey as int4)), 
  lineitem.l_commitdate, 
  lineitem.l_extendedprice, 
  partsupp.ps_comment, 
  sum(
    cast(lineitem.l_orderkey as int4)), 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as inet) as inet))
from 
  lineitem
    left join partsupp
    on (partsupp.ps_availqty is not NULL)
where partsupp.ps_suppkey is NULL
limit 82;
select  
  region.r_comment, 
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_regionkey > region.r_regionkey
limit 129;
select  
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_phone, 
  max(
    cast(supplier.s_name as bpchar))
from 
  supplier
where supplier.s_name is not NULL;
select  
  partsupp.ps_availqty, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  supplier
      inner join partsupp
      on (supplier.s_nationkey = partsupp.ps_partkey )
    inner join customer
      left join partsupp
      on (customer.c_mktsegment = customer.c_mktsegment)
    on (customer.c_phone > customer.c_phone)
where partsupp.ps_suppkey <= partsupp.ps_suppkey
limit 64;
select  
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment
from 
  nation
where nation.n_nationkey <= nation.n_nationkey;
select  
  lineitem.l_comment, 
  region.r_name
from 
  supplier
        left join nation
          inner join lineitem
          on (lineitem.l_linestatus <= lineitem.l_shipmode)
        on (nation.n_name <= supplier.s_name)
      right join region
        inner join supplier
        on (region.r_name = supplier.s_name )
      on (lineitem.l_extendedprice > lineitem.l_tax)
    right join region
    on (lineitem.l_discount < lineitem.l_extendedprice)
where supplier.s_acctbal is not NULL;
select  
  max(
    cast(cast(null as float4) as float4)), 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_regionkey is NULL
limit 77;
select  
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as "interval") as "interval")), 
  region.r_name, 
  region.r_regionkey, 
  max(
    cast(cast(null as money) as money))
from 
  region
where region.r_regionkey is not NULL
limit 70;
select  
  lineitem.l_tax, 
  lineitem.l_receiptdate, 
  nation.n_comment, 
  lineitem.l_suppkey, 
  nation.n_regionkey
from 
  nation
    left join lineitem
    on (nation.n_comment is NULL)
where nation.n_nationkey is NULL
limit 92;
select  
  nation.n_name, 
  min(
    cast(cast(null as money) as money))
from 
  nation
    inner join lineitem
          inner join lineitem
          on (lineitem.l_linestatus >= lineitem.l_shipmode)
        right join partsupp
        on (lineitem.l_returnflag <= lineitem.l_returnflag)
      inner join orders
      on (lineitem.l_receiptdate >= lineitem.l_receiptdate)
    on (nation.n_regionkey is not NULL)
where nation.n_nationkey is not NULL
limit 105;
select  
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_name is not NULL;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  lineitem.l_shipinstruct, 
  lineitem.l_orderkey, 
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_shipdate is NULL
limit 159;
select  
  min(
    cast(cast(null as text) as text)), 
  supplier.s_comment, 
  min(
    cast(cast(null as timetz) as timetz)), 
  partsupp.ps_comment, 
  sum(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_availqty, 
  nation.n_regionkey, 
  supplier.s_phone, 
  customer.c_nationkey, 
  min(
    cast(customer.c_nationkey as int4)), 
  customer.c_custkey, 
  nation.n_nationkey, 
  customer.c_acctbal, 
  customer.c_name, 
  partsupp.ps_supplycost, 
  part.p_comment, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  customer.c_mktsegment, 
  supplier.s_acctbal, 
  nation.n_name, 
  partsupp.ps_supplycost
from 
  part
      inner join supplier
      on (supplier.s_nationkey = part.p_partkey)
    right join supplier
          left join partsupp
          on (supplier.s_acctbal >= supplier.s_acctbal)
        inner join nation
        on (supplier.s_nationkey = partsupp.ps_availqty)
      right join customer
      on (partsupp.ps_availqty = supplier.s_suppkey)
    on (customer.c_nationkey is not NULL)
where supplier.s_phone < supplier.s_name
limit 118;
select  
  supplier.s_name, 
  partsupp.ps_comment
from 
  region
      left join supplier
      on (supplier.s_suppkey = supplier.s_nationkey)
    inner join partsupp
    on (supplier.s_suppkey is NULL)
where region.r_name > supplier.s_name
limit 124;
select  
  min(
    cast(orders.o_orderstatus as bpchar)), 
  max(
    cast(cast(null as xid8) as xid8))
from 
  orders
where orders.o_orderstatus < orders.o_orderpriority;
select  
  customer.c_address, 
  partsupp.ps_comment, 
  part.p_type, 
  part.p_type, 
  customer.c_comment, 
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_address, 
  customer.c_phone, 
  partsupp.ps_suppkey, 
  customer.c_mktsegment, 
  customer.c_name
from 
  part
        inner join customer
          inner join customer
          on (customer.c_acctbal < customer.c_acctbal)
        on (customer.c_acctbal = customer.c_acctbal)
      right join customer
              inner join region
              on (customer.c_acctbal >= customer.c_acctbal)
            inner join partsupp
            on (customer.c_phone < customer.c_phone)
          right join customer
          on (customer.c_custkey >= partsupp.ps_partkey)
        left join part
        on (region.r_name <= customer.c_mktsegment)
      on (region.r_name = customer.c_mktsegment)
    right join partsupp
    on (customer.c_acctbal is not NULL)
where customer.c_acctbal >= customer.c_acctbal
limit 116;
select  
  part.p_name, 
  orders.o_orderdate, 
  orders.o_orderdate, 
  part.p_comment, 
  part.p_type, 
  part.p_brand, 
  part.p_size, 
  part.p_container, 
  part.p_partkey, 
  part.p_retailprice, 
  part.p_name, 
  part.p_brand, 
  part.p_retailprice
from 
  part
    inner join part
      inner join orders
      on (orders.o_orderdate < orders.o_orderdate)
    on (part.p_mfgr is NULL)
where part.p_brand is NULL
limit 26;
select  
  partsupp.ps_supplycost, 
  sum(
    cast(cast(null as float8) as float8)), 
  partsupp.ps_partkey, 
  customer.c_custkey, 
  partsupp.ps_comment, 
  customer.c_comment, 
  customer.c_name
from 
  customer
        right join customer
        on (customer.c_acctbal < customer.c_acctbal)
      right join partsupp
      on (customer.c_custkey >= customer.c_custkey)
    inner join partsupp
    on (customer.c_mktsegment is NULL)
where partsupp.ps_supplycost >= customer.c_acctbal;
select  
  part.p_size, 
  part.p_partkey
from 
  part
where part.p_retailprice <= part.p_retailprice
limit 23;
select  
  lineitem.l_comment
from 
  lineitem
    left join lineitem
      inner join supplier
        inner join customer
          right join nation
          on (nation.n_nationkey = nation.n_nationkey)
        on (supplier.s_acctbal < supplier.s_acctbal)
      on (customer.c_acctbal < lineitem.l_discount)
    on (lineitem.l_shipmode = customer.c_mktsegment)
where lineitem.l_quantity is not NULL
limit 136;
select  
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_supplycost is not NULL;
select  
  lineitem.l_comment, 
  orders.o_shippriority, 
  lineitem.l_extendedprice, 
  orders.o_comment, 
  lineitem.l_shipdate, 
  region.r_comment, 
  lineitem.l_shipdate, 
  orders.o_orderkey, 
  lineitem.l_quantity, 
  region.r_name, 
  region.r_regionkey, 
  lineitem.l_linestatus, 
  max(
    cast(cast(null as money) as money)), 
  region.r_name, 
  lineitem.l_linenumber
from 
  lineitem
        inner join region
          inner join lineitem
            inner join region
            on (lineitem.l_shipinstruct = region.r_name )
          on (lineitem.l_shipdate < lineitem.l_shipdate)
        on (lineitem.l_discount < lineitem.l_discount)
      left join orders
      on (region.r_name < lineitem.l_shipmode)
    right join nation
      inner join region
      on (nation.n_name >= region.r_name)
    on (lineitem.l_shipdate <= lineitem.l_receiptdate)
where region.r_name is not NULL
limit 28;
select  
  max(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_phone <= supplier.s_phone
limit 101;
select  
  customer.c_address
from 
  customer
where customer.c_nationkey < customer.c_nationkey;
select  
  nation.n_name, 
  nation.n_name, 
  supplier.s_acctbal, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_quantity, 
  orders.o_orderstatus, 
  part.p_mfgr, 
  supplier.s_address, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  orders.o_orderpriority, 
  nation.n_nationkey, 
  min(
    cast(supplier.s_phone as bpchar)), 
  supplier.s_acctbal, 
  max(
    cast(cast(null as money) as money)), 
  supplier.s_acctbal, 
  customer.c_name, 
  lineitem.l_quantity, 
  nation.n_regionkey, 
  part.p_retailprice, 
  lineitem.l_shipdate, 
  part.p_container, 
  part.p_size, 
  part.p_brand, 
  supplier.s_nationkey, 
  customer.c_nationkey, 
  nation.n_comment, 
  min(
    cast(cast(null as inet) as inet)), 
  avg(
    cast(lineitem.l_partkey as int4)), 
  min(
    cast(cast(null as float4) as float4)), 
  customer.c_phone, 
  orders.o_orderdate, 
  supplier.s_comment
from 
  nation
        inner join orders
        on (orders.o_orderkey = nation.n_regionkey)
      left join supplier
        right join part
          left join lineitem
            left join customer
            on (lineitem.l_comment = customer.c_name )
          on (lineitem.l_quantity <= lineitem.l_discount)
        on (customer.c_nationkey < lineitem.l_partkey)
      on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
    inner join supplier
    on (supplier.s_nationkey is not NULL)
where orders.o_clerk is NULL
limit 53;
select  
  customer.c_custkey, 
  min(
    cast(cast(null as text) as text)), 
  customer.c_nationkey, 
  customer.c_nationkey, 
  customer.c_custkey, 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_name, 
  max(
    cast(customer.c_acctbal as "numeric"))
from 
  customer
where customer.c_address is not NULL;
select  
  orders.o_totalprice, 
  orders.o_clerk, 
  region.r_name, 
  region.r_regionkey
from 
  region
          right join region
          on (region.r_name <= region.r_name)
        inner join lineitem
        on (lineitem.l_discount = lineitem.l_quantity)
      right join orders
      on (lineitem.l_orderkey > lineitem.l_suppkey)
    left join lineitem
    on (region.r_name < lineitem.l_shipinstruct)
where lineitem.l_returnflag > lineitem.l_returnflag
limit 54;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  customer.c_name, 
  customer.c_custkey, 
  partsupp.ps_availqty
from 
  customer
    inner join partsupp
    on (partsupp.ps_supplycost is NULL)
where customer.c_name is NULL;
select  
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as tid) as tid)), 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_availqty is NULL;
select  
  partsupp.ps_partkey, 
  max(
    cast(cast(null as xid8) as xid8)), 
  nation.n_regionkey, 
  nation.n_nationkey, 
  partsupp.ps_supplycost, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_name, 
  region.r_regionkey
from 
  partsupp
      right join nation
      on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
    inner join region
    on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
where nation.n_nationkey is NULL;
select  
  region.r_name, 
  max(
    cast(cast(null as int2) as int2))
from 
  region
where region.r_name is NULL;
select  
  nation.n_nationkey
from 
  lineitem
    inner join nation
      left join customer
      on (customer.c_acctbal = customer.c_acctbal)
    on (lineitem.l_orderkey is not NULL)
where customer.c_acctbal is NULL
limit 137;
select  
  part.p_brand
from 
  part
where part.p_partkey > part.p_size
limit 48;
select  
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  partsupp.ps_partkey, 
  part.p_name
from 
  partsupp
    inner join part
    on (partsupp.ps_partkey is not NULL)
where part.p_retailprice = partsupp.ps_supplycost;
select  
  lineitem.l_discount
from 
  orders
      left join partsupp
        left join nation
          left join lineitem
            right join lineitem
            on (lineitem.l_shipdate <= lineitem.l_receiptdate)
          on (lineitem.l_linenumber <= lineitem.l_suppkey)
        on (lineitem.l_quantity = lineitem.l_tax)
      on (lineitem.l_shipdate > lineitem.l_shipdate)
    inner join supplier
      inner join lineitem
            inner join partsupp
            on (lineitem.l_extendedprice = partsupp.ps_supplycost )
          left join nation
          on (partsupp.ps_comment = nation.n_comment )
        left join partsupp
        on (lineitem.l_shipdate < lineitem.l_receiptdate)
      on (lineitem.l_shipdate > lineitem.l_receiptdate)
    on (nation.n_name is not NULL)
where lineitem.l_linenumber is NULL
limit 80;
select  
  supplier.s_phone, 
  count(*), 
  supplier.s_comment, 
  supplier.s_phone, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_acctbal < supplier.s_acctbal;
select  
  customer.c_acctbal, 
  customer.c_name, 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  customer
where customer.c_phone is not NULL;
select  
  part.p_name
from 
  part
    inner join lineitem
    on (lineitem.l_receiptdate is not NULL)
where lineitem.l_partkey is NULL
limit 71;
select  
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_suppkey is NULL
limit 118;
select  
  supplier.s_address, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  partsupp.ps_availqty
from 
  region
          right join lineitem
          on (lineitem.l_shipdate = lineitem.l_receiptdate)
        left join partsupp
        on (lineitem.l_commitdate >= lineitem.l_receiptdate)
      left join partsupp
        inner join supplier
          right join lineitem
          on (lineitem.l_commitdate = lineitem.l_commitdate)
        on (lineitem.l_shipinstruct <= supplier.s_phone)
      on (lineitem.l_linestatus <= lineitem.l_shipmode)
    left join partsupp
    on (region.r_regionkey = partsupp.ps_partkey )
where partsupp.ps_availqty is NULL;
select  
  supplier.s_name, 
  min(
    cast(cast(null as oid) as oid))
from 
  nation
      left join customer
            right join orders
              inner join supplier
              on (orders.o_orderpriority = supplier.s_name )
            on (orders.o_orderdate > orders.o_orderdate)
          inner join supplier
            right join customer
            on (customer.c_nationkey > supplier.s_nationkey)
          on (customer.c_phone > supplier.s_name)
        left join customer
        on (customer.c_acctbal <= customer.c_acctbal)
      on (orders.o_orderdate > orders.o_orderdate)
    inner join region
    on (region.r_regionkey is NULL)
where supplier.s_suppkey < nation.n_nationkey;
select  
  orders.o_orderdate, 
  orders.o_orderdate, 
  orders.o_orderdate, 
  orders.o_orderstatus, 
  orders.o_shippriority, 
  max(
    cast(cast(null as text) as text)), 
  orders.o_orderdate, 
  orders.o_orderpriority, 
  orders.o_shippriority, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(cast(null as int8) as int8)), 
  orders.o_orderkey, 
  orders.o_clerk, 
  orders.o_orderstatus, 
  orders.o_orderdate, 
  orders.o_orderkey
from 
  orders
where orders.o_orderdate > orders.o_orderdate
limit 86;
select  
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_name is not NULL
limit 85;
select  
  min(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_comment, 
  part.p_container, 
  supplier.s_address, 
  orders.o_orderkey, 
  part.p_name
from 
  partsupp
        inner join part
        on (partsupp.ps_supplycost > part.p_retailprice)
      right join region
      on (partsupp.ps_supplycost > part.p_retailprice)
    right join partsupp
        right join supplier
        on (partsupp.ps_partkey < supplier.s_suppkey)
      inner join orders
          left join supplier
            inner join orders
            on (orders.o_custkey >= orders.o_custkey)
          on (orders.o_comment = orders.o_comment )
        inner join orders
          left join part
          on (part.p_partkey <= part.p_partkey)
        on (orders.o_totalprice <= orders.o_totalprice)
      on (supplier.s_phone >= part.p_mfgr)
    on (partsupp.ps_partkey is not NULL)
where part.p_mfgr >= orders.o_clerk;
select  
  orders.o_comment, 
  supplier.s_nationkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  sum(
    cast(cast(null as float8) as float8)), 
  orders.o_shippriority, 
  min(
    cast(cast(null as float8) as float8)), 
  part.p_brand, 
  orders.o_shippriority, 
  orders.o_comment, 
  max(
    cast(cast(null as timetz) as timetz)), 
  nation.n_regionkey, 
  nation.n_regionkey, 
  max(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_comment, 
  orders.o_custkey, 
  orders.o_orderdate, 
  nation.n_nationkey
from 
  nation
    inner join supplier
        inner join part
        on (part.p_retailprice = part.p_retailprice)
      inner join orders
      on (supplier.s_nationkey < part.p_partkey)
    on (part.p_partkey is not NULL)
where nation.n_name is NULL;
select  
  part.p_comment, 
  region.r_name, 
  part.p_size
from 
  lineitem
    inner join region
          left join part
          on (region.r_regionkey = part.p_partkey )
        inner join orders
          left join region
              right join nation
              on (region.r_regionkey = nation.n_nationkey )
            inner join lineitem
            on (region.r_name <= nation.n_name)
          on (nation.n_regionkey < orders.o_shippriority)
        on (nation.n_regionkey = region.r_regionkey)
      left join customer
          inner join partsupp
          on (customer.c_phone >= customer.c_mktsegment)
        inner join lineitem
          inner join orders
                inner join part
                  right join nation
                  on (part.p_partkey <= part.p_partkey)
                on (orders.o_custkey = nation.n_nationkey)
              right join nation
              on (part.p_retailprice <= part.p_retailprice)
            inner join partsupp
            on (orders.o_orderdate >= orders.o_orderdate)
          on (lineitem.l_partkey > lineitem.l_partkey)
        on (nation.n_name < part.p_container)
      on (orders.o_orderpriority = nation.n_name)
    on (partsupp.ps_supplycost is not NULL)
where part.p_type is not NULL
limit 83;
select  
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  max(
    cast(cast(null as inet) as inet)), 
  customer.c_phone, 
  region.r_comment, 
  orders.o_orderdate, 
  customer.c_phone, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_availqty, 
  orders.o_orderpriority, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey
from 
  region
        right join orders
        on (orders.o_clerk > orders.o_orderpriority)
      left join customer
      on (orders.o_orderdate >= orders.o_orderdate)
    right join partsupp
      left join partsupp
      on (partsupp.ps_partkey > partsupp.ps_suppkey)
    on (orders.o_orderpriority > region.r_name)
where partsupp.ps_suppkey is NULL
limit 83;
select  
  lineitem.l_suppkey, 
  max(
    cast(cast(null as text) as text))
from 
  lineitem
where lineitem.l_discount is not NULL;
select  
  min(
    cast(cast(null as "time") as "time"))
from 
  customer
where customer.c_phone is not NULL
limit 34;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  min(
    cast(cast(null as date) as date)), 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_nationkey
from 
  nation
where nation.n_nationkey is not NULL
limit 95;
select  
  customer.c_custkey, 
  orders.o_orderstatus, 
  orders.o_custkey, 
  customer.c_nationkey, 
  orders.o_custkey, 
  sum(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_custkey, 
  orders.o_orderdate, 
  orders.o_orderpriority, 
  customer.c_acctbal, 
  customer.c_name, 
  max(
    cast(cast(null as timetz) as timetz)), 
  customer.c_acctbal, 
  customer.c_nationkey, 
  avg(
    cast(orders.o_shippriority as int4)), 
  customer.c_name, 
  min(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as "interval") as "interval")), 
  orders.o_shippriority, 
  orders.o_orderstatus
from 
  orders
    left join customer
    on (customer.c_comment is NULL)
where orders.o_orderkey < orders.o_custkey
limit 100;
select  
  orders.o_orderstatus
from 
  orders
where orders.o_orderpriority > orders.o_orderstatus
limit 110;
select  
  lineitem.l_orderkey
from 
  customer
          inner join lineitem
          on (lineitem.l_shipdate < lineitem.l_shipdate)
        inner join partsupp
        on (lineitem.l_linestatus = customer.c_phone)
      inner join nation
        left join orders
        on (orders.o_orderpriority > nation.n_name)
      on (lineitem.l_commitdate <= orders.o_orderdate)
    inner join supplier
        inner join lineitem
        on (supplier.s_suppkey = lineitem.l_orderkey )
      inner join nation
      on (lineitem.l_comment = nation.n_comment )
    on (partsupp.ps_availqty = nation.n_nationkey )
where customer.c_phone is not NULL;
select  
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  orders
where orders.o_orderpriority is NULL
limit 180;
select  
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  supplier.s_comment, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_phone
from 
  supplier
where supplier.s_suppkey < supplier.s_suppkey;
select  
  lineitem.l_shipinstruct, 
  lineitem.l_partkey, 
  lineitem.l_commitdate
from 
  nation
      right join lineitem
          left join customer
          on (customer.c_custkey <= lineitem.l_orderkey)
        right join lineitem
          inner join nation
          on (lineitem.l_suppkey < lineitem.l_orderkey)
        on (lineitem.l_commitdate < lineitem.l_shipdate)
      on (nation.n_name = customer.c_phone )
    inner join lineitem
    on (nation.n_comment is not NULL)
where lineitem.l_tax is NULL;
select  
  partsupp.ps_availqty, 
  min(
    cast(cast(null as float8) as float8))
from 
  partsupp
where partsupp.ps_comment is NULL
limit 76;
select  
  orders.o_orderpriority, 
  orders.o_clerk, 
  orders.o_totalprice, 
  orders.o_totalprice, 
  min(
    cast(cast(null as money) as money)), 
  orders.o_orderpriority
from 
  orders
where orders.o_custkey is NULL
limit 105;
select  
  min(
    cast(cast(null as money) as money)), 
  part.p_type, 
  nation.n_name, 
  part.p_retailprice, 
  nation.n_regionkey, 
  nation.n_comment, 
  part.p_comment, 
  nation.n_name, 
  part.p_name, 
  nation.n_regionkey
from 
  nation
    inner join part
    on (part.p_mfgr is NULL)
where part.p_retailprice >= part.p_retailprice
limit 149;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  avg(
    cast(cast(null as int8) as int8))
from 
  region
where region.r_regionkey is not NULL
limit 150;
select  
  orders.o_clerk, 
  max(
    cast(cast(null as inet) as inet)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  supplier.s_suppkey, 
  sum(
    cast(cast(null as float4) as float4)), 
  supplier.s_comment, 
  supplier.s_phone, 
  orders.o_orderpriority, 
  max(
    cast(cast(null as oid) as oid)), 
  orders.o_custkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  supplier.s_acctbal, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  count(
    cast(orders.o_custkey as int4)), 
  orders.o_custkey, 
  supplier.s_phone, 
  orders.o_custkey, 
  orders.o_orderstatus, 
  sum(
    cast(orders.o_orderkey as int4)), 
  orders.o_custkey, 
  supplier.s_phone, 
  orders.o_totalprice, 
  supplier.s_acctbal, 
  orders.o_shippriority, 
  supplier.s_name, 
  orders.o_custkey, 
  orders.o_custkey, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_comment, 
  sum(
    cast(cast(null as float4) as float4))
from 
  orders
    inner join supplier
    on (orders.o_custkey = orders.o_orderkey)
where orders.o_clerk is not NULL
limit 101;
select  
  lineitem.l_suppkey, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  lineitem
      inner join region
          right join supplier
          on (supplier.s_phone = supplier.s_name)
        right join customer
          inner join orders
          on (customer.c_custkey > orders.o_orderkey)
        on (orders.o_orderdate <= orders.o_orderdate)
      on (lineitem.l_shipdate <= lineitem.l_receiptdate)
    inner join nation
    on (orders.o_custkey = nation.n_nationkey )
where region.r_regionkey > nation.n_nationkey;
select  
  nation.n_nationkey, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  part.p_partkey, 
  nation.n_regionkey, 
  part.p_type, 
  nation.n_name, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  nation.n_comment, 
  partsupp.ps_availqty, 
  nation.n_regionkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as text) as text)), 
  partsupp.ps_supplycost, 
  part.p_size, 
  nation.n_regionkey, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  part.p_size
from 
  partsupp
      inner join part
      on (partsupp.ps_comment = part.p_name )
    inner join nation
    on (nation.n_name is not NULL)
where partsupp.ps_suppkey is NULL
limit 137;
select  
  supplier.s_name
from 
  supplier
where supplier.s_name is NULL;
select  
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_name <= region.r_name;
select  
  lineitem.l_extendedprice, 
  min(
    cast(lineitem.l_suppkey as int4))
from 
  lineitem
where lineitem.l_receiptdate <= lineitem.l_receiptdate
limit 103;
select  
  region.r_comment, 
  partsupp.ps_comment
from 
  region
    left join partsupp
      inner join part
      on (part.p_retailprice = partsupp.ps_supplycost)
    on (part.p_retailprice < partsupp.ps_supplycost)
where part.p_brand < part.p_brand
limit 100;
select  
  orders.o_totalprice, 
  orders.o_orderpriority, 
  orders.o_orderstatus
from 
  orders
where orders.o_totalprice >= orders.o_totalprice;
select  
  orders.o_orderkey, 
  orders.o_custkey, 
  orders.o_orderstatus, 
  orders.o_shippriority, 
  orders.o_orderpriority
from 
  orders
where orders.o_totalprice is NULL;
select  
  nation.n_comment
from 
  customer
    right join nation
    on (customer.c_phone is not NULL)
where nation.n_comment is not NULL
limit 89;
select  
  region.r_regionkey, 
  region.r_comment, 
  nation.n_nationkey, 
  orders.o_orderstatus, 
  max(
    cast(cast(null as "time") as "time"))
from 
  nation
    left join customer
        inner join part
            left join region
            on (part.p_size = part.p_size)
          inner join nation
          on (part.p_partkey <= part.p_partkey)
        on (customer.c_mktsegment >= customer.c_phone)
      left join customer
        inner join orders
        on (orders.o_totalprice > orders.o_totalprice)
      on (orders.o_orderdate >= orders.o_orderdate)
    on (nation.n_name = region.r_name )
where orders.o_orderpriority >= part.p_container
limit 82;
select  
  lineitem.l_linenumber
from 
  customer
    left join lineitem
      inner join orders
      on (lineitem.l_commitdate >= lineitem.l_shipdate)
    on (customer.c_address = orders.o_comment )
where lineitem.l_orderkey is not NULL
limit 98;
select  
  max(
    cast(cast(null as date) as date)), 
  part.p_mfgr
from 
  part
where part.p_partkey = part.p_size
limit 89;
select  
  orders.o_orderpriority, 
  region.r_name, 
  max(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_orderkey, 
  part.p_container, 
  orders.o_orderkey, 
  lineitem.l_shipinstruct, 
  orders.o_shippriority
from 
  lineitem
        inner join orders
            left join nation
            on (orders.o_totalprice <= orders.o_totalprice)
          inner join lineitem
              right join region
              on (lineitem.l_receiptdate > lineitem.l_shipdate)
            right join lineitem
            on (lineitem.l_suppkey < lineitem.l_partkey)
          on (nation.n_nationkey = lineitem.l_orderkey )
        on (region.r_regionkey < lineitem.l_partkey)
      inner join part
      on (lineitem.l_suppkey <= orders.o_shippriority)
    inner join orders
    on (lineitem.l_linestatus is NULL)
where nation.n_nationkey is not NULL;
select  
  sum(
    cast(lineitem.l_partkey as int4)), 
  lineitem.l_discount, 
  min(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_comment, 
  lineitem.l_commitdate
from 
  partsupp
    right join lineitem
    on (lineitem.l_quantity <= lineitem.l_tax)
where lineitem.l_receiptdate is NULL
limit 179;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_nationkey, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_nationkey is not NULL
limit 119;
select  
  min(
    cast(partsupp.ps_partkey as int4)), 
  supplier.s_acctbal
from 
  customer
      left join supplier
          left join partsupp
          on (partsupp.ps_supplycost > partsupp.ps_supplycost)
        right join region
        on (supplier.s_phone < supplier.s_phone)
      on (customer.c_nationkey <= supplier.s_nationkey)
    inner join partsupp
          inner join orders
          on (orders.o_orderkey <= partsupp.ps_partkey)
        inner join region
        on (orders.o_orderkey = region.r_regionkey )
      right join supplier
      on (orders.o_clerk >= orders.o_orderstatus)
    on (partsupp.ps_partkey is NULL)
where customer.c_mktsegment <= customer.c_mktsegment;
select  
  region.r_regionkey, 
  part.p_retailprice, 
  region.r_name, 
  part.p_brand, 
  part.p_name, 
  region.r_regionkey, 
  part.p_type, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  count(
    cast(region.r_regionkey as int4)), 
  region.r_regionkey, 
  region.r_regionkey, 
  part.p_type
from 
  region
      right join region
      on (region.r_name <= region.r_name)
    right join part
    on (region.r_comment is NULL)
where part.p_retailprice = part.p_retailprice
limit 40;
select  
  orders.o_orderdate
from 
  orders
where orders.o_custkey is not NULL
limit 103;
select  
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  supplier.s_phone
from 
  supplier
where supplier.s_nationkey is not NULL;
select  
  customer.c_phone, 
  min(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as int2) as int2)), 
  customer.c_name, 
  customer.c_custkey, 
  customer.c_nationkey, 
  customer.c_mktsegment, 
  customer.c_name, 
  max(
    cast(cast(null as int2) as int2))
from 
  customer
where customer.c_mktsegment <= customer.c_mktsegment
limit 11;
select  
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 83;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as float8) as float8))
from 
  partsupp
where partsupp.ps_comment is NULL;
select  
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_availqty, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_supplycost <= partsupp.ps_supplycost;
select  
  min(
    cast(cast(null as float8) as float8)), 
  customer.c_mktsegment
from 
  customer
where customer.c_address is NULL;
select  
  max(
    cast(cast(null as text) as text)), 
  avg(
    cast(supplier.s_nationkey as int4)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_suppkey, 
  partsupp.ps_suppkey
from 
  supplier
    left join region
      inner join partsupp
      on (partsupp.ps_supplycost > partsupp.ps_supplycost)
    on (supplier.s_nationkey = partsupp.ps_partkey )
where partsupp.ps_supplycost is NULL
limit 82;
select  
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  region
where region.r_comment is not NULL;
select  
  supplier.s_acctbal, 
  max(
    cast(cast(null as float4) as float4)), 
  supplier.s_nationkey
from 
  supplier
where supplier.s_suppkey is NULL
limit 89;
select  
  lineitem.l_shipdate, 
  lineitem.l_quantity, 
  lineitem.l_partkey, 
  lineitem.l_comment
from 
  lineitem
where lineitem.l_discount is not NULL;
select  
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_shipmode >= lineitem.l_linestatus;
select  
  supplier.s_phone, 
  supplier.s_suppkey
from 
  customer
    right join supplier
    on (customer.c_acctbal < customer.c_acctbal)
where supplier.s_nationkey is not NULL
limit 133;
select  
  lineitem.l_orderkey, 
  lineitem.l_shipinstruct, 
  lineitem.l_receiptdate, 
  lineitem.l_shipmode, 
  lineitem.l_quantity
from 
  lineitem
where lineitem.l_comment is not NULL
limit 106;
select  
  customer.c_phone, 
  part.p_name, 
  max(
    cast(cast(null as timetz) as timetz)), 
  nation.n_nationkey, 
  partsupp.ps_availqty
from 
  region
            left join part
              right join nation
              on (part.p_retailprice = part.p_retailprice)
            on (region.r_name = nation.n_name )
          inner join supplier
            inner join part
            on (supplier.s_name = part.p_brand)
          on (part.p_container < part.p_container)
        inner join supplier
        on (supplier.s_phone > part.p_container)
      left join part
            left join region
            on (part.p_partkey = region.r_regionkey )
          right join customer
            right join lineitem
            on (customer.c_nationkey <= lineitem.l_orderkey)
          on (lineitem.l_commitdate = lineitem.l_shipdate)
        inner join part
        on (lineitem.l_extendedprice < lineitem.l_quantity)
      on (lineitem.l_tax <= part.p_retailprice)
    right join partsupp
    on (lineitem.l_orderkey is NULL)
where region.r_regionkey is NULL;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  nation.n_regionkey
from 
  nation
where nation.n_comment is not NULL
limit 136;
select  
  nation.n_name, 
  nation.n_nationkey, 
  partsupp.ps_availqty
from 
  partsupp
    inner join nation
      inner join nation
      on (nation.n_nationkey > nation.n_nationkey)
    on (partsupp.ps_availqty is NULL)
where nation.n_nationkey is NULL;
select  
  customer.c_comment, 
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_custkey, 
  customer.c_nationkey
from 
  customer
where customer.c_name is NULL
limit 81;
select  
  part.p_comment, 
  part.p_comment, 
  part.p_size, 
  part.p_retailprice, 
  part.p_type, 
  part.p_container, 
  part.p_partkey, 
  max(
    cast(cast(null as int2) as int2)), 
  part.p_comment, 
  part.p_size, 
  part.p_container, 
  part.p_name, 
  part.p_size, 
  part.p_retailprice, 
  part.p_comment
from 
  part
where part.p_type is NULL;
select  
  min(
    cast(cast(null as float4) as float4)), 
  lineitem.l_suppkey, 
  part.p_partkey
from 
  lineitem
    inner join part
    on (part.p_type is not NULL)
where lineitem.l_shipdate is NULL
limit 111;
select  
  customer.c_comment, 
  partsupp.ps_partkey, 
  customer.c_mktsegment, 
  customer.c_phone, 
  partsupp.ps_availqty, 
  region.r_regionkey, 
  region.r_name, 
  orders.o_custkey, 
  part.p_partkey, 
  nation.n_regionkey, 
  min(
    cast(cast(null as "time") as "time")), 
  nation.n_regionkey
from 
  customer
    left join partsupp
          inner join lineitem
          on (partsupp.ps_supplycost <= lineitem.l_extendedprice)
        right join nation
              inner join lineitem
              on (lineitem.l_shipmode >= nation.n_name)
            inner join orders
            on (orders.o_clerk > orders.o_orderpriority)
          left join orders
          on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
        on (lineitem.l_discount = orders.o_totalprice )
      left join region
            left join customer
            on (customer.c_mktsegment = customer.c_mktsegment)
          right join part
            right join partsupp
              inner join partsupp
              on (partsupp.ps_comment = partsupp.ps_comment )
            on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
          on (customer.c_nationkey < partsupp.ps_partkey)
        inner join part
        on (part.p_mfgr >= part.p_container)
      on (lineitem.l_discount = lineitem.l_extendedprice)
    on (orders.o_totalprice <= partsupp.ps_supplycost)
where partsupp.ps_suppkey is not NULL
limit 90;
select  
  region.r_comment, 
  avg(
    cast(cast(null as int8) as int8)), 
  region.r_name
from 
  region
where region.r_name >= region.r_name
limit 94;
select  
  partsupp.ps_availqty
from 
  partsupp
            right join supplier
              inner join part
              on (part.p_size >= part.p_partkey)
            on (partsupp.ps_suppkey = supplier.s_suppkey )
          inner join supplier
          on (supplier.s_phone < supplier.s_phone)
        inner join supplier
        on (partsupp.ps_supplycost >= supplier.s_acctbal)
      inner join nation
      on (supplier.s_nationkey > supplier.s_suppkey)
    inner join lineitem
        inner join region
        on (lineitem.l_discount > lineitem.l_tax)
      right join partsupp
      on (lineitem.l_linestatus > lineitem.l_shipinstruct)
    on (part.p_comment = region.r_comment )
where supplier.s_suppkey is not NULL
limit 112;
select  
  region.r_name, 
  region.r_name, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_comment, 
  region.r_regionkey, 
  part.p_mfgr, 
  region.r_name
from 
  region
        inner join lineitem
        on (lineitem.l_shipinstruct > lineitem.l_linestatus)
      right join region
        right join part
        on (part.p_retailprice = part.p_retailprice)
      on (lineitem.l_receiptdate >= lineitem.l_receiptdate)
    inner join lineitem
    on (part.p_comment is not NULL)
where part.p_partkey is not NULL;
select  
  lineitem.l_discount, 
  min(
    cast(lineitem.l_discount as "numeric"))
from 
  lineitem
where lineitem.l_comment is NULL
limit 133;
select  
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_address, 
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_nationkey
from 
  customer
where customer.c_mktsegment is NULL
limit 127;
select  
  customer.c_address, 
  customer.c_mktsegment, 
  customer.c_custkey, 
  customer.c_comment, 
  customer.c_name
from 
  customer
where customer.c_nationkey is not NULL;
select  
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_nationkey
from 
  nation
where nation.n_name is NULL
limit 23;
select  
  lineitem.l_shipinstruct, 
  nation.n_name, 
  part.p_partkey, 
  region.r_regionkey, 
  count(*), 
  nation.n_regionkey
from 
  part
    left join region
            inner join partsupp
            on (region.r_comment = partsupp.ps_comment )
          inner join lineitem
          on (lineitem.l_shipmode > lineitem.l_returnflag)
        right join customer
        on (lineitem.l_tax >= customer.c_acctbal)
      right join nation
      on (partsupp.ps_comment = nation.n_comment )
    on (nation.n_comment is not NULL)
where customer.c_phone > lineitem.l_shipinstruct
limit 81;
select  
  nation.n_nationkey
from 
  lineitem
      left join supplier
      on (supplier.s_name < supplier.s_name)
    right join nation
    on (supplier.s_nationkey is NULL)
where nation.n_regionkey is NULL;
select  
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  supplier.s_comment, 
  supplier.s_comment, 
  nation.n_regionkey, 
  region.r_comment, 
  max(
    cast(cast(null as timetz) as timetz)), 
  nation.n_name, 
  nation.n_name, 
  nation.n_comment
from 
  partsupp
    inner join region
          left join part
            inner join supplier
            on (part.p_mfgr > part.p_container)
          on (region.r_comment = part.p_name )
        left join nation
        on (part.p_container >= part.p_brand)
      inner join partsupp
        inner join nation
        on (nation.n_regionkey <= nation.n_regionkey)
      on (part.p_mfgr = supplier.s_name)
    on (part.p_retailprice >= supplier.s_acctbal)
where part.p_container is NULL
limit 42;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as text) as text)), 
  min(
    cast(cast(null as date) as date)), 
  partsupp.ps_comment, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 56;
select  
  partsupp.ps_availqty, 
  count(*)
from 
  supplier
    left join partsupp
    on (partsupp.ps_suppkey is NULL)
where partsupp.ps_comment is NULL
limit 150;
select  
  supplier.s_comment, 
  count(*), 
  supplier.s_address
from 
  supplier
    inner join supplier
    on (supplier.s_acctbal = supplier.s_acctbal)
where supplier.s_phone is not NULL
limit 104;
select  
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 47;
select  
  orders.o_orderkey, 
  orders.o_orderkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  region
      inner join lineitem
      on (lineitem.l_commitdate >= lineitem.l_shipdate)
    inner join partsupp
        right join lineitem
        on (lineitem.l_linestatus > lineitem.l_shipinstruct)
      left join orders
              right join orders
              on (orders.o_orderpriority = orders.o_orderstatus )
            inner join partsupp
              left join orders
              on (orders.o_orderkey < partsupp.ps_availqty)
            on (orders.o_orderstatus >= orders.o_orderstatus)
          inner join customer
            inner join partsupp
            on (customer.c_acctbal <= customer.c_acctbal)
          on (orders.o_shippriority = customer.c_custkey )
        inner join customer
        on (orders.o_totalprice >= partsupp.ps_supplycost)
      on (partsupp.ps_partkey = orders.o_orderkey )
    on (customer.c_nationkey is NULL)
where partsupp.ps_comment is NULL
limit 19;
select  
  part.p_size, 
  part.p_size, 
  part.p_retailprice
from 
  part
where part.p_size < part.p_size
limit 73;
select  
  nation.n_regionkey, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  nation
where nation.n_name < nation.n_name
limit 84;
select  
  orders.o_custkey, 
  lineitem.l_partkey
from 
  lineitem
        left join lineitem
        on (lineitem.l_partkey = lineitem.l_suppkey)
      right join region
      on (lineitem.l_linenumber < lineitem.l_suppkey)
    left join part
      inner join orders
      on (orders.o_clerk < orders.o_clerk)
    on (lineitem.l_shipdate < lineitem.l_commitdate)
where lineitem.l_shipdate > lineitem.l_shipdate;
select  
  orders.o_comment, 
  orders.o_orderstatus, 
  orders.o_orderpriority, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  orders.o_shippriority, 
  orders.o_shippriority, 
  orders.o_comment, 
  orders.o_custkey, 
  orders.o_clerk, 
  orders.o_clerk
from 
  orders
where orders.o_orderdate is NULL
limit 10;
select  
  orders.o_orderkey, 
  customer.c_address, 
  region.r_comment, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(orders.o_orderdate as date)), 
  customer.c_custkey
from 
  orders
        left join region
        on (orders.o_shippriority >= orders.o_custkey)
      left join orders
      on (orders.o_shippriority > orders.o_custkey)
    right join customer
    on (region.r_comment = customer.c_name )
where orders.o_orderkey <= orders.o_shippriority
limit 89;
select  
  min(
    cast(cast(null as float8) as float8)), 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is NULL
limit 165;
select  
  part.p_comment, 
  min(
    cast(cast(null as timetz) as timetz)), 
  part.p_size
from 
  part
where part.p_partkey is not NULL
limit 114;
select  
  region.r_comment, 
  region.r_regionkey
from 
  region
    inner join lineitem
    on (region.r_comment is NULL)
where lineitem.l_linenumber is NULL;
select  
  region.r_comment
from 
  nation
      right join region
        inner join region
        on (region.r_regionkey <= region.r_regionkey)
      on (region.r_regionkey = region.r_regionkey)
    left join lineitem
    on (lineitem.l_shipmode is not NULL)
where lineitem.l_commitdate is not NULL
limit 174;
select  
  supplier.s_address, 
  partsupp.ps_partkey, 
  supplier.s_name, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  avg(
    cast(supplier.s_nationkey as int4)), 
  supplier.s_address, 
  partsupp.ps_suppkey, 
  supplier.s_suppkey
from 
  partsupp
    inner join supplier
    on (partsupp.ps_suppkey = supplier.s_suppkey )
where supplier.s_suppkey is not NULL;
select  
  nation.n_regionkey
from 
  nation
where nation.n_regionkey is NULL
limit 63;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as float8) as float8)), 
  customer.c_phone, 
  customer.c_comment, 
  customer.c_comment, 
  customer.c_address, 
  customer.c_name, 
  customer.c_mktsegment, 
  customer.c_phone, 
  sum(
    cast(cast(null as int2) as int2)), 
  customer.c_name, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_mktsegment, 
  customer.c_acctbal, 
  customer.c_comment
from 
  customer
where customer.c_acctbal = customer.c_acctbal
limit 153;
select  
  lineitem.l_discount, 
  avg(
    cast(lineitem.l_suppkey as int4)), 
  lineitem.l_suppkey
from 
  lineitem
where lineitem.l_orderkey is NULL;
select  
  nation.n_regionkey
from 
  nation
where nation.n_regionkey is NULL
limit 51;
select  
  orders.o_clerk, 
  orders.o_clerk
from 
  orders
where orders.o_comment is not NULL;
select  
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_suppkey < partsupp.ps_availqty;
select  
  region.r_comment, 
  customer.c_comment, 
  region.r_name
from 
  lineitem
          right join customer
          on (lineitem.l_comment = customer.c_name )
        inner join customer
            left join region
            on (customer.c_name = region.r_comment )
          right join orders
          on (orders.o_totalprice <= orders.o_totalprice)
        on (orders.o_orderpriority >= customer.c_phone)
      right join partsupp
        inner join part
        on (part.p_container = part.p_brand)
      on (lineitem.l_extendedprice = part.p_retailprice )
    right join supplier
      inner join nation
          inner join region
          on (nation.n_nationkey < region.r_regionkey)
        inner join supplier
        on (nation.n_name <= region.r_name)
      on (supplier.s_acctbal <= supplier.s_acctbal)
    on (customer.c_name is not NULL)
where orders.o_orderdate < orders.o_orderdate
limit 31;
select  
  partsupp.ps_suppkey, 
  part.p_mfgr, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as text) as text)), 
  nation.n_name, 
  part.p_type, 
  orders.o_totalprice, 
  orders.o_orderpriority, 
  partsupp.ps_availqty
from 
  lineitem
        right join part
          right join part
            inner join nation
            on (part.p_size = nation.n_nationkey )
          on (part.p_retailprice >= part.p_retailprice)
        on (lineitem.l_extendedprice >= part.p_retailprice)
      right join customer
            inner join orders
            on (orders.o_orderdate > orders.o_orderdate)
          inner join nation
            inner join partsupp
                left join orders
                on (orders.o_orderpriority >= orders.o_orderpriority)
              inner join part
              on (orders.o_orderstatus = part.p_mfgr )
            on (partsupp.ps_suppkey >= part.p_size)
          on (part.p_retailprice = part.p_retailprice)
        inner join part
        on (part.p_partkey < orders.o_orderkey)
      on (orders.o_totalprice = orders.o_totalprice)
    inner join partsupp
      left join supplier
      on (partsupp.ps_partkey > partsupp.ps_partkey)
    on (lineitem.l_comment is not NULL)
where part.p_container is NULL
limit 127;
select  
  orders.o_orderdate, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  min(
    cast(cast(null as "time") as "time")), 
  orders.o_comment
from 
  supplier
            left join lineitem
            on (lineitem.l_suppkey < supplier.s_suppkey)
          inner join orders
            left join orders
            on (orders.o_orderdate <= orders.o_orderdate)
          on (orders.o_orderkey >= orders.o_shippriority)
        left join partsupp
            inner join partsupp
            on (partsupp.ps_suppkey >= partsupp.ps_suppkey)
          inner join customer
          on (partsupp.ps_suppkey >= partsupp.ps_partkey)
        on (lineitem.l_orderkey <= customer.c_custkey)
      inner join partsupp
      on (partsupp.ps_supplycost >= orders.o_totalprice)
    inner join orders
    on (orders.o_orderkey < orders.o_custkey)
where orders.o_orderdate >= lineitem.l_shipdate;
select  
  min(
    cast(cast(null as float8) as float8)), 
  part.p_mfgr, 
  part.p_mfgr, 
  part.p_partkey, 
  sum(
    cast(cast(null as int8) as int8)), 
  part.p_partkey, 
  part.p_brand, 
  count(
    cast(part.p_mfgr as bpchar)), 
  part.p_brand, 
  part.p_size
from 
  part
where part.p_name is not NULL;
select  
  supplier.s_phone, 
  lineitem.l_shipinstruct, 
  supplier.s_address
from 
  part
      inner join supplier
        right join orders
        on (supplier.s_phone = orders.o_orderstatus )
      on (orders.o_orderdate <= orders.o_orderdate)
    inner join lineitem
    on (part.p_partkey is NULL)
where part.p_name is not NULL
limit 72;
select  
  orders.o_orderdate, 
  orders.o_orderstatus, 
  orders.o_comment, 
  orders.o_comment
from 
  orders
where orders.o_orderkey > orders.o_shippriority;
select  
  lineitem.l_linenumber, 
  region.r_name, 
  lineitem.l_suppkey, 
  lineitem.l_discount, 
  min(
    cast(cast(null as float4) as float4)), 
  region.r_comment, 
  region.r_regionkey, 
  lineitem.l_extendedprice, 
  lineitem.l_partkey, 
  lineitem.l_returnflag, 
  lineitem.l_quantity, 
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  region
    inner join lineitem
    on (lineitem.l_returnflag is NULL)
where region.r_comment is NULL;
select  
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_phone
from 
  supplier
where supplier.s_acctbal > supplier.s_acctbal
limit 140;
select  
  customer.c_acctbal, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  customer
        right join customer
          inner join supplier
            right join orders
            on (supplier.s_comment = orders.o_comment )
          on (orders.o_orderstatus > supplier.s_name)
        on (supplier.s_acctbal = supplier.s_acctbal)
      left join region
        right join lineitem
        on (lineitem.l_shipinstruct > lineitem.l_linestatus)
      on (lineitem.l_tax >= supplier.s_acctbal)
    right join region
    on (supplier.s_nationkey = region.r_regionkey )
where orders.o_orderpriority <= region.r_name
limit 100;
select  
  supplier.s_acctbal
from 
  supplier
      inner join nation
      on (supplier.s_acctbal > supplier.s_acctbal)
    right join lineitem
      inner join part
      on (part.p_partkey >= part.p_size)
    on (supplier.s_address is NULL)
where lineitem.l_linenumber >= supplier.s_suppkey;
select  
  supplier.s_comment, 
  nation.n_comment, 
  nation.n_name, 
  supplier.s_phone, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  nation.n_nationkey, 
  nation.n_nationkey, 
  supplier.s_nationkey, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  nation.n_regionkey, 
  supplier.s_name, 
  nation.n_regionkey, 
  supplier.s_phone, 
  nation.n_regionkey, 
  supplier.s_name, 
  nation.n_nationkey, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  nation.n_regionkey, 
  nation.n_comment
from 
  supplier
    right join nation
    on (nation.n_name is NULL)
where nation.n_regionkey > nation.n_regionkey
limit 119;
select  
  orders.o_orderpriority, 
  orders.o_clerk, 
  orders.o_orderstatus, 
  orders.o_orderstatus, 
  orders.o_comment, 
  orders.o_orderpriority, 
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_clerk, 
  orders.o_orderstatus
from 
  orders
where orders.o_clerk > orders.o_clerk;
select  
  partsupp.ps_supplycost, 
  nation.n_name, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_partkey, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_comment, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  partsupp
    inner join nation
    on (nation.n_name < nation.n_name)
where nation.n_name > nation.n_name
limit 37;
select  
  nation.n_nationkey, 
  nation.n_name, 
  max(
    cast(cast(null as xid8) as xid8)), 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_comment, 
  min(
    cast(cast(null as "interval") as "interval")), 
  nation.n_comment, 
  nation.n_regionkey, 
  sum(
    cast(cast(null as float4) as float4))
from 
  nation
where nation.n_name <= nation.n_name;
select  
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is NULL;
select  
  nation.n_regionkey, 
  orders.o_shippriority, 
  lineitem.l_partkey, 
  lineitem.l_receiptdate, 
  lineitem.l_quantity, 
  region.r_comment, 
  lineitem.l_discount, 
  nation.n_name, 
  nation.n_regionkey
from 
  nation
    inner join orders
              inner join region
              on (orders.o_shippriority >= orders.o_shippriority)
            right join region
            on (orders.o_orderdate < orders.o_orderdate)
          left join lineitem
          on (lineitem.l_discount >= lineitem.l_quantity)
        inner join nation
        on (region.r_comment = nation.n_comment )
      inner join nation
      on (lineitem.l_returnflag = lineitem.l_shipinstruct)
    on (lineitem.l_receiptdate >= lineitem.l_receiptdate)
where orders.o_totalprice is NULL;
select  
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as xid8) as xid8))
from 
  region
    inner join region
    on (region.r_regionkey is NULL)
where region.r_comment is not NULL
limit 186;
select  
  part.p_retailprice, 
  max(
    cast(cast(null as "time") as "time")), 
  part.p_brand
from 
  nation
        left join part
        on (part.p_retailprice <= part.p_retailprice)
      left join part
      on (part.p_retailprice > part.p_retailprice)
    right join region
    on (part.p_mfgr is not NULL)
where part.p_comment is not NULL;
select  
  orders.o_custkey, 
  nation.n_name, 
  nation.n_name, 
  max(
    cast(cast(null as float4) as float4))
from 
  region
            right join nation
            on (nation.n_name < nation.n_name)
          left join orders
          on (region.r_name >= nation.n_name)
        right join region
        on (orders.o_totalprice > orders.o_totalprice)
      left join nation
        left join partsupp
        on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
      on (orders.o_shippriority < orders.o_shippriority)
    inner join orders
      right join nation
      on (orders.o_orderdate = orders.o_orderdate)
    on (orders.o_orderstatus = nation.n_name )
where partsupp.ps_partkey is not NULL;
select  
  max(
    cast(supplier.s_suppkey as int4)), 
  part.p_mfgr, 
  part.p_mfgr, 
  supplier.s_phone
from 
  supplier
    inner join part
    on (supplier.s_comment is not NULL)
where supplier.s_phone < supplier.s_phone
limit 115;
select  
  sum(
    cast(cast(null as float4) as float4))
from 
  region
where region.r_name < region.r_name
limit 105;
select  
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_phone, 
  customer.c_nationkey
from 
  customer
where customer.c_acctbal is not NULL
limit 134;
select  
  supplier.s_suppkey, 
  max(
    cast(cast(null as float8) as float8)), 
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_name is NULL
limit 58;
select  
  min(
    cast(cast(null as "time") as "time")), 
  lineitem.l_tax
from 
  lineitem
where lineitem.l_shipmode = lineitem.l_linestatus
limit 131;
select  
  max(
    cast(cast(null as text) as text)), 
  region.r_name, 
  region.r_name, 
  supplier.s_name, 
  part.p_retailprice, 
  part.p_brand, 
  min(
    cast(cast(null as inet) as inet)), 
  region.r_name, 
  supplier.s_name, 
  supplier.s_suppkey
from 
  part
    inner join region
      right join supplier
      on (supplier.s_phone < supplier.s_phone)
    on (region.r_name is not NULL)
where supplier.s_acctbal = part.p_retailprice
limit 25;
select  
  lineitem.l_shipdate, 
  nation.n_name
from 
  nation
    inner join part
      right join region
        right join nation
              inner join supplier
                left join lineitem
                on (supplier.s_phone = lineitem.l_returnflag )
              on (nation.n_regionkey >= lineitem.l_partkey)
            right join region
            on (lineitem.l_receiptdate < lineitem.l_receiptdate)
          inner join supplier
            left join lineitem
              inner join region
              on (lineitem.l_extendedprice >= lineitem.l_quantity)
            on (supplier.s_name = region.r_name )
          on (supplier.s_name <= supplier.s_name)
        on (region.r_regionkey < nation.n_nationkey)
      on (part.p_comment = lineitem.l_comment )
    on (part.p_mfgr is not NULL)
where region.r_comment is not NULL;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment
from 
  nation
where nation.n_nationkey is not NULL
limit 76;
select  
  region.r_regionkey, 
  region.r_name, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  region
where region.r_name is NULL
limit 99;
select  
  part.p_comment
from 
  part
where part.p_comment is not NULL;
select  
  part.p_brand, 
  part.p_size, 
  part.p_brand, 
  part.p_name, 
  part.p_retailprice
from 
  part
where part.p_retailprice is not NULL
limit 103;
select  
  part.p_type
from 
  part
where part.p_container is NULL
limit 98;
select  
  nation.n_name, 
  nation.n_name
from 
  nation
where nation.n_name is NULL
limit 82;
select  
  supplier.s_suppkey
from 
  region
        inner join orders
        on (orders.o_clerk >= orders.o_orderstatus)
      left join region
          left join part
          on (part.p_retailprice >= part.p_retailprice)
        left join supplier
        on (supplier.s_suppkey < part.p_partkey)
      on (orders.o_orderdate = orders.o_orderdate)
    inner join supplier
    on (part.p_container is NULL)
where supplier.s_nationkey > part.p_partkey
limit 125;
select  
  orders.o_custkey, 
  customer.c_comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_extendedprice, 
  avg(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_phone, 
  min(
    cast(cast(null as "time") as "time")), 
  lineitem.l_suppkey
from 
  orders
    inner join region
          left join orders
          on (region.r_name = orders.o_orderstatus)
        right join nation
        on (nation.n_name >= nation.n_name)
      inner join part
          inner join customer
          on (customer.c_acctbal >= customer.c_acctbal)
        left join lineitem
        on (lineitem.l_receiptdate <= lineitem.l_commitdate)
      on (orders.o_shippriority <= orders.o_orderkey)
    on (orders.o_orderkey = region.r_regionkey )
where lineitem.l_receiptdate >= orders.o_orderdate
limit 51;
select  
  nation.n_comment, 
  part.p_container, 
  nation.n_regionkey, 
  min(
    cast(cast(null as float4) as float4)), 
  nation.n_name, 
  nation.n_name
from 
  part
    inner join nation
    on (part.p_comment = nation.n_comment )
where nation.n_comment is NULL
limit 127;
select  
  supplier.s_address, 
  min(
    cast(cast(null as timetz) as timetz)), 
  sum(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_acctbal, 
  customer.c_custkey, 
  max(
    cast(supplier.s_nationkey as int4))
from 
  customer
        inner join partsupp
        on (customer.c_custkey > partsupp.ps_suppkey)
      left join supplier
          inner join region
          on (supplier.s_acctbal = supplier.s_acctbal)
        left join part
        on (supplier.s_address = part.p_name )
      on (partsupp.ps_partkey = region.r_regionkey )
    inner join supplier
    on (partsupp.ps_availqty is NULL)
where region.r_regionkey <= part.p_size;
select  
  nation.n_name
from 
  part
    right join part
        left join part
          inner join nation
          on (part.p_container = nation.n_name )
        on (part.p_size = part.p_partkey )
      left join partsupp
        inner join part
        on (part.p_mfgr = part.p_mfgr)
      on (part.p_brand < part.p_container)
    on (partsupp.ps_partkey <= part.p_partkey)
where partsupp.ps_partkey is not NULL
limit 168;
select  
  customer.c_custkey
from 
  customer
    inner join region
    on (region.r_comment is NULL)
where customer.c_address is NULL
limit 126;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  lineitem.l_shipinstruct, 
  supplier.s_address, 
  orders.o_shippriority, 
  supplier.s_acctbal
from 
  part
      inner join nation
      on (part.p_mfgr >= part.p_brand)
    inner join lineitem
        left join orders
          inner join supplier
            right join customer
            on (customer.c_acctbal = supplier.s_acctbal)
          on (supplier.s_nationkey >= customer.c_custkey)
        on (lineitem.l_orderkey < lineitem.l_partkey)
      inner join part
        left join part
        on (part.p_mfgr = part.p_brand)
      on (lineitem.l_shipdate <= lineitem.l_receiptdate)
    on (part.p_partkey >= supplier.s_nationkey)
where supplier.s_acctbal is not NULL;
select  
  part.p_size, 
  part.p_mfgr, 
  part.p_mfgr, 
  part.p_container, 
  part.p_retailprice, 
  part.p_size, 
  region.r_regionkey, 
  part.p_name, 
  part.p_partkey, 
  part.p_size, 
  region.r_regionkey, 
  min(
    cast(cast(null as inet) as inet))
from 
  part
    left join region
    on (part.p_comment = region.r_comment )
where part.p_mfgr is NULL
limit 100;
select  
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_mktsegment
from 
  customer
where customer.c_nationkey is not NULL
limit 159;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  orders.o_shippriority, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  sum(
    cast(part.p_retailprice as "numeric")), 
  part.p_name, 
  orders.o_orderkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  region.r_name, 
  region.r_name, 
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_orderpriority, 
  partsupp.ps_supplycost, 
  region.r_name
from 
  partsupp
      left join part
        right join nation
        on (nation.n_name >= nation.n_name)
      on (part.p_brand < part.p_container)
    inner join region
      inner join orders
      on (orders.o_custkey < orders.o_shippriority)
    on (region.r_comment is NULL)
where partsupp.ps_supplycost is NULL
limit 166;
select  
  customer.c_mktsegment, 
  customer.c_acctbal
from 
  customer
where customer.c_comment is NULL
limit 106;
select  
  nation.n_comment, 
  max(
    cast(cast(null as text) as text)), 
  supplier.s_name, 
  supplier.s_acctbal, 
  nation.n_nationkey
from 
  supplier
    right join nation
    on (supplier.s_acctbal > supplier.s_acctbal)
where nation.n_name is NULL
limit 114;
select  
  lineitem.l_comment, 
  customer.c_comment, 
  lineitem.l_orderkey, 
  lineitem.l_shipinstruct, 
  customer.c_mktsegment, 
  sum(
    cast(cast(null as int2) as int2))
from 
  customer
    right join lineitem
    on (lineitem.l_receiptdate > lineitem.l_receiptdate)
where lineitem.l_shipdate = lineitem.l_shipdate
limit 151;
select  
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  min(
    cast(cast(null as date) as date)), 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  sum(
    cast(cast(null as int8) as int8)), 
  nation.n_regionkey, 
  nation.n_regionkey, 
  max(
    cast(nation.n_nationkey as int4)), 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is not NULL
limit 44;
select  
  max(
    cast(cast(null as tid) as tid)), 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_nationkey
from 
  nation
where nation.n_name is not NULL
limit 95;
select  
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  nation
      right join partsupp
      on (nation.n_name >= nation.n_name)
    left join partsupp
    on (partsupp.ps_availqty is NULL)
where nation.n_name is NULL;
select  
  part.p_partkey, 
  part.p_brand, 
  partsupp.ps_availqty, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  nation.n_comment, 
  nation.n_comment, 
  region.r_name
from 
  part
    inner join nation
      inner join partsupp
        left join region
        on (partsupp.ps_supplycost = partsupp.ps_supplycost)
      on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
    on (part.p_retailprice = partsupp.ps_supplycost )
where part.p_retailprice is NULL;
select  
  part.p_comment, 
  partsupp.ps_partkey
from 
  customer
        inner join orders
        on (orders.o_orderkey <= orders.o_custkey)
      inner join partsupp
        inner join orders
        on (orders.o_orderpriority = orders.o_orderpriority)
      on (orders.o_orderpriority >= customer.c_phone)
    inner join customer
      left join part
      on (customer.c_acctbal <= customer.c_acctbal)
    on (orders.o_orderkey is not NULL)
where part.p_mfgr is not NULL
limit 122;
select  
  partsupp.ps_comment, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 150;
select  
  lineitem.l_receiptdate
from 
  lineitem
    right join region
    on (region.r_regionkey is not NULL)
where region.r_name is NULL;
select  
  partsupp.ps_partkey, 
  customer.c_acctbal, 
  nation.n_comment, 
  nation.n_comment, 
  partsupp.ps_partkey, 
  customer.c_phone, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost
from 
  customer
        right join partsupp
        on (partsupp.ps_partkey < customer.c_nationkey)
      inner join partsupp
      on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
    left join nation
    on (partsupp.ps_comment is NULL)
where customer.c_acctbal is not NULL;
select  
  lineitem.l_suppkey, 
  lineitem.l_partkey, 
  orders.o_shippriority, 
  lineitem.l_comment, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  lineitem
    right join orders
    on (orders.o_totalprice is NULL)
where lineitem.l_receiptdate is NULL;
select  
  supplier.s_address, 
  lineitem.l_tax
from 
  orders
        right join lineitem
            inner join supplier
              left join supplier
              on (supplier.s_nationkey < supplier.s_suppkey)
            on (lineitem.l_commitdate > lineitem.l_shipdate)
          left join orders
          on (lineitem.l_shipdate >= orders.o_orderdate)
        on (supplier.s_acctbal > lineitem.l_discount)
      left join lineitem
      on (orders.o_custkey > supplier.s_suppkey)
    right join supplier
          inner join lineitem
            left join customer
            on (lineitem.l_suppkey = lineitem.l_linenumber)
          on (lineitem.l_commitdate <= lineitem.l_receiptdate)
        inner join orders
        on (lineitem.l_shipmode = customer.c_phone)
      right join supplier
        inner join lineitem
        on (supplier.s_suppkey <= lineitem.l_suppkey)
      on (lineitem.l_shipdate > lineitem.l_shipdate)
    on (customer.c_phone is not NULL)
where orders.o_orderdate is not NULL
limit 66;
select  
  partsupp.ps_partkey, 
  nation.n_nationkey
from 
  nation
      inner join supplier
      on (supplier.s_acctbal > supplier.s_acctbal)
    inner join partsupp
    on (partsupp.ps_comment is not NULL)
where nation.n_regionkey is NULL;
select  
  customer.c_mktsegment, 
  customer.c_nationkey, 
  customer.c_mktsegment, 
  customer.c_name, 
  region.r_name, 
  region.r_comment
from 
  customer
    right join region
    on (customer.c_acctbal >= customer.c_acctbal)
where region.r_regionkey is not NULL;
select  
  lineitem.l_comment
from 
  lineitem
where lineitem.l_suppkey is not NULL;
select  
  customer.c_nationkey, 
  region.r_name
from 
  partsupp
        right join nation
        on (partsupp.ps_suppkey < nation.n_regionkey)
      inner join orders
            left join region
            on (orders.o_orderdate > orders.o_orderdate)
          inner join part
          on (orders.o_orderstatus >= orders.o_orderstatus)
        inner join region
        on (orders.o_totalprice > part.p_retailprice)
      on (orders.o_orderdate < orders.o_orderdate)
    right join customer
    on (orders.o_clerk <= part.p_container)
where orders.o_orderdate < orders.o_orderdate
limit 171;
select distinct 
  min(
    cast(region.r_regionkey as int4)), 
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_name is NULL
limit 104;
select  
  orders.o_clerk, 
  min(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as tid) as tid)), 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_comment
from 
  orders
where orders.o_custkey is not NULL;
select  
  lineitem.l_linenumber, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_shipinstruct, 
  lineitem.l_returnflag, 
  lineitem.l_shipmode, 
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_extendedprice >= lineitem.l_extendedprice
limit 166;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  nation.n_comment, 
  region.r_name, 
  lineitem.l_linestatus, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_regionkey, 
  max(
    cast(region.r_regionkey as int4))
from 
  region
    inner join lineitem
      inner join nation
          inner join customer
          on (nation.n_regionkey > nation.n_nationkey)
        inner join nation
        on (customer.c_nationkey = nation.n_regionkey)
      on (lineitem.l_shipdate = lineitem.l_receiptdate)
    on (region.r_comment = customer.c_name )
where nation.n_name is not NULL
limit 166;
select  
  sum(
    cast(cast(null as money) as money)), 
  part.p_retailprice, 
  part.p_size, 
  part.p_container, 
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  part.p_brand, 
  part.p_retailprice, 
  part.p_name
from 
  part
    inner join part
    on (part.p_comment is NULL)
where part.p_mfgr is NULL
limit 93;
select  
  region.r_comment, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_regionkey is NULL
limit 68;
select  
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  region
where region.r_name < region.r_name;
select  
  orders.o_orderkey, 
  orders.o_comment, 
  orders.o_orderkey, 
  orders.o_shippriority, 
  orders.o_shippriority, 
  orders.o_orderstatus, 
  orders.o_custkey, 
  orders.o_orderstatus, 
  orders.o_comment, 
  orders.o_clerk, 
  orders.o_orderstatus, 
  orders.o_orderdate
from 
  orders
where orders.o_orderpriority is not NULL
limit 91;
select  
  partsupp.ps_partkey, 
  supplier.s_suppkey, 
  orders.o_orderpriority, 
  customer.c_acctbal, 
  avg(
    cast(customer.c_nationkey as int4)), 
  min(
    cast(cast(null as "time") as "time"))
from 
  orders
      inner join nation
          right join customer
          on (customer.c_mktsegment < customer.c_mktsegment)
        inner join region
        on (customer.c_custkey >= customer.c_custkey)
      on (orders.o_clerk = nation.n_name )
    inner join partsupp
      inner join supplier
        inner join partsupp
            inner join supplier
              inner join region
              on (region.r_regionkey > supplier.s_suppkey)
            on (supplier.s_acctbal < supplier.s_acctbal)
          inner join part
            right join customer
            on (part.p_partkey <= customer.c_nationkey)
          on (supplier.s_nationkey = customer.c_custkey )
        on (supplier.s_comment = part.p_name )
      on (partsupp.ps_supplycost >= customer.c_acctbal)
    on (orders.o_totalprice = supplier.s_acctbal)
where region.r_regionkey > partsupp.ps_partkey
limit 125;
select  
  min(
    cast(cast(null as money) as money)), 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty
from 
  orders
    inner join partsupp
        left join region
          left join partsupp
          on (partsupp.ps_supplycost = partsupp.ps_supplycost)
        on (region.r_name = region.r_name)
      inner join partsupp
      on (partsupp.ps_availqty = partsupp.ps_partkey )
    on (partsupp.ps_supplycost is not NULL)
where partsupp.ps_comment is NULL
limit 142;
select  
  orders.o_shippriority, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  nation
          inner join supplier
          on (supplier.s_phone >= supplier.s_phone)
        right join orders
        on (supplier.s_nationkey >= nation.n_nationkey)
      left join region
        right join lineitem
        on (lineitem.l_shipdate = lineitem.l_commitdate)
      on (lineitem.l_tax >= lineitem.l_discount)
    inner join customer
      left join customer
        left join region
          inner join customer
          on (customer.c_acctbal < customer.c_acctbal)
        on (region.r_name >= region.r_name)
      on (customer.c_phone = customer.c_phone)
    on (orders.o_clerk < region.r_name)
where region.r_name is not NULL
limit 65;
select  
  sum(
    cast(supplier.s_nationkey as int4)), 
  partsupp.ps_supplycost
from 
  supplier
      inner join region
          right join orders
          on (orders.o_custkey = orders.o_shippriority)
        inner join supplier
        on (supplier.s_phone >= orders.o_clerk)
      on (orders.o_totalprice > supplier.s_acctbal)
    right join partsupp
    on (supplier.s_comment is not NULL)
where orders.o_orderdate is NULL
limit 155;
select  
  partsupp.ps_supplycost, 
  region.r_regionkey
from 
  lineitem
    inner join partsupp
      left join region
      on (region.r_name > region.r_name)
    on (partsupp.ps_suppkey is not NULL)
where lineitem.l_returnflag is NULL;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 101;
select  
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  avg(
    cast(partsupp.ps_suppkey as int4)), 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_comment is not NULL
limit 42;
select  
  customer.c_acctbal, 
  partsupp.ps_comment, 
  customer.c_comment, 
  partsupp.ps_suppkey, 
  customer.c_comment, 
  customer.c_phone
from 
  customer
    inner join partsupp
    on (customer.c_custkey is not NULL)
where customer.c_address is not NULL
limit 99;
select  
  lineitem.l_receiptdate, 
  region.r_regionkey, 
  lineitem.l_shipinstruct, 
  orders.o_shippriority, 
  orders.o_orderstatus, 
  region.r_regionkey
from 
  orders
    left join lineitem
      inner join region
        inner join supplier
        on (supplier.s_suppkey = supplier.s_suppkey)
      on (supplier.s_nationkey = lineitem.l_partkey)
    on (supplier.s_name is not NULL)
where orders.o_totalprice > orders.o_totalprice
limit 157;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  region.r_comment, 
  orders.o_totalprice, 
  orders.o_orderkey
from 
  orders
      right join customer
      on (orders.o_shippriority < customer.c_custkey)
    inner join lineitem
      right join region
        right join partsupp
          inner join customer
          on (customer.c_mktsegment <= customer.c_phone)
        on (customer.c_custkey <= partsupp.ps_partkey)
      on (customer.c_acctbal = customer.c_acctbal)
    on (orders.o_custkey is not NULL)
where customer.c_address is NULL
limit 86;
select  
  orders.o_shippriority
from 
  orders
    right join region
            inner join supplier
            on (supplier.s_acctbal >= supplier.s_acctbal)
          right join orders
            inner join partsupp
            on (orders.o_orderkey >= partsupp.ps_partkey)
          on (orders.o_orderdate <= orders.o_orderdate)
        left join orders
          left join partsupp
            inner join part
            on (partsupp.ps_suppkey = part.p_partkey )
          on (partsupp.ps_supplycost > part.p_retailprice)
        on (partsupp.ps_suppkey >= orders.o_shippriority)
      inner join partsupp
      on (supplier.s_acctbal < partsupp.ps_supplycost)
    on (orders.o_comment = supplier.s_address )
where supplier.s_nationkey is not NULL
limit 68;
select  
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_partkey, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_partkey is NULL
limit 161;
select  
  part.p_container, 
  part.p_size
from 
  part
where part.p_retailprice > part.p_retailprice;
select  
  orders.o_clerk
from 
  orders
where orders.o_comment is not NULL
limit 89;
select  
  customer.c_mktsegment
from 
  region
        right join lineitem
        on (lineitem.l_tax >= lineitem.l_discount)
      inner join customer
      on (lineitem.l_extendedprice <= lineitem.l_quantity)
    inner join supplier
    on (lineitem.l_commitdate is not NULL)
where lineitem.l_shipinstruct is not NULL
limit 173;
select  
  part.p_type, 
  sum(
    cast(part.p_retailprice as "numeric")), 
  part.p_size
from 
  part
where part.p_brand > part.p_container
limit 54;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_name is not NULL
limit 38;
select  
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_suppkey
from 
  supplier
    right join region
    on (supplier.s_comment = region.r_comment )
where supplier.s_suppkey is not NULL;
select  
  supplier.s_name, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_comment, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_name is not NULL
limit 65;
select  
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is not NULL
limit 179;
select  
  part.p_container, 
  part.p_comment
from 
  orders
    inner join part
    on (orders.o_comment is NULL)
where orders.o_totalprice > orders.o_totalprice
limit 51;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  part.p_partkey
from 
  customer
        right join customer
        on (customer.c_nationkey >= customer.c_nationkey)
      inner join nation
      on (customer.c_mktsegment < customer.c_mktsegment)
    inner join part
      inner join customer
      on (customer.c_custkey <= part.p_partkey)
    on (customer.c_nationkey is NULL)
where nation.n_regionkey is not NULL;
select  
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as text) as text))
from 
  partsupp
where partsupp.ps_availqty is not NULL;
select  
  orders.o_custkey, 
  orders.o_orderkey
from 
  orders
where orders.o_totalprice = orders.o_totalprice
limit 127;
select  
  partsupp.ps_availqty, 
  min(
    cast(cast(null as int8) as int8))
from 
  partsupp
where partsupp.ps_supplycost <= partsupp.ps_supplycost
limit 39;
select  
  region.r_comment
from 
  region
where region.r_name >= region.r_name
limit 142;
select  
  nation.n_regionkey, 
  nation.n_nationkey, 
  max(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as float8) as float8)), 
  nation.n_nationkey, 
  min(
    cast(cast(null as int2) as int2))
from 
  partsupp
    inner join nation
    on (partsupp.ps_comment is not NULL)
where nation.n_regionkey is NULL
limit 119;
select  
  part.p_retailprice, 
  part.p_size, 
  region.r_comment
from 
  region
    left join part
      inner join part
      on (part.p_retailprice = part.p_retailprice )
    on (region.r_regionkey is NULL)
where part.p_retailprice > part.p_retailprice
limit 100;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as date) as date))
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 93;
select  
  nation.n_regionkey, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_name, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  region.r_regionkey, 
  customer.c_address, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  nation.n_comment, 
  nation.n_regionkey, 
  partsupp.ps_comment, 
  supplier.s_acctbal, 
  supplier.s_comment
from 
  orders
    right join supplier
        right join region
        on (supplier.s_address = region.r_comment )
      right join region
        right join partsupp
          inner join customer
                left join lineitem
                on (lineitem.l_returnflag > lineitem.l_returnflag)
              right join orders
              on (lineitem.l_commitdate = lineitem.l_receiptdate)
            inner join nation
            on (lineitem.l_linestatus = lineitem.l_shipmode)
          on (lineitem.l_commitdate < lineitem.l_receiptdate)
        on (lineitem.l_shipdate >= lineitem.l_commitdate)
      on (supplier.s_address = nation.n_comment )
    on (orders.o_totalprice > supplier.s_acctbal)
where orders.o_totalprice < lineitem.l_discount
limit 35;
select  
  part.p_brand, 
  region.r_name, 
  customer.c_name, 
  customer.c_custkey, 
  supplier.s_name, 
  count(*), 
  supplier.s_nationkey, 
  part.p_type, 
  customer.c_custkey, 
  partsupp.ps_availqty, 
  supplier.s_acctbal, 
  max(
    cast(part.p_mfgr as bpchar)), 
  supplier.s_name, 
  supplier.s_acctbal, 
  count(
    cast(region.r_comment as "varchar"))
from 
  partsupp
    right join supplier
      right join customer
        left join part
          right join region
          on (part.p_retailprice <= part.p_retailprice)
        on (customer.c_mktsegment = part.p_mfgr )
      on (supplier.s_acctbal > supplier.s_acctbal)
    on (part.p_container < customer.c_phone)
where partsupp.ps_comment is not NULL
limit 5;
select  
  orders.o_clerk, 
  orders.o_shippriority, 
  min(
    cast(cast(null as float8) as float8)), 
  avg(
    cast(cast(null as float4) as float4))
from 
  orders
where orders.o_totalprice is NULL
limit 106;
select  
  orders.o_shippriority, 
  orders.o_totalprice
from 
  orders
where orders.o_orderstatus is not NULL
limit 165;
select  
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_comment is not NULL;
select  
  avg(
    cast(cast(null as float4) as float4))
from 
  part
        right join region
        on (part.p_brand = part.p_brand)
      inner join customer
        right join orders
          inner join supplier
              right join part
              on (part.p_size = supplier.s_suppkey)
            left join orders
            on (part.p_partkey = orders.o_orderkey )
          on (orders.o_orderstatus = supplier.s_name )
        on (customer.c_mktsegment = orders.o_orderstatus )
      on (orders.o_orderpriority < part.p_container)
    inner join part
      right join customer
        right join lineitem
            inner join customer
              right join supplier
              on (supplier.s_acctbal <= supplier.s_acctbal)
            on (lineitem.l_returnflag = supplier.s_name )
          inner join lineitem
          on (lineitem.l_extendedprice = lineitem.l_tax)
        on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
      on (supplier.s_name >= lineitem.l_shipinstruct)
    on (supplier.s_nationkey < part.p_size)
where orders.o_clerk is NULL
limit 73;
select  
  region.r_regionkey, 
  max(
    cast(cast(null as money) as money)), 
  lineitem.l_returnflag, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  part.p_brand, 
  avg(
    cast(cast(null as float8) as float8)), 
  customer.c_acctbal, 
  part.p_name, 
  customer.c_mktsegment, 
  customer.c_mktsegment
from 
  partsupp
        left join part
          inner join customer
          on (customer.c_acctbal > part.p_retailprice)
        on (customer.c_mktsegment = part.p_mfgr)
      left join lineitem
      on (part.p_size > partsupp.ps_suppkey)
    right join region
      right join lineitem
        inner join part
        on (lineitem.l_commitdate = lineitem.l_receiptdate)
      on (lineitem.l_discount < part.p_retailprice)
    on (lineitem.l_shipdate < lineitem.l_shipdate)
where customer.c_phone is not NULL
limit 49;
select  
  part.p_comment, 
  part.p_retailprice
from 
  part
where part.p_container = part.p_mfgr;
select  
  count(
    cast(orders.o_shippriority as int4)), 
  orders.o_comment
from 
  supplier
        inner join nation
          inner join orders
          on (nation.n_regionkey = orders.o_orderkey )
        on (supplier.s_phone = orders.o_orderstatus )
      left join region
        inner join orders
        on (orders.o_totalprice > orders.o_totalprice)
      on (orders.o_orderdate >= orders.o_orderdate)
    left join part
      right join orders
      on (part.p_brand >= part.p_mfgr)
    on (region.r_regionkey = part.p_partkey )
where supplier.s_comment is NULL
limit 100;
select  
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is NULL
limit 42;
select  
  lineitem.l_returnflag, 
  region.r_regionkey, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as tid) as tid)), 
  partsupp.ps_comment, 
  lineitem.l_quantity, 
  count(*)
from 
  customer
          inner join region
          on (customer.c_custkey < customer.c_custkey)
        right join lineitem
          inner join partsupp
          on (lineitem.l_receiptdate > lineitem.l_commitdate)
        on (lineitem.l_commitdate <= lineitem.l_shipdate)
      inner join lineitem
      on (lineitem.l_shipdate < lineitem.l_commitdate)
    left join region
    on (lineitem.l_receiptdate = lineitem.l_commitdate)
where lineitem.l_quantity is NULL;
select  
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_comment
from 
  nation
where nation.n_nationkey = nation.n_nationkey
limit 73;
select  
  supplier.s_suppkey, 
  partsupp.ps_supplycost, 
  customer.c_name
from 
  supplier
          left join partsupp
          on (supplier.s_acctbal >= partsupp.ps_supplycost)
        right join partsupp
        on (partsupp.ps_suppkey <= partsupp.ps_availqty)
      left join customer
        left join customer
        on (customer.c_custkey = customer.c_custkey)
      on (customer.c_acctbal >= partsupp.ps_supplycost)
    inner join supplier
    on (supplier.s_address is NULL)
where partsupp.ps_suppkey is NULL;
select  
  customer.c_address, 
  customer.c_comment, 
  min(
    cast(cast(null as int8) as int8)), 
  customer.c_address, 
  customer.c_nationkey, 
  sum(
    cast(cast(null as float4) as float4))
from 
  customer
      inner join supplier
      on (customer.c_acctbal < supplier.s_acctbal)
    right join supplier
      inner join customer
      on (customer.c_acctbal > customer.c_acctbal)
    on (supplier.s_name > supplier.s_phone)
where supplier.s_name is not NULL;
select  
  min(
    cast(lineitem.l_linestatus as bpchar)), 
  nation.n_nationkey, 
  lineitem.l_orderkey, 
  partsupp.ps_availqty, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  lineitem.l_shipmode, 
  nation.n_regionkey, 
  lineitem.l_extendedprice, 
  orders.o_orderkey, 
  nation.n_nationkey, 
  orders.o_orderdate, 
  orders.o_orderpriority, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_comment, 
  sum(
    cast(cast(null as money) as money))
from 
  orders
    left join orders
          left join partsupp
          on (orders.o_custkey = partsupp.ps_partkey )
        right join nation
        on (orders.o_orderdate >= orders.o_orderdate)
      inner join lineitem
      on (lineitem.l_discount > lineitem.l_quantity)
    on (nation.n_regionkey is not NULL)
where lineitem.l_shipmode <= orders.o_clerk;
select  
  region.r_regionkey, 
  min(
    cast(cast(null as inet) as inet)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  orders.o_orderstatus
from 
  orders
        right join orders
        on (orders.o_shippriority = orders.o_orderkey)
      inner join region
        inner join supplier
        on (supplier.s_suppkey <= supplier.s_suppkey)
      on (orders.o_totalprice = orders.o_totalprice)
    inner join lineitem
        inner join customer
        on (lineitem.l_shipinstruct > customer.c_mktsegment)
      right join region
      on (lineitem.l_commitdate <= lineitem.l_receiptdate)
    on (supplier.s_name = lineitem.l_shipinstruct)
where region.r_name is NULL;
select  
  partsupp.ps_availqty, 
  nation.n_regionkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  part.p_name, 
  part.p_container, 
  nation.n_regionkey, 
  max(
    cast(cast(null as money) as money))
from 
  nation
        inner join partsupp
        on (nation.n_nationkey = partsupp.ps_partkey )
      right join part
      on (part.p_brand = nation.n_name)
    left join partsupp
    on (part.p_partkey > partsupp.ps_suppkey)
where partsupp.ps_availqty is not NULL;
select  
  partsupp.ps_supplycost, 
  lineitem.l_linenumber
from 
  partsupp
      left join lineitem
            right join lineitem
            on (lineitem.l_shipinstruct = lineitem.l_shipinstruct)
          inner join supplier
            left join partsupp
            on (supplier.s_phone >= supplier.s_phone)
          on (lineitem.l_linenumber = partsupp.ps_partkey )
        left join region
          left join lineitem
          on (region.r_regionkey >= lineitem.l_orderkey)
        on (lineitem.l_linestatus >= lineitem.l_returnflag)
      on (lineitem.l_suppkey = lineitem.l_orderkey)
    right join partsupp
      inner join lineitem
        left join partsupp
          right join supplier
            inner join partsupp
            on (supplier.s_phone = supplier.s_phone)
          on (supplier.s_name = supplier.s_name)
        on (partsupp.ps_supplycost <= lineitem.l_tax)
      on (lineitem.l_commitdate < lineitem.l_shipdate)
    on (lineitem.l_shipdate = lineitem.l_shipdate)
where lineitem.l_suppkey is NULL;
select  
  region.r_name, 
  part.p_partkey, 
  nation.n_name, 
  part.p_retailprice
from 
  part
          inner join nation
          on (part.p_brand = part.p_mfgr)
        inner join partsupp
        on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
      right join region
          inner join customer
          on (customer.c_acctbal > customer.c_acctbal)
        right join part
          inner join lineitem
          on (lineitem.l_shipmode >= lineitem.l_shipinstruct)
        on (customer.c_mktsegment = lineitem.l_returnflag )
      on (part.p_partkey >= nation.n_regionkey)
    inner join customer
        inner join supplier
        on (customer.c_mktsegment <= supplier.s_phone)
      right join partsupp
      on (partsupp.ps_supplycost < supplier.s_acctbal)
    on (lineitem.l_receiptdate is NULL)
where part.p_container > nation.n_name;
select  
  nation.n_nationkey, 
  max(
    cast(cast(null as inet) as inet)), 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_comment
from 
  nation
where nation.n_comment is NULL
limit 87;
select  
  region.r_name, 
  part.p_mfgr, 
  region.r_comment, 
  part.p_mfgr, 
  region.r_regionkey, 
  part.p_container, 
  partsupp.ps_comment, 
  region.r_comment, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as tid) as tid)), 
  partsupp.ps_supplycost
from 
  part
      inner join partsupp
      on (part.p_mfgr < part.p_mfgr)
    right join region
    on (region.r_regionkey is NULL)
where region.r_comment is not NULL
limit 103;
select  
  nation.n_comment
from 
  nation
    inner join customer
    on (customer.c_comment is not NULL)
where customer.c_acctbal <= customer.c_acctbal
limit 108;
select  
  lineitem.l_quantity, 
  min(
    cast(cast(null as oid) as oid)), 
  lineitem.l_suppkey, 
  lineitem.l_quantity
from 
  lineitem
where lineitem.l_returnflag is NULL
limit 84;
select  
  part.p_mfgr, 
  max(
    cast(cast(null as inet) as inet)), 
  part.p_comment, 
  part.p_container
from 
  part
where part.p_size = part.p_partkey
limit 98;
select  
  region.r_regionkey, 
  supplier.s_comment, 
  orders.o_comment, 
  supplier.s_suppkey, 
  supplier.s_acctbal
from 
  region
        inner join supplier
        on (supplier.s_suppkey < supplier.s_suppkey)
      left join orders
      on (supplier.s_suppkey <= supplier.s_nationkey)
    inner join lineitem
    on (supplier.s_phone is not NULL)
where lineitem.l_comment is NULL
limit 66;
select  
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty
from 
  orders
    left join part
        right join partsupp
        on (part.p_brand >= part.p_brand)
      inner join partsupp
      on (partsupp.ps_suppkey >= partsupp.ps_partkey)
    on (orders.o_clerk > part.p_container)
where part.p_retailprice is NULL
limit 153;
select  
  lineitem.l_receiptdate, 
  avg(
    cast(cast(null as float4) as float4))
from 
  partsupp
    right join partsupp
      inner join region
        left join lineitem
        on (region.r_comment = lineitem.l_comment )
      on (region.r_name > lineitem.l_shipinstruct)
    on (lineitem.l_linestatus is NULL)
where lineitem.l_orderkey is NULL
limit 156;
select  
  lineitem.l_linenumber, 
  lineitem.l_discount, 
  lineitem.l_linestatus, 
  lineitem.l_comment, 
  avg(
    cast(lineitem.l_quantity as "numeric")), 
  lineitem.l_orderkey, 
  lineitem.l_returnflag, 
  lineitem.l_linestatus, 
  lineitem.l_discount, 
  lineitem.l_linestatus, 
  min(
    cast(cast(null as "time") as "time")), 
  lineitem.l_shipdate, 
  lineitem.l_shipinstruct, 
  sum(
    cast(cast(null as int2) as int2)), 
  lineitem.l_tax, 
  lineitem.l_discount, 
  lineitem.l_receiptdate, 
  lineitem.l_partkey, 
  lineitem.l_suppkey, 
  lineitem.l_orderkey, 
  lineitem.l_commitdate, 
  lineitem.l_linestatus, 
  lineitem.l_quantity, 
  lineitem.l_partkey, 
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_linestatus = lineitem.l_shipinstruct;
select  
  customer.c_name, 
  min(
    cast(cast(null as int2) as int2)), 
  customer.c_phone, 
  customer.c_address, 
  customer.c_mktsegment, 
  avg(
    cast(customer.c_nationkey as int4)), 
  customer.c_custkey, 
  customer.c_custkey, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_address, 
  sum(
    cast(cast(null as money) as money))
from 
  customer
    inner join customer
    on (customer.c_custkey is NULL)
where customer.c_custkey is NULL
limit 101;
select  
  lineitem.l_quantity, 
  lineitem.l_suppkey, 
  sum(
    cast(cast(null as float4) as float4))
from 
  lineitem
where lineitem.l_linestatus is NULL
limit 162;
select  
  lineitem.l_suppkey, 
  customer.c_custkey, 
  supplier.s_acctbal
from 
  supplier
      right join customer
      on (customer.c_nationkey = supplier.s_suppkey)
    inner join part
      inner join lineitem
      on (lineitem.l_returnflag = part.p_container)
    on (customer.c_name is NULL)
where customer.c_acctbal is NULL
limit 87;
select  
  orders.o_orderpriority, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as float4) as float4)), 
  orders.o_shippriority, 
  lineitem.l_returnflag, 
  orders.o_orderpriority, 
  part.p_container, 
  lineitem.l_shipinstruct
from 
  lineitem
          inner join lineitem
          on (lineitem.l_extendedprice = lineitem.l_discount)
        inner join orders
          left join orders
            left join customer
            on (orders.o_shippriority = customer.c_custkey )
          on (orders.o_totalprice = orders.o_totalprice)
        on (lineitem.l_receiptdate <= orders.o_orderdate)
      right join part
      on (lineitem.l_extendedprice < part.p_retailprice)
    right join lineitem
    on (lineitem.l_tax <= orders.o_totalprice)
where part.p_retailprice = lineitem.l_quantity
limit 95;
select  
  orders.o_orderpriority, 
  orders.o_custkey, 
  orders.o_shippriority, 
  orders.o_custkey, 
  orders.o_totalprice, 
  orders.o_orderkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_custkey, 
  orders.o_shippriority, 
  orders.o_comment, 
  orders.o_totalprice, 
  max(
    cast(cast(null as int2) as int2)), 
  orders.o_totalprice, 
  count(
    cast(orders.o_custkey as int4)), 
  orders.o_custkey, 
  orders.o_totalprice, 
  max(
    cast(cast(null as text) as text)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_orderkey, 
  orders.o_orderdate, 
  orders.o_orderpriority
from 
  orders
where orders.o_orderdate is NULL
limit 127;
select  
  partsupp.ps_availqty, 
  orders.o_clerk, 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as float8) as float8)), 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  sum(
    cast(cast(null as int8) as int8)), 
  lineitem.l_extendedprice, 
  part.p_retailprice
from 
  part
          left join customer
          on (customer.c_mktsegment > customer.c_mktsegment)
        left join orders
        on (orders.o_totalprice < orders.o_totalprice)
      inner join lineitem
          inner join partsupp
          on (lineitem.l_commitdate <= lineitem.l_receiptdate)
        inner join orders
          inner join supplier
            left join partsupp
              right join lineitem
              on (lineitem.l_linestatus < lineitem.l_shipinstruct)
            on (supplier.s_nationkey = lineitem.l_orderkey )
          on (lineitem.l_returnflag = supplier.s_phone)
        on (supplier.s_name <= orders.o_orderstatus)
      on (orders.o_orderdate >= lineitem.l_commitdate)
    inner join lineitem
      right join partsupp
        left join partsupp
          inner join partsupp
          on (partsupp.ps_supplycost < partsupp.ps_supplycost)
        on (partsupp.ps_partkey <= partsupp.ps_availqty)
      on (lineitem.l_extendedprice = partsupp.ps_supplycost )
    on (orders.o_orderdate = orders.o_orderdate)
where orders.o_custkey < customer.c_nationkey
limit 134;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_orderstatus, 
  supplier.s_nationkey, 
  customer.c_custkey, 
  min(
    cast(cast(null as inet) as inet)), 
  region.r_comment, 
  orders.o_orderdate, 
  nation.n_comment, 
  customer.c_name, 
  avg(
    cast(cast(null as int8) as int8)), 
  max(
    cast(cast(null as float8) as float8)), 
  orders.o_orderdate, 
  orders.o_orderpriority, 
  orders.o_custkey, 
  region.r_regionkey
from 
  nation
        right join orders
        on (orders.o_orderstatus > orders.o_orderstatus)
      inner join partsupp
        inner join customer
        on (partsupp.ps_suppkey = partsupp.ps_suppkey)
      on (orders.o_orderdate <= orders.o_orderdate)
    left join lineitem
        right join orders
          right join region
          on (orders.o_clerk <= orders.o_orderpriority)
        on (orders.o_clerk <= lineitem.l_shipinstruct)
      left join nation
          right join supplier
          on (supplier.s_name > supplier.s_name)
        inner join region
          inner join customer
              left join orders
              on (customer.c_nationkey = orders.o_orderkey )
            inner join supplier
            on (supplier.s_acctbal <= supplier.s_acctbal)
          on (supplier.s_suppkey >= customer.c_nationkey)
        on (orders.o_orderdate < orders.o_orderdate)
      on (lineitem.l_partkey = nation.n_nationkey )
    on (customer.c_mktsegment is not NULL)
where orders.o_orderkey > customer.c_nationkey
limit 68;
select  
  part.p_retailprice, 
  max(
    cast(cast(null as int8) as int8)), 
  part.p_name, 
  part.p_name, 
  part.p_retailprice, 
  min(
    cast(part.p_container as bpchar)), 
  part.p_mfgr, 
  part.p_name, 
  part.p_name, 
  max(
    cast(cast(null as float4) as float4)), 
  part.p_comment, 
  min(
    cast(cast(null as float4) as float4)), 
  part.p_size, 
  part.p_name, 
  part.p_container, 
  part.p_retailprice, 
  part.p_container, 
  part.p_name, 
  part.p_partkey
from 
  part
where part.p_retailprice < part.p_retailprice;
select  
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_nationkey, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  supplier.s_comment
from 
  supplier
    inner join supplier
    on (supplier.s_suppkey is NULL)
where supplier.s_nationkey = supplier.s_suppkey;
select  
  orders.o_orderstatus, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  orders.o_orderkey
from 
  partsupp
    right join orders
    on (orders.o_orderpriority = orders.o_clerk)
where orders.o_orderpriority > orders.o_clerk;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  partsupp
where partsupp.ps_partkey is not NULL
limit 59;
select  
  customer.c_name, 
  sum(
    cast(cast(null as int2) as int2)), 
  customer.c_comment
from 
  customer
where customer.c_name is NULL
limit 52;
select  
  customer.c_phone, 
  region.r_regionkey, 
  avg(
    cast(part.p_retailprice as "numeric")), 
  customer.c_address
from 
  nation
      right join region
        inner join nation
          inner join orders
          on (orders.o_totalprice >= orders.o_totalprice)
        on (orders.o_totalprice <= orders.o_totalprice)
      on (orders.o_orderdate > orders.o_orderdate)
    left join nation
          left join supplier
          on (supplier.s_suppkey <= nation.n_regionkey)
        inner join part
        on (part.p_retailprice <= supplier.s_acctbal)
      left join nation
        inner join supplier
            left join customer
            on (supplier.s_nationkey >= supplier.s_suppkey)
          left join orders
            left join orders
            on (orders.o_custkey <= orders.o_shippriority)
          on (orders.o_orderstatus >= orders.o_clerk)
        on (nation.n_name < supplier.s_name)
      on (supplier.s_acctbal < part.p_retailprice)
    on (nation.n_comment = orders.o_comment )
where orders.o_clerk is NULL
limit 110;
select  
  orders.o_clerk, 
  orders.o_clerk, 
  min(
    cast(cast(null as inet) as inet)), 
  orders.o_orderpriority, 
  orders.o_clerk, 
  orders.o_custkey, 
  orders.o_totalprice
from 
  orders
where orders.o_comment is not NULL
limit 92;
select  
  part.p_size, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  part.p_size, 
  part.p_retailprice, 
  min(
    cast(cast(null as int8) as int8)), 
  part.p_type, 
  max(
    cast(cast(null as float4) as float4)), 
  orders.o_totalprice, 
  part.p_container, 
  part.p_name
from 
  part
        right join part
          left join part
              left join part
              on (part.p_retailprice < part.p_retailprice)
            inner join nation
            on (part.p_retailprice >= part.p_retailprice)
          on (nation.n_name < part.p_brand)
        on (part.p_size > part.p_size)
      right join orders
      on (nation.n_name = orders.o_orderstatus )
    inner join nation
    on (orders.o_totalprice is NULL)
where part.p_container is NULL
limit 155;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_address, 
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_phone, 
  supplier.s_comment
from 
  supplier
where supplier.s_acctbal <= supplier.s_acctbal
limit 141;
select  
  part.p_container
from 
  part
    inner join lineitem
    on (part.p_size is not NULL)
where part.p_size is NULL
limit 117;
select  
  lineitem.l_shipmode, 
  lineitem.l_receiptdate
from 
  lineitem
    left join lineitem
    on (lineitem.l_shipinstruct is not NULL)
where lineitem.l_linenumber is not NULL
limit 132;
select  
  orders.o_orderpriority, 
  orders.o_comment, 
  lineitem.l_extendedprice, 
  orders.o_totalprice, 
  customer.c_acctbal
from 
  region
          inner join lineitem
          on (region.r_regionkey = lineitem.l_orderkey )
        inner join customer
            inner join partsupp
            on (partsupp.ps_availqty < customer.c_custkey)
          inner join orders
          on (orders.o_clerk < orders.o_orderstatus)
        on (region.r_regionkey = customer.c_custkey )
      inner join customer
          inner join partsupp
          on (partsupp.ps_partkey >= customer.c_custkey)
        inner join customer
        on (customer.c_nationkey <= partsupp.ps_suppkey)
      on (customer.c_custkey > lineitem.l_partkey)
    right join lineitem
    on (customer.c_mktsegment is NULL)
where customer.c_acctbal is not NULL;
select  
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  partsupp.ps_availqty, 
  supplier.s_acctbal, 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as "time") as "time")), 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  supplier.s_nationkey, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_comment
from 
  partsupp
    inner join supplier
    on (partsupp.ps_supplycost is NULL)
where partsupp.ps_partkey is NULL
limit 110;
select  
  max(
    cast(cast(null as oid) as oid)), 
  orders.o_orderstatus, 
  orders.o_orderpriority, 
  orders.o_orderpriority, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_clerk, 
  orders.o_orderstatus
from 
  orders
where orders.o_orderkey > orders.o_shippriority
limit 86;
select  
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_name, 
  supplier.s_nationkey, 
  max(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_address, 
  min(
    cast(cast(null as float4) as float4)), 
  supplier.s_address, 
  supplier.s_name
from 
  supplier
where supplier.s_name is not NULL
limit 114;
select  
  orders.o_totalprice, 
  orders.o_orderpriority, 
  orders.o_orderkey, 
  orders.o_orderpriority, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_clerk
from 
  orders
where orders.o_custkey is not NULL
limit 88;
select  
  customer.c_mktsegment, 
  customer.c_address, 
  supplier.s_name, 
  lineitem.l_linestatus
from 
  customer
    left join customer
        right join lineitem
        on (lineitem.l_suppkey > lineitem.l_orderkey)
      right join supplier
      on (customer.c_acctbal < customer.c_acctbal)
    on (customer.c_nationkey is not NULL)
where supplier.s_nationkey <= lineitem.l_suppkey;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  part.p_container, 
  region.r_name, 
  avg(
    cast(cast(null as float8) as float8))
from 
  customer
    left join partsupp
          right join orders
            inner join customer
                inner join customer
                on (customer.c_nationkey < customer.c_nationkey)
              left join customer
              on (customer.c_acctbal <= customer.c_acctbal)
            on (customer.c_mktsegment >= customer.c_mktsegment)
          on (orders.o_orderdate = orders.o_orderdate)
        right join supplier
        on (partsupp.ps_comment = supplier.s_address )
      right join partsupp
        inner join supplier
              left join region
                right join part
                on (part.p_container > part.p_container)
              on (region.r_regionkey > supplier.s_suppkey)
            left join lineitem
            on (lineitem.l_extendedprice > supplier.s_acctbal)
          inner join part
              left join nation
              on (part.p_retailprice < part.p_retailprice)
            inner join partsupp
            on (nation.n_regionkey >= partsupp.ps_partkey)
          on (lineitem.l_orderkey < partsupp.ps_suppkey)
        on (partsupp.ps_availqty = region.r_regionkey )
      on (nation.n_name > orders.o_orderstatus)
    on (partsupp.ps_supplycost is not NULL)
where customer.c_address is NULL;
select  
  partsupp.ps_partkey, 
  sum(
    cast(cast(null as money) as money))
from 
  partsupp
where partsupp.ps_availqty is not NULL
limit 84;
select  
  part.p_brand
from 
  part
      inner join orders
      on (part.p_partkey = orders.o_orderkey )
    inner join region
    on (region.r_regionkey is not NULL)
where region.r_comment is NULL
limit 58;
select  
  customer.c_phone, 
  max(
    cast(cast(null as "interval") as "interval")), 
  part.p_name, 
  part.p_size, 
  part.p_comment, 
  part.p_partkey
from 
  customer
    right join part
      right join part
      on (part.p_retailprice >= part.p_retailprice)
    on (part.p_size is NULL)
where customer.c_phone <= part.p_mfgr;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_partkey is not NULL;
select  
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_address, 
  customer.c_name, 
  customer.c_mktsegment, 
  customer.c_mktsegment
from 
  customer
where customer.c_custkey < customer.c_nationkey
limit 94;
select  
  part.p_size, 
  part.p_name, 
  part.p_container, 
  part.p_type
from 
  part
where part.p_comment is NULL;
select  
  supplier.s_comment, 
  supplier.s_address, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as money) as money)), 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  supplier.s_acctbal, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  supplier.s_name, 
  supplier.s_nationkey, 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as text) as text)), 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  partsupp.ps_comment, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_phone
from 
  supplier
    right join supplier
        right join partsupp
        on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
      inner join partsupp
      on (supplier.s_name = supplier.s_name)
    on (supplier.s_acctbal is not NULL)
where partsupp.ps_partkey is NULL;
select  
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  orders.o_orderpriority, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  orders.o_shippriority, 
  region.r_name, 
  min(
    cast(region.r_name as bpchar)), 
  region.r_regionkey
from 
  partsupp
      right join orders
      on (orders.o_orderdate > orders.o_orderdate)
    right join region
    on (partsupp.ps_supplycost is not NULL)
where orders.o_orderpriority <= orders.o_orderstatus
limit 112;
select  
  supplier.s_acctbal
from 
  orders
    inner join supplier
    on (orders.o_totalprice is not NULL)
where orders.o_orderstatus <= orders.o_orderstatus;
select  
  supplier.s_acctbal, 
  supplier.s_phone, 
  part.p_mfgr, 
  part.p_size
from 
  part
    right join supplier
    on (supplier.s_nationkey is NULL)
where supplier.s_phone is not NULL
limit 55;
select  
  orders.o_custkey, 
  orders.o_orderstatus
from 
  orders
where orders.o_totalprice < orders.o_totalprice
limit 121;
select  
  customer.c_phone, 
  region.r_comment
from 
  region
    inner join supplier
      inner join nation
          inner join customer
          on (customer.c_custkey < nation.n_nationkey)
        inner join partsupp
        on (partsupp.ps_supplycost < customer.c_acctbal)
      on (partsupp.ps_supplycost >= supplier.s_acctbal)
    on (customer.c_mktsegment is not NULL)
where nation.n_name <= customer.c_mktsegment
limit 88;
select  
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 72;
select  
  part.p_retailprice, 
  part.p_name, 
  part.p_size, 
  part.p_retailprice, 
  part.p_partkey, 
  part.p_type, 
  part.p_size, 
  part.p_container, 
  sum(
    cast(cast(null as int8) as int8)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  part.p_comment, 
  count(*), 
  part.p_mfgr, 
  part.p_partkey
from 
  part
where part.p_retailprice > part.p_retailprice
limit 130;
select  
  partsupp.ps_availqty, 
  customer.c_custkey, 
  region.r_comment
from 
  region
      inner join nation
        left join customer
          inner join partsupp
            inner join partsupp
            on (partsupp.ps_partkey > partsupp.ps_partkey)
          on (partsupp.ps_suppkey > partsupp.ps_partkey)
        on (partsupp.ps_supplycost = partsupp.ps_supplycost)
      on (partsupp.ps_supplycost > partsupp.ps_supplycost)
    right join part
        right join region
        on (part.p_mfgr = region.r_name )
      right join partsupp
      on (part.p_mfgr <= part.p_brand)
    on (customer.c_comment is not NULL)
where part.p_mfgr < part.p_container
limit 62;
select  
  supplier.s_suppkey, 
  supplier.s_comment, 
  max(
    cast(supplier.s_name as bpchar)), 
  supplier.s_name, 
  count(*), 
  supplier.s_name, 
  supplier.s_acctbal, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as int2) as int2)), 
  supplier.s_suppkey
from 
  supplier
where supplier.s_comment is not NULL
limit 103;
select  
  max(
    cast(cast(null as tid) as tid)), 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_comment, 
  count(*), 
  nation.n_comment, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment
from 
  nation
where nation.n_regionkey = nation.n_regionkey
limit 37;
select  
  avg(
    cast(orders.o_totalprice as "numeric")), 
  partsupp.ps_comment, 
  orders.o_orderkey, 
  orders.o_orderdate, 
  region.r_name, 
  partsupp.ps_comment, 
  orders.o_custkey, 
  region.r_regionkey, 
  supplier.s_phone, 
  partsupp.ps_suppkey
from 
  partsupp
    inner join orders
      inner join orders
          right join supplier
            inner join region
            on (supplier.s_suppkey >= region.r_regionkey)
          on (orders.o_custkey <= orders.o_orderkey)
        left join orders
        on (supplier.s_acctbal = orders.o_totalprice)
      on (supplier.s_suppkey <= orders.o_orderkey)
    on (orders.o_orderstatus <= orders.o_orderpriority)
where orders.o_comment is not NULL
limit 76;
select  
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_mktsegment, 
  customer.c_phone
from 
  customer
where customer.c_name is NULL
limit 51;
select distinct 
  supplier.s_acctbal, 
  supplier.s_phone, 
  sum(
    cast(cast(null as int2) as int2))
from 
  nation
    inner join supplier
    on (supplier.s_acctbal is not NULL)
where supplier.s_comment is NULL;
select  
  part.p_comment, 
  part.p_brand, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  part.p_mfgr, 
  part.p_comment, 
  part.p_mfgr, 
  part.p_name, 
  part.p_partkey, 
  part.p_comment, 
  part.p_partkey, 
  part.p_retailprice, 
  part.p_retailprice, 
  part.p_name, 
  part.p_comment, 
  part.p_mfgr, 
  part.p_container, 
  part.p_size, 
  part.p_container, 
  part.p_comment
from 
  part
where part.p_size is not NULL
limit 132;
select  
  customer.c_nationkey, 
  customer.c_comment, 
  region.r_comment, 
  customer.c_acctbal, 
  customer.c_phone, 
  region.r_regionkey
from 
  region
    right join customer
    on (region.r_name is NULL)
where region.r_regionkey is not NULL
limit 196;
select  
  lineitem.l_quantity, 
  lineitem.l_shipdate
from 
  lineitem
where lineitem.l_suppkey >= lineitem.l_suppkey
limit 145;
select  
  customer.c_address, 
  max(
    cast(lineitem.l_returnflag as bpchar)), 
  customer.c_custkey, 
  max(
    cast(cast(null as "time") as "time"))
from 
  partsupp
        inner join orders
        on (orders.o_orderkey < partsupp.ps_partkey)
      inner join part
            inner join supplier
            on (part.p_partkey <= part.p_size)
          inner join partsupp
            right join nation
            on (nation.n_name > nation.n_name)
          on (supplier.s_suppkey = nation.n_nationkey )
        left join lineitem
        on (lineitem.l_returnflag >= lineitem.l_returnflag)
      on (nation.n_nationkey = nation.n_regionkey)
    inner join supplier
      inner join customer
        right join region
          right join partsupp
            left join customer
            on (customer.c_mktsegment = customer.c_phone)
          on (customer.c_mktsegment < customer.c_mktsegment)
        on (region.r_name <= customer.c_phone)
      on (supplier.s_suppkey >= customer.c_custkey)
    on (partsupp.ps_partkey = customer.c_custkey )
where orders.o_totalprice is not NULL
limit 175;
select  
  supplier.s_phone, 
  supplier.s_comment, 
  sum(
    cast(lineitem.l_orderkey as int4)), 
  lineitem.l_shipdate, 
  supplier.s_phone, 
  customer.c_name, 
  nation.n_comment, 
  max(
    cast(cast(null as int2) as int2)), 
  supplier.s_acctbal, 
  lineitem.l_orderkey, 
  nation.n_regionkey, 
  lineitem.l_tax, 
  customer.c_name, 
  nation.n_comment, 
  supplier.s_phone, 
  customer.c_comment, 
  supplier.s_phone, 
  supplier.s_address, 
  nation.n_regionkey, 
  max(
    cast(lineitem.l_quantity as "numeric")), 
  max(
    cast(cast(null as inet) as inet)), 
  supplier.s_suppkey, 
  lineitem.l_shipmode
from 
  supplier
    inner join customer
        right join nation
        on (nation.n_nationkey <= nation.n_regionkey)
      left join lineitem
        left join lineitem
        on (lineitem.l_tax <= lineitem.l_quantity)
      on (lineitem.l_commitdate = lineitem.l_receiptdate)
    on (supplier.s_acctbal is NULL)
where customer.c_acctbal is not NULL;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  orders.o_custkey
from 
  supplier
    inner join orders
    on (orders.o_orderkey <= orders.o_shippriority)
where orders.o_orderdate = orders.o_orderdate
limit 112;
select  
  lineitem.l_linenumber, 
  region.r_regionkey
from 
  lineitem
    right join region
    on (lineitem.l_discount <= lineitem.l_tax)
where region.r_regionkey is NULL
limit 54;
select  
  lineitem.l_comment, 
  customer.c_phone
from 
  customer
    inner join lineitem
      inner join lineitem
      on (lineitem.l_extendedprice = lineitem.l_quantity )
    on (customer.c_phone = lineitem.l_returnflag )
where lineitem.l_quantity is not NULL
limit 182;
select  
  max(
    cast(orders.o_shippriority as int4)), 
  orders.o_shippriority
from 
  orders
    inner join orders
    on (orders.o_shippriority is NULL)
where orders.o_clerk is not NULL
limit 139;
select  
  supplier.s_address, 
  supplier.s_address, 
  supplier.s_suppkey, 
  max(
    cast(cast(null as inet) as inet)), 
  supplier.s_comment, 
  supplier.s_phone, 
  supplier.s_comment
from 
  supplier
where supplier.s_nationkey is NULL
limit 61;
select  
  part.p_type, 
  part.p_name, 
  part.p_comment, 
  part.p_comment, 
  part.p_type, 
  part.p_mfgr
from 
  part
where part.p_retailprice > part.p_retailprice
limit 129;
select distinct 
  nation.n_comment, 
  nation.n_comment, 
  sum(
    cast(cast(null as int8) as int8)), 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_comment
from 
  nation
where nation.n_nationkey is NULL;
select  
  orders.o_custkey
from 
  nation
    inner join nation
        left join part
                left join part
                on (part.p_container = part.p_container)
              inner join orders
                left join customer
                on (customer.c_acctbal < customer.c_acctbal)
              on (customer.c_nationkey >= part.p_size)
            left join orders
              inner join supplier
                left join customer
                on (supplier.s_suppkey = customer.c_custkey )
              on (orders.o_orderdate <= orders.o_orderdate)
            on (orders.o_shippriority > orders.o_shippriority)
          inner join lineitem
            right join partsupp
            on (lineitem.l_returnflag = lineitem.l_linestatus)
          on (lineitem.l_tax = lineitem.l_quantity)
        on (lineitem.l_shipdate <= orders.o_orderdate)
      left join orders
      on (part.p_brand >= orders.o_orderstatus)
    on (part.p_size is not NULL)
where nation.n_nationkey is NULL;
select  
  orders.o_totalprice, 
  orders.o_totalprice, 
  min(
    cast(cast(null as tid) as tid)), 
  avg(
    cast(cast(null as float8) as float8))
from 
  orders
where orders.o_orderdate is not NULL;
select  
  supplier.s_suppkey, 
  supplier.s_address, 
  sum(
    cast(cast(null as money) as money)), 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_comment, 
  avg(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as xid8) as xid8)), 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_address, 
  supplier.s_name
from 
  supplier
where supplier.s_phone is NULL
limit 157;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_receiptdate is NULL
limit 133;
select  
  orders.o_shippriority
from 
  orders
      inner join orders
      on (orders.o_orderpriority = orders.o_orderstatus)
    right join supplier
    on (orders.o_orderpriority is NULL)
where orders.o_comment is NULL
limit 69;
select  
  max(
    cast(cast(null as int2) as int2)), 
  supplier.s_comment, 
  max(
    cast(part.p_retailprice as "numeric"))
from 
  part
        inner join part
          inner join partsupp
            left join supplier
            on (partsupp.ps_comment = supplier.s_address )
          on (partsupp.ps_supplycost < part.p_retailprice)
        on (supplier.s_acctbal <= part.p_retailprice)
      inner join lineitem
        inner join customer
              inner join part
              on (customer.c_acctbal = part.p_retailprice )
            inner join supplier
            on (customer.c_custkey <= customer.c_nationkey)
          inner join customer
            right join part
            on (customer.c_acctbal < customer.c_acctbal)
          on (supplier.s_acctbal < customer.c_acctbal)
        on (supplier.s_suppkey > part.p_size)
      on (supplier.s_nationkey >= part.p_partkey)
    right join region
    on (supplier.s_address is not NULL)
where customer.c_comment is NULL;
select  
  supplier.s_name, 
  supplier.s_address, 
  min(
    cast(cast(null as "time") as "time")), 
  supplier.s_phone, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_phone is NULL
limit 78;
select  
  nation.n_comment, 
  min(
    cast(cast(null as float4) as float4)), 
  nation.n_comment, 
  supplier.s_phone, 
  nation.n_comment, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  nation.n_regionkey, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_name, 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_name, 
  nation.n_name
from 
  nation
    left join supplier
    on (supplier.s_phone is NULL)
where supplier.s_nationkey is not NULL
limit 40;
select  
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_partkey is NULL;
select  
  region.r_regionkey, 
  partsupp.ps_availqty, 
  region.r_regionkey, 
  lineitem.l_returnflag, 
  supplier.s_phone
from 
  supplier
            right join region
            on (region.r_name >= supplier.s_phone)
          right join lineitem
              inner join region
              on (lineitem.l_discount = lineitem.l_quantity)
            left join supplier
              inner join orders
              on (supplier.s_nationkey > orders.o_orderkey)
            on (orders.o_orderkey <= orders.o_orderkey)
          on (lineitem.l_discount <= orders.o_totalprice)
        inner join part
        on (supplier.s_nationkey >= lineitem.l_partkey)
      left join lineitem
        right join partsupp
        on (lineitem.l_quantity >= lineitem.l_quantity)
      on (supplier.s_comment = lineitem.l_comment )
    inner join nation
    on (lineitem.l_quantity is not NULL)
where lineitem.l_returnflag is not NULL;
select  
  region.r_comment, 
  customer.c_custkey, 
  orders.o_totalprice
from 
  partsupp
      inner join lineitem
          left join customer
            left join customer
            on (customer.c_custkey <= customer.c_nationkey)
          on (customer.c_phone = lineitem.l_shipinstruct)
        left join orders
        on (lineitem.l_discount >= lineitem.l_tax)
      on (customer.c_acctbal < lineitem.l_extendedprice)
    inner join supplier
        right join supplier
        on (supplier.s_suppkey > supplier.s_suppkey)
      left join customer
        inner join region
        on (customer.c_mktsegment <= customer.c_mktsegment)
      on (region.r_name < supplier.s_phone)
    on (orders.o_orderkey < lineitem.l_linenumber)
where partsupp.ps_availqty is not NULL;
select  
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_name
from 
  supplier
where supplier.s_phone is not NULL
limit 51;
select  
  part.p_size, 
  part.p_brand, 
  supplier.s_suppkey, 
  part.p_partkey, 
  part.p_size, 
  part.p_name
from 
  supplier
    inner join part
    on (supplier.s_address = part.p_name )
where supplier.s_phone > supplier.s_name
limit 173;
select  
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_comment is NULL
limit 102;
select  
  customer.c_nationkey, 
  customer.c_mktsegment
from 
  customer
where customer.c_acctbal = customer.c_acctbal
limit 35;
select  
  lineitem.l_quantity, 
  count(
    cast(lineitem.l_extendedprice as "numeric")), 
  partsupp.ps_supplycost, 
  lineitem.l_returnflag, 
  lineitem.l_linestatus, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey
from 
  lineitem
    inner join partsupp
    on (lineitem.l_tax = lineitem.l_tax)
where partsupp.ps_availqty is not NULL
limit 87;
select  
  customer.c_mktsegment, 
  customer.c_comment, 
  customer.c_custkey, 
  min(
    cast(cast(null as money) as money))
from 
  customer
where customer.c_name is not NULL
limit 133;
select  
  orders.o_shippriority, 
  orders.o_clerk, 
  orders.o_totalprice, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  sum(
    cast(orders.o_totalprice as "numeric")), 
  nation.n_regionkey, 
  max(
    cast(cast(null as money) as money)), 
  orders.o_orderdate
from 
  nation
      left join orders
      on (nation.n_nationkey = orders.o_orderkey )
    inner join nation
    on (nation.n_name is NULL)
where nation.n_regionkey is NULL;
select  
  lineitem.l_comment, 
  lineitem.l_discount, 
  lineitem.l_commitdate, 
  lineitem.l_receiptdate, 
  lineitem.l_shipmode, 
  max(
    cast(cast(null as int2) as int2)), 
  lineitem.l_quantity, 
  lineitem.l_linestatus, 
  lineitem.l_extendedprice, 
  lineitem.l_commitdate
from 
  lineitem
where lineitem.l_partkey >= lineitem.l_suppkey
limit 33;
select  
  part.p_name, 
  part.p_name, 
  part.p_mfgr, 
  part.p_name, 
  avg(
    cast(cast(null as int2) as int2)), 
  part.p_name, 
  part.p_size, 
  part.p_size, 
  part.p_mfgr, 
  part.p_type, 
  part.p_retailprice, 
  part.p_partkey
from 
  part
where part.p_mfgr is NULL
limit 49;
select  
  sum(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_address, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_phone is not NULL
limit 142;
select  
  lineitem.l_discount, 
  lineitem.l_commitdate, 
  lineitem.l_shipinstruct, 
  avg(
    cast(cast(null as int8) as int8)), 
  max(
    cast(cast(null as inet) as inet)), 
  lineitem.l_partkey, 
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_extendedprice is NULL
limit 35;
select  
  sum(
    cast(cast(null as int8) as int8)), 
  lineitem.l_extendedprice, 
  region.r_name, 
  region.r_name
from 
  region
        inner join lineitem
          inner join lineitem
            inner join region
                  left join partsupp
                  on (region.r_name > region.r_name)
                inner join region
                on (region.r_name > region.r_name)
              inner join part
              on (partsupp.ps_availqty = part.p_partkey )
            on (lineitem.l_quantity >= lineitem.l_tax)
          on (lineitem.l_extendedprice <= lineitem.l_tax)
        on (lineitem.l_extendedprice > lineitem.l_tax)
      right join partsupp
      on (partsupp.ps_partkey = lineitem.l_linenumber)
    inner join customer
    on (lineitem.l_shipmode < lineitem.l_returnflag)
where lineitem.l_linenumber < customer.c_nationkey
limit 85;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(cast(null as int2) as int2))
from 
  partsupp
where partsupp.ps_comment is NULL;
select  
  nation.n_name, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
where nation.n_regionkey is not NULL
limit 79;
select  
  supplier.s_phone, 
  orders.o_clerk
from 
  orders
      inner join supplier
      on (orders.o_orderpriority >= supplier.s_name)
    right join supplier
    on (supplier.s_acctbal < orders.o_totalprice)
where orders.o_totalprice <= supplier.s_acctbal
limit 24;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  nation.n_regionkey, 
  max(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_suppkey, 
  nation.n_comment, 
  nation.n_nationkey
from 
  nation
    left join partsupp
    on (nation.n_nationkey is NULL)
where partsupp.ps_suppkey is NULL
limit 109;
select  
  nation.n_name, 
  customer.c_acctbal, 
  avg(
    cast(customer.c_acctbal as "numeric")), 
  orders.o_custkey, 
  orders.o_custkey
from 
  supplier
    inner join partsupp
        left join nation
        on (partsupp.ps_partkey < partsupp.ps_suppkey)
      left join orders
        inner join customer
          inner join part
          on (customer.c_acctbal = part.p_retailprice)
        on (part.p_mfgr < part.p_mfgr)
      on (orders.o_totalprice <= part.p_retailprice)
    on (supplier.s_suppkey < customer.c_nationkey)
where customer.c_comment is not NULL
limit 68;
select  
  nation.n_nationkey
from 
  nation
where nation.n_regionkey is NULL;
select  
  part.p_comment, 
  orders.o_orderstatus, 
  orders.o_orderkey, 
  part.p_mfgr, 
  part.p_retailprice, 
  part.p_brand
from 
  orders
    right join part
    on (part.p_comment is not NULL)
where part.p_comment is not NULL
limit 105;
select  
  count(
    cast(nation.n_comment as "varchar")), 
  nation.n_comment
from 
  nation
where nation.n_name is NULL;
select  
  lineitem.l_shipmode, 
  lineitem.l_returnflag, 
  lineitem.l_shipinstruct, 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_shipinstruct is NULL
limit 127;
select  
  region.r_name, 
  region.r_regionkey, 
  customer.c_phone, 
  customer.c_mktsegment, 
  nation.n_regionkey, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as float4) as float4)), 
  region.r_regionkey, 
  lineitem.l_returnflag
from 
  customer
      right join customer
        left join nation
            left join region
            on (nation.n_name < nation.n_name)
          right join lineitem
              left join lineitem
              on (lineitem.l_commitdate > lineitem.l_receiptdate)
            left join region
            on (lineitem.l_shipdate > lineitem.l_commitdate)
          on (lineitem.l_receiptdate > lineitem.l_shipdate)
        on (lineitem.l_returnflag <= lineitem.l_shipinstruct)
      on (lineitem.l_returnflag >= region.r_name)
    right join region
    on (lineitem.l_commitdate < lineitem.l_commitdate)
where lineitem.l_commitdate is NULL;
select  
  partsupp.ps_comment
from 
  lineitem
    inner join partsupp
          right join customer
            right join orders
            on (customer.c_mktsegment < customer.c_mktsegment)
          on (orders.o_orderpriority <= orders.o_clerk)
        left join partsupp
        on (partsupp.ps_suppkey > customer.c_nationkey)
      inner join orders
      on (partsupp.ps_availqty = orders.o_orderkey )
    on (orders.o_comment is NULL)
where orders.o_orderkey >= partsupp.ps_partkey
limit 102;
select  
  region.r_name, 
  region.r_name
from 
  region
where region.r_name = region.r_name
limit 119;
select  
  min(
    cast(part.p_brand as bpchar)), 
  part.p_size, 
  region.r_name
from 
  supplier
    right join part
        inner join customer
        on (part.p_mfgr = part.p_brand)
      inner join region
        right join region
        on (region.r_name < region.r_name)
      on (part.p_retailprice <= customer.c_acctbal)
    on (customer.c_phone < part.p_mfgr)
where region.r_comment is not NULL
limit 114;
select  
  nation.n_nationkey
from 
  partsupp
          left join region
            right join nation
            on (region.r_name = region.r_name)
          on (partsupp.ps_comment = region.r_comment )
        inner join orders
        on (orders.o_orderpriority <= orders.o_orderpriority)
      right join nation
        inner join orders
        on (orders.o_orderstatus <= nation.n_name)
      on (nation.n_nationkey >= orders.o_custkey)
    inner join nation
    on (orders.o_shippriority < nation.n_nationkey)
where orders.o_totalprice >= partsupp.ps_supplycost
limit 133;
select  
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  avg(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 85;
select  
  lineitem.l_orderkey, 
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_linenumber <= lineitem.l_orderkey
limit 104;
select  
  part.p_type, 
  nation.n_regionkey, 
  nation.n_name, 
  customer.c_nationkey, 
  part.p_size
from 
  part
    left join part
        right join part
        on (part.p_partkey < part.p_size)
      inner join nation
        inner join customer
        on (customer.c_phone = customer.c_phone)
      on (nation.n_nationkey > customer.c_custkey)
    on (part.p_size is not NULL)
where customer.c_nationkey <= part.p_partkey
limit 6;
select  
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_address, 
  supplier.s_comment
from 
  supplier
where supplier.s_name is NULL
limit 69;
select  
  region.r_regionkey
from 
  region
where region.r_comment is NULL;
select  
  orders.o_custkey, 
  orders.o_orderdate, 
  orders.o_custkey, 
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_orderpriority, 
  orders.o_totalprice, 
  orders.o_orderdate
from 
  orders
where orders.o_orderpriority > orders.o_orderpriority
limit 93;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  supplier.s_suppkey
from 
  orders
    left join supplier
        inner join part
        on (supplier.s_suppkey = part.p_partkey )
      right join orders
      on (supplier.s_name = orders.o_orderstatus)
    on (supplier.s_suppkey is not NULL)
where part.p_partkey is not NULL
limit 39;
select  
  orders.o_orderkey, 
  min(
    cast(cast(null as money) as money)), 
  lineitem.l_shipmode, 
  customer.c_custkey, 
  customer.c_name
from 
  part
        inner join customer
            right join customer
            on (customer.c_custkey < customer.c_custkey)
          inner join lineitem
          on (customer.c_nationkey < customer.c_custkey)
        on (part.p_size < lineitem.l_suppkey)
      inner join supplier
      on (customer.c_custkey <= customer.c_nationkey)
    right join orders
    on (part.p_brand = orders.o_orderstatus )
where supplier.s_acctbal >= customer.c_acctbal
limit 45;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_comment, 
  avg(
    cast(cast(null as float8) as float8)), 
  region.r_regionkey, 
  lineitem.l_linenumber
from 
  region
          inner join supplier
            right join lineitem
            on (lineitem.l_tax <= lineitem.l_extendedprice)
          on (lineitem.l_receiptdate <= lineitem.l_shipdate)
        right join lineitem
        on (lineitem.l_orderkey >= lineitem.l_suppkey)
      inner join region
            inner join lineitem
            on (lineitem.l_extendedprice < lineitem.l_quantity)
          inner join part
          on (lineitem.l_partkey = part.p_partkey )
        right join part
          left join lineitem
          on (lineitem.l_tax <= lineitem.l_quantity)
        on (part.p_size < lineitem.l_suppkey)
      on (lineitem.l_extendedprice > part.p_retailprice)
    inner join region
      left join supplier
          right join orders
          on (supplier.s_comment = orders.o_comment )
        left join partsupp
        on (supplier.s_name < orders.o_orderpriority)
      on (supplier.s_phone = orders.o_orderpriority)
    on (supplier.s_suppkey is NULL)
where lineitem.l_returnflag is not NULL
limit 78;
select  
  lineitem.l_returnflag, 
  region.r_name, 
  region.r_regionkey, 
  lineitem.l_linestatus, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  nation.n_regionkey
from 
  lineitem
      left join region
        inner join supplier
        on (region.r_regionkey = supplier.s_suppkey )
      on (lineitem.l_tax >= lineitem.l_quantity)
    left join nation
    on (region.r_comment = nation.n_comment )
where nation.n_comment is NULL
limit 82;
select  
  part.p_mfgr
from 
  part
where part.p_size is not NULL;
select  
  nation.n_name, 
  orders.o_orderstatus, 
  lineitem.l_extendedprice, 
  customer.c_mktsegment
from 
  customer
      inner join supplier
      on (customer.c_acctbal = supplier.s_acctbal )
    inner join nation
      right join nation
        inner join part
          inner join customer
              right join orders
              on (customer.c_nationkey = customer.c_nationkey)
            inner join lineitem
            on (lineitem.l_receiptdate <= lineitem.l_commitdate)
          on (lineitem.l_orderkey >= orders.o_orderkey)
        on (nation.n_name > part.p_container)
      on (lineitem.l_partkey < nation.n_nationkey)
    on (nation.n_name is not NULL)
where customer.c_acctbal > lineitem.l_extendedprice
limit 43;
select  
  region.r_name, 
  customer.c_comment
from 
  region
      inner join part
            left join orders
            on (orders.o_custkey <= part.p_size)
          left join customer
          on (orders.o_orderpriority < orders.o_clerk)
        left join region
          left join region
          on (region.r_name > region.r_name)
        on (customer.c_name = region.r_comment )
      on (region.r_regionkey > region.r_regionkey)
    inner join region
    on (orders.o_orderdate = orders.o_orderdate)
where region.r_comment is NULL
limit 23;
select  
  partsupp.ps_availqty, 
  min(
    cast(cast(null as date) as date)), 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_suppkey is NULL;
select  
  orders.o_orderdate
from 
  orders
    inner join lineitem
      inner join part
      on (lineitem.l_linestatus > lineitem.l_linestatus)
    on (lineitem.l_quantity is NULL)
where lineitem.l_linestatus is NULL
limit 98;
select  
  customer.c_mktsegment, 
  min(
    cast(cast(null as int2) as int2)), 
  part.p_brand, 
  supplier.s_name, 
  sum(
    cast(cast(null as float4) as float4))
from 
  part
    inner join supplier
          inner join part
          on (supplier.s_phone <= part.p_mfgr)
        inner join partsupp
                inner join supplier
                on (partsupp.ps_suppkey = supplier.s_suppkey )
              right join region
              on (supplier.s_name = supplier.s_name)
            left join customer
            on (partsupp.ps_comment = customer.c_name )
          right join supplier
          on (partsupp.ps_partkey = supplier.s_suppkey)
        on (supplier.s_phone >= supplier.s_name)
      left join partsupp
        inner join partsupp
            inner join region
            on (region.r_regionkey >= partsupp.ps_suppkey)
          left join customer
          on (partsupp.ps_supplycost > customer.c_acctbal)
        on (partsupp.ps_supplycost > customer.c_acctbal)
      on (region.r_name > region.r_name)
    on (part.p_partkey = supplier.s_nationkey)
where partsupp.ps_partkey <= region.r_regionkey
limit 96;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  nation.n_comment, 
  region.r_name
from 
  partsupp
    right join region
        inner join customer
        on (customer.c_mktsegment <= region.r_name)
      inner join nation
      on (customer.c_nationkey < nation.n_regionkey)
    on (partsupp.ps_availqty = customer.c_custkey )
where region.r_regionkey is NULL
limit 102;
select  
  part.p_brand
from 
  region
      inner join part
        right join partsupp
        on (partsupp.ps_suppkey < part.p_size)
      on (partsupp.ps_suppkey = partsupp.ps_suppkey)
    right join nation
      right join partsupp
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    on (partsupp.ps_partkey is NULL)
where partsupp.ps_suppkey is not NULL
limit 121;
select  
  supplier.s_nationkey, 
  partsupp.ps_supplycost, 
  supplier.s_acctbal, 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_name, 
  supplier.s_phone, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  lineitem.l_discount, 
  nation.n_name, 
  sum(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_availqty, 
  lineitem.l_shipdate, 
  partsupp.ps_supplycost, 
  supplier.s_name, 
  partsupp.ps_availqty, 
  max(
    cast(cast(null as money) as money)), 
  customer.c_mktsegment, 
  min(
    cast(cast(null as inet) as inet))
from 
  partsupp
      inner join orders
          right join nation
          on (orders.o_orderstatus = orders.o_orderstatus)
        right join lineitem
          inner join lineitem
              left join supplier
              on (lineitem.l_comment = supplier.s_address )
            inner join customer
              left join region
              on (customer.c_nationkey = region.r_regionkey)
            on (lineitem.l_discount = lineitem.l_tax)
          on (lineitem.l_suppkey < lineitem.l_suppkey)
        on (supplier.s_nationkey = lineitem.l_linenumber)
      on (partsupp.ps_partkey = orders.o_orderkey )
    inner join nation
        right join supplier
          inner join nation
          on (supplier.s_name > nation.n_name)
        on (nation.n_regionkey = supplier.s_suppkey )
      inner join supplier
        left join lineitem
        on (supplier.s_nationkey = lineitem.l_orderkey )
      on (lineitem.l_shipdate > lineitem.l_receiptdate)
    on (partsupp.ps_partkey is NULL)
where nation.n_comment is not NULL;
select  
  supplier.s_comment
from 
  supplier
          inner join region
          on (supplier.s_comment = region.r_comment )
        inner join part
        on (part.p_retailprice >= part.p_retailprice)
      inner join partsupp
          left join partsupp
            left join lineitem
                right join partsupp
                on (partsupp.ps_supplycost = lineitem.l_discount)
              inner join partsupp
              on (lineitem.l_linestatus <= lineitem.l_returnflag)
            on (partsupp.ps_partkey = partsupp.ps_availqty)
          on (lineitem.l_shipdate < lineitem.l_receiptdate)
        left join part
          inner join region
            inner join orders
              left join customer
              on (orders.o_custkey >= orders.o_custkey)
            on (orders.o_clerk < customer.c_mktsegment)
          on (orders.o_orderpriority = orders.o_orderstatus)
        on (lineitem.l_partkey = orders.o_orderkey )
      on (lineitem.l_returnflag < orders.o_orderpriority)
    left join partsupp
        right join region
        on (region.r_regionkey < partsupp.ps_partkey)
      right join lineitem
      on (region.r_comment = lineitem.l_comment )
    on (part.p_brand < lineitem.l_returnflag)
where customer.c_nationkey is not NULL
limit 149;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  nation.n_comment, 
  sum(
    cast(cast(null as int2) as int2)), 
  part.p_partkey, 
  partsupp.ps_partkey, 
  supplier.s_nationkey, 
  customer.c_address, 
  min(
    cast(cast(null as timetz) as timetz)), 
  customer.c_mktsegment, 
  nation.n_comment, 
  orders.o_totalprice, 
  part.p_mfgr, 
  nation.n_nationkey, 
  customer.c_address, 
  part.p_type
from 
  nation
        right join part
        on (nation.n_nationkey = part.p_partkey )
      inner join supplier
      on (supplier.s_acctbal <= supplier.s_acctbal)
    right join nation
      inner join nation
          left join orders
          on (orders.o_orderpriority = orders.o_clerk)
        right join customer
                inner join customer
                on (customer.c_acctbal = customer.c_acctbal)
              inner join partsupp
              on (customer.c_mktsegment < customer.c_mktsegment)
            left join supplier
            on (customer.c_mktsegment <= customer.c_phone)
          left join part
          on (customer.c_acctbal > supplier.s_acctbal)
        on (orders.o_clerk >= customer.c_mktsegment)
      on (nation.n_name >= orders.o_orderstatus)
    on (nation.n_comment is not NULL)
where customer.c_nationkey is NULL
limit 20;
select  
  lineitem.l_tax, 
  lineitem.l_shipinstruct
from 
  lineitem
where lineitem.l_orderkey >= lineitem.l_linenumber
limit 126;
select  
  partsupp.ps_comment, 
  nation.n_regionkey, 
  min(
    cast(partsupp.ps_supplycost as "numeric")), 
  lineitem.l_linestatus, 
  orders.o_shippriority, 
  sum(
    cast(lineitem.l_quantity as "numeric")), 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_comment, 
  max(
    cast(cast(null as money) as money))
from 
  region
        right join nation
            right join partsupp
            on (partsupp.ps_supplycost = partsupp.ps_supplycost)
          inner join lineitem
          on (lineitem.l_shipmode >= lineitem.l_shipinstruct)
        on (lineitem.l_extendedprice >= lineitem.l_extendedprice)
      inner join region
      on (lineitem.l_tax >= lineitem.l_discount)
    right join orders
    on (orders.o_orderdate is not NULL)
where orders.o_clerk is NULL
limit 90;
select  
  region.r_regionkey, 
  region.r_comment, 
  orders.o_totalprice, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  partsupp.ps_suppkey, 
  part.p_comment, 
  part.p_brand, 
  region.r_name, 
  partsupp.ps_supplycost
from 
  partsupp
    right join part
        right join orders
        on (orders.o_orderdate > orders.o_orderdate)
      inner join part
        inner join region
        on (part.p_partkey < part.p_partkey)
      on (orders.o_orderdate <= orders.o_orderdate)
    on (region.r_comment is not NULL)
where part.p_partkey is NULL
limit 74;
select  
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment
from 
  partsupp
        right join partsupp
        on (partsupp.ps_supplycost > partsupp.ps_supplycost)
      right join region
      on (partsupp.ps_supplycost > partsupp.ps_supplycost)
    left join region
    on (region.r_name is not NULL)
where region.r_name is not NULL;
select  
  region.r_comment, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  region
where region.r_name is NULL
limit 155;
select  
  min(
    cast(cast(null as oid) as oid)), 
  part.p_name, 
  part.p_mfgr, 
  part.p_mfgr, 
  part.p_size, 
  part.p_retailprice, 
  part.p_name, 
  part.p_name, 
  part.p_retailprice, 
  part.p_brand, 
  part.p_comment, 
  part.p_container, 
  part.p_name, 
  part.p_container, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as float4) as float4)), 
  part.p_type, 
  min(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as text) as text))
from 
  part
where part.p_size is not NULL;
select  
  lineitem.l_tax
from 
  lineitem
where lineitem.l_comment is not NULL
limit 90;
select  
  orders.o_orderkey, 
  part.p_comment, 
  part.p_size, 
  region.r_comment, 
  region.r_name
from 
  orders
      inner join region
        inner join lineitem
        on (lineitem.l_suppkey = lineitem.l_orderkey)
      on (orders.o_orderdate <= orders.o_orderdate)
    left join part
    on (lineitem.l_linestatus < lineitem.l_returnflag)
where part.p_retailprice is NULL
limit 128;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_shipinstruct, 
  lineitem.l_suppkey, 
  lineitem.l_linenumber, 
  lineitem.l_discount, 
  lineitem.l_linenumber, 
  avg(
    cast(cast(null as float8) as float8)), 
  lineitem.l_tax, 
  lineitem.l_quantity, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  lineitem
where lineitem.l_linenumber > lineitem.l_orderkey;
select  
  max(
    cast(cast(null as float4) as float4)), 
  region.r_regionkey, 
  customer.c_nationkey, 
  avg(
    cast(nation.n_nationkey as int4)), 
  customer.c_name, 
  customer.c_acctbal, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  nation.n_nationkey, 
  customer.c_acctbal
from 
  customer
    inner join nation
        left join region
        on (nation.n_nationkey <= region.r_regionkey)
      inner join customer
      on (region.r_name = customer.c_phone )
    on (customer.c_acctbal <= customer.c_acctbal)
where customer.c_acctbal < customer.c_acctbal
limit 117;
select  
  customer.c_nationkey, 
  customer.c_phone, 
  orders.o_shippriority
from 
  lineitem
        inner join orders
        on (lineitem.l_shipmode = orders.o_orderstatus )
      left join customer
      on (lineitem.l_tax > customer.c_acctbal)
    left join customer
    on (orders.o_orderstatus = customer.c_phone )
where orders.o_totalprice >= customer.c_acctbal;
select  
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_name is not NULL
limit 51;
select  
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  max(
    cast(cast(null as "interval") as "interval")), 
  avg(
    cast(cast(null as float8) as float8)), 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 121;
select  
  lineitem.l_tax, 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  lineitem
where lineitem.l_shipinstruct is not NULL
limit 145;
select  
  orders.o_clerk, 
  orders.o_shippriority, 
  orders.o_shippriority, 
  orders.o_shippriority
from 
  orders
where orders.o_totalprice is NULL
limit 103;
select  
  sum(
    cast(cast(null as money) as money)), 
  orders.o_custkey, 
  orders.o_shippriority, 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  orders.o_shippriority
from 
  orders
where orders.o_orderstatus <= orders.o_clerk
limit 104;
select  
  customer.c_name
from 
  customer
    inner join supplier
    on (customer.c_custkey is not NULL)
where supplier.s_address is not NULL
limit 87;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  lineitem.l_receiptdate, 
  sum(
    cast(cast(null as float8) as float8)), 
  lineitem.l_comment, 
  lineitem.l_extendedprice, 
  min(
    cast(cast(null as int2) as int2)), 
  lineitem.l_comment, 
  lineitem.l_receiptdate, 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_receiptdate = lineitem.l_commitdate;
select  
  nation.n_comment, 
  nation.n_name, 
  nation.n_comment, 
  supplier.s_comment, 
  nation.n_comment, 
  supplier.s_acctbal, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_regionkey, 
  partsupp.ps_availqty, 
  nation.n_regionkey, 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  nation.n_name, 
  supplier.s_suppkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  nation.n_nationkey, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as tid) as tid)), 
  supplier.s_comment
from 
  supplier
    inner join partsupp
        inner join nation
          inner join nation
          on (nation.n_regionkey <= nation.n_nationkey)
        on (partsupp.ps_comment = nation.n_comment )
      left join nation
      on (nation.n_name >= nation.n_name)
    on (partsupp.ps_supplycost > supplier.s_acctbal)
where nation.n_name < nation.n_name
limit 50;
select  
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 113;
select  
  customer.c_comment
from 
  customer
where customer.c_phone is not NULL
limit 92;
select  
  region.r_regionkey, 
  region.r_name, 
  min(
    cast(region.r_regionkey as int4)), 
  region.r_name, 
  region.r_name
from 
  region
where region.r_comment is not NULL;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  sum(
    cast(partsupp.ps_partkey as int4)), 
  orders.o_shippriority
from 
  partsupp
    inner join orders
      right join customer
        inner join supplier
          inner join supplier
              right join partsupp
              on (supplier.s_name <= supplier.s_phone)
            right join nation
            on (nation.n_nationkey <= supplier.s_nationkey)
          on (supplier.s_phone < nation.n_name)
        on (nation.n_name <= supplier.s_name)
      on (nation.n_name = orders.o_clerk)
    on (orders.o_orderstatus > nation.n_name)
where partsupp.ps_partkey is not NULL
limit 77;
select  
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as "time") as "time")), 
  orders.o_orderpriority
from 
  region
    inner join customer
          inner join orders
          on (customer.c_acctbal = orders.o_totalprice )
        right join part
        on (orders.o_orderdate < orders.o_orderdate)
      left join orders
      on (orders.o_orderdate <= orders.o_orderdate)
    on (part.p_retailprice is NULL)
where part.p_partkey is not NULL
limit 114;
select  
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_phone is NULL
limit 148;
select  
  supplier.s_nationkey, 
  partsupp.ps_comment, 
  supplier.s_address
from 
  supplier
    inner join partsupp
    on (supplier.s_address = partsupp.ps_comment )
where supplier.s_name is NULL;
select  
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  max(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  avg(
    cast(region.r_regionkey as int4)), 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as float4) as float4)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_name > region.r_name;
select  
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_comment
from 
  nation
where nation.n_regionkey is NULL;
select  
  customer.c_acctbal, 
  sum(
    cast(lineitem.l_partkey as int4)), 
  region.r_comment
from 
  customer
      inner join partsupp
          left join supplier
            right join supplier
            on (supplier.s_name > supplier.s_phone)
          on (partsupp.ps_availqty >= supplier.s_nationkey)
        inner join lineitem
          inner join region
          on (lineitem.l_tax < lineitem.l_extendedprice)
        on (lineitem.l_commitdate = lineitem.l_shipdate)
      on (supplier.s_acctbal > supplier.s_acctbal)
    right join supplier
    on (supplier.s_nationkey is NULL)
where lineitem.l_extendedprice is NULL
limit 152;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  lineitem
        right join orders
        on (lineitem.l_tax >= lineitem.l_tax)
      inner join supplier
      on (orders.o_orderpriority >= lineitem.l_linestatus)
    right join region
      inner join customer
      on (customer.c_acctbal = customer.c_acctbal)
    on (supplier.s_phone is not NULL)
where customer.c_phone < lineitem.l_shipinstruct
limit 76;
select  
  supplier.s_acctbal, 
  min(
    cast(cast(null as inet) as inet)), 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_suppkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as int2) as int2))
from 
  supplier
where supplier.s_name is not NULL
limit 50;
select  
  lineitem.l_tax, 
  lineitem.l_returnflag, 
  max(
    cast(cast(null as float8) as float8)), 
  lineitem.l_commitdate
from 
  lineitem
where lineitem.l_comment is NULL
limit 100;
select  
  nation.n_regionkey, 
  nation.n_regionkey, 
  min(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  nation.n_nationkey, 
  min(
    cast(cast(null as int8) as int8)), 
  nation.n_name, 
  nation.n_name, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  avg(
    cast(nation.n_nationkey as int4)), 
  nation.n_comment, 
  nation.n_nationkey
from 
  nation
where nation.n_nationkey >= nation.n_nationkey
limit 100;
select  
  supplier.s_comment, 
  supplier.s_name, 
  min(
    cast(cast(null as money) as money)), 
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_address is not NULL;
select  
  lineitem.l_partkey, 
  orders.o_clerk, 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as float4) as float4))
from 
  orders
    left join lineitem
    on (orders.o_custkey = lineitem.l_orderkey )
where orders.o_orderstatus is NULL;
select  
  orders.o_orderdate, 
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_name, 
  nation.n_comment, 
  max(
    cast(orders.o_orderdate as date)), 
  orders.o_shippriority, 
  part.p_container, 
  part.p_comment, 
  part.p_retailprice, 
  orders.o_custkey, 
  orders.o_clerk, 
  orders.o_comment, 
  customer.c_mktsegment, 
  orders.o_totalprice, 
  orders.o_comment, 
  orders.o_shippriority, 
  orders.o_orderkey, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  nation.n_regionkey, 
  orders.o_orderkey, 
  customer.c_acctbal, 
  customer.c_nationkey, 
  orders.o_comment, 
  customer.c_custkey, 
  part.p_type, 
  orders.o_clerk, 
  orders.o_clerk
from 
  orders
    inner join part
        right join customer
        on (customer.c_acctbal >= part.p_retailprice)
      left join nation
      on (customer.c_acctbal >= customer.c_acctbal)
    on (orders.o_orderstatus > part.p_brand)
where customer.c_acctbal <= customer.c_acctbal;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  partsupp.ps_availqty, 
  region.r_name
from 
  nation
      left join supplier
        inner join lineitem
          inner join region
          on (lineitem.l_receiptdate >= lineitem.l_commitdate)
        on (supplier.s_comment = region.r_comment )
      on (supplier.s_acctbal < lineitem.l_tax)
    right join part
        inner join orders
          inner join region
          on (orders.o_orderdate > orders.o_orderdate)
        on (part.p_retailprice >= part.p_retailprice)
      left join partsupp
      on (orders.o_shippriority = partsupp.ps_partkey )
    on (part.p_partkey is not NULL)
where lineitem.l_orderkey > orders.o_custkey
limit 80;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  lineitem.l_extendedprice, 
  lineitem.l_comment, 
  lineitem.l_extendedprice, 
  lineitem.l_orderkey, 
  lineitem.l_suppkey, 
  lineitem.l_tax, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  lineitem
where lineitem.l_shipinstruct > lineitem.l_linestatus
limit 84;
select  
  nation.n_name, 
  max(
    cast(cast(null as int2) as int2)), 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  nation.n_name, 
  nation.n_comment, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  nation
where nation.n_nationkey is NULL
limit 101;
select  
  customer.c_name
from 
  customer
where customer.c_phone = customer.c_phone
limit 35;
select  
  nation.n_comment
from 
  nation
    inner join lineitem
    on (lineitem.l_suppkey >= lineitem.l_orderkey)
where lineitem.l_tax >= lineitem.l_tax
limit 109;
select  
  lineitem.l_comment, 
  lineitem.l_suppkey, 
  lineitem.l_orderkey, 
  lineitem.l_shipmode
from 
  lineitem
where lineitem.l_linestatus < lineitem.l_shipmode
limit 139;
select  
  max(
    cast(supplier.s_nationkey as int4)), 
  supplier.s_comment, 
  supplier.s_comment
from 
  supplier
where supplier.s_comment is NULL
limit 80;
select  
  nation.n_comment, 
  orders.o_comment, 
  region.r_comment, 
  orders.o_orderdate, 
  customer.c_custkey, 
  min(
    cast(orders.o_orderdate as date)), 
  orders.o_clerk, 
  orders.o_totalprice, 
  customer.c_acctbal, 
  min(
    cast(cast(null as int2) as int2)), 
  region.r_comment, 
  region.r_regionkey, 
  orders.o_clerk, 
  orders.o_orderkey
from 
  customer
        right join orders
        on (customer.c_phone = customer.c_mktsegment)
      right join nation
      on (customer.c_nationkey < customer.c_custkey)
    right join region
    on (region.r_name is not NULL)
where orders.o_orderdate <= orders.o_orderdate
limit 27;
select  
  supplier.s_comment, 
  max(
    cast(cast(null as "time") as "time")), 
  supplier.s_comment
from 
  supplier
where supplier.s_nationkey is not NULL
limit 62;
select  
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_comment is not NULL
limit 13;
select  
  region.r_name, 
  region.r_name, 
  region.r_name, 
  count(
    cast(region.r_regionkey as int4)), 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_comment
from 
  region
where region.r_comment is NULL
limit 172;
select  
  part.p_retailprice, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  part.p_comment, 
  part.p_type
from 
  part
where part.p_type is NULL;
select  
  min(
    cast(cast(null as text) as text)), 
  supplier.s_suppkey, 
  partsupp.ps_partkey, 
  supplier.s_suppkey, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  partsupp
      left join partsupp
        right join supplier
          inner join orders
          on (supplier.s_acctbal >= orders.o_totalprice)
        on (partsupp.ps_supplycost >= orders.o_totalprice)
      on (supplier.s_phone >= supplier.s_name)
    inner join region
    on (supplier.s_nationkey = region.r_regionkey )
where orders.o_shippriority is not NULL
limit 79;
select  
  nation.n_name, 
  nation.n_nationkey, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as float4) as float4)), 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is not NULL
limit 136;
select  
  lineitem.l_shipmode, 
  nation.n_regionkey
from 
  lineitem
    right join region
        inner join nation
        on (region.r_name = region.r_name)
      right join nation
      on (nation.n_regionkey <= nation.n_regionkey)
    on (region.r_regionkey is not NULL)
where nation.n_name is NULL
limit 125;
select  
  part.p_size, 
  part.p_mfgr, 
  part.p_mfgr, 
  part.p_comment, 
  part.p_type, 
  part.p_mfgr, 
  part.p_name, 
  part.p_name, 
  part.p_brand, 
  part.p_comment, 
  part.p_partkey, 
  min(
    cast(cast(null as money) as money)), 
  part.p_size
from 
  part
where part.p_type is NULL;
select  
  lineitem.l_commitdate, 
  lineitem.l_linestatus, 
  lineitem.l_partkey, 
  lineitem.l_receiptdate, 
  lineitem.l_suppkey, 
  lineitem.l_commitdate, 
  lineitem.l_discount
from 
  lineitem
where lineitem.l_extendedprice <= lineitem.l_quantity;
select  
  nation.n_nationkey, 
  supplier.s_suppkey, 
  nation.n_comment, 
  supplier.s_comment, 
  supplier.s_comment
from 
  supplier
    left join part
        left join supplier
        on (part.p_mfgr >= part.p_mfgr)
      inner join nation
      on (part.p_retailprice <= part.p_retailprice)
    on (part.p_size is NULL)
where part.p_mfgr is not NULL;
select  
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_linestatus >= lineitem.l_returnflag
limit 136;
select  
  orders.o_orderstatus, 
  min(
    cast(cast(null as money) as money)), 
  orders.o_custkey, 
  orders.o_comment, 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  orders.o_shippriority
from 
  orders
where orders.o_orderdate < orders.o_orderdate
limit 100;
select  
  part.p_mfgr, 
  max(
    cast(orders.o_orderstatus as bpchar))
from 
  orders
    inner join part
    on (orders.o_custkey is NULL)
where orders.o_totalprice is not NULL
limit 87;
select  
  lineitem.l_comment, 
  lineitem.l_discount, 
  lineitem.l_receiptdate, 
  lineitem.l_discount, 
  lineitem.l_comment
from 
  lineitem
where lineitem.l_comment is NULL
limit 174;
select  
  supplier.s_acctbal, 
  customer.c_address, 
  lineitem.l_returnflag, 
  nation.n_name, 
  nation.n_nationkey, 
  lineitem.l_tax, 
  customer.c_custkey, 
  partsupp.ps_suppkey, 
  lineitem.l_linestatus, 
  supplier.s_name, 
  lineitem.l_commitdate, 
  supplier.s_comment, 
  max(
    cast(cast(null as int2) as int2)), 
  supplier.s_comment, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  lineitem.l_returnflag, 
  supplier.s_name, 
  nation.n_comment
from 
  partsupp
      inner join supplier
      on (partsupp.ps_supplycost = supplier.s_acctbal)
    inner join lineitem
        left join nation
        on (lineitem.l_partkey = nation.n_nationkey )
      inner join customer
      on (lineitem.l_commitdate > lineitem.l_shipdate)
    on (customer.c_phone >= lineitem.l_shipinstruct)
where lineitem.l_suppkey is NULL
limit 117;
select  
  region.r_regionkey
from 
  region
where region.r_name <= region.r_name
limit 147;
select  
  customer.c_nationkey, 
  customer.c_phone, 
  nation.n_name, 
  orders.o_shippriority, 
  part.p_comment
from 
  region
    left join customer
          left join nation
          on (customer.c_phone > customer.c_mktsegment)
        left join part
        on (customer.c_custkey = part.p_partkey)
      inner join orders
        right join orders
        on (orders.o_shippriority = orders.o_orderkey )
      on (orders.o_totalprice = orders.o_totalprice)
    on (region.r_comment = customer.c_name )
where region.r_regionkey is not NULL
limit 99;
select  
  min(
    cast(cast(null as text) as text)), 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 83;
select  
  part.p_retailprice, 
  part.p_partkey, 
  part.p_brand
from 
  part
where part.p_partkey is NULL
limit 81;
select  
  partsupp.ps_availqty, 
  min(
    cast(cast(null as inet) as inet)), 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 102;
select  
  orders.o_clerk, 
  part.p_size, 
  orders.o_totalprice, 
  min(
    cast(orders.o_orderdate as date)), 
  orders.o_orderpriority
from 
  nation
        right join orders
        on (orders.o_orderdate > orders.o_orderdate)
      inner join part
      on (part.p_mfgr < nation.n_name)
    inner join orders
          inner join lineitem
          on (lineitem.l_extendedprice > lineitem.l_tax)
        right join supplier
              left join orders
              on (orders.o_clerk >= orders.o_clerk)
            inner join part
            on (orders.o_orderpriority <= orders.o_clerk)
          left join partsupp
          on (orders.o_shippriority = partsupp.ps_partkey)
        on (supplier.s_phone = orders.o_orderpriority)
      left join region
        inner join nation
        on (region.r_name = nation.n_name )
      on (lineitem.l_discount > lineitem.l_extendedprice)
    on (orders.o_shippriority is NULL)
where part.p_comment is NULL;
select  
  supplier.s_comment
from 
  supplier
where supplier.s_acctbal is not NULL
limit 112;
select  
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(cast(null as xid8) as xid8)), 
  region.r_comment, 
  region.r_comment, 
  avg(
    cast(region.r_regionkey as int4)), 
  region.r_name, 
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_comment is not NULL
limit 107;
select  
  min(
    cast(cast(null as tid) as tid)), 
  supplier.s_address, 
  lineitem.l_shipinstruct, 
  lineitem.l_tax, 
  lineitem.l_orderkey, 
  supplier.s_address, 
  min(
    cast(cast(null as money) as money)), 
  lineitem.l_discount, 
  supplier.s_suppkey, 
  lineitem.l_returnflag, 
  supplier.s_nationkey
from 
  supplier
    right join lineitem
    on (lineitem.l_commitdate <= lineitem.l_receiptdate)
where lineitem.l_commitdate is NULL
limit 52;
select  
  lineitem.l_partkey, 
  lineitem.l_shipdate, 
  sum(
    cast(lineitem.l_orderkey as int4)), 
  supplier.s_address, 
  max(
    cast(lineitem.l_quantity as "numeric")), 
  lineitem.l_linestatus, 
  count(
    cast(lineitem.l_shipmode as bpchar)), 
  lineitem.l_discount, 
  supplier.s_comment
from 
  lineitem
    inner join supplier
    on (lineitem.l_orderkey > lineitem.l_linenumber)
where lineitem.l_returnflag is not NULL
limit 95;
select  
  supplier.s_name, 
  supplier.s_name, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_nationkey is NULL
limit 147;
select  
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_phone
from 
  customer
where customer.c_nationkey < customer.c_custkey
limit 120;
select  
  sum(
    cast(cast(null as money) as money)), 
  supplier.s_comment, 
  supplier.s_name, 
  max(
    cast(cast(null as timetz) as timetz)), 
  lineitem.l_comment, 
  supplier.s_nationkey
from 
  supplier
    right join lineitem
    on (supplier.s_comment is not NULL)
where supplier.s_acctbal is not NULL;
select  
  part.p_partkey, 
  customer.c_nationkey, 
  max(
    cast(cast(null as "time") as "time"))
from 
  region
          right join orders
          on (orders.o_orderdate = orders.o_orderdate)
        right join part
            left join lineitem
            on (part.p_retailprice >= part.p_retailprice)
          inner join customer
          on (lineitem.l_receiptdate = lineitem.l_receiptdate)
        on (region.r_regionkey = customer.c_custkey )
      right join supplier
      on (lineitem.l_orderkey = supplier.s_suppkey )
    left join region
    on (region.r_regionkey is NULL)
where part.p_brand is NULL;
select  
  max(
    cast(cast(null as int2) as int2)), 
  region.r_comment
from 
  region
where region.r_name is NULL;
select  
  max(
    cast(partsupp.ps_supplycost as "numeric")), 
  region.r_comment, 
  supplier.s_phone, 
  customer.c_mktsegment, 
  partsupp.ps_partkey
from 
  partsupp
        inner join nation
          inner join customer
            inner join customer
              inner join region
              on (region.r_regionkey > region.r_regionkey)
            on (customer.c_acctbal = customer.c_acctbal)
          on (customer.c_mktsegment = nation.n_name)
        on (customer.c_nationkey <= region.r_regionkey)
      inner join supplier
      on (supplier.s_acctbal > customer.c_acctbal)
    right join region
    on (nation.n_name > customer.c_mktsegment)
where nation.n_comment is NULL;
select  
  lineitem.l_shipinstruct, 
  lineitem.l_receiptdate, 
  lineitem.l_shipmode, 
  lineitem.l_returnflag, 
  lineitem.l_extendedprice, 
  max(
    cast(cast(null as float8) as float8)), 
  lineitem.l_quantity, 
  max(
    cast(lineitem.l_linenumber as int4)), 
  lineitem.l_returnflag, 
  min(
    cast(cast(null as "time") as "time")), 
  lineitem.l_extendedprice, 
  lineitem.l_partkey, 
  lineitem.l_tax, 
  lineitem.l_shipinstruct
from 
  lineitem
where lineitem.l_commitdate is NULL
limit 92;
select  
  partsupp.ps_suppkey
from 
  part
          left join orders
          on (part.p_partkey <= orders.o_custkey)
        left join orders
          inner join lineitem
          on (lineitem.l_shipdate = lineitem.l_commitdate)
        on (lineitem.l_commitdate < lineitem.l_commitdate)
      inner join region
      on (orders.o_orderpriority = part.p_mfgr)
    right join partsupp
      inner join lineitem
          inner join supplier
              inner join part
              on (supplier.s_acctbal = part.p_retailprice )
            inner join lineitem
            on (supplier.s_acctbal = lineitem.l_quantity)
          on (lineitem.l_partkey = lineitem.l_orderkey )
        left join part
        on (part.p_size = supplier.s_suppkey)
      on (lineitem.l_shipinstruct >= part.p_brand)
    on (region.r_regionkey is not NULL)
where part.p_retailprice < orders.o_totalprice
limit 41;
select  
  region.r_regionkey
from 
  region
where region.r_name is not NULL
limit 45;
select  
  lineitem.l_shipinstruct, 
  lineitem.l_shipmode, 
  lineitem.l_shipmode, 
  lineitem.l_discount, 
  lineitem.l_linestatus, 
  lineitem.l_tax, 
  lineitem.l_commitdate, 
  lineitem.l_linenumber, 
  lineitem.l_commitdate, 
  max(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_comment is not NULL
limit 95;
select  
  lineitem.l_discount, 
  min(
    cast(lineitem.l_tax as "numeric"))
from 
  orders
      inner join region
        inner join supplier
          inner join lineitem
            inner join lineitem
            on (lineitem.l_discount = lineitem.l_tax)
          on (lineitem.l_linestatus = lineitem.l_returnflag)
        on (lineitem.l_quantity <= lineitem.l_tax)
      on (lineitem.l_receiptdate <= orders.o_orderdate)
    inner join supplier
    on (lineitem.l_discount < lineitem.l_extendedprice)
where region.r_comment is not NULL;
select  
  part.p_partkey, 
  orders.o_clerk, 
  part.p_mfgr, 
  orders.o_comment, 
  min(
    cast(cast(null as text) as text)), 
  partsupp.ps_suppkey
from 
  region
    inner join region
          left join part
            inner join supplier
              inner join orders
              on (supplier.s_name = orders.o_orderstatus )
            on (supplier.s_suppkey <= part.p_partkey)
          on (part.p_retailprice = orders.o_totalprice)
        inner join partsupp
        on (part.p_container >= region.r_name)
      inner join part
      on (orders.o_orderdate = orders.o_orderdate)
    on (region.r_name = orders.o_orderstatus )
where supplier.s_phone is not NULL
limit 90;
select  
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  nation
where nation.n_name <= nation.n_name
limit 122;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as money) as money)), 
  supplier.s_acctbal, 
  region.r_name, 
  partsupp.ps_comment
from 
  supplier
      right join part
        left join supplier
        on (part.p_size >= part.p_partkey)
      on (supplier.s_acctbal >= supplier.s_acctbal)
    inner join lineitem
          inner join lineitem
            inner join nation
            on (nation.n_nationkey > lineitem.l_partkey)
          on (lineitem.l_shipdate > lineitem.l_commitdate)
        right join partsupp
        on (lineitem.l_extendedprice = partsupp.ps_supplycost )
      right join nation
        inner join region
              left join region
              on (region.r_regionkey < region.r_regionkey)
            inner join partsupp
            on (region.r_regionkey = region.r_regionkey)
          inner join part
          on (part.p_container < part.p_container)
        on (part.p_brand = nation.n_name)
      on (lineitem.l_receiptdate = lineitem.l_shipdate)
    on (nation.n_name is not NULL)
where supplier.s_phone is NULL
limit 79;
select  
  supplier.s_address, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(cast(null as inet) as inet)), 
  supplier.s_suppkey, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_nationkey <= supplier.s_suppkey
limit 122;
select  
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_acctbal, 
  min(
    cast(cast(null as int8) as int8))
from 
  customer
where customer.c_custkey <= customer.c_custkey
limit 125;
select  
  lineitem.l_extendedprice, 
  lineitem.l_linestatus
from 
  lineitem
    left join region
    on (lineitem.l_comment = region.r_comment )
where region.r_name is NULL
limit 83;
select  
  customer.c_name, 
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(customer.c_mktsegment as bpchar)), 
  lineitem.l_shipinstruct, 
  customer.c_mktsegment, 
  lineitem.l_shipinstruct, 
  customer.c_mktsegment, 
  lineitem.l_comment, 
  max(
    cast(lineitem.l_shipdate as date)), 
  lineitem.l_shipmode, 
  customer.c_comment, 
  lineitem.l_shipmode
from 
  customer
    right join customer
      inner join lineitem
      on (lineitem.l_quantity >= lineitem.l_discount)
    on (lineitem.l_shipmode is not NULL)
where customer.c_phone = customer.c_mktsegment;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  nation.n_name, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  max(
    cast(cast(null as int8) as int8)), 
  nation.n_comment
from 
  nation
where nation.n_name is not NULL;
select  
  customer.c_comment, 
  customer.c_mktsegment, 
  customer.c_phone, 
  customer.c_address, 
  customer.c_acctbal, 
  customer.c_nationkey, 
  customer.c_custkey, 
  customer.c_acctbal, 
  customer.c_name
from 
  customer
where customer.c_phone is NULL
limit 156;
select  
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as date) as date)), 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_partkey = partsupp.ps_suppkey
limit 105;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  orders.o_orderstatus, 
  orders.o_orderkey
from 
  orders
where orders.o_clerk > orders.o_clerk
limit 106;
select  
  part.p_name, 
  part.p_size
from 
  part
    inner join nation
        inner join nation
        on (nation.n_nationkey < nation.n_nationkey)
      left join customer
      on (nation.n_name = customer.c_phone )
    on (customer.c_acctbal >= part.p_retailprice)
where part.p_mfgr is not NULL
limit 124;
select  
  lineitem.l_linestatus, 
  supplier.s_acctbal, 
  part.p_mfgr, 
  min(
    cast(cast(null as float8) as float8)), 
  region.r_name, 
  lineitem.l_commitdate
from 
  lineitem
    right join lineitem
      left join part
              left join orders
              on (orders.o_totalprice = part.p_retailprice)
            left join customer
            on (orders.o_custkey = customer.c_custkey )
          inner join partsupp
              left join region
              on (partsupp.ps_partkey = region.r_regionkey )
            inner join nation
            on (partsupp.ps_supplycost < partsupp.ps_supplycost)
          on (orders.o_clerk = customer.c_mktsegment)
        right join supplier
        on (partsupp.ps_supplycost < customer.c_acctbal)
      on (lineitem.l_shipmode = region.r_name )
    on (lineitem.l_returnflag >= customer.c_mktsegment)
where nation.n_nationkey is not NULL;
select  
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  max(
    cast(cast(null as tid) as tid)), 
  region.r_name, 
  region.r_regionkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_regionkey is NULL
limit 71;
select  
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
where nation.n_regionkey = nation.n_regionkey;
select  
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_shipinstruct = lineitem.l_shipinstruct
limit 24;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  customer.c_address, 
  min(
    cast(cast(null as float4) as float4)), 
  customer.c_name
from 
  customer
where customer.c_custkey < customer.c_custkey
limit 42;
select  
  region.r_name, 
  region.r_regionkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  supplier.s_name, 
  region.r_comment, 
  region.r_name
from 
  supplier
    inner join region
      inner join region
      on (region.r_name < region.r_name)
    on (supplier.s_acctbal is NULL)
where region.r_name is not NULL
limit 94;
select  
  supplier.s_acctbal, 
  orders.o_custkey
from 
  orders
    inner join supplier
    on (orders.o_comment = supplier.s_address )
where supplier.s_address is NULL
limit 94;
select  
  orders.o_orderpriority, 
  orders.o_totalprice, 
  min(
    cast(orders.o_orderdate as date)), 
  orders.o_clerk, 
  orders.o_orderdate, 
  orders.o_orderpriority, 
  orders.o_comment
from 
  orders
where orders.o_clerk is NULL
limit 100;
select  
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 68;
select  
  lineitem.l_discount, 
  lineitem.l_discount
from 
  lineitem
where lineitem.l_comment is not NULL
limit 147;
select  
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_name
from 
  nation
where nation.n_comment is not NULL
limit 196;
select  
  min(
    cast(cast(null as float4) as float4)), 
  customer.c_nationkey, 
  customer.c_custkey, 
  orders.o_shippriority
from 
  region
        inner join orders
        on (orders.o_orderdate < orders.o_orderdate)
      inner join orders
      on (orders.o_orderdate < orders.o_orderdate)
    inner join customer
        inner join customer
          inner join customer
            inner join supplier
              inner join supplier
              on (supplier.s_acctbal <= supplier.s_acctbal)
            on (customer.c_nationkey >= supplier.s_nationkey)
          on (customer.c_mktsegment = customer.c_phone )
        on (customer.c_nationkey = customer.c_nationkey)
      inner join partsupp
      on (supplier.s_acctbal <= customer.c_acctbal)
    on (orders.o_clerk is not NULL)
where supplier.s_phone is NULL
limit 60;
select  
  nation.n_regionkey, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  nation
where nation.n_comment is NULL
limit 30;
select  
  orders.o_orderdate
from 
  orders
where orders.o_clerk is NULL;
select  
  lineitem.l_discount, 
  lineitem.l_shipinstruct, 
  lineitem.l_discount, 
  lineitem.l_tax, 
  lineitem.l_linestatus, 
  lineitem.l_tax, 
  lineitem.l_shipmode, 
  lineitem.l_quantity, 
  lineitem.l_returnflag, 
  lineitem.l_linestatus
from 
  lineitem
where lineitem.l_shipinstruct is NULL
limit 145;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_comment is not NULL
limit 148;
select  
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_name is NULL
limit 112;
select  
  min(
    cast(lineitem.l_shipinstruct as bpchar)), 
  lineitem.l_shipdate
from 
  lineitem
where lineitem.l_discount is not NULL
limit 102;
select  
  nation.n_comment
from 
  partsupp
    inner join nation
    on (nation.n_regionkey is not NULL)
where partsupp.ps_availqty is not NULL;
select distinct 
  nation.n_regionkey, 
  nation.n_regionkey, 
  lineitem.l_shipdate
from 
  nation
    right join lineitem
    on (lineitem.l_shipdate <= lineitem.l_shipdate)
where lineitem.l_discount = lineitem.l_extendedprice
limit 60;
select  
  customer.c_comment
from 
  customer
      inner join supplier
      on (customer.c_phone >= customer.c_mktsegment)
    left join supplier
    on (supplier.s_nationkey is NULL)
where customer.c_name is not NULL
limit 113;
select  
  orders.o_totalprice, 
  orders.o_orderpriority, 
  orders.o_shippriority
from 
  orders
where orders.o_custkey is NULL
limit 88;
select  
  region.r_name, 
  min(
    cast(cast(null as int2) as int2)), 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_name is NULL;
select  
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as inet) as inet)), 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_availqty is NULL;
select  
  orders.o_orderkey, 
  region.r_name, 
  region.r_regionkey, 
  avg(
    cast(orders.o_totalprice as "numeric"))
from 
  region
    left join orders
      inner join region
      on (orders.o_custkey >= orders.o_custkey)
    on (region.r_name is NULL)
where region.r_name < orders.o_orderpriority
limit 48;
select  
  min(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_comment, 
  orders.o_orderpriority, 
  orders.o_custkey, 
  orders.o_shippriority, 
  orders.o_clerk, 
  orders.o_comment, 
  orders.o_custkey
from 
  orders
where orders.o_orderdate is NULL
limit 77;
select  
  part.p_comment, 
  part.p_brand, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  part.p_brand, 
  max(
    cast(part.p_size as int4)), 
  part.p_name, 
  part.p_name
from 
  part
where part.p_partkey > part.p_partkey
limit 100;
select  
  region.r_name
from 
  region
    inner join supplier
    on (region.r_comment is NULL)
where supplier.s_phone is NULL;
select  
  region.r_regionkey, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_nationkey
from 
  nation
    inner join region
    on (nation.n_nationkey = region.r_regionkey )
where region.r_regionkey is not NULL;
select  
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_comment is not NULL
limit 41;
select  
  min(
    cast(cast(null as inet) as inet)), 
  nation.n_regionkey, 
  min(
    cast(cast(null as float8) as float8))
from 
  lineitem
        left join region
        on (region.r_regionkey <= lineitem.l_partkey)
      left join region
      on (lineitem.l_suppkey <= region.r_regionkey)
    inner join lineitem
          inner join region
            right join lineitem
              right join part
                right join nation
                on (part.p_retailprice <= part.p_retailprice)
              on (nation.n_nationkey = part.p_partkey)
            on (nation.n_nationkey >= region.r_regionkey)
          on (lineitem.l_discount <= lineitem.l_quantity)
        inner join nation
        on (lineitem.l_commitdate <= lineitem.l_shipdate)
      right join customer
          inner join region
              right join partsupp
              on (region.r_name >= region.r_name)
            left join nation
              inner join supplier
              on (nation.n_name = nation.n_name)
            on (supplier.s_phone < supplier.s_name)
          on (customer.c_phone = supplier.s_name )
        inner join nation
        on (customer.c_acctbal > supplier.s_acctbal)
      on (partsupp.ps_partkey >= lineitem.l_orderkey)
    on (region.r_regionkey is NULL)
where nation.n_name is not NULL;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as date) as date)), 
  region.r_regionkey
from 
  region
where region.r_name <= region.r_name
limit 104;
select  
  customer.c_address, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as date) as date)), 
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_address, 
  max(
    cast(cast(null as int2) as int2)), 
  customer.c_custkey, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_custkey, 
  customer.c_mktsegment, 
  customer.c_comment, 
  customer.c_address, 
  customer.c_comment
from 
  customer
where customer.c_phone is not NULL
limit 154;
select  
  avg(
    cast(cast(null as int8) as int8)), 
  min(
    cast(part.p_container as bpchar)), 
  part.p_size, 
  part.p_brand, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey
from 
  part
            right join partsupp
            on (part.p_size = partsupp.ps_partkey )
          inner join lineitem
            right join customer
                inner join region
                on (region.r_regionkey > region.r_regionkey)
              left join part
              on (part.p_retailprice < customer.c_acctbal)
            on (lineitem.l_shipmode = region.r_name )
          on (customer.c_nationkey = lineitem.l_partkey)
        left join partsupp
          inner join part
          on (partsupp.ps_suppkey = partsupp.ps_partkey)
        on (part.p_container >= lineitem.l_linestatus)
      right join partsupp
      on (part.p_retailprice = partsupp.ps_supplycost)
    inner join customer
    on (lineitem.l_quantity is not NULL)
where region.r_regionkey is not NULL;
select  
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_nationkey, 
  avg(
    cast(cast(null as int8) as int8)), 
  avg(
    cast(cast(null as float8) as float8)), 
  nation.n_name, 
  avg(
    cast(cast(null as int8) as int8)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  nation.n_comment, 
  nation.n_comment, 
  sum(
    cast(cast(null as float8) as float8)), 
  nation.n_nationkey, 
  nation.n_name, 
  max(
    cast(nation.n_name as bpchar))
from 
  nation
where nation.n_name = nation.n_name
limit 146;
select  
  part.p_brand, 
  avg(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as int8) as int8))
from 
  part
          right join part
          on (part.p_comment = part.p_name )
        inner join nation
          right join part
          on (part.p_size <= part.p_size)
        on (part.p_retailprice < part.p_retailprice)
      left join lineitem
      on (lineitem.l_commitdate > lineitem.l_receiptdate)
    right join region
      right join part
      on (part.p_retailprice < part.p_retailprice)
    on (lineitem.l_orderkey is not NULL)
where part.p_type is not NULL
limit 26;
select  
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  part.p_retailprice, 
  supplier.s_phone, 
  part.p_size, 
  supplier.s_address, 
  part.p_partkey
from 
  part
    left join supplier
    on (supplier.s_suppkey is not NULL)
where part.p_size is not NULL
limit 80;
select  
  partsupp.ps_supplycost, 
  supplier.s_address, 
  part.p_type, 
  count(
    cast(region.r_regionkey as int4)), 
  partsupp.ps_availqty
from 
  supplier
          right join supplier
          on (supplier.s_acctbal >= supplier.s_acctbal)
        left join nation
          right join region
          on (region.r_regionkey > nation.n_nationkey)
        on (nation.n_nationkey <= supplier.s_suppkey)
      inner join partsupp
        right join partsupp
        on (partsupp.ps_partkey >= partsupp.ps_availqty)
      on (supplier.s_phone >= supplier.s_phone)
    inner join part
    on (region.r_comment is not NULL)
where part.p_mfgr <= region.r_name;
select  
  customer.c_mktsegment, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as "time") as "time")), 
  customer.c_address, 
  customer.c_address
from 
  customer
where customer.c_nationkey is not NULL
limit 136;
select  
  part.p_size, 
  part.p_comment
from 
  part
where part.p_mfgr is NULL
limit 43;
select  
  lineitem.l_linenumber, 
  region.r_name, 
  min(
    cast(lineitem.l_suppkey as int4)), 
  partsupp.ps_suppkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  lineitem.l_quantity
from 
  lineitem
      inner join region
      on (lineitem.l_comment = region.r_comment )
    inner join partsupp
    on (partsupp.ps_partkey is NULL)
where region.r_comment is NULL
limit 147;
select  
  supplier.s_phone, 
  customer.c_address, 
  part.p_retailprice
from 
  customer
        inner join customer
          inner join supplier
          on (customer.c_acctbal >= customer.c_acctbal)
        on (supplier.s_phone < customer.c_phone)
      right join part
      on (customer.c_phone > supplier.s_name)
    inner join lineitem
    on (lineitem.l_suppkey > supplier.s_suppkey)
where supplier.s_phone is not NULL
limit 177;
select  
  part.p_retailprice
from 
  lineitem
    left join part
    on (lineitem.l_orderkey is NULL)
where lineitem.l_tax >= lineitem.l_extendedprice
limit 159;
select  
  customer.c_name, 
  customer.c_name, 
  nation.n_regionkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  count(*), 
  partsupp.ps_suppkey, 
  lineitem.l_partkey, 
  customer.c_nationkey, 
  min(
    cast(partsupp.ps_supplycost as "numeric")), 
  lineitem.l_orderkey, 
  nation.n_regionkey, 
  part.p_name, 
  min(
    cast(partsupp.ps_partkey as int4)), 
  part.p_container, 
  partsupp.ps_availqty, 
  customer.c_address, 
  lineitem.l_shipdate, 
  customer.c_phone, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_extendedprice, 
  customer.c_custkey
from 
  customer
          inner join lineitem
            right join partsupp
              inner join customer
              on (partsupp.ps_partkey = customer.c_custkey )
            on (lineitem.l_returnflag >= lineitem.l_linestatus)
          on (lineitem.l_linenumber < lineitem.l_orderkey)
        inner join customer
          right join orders
              inner join partsupp
              on (orders.o_totalprice = partsupp.ps_supplycost )
            left join region
              inner join nation
                left join partsupp
                on (nation.n_name > nation.n_name)
              on (partsupp.ps_availqty >= nation.n_regionkey)
            on (orders.o_orderdate >= orders.o_orderdate)
          on (customer.c_nationkey = partsupp.ps_partkey )
        on (customer.c_custkey >= lineitem.l_partkey)
      inner join partsupp
        right join customer
        on (customer.c_mktsegment >= customer.c_phone)
      on (lineitem.l_discount <= orders.o_totalprice)
    inner join part
    on (lineitem.l_tax is not NULL)
where lineitem.l_suppkey is not NULL
limit 81;
select  
  lineitem.l_linenumber, 
  lineitem.l_shipinstruct, 
  lineitem.l_commitdate, 
  lineitem.l_commitdate, 
  lineitem.l_shipdate, 
  avg(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as "time") as "time")), 
  lineitem.l_discount, 
  lineitem.l_commitdate, 
  min(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_receiptdate, 
  lineitem.l_shipmode, 
  max(
    cast(lineitem.l_linenumber as int4)), 
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_receiptdate <= lineitem.l_shipdate
limit 105;
select  
  orders.o_shippriority, 
  orders.o_custkey, 
  orders.o_clerk, 
  orders.o_totalprice
from 
  orders
where orders.o_custkey is not NULL;
select  
  customer.c_custkey, 
  customer.c_mktsegment
from 
  customer
where customer.c_address is not NULL;
select  
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_name
from 
  nation
where nation.n_regionkey is not NULL
limit 113;
select  
  lineitem.l_returnflag, 
  lineitem.l_shipdate, 
  lineitem.l_suppkey, 
  lineitem.l_discount, 
  lineitem.l_suppkey
from 
  lineitem
where lineitem.l_shipinstruct is NULL
limit 107;
select  
  lineitem.l_returnflag, 
  lineitem.l_suppkey, 
  max(
    cast(cast(null as money) as money)), 
  lineitem.l_orderkey, 
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_tax is not NULL;
select  
  max(
    cast(cast(null as money) as money)), 
  supplier.s_phone, 
  part.p_type, 
  supplier.s_acctbal
from 
  supplier
    right join nation
          left join orders
          on (nation.n_name <= nation.n_name)
        inner join part
        on (part.p_brand <= nation.n_name)
      inner join supplier
      on (orders.o_totalprice > orders.o_totalprice)
    on (part.p_mfgr >= part.p_brand)
where orders.o_custkey is NULL
limit 125;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  max(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_supplycost = partsupp.ps_supplycost
limit 73;
select  
  max(
    cast(cast(null as int8) as int8)), 
  customer.c_phone
from 
  partsupp
        left join orders
            left join customer
            on (orders.o_orderstatus = customer.c_mktsegment)
          inner join orders
          on (orders.o_orderstatus = orders.o_orderstatus )
        on (orders.o_totalprice >= orders.o_totalprice)
      inner join supplier
      on (orders.o_orderdate <= orders.o_orderdate)
    inner join partsupp
    on (orders.o_custkey is not NULL)
where partsupp.ps_partkey is not NULL
limit 83;
select  
  max(
    cast(cast(null as date) as date)), 
  customer.c_custkey, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as "time") as "time")), 
  customer.c_address, 
  customer.c_name, 
  customer.c_nationkey, 
  max(
    cast(customer.c_phone as bpchar)), 
  customer.c_name, 
  customer.c_address, 
  customer.c_name, 
  customer.c_name, 
  customer.c_phone
from 
  customer
where customer.c_comment is NULL
limit 108;
select  
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_name > region.r_name;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(lineitem.l_commitdate as date)), 
  customer.c_mktsegment, 
  partsupp.ps_supplycost, 
  sum(
    cast(cast(null as float4) as float4)), 
  region.r_comment, 
  customer.c_nationkey, 
  part.p_mfgr, 
  max(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  lineitem
      right join lineitem
            inner join region
              left join partsupp
              on (partsupp.ps_suppkey < region.r_regionkey)
            on (lineitem.l_quantity = lineitem.l_quantity)
          left join lineitem
          on (lineitem.l_orderkey <= partsupp.ps_suppkey)
        right join part
          left join region
          on (part.p_retailprice >= part.p_retailprice)
        on (lineitem.l_discount >= lineitem.l_quantity)
      on (partsupp.ps_partkey < lineitem.l_suppkey)
    left join customer
    on (lineitem.l_tax = lineitem.l_extendedprice)
where part.p_container is not NULL
limit 147;
select  
  customer.c_comment, 
  customer.c_acctbal
from 
  lineitem
    inner join nation
              inner join orders
              on (orders.o_orderdate = orders.o_orderdate)
            inner join nation
            on (orders.o_orderpriority = nation.n_name)
          inner join partsupp
              right join region
              on (partsupp.ps_supplycost = partsupp.ps_supplycost)
            inner join supplier
            on (supplier.s_acctbal >= supplier.s_acctbal)
          on (orders.o_orderdate = orders.o_orderdate)
        inner join region
            inner join part
            on (part.p_retailprice > part.p_retailprice)
          right join orders
              right join part
              on (part.p_mfgr > orders.o_orderstatus)
            inner join orders
            on (orders.o_orderdate = orders.o_orderdate)
          on (part.p_retailprice > orders.o_totalprice)
        on (orders.o_orderdate >= orders.o_orderdate)
      inner join lineitem
          right join customer
          on (lineitem.l_receiptdate = lineitem.l_shipdate)
        inner join customer
        on (customer.c_acctbal < lineitem.l_discount)
      on (orders.o_clerk = nation.n_name)
    on (orders.o_orderkey is not NULL)
where orders.o_orderdate is NULL;
select  
  orders.o_orderstatus, 
  lineitem.l_returnflag
from 
  orders
    left join partsupp
        left join supplier
        on (partsupp.ps_supplycost < supplier.s_acctbal)
      inner join region
          inner join supplier
            right join orders
            on (orders.o_orderkey > orders.o_orderkey)
          on (supplier.s_nationkey = region.r_regionkey)
        inner join orders
            inner join region
            on (region.r_regionkey < orders.o_orderkey)
          inner join lineitem
          on (orders.o_totalprice > lineitem.l_tax)
        on (orders.o_clerk = lineitem.l_returnflag )
      on (orders.o_custkey >= lineitem.l_suppkey)
    on (supplier.s_suppkey is NULL)
where lineitem.l_shipdate <= orders.o_orderdate
limit 112;
select  
  region.r_comment, 
  orders.o_orderdate, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  orders.o_shippriority, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  orders.o_orderkey
from 
  region
    inner join region
      inner join orders
      on (orders.o_custkey <= region.r_regionkey)
    on (region.r_name is NULL)
where orders.o_shippriority <= orders.o_custkey;
select  
  customer.c_acctbal, 
  customer.c_acctbal
from 
  customer
where customer.c_custkey is NULL
limit 147;
select  
  supplier.s_name, 
  sum(
    cast(nation.n_nationkey as int4)), 
  max(
    cast(nation.n_name as bpchar)), 
  nation.n_regionkey, 
  part.p_partkey, 
  part.p_name, 
  part.p_comment, 
  supplier.s_comment, 
  region.r_regionkey, 
  part.p_name, 
  orders.o_orderdate, 
  supplier.s_acctbal, 
  orders.o_clerk
from 
  part
            inner join nation
            on (part.p_retailprice > part.p_retailprice)
          inner join part
            left join supplier
            on (part.p_retailprice >= part.p_retailprice)
          on (part.p_retailprice = part.p_retailprice )
        right join orders
        on (part.p_retailprice = orders.o_totalprice )
      inner join customer
        inner join partsupp
        on (customer.c_acctbal >= customer.c_acctbal)
      on (nation.n_comment = customer.c_name )
    inner join region
        left join orders
        on (orders.o_totalprice > orders.o_totalprice)
      right join orders
        inner join supplier
        on (orders.o_totalprice > orders.o_totalprice)
      on (orders.o_orderdate < orders.o_orderdate)
    on (region.r_name is not NULL)
where orders.o_shippriority is not NULL
limit 76;
select  
  lineitem.l_returnflag, 
  lineitem.l_linestatus, 
  max(
    cast(lineitem.l_shipdate as date)), 
  lineitem.l_discount, 
  min(
    cast(lineitem.l_partkey as int4))
from 
  lineitem
where lineitem.l_shipinstruct <= lineitem.l_shipinstruct
limit 162;
select  
  region.r_regionkey, 
  region.r_comment, 
  part.p_mfgr, 
  region.r_comment, 
  part.p_size, 
  orders.o_orderkey, 
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as "time") as "time"))
from 
  supplier
          inner join region
          on (supplier.s_acctbal < supplier.s_acctbal)
        right join part
          inner join lineitem
            left join customer
            on (lineitem.l_commitdate >= lineitem.l_receiptdate)
          on (lineitem.l_shipmode >= lineitem.l_linestatus)
        on (lineitem.l_returnflag < customer.c_phone)
      inner join part
            inner join region
            on (part.p_retailprice = part.p_retailprice)
          inner join lineitem
              inner join lineitem
              on (lineitem.l_comment = lineitem.l_comment )
            left join partsupp
            on (lineitem.l_extendedprice > lineitem.l_extendedprice)
          on (lineitem.l_discount >= lineitem.l_tax)
        right join region
        on (part.p_mfgr < region.r_name)
      on (part.p_partkey < region.r_regionkey)
    inner join orders
      left join region
      on (region.r_regionkey < orders.o_custkey)
    on (orders.o_custkey >= lineitem.l_suppkey)
where lineitem.l_comment is NULL
limit 82;
select  
  part.p_retailprice, 
  part.p_name, 
  part.p_retailprice, 
  part.p_brand, 
  part.p_comment
from 
  part
where part.p_size is NULL
limit 88;
select  
  region.r_name
from 
  lineitem
      left join region
          right join orders
          on (orders.o_orderstatus >= region.r_name)
        left join lineitem
        on (lineitem.l_tax < orders.o_totalprice)
      on (lineitem.l_linenumber >= lineitem.l_orderkey)
    inner join lineitem
    on (lineitem.l_receiptdate >= lineitem.l_shipdate)
where lineitem.l_discount is not NULL;
select  
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as tid) as tid))
from 
  region
where region.r_name is not NULL
limit 92;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  supplier.s_address, 
  supplier.s_suppkey, 
  supplier.s_nationkey
from 
  partsupp
      left join supplier
      on (supplier.s_acctbal >= partsupp.ps_supplycost)
    right join partsupp
    on (supplier.s_name is not NULL)
where supplier.s_name < supplier.s_phone;
select  
  nation.n_comment, 
  customer.c_acctbal, 
  customer.c_comment
from 
  partsupp
      right join nation
          left join part
          on (part.p_size >= part.p_partkey)
        right join part
        on (part.p_container = part.p_container)
      on (partsupp.ps_partkey = part.p_partkey )
    right join orders
        right join part
        on (part.p_retailprice <= orders.o_totalprice)
      left join customer
          inner join region
              inner join supplier
              on (supplier.s_name >= supplier.s_name)
            left join region
            on (region.r_name > region.r_name)
          on (customer.c_custkey = region.r_regionkey )
        inner join lineitem
        on (lineitem.l_receiptdate <= lineitem.l_shipdate)
      on (customer.c_acctbal <= lineitem.l_tax)
    on (lineitem.l_receiptdate < orders.o_orderdate)
where part.p_retailprice is NULL;
select  
  orders.o_orderkey, 
  orders.o_orderstatus, 
  orders.o_orderstatus, 
  supplier.s_phone, 
  partsupp.ps_comment, 
  orders.o_orderkey
from 
  partsupp
        inner join region
            left join orders
            on (region.r_regionkey = orders.o_orderkey )
          inner join orders
            right join supplier
            on (supplier.s_acctbal > supplier.s_acctbal)
          on (region.r_regionkey = orders.o_orderkey )
        on (partsupp.ps_availqty = orders.o_orderkey )
      right join supplier
        inner join orders
            inner join lineitem
            on (orders.o_orderstatus = lineitem.l_returnflag )
          inner join supplier
            inner join region
            on (supplier.s_nationkey = region.r_regionkey )
          on (lineitem.l_orderkey <= lineitem.l_partkey)
        on (supplier.s_phone = lineitem.l_returnflag )
      on (supplier.s_acctbal >= orders.o_totalprice)
    inner join partsupp
    on (region.r_comment is not NULL)
where supplier.s_nationkey is NULL;
select  
  nation.n_comment, 
  nation.n_name, 
  nation.n_comment
from 
  nation
where nation.n_name is not NULL
limit 87;
select  
  supplier.s_comment
from 
  supplier
where supplier.s_suppkey is NULL
limit 158;
select  
  customer.c_acctbal
from 
  customer
where customer.c_custkey >= customer.c_custkey
limit 102;
select  
  lineitem.l_discount, 
  lineitem.l_receiptdate
from 
  lineitem
    left join lineitem
    on (lineitem.l_comment is not NULL)
where lineitem.l_receiptdate = lineitem.l_receiptdate
limit 122;
select  
  supplier.s_acctbal, 
  customer.c_mktsegment, 
  sum(
    cast(cast(null as float8) as float8)), 
  max(
    cast(customer.c_acctbal as "numeric")), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_partkey, 
  lineitem.l_shipmode, 
  lineitem.l_shipmode, 
  lineitem.l_linenumber, 
  max(
    cast(cast(null as tid) as tid)), 
  supplier.s_comment
from 
  customer
    right join supplier
      inner join region
        right join orders
          inner join lineitem
              inner join customer
              on (lineitem.l_partkey = lineitem.l_partkey)
            inner join partsupp
            on (customer.c_acctbal = partsupp.ps_supplycost )
          on (lineitem.l_commitdate > lineitem.l_shipdate)
        on (orders.o_totalprice < lineitem.l_extendedprice)
      on (supplier.s_acctbal = partsupp.ps_supplycost)
    on (customer.c_nationkey > orders.o_shippriority)
where orders.o_orderdate is not NULL;
select  
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  region
where region.r_name is not NULL
limit 40;
select  
  lineitem.l_suppkey, 
  customer.c_custkey, 
  customer.c_acctbal, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  customer.c_mktsegment, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  lineitem.l_partkey, 
  supplier.s_suppkey
from 
  customer
        right join lineitem
        on (lineitem.l_linestatus < lineitem.l_shipinstruct)
      inner join customer
      on (customer.c_custkey = customer.c_custkey )
    right join supplier
    on (customer.c_nationkey is not NULL)
where customer.c_comment is NULL;
select  
  part.p_mfgr, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  part.p_comment, 
  region.r_comment, 
  region.r_comment
from 
  part
    inner join region
    on (region.r_comment is NULL)
where part.p_brand is not NULL;
select  
  max(
    cast(cast(null as timetz) as timetz)), 
  supplier.s_address, 
  supplier.s_nationkey, 
  nation.n_regionkey
from 
  region
    left join lineitem
        inner join supplier
          inner join part
          on (supplier.s_acctbal > part.p_retailprice)
        on (lineitem.l_orderkey = supplier.s_suppkey )
      left join nation
              inner join customer
              on (nation.n_name > nation.n_name)
            inner join region
            on (region.r_regionkey < nation.n_nationkey)
          inner join partsupp
          on (customer.c_acctbal < partsupp.ps_supplycost)
        right join partsupp
        on (partsupp.ps_supplycost > partsupp.ps_supplycost)
      on (supplier.s_nationkey = partsupp.ps_partkey )
    on (customer.c_name is not NULL)
where partsupp.ps_suppkey is not NULL
limit 131;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as float8) as float8)), 
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  supplier.s_address, 
  supplier.s_acctbal, 
  max(
    cast(cast(null as timestamptz) as timestamptz))
from 
  supplier
where supplier.s_comment is NULL
limit 57;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  lineitem.l_shipinstruct, 
  lineitem.l_linenumber, 
  min(
    cast(cast(null as "time") as "time")), 
  lineitem.l_shipmode, 
  lineitem.l_returnflag, 
  sum(
    cast(cast(null as float8) as float8)), 
  min(
    cast(lineitem.l_commitdate as date)), 
  lineitem.l_shipinstruct, 
  lineitem.l_partkey, 
  lineitem.l_orderkey, 
  max(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as int8) as int8)), 
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_discount is not NULL
limit 126;
select  
  max(
    cast(cast(null as "time") as "time")), 
  lineitem.l_extendedprice, 
  region.r_name
from 
  region
    right join lineitem
      inner join orders
        inner join lineitem
          left join customer
          on (customer.c_acctbal <= lineitem.l_quantity)
        on (orders.o_totalprice >= lineitem.l_quantity)
      on (lineitem.l_quantity = lineitem.l_quantity)
    on (region.r_comment = lineitem.l_comment )
where customer.c_phone = lineitem.l_shipinstruct
limit 89;
select  
  lineitem.l_extendedprice, 
  lineitem.l_partkey, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  max(
    cast(cast(null as money) as money)), 
  lineitem.l_shipdate, 
  customer.c_comment, 
  min(
    cast(cast(null as "time") as "time")), 
  sum(
    cast(cast(null as int2) as int2)), 
  lineitem.l_shipdate, 
  customer.c_custkey
from 
  lineitem
    right join customer
    on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
where lineitem.l_receiptdate > lineitem.l_commitdate
limit 172;
select  
  lineitem.l_linenumber, 
  lineitem.l_comment, 
  lineitem.l_linestatus, 
  lineitem.l_quantity
from 
  lineitem
where lineitem.l_linestatus is not NULL;
select  
  nation.n_nationkey, 
  orders.o_orderdate, 
  orders.o_shippriority, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey
from 
  orders
    inner join nation
    on (nation.n_name is NULL)
where orders.o_custkey is NULL
limit 89;
select  
  region.r_regionkey, 
  min(
    cast(cast(null as float4) as float4)), 
  region.r_comment, 
  count(*), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_comment
from 
  region
where region.r_regionkey is NULL;
select  
  nation.n_regionkey
from 
  nation
      left join region
        inner join region
        on (region.r_regionkey <= region.r_regionkey)
      on (region.r_regionkey < nation.n_regionkey)
    left join nation
    on (nation.n_comment is NULL)
where region.r_regionkey is not NULL
limit 171;
select  
  part.p_container, 
  part.p_type, 
  part.p_retailprice, 
  part.p_retailprice, 
  min(
    cast(cast(null as xid8) as xid8)), 
  part.p_comment, 
  part.p_container, 
  part.p_comment, 
  min(
    cast(cast(null as date) as date)), 
  part.p_partkey, 
  sum(
    cast(cast(null as float4) as float4)), 
  part.p_brand, 
  part.p_mfgr, 
  part.p_mfgr, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(part.p_mfgr as bpchar)), 
  part.p_retailprice, 
  avg(
    cast(part.p_retailprice as "numeric")), 
  part.p_mfgr, 
  part.p_comment, 
  part.p_name
from 
  part
where part.p_type is not NULL;
select  
  partsupp.ps_supplycost
from 
  supplier
      inner join nation
        right join region
          left join partsupp
            inner join partsupp
            on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
          on (partsupp.ps_supplycost = partsupp.ps_supplycost)
        on (region.r_name >= nation.n_name)
      on (region.r_name > supplier.s_name)
    left join partsupp
    on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
where partsupp.ps_comment is not NULL
limit 95;
select  
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  supplier.s_nationkey, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as float8) as float8)), 
  partsupp.ps_comment, 
  supplier.s_name, 
  count(
    cast(supplier.s_acctbal as "numeric")), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey
from 
  supplier
    inner join partsupp
    on (supplier.s_nationkey = partsupp.ps_partkey )
where partsupp.ps_availqty is NULL;
select  
  region.r_name, 
  region.r_name, 
  region.r_name, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL
limit 140;
select  
  customer.c_nationkey, 
  max(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  customer.c_comment, 
  customer.c_custkey, 
  customer.c_phone
from 
  customer
where customer.c_phone is not NULL
limit 147;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as timetz) as timetz)), 
  customer.c_phone
from 
  region
      left join supplier
      on (supplier.s_nationkey < region.r_regionkey)
    inner join orders
      right join customer
      on (customer.c_nationkey < orders.o_orderkey)
    on (orders.o_custkey > supplier.s_suppkey)
where orders.o_orderdate <= orders.o_orderdate;
select  
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as oid) as oid)), 
  region.r_name, 
  region.r_regionkey, 
  count(
    cast(region.r_comment as "varchar"))
from 
  region
where region.r_comment is not NULL;
select  
  orders.o_orderpriority, 
  orders.o_custkey, 
  orders.o_clerk
from 
  orders
where orders.o_custkey is NULL
limit 60;
select  
  nation.n_comment, 
  orders.o_clerk, 
  orders.o_orderkey, 
  lineitem.l_shipdate, 
  lineitem.l_partkey, 
  min(
    cast(cast(null as float8) as float8))
from 
  orders
    left join lineitem
      right join lineitem
          left join nation
            inner join lineitem
              left join part
              on (lineitem.l_tax >= lineitem.l_quantity)
            on (lineitem.l_commitdate > lineitem.l_receiptdate)
          on (lineitem.l_partkey >= lineitem.l_linenumber)
        inner join customer
        on (lineitem.l_commitdate = lineitem.l_commitdate)
      on (lineitem.l_partkey > part.p_partkey)
    on (lineitem.l_receiptdate < lineitem.l_commitdate)
where lineitem.l_partkey is not NULL;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_comment is not NULL
limit 69;
select  
  partsupp.ps_suppkey
from 
  supplier
    right join partsupp
      inner join customer
      on (partsupp.ps_supplycost <= customer.c_acctbal)
    on (supplier.s_name is not NULL)
where customer.c_comment is not NULL;
select  
  customer.c_custkey, 
  customer.c_acctbal, 
  partsupp.ps_supplycost, 
  lineitem.l_extendedprice, 
  customer.c_nationkey
from 
  region
    inner join customer
            inner join customer
              left join region
              on (customer.c_nationkey = region.r_regionkey )
            on (customer.c_mktsegment = region.r_name )
          left join orders
          on (orders.o_orderdate >= orders.o_orderdate)
        left join lineitem
        on (lineitem.l_receiptdate < orders.o_orderdate)
      left join partsupp
      on (lineitem.l_discount = partsupp.ps_supplycost )
    on (customer.c_name is NULL)
where customer.c_phone > lineitem.l_shipinstruct;
select  
  region.r_comment, 
  count(
    cast(customer.c_comment as "varchar")), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_address, 
  region.r_comment, 
  lineitem.l_suppkey, 
  customer.c_name, 
  lineitem.l_comment, 
  lineitem.l_shipdate, 
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_acctbal
from 
  supplier
    inner join region
        inner join region
            inner join customer
            on (customer.c_acctbal = customer.c_acctbal)
          inner join lineitem
          on (customer.c_acctbal = customer.c_acctbal)
        on (region.r_name <= region.r_name)
      left join lineitem
      on (customer.c_phone >= lineitem.l_shipmode)
    on (supplier.s_acctbal is NULL)
where supplier.s_address is not NULL
limit 16;
select  
  supplier.s_nationkey
from 
  supplier
    inner join supplier
    on (supplier.s_acctbal > supplier.s_acctbal)
where supplier.s_address is not NULL
limit 97;
select  
  orders.o_comment
from 
  orders
where orders.o_orderpriority <= orders.o_orderpriority;
select  
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name, 
  max(
    cast(cast(null as money) as money)), 
  nation.n_nationkey, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  nation.n_nationkey, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey
from 
  nation
where nation.n_name = nation.n_name
limit 145;
select  
  region.r_name, 
  region.r_name
from 
  region
    left join partsupp
    on (partsupp.ps_suppkey is not NULL)
where partsupp.ps_suppkey < partsupp.ps_partkey;
select  
  customer.c_comment, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_acctbal, 
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_custkey, 
  customer.c_mktsegment, 
  customer.c_address
from 
  customer
where customer.c_acctbal is not NULL
limit 132;
select  
  lineitem.l_tax
from 
  lineitem
    right join lineitem
        inner join orders
            inner join nation
            on (orders.o_orderdate <= orders.o_orderdate)
          right join supplier
          on (orders.o_custkey = supplier.s_suppkey)
        on (orders.o_orderpriority < nation.n_name)
      left join customer
      on (supplier.s_phone < orders.o_orderstatus)
    on (lineitem.l_extendedprice is NULL)
where lineitem.l_partkey is not NULL;
select  
  orders.o_orderkey, 
  partsupp.ps_suppkey, 
  lineitem.l_discount, 
  lineitem.l_comment, 
  lineitem.l_shipdate, 
  lineitem.l_returnflag, 
  region.r_name, 
  lineitem.l_commitdate, 
  orders.o_shippriority, 
  region.r_comment, 
  partsupp.ps_suppkey, 
  lineitem.l_linenumber, 
  region.r_regionkey, 
  part.p_partkey
from 
  part
        left join region
            inner join partsupp
              left join lineitem
              on (lineitem.l_commitdate = lineitem.l_commitdate)
            on (lineitem.l_linenumber <= lineitem.l_suppkey)
          left join region
              inner join nation
                  inner join lineitem
                  on (nation.n_name = lineitem.l_returnflag )
                inner join orders
                on (orders.o_orderdate < lineitem.l_shipdate)
              on (orders.o_totalprice <= lineitem.l_quantity)
            left join lineitem
            on (lineitem.l_shipdate <= orders.o_orderdate)
          on (lineitem.l_receiptdate <= lineitem.l_commitdate)
        on (lineitem.l_shipinstruct <= orders.o_clerk)
      inner join orders
      on (lineitem.l_quantity > lineitem.l_discount)
    right join region
    on (partsupp.ps_supplycost is NULL)
where nation.n_regionkey is NULL;
select  
  region.r_name, 
  orders.o_orderdate, 
  orders.o_shippriority, 
  supplier.s_phone, 
  orders.o_custkey, 
  min(
    cast(orders.o_orderstatus as bpchar))
from 
  region
    left join part
      inner join orders
        left join orders
          left join customer
            left join supplier
            on (customer.c_address = supplier.s_address )
          on (orders.o_orderdate < orders.o_orderdate)
        on (orders.o_orderstatus > orders.o_orderpriority)
      on (customer.c_acctbal = orders.o_totalprice)
    on (region.r_comment = orders.o_comment )
where orders.o_custkey is NULL
limit 135;
select  
  customer.c_acctbal, 
  customer.c_acctbal, 
  min(
    cast(customer.c_custkey as int4)), 
  customer.c_custkey, 
  customer.c_phone
from 
  customer
    right join customer
    on (customer.c_custkey is not NULL)
where customer.c_phone is not NULL
limit 47;
select  
  part.p_brand, 
  part.p_type, 
  part.p_container, 
  part.p_type, 
  part.p_comment, 
  part.p_partkey, 
  max(
    cast(cast(null as "time") as "time")), 
  part.p_brand, 
  min(
    cast(cast(null as int8) as int8)), 
  part.p_size, 
  part.p_retailprice, 
  part.p_type, 
  part.p_type, 
  part.p_partkey, 
  part.p_size, 
  part.p_container, 
  part.p_mfgr, 
  part.p_retailprice, 
  part.p_retailprice, 
  part.p_name
from 
  part
where part.p_partkey <= part.p_partkey;
select  
  lineitem.l_tax, 
  max(
    cast(cast(null as int8) as int8)), 
  supplier.s_phone, 
  supplier.s_nationkey, 
  avg(
    cast(lineitem.l_linenumber as int4)), 
  supplier.s_nationkey, 
  lineitem.l_linenumber
from 
  lineitem
    inner join supplier
    on (supplier.s_name is not NULL)
where lineitem.l_linenumber is not NULL;
select  
  min(
    cast(orders.o_orderpriority as bpchar)), 
  orders.o_shippriority
from 
  orders
where orders.o_totalprice is not NULL;
select  
  sum(
    cast(orders.o_shippriority as int4)), 
  nation.n_nationkey, 
  orders.o_orderpriority, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  region
      inner join nation
      on (region.r_name >= nation.n_name)
    right join orders
        left join orders
        on (orders.o_custkey = orders.o_orderkey)
      left join lineitem
        inner join nation
        on (lineitem.l_shipdate > lineitem.l_receiptdate)
      on (orders.o_shippriority = nation.n_nationkey )
    on (orders.o_orderpriority < orders.o_clerk)
where nation.n_name is not NULL;
select  
  orders.o_totalprice, 
  orders.o_clerk, 
  orders.o_custkey, 
  min(
    cast(orders.o_custkey as int4))
from 
  orders
where orders.o_totalprice <= orders.o_totalprice
limit 104;
select  
  nation.n_nationkey, 
  max(
    cast(cast(null as "time") as "time")), 
  region.r_regionkey
from 
  customer
        inner join part
          inner join nation
          on (part.p_mfgr = nation.n_name )
        on (customer.c_address = nation.n_comment )
      inner join nation
        right join region
          left join orders
          on (region.r_regionkey > orders.o_shippriority)
        on (nation.n_name >= orders.o_orderstatus)
      on (part.p_mfgr = nation.n_name )
    inner join customer
      inner join orders
        inner join nation
        on (orders.o_orderstatus > orders.o_orderstatus)
      on (customer.c_phone = orders.o_orderstatus)
    on (orders.o_shippriority <= nation.n_regionkey)
where customer.c_acctbal is NULL;
select  
  nation.n_regionkey, 
  region.r_regionkey, 
  nation.n_regionkey
from 
  partsupp
    right join region
          right join nation
            right join region
            on (nation.n_nationkey < nation.n_nationkey)
          on (nation.n_regionkey < nation.n_regionkey)
        inner join nation
        on (region.r_name = region.r_name)
      right join region
      on (region.r_name >= region.r_name)
    on (region.r_regionkey is NULL)
where nation.n_nationkey is NULL
limit 61;
select  
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  customer.c_name
from 
  customer
    right join partsupp
    on (customer.c_name = partsupp.ps_comment )
where customer.c_nationkey is NULL
limit 39;
select  
  region.r_comment, 
  nation.n_comment
from 
  nation
    right join region
    on (nation.n_name = region.r_name )
where nation.n_comment is not NULL;
select  
  orders.o_orderstatus, 
  orders.o_clerk, 
  orders.o_orderstatus, 
  orders.o_clerk, 
  orders.o_comment, 
  orders.o_totalprice, 
  orders.o_shippriority, 
  orders.o_orderdate, 
  orders.o_totalprice, 
  orders.o_clerk, 
  orders.o_orderpriority, 
  orders.o_totalprice, 
  orders.o_shippriority, 
  orders.o_clerk
from 
  orders
where orders.o_orderkey < orders.o_shippriority
limit 150;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as xid8) as xid8)), 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_partkey >= partsupp.ps_availqty
limit 98;
select  
  customer.c_mktsegment, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(customer.c_mktsegment as bpchar)), 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  partsupp.ps_partkey
from 
  customer
    right join nation
            inner join customer
            on (nation.n_regionkey = customer.c_custkey )
          left join customer
            inner join partsupp
            on (customer.c_custkey <= customer.c_nationkey)
          on (customer.c_nationkey < partsupp.ps_availqty)
        right join partsupp
        on (partsupp.ps_partkey >= customer.c_custkey)
      inner join partsupp
      on (customer.c_mktsegment >= nation.n_name)
    on (partsupp.ps_partkey is not NULL)
where customer.c_acctbal is NULL;
select  
  part.p_comment
from 
  part
    right join nation
    on (part.p_brand = nation.n_name )
where nation.n_name is NULL
limit 90;
select  
  orders.o_orderkey, 
  orders.o_orderstatus, 
  orders.o_orderstatus
from 
  orders
where orders.o_orderdate >= orders.o_orderdate
limit 139;
select  
  customer.c_name
from 
  supplier
          inner join customer
          on (supplier.s_suppkey = supplier.s_nationkey)
        left join supplier
          inner join customer
            right join nation
            on (customer.c_acctbal < customer.c_acctbal)
          on (nation.n_name = customer.c_mktsegment)
        on (supplier.s_name = supplier.s_name )
      right join customer
        inner join supplier
        on (customer.c_custkey > supplier.s_nationkey)
      on (supplier.s_acctbal >= supplier.s_acctbal)
    inner join nation
      inner join supplier
            left join lineitem
            on (lineitem.l_shipdate >= lineitem.l_receiptdate)
          inner join orders
            inner join supplier
            on (orders.o_orderstatus = supplier.s_name )
          on (orders.o_orderkey = supplier.s_nationkey)
        inner join customer
        on (orders.o_clerk <= lineitem.l_returnflag)
      on (customer.c_phone < lineitem.l_linestatus)
    on (orders.o_totalprice is NULL)
where supplier.s_comment is not NULL
limit 77;
select  
  part.p_comment, 
  part.p_comment, 
  part.p_comment, 
  part.p_partkey, 
  part.p_mfgr
from 
  part
where part.p_partkey is NULL
limit 48;
select  
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  min(
    cast(cast(null as inet) as inet)), 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is NULL;
select  
  max(
    cast(cast(null as date) as date))
from 
  partsupp
where partsupp.ps_comment is NULL
limit 73;
select  
  nation.n_comment, 
  partsupp.ps_partkey
from 
  partsupp
          left join partsupp
          on (partsupp.ps_supplycost < partsupp.ps_supplycost)
        inner join region
        on (partsupp.ps_availqty >= partsupp.ps_partkey)
      inner join nation
      on (partsupp.ps_partkey > partsupp.ps_availqty)
    right join region
      right join customer
        left join partsupp
        on (customer.c_custkey = partsupp.ps_partkey )
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    on (partsupp.ps_supplycost >= customer.c_acctbal)
where region.r_regionkey is NULL
limit 190;
select  
  part.p_mfgr, 
  nation.n_regionkey, 
  lineitem.l_shipinstruct, 
  nation.n_comment, 
  customer.c_name
from 
  part
        left join nation
        on (part.p_retailprice <= part.p_retailprice)
      right join lineitem
      on (lineitem.l_commitdate < lineitem.l_shipdate)
    left join customer
    on (part.p_mfgr is NULL)
where customer.c_custkey = part.p_partkey
limit 113;
select  
  min(
    cast(cast(null as text) as text)), 
  nation.n_comment, 
  nation.n_comment, 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_orderdate, 
  nation.n_comment
from 
  nation
    left join orders
    on (nation.n_nationkey = orders.o_orderkey )
where orders.o_orderdate is not NULL;
select  
  supplier.s_name
from 
  supplier
where supplier.s_suppkey >= supplier.s_suppkey;
select  
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment
from 
  nation
where nation.n_comment is NULL
limit 135;
select  
  orders.o_orderpriority, 
  nation.n_name, 
  partsupp.ps_supplycost, 
  customer.c_phone, 
  partsupp.ps_comment
from 
  partsupp
    left join lineitem
            left join customer
              right join orders
                left join customer
                on (orders.o_clerk = orders.o_clerk)
              on (customer.c_acctbal = customer.c_acctbal)
            on (orders.o_custkey < lineitem.l_linenumber)
          left join partsupp
          on (customer.c_acctbal > partsupp.ps_supplycost)
        right join nation
        on (customer.c_name = nation.n_comment )
      inner join supplier
          right join part
          on (supplier.s_phone >= part.p_brand)
        right join lineitem
          left join lineitem
            inner join nation
            on (lineitem.l_extendedprice >= lineitem.l_tax)
          on (lineitem.l_receiptdate > lineitem.l_receiptdate)
        on (part.p_size = nation.n_nationkey )
      on (partsupp.ps_partkey = lineitem.l_orderkey )
    on (orders.o_orderkey is NULL)
where lineitem.l_extendedprice is NULL
limit 34;
select  
  lineitem.l_shipmode, 
  lineitem.l_comment, 
  lineitem.l_receiptdate, 
  max(
    cast(lineitem.l_commitdate as date))
from 
  lineitem
where lineitem.l_returnflag is NULL
limit 141;
select  
  region.r_regionkey
from 
  region
where region.r_name = region.r_name
limit 186;
select  
  lineitem.l_orderkey, 
  avg(
    cast(lineitem.l_discount as "numeric")), 
  lineitem.l_receiptdate, 
  lineitem.l_returnflag, 
  lineitem.l_linestatus
from 
  lineitem
where lineitem.l_suppkey < lineitem.l_suppkey
limit 143;
select  
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as text) as text)), 
  region.r_regionkey, 
  region.r_regionkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  count(*), 
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_name is NULL;
select  
  lineitem.l_shipmode, 
  lineitem.l_orderkey, 
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_linenumber = lineitem.l_linenumber
limit 87;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  min(
    cast(cast(null as int8) as int8)), 
  max(
    cast(cast(null as float8) as float8))
from 
  region
where region.r_comment is not NULL;
select  
  orders.o_orderstatus, 
  orders.o_orderkey, 
  orders.o_comment
from 
  orders
where orders.o_orderkey is not NULL;
select  
  max(
    cast(cast(null as text) as text))
from 
  nation
        inner join partsupp
        on (nation.n_nationkey = partsupp.ps_partkey )
      right join partsupp
          left join customer
            inner join nation
            on (customer.c_phone <= customer.c_phone)
          on (partsupp.ps_availqty = customer.c_nationkey)
        inner join partsupp
        on (partsupp.ps_supplycost < customer.c_acctbal)
      on (partsupp.ps_partkey = nation.n_regionkey)
    inner join partsupp
        right join supplier
        on (supplier.s_phone <= supplier.s_name)
      right join region
      on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
    on (partsupp.ps_partkey is NULL)
where supplier.s_acctbal > supplier.s_acctbal
limit 47;
select  
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_comment is NULL
limit 85;
select  
  part.p_retailprice, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  orders.o_custkey, 
  supplier.s_suppkey, 
  customer.c_acctbal, 
  orders.o_totalprice, 
  orders.o_orderkey, 
  max(
    cast(cast(null as int2) as int2)), 
  supplier.s_phone, 
  customer.c_acctbal, 
  orders.o_totalprice, 
  max(
    cast(cast(null as int8) as int8)), 
  part.p_type, 
  avg(
    cast(cast(null as float8) as float8)), 
  supplier.s_acctbal, 
  supplier.s_address, 
  part.p_comment, 
  customer.c_mktsegment, 
  min(
    cast(orders.o_totalprice as "numeric")), 
  max(
    cast(cast(null as oid) as oid))
from 
  orders
      inner join customer
            inner join orders
            on (customer.c_mktsegment = orders.o_orderpriority)
          left join orders
            right join orders
            on (orders.o_totalprice = orders.o_totalprice)
          on (orders.o_orderdate <= orders.o_orderdate)
        inner join orders
        on (orders.o_orderkey <= orders.o_orderkey)
      on (orders.o_clerk = orders.o_orderpriority)
    inner join supplier
        left join part
          inner join supplier
          on (supplier.s_nationkey = supplier.s_nationkey)
        on (supplier.s_acctbal >= supplier.s_acctbal)
      inner join supplier
        right join orders
        on (orders.o_totalprice <= orders.o_totalprice)
      on (supplier.s_suppkey <= supplier.s_nationkey)
    on (orders.o_comment is not NULL)
where customer.c_acctbal is not NULL
limit 44;
select  
  partsupp.ps_partkey, 
  region.r_comment, 
  lineitem.l_partkey, 
  orders.o_clerk, 
  max(
    cast(cast(null as "interval") as "interval")), 
  part.p_size, 
  orders.o_custkey, 
  part.p_brand
from 
  supplier
      inner join lineitem
            right join region
            on (lineitem.l_orderkey <= lineitem.l_partkey)
          inner join region
            left join orders
            on (orders.o_shippriority <= orders.o_custkey)
          on (region.r_name = lineitem.l_shipinstruct)
        inner join customer
        on (orders.o_orderstatus >= lineitem.l_returnflag)
      on (supplier.s_name = orders.o_orderstatus )
    right join customer
          inner join part
            right join lineitem
            on (lineitem.l_quantity > part.p_retailprice)
          on (part.p_container <= part.p_container)
        inner join region
        on (part.p_partkey < lineitem.l_partkey)
      right join partsupp
          inner join orders
          on (orders.o_orderdate >= orders.o_orderdate)
        inner join part
        on (orders.o_orderdate > orders.o_orderdate)
      on (lineitem.l_commitdate <= lineitem.l_receiptdate)
    on (part.p_type is NULL)
where supplier.s_name is not NULL;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment
from 
  region
where region.r_name is not NULL
limit 111;
select  
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  partsupp
    right join supplier
    on (supplier.s_name <= supplier.s_name)
where supplier.s_acctbal is not NULL
limit 68;
select  
  lineitem.l_receiptdate, 
  partsupp.ps_partkey, 
  nation.n_nationkey, 
  min(
    cast(cast(null as text) as text))
from 
  lineitem
      left join partsupp
        inner join lineitem
          left join partsupp
            right join nation
            on (nation.n_name <= nation.n_name)
          on (lineitem.l_discount >= lineitem.l_discount)
        on (partsupp.ps_suppkey = partsupp.ps_partkey )
      on (lineitem.l_discount <= lineitem.l_quantity)
    right join customer
    on (lineitem.l_extendedprice = lineitem.l_tax)
where lineitem.l_discount > partsupp.ps_supplycost
limit 93;
select  
  region.r_name, 
  region.r_name
from 
  region
where region.r_comment is not NULL
limit 115;
select  
  part.p_type, 
  part.p_name
from 
  part
        inner join part
        on (part.p_brand >= part.p_container)
      left join orders
      on (part.p_retailprice < orders.o_totalprice)
    right join lineitem
    on (part.p_brand is NULL)
where orders.o_totalprice is NULL;
select  
  supplier.s_address, 
  max(
    cast(cast(null as xid8) as xid8)), 
  supplier.s_suppkey, 
  supplier.s_name
from 
  supplier
    right join customer
    on (supplier.s_name is not NULL)
where supplier.s_comment is not NULL
limit 39;
select distinct 
  lineitem.l_returnflag, 
  lineitem.l_discount, 
  lineitem.l_returnflag, 
  lineitem.l_quantity
from 
  lineitem
where lineitem.l_tax is not NULL
limit 92;
select  
  customer.c_custkey, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as text) as text)), 
  customer.c_address
from 
  customer
where customer.c_phone < customer.c_phone;
select  
  orders.o_custkey, 
  orders.o_custkey, 
  orders.o_shippriority
from 
  orders
where orders.o_comment is not NULL
limit 158;
select  
  supplier.s_suppkey
from 
  supplier
where supplier.s_name is not NULL
limit 135;
select  
  min(
    cast(cast(null as text) as text))
from 
  lineitem
where lineitem.l_receiptdate is not NULL;
select  
  part.p_size, 
  region.r_comment
from 
  part
    inner join customer
        inner join partsupp
        on (customer.c_nationkey > customer.c_custkey)
      right join region
      on (customer.c_mktsegment >= region.r_name)
    on (part.p_name = customer.c_name )
where partsupp.ps_partkey is not NULL;
select  
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  sum(
    cast(partsupp.ps_partkey as int4)), 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_availqty is not NULL;
select  
  orders.o_totalprice, 
  orders.o_orderpriority, 
  orders.o_orderkey, 
  avg(
    cast(cast(null as int8) as int8))
from 
  orders
where orders.o_orderstatus is not NULL
limit 42;
select  
  nation.n_nationkey, 
  supplier.s_comment, 
  nation.n_regionkey
from 
  nation
      inner join region
      on (nation.n_regionkey = region.r_regionkey)
    inner join supplier
    on (supplier.s_comment is not NULL)
where region.r_regionkey is not NULL
limit 58;
select  
  lineitem.l_partkey, 
  lineitem.l_linenumber, 
  lineitem.l_shipmode, 
  lineitem.l_partkey, 
  lineitem.l_returnflag, 
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_shipinstruct >= lineitem.l_linestatus
limit 70;
select  
  customer.c_comment
from 
  customer
where customer.c_address is NULL
limit 167;
select  
  region.r_comment, 
  lineitem.l_orderkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_regionkey
from 
  part
    right join part
          left join customer
              inner join region
              on (region.r_name = region.r_name)
            right join lineitem
              inner join orders
                right join customer
                on (orders.o_orderdate <= orders.o_orderdate)
              on (lineitem.l_tax = lineitem.l_discount)
            on (lineitem.l_suppkey > lineitem.l_linenumber)
          on (lineitem.l_quantity >= customer.c_acctbal)
        inner join customer
        on (part.p_brand > customer.c_phone)
      left join orders
      on (customer.c_phone = lineitem.l_shipinstruct)
    on (orders.o_orderdate = lineitem.l_commitdate)
where customer.c_address is not NULL
limit 56;
select  
  customer.c_phone, 
  customer.c_phone, 
  max(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_name, 
  customer.c_custkey, 
  customer.c_name, 
  sum(
    cast(cast(null as float4) as float4)), 
  customer.c_custkey, 
  customer.c_address, 
  customer.c_acctbal, 
  customer.c_phone, 
  min(
    cast(cast(null as oid) as oid))
from 
  customer
where customer.c_nationkey is not NULL
limit 89;
select  
  customer.c_mktsegment, 
  sum(
    cast(cast(null as int8) as int8)), 
  customer.c_address, 
  customer.c_address
from 
  customer
where customer.c_phone is not NULL
limit 126;
select  
  nation.n_comment
from 
  part
    inner join lineitem
      inner join nation
        left join partsupp
          inner join supplier
          on (supplier.s_phone < supplier.s_phone)
        on (supplier.s_acctbal <= partsupp.ps_supplycost)
      on (lineitem.l_receiptdate >= lineitem.l_shipdate)
    on (supplier.s_phone is NULL)
where nation.n_nationkey is NULL
limit 101;
select  
  max(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  supplier
where supplier.s_suppkey is not NULL
limit 98;
select  
  partsupp.ps_comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  sum(
    cast(cast(null as float4) as float4)), 
  region.r_regionkey, 
  sum(
    cast(supplier.s_nationkey as int4)), 
  part.p_mfgr, 
  orders.o_clerk, 
  orders.o_orderkey
from 
  region
      right join part
          inner join orders
          on (orders.o_orderdate < orders.o_orderdate)
        inner join partsupp
        on (orders.o_orderdate < orders.o_orderdate)
      on (region.r_comment = orders.o_comment )
    inner join region
      inner join supplier
        inner join partsupp
            left join nation
            on (partsupp.ps_supplycost < partsupp.ps_supplycost)
          inner join part
          on (partsupp.ps_supplycost = part.p_retailprice )
        on (nation.n_nationkey <= supplier.s_nationkey)
      on (partsupp.ps_availqty <= nation.n_regionkey)
    on (region.r_regionkey = region.r_regionkey )
where partsupp.ps_suppkey >= region.r_regionkey
limit 95;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_supplycost is not NULL;
select  
  nation.n_regionkey, 
  lineitem.l_returnflag
from 
  orders
    inner join nation
            inner join nation
              left join part
              on (part.p_retailprice >= part.p_retailprice)
            on (part.p_partkey <= part.p_size)
          inner join part
          on (part.p_size = part.p_size)
        left join lineitem
        on (part.p_size < lineitem.l_suppkey)
      inner join partsupp
      on (nation.n_name >= nation.n_name)
    on (orders.o_orderdate < lineitem.l_shipdate)
where nation.n_regionkey is NULL;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  nation.n_regionkey, 
  nation.n_name
from 
  nation
    inner join lineitem
    on (nation.n_name = lineitem.l_returnflag )
where nation.n_regionkey is NULL
limit 21;
select  
  orders.o_orderkey, 
  orders.o_shippriority, 
  max(
    cast(cast(null as float8) as float8)), 
  orders.o_orderdate
from 
  orders
where orders.o_comment is NULL
limit 31;
select  
  orders.o_totalprice, 
  orders.o_comment, 
  min(
    cast(orders.o_custkey as int4))
from 
  orders
where orders.o_orderpriority is not NULL
limit 165;
select  
  part.p_type, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  customer.c_comment, 
  region.r_regionkey
from 
  part
    inner join region
      inner join customer
        inner join region
          right join region
            right join supplier
            on (supplier.s_suppkey < region.r_regionkey)
          on (region.r_name = region.r_name )
        on (region.r_name <= customer.c_mktsegment)
      on (customer.c_mktsegment < region.r_name)
    on (part.p_comment = region.r_comment )
where supplier.s_comment is NULL;
select  
  sum(
    cast(lineitem.l_discount as "numeric")), 
  lineitem.l_commitdate, 
  lineitem.l_returnflag, 
  lineitem.l_tax
from 
  lineitem
where lineitem.l_shipinstruct is NULL
limit 93;
select  
  region.r_name
from 
  region
where region.r_name > region.r_name
limit 99;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_name, 
  max(
    cast(supplier.s_phone as bpchar)), 
  supplier.s_name, 
  supplier.s_comment, 
  min(
    cast(cast(null as oid) as oid))
from 
  supplier
where supplier.s_suppkey is not NULL;
select  
  customer.c_phone
from 
  nation
      inner join orders
          inner join nation
          on (orders.o_orderpriority <= orders.o_orderpriority)
        inner join partsupp
          inner join nation
              inner join orders
              on (orders.o_totalprice > orders.o_totalprice)
            inner join customer
            on (orders.o_orderdate <= orders.o_orderdate)
          on (customer.c_acctbal < partsupp.ps_supplycost)
        on (nation.n_name > nation.n_name)
      on (partsupp.ps_availqty = customer.c_nationkey)
    inner join part
      right join part
        inner join customer
        on (customer.c_acctbal >= part.p_retailprice)
      on (part.p_type = part.p_name )
    on (customer.c_nationkey <= customer.c_custkey)
where part.p_type is NULL
limit 95;
select  
  part.p_name, 
  lineitem.l_shipdate, 
  lineitem.l_quantity, 
  region.r_comment, 
  lineitem.l_suppkey
from 
  region
      right join part
            inner join lineitem
              inner join supplier
                inner join nation
                on (supplier.s_phone = nation.n_name )
              on (supplier.s_suppkey > nation.n_regionkey)
            on (supplier.s_phone = supplier.s_phone)
          left join nation
          on (supplier.s_suppkey < lineitem.l_partkey)
        left join part
          right join partsupp
          on (part.p_size >= part.p_size)
        on (lineitem.l_receiptdate > lineitem.l_shipdate)
      on (nation.n_regionkey < nation.n_nationkey)
    inner join part
    on (part.p_comment is not NULL)
where supplier.s_suppkey > part.p_partkey;
select  
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL
limit 48;
select  
  lineitem.l_tax, 
  lineitem.l_tax, 
  max(
    cast(cast(null as float8) as float8)), 
  max(
    cast(lineitem.l_shipdate as date)), 
  lineitem.l_comment, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  lineitem
where lineitem.l_shipdate > lineitem.l_shipdate
limit 45;
select  
  nation.n_name
from 
  nation
where nation.n_comment is not NULL
limit 128;
select  
  part.p_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  orders.o_shippriority, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  orders
    inner join partsupp
          right join part
          on (partsupp.ps_availqty = part.p_partkey )
        inner join partsupp
          inner join partsupp
          on (partsupp.ps_supplycost < partsupp.ps_supplycost)
        on (part.p_partkey = partsupp.ps_partkey )
      inner join lineitem
      on (partsupp.ps_suppkey > partsupp.ps_availqty)
    on (partsupp.ps_suppkey is NULL)
where partsupp.ps_supplycost is NULL
limit 127;
select  
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_address, 
  supplier.s_address
from 
  supplier
where supplier.s_acctbal >= supplier.s_acctbal
limit 117;
select  
  customer.c_acctbal, 
  customer.c_address, 
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  customer.c_comment
from 
  customer
where customer.c_address is NULL
limit 182;
select  
  part.p_retailprice, 
  customer.c_acctbal, 
  part.p_comment, 
  part.p_mfgr, 
  customer.c_address, 
  sum(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_phone, 
  part.p_comment, 
  customer.c_custkey, 
  part.p_partkey
from 
  part
    inner join customer
    on (part.p_brand = customer.c_phone )
where customer.c_name is not NULL
limit 52;
select  
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_comment, 
  max(
    cast(cast(null as timestamptz) as timestamptz))
from 
  nation
where nation.n_nationkey is not NULL;
select  
  customer.c_custkey, 
  orders.o_orderstatus, 
  nation.n_name, 
  min(
    cast(nation.n_nationkey as int4)), 
  nation.n_regionkey, 
  min(
    cast(cast(null as int8) as int8)), 
  part.p_mfgr
from 
  part
    left join orders
        left join supplier
          inner join customer
            left join nation
            on (customer.c_mktsegment = nation.n_name )
          on (supplier.s_name = customer.c_phone )
        on (orders.o_orderdate < orders.o_orderdate)
      right join part
          inner join nation
          on (part.p_type = nation.n_comment )
        left join orders
          left join part
              inner join nation
              on (part.p_retailprice < part.p_retailprice)
            left join customer
              right join customer
              on (customer.c_acctbal <= customer.c_acctbal)
            on (part.p_retailprice >= customer.c_acctbal)
          on (orders.o_orderstatus > orders.o_orderstatus)
        on (customer.c_mktsegment <= customer.c_phone)
      on (orders.o_orderdate > orders.o_orderdate)
    on (nation.n_nationkey is NULL)
where nation.n_regionkey is not NULL
limit 10;
select  
  part.p_type, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  part.p_container, 
  part.p_brand
from 
  lineitem
      left join region
      on (lineitem.l_commitdate <= lineitem.l_shipdate)
    inner join part
    on (part.p_type is not NULL)
where region.r_regionkey is not NULL
limit 143;
select  
  count(
    cast(partsupp.ps_comment as "varchar")), 
  orders.o_orderstatus, 
  lineitem.l_discount, 
  partsupp.ps_partkey
from 
  partsupp
      inner join orders
        left join nation
        on (orders.o_orderstatus <= orders.o_clerk)
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    inner join orders
      right join lineitem
      on (lineitem.l_suppkey > lineitem.l_partkey)
    on (orders.o_comment is NULL)
where lineitem.l_commitdate is NULL
limit 147;
select  
  part.p_comment, 
  part.p_retailprice
from 
  part
where part.p_container is NULL
limit 79;
select  
  part.p_type, 
  part.p_size, 
  part.p_size, 
  part.p_partkey, 
  part.p_size
from 
  part
where part.p_container is NULL
limit 24;
select  
  lineitem.l_quantity, 
  partsupp.ps_availqty, 
  nation.n_regionkey, 
  max(
    cast(lineitem.l_commitdate as date)), 
  nation.n_comment
from 
  partsupp
          left join lineitem
          on (lineitem.l_shipmode >= lineitem.l_shipmode)
        inner join nation
        on (partsupp.ps_suppkey >= partsupp.ps_suppkey)
      right join region
      on (lineitem.l_suppkey <= nation.n_regionkey)
    right join nation
    on (nation.n_name is NULL)
where lineitem.l_commitdate < lineitem.l_shipdate
limit 188;
select  
  customer.c_mktsegment, 
  avg(
    cast(cast(null as float4) as float4))
from 
  customer
where customer.c_phone is not NULL;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  part.p_type, 
  part.p_container, 
  part.p_partkey, 
  part.p_brand, 
  part.p_brand, 
  part.p_mfgr, 
  part.p_brand, 
  part.p_comment, 
  part.p_container, 
  sum(
    cast(part.p_size as int4))
from 
  part
where part.p_container is NULL
limit 47;
select  
  orders.o_clerk
from 
  nation
      right join nation
      on (nation.n_nationkey < nation.n_regionkey)
    inner join lineitem
        inner join orders
          right join nation
          on (orders.o_totalprice = orders.o_totalprice)
        on (lineitem.l_commitdate > lineitem.l_receiptdate)
      inner join partsupp
      on (orders.o_orderpriority > lineitem.l_shipmode)
    on (lineitem.l_extendedprice is not NULL)
where lineitem.l_partkey < orders.o_orderkey
limit 168;
select  
  nation.n_nationkey
from 
  orders
    right join orders
      left join nation
      on (orders.o_orderdate < orders.o_orderdate)
    on (nation.n_comment is not NULL)
where orders.o_clerk is NULL
limit 42;
select  
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  partsupp
where partsupp.ps_availqty is not NULL
limit 125;
select distinct 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey
from 
  region
      inner join nation
      on (nation.n_nationkey <= nation.n_nationkey)
    right join nation
    on (nation.n_nationkey is not NULL)
where nation.n_regionkey is not NULL
limit 31;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_name, 
  region.r_name, 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_acctbal, 
  region.r_name, 
  region.r_regionkey, 
  supplier.s_acctbal, 
  supplier.s_address
from 
  region
    left join supplier
    on (supplier.s_address is not NULL)
where supplier.s_acctbal is NULL
limit 97;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  avg(
    cast(cast(null as float8) as float8)), 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as oid) as oid)), 
  region.r_name
from 
  region
where region.r_comment is NULL
limit 47;
select  
  supplier.s_name, 
  supplier.s_address
from 
  supplier
where supplier.s_suppkey is not NULL
limit 123;
select  
  min(
    cast(nation.n_name as bpchar)), 
  max(
    cast(cast(null as money) as money))
from 
  nation
where nation.n_regionkey > nation.n_nationkey
limit 158;
select  
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(region.r_regionkey as int4)), 
  region.r_name
from 
  region
where region.r_name is NULL
limit 164;
select  
  orders.o_totalprice, 
  lineitem.l_linestatus
from 
  orders
        inner join partsupp
        on (partsupp.ps_suppkey = partsupp.ps_suppkey)
      inner join customer
        inner join lineitem
        on (customer.c_custkey = lineitem.l_orderkey )
      on (lineitem.l_quantity < customer.c_acctbal)
    left join lineitem
    on (lineitem.l_linestatus is NULL)
where lineitem.l_linestatus = customer.c_phone;
select  
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  nation.n_regionkey
from 
  nation
    right join partsupp
      inner join part
      on (partsupp.ps_partkey = part.p_partkey )
    on (nation.n_name is not NULL)
where partsupp.ps_partkey is NULL;
select  
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  lineitem.l_partkey
from 
  lineitem
      inner join partsupp
      on (lineitem.l_shipmode < lineitem.l_returnflag)
    inner join region
    on (partsupp.ps_suppkey = region.r_regionkey )
where lineitem.l_shipinstruct < lineitem.l_shipinstruct
limit 91;
select  
  customer.c_custkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  customer.c_phone, 
  nation.n_comment
from 
  customer
    inner join nation
    on (customer.c_name = nation.n_comment )
where customer.c_nationkey >= customer.c_custkey
limit 123;
select  
  partsupp.ps_partkey, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 61;
select  
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  lineitem.l_linenumber, 
  max(
    cast(cast(null as xid8) as xid8)), 
  avg(
    cast(lineitem.l_linenumber as int4))
from 
  lineitem
    inner join partsupp
    on (partsupp.ps_comment is not NULL)
where lineitem.l_receiptdate < lineitem.l_shipdate
limit 84;
select  
  lineitem.l_orderkey, 
  lineitem.l_extendedprice, 
  lineitem.l_extendedprice, 
  lineitem.l_linenumber, 
  lineitem.l_suppkey
from 
  lineitem
where lineitem.l_receiptdate >= lineitem.l_shipdate
limit 164;
select  
  lineitem.l_extendedprice
from 
  lineitem
        left join region
        on (lineitem.l_partkey = region.r_regionkey )
      inner join lineitem
      on (lineitem.l_suppkey = lineitem.l_partkey)
    inner join nation
    on (lineitem.l_receiptdate = lineitem.l_receiptdate)
where lineitem.l_receiptdate <= lineitem.l_receiptdate
limit 141;
select  
  max(
    cast(cast(null as text) as text)), 
  nation.n_comment
from 
  lineitem
        inner join nation
          inner join region
            right join lineitem
            on (lineitem.l_returnflag < lineitem.l_linestatus)
          on (nation.n_regionkey = region.r_regionkey )
        on (lineitem.l_orderkey = lineitem.l_partkey)
      inner join orders
          inner join nation
            right join supplier
              right join customer
              on (customer.c_nationkey <= supplier.s_suppkey)
            on (customer.c_nationkey < supplier.s_nationkey)
          on (supplier.s_name <= orders.o_orderpriority)
        right join customer
          inner join lineitem
          on (lineitem.l_orderkey < customer.c_nationkey)
        on (orders.o_totalprice < orders.o_totalprice)
      on (supplier.s_phone < lineitem.l_shipinstruct)
    left join partsupp
      inner join nation
      on (partsupp.ps_suppkey < partsupp.ps_partkey)
    on (customer.c_comment is NULL)
where lineitem.l_returnflag is not NULL;
select  
  region.r_comment, 
  max(
    cast(cast(null as "time") as "time")), 
  region.r_comment, 
  nation.n_name, 
  min(
    cast(part.p_mfgr as bpchar))
from 
  region
    inner join part
      inner join nation
        inner join nation
          inner join partsupp
          on (partsupp.ps_supplycost > partsupp.ps_supplycost)
        on (nation.n_name <= nation.n_name)
      on (partsupp.ps_supplycost = partsupp.ps_supplycost)
    on (region.r_regionkey = nation.n_nationkey )
where region.r_regionkey is NULL;
select  
  partsupp.ps_suppkey, 
  nation.n_comment, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_custkey, 
  customer.c_phone, 
  nation.n_name, 
  orders.o_shippriority, 
  region.r_regionkey, 
  lineitem.l_returnflag, 
  nation.n_regionkey
from 
  orders
        right join partsupp
          inner join nation
            inner join orders
            on (orders.o_orderkey > nation.n_regionkey)
          on (orders.o_orderdate <= orders.o_orderdate)
        on (orders.o_orderdate < orders.o_orderdate)
      left join customer
        left join customer
            inner join orders
            on (orders.o_orderdate >= orders.o_orderdate)
          left join lineitem
          on (customer.c_acctbal = lineitem.l_quantity )
        on (lineitem.l_linenumber >= orders.o_orderkey)
      on (lineitem.l_linestatus < lineitem.l_shipmode)
    left join region
      inner join partsupp
          inner join partsupp
          on (partsupp.ps_supplycost < partsupp.ps_supplycost)
        left join nation
          left join customer
          on (customer.c_acctbal > customer.c_acctbal)
        on (customer.c_custkey = partsupp.ps_suppkey)
      on (region.r_name = nation.n_name )
    on (nation.n_name is not NULL)
where orders.o_orderdate = orders.o_orderdate
limit 22;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_partkey >= partsupp.ps_partkey;
select  
  orders.o_orderkey, 
  orders.o_shippriority
from 
  orders
where orders.o_orderdate >= orders.o_orderdate;
select  
  lineitem.l_shipdate
from 
  supplier
      left join orders
        inner join customer
            inner join customer
            on (customer.c_phone = customer.c_phone)
          right join lineitem
          on (customer.c_custkey > customer.c_nationkey)
        on (lineitem.l_commitdate = orders.o_orderdate)
      on (lineitem.l_receiptdate >= orders.o_orderdate)
    left join customer
        inner join lineitem
        on (lineitem.l_shipinstruct = customer.c_phone)
      right join lineitem
        inner join orders
          right join region
          on (orders.o_orderpriority <= region.r_name)
        on (lineitem.l_returnflag > region.r_name)
      on (lineitem.l_suppkey > orders.o_orderkey)
    on (lineitem.l_receiptdate < lineitem.l_shipdate)
where lineitem.l_tax is not NULL
limit 114;
select  
  customer.c_custkey, 
  customer.c_name
from 
  customer
where customer.c_acctbal is NULL;
select  
  lineitem.l_extendedprice, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  lineitem.l_shipdate, 
  lineitem.l_shipdate, 
  orders.o_orderkey, 
  min(
    cast(cast(null as int2) as int2)), 
  lineitem.l_receiptdate, 
  max(
    cast(cast(null as inet) as inet)), 
  orders.o_totalprice, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(lineitem.l_quantity as "numeric")), 
  lineitem.l_discount, 
  orders.o_orderpriority, 
  orders.o_comment, 
  lineitem.l_returnflag, 
  orders.o_orderkey, 
  orders.o_comment, 
  lineitem.l_shipmode, 
  lineitem.l_shipdate, 
  min(
    cast(orders.o_custkey as int4)), 
  orders.o_comment, 
  orders.o_totalprice, 
  lineitem.l_linenumber, 
  lineitem.l_quantity, 
  orders.o_clerk
from 
  lineitem
    left join orders
    on (orders.o_totalprice > lineitem.l_extendedprice)
where orders.o_orderstatus is NULL
limit 83;
select  
  customer.c_address, 
  customer.c_nationkey, 
  orders.o_orderstatus, 
  customer.c_custkey, 
  part.p_partkey, 
  customer.c_comment, 
  min(
    cast(cast(null as int8) as int8)), 
  customer.c_nationkey, 
  orders.o_orderpriority, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_name, 
  part.p_size
from 
  customer
        inner join customer
        on (customer.c_phone > customer.c_phone)
      inner join customer
      on (customer.c_nationkey > customer.c_custkey)
    right join orders
      right join part
      on (orders.o_orderdate < orders.o_orderdate)
    on (orders.o_custkey is not NULL)
where orders.o_custkey is not NULL;
select  
  partsupp.ps_partkey
from 
  region
    inner join orders
      inner join partsupp
      on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
    on (region.r_name <= orders.o_orderpriority)
where orders.o_comment is NULL
limit 79;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_name, 
  part.p_comment, 
  region.r_name, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_comment, 
  part.p_type, 
  part.p_comment, 
  part.p_retailprice, 
  region.r_regionkey, 
  part.p_mfgr
from 
  part
    inner join region
    on (part.p_name = region.r_comment )
where region.r_name <= part.p_container
limit 90;
select  
  customer.c_acctbal, 
  customer.c_comment, 
  min(
    cast(cast(null as "interval") as "interval")), 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_address, 
  customer.c_comment, 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_address, 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_comment, 
  max(
    cast(customer.c_phone as bpchar))
from 
  customer
where customer.c_address is NULL
limit 96;
select  
  part.p_container, 
  part.p_brand, 
  part.p_size
from 
  part
where part.p_container is NULL;
select  
  orders.o_orderstatus, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_orderdate, 
  orders.o_orderpriority, 
  orders.o_orderpriority, 
  orders.o_shippriority, 
  orders.o_orderstatus, 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_shippriority, 
  orders.o_orderkey, 
  orders.o_orderstatus, 
  min(
    cast(orders.o_orderdate as date)), 
  orders.o_comment, 
  orders.o_shippriority, 
  orders.o_totalprice, 
  orders.o_custkey, 
  orders.o_orderdate, 
  max(
    cast(cast(null as oid) as oid)), 
  orders.o_comment, 
  orders.o_totalprice
from 
  orders
where orders.o_clerk is not NULL
limit 139;
select  
  supplier.s_name, 
  supplier.s_phone, 
  supplier.s_phone, 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_name, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_name, 
  supplier.s_address
from 
  supplier
where supplier.s_phone = supplier.s_name
limit 117;
select  
  supplier.s_name, 
  sum(
    cast(cast(null as float8) as float8))
from 
  region
        inner join supplier
            right join part
            on (part.p_partkey > supplier.s_suppkey)
          right join region
          on (region.r_regionkey < supplier.s_nationkey)
        on (part.p_mfgr = part.p_mfgr)
      right join nation
      on (supplier.s_acctbal <= supplier.s_acctbal)
    inner join part
    on (supplier.s_suppkey is not NULL)
where part.p_brand is NULL
limit 156;
select  
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  sum(
    cast(cast(null as float8) as float8)), 
  region.r_regionkey, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  region
where region.r_regionkey is NULL
limit 75;
select  
  customer.c_nationkey
from 
  customer
where customer.c_name is NULL
limit 124;
select  
  sum(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_orderpriority, 
  orders.o_orderkey, 
  orders.o_orderpriority, 
  avg(
    cast(cast(null as int8) as int8)), 
  orders.o_clerk, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  orders.o_orderdate, 
  orders.o_orderkey, 
  orders.o_shippriority, 
  orders.o_orderdate, 
  orders.o_comment
from 
  orders
where orders.o_orderdate is NULL
limit 111;
select  
  region.r_regionkey, 
  region.r_name
from 
  partsupp
          left join supplier
          on (partsupp.ps_suppkey = supplier.s_suppkey )
        inner join partsupp
              inner join nation
              on (nation.n_regionkey >= nation.n_nationkey)
            right join customer
            on (customer.c_acctbal >= partsupp.ps_supplycost)
          inner join nation
          on (customer.c_acctbal < customer.c_acctbal)
        on (nation.n_nationkey >= partsupp.ps_suppkey)
      left join lineitem
        left join region
        on (lineitem.l_commitdate >= lineitem.l_shipdate)
      on (customer.c_comment = lineitem.l_comment )
    inner join part
        inner join region
        on (part.p_mfgr >= region.r_name)
      right join part
            inner join supplier
            on (supplier.s_nationkey <= supplier.s_suppkey)
          inner join region
          on (part.p_retailprice >= supplier.s_acctbal)
        inner join nation
        on (region.r_regionkey >= part.p_partkey)
      on (part.p_partkey < region.r_regionkey)
    on (nation.n_name = lineitem.l_shipinstruct)
where part.p_partkey <= customer.c_nationkey
limit 104;
select  
  partsupp.ps_partkey, 
  supplier.s_name, 
  customer.c_acctbal, 
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_name, 
  nation.n_name, 
  customer.c_custkey
from 
  supplier
        inner join region
          inner join nation
          on (nation.n_name > region.r_name)
        on (supplier.s_acctbal >= supplier.s_acctbal)
      inner join partsupp
      on (region.r_comment = partsupp.ps_comment )
    right join lineitem
        inner join customer
        on (lineitem.l_receiptdate >= lineitem.l_receiptdate)
      left join partsupp
      on (lineitem.l_discount > lineitem.l_discount)
    on (partsupp.ps_partkey is NULL)
where supplier.s_name is NULL
limit 157;
select  
  partsupp.ps_availqty
from 
  lineitem
      inner join partsupp
        left join orders
        on (orders.o_totalprice >= orders.o_totalprice)
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    inner join partsupp
    on (partsupp.ps_comment = partsupp.ps_comment )
where lineitem.l_comment is not NULL
limit 106;
select  
  orders.o_orderstatus, 
  sum(
    cast(cast(null as money) as money)), 
  supplier.s_phone
from 
  customer
          inner join nation
            right join nation
            on (nation.n_name > nation.n_name)
          on (customer.c_custkey > customer.c_custkey)
        inner join orders
        on (orders.o_orderdate > orders.o_orderdate)
      inner join supplier
      on (orders.o_orderdate >= orders.o_orderdate)
    left join supplier
    on (orders.o_orderdate < orders.o_orderdate)
where orders.o_orderdate >= orders.o_orderdate
limit 140;
select  
  nation.n_name, 
  part.p_retailprice
from 
  part
    left join partsupp
              right join partsupp
              on (partsupp.ps_supplycost = partsupp.ps_supplycost)
            right join partsupp
            on (partsupp.ps_supplycost > partsupp.ps_supplycost)
          right join nation
            left join nation
            on (nation.n_name = nation.n_name)
          on (partsupp.ps_supplycost = partsupp.ps_supplycost)
        inner join partsupp
          right join part
          on (partsupp.ps_availqty > part.p_partkey)
        on (part.p_container = part.p_brand)
      inner join supplier
      on (supplier.s_name >= supplier.s_name)
    on (part.p_retailprice = partsupp.ps_supplycost )
where nation.n_comment is not NULL
limit 117;
select  
  supplier.s_address, 
  part.p_mfgr, 
  part.p_retailprice, 
  supplier.s_acctbal, 
  lineitem.l_returnflag, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(cast(null as oid) as oid)), 
  supplier.s_suppkey, 
  part.p_type, 
  region.r_comment, 
  part.p_mfgr, 
  region.r_regionkey
from 
  part
      inner join region
        inner join lineitem
        on (lineitem.l_extendedprice > lineitem.l_extendedprice)
      on (region.r_name = region.r_name)
    inner join nation
        left join nation
          right join supplier
          on (supplier.s_suppkey > supplier.s_nationkey)
        on (supplier.s_nationkey > nation.n_regionkey)
      inner join region
        inner join partsupp
        on (partsupp.ps_supplycost < partsupp.ps_supplycost)
      on (supplier.s_name = region.r_name)
    on (lineitem.l_quantity < lineitem.l_discount)
where nation.n_comment is not NULL;
select  
  supplier.s_phone, 
  supplier.s_comment
from 
  supplier
where supplier.s_name is NULL
limit 182;
select  
  orders.o_shippriority, 
  min(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as inet) as inet))
from 
  nation
      inner join part
          right join part
          on (part.p_comment = part.p_name )
        right join orders
        on (part.p_brand = orders.o_orderstatus )
      on (nation.n_name = part.p_mfgr )
    inner join part
    on (part.p_type is not NULL)
where nation.n_nationkey >= part.p_partkey
limit 123;
select  
  nation.n_regionkey, 
  nation.n_regionkey
from 
  nation
where nation.n_comment is not NULL;
select  
  lineitem.l_receiptdate, 
  max(
    cast(cast(null as text) as text)), 
  customer.c_name, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  region.r_name
from 
  lineitem
      left join customer
      on (lineitem.l_suppkey < customer.c_custkey)
    right join region
    on (lineitem.l_quantity < lineitem.l_extendedprice)
where lineitem.l_receiptdate is NULL
limit 128;
select  
  nation.n_regionkey
from 
  nation
where nation.n_regionkey is not NULL;
select  
  customer.c_name, 
  customer.c_acctbal
from 
  customer
where customer.c_mktsegment is not NULL
limit 73;
select  
  region.r_regionkey, 
  region.r_comment, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as xid8) as xid8)), 
  region.r_name
from 
  supplier
      right join region
      on (supplier.s_name >= supplier.s_name)
    inner join partsupp
    on (region.r_name is not NULL)
where region.r_comment is not NULL
limit 168;
select  
  nation.n_comment, 
  max(
    cast(cast(null as money) as money)), 
  lineitem.l_partkey, 
  supplier.s_acctbal, 
  nation.n_name, 
  lineitem.l_extendedprice, 
  sum(
    cast(cast(null as int8) as int8)), 
  supplier.s_comment, 
  nation.n_comment, 
  lineitem.l_quantity, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  supplier.s_acctbal, 
  nation.n_regionkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  supplier.s_acctbal, 
  lineitem.l_commitdate, 
  lineitem.l_tax, 
  supplier.s_phone, 
  supplier.s_name
from 
  supplier
    left join nation
      inner join lineitem
      on (lineitem.l_returnflag > nation.n_name)
    on (supplier.s_suppkey is not NULL)
where lineitem.l_partkey is NULL;
select  
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_regionkey
from 
  nation
where nation.n_name is NULL
limit 70;
select  
  part.p_container, 
  part.p_size
from 
  part
where part.p_brand < part.p_brand
limit 118;
select  
  orders.o_orderstatus
from 
  partsupp
            left join orders
            on (orders.o_orderpriority < orders.o_clerk)
          inner join orders
              right join region
              on (orders.o_shippriority >= orders.o_custkey)
            left join lineitem
            on (orders.o_orderkey >= region.r_regionkey)
          on (orders.o_orderstatus >= orders.o_clerk)
        inner join part
            inner join nation
            on (part.p_size = nation.n_nationkey )
          inner join nation
            right join region
              left join supplier
              on (supplier.s_nationkey >= supplier.s_suppkey)
            on (nation.n_regionkey < supplier.s_suppkey)
          on (part.p_size > part.p_partkey)
        on (orders.o_orderstatus = orders.o_orderpriority)
      left join customer
          inner join part
          on (customer.c_custkey <= customer.c_nationkey)
        right join customer
          right join orders
          on (customer.c_acctbal > orders.o_totalprice)
        on (part.p_brand = customer.c_phone )
      on (lineitem.l_suppkey >= part.p_partkey)
    right join part
      inner join part
          right join part
              right join partsupp
              on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
            inner join lineitem
            on (partsupp.ps_partkey <= partsupp.ps_suppkey)
          on (part.p_mfgr < part.p_brand)
        inner join orders
          left join orders
          on (orders.o_orderdate < orders.o_orderdate)
        on (orders.o_orderpriority <= lineitem.l_shipinstruct)
      on (lineitem.l_shipinstruct <= part.p_container)
    on (orders.o_orderdate > orders.o_orderdate)
where part.p_size <= partsupp.ps_availqty
limit 119;
select  
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  customer.c_custkey
from 
  customer
where customer.c_phone <= customer.c_mktsegment
limit 60;
select  
  supplier.s_nationkey
from 
  supplier
where supplier.s_address is not NULL;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  supplier.s_acctbal
from 
  supplier
where supplier.s_nationkey < supplier.s_nationkey
limit 140;
select  
  nation.n_nationkey, 
  lineitem.l_commitdate, 
  min(
    cast(cast(null as float8) as float8)), 
  supplier.s_suppkey, 
  lineitem.l_shipdate, 
  customer.c_custkey, 
  part.p_mfgr, 
  part.p_partkey, 
  count(*), 
  partsupp.ps_partkey, 
  lineitem.l_shipdate, 
  count(
    cast(nation.n_regionkey as int4))
from 
  lineitem
    left join supplier
            left join partsupp
              left join part
                right join nation
                on (part.p_retailprice = part.p_retailprice)
              on (partsupp.ps_supplycost < partsupp.ps_supplycost)
            on (supplier.s_nationkey = partsupp.ps_partkey )
          right join lineitem
            right join lineitem
              inner join partsupp
              on (partsupp.ps_availqty < lineitem.l_orderkey)
            on (lineitem.l_shipinstruct = lineitem.l_returnflag)
          on (part.p_partkey >= lineitem.l_linenumber)
        inner join supplier
        on (lineitem.l_receiptdate < lineitem.l_commitdate)
      left join customer
      on (lineitem.l_commitdate < lineitem.l_shipdate)
    on (partsupp.ps_supplycost is NULL)
where partsupp.ps_suppkey is NULL
limit 97;
select  
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_availqty is not NULL;
select  
  customer.c_mktsegment, 
  customer.c_name, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  customer
where customer.c_acctbal is NULL;
select  
  part.p_name, 
  part.p_brand, 
  part.p_size, 
  region.r_comment, 
  part.p_retailprice
from 
  region
    right join part
    on (region.r_regionkey = part.p_partkey )
where part.p_size > part.p_partkey
limit 154;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_comment, 
  partsupp.ps_partkey, 
  supplier.s_name
from 
  part
      inner join region
          inner join partsupp
          on (partsupp.ps_suppkey >= partsupp.ps_suppkey)
        inner join lineitem
          right join region
          on (lineitem.l_shipinstruct = lineitem.l_shipinstruct)
        on (lineitem.l_linenumber <= partsupp.ps_partkey)
      on (part.p_name = partsupp.ps_comment )
    left join supplier
    on (part.p_size is not NULL)
where lineitem.l_discount <= supplier.s_acctbal
limit 58;
select  
  lineitem.l_receiptdate, 
  lineitem.l_linenumber, 
  lineitem.l_receiptdate, 
  lineitem.l_discount, 
  lineitem.l_receiptdate, 
  lineitem.l_shipmode, 
  lineitem.l_returnflag, 
  lineitem.l_shipmode, 
  lineitem.l_receiptdate, 
  max(
    cast(cast(null as float4) as float4)), 
  lineitem.l_shipinstruct
from 
  lineitem
where lineitem.l_quantity is NULL
limit 65;
select  
  partsupp.ps_suppkey, 
  supplier.s_comment
from 
  partsupp
    inner join part
          inner join region
          on (part.p_retailprice <= part.p_retailprice)
        right join orders
          right join partsupp
                left join lineitem
                on (lineitem.l_shipdate >= lineitem.l_receiptdate)
              left join part
              on (lineitem.l_quantity = part.p_retailprice )
            inner join supplier
            on (lineitem.l_shipdate >= lineitem.l_shipdate)
          on (supplier.s_acctbal = part.p_retailprice)
        on (supplier.s_acctbal < orders.o_totalprice)
      inner join supplier
        left join region
          inner join customer
          on (customer.c_nationkey > region.r_regionkey)
        on (customer.c_custkey <= region.r_regionkey)
      on (part.p_container < part.p_brand)
    on (partsupp.ps_availqty is NULL)
where region.r_regionkey is not NULL
limit 58;
select  
  customer.c_nationkey
from 
  customer
where customer.c_nationkey is not NULL;
select  
  orders.o_custkey, 
  orders.o_orderdate, 
  orders.o_orderstatus, 
  part.p_container, 
  lineitem.l_extendedprice, 
  part.p_container, 
  lineitem.l_shipdate, 
  nation.n_regionkey, 
  count(
    cast(orders.o_shippriority as int4))
from 
  nation
      left join orders
      on (nation.n_regionkey >= orders.o_custkey)
    inner join part
          inner join partsupp
            right join lineitem
            on (lineitem.l_receiptdate = lineitem.l_commitdate)
          on (lineitem.l_returnflag >= part.p_brand)
        right join customer
          inner join nation
          on (customer.c_mktsegment = nation.n_name )
        on (lineitem.l_returnflag <= nation.n_name)
      inner join lineitem
              left join customer
              on (lineitem.l_tax = customer.c_acctbal )
            inner join lineitem
            on (lineitem.l_returnflag > lineitem.l_shipinstruct)
          left join nation
          on (lineitem.l_suppkey <= lineitem.l_suppkey)
        inner join orders
          inner join orders
          on (orders.o_totalprice < orders.o_totalprice)
        on (orders.o_orderstatus <= orders.o_orderpriority)
      on (lineitem.l_receiptdate <= lineitem.l_commitdate)
    on (customer.c_mktsegment is not NULL)
where lineitem.l_discount <= orders.o_totalprice
limit 89;
select  
  partsupp.ps_supplycost, 
  customer.c_custkey
from 
  supplier
      inner join partsupp
      on (supplier.s_suppkey = partsupp.ps_partkey )
    left join supplier
          right join partsupp
          on (supplier.s_nationkey < partsupp.ps_partkey)
        right join partsupp
            inner join orders
              inner join nation
              on (orders.o_orderstatus > orders.o_clerk)
            on (orders.o_orderdate <= orders.o_orderdate)
          inner join customer
          on (partsupp.ps_availqty <= partsupp.ps_partkey)
        on (nation.n_name < customer.c_phone)
      inner join orders
      on (orders.o_orderdate <= orders.o_orderdate)
    on (partsupp.ps_supplycost is not NULL)
where nation.n_nationkey is not NULL;
select  
  customer.c_custkey, 
  region.r_name, 
  customer.c_phone, 
  region.r_regionkey, 
  customer.c_comment, 
  region.r_comment
from 
  orders
    left join region
        right join region
        on (region.r_name <= region.r_name)
      inner join customer
      on (customer.c_acctbal = customer.c_acctbal)
    on (orders.o_orderkey = region.r_regionkey )
where customer.c_custkey is NULL
limit 110;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_regionkey is NULL
limit 156;
select  
  max(
    cast(orders.o_orderdate as date)), 
  orders.o_orderpriority, 
  orders.o_custkey, 
  sum(
    cast(cast(null as float4) as float4))
from 
  orders
where orders.o_orderdate is NULL
limit 44;
select  
  supplier.s_phone, 
  count(*)
from 
  supplier
    inner join partsupp
    on (supplier.s_phone < supplier.s_name)
where partsupp.ps_suppkey is NULL
limit 104;
select  
  supplier.s_comment
from 
  region
        right join orders
        on (orders.o_orderdate <= orders.o_orderdate)
      inner join nation
          inner join part
            right join lineitem
                right join orders
                on (orders.o_custkey > orders.o_orderkey)
              inner join lineitem
                right join supplier
                on (supplier.s_name = lineitem.l_shipmode)
              on (lineitem.l_shipdate = lineitem.l_commitdate)
            on (lineitem.l_commitdate = lineitem.l_shipdate)
          on (lineitem.l_discount < lineitem.l_quantity)
        inner join orders
          right join nation
          on (orders.o_orderkey <= orders.o_orderkey)
        on (orders.o_clerk <= lineitem.l_shipinstruct)
      on (lineitem.l_receiptdate <= lineitem.l_commitdate)
    inner join region
    on (orders.o_custkey <= nation.n_nationkey)
where orders.o_custkey is not NULL;
select  
  orders.o_shippriority, 
  orders.o_orderstatus
from 
  orders
where orders.o_custkey is NULL
limit 120;
select  
  min(
    cast(cast(null as float4) as float4)), 
  supplier.s_comment, 
  customer.c_comment, 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  region.r_regionkey, 
  nation.n_regionkey, 
  nation.n_name, 
  customer.c_custkey, 
  part.p_name
from 
  region
          inner join part
          on (part.p_container < part.p_container)
        left join region
          inner join nation
          on (region.r_name >= nation.n_name)
        on (part.p_retailprice <= part.p_retailprice)
      left join supplier
      on (supplier.s_acctbal < supplier.s_acctbal)
    inner join customer
    on (region.r_comment is not NULL)
where customer.c_acctbal <= part.p_retailprice
limit 74;
select  
  nation.n_name, 
  nation.n_nationkey
from 
  nation
where nation.n_comment is not NULL;
select  
  part.p_type
from 
  part
where part.p_size is NULL;
select  
  nation.n_regionkey, 
  nation.n_nationkey, 
  lineitem.l_suppkey
from 
  lineitem
    inner join part
      inner join nation
      on (part.p_partkey <= nation.n_nationkey)
    on (part.p_comment is NULL)
where lineitem.l_shipdate is NULL
limit 81;
select  
  orders.o_orderstatus
from 
  partsupp
    inner join region
        right join nation
          inner join supplier
            left join orders
            on (supplier.s_acctbal <= supplier.s_acctbal)
          on (orders.o_orderdate >= orders.o_orderdate)
        on (orders.o_custkey >= orders.o_orderkey)
      inner join part
        inner join region
          inner join nation
            inner join partsupp
              inner join part
              on (partsupp.ps_availqty = part.p_partkey )
            on (nation.n_regionkey = part.p_partkey )
          on (partsupp.ps_availqty = region.r_regionkey)
        on (part.p_brand > part.p_brand)
      on (orders.o_orderdate > orders.o_orderdate)
    on (part.p_container is NULL)
where nation.n_regionkey is NULL
limit 74;
select  
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 98;
select  
  supplier.s_suppkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name
from 
  region
    right join supplier
    on (region.r_name = supplier.s_name )
where region.r_name is NULL
limit 125;
select  
  nation.n_name, 
  min(
    cast(cast(null as float4) as float4))
from 
  nation
where nation.n_name is not NULL
limit 99;
select  
  part.p_name, 
  min(
    cast(cast(null as int2) as int2)), 
  part.p_mfgr, 
  max(
    cast(cast(null as float4) as float4)), 
  part.p_size
from 
  part
where part.p_partkey is not NULL
limit 82;
select  
  supplier.s_phone
from 
  supplier
    inner join supplier
        inner join region
          inner join supplier
          on (supplier.s_acctbal > supplier.s_acctbal)
        on (supplier.s_acctbal <= supplier.s_acctbal)
      right join partsupp
          right join partsupp
          on (partsupp.ps_supplycost = partsupp.ps_supplycost)
        left join customer
        on (partsupp.ps_supplycost = customer.c_acctbal )
      on (partsupp.ps_partkey = partsupp.ps_suppkey)
    on (supplier.s_suppkey = customer.c_custkey )
where partsupp.ps_comment is not NULL
limit 151;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  customer.c_nationkey, 
  supplier.s_nationkey, 
  customer.c_mktsegment
from 
  customer
      right join customer
        inner join supplier
            left join orders
            on (orders.o_orderdate < orders.o_orderdate)
          left join supplier
          on (supplier.s_suppkey = supplier.s_suppkey )
        on (supplier.s_nationkey > supplier.s_nationkey)
      on (customer.c_nationkey = customer.c_custkey )
    left join orders
    on (supplier.s_address is not NULL)
where customer.c_mktsegment is NULL;
select  
  partsupp.ps_supplycost, 
  region.r_comment, 
  region.r_name
from 
  partsupp
    inner join region
    on (region.r_regionkey is NULL)
where region.r_regionkey is NULL
limit 77;
select  
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as text) as text)), 
  part.p_comment, 
  lineitem.l_returnflag, 
  supplier.s_nationkey, 
  orders.o_orderkey, 
  orders.o_orderkey, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  partsupp
        right join supplier
          inner join region
          on (region.r_name >= supplier.s_name)
        on (supplier.s_suppkey <= partsupp.ps_availqty)
      left join partsupp
          right join supplier
              inner join part
                inner join nation
                on (nation.n_nationkey >= nation.n_regionkey)
              on (supplier.s_nationkey = nation.n_nationkey )
            left join part
            on (supplier.s_nationkey = part.p_partkey )
          on (partsupp.ps_comment = part.p_name )
        left join nation
          inner join lineitem
          on (lineitem.l_extendedprice < lineitem.l_tax)
        on (nation.n_nationkey < part.p_size)
      on (partsupp.ps_availqty = lineitem.l_orderkey )
    inner join partsupp
          left join orders
          on (orders.o_custkey > partsupp.ps_partkey)
        left join orders
          inner join nation
          on (orders.o_orderdate < orders.o_orderdate)
        on (orders.o_orderdate > orders.o_orderdate)
      inner join orders
      on (orders.o_clerk <= orders.o_orderstatus)
    on (part.p_type is NULL)
where lineitem.l_shipinstruct is NULL
limit 128;
select  
  supplier.s_acctbal, 
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  min(
    cast(cast(null as money) as money)), 
  supplier.s_name, 
  supplier.s_name, 
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_phone
from 
  supplier
where supplier.s_name > supplier.s_phone;
select  
  customer.c_mktsegment, 
  max(
    cast(cast(null as "interval") as "interval")), 
  customer.c_comment, 
  customer.c_name, 
  customer.c_custkey, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_custkey, 
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_acctbal
from 
  customer
where customer.c_phone is not NULL
limit 40;
select  
  region.r_regionkey, 
  orders.o_shippriority, 
  orders.o_shippriority, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  lineitem
      inner join partsupp
        inner join region
        on (region.r_name >= region.r_name)
      on (lineitem.l_quantity >= lineitem.l_discount)
    inner join orders
          inner join supplier
          on (orders.o_custkey = supplier.s_suppkey )
        left join nation
          right join customer
          on (customer.c_phone <= customer.c_phone)
        on (orders.o_custkey > customer.c_custkey)
      inner join nation
      on (orders.o_orderdate <= orders.o_orderdate)
    on (partsupp.ps_suppkey = nation.n_nationkey )
where customer.c_name is NULL
limit 58;
select  
  supplier.s_name, 
  supplier.s_nationkey, 
  nation.n_comment, 
  lineitem.l_receiptdate
from 
  partsupp
    inner join supplier
      left join supplier
            inner join supplier
                left join lineitem
                on (lineitem.l_commitdate <= lineitem.l_shipdate)
              right join lineitem
                  left join lineitem
                  on (lineitem.l_quantity = lineitem.l_extendedprice)
                inner join partsupp
                on (partsupp.ps_supplycost > partsupp.ps_supplycost)
              on (lineitem.l_commitdate <= lineitem.l_receiptdate)
            on (lineitem.l_partkey >= lineitem.l_linenumber)
          inner join nation
            right join part
            on (part.p_brand >= part.p_mfgr)
          on (lineitem.l_orderkey > lineitem.l_linenumber)
        inner join partsupp
          inner join nation
          on (nation.n_nationkey >= nation.n_nationkey)
        on (lineitem.l_receiptdate > lineitem.l_shipdate)
      on (supplier.s_suppkey >= partsupp.ps_suppkey)
    on (partsupp.ps_availqty = supplier.s_suppkey )
where lineitem.l_extendedprice <= lineitem.l_extendedprice
limit 141;
select  
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 117;
select  
  region.r_name, 
  region.r_regionkey, 
  customer.c_nationkey, 
  region.r_name, 
  part.p_mfgr, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  part.p_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  nation.n_nationkey
from 
  nation
      right join region
        inner join part
        on (part.p_retailprice < part.p_retailprice)
      on (region.r_regionkey > part.p_size)
    inner join customer
    on (customer.c_phone >= part.p_container)
where customer.c_acctbal <= part.p_retailprice
limit 85;
select  
  part.p_retailprice, 
  part.p_mfgr, 
  part.p_container, 
  part.p_container, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  part
where part.p_mfgr = part.p_mfgr
limit 107;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  orders.o_comment
from 
  orders
where orders.o_orderdate is not NULL;
select  
  supplier.s_phone, 
  min(
    cast(cast(null as tid) as tid)), 
  supplier.s_comment, 
  supplier.s_name
from 
  supplier
where supplier.s_name < supplier.s_name
limit 70;
select  
  customer.c_comment, 
  customer.c_mktsegment, 
  customer.c_address, 
  customer.c_address, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as "time") as "time")), 
  sum(
    cast(cast(null as int8) as int8)), 
  customer.c_phone, 
  customer.c_phone, 
  customer.c_comment, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  customer.c_address, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_custkey, 
  customer.c_address, 
  customer.c_address, 
  avg(
    cast(cast(null as int8) as int8)), 
  customer.c_phone, 
  customer.c_mktsegment
from 
  customer
where customer.c_phone > customer.c_phone
limit 70;
select  
  supplier.s_suppkey, 
  orders.o_orderdate, 
  supplier.s_acctbal, 
  region.r_name
from 
  region
      inner join orders
      on (orders.o_orderpriority < region.r_name)
    left join region
          left join lineitem
          on (lineitem.l_extendedprice >= lineitem.l_discount)
        inner join supplier
        on (lineitem.l_linestatus > region.r_name)
      left join supplier
        inner join supplier
        on (supplier.s_phone = supplier.s_name)
      on (lineitem.l_comment = supplier.s_address )
    on (lineitem.l_suppkey is not NULL)
where supplier.s_name is NULL
limit 20;
select  
  region.r_comment, 
  region.r_name, 
  region.r_comment
from 
  region
where region.r_regionkey is NULL
limit 134;
select  
  supplier.s_acctbal
from 
  supplier
    left join supplier
    on (supplier.s_phone = supplier.s_name )
where supplier.s_acctbal is not NULL
limit 108;
select  
  max(
    cast(cast(null as "time") as "time")), 
  supplier.s_suppkey, 
  supplier.s_suppkey, 
  sum(
    cast(supplier.s_acctbal as "numeric"))
from 
  supplier
where supplier.s_nationkey is NULL;
select  
  nation.n_regionkey, 
  nation.n_name
from 
  nation
where nation.n_name <= nation.n_name
limit 74;
select  
  partsupp.ps_supplycost, 
  avg(
    cast(cast(null as int2) as int2)), 
  part.p_container, 
  orders.o_custkey, 
  customer.c_address, 
  orders.o_comment, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  orders.o_shippriority, 
  part.p_type, 
  part.p_container, 
  part.p_comment, 
  part.p_retailprice
from 
  part
    right join customer
        right join part
          inner join orders
          on (orders.o_shippriority = orders.o_shippriority)
        on (orders.o_orderdate = orders.o_orderdate)
      inner join partsupp
      on (orders.o_clerk >= customer.c_phone)
    on (part.p_container = customer.c_phone)
where partsupp.ps_comment is NULL;
select  
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  orders.o_shippriority, 
  orders.o_clerk, 
  sum(
    cast(cast(null as int2) as int2)), 
  min(
    cast(orders.o_shippriority as int4))
from 
  orders
where orders.o_custkey is not NULL
limit 97;
select  
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  orders.o_orderstatus, 
  nation.n_regionkey
from 
  orders
    inner join nation
    on (nation.n_comment is NULL)
where nation.n_regionkey is NULL
limit 31;
select  
  max(
    cast(supplier.s_name as bpchar))
from 
  supplier
        left join lineitem
        on (supplier.s_phone <= supplier.s_phone)
      inner join part
        inner join part
        on (part.p_partkey <= part.p_size)
      on (lineitem.l_quantity = supplier.s_acctbal)
    right join supplier
      inner join part
      on (part.p_container > part.p_mfgr)
    on (part.p_comment is not NULL)
where lineitem.l_shipinstruct is NULL
limit 113;
select  
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_address, 
  sum(
    cast(cast(null as float8) as float8)), 
  customer.c_nationkey, 
  customer.c_mktsegment, 
  customer.c_comment, 
  min(
    cast(cast(null as inet) as inet)), 
  customer.c_phone, 
  customer.c_custkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  customer.c_acctbal
from 
  customer
where customer.c_comment is not NULL;
select  
  region.r_comment, 
  region.r_regionkey, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_name, 
  region.r_name
from 
  region
where region.r_name is NULL
limit 89;
select  
  min(
    cast(partsupp.ps_suppkey as int4)), 
  partsupp.ps_availqty, 
  max(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  partsupp.ps_comment, 
  count(*), 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_suppkey is not NULL;
select  
  supplier.s_phone, 
  supplier.s_name, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  supplier.s_phone, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_name is not NULL
limit 102;
select  
  nation.n_regionkey, 
  min(
    cast(lineitem.l_shipdate as date)), 
  min(
    cast(lineitem.l_extendedprice as "numeric")), 
  nation.n_regionkey, 
  nation.n_nationkey, 
  min(
    cast(cast(null as "time") as "time")), 
  lineitem.l_orderkey
from 
  lineitem
    left join nation
    on (lineitem.l_returnflag = nation.n_name )
where nation.n_regionkey > nation.n_nationkey
limit 123;
select  
  lineitem.l_linestatus, 
  lineitem.l_quantity, 
  lineitem.l_quantity
from 
  lineitem
where lineitem.l_extendedprice < lineitem.l_quantity
limit 55;
select  
  orders.o_orderstatus, 
  orders.o_totalprice
from 
  orders
where orders.o_clerk >= orders.o_clerk;
select  
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_availqty is not NULL
limit 94;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  lineitem.l_linestatus, 
  lineitem.l_orderkey, 
  lineitem.l_linenumber, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  lineitem.l_receiptdate, 
  lineitem.l_comment, 
  lineitem.l_receiptdate, 
  lineitem.l_receiptdate, 
  lineitem.l_suppkey, 
  lineitem.l_partkey, 
  lineitem.l_tax, 
  lineitem.l_suppkey
from 
  lineitem
where lineitem.l_shipmode is not NULL
limit 112;
select  
  part.p_brand, 
  part.p_partkey, 
  part.p_name, 
  part.p_container, 
  part.p_mfgr, 
  part.p_type, 
  part.p_brand, 
  part.p_retailprice, 
  part.p_comment, 
  min(
    cast(cast(null as float8) as float8)), 
  part.p_partkey, 
  part.p_partkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  part.p_partkey, 
  part.p_container, 
  min(
    cast(cast(null as timetz) as timetz)), 
  part.p_size, 
  part.p_name, 
  part.p_name, 
  part.p_brand, 
  part.p_name, 
  part.p_partkey
from 
  part
where part.p_size >= part.p_size
limit 104;
select  
  partsupp.ps_comment, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 91;
select  
  part.p_comment, 
  part.p_comment, 
  part.p_container
from 
  nation
    inner join part
          inner join region
          on (part.p_size <= part.p_size)
        inner join supplier
        on (part.p_comment = supplier.s_address )
      left join part
        inner join lineitem
        on (lineitem.l_commitdate >= lineitem.l_commitdate)
      on (lineitem.l_receiptdate = lineitem.l_commitdate)
    on (nation.n_name = region.r_name )
where part.p_retailprice is NULL
limit 87;
select  
  region.r_name
from 
  region
where region.r_name is not NULL;
select  
  part.p_partkey, 
  part.p_retailprice, 
  customer.c_address, 
  min(
    cast(cast(null as tid) as tid)), 
  customer.c_acctbal
from 
  customer
    inner join part
    on (part.p_mfgr is NULL)
where part.p_retailprice = part.p_retailprice
limit 165;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  orders.o_custkey, 
  max(
    cast(cast(null as int8) as int8)), 
  part.p_brand, 
  orders.o_comment
from 
  orders
    left join orders
      inner join part
      on (part.p_mfgr <= part.p_container)
    on (orders.o_orderstatus = part.p_mfgr )
where orders.o_orderdate is not NULL;
select  
  customer.c_mktsegment, 
  max(
    cast(cast(null as "time") as "time")), 
  region.r_regionkey, 
  partsupp.ps_partkey
from 
  partsupp
      inner join customer
      on (partsupp.ps_partkey = partsupp.ps_suppkey)
    left join region
    on (region.r_comment is not NULL)
where partsupp.ps_comment is NULL;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  part.p_comment, 
  min(
    cast(cast(null as text) as text)), 
  partsupp.ps_supplycost, 
  part.p_container, 
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  part.p_name, 
  part.p_size, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost
from 
  part
    right join partsupp
    on (part.p_name = partsupp.ps_comment )
where partsupp.ps_comment is not NULL
limit 123;
select  
  supplier.s_acctbal, 
  supplier.s_name, 
  supplier.s_suppkey, 
  customer.c_address
from 
  region
      left join orders
            inner join supplier
            on (orders.o_totalprice <= orders.o_totalprice)
          inner join partsupp
          on (supplier.s_suppkey > orders.o_shippriority)
        inner join region
          inner join lineitem
            left join lineitem
            on (lineitem.l_receiptdate < lineitem.l_shipdate)
          on (lineitem.l_shipdate > lineitem.l_commitdate)
        on (orders.o_shippriority > lineitem.l_orderkey)
      on (lineitem.l_quantity > lineitem.l_discount)
    inner join customer
      left join part
      on (customer.c_acctbal <= customer.c_acctbal)
    on (region.r_name is not NULL)
where lineitem.l_shipdate = lineitem.l_shipdate;
select  
  orders.o_orderkey, 
  max(
    cast(cast(null as float8) as float8)), 
  lineitem.l_receiptdate, 
  lineitem.l_commitdate, 
  lineitem.l_orderkey, 
  lineitem.l_suppkey, 
  partsupp.ps_comment
from 
  partsupp
        inner join orders
          inner join lineitem
          on (orders.o_orderkey < orders.o_orderkey)
        on (orders.o_orderdate > lineitem.l_shipdate)
      right join orders
        inner join nation
        on (nation.n_name = nation.n_name)
      on (lineitem.l_quantity < partsupp.ps_supplycost)
    inner join partsupp
      right join lineitem
      on (lineitem.l_shipdate >= lineitem.l_shipdate)
    on (partsupp.ps_comment = partsupp.ps_comment )
where lineitem.l_comment is not NULL
limit 158;
select  
  max(
    cast(cast(null as int8) as int8)), 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  supplier.s_suppkey, 
  min(
    cast(cast(null as xid8) as xid8)), 
  supplier.s_phone, 
  supplier.s_acctbal, 
  max(
    cast(cast(null as tid) as tid)), 
  avg(
    cast(cast(null as int8) as int8)), 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_phone
from 
  supplier
where supplier.s_name is NULL
limit 172;
select  
  part.p_container, 
  part.p_name, 
  part.p_mfgr, 
  part.p_retailprice, 
  part.p_comment, 
  part.p_type, 
  part.p_size, 
  part.p_brand
from 
  part
where part.p_partkey <= part.p_size
limit 91;
select  
  min(
    cast(lineitem.l_returnflag as bpchar))
from 
  lineitem
where lineitem.l_orderkey >= lineitem.l_partkey;
select  
  orders.o_orderpriority, 
  orders.o_clerk, 
  avg(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_custkey, 
  orders.o_custkey, 
  orders.o_custkey
from 
  orders
where orders.o_totalprice is not NULL
limit 117;
select  
  customer.c_custkey, 
  customer.c_nationkey, 
  customer.c_name
from 
  customer
where customer.c_custkey < customer.c_nationkey;
select  
  lineitem.l_commitdate, 
  lineitem.l_extendedprice, 
  customer.c_nationkey, 
  part.p_comment
from 
  partsupp
      inner join lineitem
        right join part
        on (part.p_mfgr >= lineitem.l_returnflag)
      on (part.p_mfgr <= part.p_brand)
    left join supplier
      left join customer
      on (supplier.s_acctbal = customer.c_acctbal )
    on (lineitem.l_shipmode > lineitem.l_shipinstruct)
where part.p_mfgr is not NULL;
select  
  customer.c_custkey
from 
  part
      inner join orders
      on (orders.o_totalprice = orders.o_totalprice)
    inner join customer
      inner join partsupp
      on (customer.c_acctbal = partsupp.ps_supplycost)
    on (part.p_type is NULL)
where customer.c_custkey is NULL;
select  
  region.r_comment, 
  customer.c_nationkey, 
  sum(
    cast(cast(null as money) as money)), 
  partsupp.ps_availqty, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  orders.o_orderstatus, 
  customer.c_name, 
  partsupp.ps_comment, 
  orders.o_orderstatus, 
  min(
    cast(orders.o_totalprice as "numeric")), 
  region.r_regionkey, 
  partsupp.ps_partkey
from 
  customer
    inner join orders
        left join partsupp
          left join customer
              right join orders
              on (orders.o_orderstatus > orders.o_clerk)
            left join region
            on (orders.o_orderdate < orders.o_orderdate)
          on (orders.o_orderdate >= orders.o_orderdate)
        on (orders.o_custkey = partsupp.ps_partkey )
      inner join region
      on (orders.o_totalprice >= orders.o_totalprice)
    on (region.r_comment is not NULL)
where region.r_comment is NULL;
select  
  lineitem.l_tax
from 
  lineitem
where lineitem.l_shipdate is NULL;
select  
  region.r_name, 
  max(
    cast(cast(null as inet) as inet)), 
  supplier.s_name, 
  partsupp.ps_availqty, 
  lineitem.l_partkey, 
  region.r_comment, 
  part.p_mfgr, 
  customer.c_comment, 
  supplier.s_name, 
  part.p_comment, 
  lineitem.l_quantity
from 
  part
            right join lineitem
              left join customer
              on (lineitem.l_orderkey > customer.c_custkey)
            on (lineitem.l_commitdate <= lineitem.l_receiptdate)
          left join partsupp
          on (lineitem.l_discount = partsupp.ps_supplycost )
        inner join lineitem
            left join region
            on (lineitem.l_comment = region.r_comment )
          inner join region
              right join nation
              on (region.r_name = nation.n_name )
            right join customer
            on (customer.c_acctbal = customer.c_acctbal)
          on (region.r_regionkey = nation.n_nationkey )
        on (part.p_comment = lineitem.l_comment )
      inner join nation
      on (lineitem.l_shipmode >= lineitem.l_shipmode)
    inner join region
        left join partsupp
          inner join supplier
          on (supplier.s_nationkey = partsupp.ps_suppkey)
        on (supplier.s_phone > supplier.s_name)
      left join part
      on (partsupp.ps_comment = part.p_name )
    on (part.p_brand is not NULL)
where customer.c_nationkey < customer.c_custkey
limit 28;
select  
  min(
    cast(cast(null as "time") as "time")), 
  customer.c_name, 
  customer.c_address, 
  nation.n_name, 
  partsupp.ps_partkey
from 
  nation
    inner join region
              right join lineitem
              on (lineitem.l_discount < lineitem.l_extendedprice)
            inner join lineitem
            on (lineitem.l_shipdate < lineitem.l_shipdate)
          inner join region
            inner join nation
            on (nation.n_name > region.r_name)
          on (lineitem.l_suppkey <= lineitem.l_suppkey)
        inner join partsupp
          inner join customer
          on (partsupp.ps_partkey >= customer.c_custkey)
        on (region.r_regionkey > lineitem.l_suppkey)
      left join region
          right join customer
          on (customer.c_nationkey = customer.c_nationkey)
        left join region
          right join lineitem
          on (lineitem.l_shipmode >= lineitem.l_shipinstruct)
        on (region.r_regionkey >= region.r_regionkey)
      on (lineitem.l_shipdate > lineitem.l_commitdate)
    on (nation.n_comment = lineitem.l_comment )
where lineitem.l_suppkey is NULL;
select  
  nation.n_regionkey, 
  partsupp.ps_availqty, 
  nation.n_comment, 
  nation.n_regionkey, 
  partsupp.ps_comment, 
  nation.n_nationkey, 
  partsupp.ps_availqty, 
  nation.n_name, 
  partsupp.ps_partkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_name
from 
  nation
    inner join partsupp
    on (nation.n_comment = partsupp.ps_comment )
where partsupp.ps_suppkey is NULL
limit 89;
select  
  partsupp.ps_supplycost, 
  sum(
    cast(partsupp.ps_availqty as int4))
from 
  region
          inner join orders
            right join nation
              left join partsupp
              on (nation.n_name < nation.n_name)
            on (partsupp.ps_suppkey = orders.o_orderkey)
          on (partsupp.ps_supplycost <= orders.o_totalprice)
        inner join region
        on (orders.o_orderdate > orders.o_orderdate)
      inner join partsupp
      on (orders.o_orderdate >= orders.o_orderdate)
    inner join supplier
    on (partsupp.ps_supplycost is NULL)
where region.r_comment is NULL;
select  
  customer.c_comment, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_custkey, 
  customer.c_custkey, 
  customer.c_comment, 
  customer.c_address, 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_name, 
  customer.c_phone
from 
  customer
where customer.c_comment is not NULL
limit 161;
select  
  sum(
    cast(cast(null as int8) as int8)), 
  nation.n_regionkey, 
  supplier.s_comment, 
  max(
    cast(cast(null as xid8) as xid8)), 
  nation.n_nationkey, 
  max(
    cast(nation.n_name as bpchar)), 
  nation.n_name, 
  nation.n_nationkey, 
  supplier.s_suppkey, 
  nation.n_regionkey, 
  supplier.s_phone
from 
  nation
    inner join supplier
    on (nation.n_comment = supplier.s_address )
where supplier.s_phone = supplier.s_phone
limit 186;
select  
  orders.o_orderpriority
from 
  orders
where orders.o_orderpriority is NULL
limit 107;
select  
  orders.o_totalprice, 
  nation.n_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey
from 
  customer
              left join partsupp
              on (partsupp.ps_supplycost <= customer.c_acctbal)
            inner join region
              left join nation
              on (nation.n_nationkey <= region.r_regionkey)
            on (partsupp.ps_partkey > region.r_regionkey)
          right join lineitem
          on (lineitem.l_discount = lineitem.l_quantity)
        right join region
        on (lineitem.l_shipdate = lineitem.l_receiptdate)
      left join orders
          inner join nation
              inner join customer
              on (customer.c_phone = customer.c_phone)
            left join partsupp
            on (customer.c_mktsegment < customer.c_phone)
          on (orders.o_orderdate > orders.o_orderdate)
        inner join orders
          inner join orders
          on (orders.o_totalprice = orders.o_totalprice )
        on (customer.c_phone = orders.o_orderstatus )
      on (lineitem.l_commitdate <= lineitem.l_receiptdate)
    right join lineitem
    on (lineitem.l_shipmode = lineitem.l_returnflag )
where customer.c_nationkey <= lineitem.l_linenumber;
select  
  part.p_brand, 
  part.p_type, 
  part.p_retailprice, 
  part.p_partkey, 
  min(
    cast(cast(null as date) as date))
from 
  part
where part.p_size is NULL
limit 64;
select  
  nation.n_name, 
  sum(
    cast(lineitem.l_suppkey as int4)), 
  max(
    cast(cast(null as xid8) as xid8)), 
  partsupp.ps_comment, 
  supplier.s_name, 
  lineitem.l_linestatus, 
  region.r_comment
from 
  lineitem
      right join nation
      on (lineitem.l_linestatus = nation.n_name )
    inner join supplier
          left join partsupp
          on (partsupp.ps_suppkey = supplier.s_suppkey)
        inner join region
          left join orders
          on (orders.o_custkey <= orders.o_custkey)
        on (orders.o_orderpriority <= supplier.s_phone)
      left join region
          left join nation
                inner join region
                on (nation.n_regionkey >= nation.n_regionkey)
              left join supplier
              on (supplier.s_phone <= supplier.s_name)
            inner join nation
            on (nation.n_nationkey = nation.n_nationkey )
          on (region.r_name = region.r_name )
        right join lineitem
        on (supplier.s_name < region.r_name)
      on (lineitem.l_linestatus < supplier.s_phone)
    on (lineitem.l_extendedprice = orders.o_totalprice )
where supplier.s_name > lineitem.l_returnflag
limit 46;
select  
  nation.n_regionkey, 
  supplier.s_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  supplier.s_phone
from 
  supplier
    inner join nation
    on (nation.n_nationkey is not NULL)
where nation.n_comment is not NULL
limit 65;
select  
  part.p_size, 
  part.p_partkey, 
  part.p_mfgr, 
  min(
    cast(cast(null as tid) as tid)), 
  part.p_name, 
  max(
    cast(cast(null as money) as money)), 
  avg(
    cast(cast(null as float8) as float8)), 
  part.p_partkey, 
  part.p_name
from 
  part
where part.p_mfgr is not NULL
limit 54;
select  
  part.p_comment, 
  part.p_retailprice, 
  part.p_name, 
  part.p_name, 
  part.p_brand
from 
  part
where part.p_comment is NULL
limit 80;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  supplier.s_address
from 
  supplier
    inner join partsupp
    on (partsupp.ps_supplycost is not NULL)
where supplier.s_acctbal > partsupp.ps_supplycost
limit 192;
select  
  part.p_type, 
  part.p_name, 
  region.r_name
from 
  region
            right join partsupp
            on (partsupp.ps_supplycost < partsupp.ps_supplycost)
          left join region
              left join part
              on (region.r_regionkey > part.p_size)
            right join supplier
            on (part.p_retailprice = supplier.s_acctbal )
          on (partsupp.ps_supplycost = part.p_retailprice )
        inner join partsupp
        on (region.r_regionkey = partsupp.ps_partkey )
      inner join orders
          inner join lineitem
            right join orders
            on (orders.o_totalprice >= lineitem.l_tax)
          on (orders.o_comment = orders.o_comment )
        left join customer
        on (lineitem.l_orderkey >= customer.c_nationkey)
      on (region.r_regionkey = customer.c_custkey )
    right join lineitem
      right join nation
        inner join part
            left join supplier
            on (supplier.s_acctbal = part.p_retailprice)
          right join region
          on (supplier.s_acctbal > supplier.s_acctbal)
        on (region.r_name = supplier.s_phone)
      on (lineitem.l_commitdate > lineitem.l_commitdate)
    on (customer.c_phone = lineitem.l_returnflag )
where partsupp.ps_partkey is NULL
limit 115;
select  
  customer.c_phone, 
  part.p_mfgr, 
  part.p_type, 
  customer.c_phone, 
  customer.c_acctbal, 
  part.p_partkey, 
  part.p_partkey, 
  part.p_size
from 
  part
    inner join customer
    on (part.p_retailprice is not NULL)
where customer.c_comment is not NULL
limit 113;
select  
  customer.c_custkey, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  customer
where customer.c_acctbal is not NULL
limit 154;
select  
  supplier.s_name
from 
  supplier
where supplier.s_suppkey is not NULL
limit 30;
select  
  region.r_name
from 
  region
where region.r_regionkey is NULL;
select  
  nation.n_name, 
  lineitem.l_shipinstruct, 
  nation.n_name, 
  part.p_container
from 
  region
    inner join lineitem
      right join nation
        right join part
        on (nation.n_comment = part.p_name )
      on (nation.n_name > lineitem.l_returnflag)
    on (region.r_name is NULL)
where lineitem.l_orderkey is NULL;
select  
  customer.c_nationkey, 
  customer.c_comment
from 
  customer
where customer.c_comment is NULL
limit 104;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as int8) as int8)), 
  supplier.s_comment, 
  supplier.s_phone
from 
  supplier
    left join supplier
    on (supplier.s_comment is not NULL)
where supplier.s_name is NULL;
select  
  region.r_name, 
  partsupp.ps_availqty, 
  region.r_name, 
  region.r_comment, 
  part.p_retailprice, 
  region.r_regionkey, 
  region.r_regionkey, 
  part.p_comment, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  customer
          inner join part
            inner join nation
              right join region
              on (nation.n_name = region.r_name )
            on (part.p_container = nation.n_name )
          on (part.p_size < customer.c_nationkey)
        inner join partsupp
        on (customer.c_acctbal < customer.c_acctbal)
      right join customer
      on (region.r_regionkey = customer.c_custkey )
    inner join region
    on (part.p_brand is not NULL)
where nation.n_nationkey <= part.p_partkey
limit 82;
select  
  lineitem.l_extendedprice, 
  lineitem.l_partkey, 
  min(
    cast(cast(null as money) as money))
from 
  lineitem
where lineitem.l_tax is not NULL
limit 95;
select  
  supplier.s_comment, 
  partsupp.ps_partkey
from 
  supplier
    left join partsupp
    on (partsupp.ps_availqty = partsupp.ps_partkey)
where partsupp.ps_partkey is NULL;
select  
  min(
    cast(cast(null as int8) as int8)), 
  min(
    cast(cast(null as text) as text)), 
  part.p_container, 
  nation.n_comment, 
  part.p_name, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  supplier.s_nationkey, 
  orders.o_comment, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  nation
        inner join nation
          left join part
          on (part.p_retailprice > part.p_retailprice)
        on (part.p_retailprice > part.p_retailprice)
      inner join customer
              right join orders
              on (customer.c_phone < orders.o_clerk)
            left join part
            on (orders.o_orderkey <= orders.o_orderkey)
          left join part
          on (customer.c_acctbal = part.p_retailprice )
        right join part
          left join lineitem
          on (lineitem.l_commitdate > lineitem.l_shipdate)
        on (lineitem.l_commitdate >= lineitem.l_receiptdate)
      on (nation.n_regionkey > customer.c_custkey)
    inner join part
      inner join customer
        inner join supplier
        on (customer.c_acctbal > supplier.s_acctbal)
      on (customer.c_mktsegment < customer.c_mktsegment)
    on (part.p_mfgr is not NULL)
where customer.c_address is not NULL
limit 92;
select  
  orders.o_custkey, 
  orders.o_orderpriority, 
  region.r_comment, 
  nation.n_name, 
  nation.n_comment, 
  partsupp.ps_comment, 
  nation.n_nationkey, 
  region.r_name, 
  nation.n_nationkey
from 
  partsupp
        inner join orders
        on (orders.o_orderdate > orders.o_orderdate)
      inner join region
        inner join partsupp
        on (region.r_comment = partsupp.ps_comment )
      on (orders.o_clerk >= orders.o_orderstatus)
    inner join supplier
        inner join nation
          inner join nation
            left join orders
            on (orders.o_orderdate <= orders.o_orderdate)
          on (nation.n_nationkey < orders.o_orderkey)
        on (orders.o_orderstatus > nation.n_name)
      right join nation
        right join lineitem
        on (lineitem.l_shipmode <= lineitem.l_shipinstruct)
      on (nation.n_regionkey = lineitem.l_orderkey )
    on (partsupp.ps_supplycost is not NULL)
where lineitem.l_receiptdate <= orders.o_orderdate
limit 92;
select  
  part.p_brand
from 
  lineitem
    right join part
    on (lineitem.l_quantity < lineitem.l_quantity)
where lineitem.l_linestatus is not NULL
limit 99;
select  
  sum(
    cast(cast(null as int8) as int8)), 
  supplier.s_suppkey
from 
  part
      right join customer
      on (customer.c_acctbal < part.p_retailprice)
    right join supplier
      inner join part
          inner join supplier
            right join partsupp
              left join supplier
              on (supplier.s_suppkey <= supplier.s_suppkey)
            on (supplier.s_acctbal = supplier.s_acctbal)
          on (supplier.s_nationkey > part.p_partkey)
        right join lineitem
              right join customer
              on (lineitem.l_comment = customer.c_name )
            right join supplier
              inner join supplier
              on (supplier.s_acctbal < supplier.s_acctbal)
            on (supplier.s_name >= lineitem.l_returnflag)
          inner join part
          on (lineitem.l_shipdate <= lineitem.l_commitdate)
        on (supplier.s_phone >= supplier.s_phone)
      on (supplier.s_acctbal = supplier.s_acctbal )
    on (supplier.s_suppkey = supplier.s_suppkey)
where supplier.s_name is not NULL
limit 150;
select  
  part.p_size, 
  nation.n_regionkey
from 
  supplier
    inner join part
          inner join region
          on (region.r_regionkey > part.p_size)
        right join nation
        on (part.p_retailprice <= part.p_retailprice)
      inner join nation
      on (part.p_partkey > part.p_partkey)
    on (supplier.s_suppkey = nation.n_nationkey )
where nation.n_nationkey is not NULL;
select  
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_availqty is not NULL
limit 105;
select  
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as "time") as "time")), 
  partsupp.ps_supplycost
from 
  partsupp
    right join partsupp
    on (partsupp.ps_comment is not NULL)
where partsupp.ps_supplycost is NULL
limit 80;
select  
  customer.c_phone
from 
  customer
      inner join nation
      on (customer.c_mktsegment = nation.n_name )
    left join supplier
    on (customer.c_nationkey is NULL)
where customer.c_nationkey is NULL
limit 96;
select  
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  supplier
where supplier.s_suppkey is not NULL
limit 117;
select  
  customer.c_acctbal
from 
  customer
where customer.c_mktsegment is not NULL;
select  
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  count(
    cast(partsupp.ps_partkey as int4)), 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  sum(
    cast(cast(null as float8) as float8))
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 70;
select  
  supplier.s_nationkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  supplier.s_name
from 
  orders
      right join supplier
        right join region
        on (region.r_regionkey <= region.r_regionkey)
      on (orders.o_orderstatus = orders.o_orderpriority)
    right join orders
    on (orders.o_orderkey is not NULL)
where supplier.s_phone is NULL
limit 73;
select  
  nation.n_name
from 
  region
      inner join part
        right join nation
        on (part.p_retailprice = part.p_retailprice)
      on (part.p_retailprice > part.p_retailprice)
    inner join nation
    on (nation.n_comment is NULL)
where region.r_regionkey is not NULL
limit 26;
select  
  nation.n_nationkey, 
  supplier.s_acctbal, 
  nation.n_regionkey, 
  supplier.s_phone
from 
  supplier
      left join nation
        right join supplier
        on (supplier.s_acctbal > supplier.s_acctbal)
      on (supplier.s_acctbal <= supplier.s_acctbal)
    right join nation
    on (supplier.s_nationkey is not NULL)
where supplier.s_acctbal > supplier.s_acctbal
limit 132;
select  
  supplier.s_name, 
  sum(
    cast(cast(null as float8) as float8)), 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_name, 
  max(
    cast(cast(null as oid) as oid)), 
  supplier.s_suppkey, 
  supplier.s_name, 
  supplier.s_phone, 
  supplier.s_address
from 
  supplier
where supplier.s_acctbal is NULL
limit 139;
select  
  partsupp.ps_comment, 
  avg(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_comment, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_comment is NULL
limit 103;
select  
  orders.o_orderdate, 
  part.p_retailprice, 
  max(
    cast(part.p_size as int4)), 
  orders.o_comment, 
  region.r_name, 
  min(
    cast(cast(null as int2) as int2)), 
  region.r_name, 
  orders.o_orderdate
from 
  orders
        left join region
          left join region
          on (region.r_comment = region.r_comment )
        on (region.r_regionkey < orders.o_orderkey)
      left join orders
      on (orders.o_orderkey <= orders.o_shippriority)
    right join part
      left join customer
        right join region
        on (region.r_regionkey = customer.c_nationkey)
      on (customer.c_custkey <= part.p_size)
    on (region.r_comment = part.p_name )
where orders.o_orderdate > orders.o_orderdate;
select  
  lineitem.l_linestatus, 
  lineitem.l_partkey, 
  lineitem.l_discount, 
  avg(
    cast(lineitem.l_extendedprice as "numeric")), 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_shipinstruct is not NULL;
select  
  region.r_regionkey
from 
  partsupp
      left join partsupp
          right join region
          on (partsupp.ps_supplycost < partsupp.ps_supplycost)
        inner join lineitem
            inner join partsupp
            on (lineitem.l_returnflag = lineitem.l_linestatus)
          inner join part
                inner join part
                on (part.p_container < part.p_brand)
              inner join orders
              on (orders.o_shippriority >= orders.o_custkey)
            inner join part
              inner join orders
              on (orders.o_orderdate = orders.o_orderdate)
            on (part.p_mfgr < orders.o_clerk)
          on (lineitem.l_shipinstruct = part.p_mfgr )
        on (partsupp.ps_supplycost = lineitem.l_discount)
      on (orders.o_shippriority = orders.o_orderkey)
    left join region
    on (lineitem.l_linenumber is NULL)
where part.p_retailprice < part.p_retailprice
limit 115;
select  
  lineitem.l_quantity, 
  lineitem.l_shipinstruct, 
  lineitem.l_returnflag, 
  lineitem.l_linestatus, 
  lineitem.l_receiptdate, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  lineitem.l_shipmode, 
  lineitem.l_shipinstruct, 
  lineitem.l_partkey, 
  lineitem.l_suppkey, 
  avg(
    cast(cast(null as float4) as float4))
from 
  lineitem
where lineitem.l_shipmode is NULL
limit 139;
select  
  nation.n_regionkey
from 
  nation
where nation.n_name is NULL;
select  
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as date) as date)), 
  part.p_retailprice, 
  max(
    cast(cast(null as xid8) as xid8)), 
  part.p_partkey, 
  part.p_partkey, 
  part.p_size, 
  part.p_retailprice, 
  min(
    cast(cast(null as int8) as int8)), 
  part.p_comment, 
  part.p_name
from 
  part
where part.p_retailprice > part.p_retailprice;
select  
  customer.c_address, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_mktsegment
from 
  customer
where customer.c_acctbal <= customer.c_acctbal;
select  
  part.p_container, 
  part.p_type, 
  min(
    cast(cast(null as "time") as "time")), 
  orders.o_orderpriority, 
  orders.o_orderpriority, 
  part.p_comment, 
  orders.o_totalprice, 
  region.r_name, 
  region.r_name, 
  part.p_partkey, 
  region.r_comment, 
  min(
    cast(cast(null as text) as text)), 
  region.r_name, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_regionkey, 
  part.p_retailprice, 
  max(
    cast(cast(null as timetz) as timetz)), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  region.r_regionkey, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_comment, 
  region.r_regionkey, 
  orders.o_custkey, 
  part.p_partkey, 
  region.r_name
from 
  region
    inner join part
        inner join region
        on (part.p_container < region.r_name)
      inner join orders
      on (orders.o_totalprice > part.p_retailprice)
    on (orders.o_orderdate is NULL)
where part.p_retailprice < orders.o_totalprice;
select  
  customer.c_custkey, 
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as float8) as float8)), 
  customer.c_address
from 
  customer
where customer.c_nationkey is not NULL;
select  
  max(
    cast(cast(null as int8) as int8)), 
  nation.n_name, 
  nation.n_name
from 
  nation
    inner join supplier
    on (supplier.s_acctbal is not NULL)
where supplier.s_suppkey is NULL
limit 135;
select  
  customer.c_mktsegment, 
  customer.c_comment, 
  customer.c_mktsegment, 
  customer.c_nationkey, 
  customer.c_custkey
from 
  customer
where customer.c_name is not NULL;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  orders.o_comment, 
  orders.o_totalprice, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  orders.o_shippriority, 
  max(
    cast(cast(null as text) as text)), 
  orders.o_shippriority, 
  min(
    cast(cast(null as "time") as "time")), 
  orders.o_orderpriority
from 
  orders
where orders.o_shippriority >= orders.o_custkey
limit 92;
select  
  min(
    cast(cast(null as money) as money)), 
  nation.n_nationkey, 
  orders.o_orderstatus, 
  supplier.s_phone, 
  avg(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as float4) as float4)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  region.r_regionkey
from 
  lineitem
    left join region
          inner join customer
          on (region.r_comment = customer.c_name )
        inner join customer
        on (customer.c_phone >= customer.c_phone)
      inner join region
            inner join supplier
            on (region.r_regionkey >= supplier.s_suppkey)
          right join nation
          on (nation.n_nationkey < nation.n_nationkey)
        right join orders
          inner join customer
          on (orders.o_shippriority = customer.c_custkey )
        on (nation.n_regionkey = customer.c_custkey )
      on (customer.c_nationkey <= orders.o_custkey)
    on (orders.o_totalprice is NULL)
where customer.c_name is not NULL
limit 142;
select  
  region.r_comment, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  region.r_comment, 
  supplier.s_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name
from 
  supplier
    inner join region
    on (supplier.s_acctbal is NULL)
where supplier.s_nationkey > region.r_regionkey
limit 65;
select  
  customer.c_name, 
  partsupp.ps_supplycost
from 
  lineitem
      left join customer
      on (lineitem.l_receiptdate >= lineitem.l_shipdate)
    inner join supplier
      inner join partsupp
      on (supplier.s_suppkey < partsupp.ps_partkey)
    on (partsupp.ps_suppkey is not NULL)
where partsupp.ps_availqty is NULL;
select  
  orders.o_orderpriority, 
  orders.o_clerk, 
  orders.o_orderstatus, 
  orders.o_shippriority, 
  orders.o_orderpriority
from 
  orders
where orders.o_custkey is NULL
limit 113;
select  
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_name
from 
  nation
where nation.n_nationkey is not NULL;
select  
  supplier.s_phone, 
  region.r_regionkey, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_comment
from 
  lineitem
          inner join region
          on (lineitem.l_discount = lineitem.l_quantity)
        inner join lineitem
            left join nation
                inner join supplier
                on (supplier.s_phone > supplier.s_phone)
              inner join customer
              on (nation.n_comment = customer.c_name )
            on (lineitem.l_tax = customer.c_acctbal )
          right join orders
          on (lineitem.l_tax < lineitem.l_quantity)
        on (lineitem.l_quantity > lineitem.l_quantity)
      left join nation
      on (lineitem.l_linenumber >= lineitem.l_linenumber)
    right join region
    on (lineitem.l_shipdate < lineitem.l_receiptdate)
where nation.n_comment is not NULL
limit 116;
select  
  part.p_partkey, 
  lineitem.l_tax, 
  lineitem.l_shipinstruct, 
  customer.c_nationkey, 
  partsupp.ps_availqty, 
  lineitem.l_extendedprice, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  supplier.s_address, 
  part.p_partkey, 
  nation.n_nationkey, 
  min(
    cast(cast(null as inet) as inet)), 
  lineitem.l_tax, 
  nation.n_comment
from 
  part
      left join customer
      on (customer.c_nationkey > customer.c_nationkey)
    left join partsupp
          right join nation
            inner join lineitem
              inner join lineitem
              on (lineitem.l_quantity < lineitem.l_quantity)
            on (lineitem.l_shipmode > lineitem.l_shipinstruct)
          on (lineitem.l_suppkey >= lineitem.l_partkey)
        inner join partsupp
          left join part
            right join supplier
            on (supplier.s_name <= part.p_container)
          on (supplier.s_phone >= supplier.s_name)
        on (lineitem.l_extendedprice <= partsupp.ps_supplycost)
      left join lineitem
      on (lineitem.l_partkey >= partsupp.ps_suppkey)
    on (partsupp.ps_availqty is NULL)
where part.p_name is NULL
limit 77;
select  
  part.p_size, 
  part.p_brand, 
  part.p_mfgr, 
  nation.n_comment, 
  max(
    cast(cast(null as float8) as float8)), 
  nation.n_regionkey
from 
  part
          right join part
          on (part.p_partkey = part.p_partkey )
        left join part
          inner join orders
            left join lineitem
            on (lineitem.l_receiptdate <= orders.o_orderdate)
          on (lineitem.l_returnflag > orders.o_orderpriority)
        on (part.p_retailprice < lineitem.l_tax)
      right join nation
      on (part.p_size = nation.n_nationkey )
    inner join nation
    on (nation.n_regionkey is NULL)
where lineitem.l_shipdate > lineitem.l_shipdate;
select  
  min(
    cast(cast(null as oid) as oid)), 
  orders.o_shippriority, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  orders.o_orderdate, 
  orders.o_custkey, 
  orders.o_clerk
from 
  region
    inner join orders
    on (orders.o_clerk >= orders.o_orderstatus)
where region.r_comment is not NULL;
select  
  region.r_regionkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment
from 
  partsupp
      right join partsupp
      on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
    right join region
    on (partsupp.ps_comment is NULL)
where region.r_regionkey > partsupp.ps_partkey
limit 96;
select  
  orders.o_totalprice, 
  supplier.s_address, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  supplier.s_acctbal
from 
  supplier
    inner join orders
    on (orders.o_orderkey is NULL)
where supplier.s_suppkey is not NULL
limit 123;
select  
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_regionkey < region.r_regionkey
limit 150;
select  
  min(
    cast(cast(null as inet) as inet))
from 
  partsupp
where partsupp.ps_partkey is NULL
limit 59;
select  
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_comment, 
  max(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  nation.n_regionkey, 
  max(
    cast(cast(null as inet) as inet)), 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_comment, 
  max(
    cast(cast(null as int2) as int2))
from 
  nation
where nation.n_name is not NULL
limit 123;
select  
  supplier.s_address, 
  region.r_name, 
  supplier.s_phone, 
  supplier.s_phone, 
  supplier.s_acctbal, 
  supplier.s_comment, 
  region.r_regionkey
from 
  supplier
    inner join region
    on (region.r_regionkey is NULL)
where supplier.s_name < region.r_name
limit 50;
select  
  max(
    cast(lineitem.l_partkey as int4)), 
  lineitem.l_returnflag, 
  lineitem.l_linestatus, 
  lineitem.l_linenumber
from 
  lineitem
    inner join lineitem
    on (lineitem.l_linestatus is NULL)
where lineitem.l_linenumber is NULL
limit 48;
select  
  nation.n_name, 
  lineitem.l_shipmode, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  region.r_regionkey, 
  region.r_name, 
  avg(
    cast(cast(null as float8) as float8)), 
  lineitem.l_quantity, 
  region.r_regionkey, 
  nation.n_comment
from 
  region
    inner join nation
      right join lineitem
      on (lineitem.l_tax >= lineitem.l_discount)
    on (region.r_regionkey is not NULL)
where nation.n_name is not NULL;
select  
  part.p_mfgr, 
  part.p_mfgr, 
  customer.c_phone, 
  part.p_mfgr, 
  min(
    cast(cast(null as float4) as float4)), 
  part.p_mfgr, 
  customer.c_comment, 
  part.p_retailprice, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  part.p_comment, 
  part.p_comment, 
  part.p_comment, 
  avg(
    cast(cast(null as int2) as int2)), 
  customer.c_phone, 
  min(
    cast(cast(null as int2) as int2)), 
  part.p_container, 
  part.p_mfgr, 
  part.p_size, 
  max(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as float4) as float4)), 
  part.p_retailprice, 
  part.p_container, 
  part.p_type, 
  part.p_name
from 
  part
    right join part
      inner join customer
      on (customer.c_custkey = customer.c_nationkey)
    on (part.p_mfgr is NULL)
where part.p_container < customer.c_mktsegment;
select  
  part.p_container, 
  partsupp.ps_suppkey, 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  partsupp.ps_comment
from 
  partsupp
      left join supplier
      on (supplier.s_phone < supplier.s_name)
    inner join part
    on (partsupp.ps_suppkey = part.p_partkey )
where supplier.s_acctbal is NULL;
select  
  orders.o_orderkey, 
  customer.c_custkey, 
  customer.c_mktsegment, 
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  customer
      right join customer
        right join region
        on (customer.c_nationkey = customer.c_custkey)
      on (customer.c_name = region.r_comment )
    right join orders
          left join orders
            inner join customer
            on (orders.o_orderdate > orders.o_orderdate)
          on (orders.o_orderdate > orders.o_orderdate)
        left join region
        on (orders.o_totalprice <= customer.c_acctbal)
      inner join customer
      on (orders.o_orderdate <= orders.o_orderdate)
    on (customer.c_custkey >= orders.o_custkey)
where customer.c_custkey is not NULL
limit 100;
select  
  lineitem.l_quantity, 
  customer.c_address, 
  lineitem.l_orderkey, 
  customer.c_comment, 
  customer.c_name, 
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_address, 
  part.p_partkey, 
  part.p_comment, 
  min(
    cast(cast(null as text) as text)), 
  customer.c_phone, 
  part.p_retailprice, 
  customer.c_comment, 
  lineitem.l_linenumber, 
  customer.c_acctbal, 
  count(
    cast(part.p_partkey as int4)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_commitdate, 
  min(
    cast(part.p_size as int4)), 
  part.p_name, 
  part.p_name, 
  sum(
    cast(cast(null as money) as money)), 
  customer.c_acctbal, 
  part.p_brand, 
  customer.c_phone, 
  customer.c_address, 
  part.p_retailprice, 
  part.p_brand, 
  lineitem.l_receiptdate, 
  part.p_size, 
  part.p_comment, 
  min(
    cast(cast(null as float4) as float4)), 
  customer.c_phone, 
  customer.c_acctbal
from 
  customer
      inner join part
      on (part.p_container >= part.p_container)
    left join lineitem
    on (customer.c_phone = lineitem.l_returnflag )
where customer.c_mktsegment is not NULL;
select  
  customer.c_custkey, 
  customer.c_phone, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  orders
          left join customer
            right join partsupp
            on (customer.c_mktsegment <= customer.c_mktsegment)
          on (orders.o_shippriority >= partsupp.ps_suppkey)
        right join part
        on (orders.o_shippriority < orders.o_orderkey)
      left join region
            left join nation
              inner join lineitem
              on (lineitem.l_returnflag > lineitem.l_linestatus)
            on (lineitem.l_linenumber = lineitem.l_linenumber)
          inner join supplier
            inner join customer
            on (supplier.s_phone > customer.c_phone)
          on (customer.c_phone <= supplier.s_name)
        inner join region
          inner join region
          on (region.r_comment = region.r_comment )
        on (region.r_name < lineitem.l_shipinstruct)
      on (customer.c_acctbal = lineitem.l_quantity )
    inner join partsupp
    on (partsupp.ps_availqty = partsupp.ps_partkey )
where customer.c_comment is not NULL
limit 77;
select  
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_mktsegment, 
  customer.c_comment, 
  customer.c_name, 
  customer.c_mktsegment, 
  customer.c_acctbal, 
  min(
    cast(cast(null as tid) as tid)), 
  customer.c_nationkey, 
  customer.c_phone
from 
  customer
where customer.c_custkey > customer.c_custkey
limit 150;
select  
  supplier.s_acctbal, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  supplier
where supplier.s_comment is not NULL;
select  
  lineitem.l_shipmode, 
  lineitem.l_linenumber, 
  min(
    cast(nation.n_name as bpchar)), 
  min(
    cast(cast(null as "time") as "time")), 
  supplier.s_acctbal, 
  lineitem.l_commitdate, 
  lineitem.l_suppkey, 
  max(
    cast(cast(null as tid) as tid)), 
  nation.n_name, 
  supplier.s_address, 
  supplier.s_suppkey, 
  lineitem.l_returnflag, 
  lineitem.l_partkey, 
  lineitem.l_suppkey, 
  supplier.s_suppkey, 
  lineitem.l_receiptdate, 
  region.r_regionkey, 
  region.r_regionkey
from 
  nation
      left join region
        left join lineitem
            inner join supplier
            on (supplier.s_acctbal >= lineitem.l_quantity)
          right join supplier
            inner join lineitem
            on (supplier.s_address = lineitem.l_comment )
          on (supplier.s_suppkey = lineitem.l_linenumber)
        on (lineitem.l_quantity < lineitem.l_quantity)
      on (lineitem.l_tax < supplier.s_acctbal)
    inner join lineitem
    on (lineitem.l_tax = lineitem.l_extendedprice)
where lineitem.l_extendedprice > supplier.s_acctbal
limit 177;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  supplier.s_nationkey
from 
  partsupp
            left join part
            on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
          inner join nation
          on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
        inner join region
        on (region.r_name <= part.p_brand)
      left join nation
          left join region
            inner join orders
            on (region.r_name = orders.o_orderstatus )
          on (orders.o_orderpriority = orders.o_orderstatus)
        inner join customer
            inner join partsupp
            on (partsupp.ps_partkey <= partsupp.ps_partkey)
          right join partsupp
              inner join supplier
                inner join customer
                on (customer.c_mktsegment <= customer.c_phone)
              on (supplier.s_phone > supplier.s_phone)
            right join part
            on (part.p_brand >= customer.c_phone)
          on (customer.c_comment = supplier.s_address )
        on (part.p_size < partsupp.ps_partkey)
      on (part.p_retailprice <= supplier.s_acctbal)
    left join region
          inner join customer
          on (customer.c_acctbal <= customer.c_acctbal)
        right join region
            inner join region
                inner join supplier
                on (supplier.s_phone = region.r_name)
              left join part
              on (supplier.s_comment = part.p_name )
            on (part.p_container > supplier.s_phone)
          inner join partsupp
          on (part.p_retailprice <= supplier.s_acctbal)
        on (partsupp.ps_suppkey < part.p_partkey)
      inner join partsupp
              left join region
              on (partsupp.ps_suppkey > region.r_regionkey)
            left join part
            on (partsupp.ps_supplycost = partsupp.ps_supplycost)
          inner join orders
          on (part.p_retailprice <= part.p_retailprice)
        left join customer
          left join nation
            right join nation
            on (nation.n_nationkey >= nation.n_nationkey)
          on (customer.c_phone <= nation.n_name)
        on (orders.o_orderdate < orders.o_orderdate)
      on (orders.o_totalprice > customer.c_acctbal)
    on (partsupp.ps_supplycost = orders.o_totalprice)
where orders.o_orderdate < orders.o_orderdate;
select  
  min(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_availqty, 
  lineitem.l_suppkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  region.r_regionkey, 
  lineitem.l_extendedprice
from 
  nation
        inner join partsupp
            inner join part
            on (part.p_container > part.p_brand)
          inner join partsupp
          on (part.p_retailprice <= part.p_retailprice)
        on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
      right join supplier
          inner join part
          on (part.p_retailprice >= supplier.s_acctbal)
        left join partsupp
        on (part.p_retailprice > part.p_retailprice)
      on (partsupp.ps_supplycost = part.p_retailprice)
    inner join orders
          inner join partsupp
          on (orders.o_orderdate >= orders.o_orderdate)
        inner join region
        on (orders.o_clerk = region.r_name )
      inner join lineitem
      on (orders.o_orderdate < orders.o_orderdate)
    on (supplier.s_name >= part.p_container)
where lineitem.l_extendedprice < supplier.s_acctbal
limit 94;
select  
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 163;
select  
  partsupp.ps_partkey, 
  max(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as float8) as float8)), 
  part.p_type, 
  supplier.s_address, 
  supplier.s_phone
from 
  part
      right join partsupp
          right join supplier
          on (partsupp.ps_suppkey = supplier.s_suppkey )
        inner join partsupp
        on (supplier.s_acctbal <= partsupp.ps_supplycost)
      on (partsupp.ps_supplycost = part.p_retailprice)
    right join part
    on (partsupp.ps_partkey = part.p_partkey )
where partsupp.ps_suppkey is not NULL
limit 70;
select  
  lineitem.l_partkey, 
  avg(
    cast(lineitem.l_quantity as "numeric")), 
  lineitem.l_linestatus
from 
  lineitem
where lineitem.l_commitdate is not NULL;
select  
  min(
    cast(cast(null as "time") as "time")), 
  partsupp.ps_supplycost
from 
  partsupp
    right join partsupp
    on (partsupp.ps_suppkey is NULL)
where partsupp.ps_comment is not NULL
limit 131;
select  
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
where nation.n_nationkey is NULL;
select  
  region.r_comment, 
  nation.n_name, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  nation
    right join orders
      inner join orders
          inner join region
            inner join customer
            on (region.r_comment = customer.c_name )
          on (customer.c_acctbal = customer.c_acctbal)
        right join orders
        on (orders.o_orderkey >= orders.o_shippriority)
      on (customer.c_mktsegment >= orders.o_orderstatus)
    on (orders.o_orderkey is not NULL)
where nation.n_name > orders.o_orderpriority
limit 82;
select  
  lineitem.l_linenumber, 
  region.r_regionkey, 
  max(
    cast(cast(null as int2) as int2)), 
  nation.n_regionkey, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_regionkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  customer.c_nationkey
from 
  supplier
      inner join nation
      on (supplier.s_phone <= nation.n_name)
    right join orders
        inner join customer
          inner join lineitem
              left join partsupp
              on (lineitem.l_linenumber <= partsupp.ps_partkey)
            inner join supplier
              inner join nation
              on (supplier.s_acctbal < supplier.s_acctbal)
            on (lineitem.l_commitdate <= lineitem.l_shipdate)
          on (lineitem.l_returnflag <= supplier.s_phone)
        on (orders.o_orderkey > orders.o_custkey)
      inner join region
            left join customer
            on (customer.c_phone >= customer.c_mktsegment)
          inner join nation
          on (customer.c_phone > nation.n_name)
        inner join nation
        on (customer.c_acctbal > customer.c_acctbal)
      on (orders.o_totalprice = customer.c_acctbal)
    on (supplier.s_address = partsupp.ps_comment )
where nation.n_nationkey >= nation.n_nationkey
limit 32;
select  
  region.r_regionkey, 
  orders.o_orderdate, 
  orders.o_orderstatus, 
  sum(
    cast(cast(null as float4) as float4)), 
  nation.n_regionkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  partsupp.ps_availqty, 
  supplier.s_comment
from 
  customer
      right join orders
            right join supplier
              left join orders
              on (supplier.s_name >= supplier.s_phone)
            on (orders.o_orderpriority > orders.o_orderpriority)
          inner join lineitem
            inner join partsupp
              left join orders
              on (orders.o_orderpriority < orders.o_orderstatus)
            on (partsupp.ps_partkey < orders.o_orderkey)
          on (orders.o_shippriority <= orders.o_orderkey)
        inner join nation
        on (supplier.s_address = nation.n_comment )
      on (orders.o_orderdate > orders.o_orderdate)
    left join nation
          left join region
          on (nation.n_comment = region.r_comment )
        inner join orders
          left join nation
          on (orders.o_orderstatus < orders.o_orderstatus)
        on (nation.n_name < region.r_name)
      right join partsupp
      on (nation.n_regionkey = partsupp.ps_partkey )
    on (partsupp.ps_availqty = partsupp.ps_partkey )
where orders.o_orderpriority <= lineitem.l_shipmode;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  part.p_comment, 
  sum(
    cast(cast(null as int8) as int8)), 
  part.p_container, 
  part.p_comment, 
  part.p_mfgr
from 
  part
where part.p_type is NULL
limit 103;
select  
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_comment, 
  partsupp.ps_availqty, 
  supplier.s_name
from 
  partsupp
    inner join supplier
    on (supplier.s_address is NULL)
where supplier.s_acctbal is not NULL;
select  
  partsupp.ps_partkey, 
  min(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as oid) as oid))
from 
  partsupp
    inner join partsupp
    on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
where partsupp.ps_availqty is NULL;
select  
  part.p_size
from 
  region
      inner join customer
        right join region
        on (customer.c_acctbal >= customer.c_acctbal)
      on (customer.c_phone >= region.r_name)
    right join part
    on (region.r_comment is not NULL)
where region.r_regionkey < part.p_size
limit 160;
select  
  region.r_name, 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_comment, 
  supplier.s_comment, 
  min(
    cast(cast(null as oid) as oid)), 
  supplier.s_acctbal, 
  part.p_size, 
  partsupp.ps_comment
from 
  partsupp
      inner join part
        left join region
        on (part.p_size < region.r_regionkey)
      on (part.p_size > partsupp.ps_suppkey)
    inner join supplier
    on (partsupp.ps_supplycost <= supplier.s_acctbal)
where supplier.s_suppkey is not NULL
limit 143;
select  
  supplier.s_address, 
  nation.n_regionkey
from 
  supplier
    inner join nation
    on (supplier.s_name is NULL)
where nation.n_comment is NULL;
select  
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  region.r_comment, 
  region.r_regionkey, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL;
select  
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_name, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  nation
where nation.n_name = nation.n_name;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  customer.c_phone, 
  min(
    cast(customer.c_custkey as int4)), 
  min(
    cast(cast(null as inet) as inet)), 
  customer.c_name
from 
  customer
      inner join customer
      on (customer.c_custkey < customer.c_custkey)
    inner join customer
    on (customer.c_mktsegment is NULL)
where customer.c_acctbal > customer.c_acctbal
limit 127;
select  
  part.p_container, 
  part.p_size, 
  avg(
    cast(cast(null as int2) as int2)), 
  part.p_type
from 
  supplier
    inner join part
    on (supplier.s_nationkey is NULL)
where part.p_name is not NULL
limit 142;
select  
  customer.c_address, 
  customer.c_acctbal
from 
  customer
where customer.c_custkey is not NULL
limit 79;
select  
  orders.o_orderdate, 
  min(
    cast(cast(null as float8) as float8))
from 
  orders
where orders.o_orderpriority is not NULL
limit 131;
select  
  customer.c_name, 
  max(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as float8) as float8)), 
  customer.c_acctbal, 
  customer.c_acctbal, 
  customer.c_phone
from 
  customer
where customer.c_custkey <= customer.c_custkey;
select  
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 113;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  part.p_brand, 
  supplier.s_nationkey, 
  part.p_type, 
  sum(
    cast(supplier.s_suppkey as int4)), 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  part.p_type, 
  min(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_suppkey, 
  part.p_container
from 
  region
      inner join part
      on (part.p_container <= region.r_name)
    left join supplier
    on (region.r_comment is not NULL)
where supplier.s_phone is not NULL
limit 195;
select  
  lineitem.l_suppkey, 
  lineitem.l_linestatus, 
  min(
    cast(cast(null as int8) as int8))
from 
  lineitem
where lineitem.l_returnflag is not NULL;
select  
  orders.o_orderkey, 
  part.p_size, 
  orders.o_orderpriority, 
  partsupp.ps_suppkey, 
  orders.o_comment, 
  supplier.s_name, 
  partsupp.ps_partkey
from 
  partsupp
    left join supplier
          left join part
          on (part.p_retailprice < supplier.s_acctbal)
        inner join orders
        on (part.p_partkey = orders.o_orderkey )
      inner join orders
      on (orders.o_orderstatus < part.p_container)
    on (orders.o_orderpriority is NULL)
where supplier.s_acctbal < partsupp.ps_supplycost
limit 106;
select  
  supplier.s_phone, 
  supplier.s_acctbal
from 
  supplier
    inner join customer
    on (customer.c_phone is NULL)
where supplier.s_suppkey is not NULL
limit 47;
select  
  region.r_name, 
  lineitem.l_quantity
from 
  orders
    inner join nation
        right join region
        on (region.r_regionkey < region.r_regionkey)
      inner join lineitem
        left join region
            left join lineitem
            on (lineitem.l_linestatus = lineitem.l_returnflag)
          left join region
          on (lineitem.l_shipdate <= lineitem.l_commitdate)
        on (lineitem.l_discount >= lineitem.l_discount)
      on (lineitem.l_commitdate <= lineitem.l_shipdate)
    on (orders.o_orderstatus = region.r_name )
where nation.n_name >= orders.o_orderstatus
limit 62;
select distinct 
  nation.n_nationkey, 
  min(
    cast(cast(null as tid) as tid)), 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_regionkey, 
  avg(
    cast(nation.n_nationkey as int4)), 
  nation.n_comment, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey, 
  max(
    cast(cast(null as timetz) as timetz)), 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_name
from 
  nation
where nation.n_regionkey is not NULL
limit 181;
select  
  region.r_name, 
  region.r_regionkey, 
  orders.o_orderdate, 
  region.r_name, 
  orders.o_orderkey, 
  partsupp.ps_comment
from 
  orders
      inner join orders
        left join supplier
              right join supplier
              on (supplier.s_phone <= supplier.s_phone)
            right join region
            on (region.r_name < supplier.s_name)
          inner join region
          on (supplier.s_acctbal = supplier.s_acctbal)
        on (supplier.s_nationkey > supplier.s_suppkey)
      on (orders.o_orderstatus = region.r_name )
    left join partsupp
    on (orders.o_orderdate >= orders.o_orderdate)
where orders.o_custkey is NULL;
select  
  lineitem.l_extendedprice, 
  lineitem.l_comment, 
  lineitem.l_discount, 
  lineitem.l_partkey, 
  lineitem.l_orderkey, 
  lineitem.l_shipmode, 
  lineitem.l_commitdate, 
  lineitem.l_tax, 
  lineitem.l_linestatus, 
  lineitem.l_orderkey, 
  lineitem.l_shipdate, 
  lineitem.l_shipmode, 
  lineitem.l_returnflag, 
  lineitem.l_shipinstruct, 
  sum(
    cast(cast(null as float8) as float8)), 
  lineitem.l_returnflag
from 
  lineitem
where lineitem.l_partkey is not NULL;
select  
  part.p_size, 
  sum(
    cast(lineitem.l_tax as "numeric")), 
  region.r_name, 
  part.p_retailprice, 
  orders.o_totalprice, 
  region.r_name
from 
  part
    right join part
      right join orders
          left join lineitem
              right join region
              on (lineitem.l_tax = lineitem.l_discount)
            right join orders
            on (lineitem.l_shipdate <= lineitem.l_commitdate)
          on (lineitem.l_tax < orders.o_totalprice)
        left join lineitem
        on (lineitem.l_discount > lineitem.l_tax)
      on (orders.o_totalprice = lineitem.l_quantity)
    on (orders.o_totalprice is NULL)
where lineitem.l_quantity > orders.o_totalprice;
select  
  partsupp.ps_partkey, 
  part.p_size, 
  partsupp.ps_suppkey, 
  max(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as int8) as int8)), 
  region.r_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty
from 
  region
        inner join part
          left join partsupp
          on (partsupp.ps_availqty <= partsupp.ps_suppkey)
        on (part.p_container = part.p_container)
      left join partsupp
      on (region.r_name >= part.p_container)
    inner join partsupp
    on (partsupp.ps_suppkey is NULL)
where region.r_regionkey is NULL
limit 190;
select  
  avg(
    cast(cast(null as int8) as int8))
from 
  nation
where nation.n_nationkey is NULL
limit 111;
select  
  partsupp.ps_suppkey
from 
  nation
      inner join partsupp
      on (nation.n_regionkey >= partsupp.ps_suppkey)
    left join lineitem
    on (lineitem.l_shipinstruct is not NULL)
where lineitem.l_linestatus is not NULL
limit 145;
select  
  supplier.s_suppkey, 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_nationkey, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_address
from 
  supplier
      left join supplier
      on (supplier.s_name = supplier.s_phone)
    right join supplier
    on (supplier.s_phone < supplier.s_phone)
where supplier.s_comment is not NULL
limit 81;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  part.p_brand, 
  customer.c_mktsegment, 
  sum(
    cast(cast(null as float8) as float8)), 
  region.r_name, 
  customer.c_address
from 
  customer
    inner join region
      inner join supplier
        left join part
            inner join region
            on (part.p_retailprice <= part.p_retailprice)
          inner join customer
            right join partsupp
            on (customer.c_custkey <= partsupp.ps_suppkey)
          on (part.p_brand = customer.c_phone )
        on (supplier.s_comment = region.r_comment )
      on (region.r_name > part.p_mfgr)
    on (region.r_regionkey is NULL)
where supplier.s_acctbal >= supplier.s_acctbal;
select  
  part.p_brand, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  part.p_retailprice, 
  part.p_size, 
  part.p_size
from 
  part
where part.p_comment is not NULL
limit 64;
select  
  lineitem.l_suppkey, 
  lineitem.l_comment, 
  lineitem.l_linenumber, 
  min(
    cast(lineitem.l_shipmode as bpchar))
from 
  lineitem
where lineitem.l_partkey is not NULL
limit 97;
select  
  nation.n_nationkey
from 
  nation
    left join orders
    on (nation.n_regionkey is not NULL)
where orders.o_clerk < orders.o_orderstatus;
select  
  lineitem.l_commitdate
from 
  lineitem
where lineitem.l_linenumber is not NULL
limit 29;
select  
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  count(*), 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_comment is not NULL
limit 128;
select  
  customer.c_mktsegment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  lineitem.l_discount
from 
  region
          left join partsupp
          on (region.r_name < region.r_name)
        inner join lineitem
        on (lineitem.l_orderkey <= partsupp.ps_suppkey)
      right join customer
      on (lineitem.l_receiptdate < lineitem.l_commitdate)
    right join partsupp
      right join partsupp
      on (partsupp.ps_partkey = partsupp.ps_availqty)
    on (partsupp.ps_partkey >= lineitem.l_linenumber)
where customer.c_phone > customer.c_mktsegment
limit 45;
select  
  orders.o_orderpriority, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_custkey, 
  orders.o_orderstatus, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  orders.o_totalprice, 
  orders.o_custkey, 
  orders.o_shippriority, 
  orders.o_clerk
from 
  orders
where orders.o_orderstatus is not NULL
limit 89;
select  
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_comment is not NULL
limit 118;
select  
  max(
    cast(cast(null as "interval") as "interval"))
from 
  part
    inner join region
      left join nation
      on (nation.n_nationkey = nation.n_regionkey)
    on (part.p_container = part.p_mfgr)
where part.p_retailprice is NULL
limit 27;
select  
  count(
    cast(lineitem.l_linenumber as int4)), 
  lineitem.l_linenumber, 
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_partkey is NULL
limit 176;
select  
  sum(
    cast(customer.c_acctbal as "numeric")), 
  min(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as timetz) as timetz)), 
  customer.c_acctbal
from 
  customer
where customer.c_acctbal < customer.c_acctbal
limit 168;
select  
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  max(
    cast(cast(null as int2) as int2))
from 
  region
where region.r_regionkey is not NULL
limit 57;
select  
  supplier.s_comment, 
  lineitem.l_linenumber, 
  customer.c_custkey, 
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as int8) as int8)), 
  lineitem.l_linenumber, 
  region.r_comment
from 
  partsupp
      right join lineitem
            left join region
            on (lineitem.l_suppkey = region.r_regionkey )
          left join customer
            right join nation
            on (customer.c_custkey = nation.n_nationkey )
          on (lineitem.l_commitdate >= lineitem.l_receiptdate)
        inner join part
        on (lineitem.l_linenumber > region.r_regionkey)
      on (lineitem.l_receiptdate <= lineitem.l_commitdate)
    inner join supplier
    on (customer.c_name is not NULL)
where lineitem.l_shipmode is NULL;
select  
  lineitem.l_receiptdate, 
  lineitem.l_discount, 
  lineitem.l_quantity, 
  sum(
    cast(cast(null as int2) as int2)), 
  lineitem.l_shipmode, 
  lineitem.l_shipinstruct
from 
  lineitem
where lineitem.l_tax = lineitem.l_tax
limit 58;
select  
  lineitem.l_suppkey, 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_commitdate = lineitem.l_commitdate
limit 38;
select  
  lineitem.l_orderkey, 
  lineitem.l_suppkey, 
  lineitem.l_shipdate, 
  lineitem.l_partkey, 
  count(*), 
  lineitem.l_orderkey, 
  lineitem.l_shipinstruct, 
  lineitem.l_receiptdate, 
  lineitem.l_receiptdate, 
  lineitem.l_comment, 
  lineitem.l_discount
from 
  lineitem
where lineitem.l_discount is not NULL;
select  
  customer.c_acctbal
from 
  customer
where customer.c_phone is NULL
limit 50;
select  
  min(
    cast(cast(null as text) as text)), 
  orders.o_orderpriority
from 
  orders
where orders.o_orderdate is NULL
limit 133;
select distinct 
  lineitem.l_shipdate
from 
  lineitem
where lineitem.l_returnflag = lineitem.l_shipinstruct
limit 126;
select  
  part.p_container, 
  part.p_retailprice, 
  min(
    cast(cast(null as inet) as inet)), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  part.p_brand
from 
  part
where part.p_brand is NULL;
select  
  lineitem.l_shipmode, 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_receiptdate is not NULL
limit 58;
select  
  nation.n_comment, 
  customer.c_acctbal, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  lineitem.l_linestatus, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  customer.c_mktsegment
from 
  customer
    inner join region
      left join lineitem
        right join nation
        on (lineitem.l_tax < lineitem.l_quantity)
      on (lineitem.l_suppkey < lineitem.l_partkey)
    on (customer.c_acctbal = lineitem.l_discount)
where customer.c_acctbal is NULL
limit 55;
select  
  max(
    cast(cast(null as inet) as inet)), 
  min(
    cast(orders.o_custkey as int4)), 
  max(
    cast(lineitem.l_suppkey as int4)), 
  region.r_comment, 
  orders.o_orderstatus, 
  lineitem.l_shipinstruct, 
  orders.o_orderdate, 
  region.r_name, 
  avg(
    cast(lineitem.l_discount as "numeric"))
from 
  lineitem
    inner join orders
      left join region
      on (orders.o_totalprice > orders.o_totalprice)
    on (lineitem.l_extendedprice = orders.o_totalprice )
where region.r_name is not NULL;
select  
  max(
    cast(cast(null as "time") as "time"))
from 
  customer
      inner join nation
        right join supplier
        on (supplier.s_phone <= supplier.s_name)
      on (customer.c_mktsegment > supplier.s_name)
    inner join region
    on (customer.c_name is not NULL)
where region.r_regionkey is NULL
limit 101;
select  
  min(
    cast(cast(null as inet) as inet))
from 
  nation
        inner join orders
          left join partsupp
              right join region
              on (partsupp.ps_availqty = region.r_regionkey )
            inner join part
            on (part.p_container = part.p_mfgr)
          on (orders.o_orderdate <= orders.o_orderdate)
        on (nation.n_name = part.p_mfgr )
      right join region
      on (orders.o_orderstatus <= orders.o_clerk)
    inner join nation
        inner join lineitem
          right join part
            inner join lineitem
            on (lineitem.l_commitdate = lineitem.l_shipdate)
          on (lineitem.l_partkey < lineitem.l_linenumber)
        on (part.p_retailprice >= lineitem.l_discount)
      inner join region
        left join orders
        on (orders.o_orderdate = orders.o_orderdate)
      on (lineitem.l_tax = lineitem.l_discount)
    on (region.r_regionkey is not NULL)
where region.r_name >= lineitem.l_shipinstruct
limit 66;
select  
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_supplycost is NULL;
select  
  customer.c_nationkey, 
  customer.c_phone, 
  max(
    cast(cast(null as "interval") as "interval")), 
  lineitem.l_returnflag, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  lineitem
    left join customer
    on (lineitem.l_receiptdate is NULL)
where lineitem.l_shipmode > lineitem.l_shipmode;
select  
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_regionkey > region.r_regionkey;
select  
  customer.c_name, 
  region.r_regionkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  part.p_mfgr, 
  part.p_name, 
  part.p_comment
from 
  part
    inner join part
        inner join region
            left join part
              right join customer
              on (part.p_retailprice < customer.c_acctbal)
            on (part.p_partkey = customer.c_nationkey)
          left join orders
          on (orders.o_orderdate >= orders.o_orderdate)
        on (part.p_retailprice <= orders.o_totalprice)
      left join region
      on (orders.o_custkey <= part.p_partkey)
    on (part.p_retailprice = part.p_retailprice)
where orders.o_orderdate <= orders.o_orderdate
limit 116;
select  
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey > nation.n_regionkey;
select  
  region.r_name, 
  region.r_name, 
  lineitem.l_commitdate
from 
  lineitem
    inner join region
      left join region
      on (region.r_name < region.r_name)
    on (region.r_regionkey is NULL)
where region.r_name is NULL;
select  
  nation.n_regionkey, 
  max(
    cast(cast(null as int2) as int2)), 
  nation.n_regionkey, 
  lineitem.l_shipdate, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_name, 
  part.p_brand, 
  avg(
    cast(lineitem.l_linenumber as int4)), 
  lineitem.l_orderkey, 
  part.p_size, 
  min(
    cast(cast(null as "interval") as "interval")), 
  part.p_type, 
  max(
    cast(cast(null as "time") as "time")), 
  lineitem.l_orderkey
from 
  lineitem
      right join part
      on (lineitem.l_discount >= part.p_retailprice)
    inner join nation
    on (lineitem.l_orderkey >= lineitem.l_partkey)
where nation.n_nationkey is not NULL
limit 124;
select  
  region.r_regionkey, 
  customer.c_comment, 
  min(
    cast(cast(null as oid) as oid)), 
  customer.c_phone, 
  region.r_name, 
  max(
    cast(cast(null as "time") as "time")), 
  nation.n_nationkey, 
  customer.c_name, 
  supplier.s_suppkey, 
  min(
    cast(cast(null as money) as money)), 
  nation.n_comment, 
  nation.n_name, 
  supplier.s_suppkey, 
  customer.c_phone, 
  min(
    cast(cast(null as date) as date)), 
  region.r_comment, 
  supplier.s_comment, 
  customer.c_phone, 
  customer.c_address, 
  supplier.s_address
from 
  nation
      inner join supplier
        inner join customer
        on (supplier.s_suppkey > customer.c_custkey)
      on (customer.c_mktsegment = supplier.s_phone)
    right join customer
        left join customer
        on (customer.c_acctbal <= customer.c_acctbal)
      inner join region
      on (customer.c_acctbal > customer.c_acctbal)
    on (supplier.s_suppkey is NULL)
where supplier.s_nationkey > supplier.s_nationkey
limit 96;
select  
  supplier.s_comment, 
  nation.n_comment, 
  nation.n_comment, 
  region.r_regionkey, 
  nation.n_nationkey, 
  nation.n_name, 
  lineitem.l_shipdate, 
  nation.n_comment, 
  partsupp.ps_comment, 
  min(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_suppkey, 
  orders.o_comment, 
  max(
    cast(cast(null as "interval") as "interval")), 
  orders.o_comment, 
  region.r_regionkey, 
  nation.n_name, 
  partsupp.ps_suppkey, 
  region.r_comment, 
  orders.o_comment, 
  supplier.s_acctbal, 
  partsupp.ps_suppkey, 
  nation.n_comment, 
  nation.n_regionkey, 
  supplier.s_address, 
  supplier.s_nationkey
from 
  orders
      left join supplier
      on (orders.o_orderdate > orders.o_orderdate)
    inner join supplier
      inner join nation
            inner join region
              inner join supplier
              on (supplier.s_acctbal <= supplier.s_acctbal)
            on (supplier.s_acctbal < supplier.s_acctbal)
          inner join orders
          on (orders.o_orderdate > orders.o_orderdate)
        right join nation
            inner join lineitem
                left join supplier
                on (lineitem.l_discount >= supplier.s_acctbal)
              left join partsupp
              on (supplier.s_acctbal > lineitem.l_extendedprice)
            on (lineitem.l_shipdate >= lineitem.l_receiptdate)
          left join nation
          on (lineitem.l_partkey <= nation.n_nationkey)
        on (lineitem.l_quantity = lineitem.l_quantity)
      on (lineitem.l_receiptdate = orders.o_orderdate)
    on (orders.o_totalprice <= supplier.s_acctbal)
where region.r_name is not NULL
limit 147;
select  
  partsupp.ps_comment, 
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(lineitem.l_shipdate as date)), 
  lineitem.l_orderkey, 
  max(
    cast(cast(null as float8) as float8)), 
  lineitem.l_orderkey, 
  lineitem.l_linenumber, 
  lineitem.l_returnflag, 
  lineitem.l_suppkey, 
  lineitem.l_suppkey, 
  max(
    cast(cast(null as xid8) as xid8)), 
  partsupp.ps_comment, 
  lineitem.l_discount, 
  partsupp.ps_suppkey, 
  lineitem.l_shipinstruct, 
  partsupp.ps_supplycost
from 
  partsupp
    inner join lineitem
    on (lineitem.l_commitdate <= lineitem.l_commitdate)
where lineitem.l_comment is NULL
limit 193;
select  
  customer.c_phone, 
  customer.c_comment, 
  sum(
    cast(customer.c_custkey as int4)), 
  customer.c_address, 
  customer.c_acctbal
from 
  customer
where customer.c_acctbal is NULL
limit 167;
select  
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  lineitem.l_shipdate, 
  orders.o_clerk, 
  lineitem.l_tax, 
  orders.o_totalprice
from 
  lineitem
      left join partsupp
      on (lineitem.l_returnflag > lineitem.l_returnflag)
    right join orders
      inner join lineitem
      on (lineitem.l_linestatus = lineitem.l_shipmode)
    on (partsupp.ps_partkey is not NULL)
where lineitem.l_suppkey is not NULL
limit 148;
select  
  customer.c_phone, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name
from 
  supplier
      right join partsupp
        inner join region
          right join region
          on (region.r_name = region.r_name )
        on (region.r_name = region.r_name)
      on (supplier.s_acctbal <= partsupp.ps_supplycost)
    inner join customer
    on (customer.c_acctbal is not NULL)
where region.r_comment is not NULL;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_comment is NULL;
select  
  orders.o_totalprice, 
  orders.o_orderpriority, 
  orders.o_totalprice, 
  orders.o_clerk
from 
  orders
where orders.o_orderdate is NULL
limit 122;
select  
  supplier.s_name, 
  supplier.s_phone, 
  customer.c_nationkey
from 
  supplier
        inner join region
        on (supplier.s_name = supplier.s_name)
      inner join lineitem
      on (supplier.s_name = lineitem.l_returnflag )
    right join customer
      inner join supplier
      on (customer.c_custkey > supplier.s_nationkey)
    on (supplier.s_acctbal is not NULL)
where supplier.s_name is NULL
limit 103;
select  
  customer.c_comment, 
  orders.o_shippriority, 
  min(
    cast(cast(null as float4) as float4)), 
  orders.o_orderkey
from 
  customer
    inner join partsupp
        left join customer
        on (customer.c_phone = customer.c_mktsegment)
      inner join orders
          left join partsupp
          on (orders.o_shippriority = partsupp.ps_partkey )
        right join partsupp
              inner join customer
              on (customer.c_phone >= customer.c_phone)
            inner join supplier
            on (customer.c_acctbal < supplier.s_acctbal)
          right join supplier
          on (supplier.s_suppkey = supplier.s_suppkey )
        on (supplier.s_acctbal <= partsupp.ps_supplycost)
      on (partsupp.ps_availqty = partsupp.ps_availqty)
    on (supplier.s_acctbal is NULL)
where partsupp.ps_partkey is not NULL
limit 157;
select  
  nation.n_name, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_nationkey, 
  avg(
    cast(cast(null as int2) as int2)), 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is not NULL
limit 141;
select  
  supplier.s_suppkey, 
  part.p_partkey, 
  region.r_name, 
  supplier.s_address, 
  supplier.s_comment, 
  supplier.s_phone, 
  part.p_container, 
  nation.n_name, 
  supplier.s_suppkey, 
  min(
    cast(supplier.s_nationkey as int4)), 
  supplier.s_comment, 
  supplier.s_nationkey, 
  nation.n_comment, 
  part.p_type, 
  nation.n_nationkey, 
  supplier.s_address, 
  part.p_comment, 
  supplier.s_nationkey, 
  min(
    cast(part.p_retailprice as "numeric")), 
  region.r_regionkey, 
  supplier.s_suppkey, 
  region.r_name, 
  supplier.s_address, 
  supplier.s_name, 
  nation.n_regionkey, 
  part.p_partkey, 
  region.r_name, 
  region.r_regionkey
from 
  region
    left join supplier
        inner join nation
          right join supplier
          on (supplier.s_acctbal > supplier.s_acctbal)
        on (supplier.s_nationkey > supplier.s_suppkey)
      right join part
      on (part.p_retailprice > supplier.s_acctbal)
    on (region.r_comment = supplier.s_address )
where supplier.s_acctbal > supplier.s_acctbal
limit 102;
select  
  orders.o_orderkey, 
  nation.n_name, 
  orders.o_orderdate, 
  orders.o_comment, 
  nation.n_nationkey, 
  orders.o_orderpriority
from 
  orders
    inner join nation
      inner join nation
          inner join customer
            inner join orders
            on (customer.c_nationkey > orders.o_orderkey)
          on (nation.n_regionkey <= orders.o_orderkey)
        inner join supplier
        on (supplier.s_acctbal < customer.c_acctbal)
      on (orders.o_custkey <= customer.c_custkey)
    on (nation.n_nationkey is NULL)
where supplier.s_comment is NULL
limit 59;
select  
  customer.c_mktsegment, 
  customer.c_phone, 
  customer.c_nationkey, 
  min(
    cast(cast(null as money) as money)), 
  customer.c_custkey, 
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_address, 
  customer.c_address, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  customer
where customer.c_acctbal < customer.c_acctbal
limit 115;
select  
  orders.o_orderpriority, 
  partsupp.ps_partkey, 
  orders.o_clerk, 
  orders.o_shippriority, 
  orders.o_orderpriority, 
  customer.c_address, 
  region.r_comment, 
  partsupp.ps_partkey
from 
  lineitem
    inner join customer
        left join lineitem
            inner join region
              right join nation
              on (nation.n_regionkey >= region.r_regionkey)
            on (lineitem.l_receiptdate < lineitem.l_commitdate)
          left join orders
          on (lineitem.l_discount = lineitem.l_extendedprice)
        on (lineitem.l_tax > lineitem.l_quantity)
      inner join partsupp
      on (customer.c_mktsegment > lineitem.l_returnflag)
    on (lineitem.l_tax > lineitem.l_extendedprice)
where orders.o_shippriority is NULL;
select  
  customer.c_nationkey, 
  customer.c_acctbal
from 
  customer
where customer.c_mktsegment = customer.c_mktsegment;
select  
  lineitem.l_quantity, 
  part.p_brand
from 
  part
    inner join lineitem
    on (lineitem.l_quantity is not NULL)
where lineitem.l_suppkey is NULL
limit 162;
select  
  region.r_name
from 
  region
where region.r_regionkey <= region.r_regionkey
limit 45;
select  
  part.p_comment, 
  part.p_container, 
  part.p_container
from 
  part
where part.p_brand is not NULL
limit 134;
select  
  part.p_size, 
  partsupp.ps_comment, 
  customer.c_address
from 
  region
      right join supplier
      on (supplier.s_nationkey > region.r_regionkey)
    inner join orders
              right join part
              on (part.p_retailprice = part.p_retailprice)
            right join partsupp
            on (orders.o_orderpriority < part.p_brand)
          inner join part
            inner join customer
            on (customer.c_phone >= part.p_brand)
          on (orders.o_orderdate < orders.o_orderdate)
        right join part
          right join orders
            inner join customer
            on (orders.o_orderdate <= orders.o_orderdate)
          on (part.p_type = customer.c_name )
        on (orders.o_orderdate <= orders.o_orderdate)
      left join partsupp
      on (customer.c_custkey = partsupp.ps_partkey )
    on (part.p_partkey > orders.o_shippriority)
where partsupp.ps_supplycost is not NULL;
select  
  part.p_container
from 
  part
where part.p_partkey is not NULL;
select  
  supplier.s_acctbal
from 
  supplier
where supplier.s_phone >= supplier.s_name
limit 136;
select  
  customer.c_nationkey
from 
  customer
where customer.c_name is NULL
limit 169;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  sum(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_suppkey is NULL;
select  
  part.p_partkey
from 
  nation
    right join part
        right join nation
          inner join orders
            left join lineitem
            on (lineitem.l_commitdate < lineitem.l_shipdate)
          on (orders.o_orderdate >= lineitem.l_receiptdate)
        on (part.p_container > nation.n_name)
      left join part
      on (orders.o_orderpriority > nation.n_name)
    on (part.p_container is not NULL)
where nation.n_nationkey is not NULL;
select  
  customer.c_acctbal
from 
  customer
where customer.c_custkey is not NULL
limit 84;
select  
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_partkey <= partsupp.ps_suppkey;
select  
  customer.c_phone, 
  customer.c_address, 
  customer.c_custkey, 
  customer.c_address, 
  customer.c_mktsegment, 
  customer.c_phone, 
  customer.c_phone
from 
  customer
where customer.c_mktsegment is NULL
limit 84;
select  
  lineitem.l_returnflag, 
  lineitem.l_returnflag
from 
  lineitem
    inner join region
    on (lineitem.l_orderkey <= lineitem.l_suppkey)
where lineitem.l_receiptdate = lineitem.l_commitdate
limit 73;
select  
  partsupp.ps_supplycost
from 
  partsupp
    right join nation
    on (nation.n_regionkey is not NULL)
where nation.n_name is not NULL;
select  
  supplier.s_phone, 
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_phone, 
  supplier.s_address
from 
  supplier
where supplier.s_suppkey is NULL;
select  
  partsupp.ps_availqty, 
  count(*), 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  max(
    cast(partsupp.ps_partkey as int4)), 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as inet) as inet))
from 
  partsupp
where partsupp.ps_suppkey < partsupp.ps_availqty
limit 133;
select  
  lineitem.l_commitdate, 
  lineitem.l_linenumber, 
  partsupp.ps_comment, 
  sum(
    cast(cast(null as float4) as float4))
from 
  partsupp
    inner join lineitem
    on (lineitem.l_linenumber is not NULL)
where lineitem.l_discount < lineitem.l_discount;
select  
  customer.c_comment
from 
  customer
where customer.c_acctbal > customer.c_acctbal
limit 88;
select  
  partsupp.ps_comment, 
  max(
    cast(lineitem.l_shipmode as bpchar)), 
  lineitem.l_partkey, 
  region.r_comment, 
  lineitem.l_partkey, 
  region.r_regionkey, 
  max(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_comment, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as float8) as float8)), 
  lineitem.l_linestatus, 
  customer.c_phone, 
  lineitem.l_comment, 
  customer.c_address, 
  partsupp.ps_comment, 
  supplier.s_acctbal, 
  lineitem.l_tax, 
  lineitem.l_linestatus, 
  customer.c_name
from 
  part
    left join supplier
        inner join nation
              right join partsupp
              on (partsupp.ps_partkey >= partsupp.ps_suppkey)
            inner join orders
            on (orders.o_totalprice < partsupp.ps_supplycost)
          right join partsupp
          on (orders.o_orderpriority >= orders.o_orderpriority)
        on (orders.o_orderdate > orders.o_orderdate)
      inner join nation
          inner join lineitem
            left join region
            on (lineitem.l_shipdate <= lineitem.l_commitdate)
          on (lineitem.l_receiptdate <= lineitem.l_shipdate)
        inner join customer
              inner join customer
                  inner join lineitem
                  on (customer.c_phone = lineitem.l_returnflag )
                inner join lineitem
                on (lineitem.l_shipinstruct >= lineitem.l_returnflag)
              on (customer.c_name = customer.c_name )
            left join region
              left join lineitem
              on (lineitem.l_suppkey < lineitem.l_linenumber)
            on (region.r_regionkey < lineitem.l_suppkey)
          inner join customer
          on (lineitem.l_shipmode <= lineitem.l_linestatus)
        on (lineitem.l_extendedprice <= customer.c_acctbal)
      on (lineitem.l_receiptdate = lineitem.l_commitdate)
    on (nation.n_comment is NULL)
where lineitem.l_suppkey <= orders.o_orderkey;
select  
  orders.o_orderpriority
from 
  orders
    left join nation
    on (orders.o_orderstatus is NULL)
where nation.n_regionkey is not NULL;
select  
  lineitem.l_quantity, 
  lineitem.l_extendedprice, 
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_linestatus > lineitem.l_shipmode
limit 99;
select  
  region.r_name, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_comment is NULL;
select  
  partsupp.ps_comment, 
  supplier.s_nationkey, 
  part.p_name, 
  part.p_partkey
from 
  partsupp
        inner join part
            inner join part
              right join supplier
              on (part.p_partkey > part.p_size)
            on (part.p_retailprice < part.p_retailprice)
          left join orders
            right join customer
            on (customer.c_phone >= customer.c_phone)
          on (part.p_retailprice <= part.p_retailprice)
        on (orders.o_totalprice = part.p_retailprice)
      inner join supplier
      on (orders.o_orderdate = orders.o_orderdate)
    inner join orders
    on (part.p_retailprice < part.p_retailprice)
where partsupp.ps_supplycost > customer.c_acctbal
limit 86;
select  
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_suppkey is NULL
limit 17;
select  
  partsupp.ps_comment, 
  part.p_size, 
  lineitem.l_shipdate
from 
  partsupp
            inner join orders
            on (orders.o_orderdate >= orders.o_orderdate)
          left join supplier
          on (orders.o_orderdate = orders.o_orderdate)
        inner join customer
          right join nation
              inner join lineitem
              on (lineitem.l_commitdate = lineitem.l_receiptdate)
            left join part
            on (nation.n_nationkey = part.p_partkey )
          on (customer.c_nationkey <= nation.n_nationkey)
        on (lineitem.l_extendedprice < customer.c_acctbal)
      inner join partsupp
      on (nation.n_regionkey <= customer.c_nationkey)
    inner join lineitem
    on (nation.n_regionkey is not NULL)
where lineitem.l_extendedprice > orders.o_totalprice
limit 110;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  supplier.s_suppkey, 
  supplier.s_name
from 
  supplier
where supplier.s_comment is not NULL
limit 186;
select  
  avg(
    cast(cast(null as int8) as int8)), 
  lineitem.l_comment, 
  lineitem.l_shipdate
from 
  lineitem
where lineitem.l_discount is not NULL
limit 79;
select  
  lineitem.l_shipinstruct, 
  min(
    cast(cast(null as money) as money)), 
  lineitem.l_extendedprice, 
  lineitem.l_shipmode, 
  lineitem.l_discount, 
  lineitem.l_quantity, 
  lineitem.l_comment
from 
  lineitem
where lineitem.l_tax is not NULL
limit 130;
select  
  customer.c_mktsegment, 
  customer.c_nationkey
from 
  customer
where customer.c_acctbal > customer.c_acctbal
limit 136;
select  
  max(
    cast(cast(null as "time") as "time")), 
  supplier.s_address, 
  lineitem.l_receiptdate, 
  partsupp.ps_suppkey, 
  orders.o_orderstatus, 
  supplier.s_address, 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as int8) as int8)), 
  customer.c_name, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_comment, 
  partsupp.ps_supplycost, 
  nation.n_regionkey, 
  lineitem.l_extendedprice, 
  lineitem.l_receiptdate, 
  partsupp.ps_availqty, 
  nation.n_nationkey
from 
  customer
          left join partsupp
            inner join lineitem
                inner join customer
                on (lineitem.l_linestatus = customer.c_phone )
              left join supplier
                inner join lineitem
                on (lineitem.l_commitdate = lineitem.l_shipdate)
              on (lineitem.l_discount <= lineitem.l_quantity)
            on (lineitem.l_receiptdate = lineitem.l_commitdate)
          on (customer.c_acctbal > lineitem.l_quantity)
        inner join partsupp
        on (customer.c_custkey < partsupp.ps_suppkey)
      inner join orders
      on (lineitem.l_extendedprice <= customer.c_acctbal)
    left join nation
    on (nation.n_regionkey is not NULL)
where orders.o_shippriority is NULL;
select  
  region.r_comment, 
  part.p_container, 
  part.p_retailprice, 
  max(
    cast(cast(null as float4) as float4))
from 
  region
          right join part
          on (part.p_retailprice > part.p_retailprice)
        inner join part
        on (part.p_retailprice <= part.p_retailprice)
      inner join region
      on (part.p_brand <= part.p_container)
    inner join part
    on (region.r_name is not NULL)
where region.r_regionkey is not NULL
limit 5;
select  
  nation.n_regionkey, 
  supplier.s_nationkey, 
  lineitem.l_discount, 
  min(
    cast(cast(null as "time") as "time"))
from 
  supplier
      left join region
        right join region
        on (region.r_name = region.r_name )
      on (region.r_regionkey < supplier.s_nationkey)
    inner join nation
      inner join lineitem
      on (lineitem.l_linestatus < nation.n_name)
    on (supplier.s_phone is NULL)
where supplier.s_address is NULL
limit 189;
select distinct 
  region.r_comment, 
  region.r_name, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  min(
    cast(cast(null as float8) as float8))
from 
  region
where region.r_name is NULL
limit 66;
select  
  nation.n_comment, 
  nation.n_comment, 
  supplier.s_suppkey, 
  customer.c_mktsegment, 
  customer.c_name, 
  region.r_regionkey, 
  customer.c_comment, 
  nation.n_name, 
  max(
    cast(cast(null as "time") as "time")), 
  supplier.s_acctbal
from 
  customer
      right join region
          right join supplier
          on (region.r_regionkey = supplier.s_suppkey )
        inner join nation
          inner join nation
          on (nation.n_nationkey = nation.n_nationkey )
        on (supplier.s_acctbal >= supplier.s_acctbal)
      on (region.r_name >= nation.n_name)
    inner join part
    on (nation.n_comment is NULL)
where customer.c_name is not NULL
limit 120;
select  
  customer.c_phone
from 
  lineitem
    inner join lineitem
            inner join customer
              left join orders
              on (customer.c_acctbal >= customer.c_acctbal)
            on (lineitem.l_shipinstruct = orders.o_orderpriority)
          inner join orders
          on (orders.o_orderstatus = customer.c_phone)
        left join partsupp
        on (lineitem.l_tax >= lineitem.l_discount)
      inner join customer
        inner join customer
        on (customer.c_mktsegment = customer.c_mktsegment)
      on (lineitem.l_returnflag = customer.c_phone )
    on (customer.c_custkey < partsupp.ps_partkey)
where customer.c_custkey is not NULL;
select  
  lineitem.l_quantity, 
  lineitem.l_orderkey, 
  count(*)
from 
  lineitem
where lineitem.l_receiptdate is NULL;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  nation
where nation.n_comment is not NULL
limit 107;
select  
  lineitem.l_linenumber, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  lineitem
where lineitem.l_quantity is NULL
limit 37;
select  
  lineitem.l_shipdate, 
  supplier.s_name, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  supplier
    inner join lineitem
    on (supplier.s_comment is not NULL)
where lineitem.l_commitdate <= lineitem.l_shipdate
limit 152;
select  
  lineitem.l_receiptdate
from 
  lineitem
    inner join lineitem
    on (lineitem.l_linenumber is not NULL)
where lineitem.l_linenumber = lineitem.l_partkey
limit 103;
select  
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_shipinstruct is NULL
limit 55;
select  
  nation.n_comment, 
  lineitem.l_orderkey, 
  customer.c_phone, 
  nation.n_name
from 
  nation
    right join customer
      inner join lineitem
      on (lineitem.l_tax < lineitem.l_discount)
    on (lineitem.l_comment is NULL)
where customer.c_comment is not NULL
limit 81;
select  
  lineitem.l_partkey, 
  part.p_brand, 
  lineitem.l_returnflag, 
  region.r_comment, 
  partsupp.ps_suppkey, 
  customer.c_mktsegment, 
  partsupp.ps_supplycost, 
  region.r_comment, 
  region.r_comment, 
  min(
    cast(lineitem.l_receiptdate as date)), 
  orders.o_orderkey
from 
  part
    inner join customer
        inner join supplier
              left join partsupp
              on (supplier.s_suppkey <= supplier.s_nationkey)
            right join customer
              right join lineitem
                inner join customer
                on (lineitem.l_linestatus > lineitem.l_linestatus)
              on (lineitem.l_linenumber <= customer.c_nationkey)
            on (customer.c_phone < lineitem.l_shipmode)
          inner join supplier
            inner join supplier
            on (supplier.s_nationkey <= supplier.s_suppkey)
          on (lineitem.l_returnflag < customer.c_phone)
        on (customer.c_acctbal >= lineitem.l_tax)
      right join region
          inner join lineitem
            inner join lineitem
              inner join orders
                right join orders
                on (orders.o_orderkey >= orders.o_custkey)
              on (lineitem.l_tax = lineitem.l_discount)
            on (orders.o_custkey <= lineitem.l_orderkey)
          on (region.r_comment = lineitem.l_comment )
        inner join supplier
        on (lineitem.l_discount >= lineitem.l_tax)
      on (supplier.s_name = supplier.s_name )
    on (lineitem.l_suppkey is NULL)
where lineitem.l_orderkey = lineitem.l_linenumber;
select  
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_nationkey, 
  customer.c_address, 
  sum(
    cast(cast(null as money) as money)), 
  customer.c_address, 
  max(
    cast(cast(null as money) as money)), 
  customer.c_mktsegment
from 
  customer
where customer.c_name is not NULL
limit 178;
select  
  region.r_regionkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_regionkey <= region.r_regionkey
limit 137;
select  
  orders.o_orderkey, 
  orders.o_clerk, 
  part.p_mfgr, 
  part.p_brand, 
  orders.o_clerk
from 
  part
    right join orders
      inner join orders
            right join part
            on (part.p_partkey = part.p_size)
          left join lineitem
          on (part.p_container > orders.o_clerk)
        inner join part
        on (lineitem.l_orderkey = part.p_partkey)
      on (part.p_partkey < orders.o_shippriority)
    on (part.p_container is NULL)
where lineitem.l_shipinstruct is NULL;
select  
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_regionkey <= region.r_regionkey;
select  
  lineitem.l_commitdate, 
  max(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as int8) as int8))
from 
  lineitem
where lineitem.l_linestatus = lineitem.l_linestatus
limit 120;
select  
  customer.c_mktsegment, 
  region.r_comment, 
  customer.c_acctbal, 
  supplier.s_name, 
  part.p_partkey, 
  count(
    cast(lineitem.l_commitdate as date))
from 
  region
            inner join part
            on (part.p_retailprice <= part.p_retailprice)
          left join supplier
            right join customer
            on (supplier.s_suppkey = supplier.s_suppkey)
          on (part.p_retailprice = part.p_retailprice)
        left join lineitem
        on (supplier.s_suppkey = supplier.s_nationkey)
      left join part
      on (lineitem.l_orderkey = customer.c_nationkey)
    right join region
    on (part.p_size is not NULL)
where part.p_mfgr is NULL;
select  
  lineitem.l_discount, 
  lineitem.l_returnflag
from 
  lineitem
where lineitem.l_quantity is not NULL
limit 152;
select  
  avg(
    cast(orders.o_totalprice as "numeric")), 
  orders.o_orderdate, 
  max(
    cast(cast(null as inet) as inet)), 
  orders.o_orderdate, 
  orders.o_totalprice, 
  sum(
    cast(cast(null as float4) as float4))
from 
  orders
where orders.o_orderdate >= orders.o_orderdate
limit 162;
select  
  part.p_retailprice, 
  partsupp.ps_comment, 
  min(
    cast(nation.n_nationkey as int4)), 
  partsupp.ps_availqty, 
  max(
    cast(cast(null as text) as text)), 
  nation.n_name, 
  partsupp.ps_comment, 
  part.p_brand, 
  min(
    cast(nation.n_regionkey as int4)), 
  max(
    cast(cast(null as inet) as inet)), 
  sum(
    cast(cast(null as float8) as float8)), 
  part.p_partkey
from 
  nation
      inner join partsupp
      on (nation.n_name < nation.n_name)
    inner join part
        right join lineitem
        on (lineitem.l_commitdate < lineitem.l_commitdate)
      inner join part
      on (lineitem.l_receiptdate < lineitem.l_shipdate)
    on (part.p_retailprice is NULL)
where lineitem.l_linestatus is NULL
limit 141;
select  
  part.p_brand, 
  part.p_partkey, 
  part.p_name, 
  part.p_partkey, 
  part.p_type
from 
  part
where part.p_mfgr is NULL
limit 96;
select  
  customer.c_name, 
  customer.c_mktsegment, 
  customer.c_acctbal, 
  min(
    cast(cast(null as oid) as oid)), 
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_address, 
  customer.c_address, 
  customer.c_custkey, 
  customer.c_name, 
  min(
    cast(cast(null as inet) as inet)), 
  customer.c_mktsegment, 
  customer.c_custkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  customer.c_custkey, 
  customer.c_nationkey, 
  customer.c_name, 
  avg(
    cast(customer.c_acctbal as "numeric"))
from 
  customer
where customer.c_acctbal = customer.c_acctbal
limit 156;
select  
  nation.n_regionkey, 
  customer.c_custkey, 
  orders.o_totalprice, 
  customer.c_custkey, 
  customer.c_nationkey, 
  orders.o_comment, 
  partsupp.ps_suppkey
from 
  orders
      inner join partsupp
      on (orders.o_totalprice = orders.o_totalprice)
    left join customer
      right join nation
      on (customer.c_custkey = customer.c_custkey)
    on (customer.c_mktsegment is NULL)
where partsupp.ps_suppkey is not NULL;
select distinct 
  region.r_name, 
  region.r_name
from 
  region
where region.r_comment is not NULL;
select  
  sum(
    cast(lineitem.l_quantity as "numeric")), 
  lineitem.l_tax, 
  part.p_comment
from 
  part
    inner join lineitem
    on (lineitem.l_linenumber >= part.p_partkey)
where lineitem.l_partkey > part.p_partkey;
select  
  part.p_container, 
  supplier.s_address, 
  customer.c_mktsegment, 
  customer.c_address, 
  part.p_container, 
  supplier.s_address, 
  min(
    cast(cast(null as text) as text)), 
  part.p_comment, 
  customer.c_comment
from 
  part
    inner join customer
            left join supplier
            on (customer.c_nationkey = customer.c_nationkey)
          inner join lineitem
              inner join nation
              on (lineitem.l_comment = nation.n_comment )
            left join lineitem
            on (nation.n_comment = lineitem.l_comment )
          on (lineitem.l_receiptdate >= lineitem.l_shipdate)
        inner join part
        on (part.p_size = nation.n_nationkey)
      inner join nation
      on (customer.c_nationkey = nation.n_nationkey )
    on (customer.c_phone is NULL)
where supplier.s_acctbal is not NULL;
select  
  nation.n_nationkey, 
  partsupp.ps_availqty, 
  region.r_name, 
  partsupp.ps_suppkey, 
  customer.c_address
from 
  nation
            inner join lineitem
            on (lineitem.l_shipdate <= lineitem.l_receiptdate)
          inner join orders
          on (orders.o_orderdate > lineitem.l_commitdate)
        right join supplier
          inner join nation
          on (nation.n_regionkey > supplier.s_nationkey)
        on (nation.n_name < lineitem.l_shipinstruct)
      inner join partsupp
        inner join region
          right join lineitem
          on (lineitem.l_linestatus >= lineitem.l_shipmode)
        on (lineitem.l_receiptdate = lineitem.l_commitdate)
      on (orders.o_orderdate >= lineitem.l_receiptdate)
    right join customer
        inner join partsupp
          inner join nation
            left join part
            on (part.p_brand > nation.n_name)
          on (partsupp.ps_availqty = nation.n_regionkey)
        on (part.p_retailprice > partsupp.ps_supplycost)
      left join partsupp
      on (partsupp.ps_availqty < customer.c_custkey)
    on (partsupp.ps_partkey is not NULL)
where lineitem.l_shipmode is not NULL;
select  
  min(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(part.p_size as int4)), 
  supplier.s_phone, 
  part.p_container, 
  partsupp.ps_partkey, 
  nation.n_comment, 
  nation.n_name, 
  max(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_partkey
from 
  part
            left join supplier
            on (supplier.s_suppkey <= part.p_size)
          left join customer
            inner join partsupp
              inner join region
                left join part
                on (region.r_regionkey >= part.p_partkey)
              on (partsupp.ps_supplycost = part.p_retailprice)
            on (partsupp.ps_partkey > part.p_partkey)
          on (part.p_name = region.r_comment )
        right join partsupp
              inner join region
              on (region.r_name <= region.r_name)
            right join nation
            on (region.r_name > region.r_name)
          left join customer
          on (partsupp.ps_partkey > partsupp.ps_suppkey)
        on (region.r_regionkey = partsupp.ps_partkey )
      left join partsupp
      on (partsupp.ps_partkey <= supplier.s_suppkey)
    left join supplier
          inner join supplier
          on (supplier.s_nationkey = supplier.s_suppkey)
        inner join customer
        on (customer.c_phone >= supplier.s_phone)
      inner join supplier
            inner join nation
            on (nation.n_name <= nation.n_name)
          inner join partsupp
          on (supplier.s_name >= supplier.s_name)
        left join supplier
        on (supplier.s_phone < supplier.s_phone)
      on (nation.n_regionkey >= supplier.s_suppkey)
    on (region.r_comment = nation.n_comment )
where nation.n_nationkey is not NULL
limit 103;
select  
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_regionkey
from 
  nation
where nation.n_name is NULL
limit 160;
select  
  region.r_comment, 
  nation.n_name, 
  nation.n_comment, 
  max(
    cast(cast(null as int8) as int8)), 
  orders.o_orderpriority, 
  customer.c_address, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_regionkey, 
  nation.n_name, 
  nation.n_comment, 
  min(
    cast(cast(null as oid) as oid)), 
  nation.n_nationkey, 
  sum(
    cast(orders.o_orderkey as int4)), 
  max(
    cast(cast(null as "time") as "time")), 
  orders.o_orderdate
from 
  orders
        inner join nation
        on (orders.o_shippriority <= orders.o_orderkey)
      left join region
        left join customer
        on (region.r_name = customer.c_mktsegment)
      on (customer.c_custkey = nation.n_regionkey)
    right join region
    on (region.r_comment is NULL)
where orders.o_custkey is NULL
limit 49;
select  
  part.p_type, 
  part.p_type, 
  part.p_partkey, 
  part.p_partkey, 
  part.p_size, 
  part.p_retailprice, 
  part.p_partkey, 
  part.p_retailprice
from 
  part
where part.p_container is NULL
limit 65;
select  
  supplier.s_phone, 
  count(
    cast(lineitem.l_comment as "varchar")), 
  region.r_comment, 
  supplier.s_acctbal, 
  lineitem.l_shipdate, 
  region.r_regionkey, 
  supplier.s_address, 
  partsupp.ps_availqty, 
  region.r_regionkey, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  supplier
        inner join part
        on (part.p_partkey <= part.p_size)
      inner join partsupp
      on (supplier.s_nationkey = partsupp.ps_partkey )
    left join region
      right join lineitem
      on (region.r_regionkey = lineitem.l_orderkey )
    on (supplier.s_address = lineitem.l_comment )
where supplier.s_acctbal is not NULL
limit 94;
select  
  lineitem.l_orderkey, 
  nation.n_name, 
  lineitem.l_suppkey
from 
  part
      left join part
      on (part.p_name = part.p_name )
    left join nation
          right join lineitem
          on (lineitem.l_orderkey <= nation.n_regionkey)
        inner join nation
            right join region
            on (nation.n_nationkey >= region.r_regionkey)
          right join partsupp
            inner join nation
            on (nation.n_nationkey > partsupp.ps_partkey)
          on (region.r_name = nation.n_name )
        on (lineitem.l_extendedprice < lineitem.l_quantity)
      inner join orders
      on (partsupp.ps_supplycost >= orders.o_totalprice)
    on (part.p_container = nation.n_name )
where lineitem.l_quantity is NULL
limit 44;
select  
  sum(
    cast(cast(null as money) as money)), 
  customer.c_custkey, 
  customer.c_custkey, 
  customer.c_custkey
from 
  customer
where customer.c_comment is NULL;
select  
  region.r_name, 
  orders.o_custkey
from 
  supplier
      inner join supplier
          left join orders
            right join lineitem
              inner join partsupp
              on (lineitem.l_tax = partsupp.ps_supplycost )
            on (lineitem.l_receiptdate >= lineitem.l_receiptdate)
          on (partsupp.ps_availqty > supplier.s_nationkey)
        left join supplier
          left join orders
          on (orders.o_shippriority < supplier.s_suppkey)
        on (lineitem.l_shipdate = orders.o_orderdate)
      on (supplier.s_acctbal = supplier.s_acctbal )
    inner join supplier
            inner join customer
            on (supplier.s_suppkey = supplier.s_nationkey)
          left join lineitem
          on (customer.c_nationkey = lineitem.l_orderkey )
        inner join partsupp
            inner join region
              inner join lineitem
              on (lineitem.l_quantity = lineitem.l_extendedprice)
            on (lineitem.l_shipdate < lineitem.l_commitdate)
          right join lineitem
          on (lineitem.l_orderkey < lineitem.l_orderkey)
        on (lineitem.l_orderkey > partsupp.ps_partkey)
      inner join supplier
      on (lineitem.l_shipinstruct >= region.r_name)
    on (supplier.s_suppkey is NULL)
where lineitem.l_shipinstruct < supplier.s_phone
limit 91;
select  
  supplier.s_suppkey, 
  lineitem.l_quantity, 
  lineitem.l_linestatus, 
  lineitem.l_shipdate, 
  customer.c_nationkey
from 
  nation
    left join customer
            inner join customer
              left join lineitem
                inner join partsupp
                on (partsupp.ps_suppkey < lineitem.l_orderkey)
              on (lineitem.l_shipdate < lineitem.l_shipdate)
            on (partsupp.ps_partkey >= customer.c_custkey)
          inner join customer
          on (lineitem.l_discount = partsupp.ps_supplycost)
        left join partsupp
          left join orders
          on (orders.o_orderstatus < orders.o_orderstatus)
        on (orders.o_orderstatus = lineitem.l_linestatus)
      right join supplier
          inner join lineitem
                inner join customer
                on (lineitem.l_discount <= lineitem.l_quantity)
              inner join orders
              on (lineitem.l_quantity = lineitem.l_tax)
            right join nation
            on (lineitem.l_commitdate >= lineitem.l_shipdate)
          on (orders.o_orderstatus <= customer.c_mktsegment)
        inner join lineitem
        on (lineitem.l_shipdate < lineitem.l_commitdate)
      on (lineitem.l_returnflag = lineitem.l_shipmode)
    on (customer.c_acctbal is NULL)
where lineitem.l_shipdate < lineitem.l_commitdate
limit 111;
select  
  nation.n_nationkey
from 
  nation
where nation.n_name is not NULL
limit 97;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  sum(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey
from 
  partsupp
where partsupp.ps_availqty > partsupp.ps_suppkey;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  sum(
    cast(partsupp.ps_availqty as int4)), 
  count(*), 
  partsupp.ps_availqty, 
  min(
    cast(cast(null as date) as date)), 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_suppkey < partsupp.ps_suppkey
limit 100;
select  
  lineitem.l_returnflag, 
  lineitem.l_commitdate, 
  lineitem.l_shipdate, 
  lineitem.l_linenumber, 
  lineitem.l_partkey, 
  lineitem.l_extendedprice, 
  lineitem.l_returnflag, 
  lineitem.l_partkey, 
  lineitem.l_receiptdate
from 
  lineitem
where lineitem.l_shipdate = lineitem.l_receiptdate
limit 22;
select  
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  nation
where nation.n_name is NULL
limit 60;
select  
  part.p_partkey, 
  lineitem.l_shipdate, 
  part.p_partkey, 
  part.p_comment, 
  customer.c_mktsegment, 
  lineitem.l_shipinstruct
from 
  nation
          inner join lineitem
          on (lineitem.l_shipdate >= lineitem.l_commitdate)
        right join lineitem
          left join part
          on (lineitem.l_extendedprice = lineitem.l_extendedprice)
        on (lineitem.l_tax = part.p_retailprice )
      inner join orders
        inner join part
          left join customer
          on (part.p_retailprice = customer.c_acctbal )
        on (customer.c_phone = orders.o_orderpriority)
      on (nation.n_name = customer.c_mktsegment)
    inner join part
      right join supplier
      on (supplier.s_acctbal < supplier.s_acctbal)
    on (lineitem.l_shipdate < lineitem.l_commitdate)
where supplier.s_address is not NULL
limit 162;
select  
  part.p_brand, 
  part.p_container, 
  part.p_retailprice, 
  max(
    cast(cast(null as oid) as oid))
from 
  part
where part.p_type is not NULL
limit 135;
select  
  region.r_comment, 
  customer.c_acctbal, 
  orders.o_orderdate, 
  nation.n_comment, 
  orders.o_orderstatus, 
  customer.c_nationkey, 
  nation.n_comment, 
  region.r_comment, 
  region.r_name, 
  orders.o_orderstatus, 
  supplier.s_name, 
  nation.n_regionkey, 
  nation.n_name
from 
  region
    right join orders
      inner join customer
          right join supplier
          on (customer.c_mktsegment = supplier.s_name )
        inner join nation
        on (supplier.s_acctbal < supplier.s_acctbal)
      on (orders.o_totalprice = supplier.s_acctbal)
    on (nation.n_name is not NULL)
where orders.o_comment is not NULL
limit 100;
select  
  nation.n_nationkey
from 
  supplier
    right join supplier
      left join part
            inner join part
            on (part.p_container >= part.p_container)
          left join customer
          on (part.p_retailprice = part.p_retailprice)
        inner join nation
        on (part.p_name = nation.n_comment )
      on (supplier.s_phone < part.p_mfgr)
    on (customer.c_acctbal > supplier.s_acctbal)
where part.p_retailprice <= supplier.s_acctbal
limit 187;
select  
  nation.n_regionkey
from 
  supplier
    right join nation
      inner join region
      on (nation.n_name = nation.n_name)
    on (nation.n_name is NULL)
where region.r_regionkey is NULL;
select  
  customer.c_address, 
  customer.c_nationkey
from 
  part
          left join nation
          on (part.p_mfgr <= part.p_brand)
        inner join customer
        on (part.p_partkey >= part.p_size)
      left join supplier
      on (nation.n_nationkey < nation.n_nationkey)
    left join partsupp
    on (partsupp.ps_comment is NULL)
where nation.n_regionkey is NULL;
select  
  customer.c_name, 
  max(
    cast(cast(null as text) as text)), 
  customer.c_name, 
  customer.c_address, 
  customer.c_address, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_name, 
  customer.c_name, 
  customer.c_custkey, 
  customer.c_mktsegment, 
  sum(
    cast(cast(null as money) as money)), 
  customer.c_nationkey, 
  customer.c_address
from 
  customer
where customer.c_acctbal is NULL
limit 174;
select  
  region.r_comment
from 
  region
where region.r_name is NULL
limit 132;
select  
  part.p_retailprice
from 
  part
where part.p_brand is not NULL;
select  
  orders.o_orderdate, 
  orders.o_clerk, 
  orders.o_shippriority, 
  orders.o_orderpriority, 
  orders.o_orderstatus, 
  orders.o_custkey, 
  orders.o_clerk, 
  orders.o_custkey, 
  orders.o_orderstatus, 
  orders.o_orderdate, 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  orders.o_custkey, 
  max(
    cast(cast(null as text) as text)), 
  orders.o_totalprice, 
  min(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  orders
where orders.o_custkey = orders.o_shippriority;
select  
  sum(
    cast(cast(null as float8) as float8))
from 
  lineitem
where lineitem.l_orderkey <= lineitem.l_suppkey
limit 116;
select  
  region.r_regionkey
from 
  supplier
      inner join part
          left join region
          on (part.p_name = region.r_comment )
        inner join region
        on (part.p_retailprice = part.p_retailprice)
      on (part.p_retailprice <= supplier.s_acctbal)
    inner join orders
            inner join region
                left join customer
                on (region.r_name = customer.c_phone )
              right join nation
              on (customer.c_custkey <= region.r_regionkey)
            on (orders.o_custkey <= nation.n_regionkey)
          right join orders
          on (nation.n_regionkey = orders.o_orderkey )
        inner join nation
        on (orders.o_totalprice <= orders.o_totalprice)
      right join part
      on (orders.o_orderdate = orders.o_orderdate)
    on (part.p_retailprice is not NULL)
where orders.o_clerk is not NULL;
select  
  nation.n_name, 
  nation.n_nationkey, 
  supplier.s_nationkey, 
  nation.n_nationkey, 
  supplier.s_name, 
  nation.n_name
from 
  supplier
      right join nation
      on (supplier.s_name <= nation.n_name)
    right join customer
    on (customer.c_nationkey is NULL)
where supplier.s_acctbal is not NULL
limit 188;
select  
  part.p_mfgr
from 
  part
where part.p_mfgr > part.p_brand
limit 54;
select  
  customer.c_name, 
  customer.c_custkey
from 
  customer
where customer.c_acctbal >= customer.c_acctbal;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  customer.c_acctbal, 
  region.r_comment, 
  lineitem.l_tax, 
  lineitem.l_extendedprice, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_name, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost
from 
  region
        right join region
            left join region
            on (region.r_name > region.r_name)
          inner join lineitem
          on (lineitem.l_commitdate < lineitem.l_shipdate)
        on (region.r_comment = region.r_comment )
      inner join region
      on (lineitem.l_extendedprice > lineitem.l_tax)
    right join lineitem
        left join region
          right join partsupp
            right join partsupp
                left join lineitem
                on (partsupp.ps_partkey > lineitem.l_suppkey)
              left join customer
              on (customer.c_phone >= lineitem.l_linestatus)
            on (lineitem.l_receiptdate < lineitem.l_shipdate)
          on (lineitem.l_commitdate < lineitem.l_shipdate)
        on (lineitem.l_commitdate >= lineitem.l_receiptdate)
      left join nation
        inner join region
        on (nation.n_regionkey <= region.r_regionkey)
      on (lineitem.l_tax >= lineitem.l_extendedprice)
    on (lineitem.l_receiptdate < lineitem.l_commitdate)
where region.r_regionkey is not NULL
limit 104;
select  
  min(
    cast(cast(null as int2) as int2)), 
  nation.n_regionkey, 
  lineitem.l_suppkey
from 
  nation
        inner join partsupp
          left join lineitem
          on (lineitem.l_shipmode > lineitem.l_shipmode)
        on (lineitem.l_partkey >= nation.n_regionkey)
      inner join lineitem
            inner join supplier
            on (lineitem.l_quantity = supplier.s_acctbal )
          inner join nation
          on (supplier.s_nationkey = lineitem.l_orderkey)
        right join lineitem
        on (lineitem.l_discount = lineitem.l_extendedprice)
      on (partsupp.ps_availqty = partsupp.ps_availqty)
    right join part
      right join customer
      on (part.p_type = customer.c_name )
    on (lineitem.l_quantity > lineitem.l_tax)
where partsupp.ps_suppkey < nation.n_nationkey
limit 129;
select  
  nation.n_regionkey, 
  partsupp.ps_availqty
from 
  partsupp
      left join nation
      on (partsupp.ps_availqty >= nation.n_nationkey)
    right join orders
    on (orders.o_totalprice is not NULL)
where orders.o_orderdate <= orders.o_orderdate;
select  
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is not NULL;
select  
  avg(
    cast(cast(null as float8) as float8))
from 
  partsupp
where partsupp.ps_partkey is not NULL
limit 45;
select  
  supplier.s_suppkey, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_nationkey, 
  partsupp.ps_comment, 
  nation.n_name, 
  supplier.s_name, 
  region.r_comment, 
  supplier.s_nationkey, 
  customer.c_nationkey, 
  partsupp.ps_availqty, 
  supplier.s_phone, 
  supplier.s_phone, 
  customer.c_phone, 
  min(
    cast(cast(null as text) as text)), 
  supplier.s_comment, 
  sum(
    cast(nation.n_nationkey as int4)), 
  supplier.s_address, 
  region.r_comment, 
  supplier.s_nationkey, 
  region.r_comment, 
  customer.c_custkey, 
  region.r_name, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  region.r_comment, 
  supplier.s_name, 
  supplier.s_name
from 
  supplier
          right join nation
          on (supplier.s_suppkey = nation.n_nationkey )
        right join partsupp
        on (supplier.s_phone > nation.n_name)
      inner join supplier
      on (supplier.s_acctbal <= supplier.s_acctbal)
    inner join supplier
      inner join customer
        right join region
        on (customer.c_comment = region.r_comment )
      on (customer.c_acctbal > customer.c_acctbal)
    on (supplier.s_phone is NULL)
where nation.n_regionkey <= supplier.s_suppkey
limit 142;
select  
  part.p_container, 
  lineitem.l_quantity, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  sum(
    cast(cast(null as money) as money)), 
  customer.c_custkey
from 
  orders
    inner join customer
          left join orders
          on (orders.o_orderdate <= orders.o_orderdate)
        right join part
            inner join part
              left join lineitem
              on (lineitem.l_extendedprice > lineitem.l_extendedprice)
            on (lineitem.l_shipmode <= part.p_brand)
          right join customer
          on (lineitem.l_shipdate >= lineitem.l_shipdate)
        on (customer.c_mktsegment = orders.o_clerk)
      inner join orders
      on (part.p_name = orders.o_comment )
    on (customer.c_acctbal >= customer.c_acctbal)
where part.p_retailprice is NULL
limit 126;
select  
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_name
from 
  supplier
where supplier.s_nationkey > supplier.s_suppkey;
select  
  lineitem.l_shipdate, 
  lineitem.l_quantity, 
  lineitem.l_linenumber, 
  lineitem.l_linenumber, 
  lineitem.l_orderkey
from 
  lineitem
      inner join supplier
        left join lineitem
          right join partsupp
          on (lineitem.l_shipmode = lineitem.l_shipinstruct)
        on (partsupp.ps_suppkey > lineitem.l_partkey)
      on (supplier.s_suppkey < supplier.s_suppkey)
    right join lineitem
    on (lineitem.l_extendedprice = lineitem.l_quantity )
where lineitem.l_returnflag <= lineitem.l_shipmode;
select  
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_phone, 
  avg(
    cast(cast(null as int2) as int2))
from 
  supplier
where supplier.s_nationkey is not NULL
limit 159;
select  
  part.p_size, 
  part.p_retailprice, 
  part.p_size, 
  max(
    cast(cast(null as timetz) as timetz)), 
  part.p_type, 
  part.p_partkey, 
  part.p_brand
from 
  part
where part.p_brand is not NULL
limit 92;
select  
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_suppkey, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  supplier.s_phone, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  sum(
    cast(cast(null as float4) as float4)), 
  supplier.s_suppkey, 
  supplier.s_name, 
  supplier.s_phone, 
  sum(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_address, 
  min(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as "time") as "time"))
from 
  supplier
where supplier.s_name is not NULL
limit 151;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_acctbal is not NULL
limit 137;
select distinct 
  orders.o_custkey, 
  region.r_name, 
  region.r_name, 
  orders.o_totalprice, 
  max(
    cast(cast(null as int8) as int8)), 
  orders.o_orderstatus, 
  min(
    cast(cast(null as tid) as tid)), 
  region.r_comment, 
  max(
    cast(orders.o_orderkey as int4)), 
  region.r_comment, 
  orders.o_custkey, 
  orders.o_orderpriority, 
  orders.o_orderstatus
from 
  orders
      right join orders
      on (orders.o_totalprice < orders.o_totalprice)
    right join region
    on (orders.o_totalprice = orders.o_totalprice)
where orders.o_totalprice <= orders.o_totalprice
limit 126;
select  
  nation.n_comment
from 
  supplier
    left join nation
    on (supplier.s_acctbal is NULL)
where supplier.s_address is not NULL
limit 110;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_address, 
  max(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as oid) as oid)), 
  supplier.s_name
from 
  supplier
where supplier.s_nationkey is not NULL
limit 153;
select  
  max(
    cast(cast(null as date) as date)), 
  customer.c_address
from 
  region
    left join customer
    on (customer.c_comment is NULL)
where customer.c_phone is NULL;
select  
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_acctbal
from 
  supplier
    inner join supplier
    on (supplier.s_phone is NULL)
where supplier.s_phone is NULL;
select  
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  lineitem
where lineitem.l_linenumber is NULL
limit 190;
select  
  supplier.s_suppkey, 
  min(
    cast(cast(null as float8) as float8))
from 
  partsupp
      left join supplier
      on (partsupp.ps_partkey = partsupp.ps_partkey)
    inner join part
      inner join customer
            inner join part
            on (part.p_brand >= customer.c_mktsegment)
          inner join supplier
          on (customer.c_acctbal > supplier.s_acctbal)
        right join customer
          inner join customer
          on (customer.c_acctbal = customer.c_acctbal)
        on (customer.c_mktsegment <= part.p_mfgr)
      on (part.p_container >= supplier.s_phone)
    on (customer.c_custkey is NULL)
where supplier.s_name >= part.p_brand
limit 126;
select  
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_name
from 
  region
where region.r_name <= region.r_name
limit 76;
select  
  region.r_comment, 
  orders.o_totalprice, 
  partsupp.ps_partkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as oid) as oid)), 
  partsupp.ps_comment, 
  region.r_comment, 
  partsupp.ps_supplycost
from 
  partsupp
    left join region
      right join orders
      on (region.r_regionkey = orders.o_orderkey )
    on (partsupp.ps_comment = region.r_comment )
where partsupp.ps_supplycost is NULL
limit 131;
select  
  partsupp.ps_supplycost, 
  nation.n_name
from 
  partsupp
        left join region
        on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
      left join nation
        right join partsupp
        on (partsupp.ps_supplycost < partsupp.ps_supplycost)
      on (nation.n_name = region.r_name)
    left join customer
    on (region.r_regionkey is NULL)
where region.r_name is not NULL
limit 115;
select  
  part.p_brand
from 
  part
where part.p_partkey is not NULL;
select  
  supplier.s_phone, 
  orders.o_orderdate, 
  supplier.s_phone, 
  max(
    cast(partsupp.ps_suppkey as int4)), 
  lineitem.l_shipinstruct, 
  part.p_name, 
  orders.o_orderstatus, 
  avg(
    cast(lineitem.l_quantity as "numeric")), 
  orders.o_shippriority, 
  region.r_regionkey, 
  part.p_type, 
  orders.o_custkey, 
  region.r_name, 
  supplier.s_comment, 
  part.p_comment, 
  supplier.s_name, 
  partsupp.ps_partkey, 
  lineitem.l_partkey
from 
  partsupp
          right join supplier
          on (partsupp.ps_supplycost <= supplier.s_acctbal)
        inner join part
          left join supplier
            inner join partsupp
            on (supplier.s_phone >= supplier.s_phone)
          on (part.p_size <= partsupp.ps_partkey)
        on (supplier.s_suppkey < supplier.s_suppkey)
      inner join orders
        left join orders
        on (orders.o_custkey <= orders.o_custkey)
      on (orders.o_custkey > part.p_partkey)
    inner join region
      inner join orders
          left join supplier
            left join lineitem
            on (supplier.s_phone = lineitem.l_returnflag )
          on (supplier.s_phone = supplier.s_phone)
        inner join part
          left join supplier
          on (part.p_container = supplier.s_phone)
        on (supplier.s_name = lineitem.l_linestatus)
      on (orders.o_orderdate <= orders.o_orderdate)
    on (orders.o_shippriority is NULL)
where supplier.s_acctbal is not NULL;
select  
  lineitem.l_quantity
from 
  nation
    inner join nation
          inner join region
          on (nation.n_name <= region.r_name)
        inner join lineitem
          right join region
          on (lineitem.l_tax > lineitem.l_extendedprice)
        on (lineitem.l_receiptdate = lineitem.l_commitdate)
      inner join nation
          inner join lineitem
            right join supplier
            on (lineitem.l_commitdate < lineitem.l_commitdate)
          on (nation.n_nationkey < lineitem.l_suppkey)
        left join customer
        on (lineitem.l_quantity = lineitem.l_extendedprice)
      on (lineitem.l_extendedprice < lineitem.l_discount)
    on (lineitem.l_receiptdate is not NULL)
where lineitem.l_tax is not NULL
limit 99;
select  
  supplier.s_address, 
  supplier.s_name
from 
  supplier
where supplier.s_acctbal <= supplier.s_acctbal
limit 75;
select  
  customer.c_comment, 
  customer.c_mktsegment
from 
  customer
where customer.c_phone is not NULL
limit 73;
select  
  supplier.s_name, 
  supplier.s_suppkey, 
  sum(
    cast(cast(null as int8) as int8))
from 
  orders
    inner join part
        inner join supplier
        on (supplier.s_acctbal <= supplier.s_acctbal)
      inner join nation
      on (part.p_brand > nation.n_name)
    on (orders.o_totalprice is NULL)
where nation.n_regionkey is NULL
limit 123;
select  
  region.r_name, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  customer.c_address, 
  nation.n_regionkey, 
  max(
    cast(cast(null as int8) as int8))
from 
  customer
      inner join partsupp
          left join orders
          on (orders.o_totalprice < orders.o_totalprice)
        right join supplier
            inner join nation
              inner join lineitem
              on (lineitem.l_linenumber <= lineitem.l_orderkey)
            on (lineitem.l_partkey > lineitem.l_orderkey)
          inner join region
          on (lineitem.l_shipinstruct > nation.n_name)
        on (lineitem.l_discount >= supplier.s_acctbal)
      on (nation.n_name < region.r_name)
    inner join orders
    on (supplier.s_address = orders.o_comment )
where customer.c_acctbal <= orders.o_totalprice
limit 105;
select  
  max(
    cast(cast(null as timetz) as timetz)), 
  lineitem.l_suppkey, 
  lineitem.l_quantity, 
  lineitem.l_extendedprice, 
  lineitem.l_shipmode, 
  avg(
    cast(cast(null as float4) as float4)), 
  count(*), 
  lineitem.l_orderkey, 
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_discount is not NULL;
select  
  partsupp.ps_supplycost, 
  supplier.s_nationkey, 
  max(
    cast(cast(null as float8) as float8)), 
  supplier.s_nationkey, 
  min(
    cast(cast(null as inet) as inet)), 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  supplier.s_phone
from 
  supplier
    inner join partsupp
    on (supplier.s_address is NULL)
where supplier.s_address is not NULL
limit 65;
select  
  partsupp.ps_partkey, 
  sum(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  max(
    cast(cast(null as date) as date)), 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_supplycost is NULL
limit 110;
select  
  nation.n_comment, 
  lineitem.l_linestatus, 
  orders.o_shippriority, 
  lineitem.l_partkey, 
  lineitem.l_linenumber, 
  nation.n_regionkey, 
  partsupp.ps_suppkey, 
  avg(
    cast(cast(null as int8) as int8)), 
  nation.n_nationkey, 
  lineitem.l_tax
from 
  lineitem
          inner join partsupp
          on (lineitem.l_shipdate = lineitem.l_commitdate)
        inner join orders
        on (lineitem.l_discount = orders.o_totalprice )
      right join lineitem
      on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
    inner join nation
        left join nation
        on (nation.n_regionkey > nation.n_regionkey)
      inner join lineitem
      on (lineitem.l_commitdate < lineitem.l_commitdate)
    on (nation.n_regionkey is NULL)
where nation.n_nationkey is NULL;
select  
  part.p_brand, 
  max(
    cast(cast(null as xid8) as xid8)), 
  part.p_container, 
  part.p_size, 
  part.p_container, 
  part.p_comment, 
  part.p_size, 
  part.p_partkey, 
  part.p_name, 
  part.p_name
from 
  part
where part.p_retailprice = part.p_retailprice
limit 96;
select  
  customer.c_name
from 
  partsupp
        inner join supplier
            left join nation
            on (supplier.s_acctbal <= supplier.s_acctbal)
          left join nation
          on (supplier.s_acctbal > supplier.s_acctbal)
        on (partsupp.ps_availqty = nation.n_nationkey )
      right join customer
        right join nation
          inner join region
            inner join region
            on (region.r_regionkey <= region.r_regionkey)
          on (nation.n_regionkey <= nation.n_nationkey)
        on (region.r_regionkey <= region.r_regionkey)
      on (region.r_name < region.r_name)
    inner join customer
      left join partsupp
          right join partsupp
          on (partsupp.ps_supplycost = partsupp.ps_supplycost)
        inner join part
          left join part
          on (part.p_retailprice > part.p_retailprice)
        on (partsupp.ps_suppkey > part.p_partkey)
      on (part.p_container > part.p_container)
    on (partsupp.ps_supplycost is NULL)
where nation.n_regionkey is not NULL;
select  
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_name, 
  supplier.s_phone
from 
  supplier
where supplier.s_comment is NULL
limit 169;
select  
  lineitem.l_quantity, 
  min(
    cast(cast(null as tid) as tid)), 
  lineitem.l_linenumber
from 
  customer
              inner join nation
              on (customer.c_acctbal > customer.c_acctbal)
            right join customer
              left join lineitem
              on (customer.c_custkey <= lineitem.l_linenumber)
            on (lineitem.l_commitdate >= lineitem.l_shipdate)
          right join supplier
          on (lineitem.l_linenumber < lineitem.l_orderkey)
        inner join customer
        on (lineitem.l_tax < lineitem.l_extendedprice)
      right join customer
          left join region
          on (region.r_name <= customer.c_phone)
        inner join lineitem
        on (lineitem.l_commitdate <= lineitem.l_shipdate)
      on (lineitem.l_shipdate <= lineitem.l_shipdate)
    right join orders
    on (lineitem.l_commitdate < lineitem.l_receiptdate)
where supplier.s_name is NULL
limit 45;
select  
  supplier.s_suppkey, 
  supplier.s_phone, 
  supplier.s_name, 
  sum(
    cast(supplier.s_nationkey as int4)), 
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_name, 
  supplier.s_address, 
  supplier.s_address
from 
  supplier
where supplier.s_comment is NULL;
select  
  orders.o_clerk, 
  orders.o_orderpriority, 
  orders.o_totalprice
from 
  orders
where orders.o_orderkey is not NULL;
select  
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey < nation.n_regionkey
limit 62;
select  
  part.p_type, 
  count(
    cast(part.p_container as bpchar)), 
  part.p_name, 
  part.p_size, 
  part.p_retailprice
from 
  part
where part.p_partkey <= part.p_partkey
limit 43;
select  
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_comment
from 
  supplier
where supplier.s_phone is not NULL
limit 121;
select  
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_comment is NULL
limit 108;
select  
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_name, 
  max(
    cast(cast(null as inet) as inet)), 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is not NULL
limit 72;
select  
  lineitem.l_quantity, 
  avg(
    cast(lineitem.l_extendedprice as "numeric")), 
  min(
    cast(cast(null as oid) as oid))
from 
  lineitem
where lineitem.l_comment is NULL
limit 41;
select  
  part.p_mfgr, 
  part.p_retailprice, 
  part.p_comment, 
  part.p_mfgr, 
  part.p_partkey, 
  part.p_comment, 
  part.p_comment, 
  part.p_container
from 
  part
where part.p_comment is NULL;
select  
  customer.c_phone
from 
  customer
where customer.c_phone is not NULL
limit 130;
select  
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_comment, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  sum(
    cast(cast(null as money) as money)), 
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_phone is not NULL
limit 62;
select  
  nation.n_comment, 
  nation.n_comment, 
  nation.n_nationkey, 
  supplier.s_phone, 
  nation.n_comment
from 
  nation
        right join supplier
            left join nation
            on (supplier.s_suppkey = nation.n_nationkey )
          right join partsupp
            left join partsupp
              inner join nation
              on (nation.n_name < nation.n_name)
            on (partsupp.ps_supplycost < partsupp.ps_supplycost)
          on (nation.n_name < nation.n_name)
        on (partsupp.ps_suppkey < partsupp.ps_suppkey)
      inner join nation
      on (partsupp.ps_supplycost > partsupp.ps_supplycost)
    inner join orders
    on (orders.o_orderdate <= orders.o_orderdate)
where orders.o_orderpriority is NULL;
select  
  region.r_regionkey, 
  orders.o_orderstatus, 
  avg(
    cast(partsupp.ps_partkey as int4)), 
  nation.n_comment, 
  max(
    cast(cast(null as timetz) as timetz)), 
  partsupp.ps_partkey, 
  orders.o_orderdate, 
  avg(
    cast(partsupp.ps_supplycost as "numeric")), 
  region.r_regionkey, 
  supplier.s_comment, 
  min(
    cast(orders.o_orderdate as date))
from 
  partsupp
      inner join supplier
        right join partsupp
            inner join orders
            on (orders.o_orderstatus >= orders.o_orderpriority)
          right join nation
          on (orders.o_totalprice <= partsupp.ps_supplycost)
        on (orders.o_orderdate >= orders.o_orderdate)
      on (partsupp.ps_partkey > orders.o_shippriority)
    left join part
        inner join region
          left join partsupp
            right join supplier
              inner join orders
              on (supplier.s_phone = orders.o_orderstatus )
            on (orders.o_orderpriority > supplier.s_phone)
          on (supplier.s_suppkey > partsupp.ps_partkey)
        on (part.p_retailprice <= part.p_retailprice)
      right join part
      on (partsupp.ps_supplycost = part.p_retailprice )
    on (nation.n_nationkey is not NULL)
where orders.o_orderdate < orders.o_orderdate
limit 59;
select  
  customer.c_mktsegment
from 
  customer
where customer.c_custkey is not NULL;
select  
  region.r_name
from 
  region
where region.r_name is not NULL
limit 103;
select  
  lineitem.l_orderkey, 
  part.p_type, 
  nation.n_comment
from 
  nation
    inner join lineitem
          inner join nation
                right join part
                on (part.p_partkey <= part.p_partkey)
              inner join nation
              on (nation.n_regionkey <= nation.n_nationkey)
            right join supplier
              inner join part
              on (part.p_mfgr > part.p_mfgr)
            on (part.p_retailprice < part.p_retailprice)
          on (supplier.s_name = nation.n_name)
        inner join part
        on (supplier.s_acctbal < part.p_retailprice)
      inner join supplier
      on (lineitem.l_commitdate < lineitem.l_receiptdate)
    on (nation.n_nationkey = supplier.s_suppkey )
where part.p_partkey < nation.n_nationkey
limit 89;
select  
  max(
    cast(cast(null as timetz) as timetz)), 
  supplier.s_nationkey, 
  supplier.s_comment, 
  part.p_partkey, 
  part.p_brand, 
  part.p_size, 
  supplier.s_name, 
  part.p_comment, 
  supplier.s_nationkey, 
  part.p_partkey, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_nationkey
from 
  part
    right join supplier
    on (part.p_mfgr is NULL)
where part.p_retailprice is not NULL
limit 72;
select  
  part.p_type, 
  part.p_type, 
  part.p_name, 
  part.p_comment, 
  part.p_comment, 
  part.p_mfgr
from 
  part
where part.p_partkey is NULL
limit 99;
select  
  customer.c_custkey, 
  supplier.s_acctbal, 
  customer.c_phone, 
  supplier.s_acctbal, 
  region.r_regionkey, 
  orders.o_comment
from 
  orders
    inner join supplier
        left join orders
        on (orders.o_orderdate >= orders.o_orderdate)
      inner join lineitem
              inner join part
              on (lineitem.l_tax = part.p_retailprice )
            inner join supplier
            on (lineitem.l_partkey > lineitem.l_suppkey)
          right join lineitem
            inner join supplier
              inner join customer
              on (customer.c_mktsegment <= customer.c_mktsegment)
            on (lineitem.l_suppkey <= supplier.s_nationkey)
          on (lineitem.l_commitdate < lineitem.l_shipdate)
        inner join region
        on (customer.c_phone >= lineitem.l_linestatus)
      on (supplier.s_phone > lineitem.l_linestatus)
    on (supplier.s_acctbal is not NULL)
where lineitem.l_quantity is not NULL
limit 32;
select  
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(customer.c_nationkey as int4)), 
  customer.c_phone, 
  customer.c_acctbal, 
  sum(
    cast(customer.c_nationkey as int4)), 
  customer.c_name, 
  customer.c_phone, 
  customer.c_name, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as inet) as inet)), 
  customer.c_acctbal, 
  customer.c_acctbal, 
  customer.c_comment, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  customer
where customer.c_phone is not NULL
limit 173;
select  
  part.p_size, 
  nation.n_regionkey
from 
  partsupp
      left join part
          right join nation
          on (part.p_partkey < part.p_size)
        left join lineitem
        on (lineitem.l_orderkey <= lineitem.l_linenumber)
      on (partsupp.ps_partkey = nation.n_nationkey )
    inner join orders
    on (lineitem.l_shipmode >= lineitem.l_shipmode)
where orders.o_totalprice < part.p_retailprice;
select  
  lineitem.l_extendedprice, 
  nation.n_name, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  nation.n_comment, 
  nation.n_name, 
  partsupp.ps_comment, 
  part.p_partkey
from 
  nation
          inner join part
          on (part.p_retailprice > part.p_retailprice)
        inner join nation
        on (nation.n_name >= nation.n_name)
      left join nation
        right join nation
        on (nation.n_nationkey = nation.n_nationkey)
      on (nation.n_name >= part.p_brand)
    right join lineitem
      inner join lineitem
          inner join lineitem
          on (lineitem.l_shipdate = lineitem.l_commitdate)
        left join part
            inner join region
            on (part.p_size <= part.p_size)
          inner join partsupp
          on (partsupp.ps_supplycost > partsupp.ps_supplycost)
        on (lineitem.l_linenumber >= lineitem.l_suppkey)
      on (part.p_partkey > lineitem.l_partkey)
    on (nation.n_regionkey is not NULL)
where nation.n_name is not NULL;
select  
  nation.n_comment, 
  nation.n_name, 
  nation.n_name, 
  nation.n_name
from 
  nation
where nation.n_nationkey is NULL;
select  
  part.p_mfgr, 
  min(
    cast(lineitem.l_tax as "numeric"))
from 
  supplier
      inner join region
          right join supplier
            left join part
            on (supplier.s_suppkey >= part.p_partkey)
          on (region.r_name = part.p_mfgr )
        inner join lineitem
        on (lineitem.l_extendedprice <= lineitem.l_extendedprice)
      on (lineitem.l_linenumber = part.p_size)
    right join customer
        right join region
          inner join partsupp
          on (region.r_regionkey = partsupp.ps_partkey )
        on (customer.c_name = region.r_comment )
      left join lineitem
      on (region.r_name < customer.c_mktsegment)
    on (region.r_name is NULL)
where partsupp.ps_partkey is NULL
limit 96;
select  
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_comment is NULL;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost
from 
  partsupp
    right join supplier
      inner join partsupp
        inner join part
        on (partsupp.ps_comment = part.p_name )
      on (supplier.s_nationkey = part.p_partkey )
    on (supplier.s_nationkey is NULL)
where supplier.s_comment is not NULL;
select  
  part.p_retailprice, 
  part.p_retailprice, 
  orders.o_custkey, 
  orders.o_orderkey, 
  part.p_retailprice, 
  part.p_partkey
from 
  part
    left join orders
    on (part.p_container is not NULL)
where part.p_mfgr is not NULL
limit 87;
select  
  max(
    cast(cast(null as money) as money)), 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  region.r_comment, 
  region.r_name, 
  avg(
    cast(cast(null as int2) as int2)), 
  region.r_name, 
  region.r_regionkey, 
  min(
    cast(cast(null as float8) as float8)), 
  region.r_comment, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as text) as text))
from 
  region
where region.r_name is NULL
limit 87;
select  
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_regionkey is NULL
limit 45;
select  
  orders.o_comment, 
  customer.c_nationkey, 
  customer.c_comment, 
  customer.c_comment, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  sum(
    cast(cast(null as money) as money)), 
  customer.c_phone, 
  max(
    cast(cast(null as xid8) as xid8)), 
  customer.c_nationkey, 
  orders.o_orderpriority, 
  orders.o_orderstatus, 
  orders.o_orderstatus, 
  orders.o_comment, 
  min(
    cast(cast(null as text) as text)), 
  min(
    cast(cast(null as "time") as "time")), 
  customer.c_nationkey
from 
  orders
    right join customer
    on (orders.o_orderstatus = customer.c_phone )
where customer.c_custkey = orders.o_custkey;
select  
  avg(
    cast(cast(null as int8) as int8)), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  customer.c_name
from 
  orders
        inner join part
          left join nation
            inner join region
            on (region.r_name < region.r_name)
          on (nation.n_name <= part.p_container)
        on (orders.o_clerk > orders.o_clerk)
      inner join customer
        inner join lineitem
          inner join customer
          on (lineitem.l_linenumber >= customer.c_custkey)
        on (customer.c_mktsegment > lineitem.l_shipinstruct)
      on (lineitem.l_commitdate >= lineitem.l_shipdate)
    inner join supplier
      right join lineitem
          inner join partsupp
          on (lineitem.l_shipdate > lineitem.l_commitdate)
        inner join nation
        on (nation.n_regionkey < partsupp.ps_suppkey)
      on (lineitem.l_tax < lineitem.l_extendedprice)
    on (customer.c_acctbal >= customer.c_acctbal)
where lineitem.l_orderkey < lineitem.l_linenumber;
select  
  min(
    cast(cast(null as int8) as int8)), 
  region.r_comment, 
  region.r_name, 
  region.r_comment, 
  orders.o_clerk, 
  lineitem.l_orderkey, 
  lineitem.l_receiptdate, 
  region.r_name, 
  region.r_name, 
  lineitem.l_returnflag, 
  region.r_regionkey, 
  lineitem.l_shipdate, 
  region.r_name, 
  max(
    cast(cast(null as text) as text))
from 
  region
      left join orders
      on (region.r_name = orders.o_clerk)
    inner join lineitem
    on (region.r_comment is NULL)
where orders.o_shippriority is not NULL
limit 117;
select  
  nation.n_nationkey, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  nation.n_comment
from 
  nation
where nation.n_name is not NULL
limit 181;
select  
  supplier.s_address
from 
  lineitem
      inner join supplier
      on (lineitem.l_shipdate > lineitem.l_commitdate)
    left join region
    on (region.r_comment is not NULL)
where lineitem.l_linenumber is not NULL;
select  
  nation.n_comment, 
  customer.c_phone, 
  max(
    cast(cast(null as float4) as float4)), 
  avg(
    cast(cast(null as float8) as float8)), 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  nation.n_comment, 
  max(
    cast(cast(null as money) as money)), 
  nation.n_regionkey, 
  nation.n_regionkey, 
  supplier.s_address, 
  supplier.s_address
from 
  partsupp
        left join customer
          left join region
                left join supplier
                on (region.r_regionkey > supplier.s_suppkey)
              inner join partsupp
              on (supplier.s_name = supplier.s_phone)
            inner join partsupp
            on (region.r_regionkey = partsupp.ps_partkey )
          on (customer.c_name = supplier.s_address )
        on (partsupp.ps_supplycost < partsupp.ps_supplycost)
      inner join partsupp
      on (partsupp.ps_supplycost = partsupp.ps_supplycost )
    inner join lineitem
      left join customer
        inner join nation
        on (customer.c_mktsegment <= customer.c_phone)
      on (lineitem.l_linestatus = nation.n_name )
    on (partsupp.ps_partkey is not NULL)
where nation.n_name > lineitem.l_returnflag
limit 31;
select  
  sum(
    cast(cast(null as money) as money)), 
  avg(
    cast(part.p_size as int4)), 
  part.p_container, 
  part.p_mfgr
from 
  part
where part.p_retailprice < part.p_retailprice;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 109;
select  
  min(
    cast(cast(null as int2) as int2)), 
  part.p_size, 
  part.p_mfgr, 
  part.p_name
from 
  supplier
      inner join part
        right join partsupp
        on (part.p_size > partsupp.ps_suppkey)
      on (part.p_retailprice > part.p_retailprice)
    inner join region
        right join nation
        on (region.r_regionkey = nation.n_nationkey)
      inner join part
        inner join part
        on (part.p_mfgr <= part.p_mfgr)
      on (part.p_size = nation.n_regionkey)
    on (part.p_brand is not NULL)
where part.p_partkey is NULL;
select  
  supplier.s_nationkey, 
  supplier.s_comment
from 
  orders
          left join nation
          on (nation.n_name >= orders.o_orderpriority)
        left join region
        on (nation.n_name >= orders.o_clerk)
      inner join supplier
        right join region
        on (supplier.s_name = region.r_name)
      on (orders.o_orderkey < orders.o_orderkey)
    inner join supplier
      inner join supplier
        inner join region
        on (supplier.s_acctbal = supplier.s_acctbal)
      on (supplier.s_acctbal >= supplier.s_acctbal)
    on (region.r_comment = supplier.s_address )
where supplier.s_acctbal is NULL
limit 115;
select  
  supplier.s_address, 
  nation.n_name, 
  supplier.s_name, 
  supplier.s_nationkey, 
  supplier.s_comment, 
  max(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_availqty, 
  supplier.s_name, 
  nation.n_regionkey, 
  supplier.s_address, 
  nation.n_nationkey
from 
  nation
      inner join nation
          inner join supplier
          on (supplier.s_acctbal >= supplier.s_acctbal)
        inner join supplier
          inner join part
          on (part.p_partkey >= part.p_partkey)
        on (nation.n_nationkey >= nation.n_nationkey)
      on (part.p_partkey >= nation.n_nationkey)
    left join supplier
      left join partsupp
      on (supplier.s_phone > supplier.s_phone)
    on (partsupp.ps_supplycost < partsupp.ps_supplycost)
where supplier.s_name < nation.n_name;
select  
  orders.o_orderkey, 
  orders.o_shippriority, 
  lineitem.l_receiptdate, 
  lineitem.l_linestatus, 
  lineitem.l_linestatus, 
  max(
    cast(cast(null as timetz) as timetz)), 
  orders.o_shippriority, 
  orders.o_custkey, 
  lineitem.l_shipinstruct, 
  lineitem.l_tax, 
  lineitem.l_suppkey, 
  min(
    cast(cast(null as float4) as float4)), 
  orders.o_orderpriority, 
  lineitem.l_orderkey, 
  orders.o_comment, 
  lineitem.l_comment, 
  orders.o_totalprice, 
  orders.o_comment, 
  orders.o_orderstatus
from 
  lineitem
    inner join orders
    on (lineitem.l_shipdate < orders.o_orderdate)
where lineitem.l_returnflag > lineitem.l_shipinstruct
limit 104;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  supplier.s_address, 
  max(
    cast(cast(null as timetz) as timetz)), 
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_phone, 
  avg(
    cast(supplier.s_nationkey as int4))
from 
  supplier
where supplier.s_nationkey >= supplier.s_nationkey;
select  
  lineitem.l_tax, 
  lineitem.l_shipinstruct, 
  lineitem.l_tax, 
  lineitem.l_tax, 
  lineitem.l_extendedprice
from 
  lineitem
where lineitem.l_discount <= lineitem.l_extendedprice
limit 111;
select  
  customer.c_nationkey, 
  nation.n_name, 
  orders.o_custkey, 
  nation.n_nationkey, 
  min(
    cast(cast(null as timetz) as timetz)), 
  nation.n_name, 
  orders.o_comment, 
  orders.o_orderstatus, 
  customer.c_acctbal
from 
  customer
    right join nation
            inner join region
              right join nation
                right join nation
                on (nation.n_name = nation.n_name)
              on (nation.n_name = nation.n_name)
            on (nation.n_regionkey >= nation.n_regionkey)
          right join customer
          on (nation.n_comment = customer.c_name )
        inner join orders
          inner join region
            left join supplier
            on (region.r_name = supplier.s_name )
          on (orders.o_orderdate <= orders.o_orderdate)
        on (orders.o_totalprice = customer.c_acctbal)
      right join nation
      on (supplier.s_name = nation.n_name)
    on (orders.o_orderdate < orders.o_orderdate)
where orders.o_orderstatus is NULL
limit 87;
select  
  region.r_comment
from 
  region
            inner join partsupp
            on (partsupp.ps_supplycost > partsupp.ps_supplycost)
          inner join nation
          on (partsupp.ps_suppkey = nation.n_nationkey )
        inner join partsupp
          inner join orders
          on (orders.o_totalprice <= partsupp.ps_supplycost)
        on (region.r_name > region.r_name)
      inner join orders
        right join region
        on (orders.o_totalprice < orders.o_totalprice)
      on (partsupp.ps_supplycost > partsupp.ps_supplycost)
    right join lineitem
    on (orders.o_custkey is NULL)
where region.r_name is NULL
limit 172;
select  
  orders.o_custkey, 
  lineitem.l_comment, 
  orders.o_comment, 
  orders.o_orderstatus
from 
  lineitem
      inner join region
      on (lineitem.l_shipdate > lineitem.l_receiptdate)
    left join orders
    on (orders.o_orderdate is NULL)
where lineitem.l_quantity < lineitem.l_discount
limit 100;
select  
  part.p_type, 
  lineitem.l_shipdate
from 
  part
    inner join supplier
        left join customer
        on (supplier.s_nationkey = customer.c_custkey )
      inner join region
        right join lineitem
        on (lineitem.l_discount > lineitem.l_extendedprice)
      on (lineitem.l_shipdate > lineitem.l_shipdate)
    on (part.p_type = customer.c_name )
where lineitem.l_commitdate is NULL
limit 151;
select  
  lineitem.l_orderkey
from 
  lineitem
    left join orders
    on (orders.o_clerk is NULL)
where lineitem.l_quantity is NULL;
select  
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_name < region.r_name;
select  
  orders.o_shippriority, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_clerk, 
  orders.o_clerk, 
  orders.o_orderstatus, 
  orders.o_comment, 
  orders.o_clerk, 
  max(
    cast(orders.o_shippriority as int4))
from 
  orders
where orders.o_orderpriority is not NULL
limit 120;
select  
  supplier.s_address, 
  supplier.s_suppkey
from 
  supplier
where supplier.s_suppkey = supplier.s_suppkey;
select  
  nation.n_nationkey
from 
  supplier
    inner join nation
      right join region
      on (nation.n_regionkey = nation.n_regionkey)
    on (supplier.s_suppkey = nation.n_nationkey )
where region.r_regionkey = nation.n_nationkey
limit 68;
select  
  orders.o_orderkey, 
  nation.n_comment, 
  orders.o_shippriority, 
  orders.o_custkey
from 
  nation
    right join orders
    on (nation.n_regionkey is not NULL)
where orders.o_comment is NULL
limit 46;
select  
  max(
    cast(cast(null as float8) as float8)), 
  lineitem.l_suppkey, 
  lineitem.l_orderkey, 
  lineitem.l_shipinstruct
from 
  lineitem
where lineitem.l_commitdate is not NULL;
select  
  nation.n_comment
from 
  lineitem
    inner join nation
      inner join lineitem
      on (nation.n_comment = lineitem.l_comment )
    on (nation.n_comment is NULL)
where lineitem.l_shipdate < lineitem.l_receiptdate
limit 65;
select  
  orders.o_shippriority, 
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_clerk, 
  orders.o_totalprice, 
  min(
    cast(cast(null as "interval") as "interval")), 
  orders.o_orderstatus, 
  orders.o_shippriority, 
  orders.o_totalprice
from 
  orders
where orders.o_comment is NULL
limit 57;
select  
  orders.o_orderstatus, 
  orders.o_orderstatus, 
  orders.o_orderkey, 
  orders.o_custkey, 
  orders.o_totalprice, 
  orders.o_totalprice, 
  orders.o_orderkey, 
  orders.o_comment, 
  orders.o_orderkey, 
  orders.o_clerk, 
  orders.o_shippriority, 
  orders.o_custkey, 
  orders.o_clerk, 
  orders.o_orderdate, 
  orders.o_clerk, 
  min(
    cast(cast(null as timetz) as timetz)), 
  orders.o_orderstatus, 
  orders.o_shippriority
from 
  orders
where orders.o_orderpriority is NULL;
select  
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is NULL
limit 34;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  customer.c_name, 
  customer.c_comment, 
  customer.c_acctbal, 
  customer.c_phone, 
  customer.c_phone
from 
  customer
where customer.c_nationkey >= customer.c_custkey
limit 129;
select  
  lineitem.l_linestatus, 
  supplier.s_acctbal
from 
  supplier
      right join supplier
      on (supplier.s_nationkey < supplier.s_nationkey)
    left join lineitem
    on (supplier.s_name is NULL)
where supplier.s_suppkey > lineitem.l_partkey
limit 164;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as int2) as int2)), 
  region.r_name, 
  region.r_comment, 
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_comment is not NULL
limit 131;
select  
  part.p_type, 
  part.p_type, 
  avg(
    cast(cast(null as float8) as float8)), 
  part.p_size, 
  min(
    cast(cast(null as text) as text)), 
  part.p_partkey
from 
  part
where part.p_name is not NULL
limit 87;
select  
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost
from 
  partsupp
    inner join part
    on (part.p_mfgr is not NULL)
where part.p_comment is not NULL
limit 108;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as int8) as int8)), 
  partsupp.ps_partkey, 
  nation.n_name, 
  sum(
    cast(cast(null as int2) as int2)), 
  lineitem.l_receiptdate, 
  lineitem.l_orderkey, 
  partsupp.ps_suppkey, 
  lineitem.l_quantity, 
  lineitem.l_tax, 
  lineitem.l_returnflag
from 
  lineitem
        left join partsupp
        on (lineitem.l_linestatus < lineitem.l_returnflag)
      right join lineitem
      on (lineitem.l_discount > lineitem.l_extendedprice)
    right join nation
    on (lineitem.l_shipmode = nation.n_name )
where partsupp.ps_suppkey is not NULL
limit 69;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  avg(
    cast(region.r_regionkey as int4)), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  region.r_name
from 
  region
where region.r_regionkey is not NULL
limit 64;
select  
  max(
    cast(cast(null as money) as money)), 
  supplier.s_phone, 
  supplier.s_suppkey, 
  max(
    cast(cast(null as tid) as tid))
from 
  supplier
    right join supplier
    on (supplier.s_suppkey is not NULL)
where supplier.s_name is not NULL;
select  
  part.p_comment, 
  avg(
    cast(part.p_retailprice as "numeric")), 
  part.p_name, 
  part.p_brand, 
  part.p_container
from 
  part
where part.p_brand is NULL;
select  
  region.r_comment, 
  region.r_name
from 
  region
      inner join lineitem
      on (lineitem.l_tax = lineitem.l_extendedprice)
    inner join part
      right join lineitem
        right join orders
        on (orders.o_orderpriority >= lineitem.l_shipmode)
      on (orders.o_totalprice >= lineitem.l_quantity)
    on (lineitem.l_orderkey is not NULL)
where orders.o_orderkey is not NULL
limit 125;
select  
  supplier.s_acctbal, 
  nation.n_regionkey, 
  sum(
    cast(part.p_retailprice as "numeric")), 
  nation.n_name, 
  customer.c_custkey, 
  region.r_comment, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  region
        inner join nation
          inner join nation
          on (nation.n_name = nation.n_name )
        on (nation.n_regionkey >= region.r_regionkey)
      right join partsupp
      on (nation.n_regionkey <= partsupp.ps_suppkey)
    inner join part
          inner join orders
            left join customer
            on (orders.o_orderpriority <= orders.o_orderpriority)
          on (customer.c_mktsegment >= customer.c_mktsegment)
        right join customer
        on (part.p_partkey = customer.c_custkey )
      inner join supplier
      on (part.p_container = supplier.s_name )
    on (region.r_name is NULL)
where customer.c_acctbal is not NULL
limit 98;
select  
  nation.n_nationkey
from 
  nation
    inner join nation
    on (nation.n_regionkey is NULL)
where nation.n_name is NULL
limit 123;
select  
  nation.n_name, 
  max(
    cast(cast(null as xid8) as xid8)), 
  avg(
    cast(customer.c_acctbal as "numeric")), 
  nation.n_regionkey, 
  supplier.s_suppkey, 
  nation.n_nationkey, 
  nation.n_regionkey
from 
  nation
        right join nation
        on (nation.n_regionkey < nation.n_nationkey)
      inner join region
              left join region
              on (region.r_name < region.r_name)
            left join customer
            on (customer.c_acctbal = customer.c_acctbal)
          inner join nation
          on (nation.n_nationkey > region.r_regionkey)
        left join lineitem
        on (lineitem.l_extendedprice <= lineitem.l_extendedprice)
      on (lineitem.l_commitdate = lineitem.l_receiptdate)
    inner join supplier
    on (nation.n_comment is not NULL)
where lineitem.l_commitdate <= lineitem.l_receiptdate
limit 172;
select  
  count(*), 
  nation.n_comment
from 
  region
      inner join nation
        inner join part
            left join orders
            on (orders.o_orderdate >= orders.o_orderdate)
          inner join lineitem
            left join part
            on (lineitem.l_suppkey > part.p_size)
          on (part.p_retailprice <= lineitem.l_quantity)
        on (nation.n_nationkey <= lineitem.l_partkey)
      on (part.p_container <= region.r_name)
    left join customer
    on (orders.o_clerk is NULL)
where orders.o_orderpriority is NULL
limit 132;
select  
  max(
    cast(customer.c_nationkey as int4)), 
  customer.c_name, 
  customer.c_address
from 
  customer
where customer.c_comment is NULL;
select  
  lineitem.l_shipdate, 
  lineitem.l_returnflag, 
  max(
    cast(cast(null as "time") as "time")), 
  lineitem.l_comment
from 
  lineitem
where lineitem.l_comment is NULL
limit 105;
select  
  min(
    cast(region.r_name as bpchar))
from 
  region
where region.r_comment is not NULL;
select  
  customer.c_acctbal, 
  customer.c_custkey, 
  customer.c_nationkey, 
  sum(
    cast(cast(null as float4) as float4)), 
  customer.c_comment, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  customer.c_address, 
  customer.c_name, 
  customer.c_nationkey, 
  avg(
    cast(cast(null as int2) as int2))
from 
  customer
where customer.c_address is not NULL
limit 63;
select  
  lineitem.l_tax, 
  lineitem.l_shipdate, 
  lineitem.l_orderkey, 
  avg(
    cast(lineitem.l_suppkey as int4)), 
  lineitem.l_linestatus, 
  lineitem.l_discount, 
  lineitem.l_discount
from 
  lineitem
where lineitem.l_receiptdate >= lineitem.l_receiptdate
limit 35;
select  
  orders.o_comment, 
  orders.o_orderstatus, 
  max(
    cast(cast(null as float4) as float4)), 
  orders.o_clerk, 
  max(
    cast(cast(null as int8) as int8)), 
  orders.o_custkey
from 
  orders
where orders.o_orderdate > orders.o_orderdate
limit 82;
select  
  min(
    cast(cast(null as tid) as tid)), 
  part.p_brand, 
  part.p_type, 
  part.p_partkey, 
  part.p_size, 
  part.p_comment, 
  part.p_mfgr, 
  part.p_type, 
  part.p_mfgr
from 
  part
where part.p_size is NULL;
select  
  min(
    cast(cast(null as inet) as inet)), 
  region.r_regionkey, 
  region.r_regionkey, 
  max(
    cast(cast(null as float8) as float8)), 
  avg(
    cast(cast(null as float8) as float8)), 
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as float8) as float8)), 
  region.r_comment, 
  max(
    cast(cast(null as text) as text)), 
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_regionkey is not NULL
limit 148;
select  
  lineitem.l_linestatus, 
  nation.n_name, 
  nation.n_regionkey, 
  lineitem.l_tax
from 
  nation
      right join partsupp
      on (nation.n_nationkey = partsupp.ps_partkey )
    left join lineitem
    on (lineitem.l_extendedprice <= partsupp.ps_supplycost)
where partsupp.ps_availqty is NULL
limit 80;
select  
  region.r_regionkey, 
  region.r_name, 
  region.r_comment, 
  region.r_name, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_regionkey is NULL
limit 172;
select  
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_nationkey is not NULL
limit 85;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_name, 
  nation.n_nationkey, 
  region.r_name, 
  supplier.s_address, 
  partsupp.ps_suppkey, 
  supplier.s_acctbal, 
  lineitem.l_extendedprice, 
  partsupp.ps_partkey, 
  region.r_regionkey
from 
  lineitem
    left join lineitem
        right join partsupp
          inner join region
              right join partsupp
              on (region.r_name <= region.r_name)
            left join supplier
              right join lineitem
                left join supplier
                on (supplier.s_suppkey <= lineitem.l_partkey)
              on (lineitem.l_receiptdate < lineitem.l_commitdate)
            on (partsupp.ps_comment = lineitem.l_comment )
          on (partsupp.ps_availqty < partsupp.ps_suppkey)
        on (lineitem.l_returnflag <= lineitem.l_returnflag)
      inner join region
        inner join nation
        on (nation.n_name <= nation.n_name)
      on (lineitem.l_linestatus >= supplier.s_phone)
    on (partsupp.ps_partkey is not NULL)
where lineitem.l_commitdate >= lineitem.l_commitdate;
select  
  customer.c_address
from 
  customer
    left join part
      right join lineitem
      on (lineitem.l_shipdate = lineitem.l_commitdate)
    on (lineitem.l_shipmode > lineitem.l_linestatus)
where customer.c_mktsegment is not NULL
limit 110;
select  
  nation.n_nationkey, 
  region.r_comment
from 
  region
    left join orders
      right join nation
      on (orders.o_clerk <= orders.o_orderpriority)
    on (region.r_regionkey is not NULL)
where nation.n_name is not NULL
limit 108;
select  
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost
from 
  partsupp
      inner join partsupp
        left join orders
          right join supplier
              right join nation
              on (supplier.s_acctbal >= supplier.s_acctbal)
            inner join supplier
            on (supplier.s_acctbal > supplier.s_acctbal)
          on (supplier.s_suppkey >= orders.o_custkey)
        on (orders.o_orderdate < orders.o_orderdate)
      on (orders.o_orderdate >= orders.o_orderdate)
    right join lineitem
      right join region
            inner join orders
            on (orders.o_orderkey = orders.o_orderkey)
          right join partsupp
          on (orders.o_totalprice < partsupp.ps_supplycost)
        inner join nation
        on (partsupp.ps_partkey = nation.n_nationkey )
      on (orders.o_orderpriority > orders.o_orderpriority)
    on (nation.n_regionkey >= partsupp.ps_availqty)
where supplier.s_suppkey is NULL;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  region.r_regionkey
from 
  region
where region.r_comment is not NULL
limit 112;
select  
  partsupp.ps_comment, 
  max(
    cast(cast(null as int8) as int8)), 
  part.p_comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  customer.c_custkey, 
  partsupp.ps_availqty, 
  supplier.s_phone, 
  part.p_partkey, 
  customer.c_comment, 
  supplier.s_name
from 
  supplier
          left join orders
            inner join customer
            on (orders.o_comment = customer.c_name )
          on (orders.o_orderdate >= orders.o_orderdate)
        inner join partsupp
        on (orders.o_clerk < orders.o_orderstatus)
      inner join supplier
        inner join part
        on (supplier.s_acctbal >= part.p_retailprice)
      on (part.p_mfgr > customer.c_mktsegment)
    left join supplier
    on (partsupp.ps_suppkey is not NULL)
where orders.o_totalprice = supplier.s_acctbal;
select  
  supplier.s_address, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  nation.n_nationkey
from 
  nation
              inner join region
                inner join part
                on (region.r_regionkey <= part.p_size)
              on (nation.n_nationkey >= part.p_size)
            right join supplier
            on (nation.n_name > part.p_brand)
          inner join customer
          on (customer.c_nationkey >= supplier.s_suppkey)
        inner join supplier
        on (supplier.s_suppkey >= customer.c_nationkey)
      inner join region
          inner join region
          on (region.r_comment = region.r_comment )
        right join supplier
        on (region.r_regionkey <= supplier.s_suppkey)
      on (supplier.s_acctbal > customer.c_acctbal)
    left join lineitem
          inner join nation
          on (nation.n_name > lineitem.l_shipinstruct)
        right join region
            inner join region
            on (region.r_name <= region.r_name)
          right join supplier
          on (region.r_name = supplier.s_name )
        on (lineitem.l_linestatus >= region.r_name)
      right join supplier
          inner join partsupp
          on (supplier.s_nationkey <= supplier.s_suppkey)
        right join lineitem
        on (lineitem.l_returnflag < lineitem.l_shipmode)
      on (nation.n_name <= supplier.s_name)
    on (supplier.s_nationkey is not NULL)
where partsupp.ps_availqty is not NULL
limit 163;
select  
  part.p_size, 
  max(
    cast(cast(null as tid) as tid)), 
  part.p_mfgr, 
  supplier.s_suppkey, 
  partsupp.ps_comment, 
  lineitem.l_quantity, 
  max(
    cast(cast(null as "time") as "time"))
from 
  supplier
    inner join partsupp
        inner join lineitem
        on (lineitem.l_discount > lineitem.l_quantity)
      right join lineitem
            inner join part
            on (lineitem.l_returnflag = part.p_mfgr )
          inner join supplier
          on (supplier.s_phone >= lineitem.l_linestatus)
        right join partsupp
          left join supplier
          on (partsupp.ps_comment = supplier.s_address )
        on (supplier.s_name = part.p_container)
      on (lineitem.l_orderkey >= supplier.s_nationkey)
    on (part.p_retailprice is not NULL)
where lineitem.l_discount < partsupp.ps_supplycost;
select  
  nation.n_nationkey, 
  region.r_name, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_regionkey, 
  nation.n_name, 
  lineitem.l_orderkey, 
  region.r_comment, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_comment
from 
  region
      right join nation
        right join nation
          inner join lineitem
            inner join region
            on (lineitem.l_orderkey > lineitem.l_orderkey)
          on (nation.n_nationkey = lineitem.l_orderkey )
        on (lineitem.l_receiptdate <= lineitem.l_receiptdate)
      on (lineitem.l_extendedprice >= lineitem.l_quantity)
    left join nation
    on (lineitem.l_orderkey is NULL)
where nation.n_nationkey is not NULL
limit 97;
select  
  partsupp.ps_availqty, 
  nation.n_regionkey
from 
  orders
        inner join nation
          right join orders
            left join partsupp
            on (orders.o_orderkey <= partsupp.ps_availqty)
          on (orders.o_orderdate <= orders.o_orderdate)
        on (orders.o_orderdate > orders.o_orderdate)
      left join nation
      on (orders.o_orderdate < orders.o_orderdate)
    right join lineitem
    on (orders.o_orderkey is not NULL)
where orders.o_orderdate = orders.o_orderdate
limit 72;
select  
  nation.n_name, 
  nation.n_regionkey
from 
  orders
      inner join customer
      on (orders.o_shippriority = customer.c_custkey )
    inner join nation
          right join lineitem
          on (lineitem.l_commitdate <= lineitem.l_commitdate)
        inner join region
          inner join partsupp
          on (region.r_name = region.r_name)
        on (region.r_regionkey = nation.n_nationkey)
      inner join orders
        left join orders
        on (orders.o_orderpriority >= orders.o_clerk)
      on (lineitem.l_quantity = lineitem.l_extendedprice)
    on (nation.n_nationkey >= orders.o_custkey)
where orders.o_custkey >= orders.o_shippriority;
select  
  region.r_name, 
  region.r_name, 
  lineitem.l_comment
from 
  region
        left join lineitem
        on (lineitem.l_tax <= lineitem.l_tax)
      left join customer
          right join orders
            inner join part
              left join lineitem
              on (part.p_partkey = lineitem.l_orderkey )
            on (part.p_retailprice >= lineitem.l_extendedprice)
          on (customer.c_acctbal > lineitem.l_quantity)
        left join part
        on (orders.o_orderdate >= lineitem.l_receiptdate)
      on (lineitem.l_shipmode <= part.p_mfgr)
    inner join region
          right join supplier
          on (supplier.s_acctbal >= supplier.s_acctbal)
        inner join customer
        on (region.r_name = customer.c_phone)
      left join lineitem
        left join part
            left join lineitem
              inner join lineitem
              on (lineitem.l_returnflag = lineitem.l_returnflag )
            on (part.p_partkey = lineitem.l_orderkey )
          right join partsupp
          on (lineitem.l_shipdate > lineitem.l_commitdate)
        on (lineitem.l_quantity < lineitem.l_extendedprice)
      on (lineitem.l_commitdate <= lineitem.l_shipdate)
    on (customer.c_address = customer.c_name )
where lineitem.l_shipdate < lineitem.l_receiptdate
limit 124;
select  
  customer.c_phone
from 
  customer
where customer.c_address is NULL
limit 116;
select  
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_name is not NULL
limit 131;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_availqty
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 124;
select  
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_partkey is NULL;
select  
  region.r_name, 
  region.r_regionkey, 
  region.r_name, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name
from 
  region
where region.r_regionkey is not NULL
limit 93;
select  
  orders.o_orderdate, 
  part.p_retailprice, 
  customer.c_mktsegment, 
  region.r_name, 
  avg(
    cast(lineitem.l_partkey as int4)), 
  region.r_regionkey, 
  customer.c_custkey, 
  customer.c_acctbal, 
  lineitem.l_extendedprice, 
  region.r_regionkey, 
  lineitem.l_quantity, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  lineitem.l_orderkey, 
  customer.c_nationkey, 
  avg(
    cast(lineitem.l_quantity as "numeric")), 
  customer.c_address
from 
  customer
        left join region
          left join nation
          on (nation.n_name > region.r_name)
        on (customer.c_acctbal = customer.c_acctbal)
      right join supplier
          right join customer
          on (supplier.s_acctbal < supplier.s_acctbal)
        inner join part
          inner join lineitem
          on (lineitem.l_shipmode <= part.p_brand)
        on (part.p_brand >= part.p_mfgr)
      on (customer.c_phone >= lineitem.l_returnflag)
    inner join lineitem
          inner join nation
          on (lineitem.l_quantity < lineitem.l_quantity)
        inner join lineitem
            inner join supplier
            on (lineitem.l_suppkey <= lineitem.l_linenumber)
          inner join customer
          on (lineitem.l_discount < customer.c_acctbal)
        on (lineitem.l_tax < lineitem.l_tax)
      inner join orders
      on (lineitem.l_shipdate >= lineitem.l_commitdate)
    on (lineitem.l_suppkey is not NULL)
where lineitem.l_receiptdate > lineitem.l_shipdate
limit 154;
select  
  part.p_retailprice, 
  region.r_name, 
  region.r_name, 
  region.r_name
from 
  region
    inner join region
      inner join part
      on (part.p_partkey <= region.r_regionkey)
    on (region.r_regionkey > region.r_regionkey)
where region.r_comment is not NULL
limit 100;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  orders.o_orderpriority, 
  orders.o_custkey
from 
  region
    inner join supplier
      left join region
        right join orders
        on (region.r_regionkey = orders.o_orderkey )
      on (region.r_regionkey < orders.o_orderkey)
    on (region.r_regionkey is not NULL)
where region.r_regionkey is NULL
limit 41;
select  
  orders.o_clerk, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  orders.o_shippriority, 
  orders.o_totalprice, 
  orders.o_orderpriority, 
  customer.c_custkey, 
  orders.o_orderstatus, 
  orders.o_orderdate, 
  customer.c_comment, 
  orders.o_orderpriority, 
  customer.c_address
from 
  customer
    inner join orders
    on (orders.o_shippriority is not NULL)
where orders.o_totalprice > orders.o_totalprice
limit 30;
select  
  part.p_type, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  orders
          inner join part
            inner join partsupp
            on (partsupp.ps_partkey <= partsupp.ps_availqty)
          on (orders.o_orderdate = orders.o_orderdate)
        inner join lineitem
          left join customer
            inner join part
            on (customer.c_mktsegment < part.p_brand)
          on (lineitem.l_suppkey = customer.c_custkey )
        on (lineitem.l_discount >= partsupp.ps_supplycost)
      right join nation
        left join part
          inner join lineitem
            inner join supplier
            on (lineitem.l_quantity < supplier.s_acctbal)
          on (lineitem.l_shipinstruct >= lineitem.l_linestatus)
        on (nation.n_regionkey = supplier.s_suppkey )
      on (lineitem.l_quantity <= lineitem.l_quantity)
    left join nation
        left join region
        on (nation.n_regionkey = nation.n_regionkey)
      inner join partsupp
        inner join partsupp
            right join partsupp
            on (partsupp.ps_partkey = partsupp.ps_availqty)
          inner join customer
          on (customer.c_acctbal < customer.c_acctbal)
        on (customer.c_mktsegment > customer.c_phone)
      on (customer.c_acctbal = partsupp.ps_supplycost)
    on (partsupp.ps_availqty < lineitem.l_suppkey)
where partsupp.ps_supplycost < supplier.s_acctbal;
select  
  lineitem.l_comment, 
  lineitem.l_comment, 
  lineitem.l_commitdate, 
  lineitem.l_linenumber, 
  lineitem.l_shipdate, 
  lineitem.l_linenumber, 
  lineitem.l_returnflag, 
  max(
    cast(cast(null as tid) as tid)), 
  lineitem.l_receiptdate, 
  lineitem.l_tax, 
  lineitem.l_tax
from 
  lineitem
where lineitem.l_linenumber is NULL;
select  
  lineitem.l_suppkey
from 
  lineitem
where lineitem.l_partkey is not NULL
limit 120;
select  
  part.p_retailprice
from 
  part
where part.p_partkey < part.p_size
limit 158;
select  
  region.r_name, 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  supplier.s_address, 
  region.r_comment, 
  nation.n_nationkey, 
  region.r_regionkey, 
  max(
    cast(cast(null as text) as text)), 
  nation.n_comment, 
  lineitem.l_receiptdate, 
  avg(
    cast(cast(null as float8) as float8)), 
  lineitem.l_orderkey, 
  region.r_comment, 
  supplier.s_acctbal, 
  nation.n_nationkey
from 
  region
      right join nation
        inner join supplier
        on (nation.n_comment = supplier.s_address )
      on (supplier.s_acctbal < supplier.s_acctbal)
    left join lineitem
      left join nation
      on (lineitem.l_quantity = lineitem.l_tax)
    on (lineitem.l_quantity > lineitem.l_tax)
where region.r_comment is NULL
limit 40;
select  
  part.p_type, 
  part.p_container
from 
  part
where part.p_partkey > part.p_partkey;
select  
  partsupp.ps_partkey, 
  partsupp.ps_partkey
from 
  partsupp
    inner join nation
      inner join partsupp
      on (nation.n_regionkey > nation.n_regionkey)
    on (partsupp.ps_supplycost is not NULL)
where partsupp.ps_comment is not NULL
limit 83;
select  
  region.r_comment, 
  min(
    cast(cast(null as float4) as float4)), 
  region.r_regionkey, 
  max(
    cast(cast(null as float8) as float8)), 
  region.r_regionkey, 
  region.r_name, 
  lineitem.l_tax, 
  max(
    cast(cast(null as text) as text)), 
  lineitem.l_linestatus, 
  region.r_regionkey, 
  lineitem.l_shipmode, 
  region.r_regionkey, 
  max(
    cast(cast(null as int2) as int2)), 
  region.r_comment, 
  lineitem.l_shipdate, 
  lineitem.l_shipmode
from 
  lineitem
    inner join region
    on (region.r_name is not NULL)
where lineitem.l_returnflag is NULL
limit 100;
select  
  customer.c_custkey, 
  partsupp.ps_supplycost
from 
  orders
        left join customer
        on (orders.o_orderdate > orders.o_orderdate)
      inner join partsupp
          left join nation
            right join region
            on (nation.n_name < nation.n_name)
          on (region.r_name = region.r_name)
        inner join lineitem
          inner join nation
          on (nation.n_regionkey > lineitem.l_linenumber)
        on (lineitem.l_discount = lineitem.l_extendedprice)
      on (customer.c_phone = nation.n_name )
    inner join part
      inner join partsupp
      on (part.p_brand < part.p_container)
    on (lineitem.l_receiptdate > lineitem.l_commitdate)
where orders.o_orderstatus is not NULL
limit 99;
select  
  region.r_regionkey, 
  max(
    cast(cast(null as text) as text)), 
  supplier.s_nationkey, 
  supplier.s_nationkey
from 
  orders
        inner join orders
        on (orders.o_totalprice >= orders.o_totalprice)
      inner join region
        left join supplier
        on (region.r_regionkey <= region.r_regionkey)
      on (orders.o_orderdate = orders.o_orderdate)
    inner join supplier
    on (supplier.s_acctbal is NULL)
where supplier.s_phone is not NULL
limit 108;
select  
  customer.c_phone
from 
  part
    inner join customer
    on (customer.c_acctbal = part.p_retailprice)
where part.p_mfgr is NULL
limit 125;
select  
  orders.o_totalprice, 
  supplier.s_suppkey, 
  partsupp.ps_availqty, 
  lineitem.l_linestatus, 
  supplier.s_suppkey
from 
  supplier
    inner join partsupp
        inner join orders
            inner join partsupp
            on (orders.o_custkey < orders.o_custkey)
          left join lineitem
          on (partsupp.ps_suppkey <= orders.o_orderkey)
        on (lineitem.l_receiptdate >= lineitem.l_shipdate)
      inner join region
          right join customer
          on (region.r_comment = customer.c_name )
        inner join supplier
          inner join partsupp
          on (partsupp.ps_supplycost > supplier.s_acctbal)
        on (supplier.s_name > customer.c_phone)
      on (orders.o_orderdate > lineitem.l_receiptdate)
    on (supplier.s_phone = customer.c_phone )
where region.r_comment is NULL;
select  
  supplier.s_nationkey, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_suppkey <= supplier.s_nationkey
limit 84;
select  
  partsupp.ps_suppkey, 
  lineitem.l_returnflag, 
  partsupp.ps_partkey, 
  part.p_comment
from 
  orders
          right join partsupp
          on (orders.o_clerk > orders.o_clerk)
        inner join part
        on (orders.o_orderkey > partsupp.ps_partkey)
      right join orders
      on (orders.o_orderdate = orders.o_orderdate)
    right join customer
      inner join partsupp
        inner join orders
          left join lineitem
          on (orders.o_orderstatus = lineitem.l_returnflag )
        on (orders.o_orderdate <= lineitem.l_receiptdate)
      on (lineitem.l_discount <= lineitem.l_extendedprice)
    on (part.p_comment is not NULL)
where orders.o_custkey is not NULL
limit 126;
select  
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
where nation.n_comment is not NULL
limit 111;
select  
  orders.o_shippriority, 
  customer.c_nationkey, 
  min(
    cast(cast(null as inet) as inet)), 
  orders.o_shippriority, 
  lineitem.l_shipdate, 
  orders.o_custkey
from 
  orders
      right join lineitem
          left join region
              inner join orders
              on (region.r_comment = orders.o_comment )
            inner join customer
            on (customer.c_acctbal = orders.o_totalprice)
          on (orders.o_orderdate < lineitem.l_shipdate)
        left join customer
          inner join part
          on (customer.c_nationkey <= customer.c_custkey)
        on (customer.c_name = customer.c_name )
      on (lineitem.l_linenumber < customer.c_nationkey)
    left join orders
    on (orders.o_orderdate is NULL)
where orders.o_orderpriority is not NULL;
select  
  lineitem.l_commitdate, 
  supplier.s_phone, 
  lineitem.l_orderkey, 
  supplier.s_suppkey
from 
  supplier
      right join supplier
      on (supplier.s_address = supplier.s_address )
    inner join orders
      inner join lineitem
        inner join lineitem
        on (lineitem.l_extendedprice >= lineitem.l_extendedprice)
      on (orders.o_custkey = lineitem.l_orderkey )
    on (supplier.s_phone = orders.o_orderstatus )
where lineitem.l_shipinstruct >= orders.o_orderstatus
limit 71;
select  
  nation.n_comment, 
  orders.o_custkey, 
  nation.n_nationkey, 
  orders.o_totalprice, 
  customer.c_acctbal, 
  nation.n_name, 
  orders.o_clerk, 
  nation.n_comment, 
  orders.o_orderdate, 
  nation.n_comment
from 
  customer
    inner join orders
      left join nation
        left join supplier
        on (supplier.s_nationkey = nation.n_nationkey)
      on (orders.o_totalprice = supplier.s_acctbal)
    on (customer.c_comment = orders.o_comment )
where customer.c_mktsegment is not NULL
limit 62;
select  
  part.p_partkey, 
  part.p_partkey, 
  part.p_partkey, 
  part.p_brand, 
  part.p_mfgr, 
  part.p_size, 
  part.p_size, 
  part.p_type, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  part.p_retailprice, 
  avg(
    cast(cast(null as float8) as float8)), 
  part.p_mfgr, 
  part.p_name
from 
  part
where part.p_comment is NULL
limit 108;
select  
  customer.c_comment, 
  part.p_mfgr, 
  customer.c_comment
from 
  customer
      inner join part
      on (customer.c_acctbal = part.p_retailprice )
    left join part
    on (part.p_brand is not NULL)
where customer.c_nationkey < part.p_size
limit 113;
select  
  lineitem.l_linenumber
from 
  lineitem
where lineitem.l_suppkey is not NULL
limit 146;
select  
  nation.n_name, 
  partsupp.ps_suppkey, 
  lineitem.l_linenumber, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as text) as text))
from 
  lineitem
      right join customer
        inner join lineitem
          right join nation
          on (lineitem.l_suppkey = lineitem.l_orderkey)
        on (lineitem.l_tax < lineitem.l_discount)
      on (lineitem.l_shipinstruct >= lineitem.l_shipmode)
    right join partsupp
    on (lineitem.l_quantity is NULL)
where lineitem.l_extendedprice is not NULL
limit 109;
select  
  lineitem.l_receiptdate, 
  customer.c_name, 
  avg(
    cast(cast(null as float4) as float4))
from 
  orders
    inner join region
      left join customer
            inner join customer
            on (customer.c_custkey >= customer.c_nationkey)
          right join lineitem
          on (customer.c_mktsegment = lineitem.l_returnflag )
        right join customer
          left join customer
          on (customer.c_mktsegment >= customer.c_mktsegment)
        on (customer.c_mktsegment <= lineitem.l_shipmode)
      on (lineitem.l_receiptdate >= lineitem.l_commitdate)
    on (lineitem.l_quantity is NULL)
where customer.c_nationkey is not NULL
limit 111;
select  
  supplier.s_address, 
  supplier.s_name, 
  min(
    cast(supplier.s_phone as bpchar)), 
  supplier.s_suppkey, 
  min(
    cast(supplier.s_name as bpchar)), 
  supplier.s_address, 
  supplier.s_phone, 
  avg(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_address, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  max(
    cast(cast(null as timetz) as timetz)), 
  supplier.s_name, 
  supplier.s_phone, 
  supplier.s_acctbal, 
  supplier.s_comment, 
  supplier.s_comment, 
  avg(
    cast(cast(null as float4) as float4)), 
  count(*), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_comment, 
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  supplier
where supplier.s_name < supplier.s_phone
limit 149;
select  
  customer.c_comment
from 
  customer
where customer.c_comment is NULL
limit 80;
select  
  part.p_mfgr, 
  part.p_container, 
  part.p_brand, 
  part.p_container
from 
  part
where part.p_retailprice > part.p_retailprice
limit 25;
select  
  max(
    cast(cast(null as inet) as inet)), 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  max(
    cast(cast(null as "time") as "time")), 
  region.r_name, 
  max(
    cast(region.r_name as bpchar)), 
  region.r_name, 
  region.r_comment
from 
  region
where region.r_name <= region.r_name
limit 73;
select  
  lineitem.l_shipmode, 
  max(
    cast(cast(null as "time") as "time")), 
  lineitem.l_extendedprice, 
  partsupp.ps_comment, 
  lineitem.l_linestatus
from 
  lineitem
        right join orders
          left join lineitem
          on (lineitem.l_partkey < orders.o_orderkey)
        on (lineitem.l_commitdate > lineitem.l_receiptdate)
      right join partsupp
        right join nation
          left join supplier
            right join partsupp
            on (supplier.s_phone <= supplier.s_phone)
          on (supplier.s_acctbal < supplier.s_acctbal)
        on (supplier.s_acctbal <= supplier.s_acctbal)
      on (lineitem.l_shipdate <= lineitem.l_commitdate)
    inner join lineitem
      right join customer
      on (lineitem.l_receiptdate >= lineitem.l_shipdate)
    on (partsupp.ps_suppkey is not NULL)
where partsupp.ps_comment is not NULL
limit 130;
select  
  lineitem.l_receiptdate, 
  lineitem.l_linestatus
from 
  lineitem
where lineitem.l_commitdate is not NULL
limit 83;
select  
  partsupp.ps_comment
from 
  supplier
          left join supplier
          on (supplier.s_suppkey = supplier.s_suppkey )
        inner join nation
        on (supplier.s_acctbal >= supplier.s_acctbal)
      left join region
      on (nation.n_name = region.r_name )
    inner join nation
      right join partsupp
      on (nation.n_name = nation.n_name)
    on (partsupp.ps_partkey is NULL)
where supplier.s_acctbal = supplier.s_acctbal
limit 114;
select  
  orders.o_orderpriority, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  partsupp.ps_availqty
from 
  part
      left join supplier
        left join part
            inner join orders
            on (orders.o_totalprice = part.p_retailprice)
          inner join nation
          on (orders.o_orderkey < part.p_partkey)
        on (supplier.s_name > nation.n_name)
      on (orders.o_orderkey > part.p_size)
    inner join region
      left join supplier
          left join region
          on (region.r_name <= supplier.s_phone)
        inner join partsupp
          inner join nation
          on (partsupp.ps_supplycost > partsupp.ps_supplycost)
        on (supplier.s_phone >= supplier.s_phone)
      on (region.r_name < supplier.s_phone)
    on (supplier.s_nationkey is NULL)
where part.p_mfgr is not NULL
limit 81;
select  
  part.p_type, 
  customer.c_address
from 
  part
      right join supplier
      on (supplier.s_name > part.p_container)
    left join customer
          right join supplier
              left join orders
              on (supplier.s_phone < orders.o_clerk)
            inner join part
            on (orders.o_orderdate > orders.o_orderdate)
          on (part.p_container < orders.o_orderpriority)
        inner join partsupp
        on (orders.o_totalprice <= orders.o_totalprice)
      right join partsupp
      on (partsupp.ps_comment = partsupp.ps_comment )
    on (partsupp.ps_comment is NULL)
where orders.o_totalprice is not NULL;
select  
  supplier.s_address, 
  min(
    cast(supplier.s_phone as bpchar)), 
  supplier.s_acctbal, 
  max(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_phone, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  count(*), 
  supplier.s_suppkey, 
  supplier.s_nationkey, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  supplier.s_suppkey, 
  supplier.s_phone, 
  supplier.s_suppkey, 
  supplier.s_address, 
  supplier.s_suppkey, 
  supplier.s_address, 
  supplier.s_suppkey, 
  sum(
    cast(cast(null as float8) as float8)), 
  supplier.s_acctbal, 
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_address, 
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as date) as date)), 
  max(
    cast(supplier.s_name as bpchar)), 
  count(*), 
  supplier.s_acctbal, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_nationkey >= supplier.s_nationkey
limit 185;
select  
  orders.o_shippriority, 
  customer.c_address
from 
  part
      right join supplier
      on (part.p_brand = supplier.s_name )
    inner join customer
      left join nation
        inner join orders
        on (orders.o_shippriority >= nation.n_nationkey)
      on (customer.c_address = nation.n_comment )
    on (customer.c_name is NULL)
where part.p_partkey is NULL
limit 49;
select  
  region.r_comment, 
  region.r_comment, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_comment, 
  region.r_name
from 
  region
where region.r_name is not NULL
limit 90;
select  
  customer.c_custkey, 
  customer.c_acctbal, 
  avg(
    cast(cast(null as int8) as int8)), 
  customer.c_phone, 
  customer.c_phone, 
  customer.c_custkey, 
  customer.c_nationkey, 
  max(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_name, 
  customer.c_acctbal, 
  customer.c_mktsegment, 
  customer.c_phone, 
  customer.c_nationkey, 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_comment, 
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  customer.c_nationkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  customer.c_nationkey, 
  customer.c_address, 
  customer.c_comment, 
  customer.c_acctbal, 
  customer.c_acctbal, 
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as float4) as float4)), 
  customer.c_name, 
  customer.c_nationkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  customer.c_phone, 
  customer.c_comment, 
  customer.c_phone, 
  customer.c_comment, 
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_phone, 
  customer.c_nationkey, 
  customer.c_comment, 
  customer.c_address
from 
  customer
where customer.c_custkey is not NULL
limit 41;
select  
  customer.c_name, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_regionkey, 
  customer.c_comment, 
  supplier.s_nationkey, 
  supplier.s_nationkey
from 
  supplier
      left join customer
        inner join supplier
        on (supplier.s_acctbal > customer.c_acctbal)
      on (supplier.s_suppkey = customer.c_custkey )
    left join region
    on (supplier.s_name = region.r_name)
where supplier.s_phone >= supplier.s_name
limit 145;
select  
  partsupp.ps_partkey, 
  partsupp.ps_supplycost
from 
  lineitem
      right join supplier
      on (lineitem.l_linestatus = supplier.s_name )
    inner join partsupp
      inner join part
      on (partsupp.ps_supplycost = partsupp.ps_supplycost)
    on (partsupp.ps_supplycost is NULL)
where lineitem.l_commitdate = lineitem.l_shipdate
limit 184;
select  
  min(
    cast(cast(null as tid) as tid)), 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_comment is NULL
limit 141;
select  
  orders.o_clerk, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  orders.o_orderdate, 
  orders.o_custkey, 
  min(
    cast(cast(null as text) as text)), 
  nation.n_name, 
  partsupp.ps_supplycost, 
  sum(
    cast(orders.o_totalprice as "numeric"))
from 
  orders
      inner join region
        right join nation
          left join nation
          on (nation.n_name > nation.n_name)
        on (nation.n_name <= region.r_name)
      on (orders.o_totalprice < orders.o_totalprice)
    inner join nation
        right join orders
        on (nation.n_regionkey = orders.o_orderkey )
      right join partsupp
        right join orders
          right join supplier
          on (orders.o_totalprice <= supplier.s_acctbal)
        on (partsupp.ps_availqty <= orders.o_orderkey)
      on (orders.o_totalprice < orders.o_totalprice)
    on (orders.o_orderpriority > orders.o_clerk)
where orders.o_orderpriority <= orders.o_clerk
limit 30;
select  
  part.p_comment
from 
  part
where part.p_partkey > part.p_partkey;
select  
  customer.c_phone, 
  customer.c_name, 
  customer.c_address, 
  customer.c_address, 
  customer.c_phone, 
  sum(
    cast(customer.c_acctbal as "numeric")), 
  max(
    cast(cast(null as int8) as int8))
from 
  customer
where customer.c_comment is NULL
limit 42;
select  
  orders.o_shippriority, 
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_custkey
from 
  orders
where orders.o_shippriority = orders.o_shippriority;
select  
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as "interval") as "interval")), 
  nation.n_name, 
  min(
    cast(cast(null as tid) as tid)), 
  max(
    cast(cast(null as "time") as "time"))
from 
  partsupp
          right join nation
          on (partsupp.ps_availqty >= partsupp.ps_availqty)
        left join customer
        on (nation.n_nationkey >= partsupp.ps_availqty)
      inner join supplier
          inner join customer
            left join nation
              inner join nation
              on (nation.n_name >= nation.n_name)
            on (customer.c_custkey <= nation.n_regionkey)
          on (customer.c_acctbal > customer.c_acctbal)
        inner join supplier
        on (supplier.s_nationkey < nation.n_regionkey)
      on (supplier.s_acctbal > supplier.s_acctbal)
    inner join partsupp
      inner join region
          inner join orders
              inner join orders
              on (orders.o_totalprice = orders.o_totalprice )
            inner join nation
            on (nation.n_regionkey <= orders.o_orderkey)
          on (orders.o_totalprice <= orders.o_totalprice)
        inner join orders
              right join part
              on (orders.o_orderdate <= orders.o_orderdate)
            inner join supplier
            on (orders.o_orderdate = orders.o_orderdate)
          inner join lineitem
          on (orders.o_totalprice = part.p_retailprice)
        on (orders.o_shippriority = part.p_partkey )
      on (lineitem.l_partkey <= lineitem.l_orderkey)
    on (nation.n_name = region.r_name )
where orders.o_orderstatus <= supplier.s_name;
select  
  partsupp.ps_partkey, 
  min(
    cast(cast(null as int2) as int2)), 
  nation.n_comment, 
  supplier.s_name, 
  max(
    cast(cast(null as timetz) as timetz)), 
  partsupp.ps_partkey
from 
  customer
        inner join partsupp
          left join nation
          on (partsupp.ps_supplycost < partsupp.ps_supplycost)
        on (partsupp.ps_partkey < nation.n_nationkey)
      inner join supplier
      on (partsupp.ps_suppkey < customer.c_nationkey)
    right join supplier
    on (nation.n_nationkey >= supplier.s_nationkey)
where partsupp.ps_suppkey is not NULL
limit 68;
select  
  region.r_regionkey, 
  customer.c_comment
from 
  region
    inner join customer
        inner join part
        on (part.p_mfgr < customer.c_phone)
      right join part
      on (part.p_mfgr = customer.c_mktsegment)
    on (part.p_brand is not NULL)
where region.r_name < customer.c_mktsegment
limit 77;
select  
  max(
    cast(cast(null as float8) as float8))
from 
  nation
where nation.n_comment is not NULL;
select  
  sum(
    cast(cast(null as float4) as float4))
from 
  customer
      inner join nation
      on (customer.c_mktsegment <= customer.c_phone)
    left join region
        inner join region
              inner join lineitem
              on (lineitem.l_discount <= lineitem.l_discount)
            right join lineitem
            on (lineitem.l_orderkey = lineitem.l_orderkey )
          right join partsupp
            left join supplier
            on (supplier.s_phone <= supplier.s_name)
          on (lineitem.l_quantity > lineitem.l_discount)
        on (supplier.s_suppkey > lineitem.l_linenumber)
      right join supplier
      on (lineitem.l_tax < supplier.s_acctbal)
    on (lineitem.l_quantity = customer.c_acctbal)
where lineitem.l_shipdate <= lineitem.l_receiptdate
limit 139;
select  
  region.r_regionkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  region.r_comment, 
  region.r_name, 
  region.r_regionkey, 
  max(
    cast(cast(null as text) as text)), 
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey
from 
  region
where region.r_name is not NULL
limit 59;
select  
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_comment, 
  supplier.s_name, 
  min(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_suppkey <= supplier.s_suppkey
limit 144;
select  
  region.r_comment
from 
  region
where region.r_name > region.r_name;
select  
  nation.n_comment, 
  nation.n_name, 
  max(
    cast(nation.n_regionkey as int4)), 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_name, 
  nation.n_nationkey, 
  nation.n_nationkey, 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey
from 
  nation
where nation.n_regionkey = nation.n_nationkey;
select  
  orders.o_custkey, 
  orders.o_orderkey, 
  orders.o_comment, 
  orders.o_orderdate, 
  orders.o_shippriority, 
  orders.o_comment, 
  max(
    cast(cast(null as float8) as float8)), 
  orders.o_orderdate, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  orders.o_totalprice
from 
  orders
where orders.o_orderpriority > orders.o_orderstatus;
select  
  nation.n_regionkey, 
  supplier.s_address, 
  nation.n_comment, 
  supplier.s_comment, 
  supplier.s_address, 
  supplier.s_address, 
  supplier.s_name, 
  nation.n_name, 
  supplier.s_address, 
  nation.n_nationkey, 
  supplier.s_nationkey
from 
  supplier
    inner join nation
    on (supplier.s_comment = nation.n_comment )
where nation.n_name is NULL;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  region.r_name, 
  region.r_name
from 
  region
where region.r_comment is NULL
limit 138;
select  
  min(
    cast(cast(null as float8) as float8)), 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_acctbal, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_acctbal is not NULL
limit 62;
select  
  part.p_size, 
  region.r_regionkey, 
  part.p_comment, 
  supplier.s_acctbal, 
  supplier.s_comment, 
  orders.o_orderstatus, 
  orders.o_totalprice, 
  part.p_name
from 
  orders
      inner join part
        inner join supplier
        on (part.p_mfgr >= part.p_container)
      on (orders.o_orderdate > orders.o_orderdate)
    inner join region
    on (part.p_partkey = region.r_regionkey )
where orders.o_orderdate <= orders.o_orderdate
limit 105;
select  
  lineitem.l_comment, 
  lineitem.l_orderkey, 
  lineitem.l_partkey, 
  lineitem.l_orderkey, 
  lineitem.l_suppkey, 
  min(
    cast(lineitem.l_partkey as int4))
from 
  lineitem
where lineitem.l_quantity is not NULL
limit 56;
select  
  supplier.s_address, 
  supplier.s_nationkey, 
  supplier.s_phone
from 
  supplier
    right join partsupp
        left join customer
            inner join partsupp
            on (customer.c_phone < customer.c_mktsegment)
          inner join supplier
              right join orders
              on (supplier.s_acctbal <= supplier.s_acctbal)
            left join lineitem
            on (lineitem.l_commitdate < lineitem.l_receiptdate)
          on (partsupp.ps_suppkey < partsupp.ps_partkey)
        on (lineitem.l_tax = supplier.s_acctbal)
      inner join supplier
      on (supplier.s_name = orders.o_clerk)
    on (lineitem.l_commitdate < lineitem.l_receiptdate)
where lineitem.l_returnflag <= lineitem.l_linestatus
limit 100;
select  
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  max(
    cast(cast(null as text) as text)), 
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as float8) as float8)), 
  region.r_name
from 
  region
where region.r_name is not NULL
limit 101;
select  
  supplier.s_comment
from 
  supplier
where supplier.s_suppkey is NULL
limit 89;
select  
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as timetz) as timetz)), 
  partsupp.ps_availqty, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 48;
select  
  orders.o_comment, 
  max(
    cast(orders.o_totalprice as "numeric")), 
  sum(
    cast(cast(null as int8) as int8)), 
  customer.c_mktsegment, 
  orders.o_orderkey, 
  orders.o_totalprice, 
  customer.c_phone, 
  customer.c_nationkey, 
  orders.o_totalprice, 
  customer.c_phone, 
  customer.c_nationkey, 
  orders.o_shippriority, 
  orders.o_comment, 
  orders.o_shippriority
from 
  orders
    right join customer
    on (customer.c_mktsegment is not NULL)
where customer.c_address is not NULL
limit 28;
select  
  part.p_type, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  part.p_type
from 
  part
where part.p_retailprice is not NULL
limit 66;
select  
  orders.o_orderkey
from 
  orders
where orders.o_totalprice <= orders.o_totalprice
limit 115;
select  
  orders.o_orderpriority, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  orders.o_orderpriority, 
  max(
    cast(cast(null as xid8) as xid8)), 
  nation.n_nationkey, 
  nation.n_regionkey, 
  nation.n_regionkey
from 
  orders
    left join nation
    on (nation.n_regionkey is not NULL)
where orders.o_orderstatus is not NULL
limit 121;
select  
  customer.c_address, 
  customer.c_nationkey, 
  customer.c_comment, 
  customer.c_custkey, 
  customer.c_comment, 
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_comment, 
  customer.c_address, 
  customer.c_mktsegment, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  customer.c_phone, 
  customer.c_custkey, 
  customer.c_address, 
  customer.c_mktsegment, 
  customer.c_address, 
  customer.c_address, 
  customer.c_address, 
  customer.c_name, 
  customer.c_comment
from 
  customer
where customer.c_phone = customer.c_mktsegment
limit 93;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_suppkey is NULL
limit 22;
select  
  region.r_regionkey, 
  region.r_name, 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_regionkey is NULL
limit 52;
select  
  nation.n_nationkey, 
  nation.n_comment
from 
  nation
      inner join nation
      on (nation.n_regionkey < nation.n_nationkey)
    right join customer
    on (nation.n_regionkey is NULL)
where nation.n_nationkey is NULL;
select  
  part.p_brand, 
  sum(
    cast(part.p_size as int4)), 
  nation.n_regionkey, 
  part.p_size, 
  part.p_comment, 
  part.p_brand, 
  part.p_container, 
  part.p_type
from 
  part
    inner join nation
      inner join part
      on (nation.n_nationkey > nation.n_regionkey)
    on (part.p_size < part.p_partkey)
where nation.n_comment is not NULL;
select  
  customer.c_acctbal, 
  customer.c_nationkey, 
  max(
    cast(cast(null as oid) as oid)), 
  customer.c_comment, 
  max(
    cast(cast(null as float8) as float8)), 
  avg(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_comment, 
  customer.c_mktsegment, 
  customer.c_mktsegment
from 
  customer
where customer.c_phone is not NULL
limit 152;
select  
  lineitem.l_tax, 
  lineitem.l_partkey, 
  lineitem.l_shipmode, 
  lineitem.l_quantity
from 
  lineitem
where lineitem.l_commitdate is not NULL
limit 98;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  partsupp.ps_availqty, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_supplycost is NULL;
select  
  supplier.s_acctbal, 
  supplier.s_phone, 
  lineitem.l_discount, 
  supplier.s_acctbal
from 
  lineitem
    left join supplier
    on (lineitem.l_commitdate is NULL)
where lineitem.l_shipinstruct is not NULL;
select  
  min(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as text) as text)), 
  lineitem.l_shipinstruct, 
  lineitem.l_tax, 
  customer.c_phone, 
  lineitem.l_suppkey, 
  customer.c_acctbal, 
  lineitem.l_partkey, 
  lineitem.l_partkey, 
  lineitem.l_quantity, 
  lineitem.l_returnflag, 
  lineitem.l_quantity, 
  lineitem.l_linestatus, 
  customer.c_nationkey, 
  lineitem.l_shipmode, 
  lineitem.l_suppkey, 
  min(
    cast(lineitem.l_suppkey as int4)), 
  customer.c_custkey
from 
  customer
    inner join lineitem
    on (customer.c_nationkey = lineitem.l_orderkey )
where lineitem.l_orderkey >= customer.c_custkey;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  max(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_suppkey, 
  min(
    cast(cast(null as "time") as "time")), 
  partsupp.ps_availqty, 
  partsupp.ps_availqty, 
  min(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_partkey is NULL
limit 67;
select  
  max(
    cast(cast(null as float8) as float8)), 
  nation.n_nationkey
from 
  nation
where nation.n_nationkey is not NULL
limit 115;
select  
  orders.o_orderdate, 
  orders.o_clerk, 
  orders.o_orderstatus, 
  orders.o_orderstatus, 
  orders.o_orderstatus, 
  max(
    cast(cast(null as text) as text)), 
  orders.o_orderpriority, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  orders.o_orderdate, 
  orders.o_orderdate, 
  orders.o_custkey
from 
  orders
where orders.o_custkey is not NULL
limit 102;
select  
  part.p_comment, 
  count(*), 
  lineitem.l_discount, 
  region.r_comment, 
  sum(
    cast(cast(null as float8) as float8)), 
  supplier.s_name, 
  supplier.s_suppkey
from 
  supplier
      inner join lineitem
        right join partsupp
            left join supplier
            on (supplier.s_name > supplier.s_phone)
          right join region
          on (supplier.s_suppkey = region.r_regionkey )
        on (lineitem.l_suppkey >= lineitem.l_linenumber)
      on (lineitem.l_receiptdate < lineitem.l_shipdate)
    left join part
    on (supplier.s_suppkey is not NULL)
where lineitem.l_quantity is not NULL;
select  
  lineitem.l_suppkey
from 
  nation
        left join customer
            right join customer
            on (customer.c_nationkey <= customer.c_nationkey)
          left join partsupp
            left join nation
            on (nation.n_regionkey > nation.n_regionkey)
          on (customer.c_custkey >= customer.c_nationkey)
        on (customer.c_acctbal >= customer.c_acctbal)
      right join customer
        inner join part
          inner join lineitem
            inner join nation
            on (lineitem.l_comment = nation.n_comment )
          on (lineitem.l_linenumber = part.p_partkey)
        on (customer.c_acctbal > lineitem.l_tax)
      on (part.p_brand = customer.c_phone)
    left join partsupp
        right join lineitem
          left join supplier
          on (lineitem.l_shipdate = lineitem.l_receiptdate)
        on (lineitem.l_receiptdate >= lineitem.l_shipdate)
      inner join customer
      on (partsupp.ps_supplycost = customer.c_acctbal )
    on (partsupp.ps_supplycost <= lineitem.l_discount)
where lineitem.l_receiptdate >= lineitem.l_commitdate
limit 121;
select  
  part.p_retailprice, 
  part.p_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  part.p_container
from 
  partsupp
      inner join partsupp
        inner join part
        on (partsupp.ps_supplycost > partsupp.ps_supplycost)
      on (part.p_mfgr = part.p_brand)
    inner join region
    on (partsupp.ps_supplycost < partsupp.ps_supplycost)
where partsupp.ps_partkey is not NULL
limit 36;
select  
  lineitem.l_orderkey
from 
  customer
    inner join region
        inner join lineitem
        on (lineitem.l_suppkey <= lineitem.l_partkey)
      left join nation
              inner join partsupp
              on (partsupp.ps_supplycost <= partsupp.ps_supplycost)
            left join region
            on (nation.n_name > nation.n_name)
          inner join region
          on (region.r_comment = region.r_comment )
        inner join lineitem
            left join partsupp
              left join orders
              on (orders.o_orderdate <= orders.o_orderdate)
            on (orders.o_orderdate <= lineitem.l_receiptdate)
          inner join nation
          on (lineitem.l_linenumber = nation.n_nationkey )
        on (lineitem.l_orderkey < region.r_regionkey)
      on (lineitem.l_commitdate > lineitem.l_shipdate)
    on (lineitem.l_partkey = partsupp.ps_availqty)
where partsupp.ps_suppkey is not NULL
limit 174;
select  
  part.p_brand, 
  part.p_size
from 
  part
where part.p_mfgr is NULL
limit 77;
select  
  min(
    cast(cast(null as float4) as float4)), 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_comment, 
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_nationkey, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  nation.n_comment, 
  nation.n_regionkey
from 
  nation
where nation.n_regionkey is NULL;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as int8) as int8)), 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_regionkey, 
  nation.n_nationkey, 
  nation.n_comment, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  max(
    cast(cast(null as tid) as tid)), 
  nation.n_regionkey, 
  nation.n_nationkey, 
  sum(
    cast(cast(null as int8) as int8)), 
  nation.n_nationkey, 
  nation.n_regionkey
from 
  nation
where nation.n_name = nation.n_name
limit 136;
select  
  min(
    cast(cast(null as float8) as float8))
from 
  nation
    left join region
        right join lineitem
          left join supplier
          on (lineitem.l_shipdate >= lineitem.l_commitdate)
        on (lineitem.l_suppkey <= lineitem.l_linenumber)
      right join partsupp
      on (supplier.s_acctbal = partsupp.ps_supplycost )
    on (nation.n_nationkey = region.r_regionkey )
where partsupp.ps_availqty >= nation.n_regionkey
limit 109;
select  
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  min(
    cast(cast(null as "time") as "time")), 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 165;
select  
  part.p_type, 
  min(
    cast(customer.c_acctbal as "numeric")), 
  orders.o_orderdate, 
  max(
    cast(orders.o_orderdate as date)), 
  customer.c_nationkey, 
  orders.o_orderdate, 
  customer.c_comment, 
  supplier.s_acctbal, 
  region.r_comment, 
  avg(
    cast(supplier.s_acctbal as "numeric")), 
  region.r_comment, 
  supplier.s_phone, 
  orders.o_orderstatus
from 
  supplier
      inner join part
      on (part.p_retailprice > part.p_retailprice)
    left join region
        left join customer
        on (customer.c_acctbal = customer.c_acctbal)
      left join orders
      on (region.r_regionkey = orders.o_orderkey )
    on (orders.o_orderstatus is not NULL)
where part.p_retailprice = supplier.s_acctbal
limit 158;
select  
  lineitem.l_receiptdate, 
  lineitem.l_commitdate, 
  lineitem.l_partkey, 
  lineitem.l_orderkey, 
  lineitem.l_orderkey, 
  lineitem.l_suppkey, 
  lineitem.l_receiptdate, 
  lineitem.l_quantity, 
  lineitem.l_commitdate, 
  lineitem.l_shipmode
from 
  lineitem
where lineitem.l_shipinstruct is NULL
limit 35;
select  
  nation.n_nationkey, 
  customer.c_comment, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  avg(
    cast(orders.o_totalprice as "numeric"))
from 
  orders
    inner join nation
      inner join customer
        inner join orders
        on (customer.c_name = orders.o_comment )
      on (customer.c_acctbal = orders.o_totalprice)
    on (customer.c_comment is not NULL)
where orders.o_orderpriority is NULL
limit 43;
select  
  part.p_container
from 
  part
where part.p_comment is NULL
limit 87;
select  
  partsupp.ps_supplycost, 
  count(
    cast(partsupp.ps_supplycost as "numeric"))
from 
  partsupp
where partsupp.ps_suppkey <= partsupp.ps_partkey
limit 64;
select  
  min(
    cast(cast(null as xid8) as xid8))
from 
  part
where part.p_name is NULL
limit 130;
select  
  part.p_name, 
  part.p_type, 
  max(
    cast(cast(null as date) as date)), 
  min(
    cast(part.p_brand as bpchar)), 
  part.p_size, 
  part.p_type
from 
  part
where part.p_partkey is not NULL
limit 25;
select  
  nation.n_regionkey, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  orders.o_shippriority, 
  orders.o_orderdate, 
  orders.o_orderdate, 
  nation.n_regionkey, 
  orders.o_comment, 
  orders.o_clerk
from 
  orders
    inner join nation
    on (orders.o_totalprice >= orders.o_totalprice)
where orders.o_orderdate > orders.o_orderdate
limit 116;
select  
  orders.o_clerk, 
  min(
    cast(cast(null as "time") as "time")), 
  orders.o_orderkey, 
  orders.o_orderdate, 
  orders.o_shippriority, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  orders.o_totalprice, 
  orders.o_comment, 
  avg(
    cast(cast(null as int8) as int8)), 
  orders.o_custkey, 
  orders.o_orderkey, 
  orders.o_custkey, 
  orders.o_orderstatus, 
  orders.o_orderkey, 
  orders.o_orderstatus, 
  orders.o_orderkey, 
  orders.o_orderstatus
from 
  orders
where orders.o_orderdate >= orders.o_orderdate
limit 66;
select  
  nation.n_regionkey, 
  nation.n_nationkey
from 
  supplier
      right join nation
      on (supplier.s_phone <= nation.n_name)
    right join part
      inner join nation
        left join lineitem
        on (lineitem.l_shipdate < lineitem.l_commitdate)
      on (lineitem.l_discount = part.p_retailprice)
    on (lineitem.l_linestatus > part.p_mfgr)
where nation.n_nationkey is not NULL
limit 53;
select  
  sum(
    cast(part.p_retailprice as "numeric")), 
  part.p_container, 
  part.p_size, 
  part.p_brand, 
  part.p_comment, 
  part.p_size
from 
  part
where part.p_brand is NULL;
select  
  part.p_size, 
  part.p_mfgr, 
  part.p_container, 
  part.p_partkey, 
  max(
    cast(part.p_container as bpchar)), 
  part.p_partkey, 
  part.p_partkey, 
  part.p_type, 
  part.p_partkey, 
  part.p_size, 
  part.p_partkey, 
  part.p_type, 
  part.p_container, 
  part.p_mfgr
from 
  part
where part.p_partkey <= part.p_partkey
limit 72;
select  
  supplier.s_comment, 
  supplier.s_name, 
  max(
    cast(cast(null as text) as text))
from 
  supplier
where supplier.s_acctbal >= supplier.s_acctbal
limit 100;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  part.p_type, 
  max(
    cast(cast(null as xid8) as xid8)), 
  customer.c_nationkey, 
  part.p_mfgr, 
  part.p_mfgr, 
  customer.c_custkey, 
  max(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as int2) as int2)), 
  customer.c_acctbal, 
  customer.c_acctbal, 
  customer.c_acctbal, 
  customer.c_acctbal, 
  max(
    cast(cast(null as "interval") as "interval")), 
  part.p_comment, 
  part.p_type
from 
  customer
      inner join part
      on (part.p_retailprice > part.p_retailprice)
    right join customer
    on (customer.c_comment is not NULL)
where customer.c_nationkey is NULL
limit 111;
select  
  customer.c_custkey, 
  part.p_retailprice, 
  orders.o_orderpriority, 
  customer.c_custkey, 
  partsupp.ps_comment
from 
  lineitem
          right join lineitem
          on (lineitem.l_shipdate > lineitem.l_shipdate)
        right join part
        on (part.p_partkey = part.p_size)
      inner join customer
        left join customer
          inner join partsupp
            right join orders
            on (partsupp.ps_partkey >= orders.o_shippriority)
          on (partsupp.ps_availqty = orders.o_shippriority)
        on (customer.c_comment = orders.o_comment )
      on (lineitem.l_quantity = partsupp.ps_supplycost )
    inner join part
    on (orders.o_totalprice <= part.p_retailprice)
where part.p_size is not NULL
limit 87;
select  
  orders.o_comment, 
  orders.o_orderstatus, 
  orders.o_comment, 
  min(
    cast(cast(null as int2) as int2))
from 
  orders
where orders.o_totalprice >= orders.o_totalprice
limit 154;
select  
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  max(
    cast(cast(null as date) as date)), 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_supplycost is NULL;
select  
  region.r_comment
from 
  region
where region.r_regionkey is not NULL
limit 19;
select  
  avg(
    cast(region.r_regionkey as int4))
from 
  region
where region.r_comment is not NULL
limit 71;
select  
  region.r_comment, 
  region.r_name, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  region.r_name, 
  partsupp.ps_availqty
from 
  region
            right join region
            on (region.r_name = region.r_name )
          left join region
            left join customer
            on (customer.c_custkey > customer.c_custkey)
          on (customer.c_mktsegment > region.r_name)
        left join region
          inner join region
          on (region.r_regionkey >= region.r_regionkey)
        on (region.r_regionkey = region.r_regionkey)
      left join customer
        inner join nation
              left join supplier
              on (nation.n_name <= nation.n_name)
            left join region
            on (supplier.s_acctbal >= supplier.s_acctbal)
          right join region
          on (supplier.s_acctbal >= supplier.s_acctbal)
        on (customer.c_comment = region.r_comment )
      on (region.r_regionkey > region.r_regionkey)
    inner join region
        inner join partsupp
        on (partsupp.ps_partkey >= partsupp.ps_availqty)
      left join supplier
      on (region.r_regionkey >= partsupp.ps_suppkey)
    on (supplier.s_acctbal is NULL)
where region.r_name is NULL;
select  
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  min(
    cast(cast(null as float8) as float8))
from 
  nation
    right join region
        right join region
          inner join lineitem
          on (region.r_regionkey > lineitem.l_partkey)
        on (lineitem.l_shipdate < lineitem.l_shipdate)
      inner join region
        right join customer
          right join lineitem
            left join region
            on (lineitem.l_orderkey = lineitem.l_suppkey)
          on (lineitem.l_receiptdate >= lineitem.l_commitdate)
        on (region.r_name = lineitem.l_linestatus)
      on (lineitem.l_returnflag <= lineitem.l_shipinstruct)
    on (nation.n_comment = customer.c_name )
where nation.n_comment is NULL
limit 19;
select  
  orders.o_orderpriority, 
  max(
    cast(cast(null as timetz) as timetz)), 
  orders.o_custkey, 
  orders.o_totalprice
from 
  orders
where orders.o_shippriority is NULL
limit 77;
select  
  orders.o_clerk, 
  max(
    cast(cast(null as inet) as inet)), 
  orders.o_orderkey, 
  orders.o_orderkey, 
  orders.o_orderstatus
from 
  orders
where orders.o_orderdate is not NULL;
select  
  min(
    cast(partsupp.ps_partkey as int4)), 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_supplycost = partsupp.ps_supplycost
limit 153;
select  
  min(
    cast(cast(null as inet) as inet)), 
  max(
    cast(cast(null as float8) as float8)), 
  sum(
    cast(customer.c_acctbal as "numeric")), 
  customer.c_custkey, 
  customer.c_custkey, 
  count(
    cast(customer.c_phone as bpchar)), 
  customer.c_address, 
  customer.c_name, 
  customer.c_name, 
  customer.c_nationkey
from 
  customer
where customer.c_address is not NULL
limit 39;
select  
  orders.o_orderkey, 
  max(
    cast(cast(null as tid) as tid)), 
  orders.o_custkey, 
  orders.o_totalprice, 
  lineitem.l_returnflag, 
  orders.o_comment, 
  lineitem.l_shipdate, 
  orders.o_orderdate, 
  lineitem.l_shipmode, 
  lineitem.l_shipmode, 
  lineitem.l_suppkey, 
  orders.o_clerk, 
  lineitem.l_discount, 
  orders.o_orderdate, 
  partsupp.ps_supplycost
from 
  partsupp
    inner join lineitem
      left join orders
        inner join lineitem
        on (lineitem.l_extendedprice > lineitem.l_discount)
      on (lineitem.l_suppkey = lineitem.l_suppkey)
    on (lineitem.l_orderkey <= lineitem.l_partkey)
where lineitem.l_receiptdate is not NULL
limit 164;
select  
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_address
from 
  supplier
where supplier.s_name is NULL
limit 97;
select  
  orders.o_orderstatus, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  lineitem.l_shipdate, 
  lineitem.l_shipmode, 
  region.r_comment, 
  lineitem.l_suppkey, 
  orders.o_shippriority, 
  region.r_name, 
  region.r_name
from 
  orders
      right join lineitem
      on (lineitem.l_tax = lineitem.l_tax)
    inner join region
      right join lineitem
      on (region.r_regionkey > lineitem.l_linenumber)
    on (lineitem.l_extendedprice is NULL)
where region.r_name is not NULL;
select  
  part.p_comment
from 
  part
where part.p_brand is NULL;
select  
  part.p_comment, 
  min(
    cast(cast(null as float4) as float4))
from 
  part
    inner join part
    on (part.p_size is NULL)
where part.p_container is not NULL
limit 121;
select  
  lineitem.l_linenumber, 
  lineitem.l_partkey
from 
  lineitem
where lineitem.l_quantity > lineitem.l_quantity
limit 88;
select  
  customer.c_mktsegment
from 
  customer
    left join part
    on (customer.c_name = part.p_name )
where part.p_comment is not NULL;
select  
  supplier.s_name, 
  supplier.s_nationkey, 
  min(
    cast(cast(null as "interval") as "interval")), 
  supplier.s_name, 
  avg(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_phone, 
  supplier.s_address, 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  supplier.s_acctbal, 
  supplier.s_name
from 
  supplier
where supplier.s_address is NULL
limit 53;
select  
  supplier.s_name
from 
  supplier
where supplier.s_comment is NULL
limit 156;
select  
  supplier.s_acctbal, 
  nation.n_comment, 
  supplier.s_name, 
  supplier.s_nationkey, 
  nation.n_comment, 
  sum(
    cast(cast(null as int8) as int8)), 
  supplier.s_nationkey, 
  supplier.s_comment, 
  nation.n_comment, 
  supplier.s_address, 
  supplier.s_phone, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  supplier
      right join nation
      on (nation.n_nationkey = nation.n_nationkey)
    inner join nation
    on (supplier.s_name = nation.n_name )
where nation.n_regionkey < nation.n_regionkey;
select  
  supplier.s_acctbal
from 
  part
      inner join lineitem
        inner join nation
        on (lineitem.l_orderkey > lineitem.l_linenumber)
      on (part.p_brand = nation.n_name )
    left join supplier
      inner join supplier
      on (supplier.s_suppkey > supplier.s_suppkey)
    on (part.p_size is not NULL)
where supplier.s_name is not NULL
limit 36;
select  
  region.r_regionkey, 
  sum(
    cast(cast(null as float4) as float4)), 
  region.r_regionkey, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_name, 
  region.r_comment
from 
  region
where region.r_name is NULL
limit 59;
select  
  region.r_comment, 
  region.r_name, 
  region.r_name, 
  region.r_regionkey, 
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as money) as money)), 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  avg(
    cast(cast(null as int8) as int8))
from 
  region
where region.r_comment is not NULL
limit 70;
select  
  part.p_mfgr, 
  part.p_mfgr, 
  part.p_mfgr, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  part.p_comment, 
  part.p_comment
from 
  part
where part.p_size is not NULL;
select  
  region.r_name, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_regionkey
from 
  region
where region.r_name is NULL
limit 95;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  partsupp
where partsupp.ps_supplycost is NULL
limit 101;
select  
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_phone, 
  min(
    cast(cast(null as date) as date)), 
  min(
    cast(supplier.s_phone as bpchar)), 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_acctbal >= supplier.s_acctbal;
select  
  part.p_partkey, 
  min(
    cast(cast(null as text) as text)), 
  part.p_type
from 
  part
where part.p_retailprice = part.p_retailprice
limit 112;
select  
  customer.c_nationkey, 
  customer.c_name, 
  customer.c_phone
from 
  customer
where customer.c_comment is not NULL
limit 153;
select  
  nation.n_comment, 
  lineitem.l_receiptdate, 
  max(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as float4) as float4)), 
  orders.o_clerk, 
  max(
    cast(cast(null as "interval") as "interval")), 
  nation.n_regionkey, 
  lineitem.l_shipdate, 
  nation.n_nationkey, 
  nation.n_comment, 
  part.p_container, 
  nation.n_regionkey, 
  max(
    cast(lineitem.l_receiptdate as date)), 
  nation.n_name, 
  lineitem.l_shipinstruct, 
  part.p_comment, 
  nation.n_name, 
  nation.n_regionkey, 
  nation.n_comment
from 
  orders
    right join part
      right join nation
          right join nation
          on (nation.n_regionkey > nation.n_regionkey)
        inner join lineitem
        on (lineitem.l_shipmode = lineitem.l_shipinstruct)
      on (part.p_partkey = nation.n_nationkey )
    on (lineitem.l_returnflag = orders.o_orderstatus)
where lineitem.l_tax is not NULL
limit 23;
select  
  nation.n_nationkey, 
  region.r_name
from 
  region
      right join partsupp
            inner join nation
              inner join supplier
                inner join orders
                on (supplier.s_nationkey = orders.o_orderkey )
              on (orders.o_totalprice > orders.o_totalprice)
            on (orders.o_orderdate < orders.o_orderdate)
          left join partsupp
            inner join region
            on (partsupp.ps_supplycost >= partsupp.ps_supplycost)
          on (nation.n_comment = region.r_comment )
        inner join part
        on (supplier.s_name <= region.r_name)
      on (orders.o_orderdate <= orders.o_orderdate)
    right join orders
    on (orders.o_orderdate is NULL)
where supplier.s_acctbal > orders.o_totalprice;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  sum(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  avg(
    cast(cast(null as float4) as float4)), 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_availqty is NULL
limit 130;
select distinct 
  supplier.s_acctbal, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  max(
    cast(cast(null as timetz) as timetz)), 
  supplier.s_nationkey, 
  avg(
    cast(cast(null as float8) as float8)), 
  supplier.s_acctbal, 
  supplier.s_suppkey, 
  supplier.s_address, 
  max(
    cast(cast(null as int2) as int2)), 
  supplier.s_suppkey, 
  supplier.s_name, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_comment is not NULL
limit 106;
select  
  max(
    cast(cast(null as float4) as float4)), 
  part.p_mfgr, 
  sum(
    cast(cast(null as int2) as int2)), 
  part.p_container, 
  part.p_type, 
  customer.c_phone, 
  customer.c_acctbal, 
  customer.c_acctbal
from 
  customer
    inner join part
    on (customer.c_phone = part.p_mfgr )
where part.p_container is NULL
limit 79;
select  
  customer.c_custkey, 
  customer.c_mktsegment, 
  partsupp.ps_supplycost
from 
  partsupp
      left join part
      on (partsupp.ps_suppkey = part.p_partkey )
    inner join customer
    on (customer.c_custkey is not NULL)
where partsupp.ps_partkey is NULL;
select  
  region.r_comment, 
  region.r_name, 
  region.r_regionkey
from 
  region
where region.r_name is not NULL
limit 96;
select  
  supplier.s_comment, 
  partsupp.ps_suppkey, 
  nation.n_nationkey, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_comment
from 
  nation
        inner join lineitem
        on (lineitem.l_returnflag <= lineitem.l_shipinstruct)
      inner join partsupp
        inner join supplier
          left join partsupp
          on (partsupp.ps_supplycost > partsupp.ps_supplycost)
        on (partsupp.ps_availqty >= partsupp.ps_availqty)
      on (lineitem.l_quantity > lineitem.l_discount)
    inner join customer
    on (partsupp.ps_supplycost < lineitem.l_discount)
where customer.c_address is not NULL
limit 90;
select  
  region.r_name, 
  region.r_name, 
  region.r_comment, 
  region.r_comment, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_comment
from 
  region
where region.r_comment is not NULL
limit 79;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment
from 
  partsupp
where partsupp.ps_supplycost is not NULL
limit 109;
select  
  customer.c_nationkey, 
  partsupp.ps_availqty, 
  part.p_retailprice, 
  customer.c_acctbal, 
  partsupp.ps_comment, 
  partsupp.ps_availqty, 
  sum(
    cast(partsupp.ps_availqty as int4)), 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as text) as text)), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  avg(
    cast(cast(null as int2) as int2)), 
  part.p_comment
from 
  nation
      inner join partsupp
      on (partsupp.ps_suppkey < nation.n_nationkey)
    right join customer
      inner join part
      on (customer.c_acctbal = customer.c_acctbal)
    on (partsupp.ps_comment = part.p_name )
where partsupp.ps_supplycost is NULL
limit 62;
select  
  customer.c_mktsegment
from 
  partsupp
    left join customer
        left join part
          left join orders
          on (orders.o_orderdate > orders.o_orderdate)
        on (orders.o_orderkey < orders.o_orderkey)
      inner join partsupp
        inner join part
        on (part.p_container > part.p_container)
      on (part.p_mfgr > part.p_brand)
    on (part.p_brand = customer.c_mktsegment)
where customer.c_comment is NULL;
select  
  region.r_regionkey, 
  region.r_name, 
  partsupp.ps_partkey, 
  customer.c_comment, 
  partsupp.ps_partkey, 
  nation.n_regionkey
from 
  nation
    inner join region
          right join partsupp
          on (region.r_name > region.r_name)
        right join supplier
              left join part
              on (part.p_size >= part.p_size)
            inner join partsupp
            on (part.p_size = partsupp.ps_partkey )
          left join nation
          on (partsupp.ps_supplycost < partsupp.ps_supplycost)
        on (partsupp.ps_supplycost > part.p_retailprice)
      left join customer
        inner join customer
        on (customer.c_comment = customer.c_name )
      on (partsupp.ps_comment = customer.c_name )
    on (nation.n_comment is not NULL)
where customer.c_address is NULL
limit 131;
select  
  nation.n_name, 
  nation.n_regionkey, 
  max(
    cast(cast(null as float4) as float4)), 
  nation.n_comment, 
  nation.n_comment, 
  nation.n_name, 
  max(
    cast(cast(null as float4) as float4)), 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is NULL
limit 135;
select  
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_suppkey is NULL;
select  
  nation.n_regionkey, 
  nation.n_nationkey
from 
  supplier
    inner join lineitem
        inner join partsupp
          inner join nation
          on (partsupp.ps_availqty = nation.n_nationkey )
        on (lineitem.l_comment = partsupp.ps_comment )
      left join orders
        right join supplier
            inner join supplier
              left join nation
                left join nation
                on (nation.n_name >= nation.n_name)
              on (supplier.s_acctbal = supplier.s_acctbal)
            on (supplier.s_acctbal < supplier.s_acctbal)
          inner join part
              inner join partsupp
              on (part.p_retailprice = partsupp.ps_supplycost)
            left join nation
            on (nation.n_name = part.p_container)
          on (supplier.s_acctbal >= partsupp.ps_supplycost)
        on (supplier.s_acctbal < supplier.s_acctbal)
      on (lineitem.l_returnflag = lineitem.l_shipmode)
    on (orders.o_shippriority is NULL)
where nation.n_regionkey is NULL;
select  
  orders.o_orderdate, 
  orders.o_orderstatus, 
  orders.o_comment, 
  orders.o_totalprice, 
  orders.o_orderkey
from 
  orders
where orders.o_custkey is NULL
limit 131;
select  
  region.r_name, 
  region.r_comment, 
  count(
    cast(region.r_name as bpchar)), 
  region.r_name
from 
  region
where region.r_regionkey >= region.r_regionkey;
select  
  nation.n_regionkey, 
  min(
    cast(lineitem.l_orderkey as int4))
from 
  orders
    left join customer
        left join orders
        on (customer.c_acctbal >= customer.c_acctbal)
      inner join orders
          inner join orders
          on (orders.o_custkey = orders.o_custkey)
        right join nation
            right join partsupp
            on (nation.n_name < nation.n_name)
          left join lineitem
          on (lineitem.l_suppkey = nation.n_regionkey)
        on (orders.o_orderkey = lineitem.l_orderkey )
      on (lineitem.l_commitdate < orders.o_orderdate)
    on (orders.o_orderdate = orders.o_orderdate)
where partsupp.ps_comment is not NULL
limit 120;
select  
  partsupp.ps_availqty, 
  region.r_comment, 
  partsupp.ps_supplycost, 
  orders.o_orderdate
from 
  lineitem
      left join lineitem
      on (lineitem.l_tax = lineitem.l_tax)
    inner join orders
          inner join region
          on (orders.o_totalprice < orders.o_totalprice)
        inner join orders
        on (orders.o_shippriority = orders.o_orderkey )
      right join nation
          inner join partsupp
          on (nation.n_name > nation.n_name)
        left join nation
        on (partsupp.ps_comment = nation.n_comment )
      on (region.r_comment = partsupp.ps_comment )
    on (lineitem.l_receiptdate > lineitem.l_commitdate)
where lineitem.l_extendedprice is NULL;
select  
  customer.c_mktsegment, 
  customer.c_name, 
  customer.c_mktsegment, 
  customer.c_mktsegment, 
  customer.c_address, 
  customer.c_mktsegment, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  customer
where customer.c_comment is NULL;
select  
  lineitem.l_linestatus, 
  lineitem.l_shipinstruct, 
  lineitem.l_partkey, 
  lineitem.l_extendedprice, 
  min(
    cast(lineitem.l_extendedprice as "numeric")), 
  lineitem.l_partkey, 
  lineitem.l_quantity, 
  lineitem.l_partkey, 
  max(
    cast(cast(null as inet) as inet)), 
  lineitem.l_quantity, 
  lineitem.l_tax, 
  sum(
    cast(lineitem.l_discount as "numeric")), 
  lineitem.l_discount, 
  lineitem.l_discount, 
  lineitem.l_shipmode, 
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_shipmode is not NULL
limit 53;
select  
  region.r_regionkey
from 
  region
where region.r_name = region.r_name
limit 66;
select  
  supplier.s_comment, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_phone, 
  supplier.s_name, 
  supplier.s_nationkey, 
  supplier.s_phone, 
  supplier.s_nationkey, 
  supplier.s_address, 
  supplier.s_suppkey, 
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_suppkey, 
  supplier.s_name, 
  supplier.s_address, 
  supplier.s_name, 
  supplier.s_acctbal, 
  supplier.s_address
from 
  supplier
where supplier.s_acctbal is NULL
limit 79;
select  
  lineitem.l_linenumber, 
  lineitem.l_returnflag, 
  lineitem.l_receiptdate, 
  lineitem.l_quantity, 
  lineitem.l_partkey, 
  lineitem.l_discount
from 
  lineitem
where lineitem.l_shipmode = lineitem.l_returnflag
limit 29;
select  
  partsupp.ps_comment, 
  region.r_name, 
  partsupp.ps_supplycost, 
  partsupp.ps_partkey, 
  region.r_name, 
  partsupp.ps_partkey, 
  min(
    cast(cast(null as tid) as tid)), 
  region.r_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  region.r_regionkey, 
  partsupp.ps_partkey, 
  region.r_name, 
  region.r_name, 
  partsupp.ps_suppkey, 
  region.r_name
from 
  region
    right join partsupp
    on (region.r_name >= region.r_name)
where partsupp.ps_availqty >= region.r_regionkey;
select  
  part.p_mfgr, 
  customer.c_acctbal, 
  part.p_brand
from 
  customer
    inner join part
    on (customer.c_custkey = part.p_partkey )
where part.p_name is NULL
limit 156;
select  
  orders.o_orderpriority, 
  orders.o_orderdate, 
  orders.o_orderpriority, 
  orders.o_orderkey, 
  orders.o_orderpriority
from 
  orders
where orders.o_orderkey = orders.o_orderkey
limit 107;
select distinct 
  orders.o_clerk, 
  max(
    cast(cast(null as xid8) as xid8)), 
  orders.o_orderdate, 
  orders.o_orderkey, 
  orders.o_orderkey, 
  orders.o_orderkey, 
  orders.o_clerk, 
  orders.o_custkey
from 
  orders
where orders.o_comment is not NULL;
select  
  orders.o_orderkey, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  orders.o_comment, 
  customer.c_nationkey, 
  supplier.s_comment, 
  orders.o_custkey
from 
  customer
        left join orders
        on (orders.o_totalprice > customer.c_acctbal)
      left join nation
      on (orders.o_orderkey <= orders.o_shippriority)
    left join supplier
    on (orders.o_clerk is NULL)
where supplier.s_acctbal > customer.c_acctbal
limit 45;
select  
  nation.n_regionkey, 
  nation.n_name, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_name, 
  nation.n_comment, 
  nation.n_regionkey, 
  nation.n_regionkey
from 
  nation
where nation.n_nationkey is not NULL
limit 98;
select  
  region.r_comment, 
  lineitem.l_extendedprice, 
  lineitem.l_comment, 
  region.r_comment
from 
  region
    right join lineitem
    on (lineitem.l_linenumber >= lineitem.l_orderkey)
where lineitem.l_linestatus is not NULL
limit 106;
select  
  partsupp.ps_suppkey, 
  max(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as money) as money)), 
  partsupp.ps_suppkey, 
  partsupp.ps_partkey, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_availqty, 
  partsupp.ps_partkey, 
  avg(
    cast(partsupp.ps_supplycost as "numeric")), 
  partsupp.ps_partkey
from 
  partsupp
where partsupp.ps_suppkey is not NULL
limit 103;
select  
  orders.o_totalprice, 
  orders.o_shippriority, 
  min(
    cast(orders.o_clerk as bpchar)), 
  orders.o_shippriority, 
  orders.o_clerk, 
  orders.o_orderpriority, 
  orders.o_totalprice
from 
  orders
where orders.o_custkey is NULL
limit 127;
select  
  lineitem.l_orderkey, 
  lineitem.l_shipmode, 
  lineitem.l_linestatus, 
  lineitem.l_orderkey
from 
  lineitem
where lineitem.l_suppkey > lineitem.l_suppkey;
select  
  region.r_comment
from 
  region
    left join part
      left join lineitem
          inner join orders
            left join part
            on (part.p_mfgr >= orders.o_orderstatus)
          on (orders.o_totalprice = lineitem.l_quantity)
        inner join customer
        on (customer.c_mktsegment >= customer.c_phone)
      on (lineitem.l_shipdate < orders.o_orderdate)
    on (part.p_mfgr is not NULL)
where customer.c_name is not NULL
limit 86;
select  
  supplier.s_phone, 
  part.p_mfgr, 
  part.p_size, 
  supplier.s_name, 
  supplier.s_phone, 
  part.p_brand, 
  avg(
    cast(supplier.s_suppkey as int4)), 
  supplier.s_comment
from 
  part
    inner join supplier
    on (part.p_retailprice = part.p_retailprice)
where supplier.s_phone is not NULL
limit 90;
select distinct 
  avg(
    cast(cast(null as float8) as float8)), 
  region.r_regionkey
from 
  region
where region.r_name is not NULL
limit 109;
select  
  customer.c_address, 
  partsupp.ps_comment, 
  orders.o_shippriority, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  lineitem.l_partkey, 
  customer.c_mktsegment, 
  partsupp.ps_partkey, 
  max(
    cast(cast(null as "interval") as "interval")), 
  customer.c_phone, 
  orders.o_orderstatus, 
  partsupp.ps_supplycost, 
  customer.c_name
from 
  lineitem
          inner join customer
          on (lineitem.l_receiptdate >= lineitem.l_shipdate)
        left join partsupp
        on (lineitem.l_shipinstruct > lineitem.l_returnflag)
      right join orders
      on (lineitem.l_quantity >= orders.o_totalprice)
    inner join customer
    on (customer.c_comment = customer.c_name )
where partsupp.ps_availqty is NULL
limit 123;
select  
  part.p_mfgr, 
  part.p_mfgr, 
  supplier.s_name, 
  supplier.s_address
from 
  supplier
        left join supplier
        on (supplier.s_phone <= supplier.s_phone)
      left join part
      on (supplier.s_nationkey = part.p_size)
    inner join part
    on (part.p_partkey is not NULL)
where supplier.s_comment is NULL
limit 30;
select  
  nation.n_nationkey, 
  region.r_regionkey
from 
  nation
    inner join region
    on (region.r_name >= nation.n_name)
where region.r_name = region.r_name;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  orders.o_orderkey, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_clerk
from 
  customer
        right join orders
        on (customer.c_phone = orders.o_orderstatus )
      inner join orders
      on (orders.o_orderstatus > orders.o_orderstatus)
    left join orders
    on (customer.c_nationkey = orders.o_orderkey )
where orders.o_custkey is NULL
limit 153;
select  
  region.r_name, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_name, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  region.r_name, 
  region.r_regionkey, 
  region.r_comment, 
  region.r_comment, 
  min(
    cast(cast(null as float8) as float8)), 
  region.r_regionkey, 
  region.r_name, 
  sum(
    cast(cast(null as int8) as int8)), 
  region.r_regionkey, 
  region.r_regionkey, 
  region.r_regionkey, 
  sum(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as text) as text)), 
  region.r_comment, 
  region.r_comment
from 
  region
where region.r_comment is NULL;
select  
  min(
    cast(cast(null as oid) as oid)), 
  nation.n_nationkey, 
  max(
    cast(cast(null as float8) as float8)), 
  nation.n_regionkey
from 
  customer
    inner join orders
      inner join nation
        inner join partsupp
          right join supplier
                right join nation
                on (supplier.s_acctbal > supplier.s_acctbal)
              right join region
              on (region.r_name = supplier.s_name)
            right join partsupp
            on (region.r_regionkey = partsupp.ps_partkey )
          on (partsupp.ps_partkey < partsupp.ps_suppkey)
        on (nation.n_comment = region.r_comment )
      on (partsupp.ps_supplycost < partsupp.ps_supplycost)
    on (customer.c_acctbal <= supplier.s_acctbal)
where orders.o_orderdate > orders.o_orderdate
limit 70;
select  
  min(
    cast(region.r_name as bpchar)), 
  region.r_name, 
  region.r_comment, 
  region.r_name
from 
  region
where region.r_regionkey <= region.r_regionkey
limit 54;
select  
  orders.o_totalprice, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  orders.o_orderdate, 
  orders.o_totalprice, 
  orders.o_comment, 
  orders.o_orderkey, 
  orders.o_orderdate, 
  orders.o_orderdate, 
  orders.o_orderkey, 
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_orderdate, 
  orders.o_totalprice, 
  orders.o_orderstatus, 
  orders.o_orderkey, 
  min(
    cast(cast(null as timetz) as timetz)), 
  orders.o_comment, 
  sum(
    cast(orders.o_totalprice as "numeric")), 
  max(
    cast(cast(null as tid) as tid)), 
  orders.o_orderstatus, 
  orders.o_shippriority, 
  orders.o_custkey, 
  orders.o_orderstatus, 
  orders.o_orderdate, 
  orders.o_clerk, 
  orders.o_comment, 
  orders.o_orderpriority, 
  orders.o_orderpriority, 
  orders.o_comment
from 
  orders
where orders.o_orderstatus is not NULL;
select  
  orders.o_clerk, 
  orders.o_orderkey, 
  orders.o_orderkey, 
  customer.c_name, 
  customer.c_address
from 
  customer
    inner join orders
    on (orders.o_comment is not NULL)
where orders.o_orderkey is NULL
limit 128;
select  
  supplier.s_comment, 
  supplier.s_comment, 
  supplier.s_acctbal
from 
  supplier
where supplier.s_suppkey is NULL
limit 119;
select  
  part.p_comment, 
  part.p_mfgr, 
  part.p_mfgr, 
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as oid) as oid)), 
  part.p_type, 
  part.p_size
from 
  part
where part.p_comment is NULL
limit 96;
select  
  lineitem.l_shipmode, 
  min(
    cast(lineitem.l_extendedprice as "numeric")), 
  supplier.s_name, 
  region.r_comment, 
  supplier.s_address
from 
  customer
        right join orders
        on (orders.o_orderdate = orders.o_orderdate)
      left join supplier
          inner join lineitem
          on (lineitem.l_discount >= lineitem.l_quantity)
        inner join region
        on (lineitem.l_extendedprice = lineitem.l_extendedprice)
      on (orders.o_orderstatus = lineitem.l_returnflag )
    right join supplier
    on (supplier.s_address is not NULL)
where customer.c_acctbal is not NULL
limit 148;
select  
  supplier.s_acctbal, 
  supplier.s_phone, 
  min(
    cast(cast(null as inet) as inet)), 
  supplier.s_address, 
  supplier.s_address
from 
  supplier
where supplier.s_suppkey is NULL;
select  
  count(
    cast(region.r_regionkey as int4)), 
  orders.o_custkey
from 
  orders
      right join region
      on (orders.o_totalprice = orders.o_totalprice)
    inner join region
    on (region.r_comment is NULL)
where orders.o_shippriority is NULL;
select  
  supplier.s_comment, 
  supplier.s_acctbal, 
  supplier.s_nationkey, 
  avg(
    cast(supplier.s_acctbal as "numeric")), 
  supplier.s_address, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  supplier.s_comment, 
  supplier.s_name, 
  supplier.s_nationkey
from 
  supplier
where supplier.s_name <= supplier.s_phone;
select  
  part.p_container, 
  nation.n_comment, 
  customer.c_custkey, 
  customer.c_phone, 
  customer.c_address, 
  customer.c_acctbal, 
  customer.c_nationkey, 
  part.p_size, 
  region.r_name, 
  nation.n_regionkey, 
  region.r_regionkey
from 
  nation
    inner join part
        left join nation
        on (part.p_retailprice > part.p_retailprice)
      inner join customer
          inner join customer
          on (customer.c_address = customer.c_name )
        inner join region
        on (region.r_regionkey = customer.c_custkey)
      on (part.p_retailprice <= customer.c_acctbal)
    on (part.p_brand = customer.c_mktsegment)
where part.p_type is NULL
limit 125;
select  
  part.p_comment, 
  part.p_comment, 
  part.p_size, 
  part.p_type
from 
  part
where part.p_size is NULL
limit 125;
select  
  region.r_comment, 
  region.r_name, 
  part.p_brand, 
  region.r_regionkey, 
  part.p_name, 
  part.p_comment, 
  region.r_name, 
  part.p_size, 
  region.r_regionkey, 
  region.r_regionkey, 
  part.p_name, 
  region.r_regionkey, 
  count(
    cast(region.r_name as bpchar)), 
  part.p_size, 
  part.p_name
from 
  part
    right join region
    on (region.r_name > part.p_container)
where region.r_regionkey < region.r_regionkey
limit 51;
select  
  partsupp.ps_suppkey, 
  partsupp.ps_suppkey, 
  avg(
    cast(cast(null as int2) as int2)), 
  sum(
    cast(cast(null as int2) as int2)), 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_comment, 
  partsupp.ps_suppkey, 
  partsupp.ps_supplycost
from 
  partsupp
where partsupp.ps_comment is NULL;
select  
  min(
    cast(cast(null as inet) as inet)), 
  part.p_mfgr, 
  sum(
    cast(cast(null as int8) as int8))
from 
  part
where part.p_brand is NULL
limit 145;
select  
  nation.n_nationkey, 
  nation.n_name, 
  nation.n_comment
from 
  nation
where nation.n_nationkey is not NULL
limit 144;
select  
  nation.n_nationkey, 
  partsupp.ps_availqty, 
  nation.n_comment
from 
  nation
    inner join partsupp
    on (partsupp.ps_supplycost < partsupp.ps_supplycost)
where partsupp.ps_supplycost is not NULL
limit 83;
select  
  lineitem.l_returnflag, 
  lineitem.l_tax, 
  lineitem.l_quantity, 
  lineitem.l_comment, 
  lineitem.l_discount
from 
  lineitem
    left join lineitem
    on (lineitem.l_extendedprice = lineitem.l_quantity )
where lineitem.l_shipdate is not NULL
limit 160;
select  
  nation.n_name, 
  min(
    cast(nation.n_regionkey as int4)), 
  nation.n_name
from 
  nation
where nation.n_name = nation.n_name
limit 125;
select  
  orders.o_shippriority
from 
  orders
where orders.o_orderpriority is not NULL
limit 75;
select distinct 
  part.p_size, 
  part.p_size, 
  part.p_comment, 
  partsupp.ps_supplycost, 
  partsupp.ps_suppkey, 
  part.p_type, 
  partsupp.ps_partkey, 
  part.p_type, 
  nation.n_comment, 
  partsupp.ps_partkey, 
  partsupp.ps_availqty, 
  part.p_name, 
  part.p_container
from 
  partsupp
    inner join part
      inner join nation
      on (part.p_partkey = nation.n_nationkey )
    on (part.p_partkey is not NULL)
where partsupp.ps_availqty is not NULL;
select  
  orders.o_shippriority, 
  orders.o_shippriority, 
  orders.o_orderpriority, 
  orders.o_totalprice, 
  orders.o_comment
from 
  orders
where orders.o_totalprice is NULL
limit 53;
select  
  min(
    cast(cast(null as text) as text)), 
  orders.o_totalprice, 
  orders.o_custkey, 
  orders.o_clerk, 
  customer.c_acctbal
from 
  orders
    right join customer
      right join orders
      on (orders.o_clerk = orders.o_orderstatus)
    on (customer.c_nationkey is NULL)
where orders.o_comment is not NULL
limit 172;
