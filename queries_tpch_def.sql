select  
  max(
    region_1.r_regionkey), 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment
limit 2;
select  
  part_1.p_name, 
  partsupp_1.ps_supplycost, 
  part_1.p_comment, 
  max(
    partsupp_1.ps_availqty), 
  part_1.p_size, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_suppkey is not NULL
group by part_1.p_comment, part_1.p_name, part_1.p_size, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 26;
select  
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 17;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_phone
limit 12;
select  
  supplier_1.s_phone, 
  part_2.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_orderkey = part_1.p_partkey )
    inner join supplier as supplier_1
      inner join part as part_2
        inner join customer as customer_1
        on (part_2.p_partkey = customer_1.c_custkey )
      on (supplier_1.s_suppkey = part_2.p_partkey )
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
limit 8;
select  
  max(
    part_1.p_size), 
  min(
    part_1.p_size), 
  nation_1.n_name, 
  part_1.p_retailprice, 
  nation_2.n_nationkey, 
  nation_1.n_comment, 
  part_1.p_size, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_size is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_2.n_nationkey, part_1.p_retailprice, part_1.p_size
limit 12;
select  
  max(
    part_1.p_partkey), 
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_type, 
  max(
    part_1.p_size), 
  part_1.p_container, 
  min(
    part_1.p_size), 
  part_1.p_type, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 24;
select  
  max(
    orders_1.o_orderkey), 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_totalprice
limit 13;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey <= region_1.r_regionkey
limit 40;
select  
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  part_1.p_name, 
  part_1.p_mfgr, 
  max(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice > part_1.p_retailprice
group by part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size
limit 36;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
limit 28;
select  
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name
limit 3;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 26;
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 8;
select  
  partsupp_2.ps_availqty, 
  part_1.p_partkey, 
  max(
    part_2.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
          inner join region as region_1
          on (partsupp_2.ps_partkey = region_1.r_regionkey )
        inner join part as part_2
        on (region_1.r_regionkey = part_2.p_partkey )
      on (partsupp_1.ps_partkey = part_2.p_partkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_partkey is not NULL
group by part_1.p_partkey, partsupp_2.ps_availqty
limit 34;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name = region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 13;
select  
  partsupp_2.ps_suppkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_2.ps_supplycost, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_2.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_2.ps_supplycost, 
  partsupp_2.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_supplycost >= partsupp_2.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_2.ps_partkey, partsupp_2.ps_suppkey, partsupp_2.ps_supplycost
limit 5;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment
limit 6;
select  
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment
limit 24;
select  
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 37;
select  
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_supplycost
limit 7;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  min(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_orderkey, orders_1.o_totalprice
limit 30;
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 10;
select  
  customer_2.c_mktsegment, 
  customer_2.c_nationkey, 
  min(
    customer_2.c_custkey), 
  customer_2.c_comment, 
  customer_2.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_acctbal is not NULL
group by customer_2.c_comment, customer_2.c_custkey, customer_2.c_mktsegment, customer_2.c_nationkey
limit 30;
select  
  nation_1.n_comment, 
  max(
    part_1.p_size), 
  nation_1.n_name, 
  part_1.p_name, 
  part_1.p_brand, 
  min(
    partsupp_2.ps_suppkey), 
  nation_1.n_comment, 
  partsupp_2.ps_partkey, 
  partsupp_2.ps_comment, 
  max(
    nation_1.n_nationkey), 
  part_1.p_retailprice, 
  partsupp_2.ps_comment, 
  partsupp_2.ps_supplycost, 
  min(
    partsupp_2.ps_availqty), 
  min(
    nation_1.n_nationkey), 
  partsupp_1.ps_suppkey, 
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join part as part_1
        inner join partsupp as partsupp_1
        on (part_1.p_partkey = partsupp_1.ps_partkey )
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
    on (nation_1.n_nationkey = partsupp_2.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
group by nation_1.n_comment, nation_1.n_name, part_1.p_brand, part_1.p_name, part_1.p_retailprice, partsupp_1.ps_suppkey, partsupp_2.ps_comment, partsupp_2.ps_partkey, partsupp_2.ps_supplycost
limit 26;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 30;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 19;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 22;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey >= supplier_1.s_suppkey
limit 1;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone
limit 17;
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 14;
select  
  part_1.p_container, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  partsupp_1.ps_availqty, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    on (orders_1.o_orderkey = part_1.p_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 8;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 15;
select  
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  customer_1.c_phone, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 21;
select  
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  supplier_3.s_acctbal, 
  supplier_3.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
      inner join orders as orders_1
        inner join supplier as supplier_3
        on (orders_1.o_orderkey = supplier_3.s_suppkey )
      on (supplier_2.s_suppkey = orders_1.o_orderkey )
    on (part_1.p_partkey = supplier_3.s_suppkey )
where orders_1.o_comment is not NULL
limit 14;
select  
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where part_1.p_name is not NULL
group by customer_1.c_mktsegment, supplier_1.s_address, supplier_1.s_name
limit 13;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 20;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 41;
select  
  nation_2.n_comment, 
  nation_1.n_regionkey, 
  orders_2.o_orderdate, 
  orders_2.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
          inner join orders as orders_1
          on (nation_1.n_nationkey = orders_1.o_orderkey )
        inner join nation as nation_2
        on (nation_1.n_nationkey = nation_2.n_nationkey )
      inner join orders as orders_2
      on (nation_2.n_nationkey = orders_2.o_orderkey )
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_custkey >= orders_1.o_orderkey
limit 12;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey >= customer_1.c_custkey
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name
limit 17;
select  
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
limit 24;
select  
  part_1.p_retailprice, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_orderkey = partsupp_1.ps_partkey )
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
    inner join nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where customer_1.c_acctbal >= partsupp_1.ps_supplycost
group by part_1.p_retailprice
limit 8;
select  
  part_1.p_name, 
  nation_1.n_regionkey, 
  part_1.p_mfgr, 
  part_1.p_name, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_1.n_comment is not NULL
group by nation_1.n_regionkey, part_1.p_mfgr, part_1.p_name
limit 16;
select  
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_commitdate, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_tax, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_discount, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey < lineitem_1.l_partkey
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 32;
select  
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment
limit 22;
select  
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 18;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 14;
select  
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
group by orders_1.o_orderpriority, region_1.r_regionkey
limit 40;
select  
  part_1.p_partkey, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  part_1.p_brand, 
  part_1.p_type, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  part_1.p_retailprice, 
  max(
    part_1.p_partkey), 
  part_1.p_container, 
  min(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_orderdate = orders_1.o_orderdate
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_totalprice, part_1.p_brand, part_1.p_container, part_1.p_partkey, part_1.p_retailprice, part_1.p_type
limit 17;
select  
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 29;
select  
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey < nation_1.n_regionkey
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 6;
select  
  lineitem_1.l_returnflag, 
  min(
    lineitem_2.l_partkey), 
  lineitem_2.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_comment is not NULL
group by lineitem_1.l_returnflag, lineitem_2.l_orderkey
limit 17;
select  
  supplier_1.s_phone, 
  orders_1.o_totalprice, 
  supplier_1.s_comment, 
  region_1.r_comment, 
  orders_1.o_orderdate, 
  region_1.r_regionkey, 
  supplier_1.s_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where orders_1.o_clerk <= supplier_1.s_phone
limit 42;
select  
  partsupp_1.ps_availqty, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_suppkey > partsupp_1.ps_partkey
limit 8;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_custkey is not NULL
limit 1;
select  
  nation_1.n_comment, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  max(
    nation_1.n_nationkey), 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  nation_1.n_regionkey, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_custkey), 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_custkey is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_phone, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 17;
select  
  max(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_comment, customer_1.c_mktsegment
limit 26;
select  
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 18;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 29;
select  
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_shippriority, orders_1.o_totalprice
limit 37;
select  
  min(
    part_1.p_size), 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_retailprice
limit 40;
select  
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_retailprice, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_name, 
  min(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  min(
    part_1.p_partkey), 
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 34;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_returnflag, lineitem_1.l_suppkey
limit 25;
select  
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_mktsegment, customer_1.c_name
limit 27;
select  
  region_1.r_name, 
  orders_1.o_custkey, 
  orders_1.o_totalprice, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  max(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_orderpriority < orders_1.o_clerk
group by orders_1.o_custkey, orders_1.o_totalprice, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 28;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where customer_1.c_comment is not NULL
group by supplier_1.s_address, supplier_1.s_suppkey
limit 24;
select  
  supplier_1.s_name, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  region_1.r_regionkey, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by region_1.r_regionkey, supplier_1.s_acctbal, supplier_1.s_name
limit 4;
select  
  lineitem_2.l_shipinstruct, 
  lineitem_2.l_linenumber, 
  lineitem_1.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
      inner join customer as customer_1
      on (lineitem_2.l_orderkey = customer_1.c_custkey )
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_1.l_shipmode is not NULL
limit 17;
select  
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 13;
select  
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
group by lineitem_1.l_receiptdate
limit 9;
select  
  supplier_1.s_comment, 
  supplier_1.s_address, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where supplier_1.s_comment is not NULL
limit 21;
select  
  min(
    orders_1.o_shippriority), 
  max(
    orders_1.o_custkey), 
  customer_1.c_address, 
  min(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_comment is not NULL
group by customer_1.c_address, customer_1.c_mktsegment, orders_1.o_orderdate
limit 23;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey
limit 19;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 16;
select  
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 32;
select  
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment
limit 8;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_discount, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_partkey
limit 31;
select  
  region_1.r_regionkey, 
  min(
    customer_1.c_custkey), 
  region_1.r_comment, 
  customer_1.c_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  customer_1.c_comment, 
  max(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_phone is not NULL
group by customer_1.c_comment, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 11;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_shipdate
limit 38;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_partkey), 
  partsupp_1.ps_comment, 
  nation_1.n_name, 
  partsupp_1.ps_availqty, 
  region_2.r_name, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join lineitem as lineitem_1
        inner join orders as orders_1
        on (lineitem_1.l_orderkey = orders_1.o_orderkey )
      inner join region as region_1
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      on (lineitem_1.l_orderkey = region_2.r_regionkey )
    on (partsupp_1.ps_partkey = region_2.r_regionkey )
where nation_1.n_name is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linestatus, nation_1.n_name, orders_1.o_orderdate, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, region_2.r_name
limit 8;
select  
  part_1.p_mfgr, 
  part_2.p_comment, 
  part_1.p_mfgr, 
  part_3.p_comment, 
  part_3.p_mfgr, 
  part_2.p_partkey, 
  part_1.p_container, 
  part_2.p_type, 
  part_3.p_container, 
  min(
    part_2.p_partkey), 
  region_1.r_comment, 
  part_1.p_brand, 
  part_2.p_retailprice, 
  min(
    part_3.p_size), 
  max(
    part_1.p_size), 
  region_1.r_comment, 
  part_1.p_mfgr, 
  part_2.p_type, 
  part_3.p_retailprice, 
  max(
    part_3.p_partkey), 
  max(
    part_3.p_partkey), 
  part_3.p_partkey, 
  region_1.r_regionkey, 
  part_2.p_container, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join part as part_2
      inner join part as part_3
      on (part_2.p_partkey = part_3.p_partkey )
    on (region_1.r_regionkey = part_3.p_partkey )
where region_1.r_name = part_1.p_mfgr
group by part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_2.p_comment, part_2.p_container, part_2.p_partkey, part_2.p_retailprice, part_2.p_type, part_3.p_comment, part_3.p_container, part_3.p_mfgr, part_3.p_partkey, part_3.p_retailprice, region_1.r_comment, region_1.r_regionkey
limit 39;
select  
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone <= supplier_1.s_name
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 20;
select  
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_brand, part_1.p_partkey
limit 25;
select  
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_comment, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_partkey, part_1.p_size
limit 19;
select  
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 2;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 27;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where nation_1.n_nationkey is not NULL
limit 4;
select  
  region_1.r_comment, 
  region_2.r_name, 
  max(
    partsupp_1.ps_suppkey), 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    inner join region as region_2
      inner join region as region_3
      on (region_2.r_regionkey = region_3.r_regionkey )
    on (partsupp_1.ps_partkey = region_2.r_regionkey )
where region_3.r_name = region_2.r_name
group by region_1.r_comment, region_2.r_name
limit 5;
select  
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_custkey), 
  min(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_nationkey, customer_1.c_phone
limit 19;
select  
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey < orders_1.o_orderkey
limit 29;
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
group by nation_1.n_name, nation_1.n_regionkey
limit 20;
select  
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_regionkey >= region_1.r_regionkey
limit 7;
select  
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand > part_1.p_container
limit 36;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_regionkey is not NULL
limit 23;
select  
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus >= orders_1.o_clerk
limit 19;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 29;
select  
  customer_1.c_address, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 14;
select  
  orders_1.o_orderstatus, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
group by orders_1.o_orderpriority, orders_1.o_orderstatus
limit 38;
select  
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 15;
select  
  part_1.p_brand, 
  min(
    part_1.p_size), 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  min(
    part_1.p_size), 
  max(
    part_1.p_partkey), 
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey > part_1.p_size
group by part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice, part_1.p_size
limit 23;
select  
  max(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_container, 
  nation_1.n_nationkey, 
  part_1.p_mfgr, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  part_1.p_partkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_partkey
limit 23;
select  
  part_1.p_retailprice, 
  min(
    part_2.p_partkey), 
  part_2.p_partkey, 
  part_1.p_brand, 
  part_1.p_partkey, 
  part_2.p_size, 
  part_1.p_type, 
  part_2.p_comment, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_type is not NULL
group by part_1.p_brand, part_1.p_partkey, part_1.p_retailprice, part_1.p_type, part_2.p_comment, part_2.p_partkey, part_2.p_size
limit 17;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax >= lineitem_1.l_discount
limit 15;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 33;
select  
  lineitem_1.l_orderkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
      inner join region as region_1
        inner join nation as nation_1
          inner join region as region_2
          on (nation_1.n_nationkey = region_2.r_regionkey )
        on (region_1.r_regionkey = nation_1.n_nationkey )
      on (supplier_1.s_suppkey = region_1.r_regionkey )
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where lineitem_1.l_suppkey <= nation_1.n_regionkey
limit 41;
select  
  lineitem_1.l_shipmode, 
  supplier_2.s_name, 
  min(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
          inner join partsupp as partsupp_2
            inner join supplier as supplier_2
            on (partsupp_2.ps_partkey = supplier_2.s_suppkey )
          on (lineitem_1.l_orderkey = partsupp_2.ps_partkey )
        on (supplier_1.s_suppkey = supplier_2.s_suppkey )
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where partsupp_2.ps_availqty <= supplier_1.s_nationkey
group by lineitem_1.l_shipmode, supplier_2.s_name
limit 21;
select  
  max(
    customer_2.c_nationkey), 
  customer_1.c_acctbal, 
  lineitem_2.l_commitdate, 
  customer_3.c_name, 
  lineitem_1.l_shipmode, 
  supplier_1.s_nationkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join customer as customer_1
          inner join customer as customer_2
          on (customer_1.c_custkey = customer_2.c_custkey )
        on (supplier_1.s_suppkey = customer_1.c_custkey )
      inner join customer as customer_3
      on (customer_2.c_custkey = customer_3.c_custkey )
    inner join part as part_1
        inner join lineitem as lineitem_1
        on (part_1.p_partkey = lineitem_1.l_orderkey )
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    on (customer_2.c_custkey = part_1.p_partkey )
where customer_2.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_phone, customer_3.c_name, lineitem_1.l_shipmode, lineitem_2.l_commitdate, supplier_1.s_nationkey
limit 35;
select  
  customer_1.c_address, 
  customer_1.c_phone, 
  max(
    customer_1.c_nationkey), 
  max(
    customer_1.c_nationkey), 
  min(
    customer_1.c_custkey), 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_address, customer_1.c_phone
limit 24;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
limit 41;
select  
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 30;
select  
  region_1.r_name, 
  part_1.p_type, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join region as region_1
        on (lineitem_1.l_orderkey = region_1.r_regionkey )
      inner join lineitem as lineitem_2
          inner join nation as nation_1
          on (lineitem_2.l_orderkey = nation_1.n_nationkey )
        inner join partsupp as partsupp_1
        on (lineitem_2.l_orderkey = partsupp_1.ps_partkey )
      on (region_1.r_regionkey = lineitem_2.l_orderkey )
    inner join part as part_1
      inner join partsupp as partsupp_2
      on (part_1.p_partkey = partsupp_2.ps_partkey )
    on (region_1.r_regionkey = part_1.p_partkey )
where lineitem_1.l_comment is not NULL
limit 11;
select  
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 23;
select  
  min(
    lineitem_2.l_partkey), 
  nation_1.n_comment, 
  nation_1.n_name, 
  min(
    lineitem_1.l_linenumber), 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    inner join lineitem as lineitem_2
    on (nation_1.n_nationkey = lineitem_2.l_orderkey )
where lineitem_1.l_receiptdate is not NULL
group by nation_1.n_comment, nation_1.n_name
limit 1;
select  
  supplier_1.s_phone, 
  supplier_1.s_name, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 42;
select  
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_regionkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 8;
select  
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 9;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 22;
select  
  max(
    region_1.r_regionkey), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_partkey
limit 38;
select  
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_mfgr, 
  min(
    part_1.p_size), 
  part_1.p_mfgr, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container >= part_1.p_mfgr
group by part_1.p_comment, part_1.p_mfgr, part_1.p_partkey, part_1.p_retailprice, part_1.p_type
limit 38;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  partsupp_1.ps_partkey, 
  region_1.r_name, 
  region_1.r_name, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    inner join region as region_1
      inner join nation as nation_1
      on (region_1.r_regionkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
group by nation_1.n_nationkey, nation_1.n_regionkey, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, region_1.r_name, region_1.r_regionkey
limit 9;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_phone <= nation_1.n_name
limit 4;
select  
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice = orders_1.o_totalprice
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_totalprice
limit 19;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
limit 12;
select  
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 12;
select  
  supplier_1.s_name, 
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey), 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_name, supplier_1.s_phone
limit 14;
select  
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.n_nationkey
limit 37;
select  
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone < supplier_1.s_name
limit 3;
select  
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  supplier_1.s_name, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_shippriority, orders_1.o_totalprice, supplier_1.s_name
limit 26;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 17;
select  
  orders_1.o_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_custkey is not NULL
limit 29;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_quantity, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_tax, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct <= lineitem_1.l_linestatus
group by lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 6;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 15;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 33;
select  
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey = nation_1.n_nationkey
limit 38;
select  
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 20;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_commitdate, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_quantity, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice = lineitem_1.l_quantity
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 42;
select  
  min(
    part_1.p_partkey), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
group by part_1.p_brand
limit 5;
select  
  nation_1.n_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey), 
  nation_1.n_regionkey, 
  supplier_1.s_suppkey, 
  max(
    nation_1.n_regionkey), 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.s_comment is not NULL
group by nation_1.n_nationkey, nation_1.n_regionkey, supplier_1.s_address, supplier_1.s_name, supplier_1.s_suppkey
limit 12;
select  
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_shippriority), 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 18;
select  
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 8;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  region_1.r_name, 
  region_1.r_comment, 
  part_1.p_retailprice, 
  region_1.r_comment, 
  part_1.p_container, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    part_1.p_partkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_name is not NULL
group by part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 2;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 19;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 30;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 30;
select  
  min(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 6;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 33;
select  
  nation_1.n_regionkey, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_size is not NULL
limit 7;
select  
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_tax, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate < lineitem_1.l_commitdate
group by lineitem_1.l_linenumber, lineitem_1.l_returnflag, lineitem_1.l_tax
limit 11;
select  
  part_1.p_size, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
limit 36;
select  
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_supplycost >= supplier_1.s_acctbal
limit 34;
select  
  customer_2.c_comment, 
  customer_2.c_custkey, 
  customer_2.c_address, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_nationkey is not NULL
limit 24;
select  
  part_1.p_mfgr, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    on (part_1.p_partkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
limit 10;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name = nation_1.n_name
limit 24;
select  
  min(
    part_1.p_partkey), 
  partsupp_1.ps_supplycost, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipdate, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_extendedprice, 
  partsupp_1.ps_supplycost, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  partsupp_1.ps_availqty, 
  part_1.p_retailprice, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  lineitem_1.l_linestatus, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
      inner join partsupp as partsupp_1
        inner join part as part_1
        on (partsupp_1.ps_partkey = part_1.p_partkey )
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_commitdate = lineitem_1.l_receiptdate
group by lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_shipdate, nation_1.n_comment, nation_1.n_nationkey, part_1.p_name, part_1.p_retailprice, partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 20;
select  
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment
limit 16;
select  
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_receiptdate, 
  nation_1.n_regionkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where lineitem_1.l_commitdate > lineitem_1.l_shipdate
group by lineitem_1.l_extendedprice, lineitem_1.l_receiptdate, lineitem_1.l_suppkey, nation_1.n_name, nation_1.n_regionkey
limit 3;
select  
  max(
    lineitem_1.l_partkey), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey <= lineitem_1.l_linenumber
group by lineitem_1.l_comment, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 42;
select  
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 14;
select  
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice > orders_1.o_totalprice
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 32;
select  
  supplier_1.s_comment, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
limit 13;
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  part_1.p_size, 
  supplier_1.s_acctbal, 
  part_1.p_type, 
  max(
    part_1.p_partkey), 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where supplier_1.s_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_regionkey, part_1.p_size, part_1.p_type, supplier_1.s_acctbal, supplier_1.s_comment
limit 27;
select  
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal
limit 18;
select  
  region_2.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join region as region_1
        inner join region as region_2
          inner join part as part_1
          on (region_2.r_regionkey = part_1.p_partkey )
        on (region_1.r_regionkey = region_2.r_regionkey )
      inner join orders as orders_1
      on (region_2.r_regionkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_suppkey > orders_1.o_orderkey
limit 15;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 24;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_nationkey > region_1.r_regionkey
group by nation_1.n_name, region_1.r_comment
limit 28;
select  
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment >= customer_1.c_phone
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_name
limit 33;
select  
  min(
    partsupp_1.ps_availqty), 
  max(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where supplier_1.s_phone < supplier_1.s_name
limit 25;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_comment is not NULL
limit 25;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 11;
select  
  orders_1.o_totalprice, 
  min(
    lineitem_1.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join customer as customer_1
        inner join nation as nation_1
        on (customer_1.c_custkey = nation_1.n_nationkey )
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where customer_1.c_comment is not NULL
group by orders_1.o_totalprice
limit 1;
select  
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_tax
limit 23;
select  
  customer_1.c_address, 
  orders_2.o_orderpriority, 
  orders_1.o_custkey, 
  orders_2.o_shippriority, 
  customer_1.c_nationkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join customer as customer_1
      inner join orders as orders_2
      on (customer_1.c_custkey = orders_2.o_orderkey )
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where customer_1.c_mktsegment is not NULL
limit 15;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 27;
select  
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey > supplier_1.s_nationkey
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 20;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 41;
select  
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.s_comment is not NULL
limit 5;
select  
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_size, 
  min(
    part_1.p_partkey), 
  part_1.p_type, 
  max(
    part_1.p_size), 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_comment, part_1.p_name, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 16;
select  
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 8;
select  
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 2;
select  
  min(
    customer_1.c_custkey), 
  customer_2.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_2.c_custkey, 
  customer_2.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
      inner join customer as customer_3
      on (customer_2.c_custkey = customer_3.c_custkey )
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_address is not NULL
group by customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_phone, customer_2.c_custkey, customer_2.c_nationkey
limit 41;
select  
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 8;
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment
limit 3;
select  
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 24;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 15;
select  
  customer_1.c_name, 
  customer_1.c_name, 
  min(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 21;
select  
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_linestatus
limit 15;
select  
  part_2.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_type is not NULL
limit 15;
select  
  min(
    part_1.p_partkey), 
  customer_1.c_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  part_1.p_size, 
  part_1.p_partkey, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
    on (part_1.p_partkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
group by customer_1.c_comment, customer_1.c_custkey, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_partkey, part_1.p_size
limit 28;
select  
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_address, supplier_1.s_suppkey
limit 26;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 30;
select  
  part_1.p_name, 
  min(
    part_1.p_size), 
  orders_1.o_orderkey, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where lineitem_1.l_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_orderkey, part_1.p_name
limit 13;
select  
  part_1.p_mfgr, 
  part_1.p_size, 
  part_1.p_partkey, 
  customer_1.c_nationkey, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where part_1.p_size is not NULL
limit 42;
select  
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 1;
select  
  min(
    part_1.p_partkey), 
  min(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_retailprice
limit 13;
select  
  customer_1.c_address, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey), 
  customer_1.c_address, 
  customer_1.c_name, 
  nation_1.n_regionkey, 
  customer_1.c_custkey, 
  max(
    nation_1.n_nationkey), 
  customer_1.c_nationkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_acctbal = customer_1.c_acctbal
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey, nation_1.n_regionkey
limit 10;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_linestatus, 
  partsupp_1.ps_suppkey, 
  part_2.p_type, 
  part_2.p_name, 
  orders_2.o_totalprice, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
          inner join orders as orders_1
          on (part_1.p_partkey = orders_1.o_orderkey )
        inner join supplier as supplier_1
          inner join lineitem as lineitem_1
          on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
        on (orders_1.o_orderkey = supplier_1.s_suppkey )
      inner join lineitem as lineitem_2
        inner join orders as orders_2
          inner join customer as customer_1
            inner join part as part_2
            on (customer_1.c_custkey = part_2.p_partkey )
          on (orders_2.o_orderkey = customer_1.c_custkey )
        on (lineitem_2.l_orderkey = part_2.p_partkey )
      on (supplier_1.s_suppkey = part_2.p_partkey )
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where orders_1.o_custkey is not NULL
group by lineitem_1.l_discount, lineitem_1.l_linestatus, orders_2.o_totalprice, part_2.p_name, part_2.p_type, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 37;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 15;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_nationkey < nation_1.n_regionkey
group by nation_1.n_name, nation_1.n_nationkey, orders_1.o_orderpriority, orders_1.o_shippriority
limit 31;
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 7;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 22;
select  
  max(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  supplier_1.s_name, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, supplier_1.s_name
limit 42;
select  
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr >= part_1.p_brand
limit 21;
select  
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_receiptdate, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  lineitem_1.l_discount, 
  lineitem_1.l_comment, 
  lineitem_1.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_tax
limit 3;
select  
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 30;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 31;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_tax > lineitem_1.l_extendedprice
limit 13;
select  
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate > lineitem_1.l_shipdate
limit 38;
select distinct 
  region_1.r_regionkey, 
  supplier_1.s_phone, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
        inner join orders as orders_1
        on (region_1.r_regionkey = orders_1.o_orderkey )
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where part_1.p_size is not NULL
limit 40;
select  
  supplier_2.s_acctbal, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
        inner join supplier as supplier_2
        on (lineitem_1.l_orderkey = supplier_2.s_suppkey )
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_returnflag < part_1.p_container
limit 23;
select  
  customer_1.c_name, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_acctbal < customer_1.c_acctbal
limit 20;
select  
  min(
    supplier_1.s_nationkey), 
  region_1.r_regionkey, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by region_1.r_regionkey, supplier_1.s_suppkey
limit 37;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey
limit 36;
select  
  customer_2.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join supplier as supplier_1
      inner join customer as customer_2
      on (supplier_1.s_suppkey = customer_2.c_custkey )
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where partsupp_1.ps_suppkey >= supplier_1.s_nationkey
limit 13;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 36;
select  
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    on (nation_1.n_nationkey = part_1.p_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 2;
select  
  max(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_comment, part_1.p_retailprice
limit 12;
select  
  supplier_1.s_address, 
  max(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name > supplier_1.s_phone
group by supplier_1.s_address
limit 2;
select  
  part_1.p_retailprice, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
      inner join part as part_1
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      on (nation_2.n_nationkey = orders_1.o_orderkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_1.n_nationkey is not NULL
limit 15;
select  
  min(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 40;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 15;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal > supplier_1.s_acctbal
group by supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 35;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderpriority > orders_1.o_orderstatus
limit 23;
select  
  nation_1.n_regionkey, 
  supplier_3.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join supplier as supplier_2
        on (supplier_1.s_suppkey = supplier_2.s_suppkey )
      inner join nation as nation_1
      on (supplier_2.s_suppkey = nation_1.n_nationkey )
    inner join supplier as supplier_3
      inner join orders as orders_1
          inner join orders as orders_2
          on (orders_1.o_orderkey = orders_2.o_orderkey )
        inner join orders as orders_3
        on (orders_1.o_orderkey = orders_3.o_orderkey )
      on (supplier_3.s_suppkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = orders_2.o_orderkey )
where orders_1.o_totalprice = supplier_2.s_acctbal
limit 16;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 32;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 31;
select  
  nation_1.n_nationkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    inner join lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where lineitem_2.l_orderkey is not NULL
limit 4;
select  
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where lineitem_1.l_discount < lineitem_1.l_quantity
limit 27;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority
limit 18;
select  
  lineitem_1.l_discount, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_quantity, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_orderkey is not NULL
limit 33;
select  
  max(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_suppkey), 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount <= lineitem_1.l_tax
group by lineitem_1.l_partkey, lineitem_1.l_returnflag, lineitem_1.l_shipmode
limit 4;
select  
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
limit 24;
select  
  min(
    region_1.r_regionkey), 
  supplier_1.s_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
        inner join supplier as supplier_1
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where region_2.r_name is not NULL
group by region_1.r_name, supplier_1.s_comment
limit 34;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_commitdate = lineitem_1.l_shipdate
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 27;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name = supplier_1.s_phone
group by supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 24;
select  
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_orderkey <= lineitem_1.l_suppkey
limit 22;
select  
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_2.p_retailprice, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_2.o_comment, 
  part_1.p_name, 
  part_2.p_container, 
  orders_2.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
      inner join orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      on (part_2.p_partkey = orders_2.o_orderkey )
    on (part_1.p_partkey = orders_1.o_orderkey )
where part_2.p_partkey is not NULL
limit 31;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 4;
select  
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  lineitem_1.l_tax, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  lineitem_1.l_tax, 
  customer_1.c_mktsegment, 
  lineitem_1.l_returnflag, 
  customer_1.c_address, 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_commitdate = lineitem_1.l_shipdate
limit 36;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_extendedprice is not NULL
limit 20;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_regionkey
limit 33;
select  
  partsupp_1.ps_supplycost, 
  nation_1.n_nationkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  partsupp_1.ps_suppkey, 
  nation_1.n_regionkey, 
  partsupp_1.ps_partkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 5;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost <= customer_1.c_acctbal
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 26;
select  
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 11;
select  
  supplier_1.s_nationkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where supplier_1.s_comment is not NULL
limit 22;
select  
  lineitem_1.l_tax, 
  lineitem_2.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_1.l_shipmode >= lineitem_1.l_shipinstruct
limit 30;
select  
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join customer as customer_2
      inner join supplier as supplier_1
      on (customer_2.c_custkey = supplier_1.s_suppkey )
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where lineitem_1.l_extendedprice = customer_1.c_acctbal
limit 1;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey >= customer_1.c_nationkey
limit 38;
select  
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 25;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 25;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 20;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 27;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name > region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 30;
select  
  partsupp_1.ps_partkey, 
  orders_1.o_orderstatus, 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_clerk <= orders_1.o_orderpriority
group by orders_1.o_orderstatus, partsupp_1.ps_partkey
limit 9;
select  
  customer_1.c_address, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join region as region_1
      on (customer_1.c_custkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_acctbal is not NULL
limit 16;
select  
  customer_1.c_name, 
  max(
    lineitem_2.l_orderkey), 
  max(
    lineitem_2.l_orderkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
          inner join lineitem as lineitem_2
          on (part_1.p_partkey = lineitem_2.l_orderkey )
        inner join customer as customer_1
          inner join part as part_2
            inner join part as part_3
            on (part_2.p_partkey = part_3.p_partkey )
          on (customer_1.c_custkey = part_2.p_partkey )
        on (part_1.p_partkey = customer_1.c_custkey )
      inner join region as region_1
      on (part_3.p_partkey = region_1.r_regionkey )
    on (lineitem_1.l_orderkey = part_2.p_partkey )
where lineitem_1.l_commitdate >= lineitem_2.l_shipdate
group by customer_1.c_name, region_1.r_regionkey
limit 3;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 8;
select  
  part_1.p_container, 
  max(
    partsupp_1.ps_suppkey), 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  part_1.p_mfgr, 
  min(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where part_1.p_comment is not NULL
group by part_1.p_container, part_1.p_mfgr, partsupp_1.ps_suppkey
limit 42;
select  
  part_1.p_name, 
  max(
    part_1.p_size), 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_type
limit 37;
select  
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_returnflag, 
  part_1.p_brand, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_shipmode is not NULL
group by lineitem_1.l_returnflag, part_1.p_brand, part_1.p_partkey
limit 24;
select  
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  max(
    supplier_1.s_suppkey), 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 15;
select  
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
limit 42;
select  
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 39;
select  
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 3;
select  
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    inner join part as part_2
          inner join orders as orders_1
          on (part_2.p_partkey = orders_1.o_orderkey )
        inner join nation as nation_1
        on (part_2.p_partkey = nation_1.n_nationkey )
      inner join customer as customer_1
      on (part_2.p_partkey = customer_1.c_custkey )
    on (part_1.p_partkey = customer_1.c_custkey )
where supplier_1.s_acctbal <= part_1.p_retailprice
limit 7;
select  
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (part_1.p_partkey = supplier_2.s_suppkey )
where supplier_2.s_phone is not NULL
limit 31;
select  
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 34;
select  
  part_1.p_comment, 
  max(
    partsupp_1.ps_partkey), 
  part_1.p_size, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_2.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where part_1.p_brand is not NULL
group by part_1.p_comment, part_1.p_size, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_2.ps_availqty
limit 24;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 19;
select  
  supplier_1.s_phone, 
  nation_1.n_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey), 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_address is not NULL
group by nation_1.n_comment, nation_1.n_name, supplier_1.s_acctbal, supplier_1.s_phone, supplier_1.s_suppkey
limit 19;
select  
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 11;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 40;
select  
  nation_1.n_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey < nation_1.n_regionkey
limit 7;
select  
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where part_1.p_mfgr is not NULL
limit 12;
select  
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 31;
select  
  part_2.p_size, 
  customer_1.c_nationkey, 
  part_1.p_comment, 
  nation_1.n_comment, 
  part_1.p_container, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
          inner join partsupp as partsupp_1
          on (customer_1.c_custkey = partsupp_1.ps_partkey )
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      inner join nation as nation_1
        inner join part as part_2
        on (nation_1.n_nationkey = part_2.p_partkey )
      on (customer_1.c_custkey = nation_1.n_nationkey )
    inner join supplier as supplier_1
      inner join part as part_3
      on (supplier_1.s_suppkey = part_3.p_partkey )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where part_3.p_partkey > part_2.p_partkey
limit 26;
select  
  orders_1.o_comment, 
  orders_2.o_orderkey, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  nation_1.n_nationkey, 
  min(
    orders_1.o_orderkey), 
  max(
    orders_1.o_shippriority), 
  nation_1.n_comment, 
  supplier_1.s_suppkey, 
  orders_1.o_custkey, 
  supplier_1.s_phone, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_suppkey = nation_1.n_nationkey )
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (nation_1.n_nationkey = orders_2.o_orderkey )
where orders_2.o_orderkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_2.o_orderkey, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 18;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 42;
select  
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey), 
  min(
    customer_1.c_custkey), 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_totalprice is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_name, customer_1.c_nationkey
limit 12;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
limit 7;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 31;
select  
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 37;
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone <= supplier_1.s_name
limit 37;
select  
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 13;
select  
  part_1.p_type, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where part_1.p_type is not NULL
limit 5;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name <= region_1.r_name
limit 29;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 34;
select  
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_orderkey), 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where lineitem_1.l_tax = part_1.p_retailprice
group by lineitem_1.l_discount, part_1.p_comment
limit 9;
select  
  part_1.p_container, 
  customer_1.c_nationkey, 
  part_1.p_partkey, 
  partsupp_1.ps_partkey, 
  region_1.r_comment, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join part as part_1
        inner join supplier as supplier_1
        on (part_1.p_partkey = supplier_1.s_suppkey )
      inner join customer as customer_1
          inner join partsupp as partsupp_1
          on (customer_1.c_custkey = partsupp_1.ps_partkey )
        inner join region as region_1
        on (customer_1.c_custkey = region_1.r_regionkey )
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_shippriority <= part_1.p_partkey
limit 3;
select  
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 23;
select  
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_custkey is not NULL
limit 33;
select  
  min(
    orders_1.o_orderkey), 
  partsupp_1.ps_suppkey, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_partkey is not NULL
group by orders_1.o_orderdate, partsupp_1.ps_suppkey
limit 36;
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
group by nation_1.n_comment, nation_1.n_nationkey
limit 31;
select  
  partsupp_1.ps_availqty, 
  partsupp_2.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_orderkey = partsupp_1.ps_partkey )
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_totalprice <= partsupp_2.ps_supplycost
limit 10;
select  
  part_1.p_comment, 
  part_1.p_brand, 
  customer_1.c_acctbal, 
  part_1.p_comment, 
  part_1.p_partkey, 
  customer_1.c_nationkey, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    on (part_1.p_partkey = customer_1.c_custkey )
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 9;
select  
  region_1.r_regionkey, 
  part_2.p_name, 
  region_1.r_comment, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join region as region_1
        inner join part as part_2
        on (region_1.r_regionkey = part_2.p_partkey )
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
limit 3;
select  
  max(
    customer_1.c_nationkey), 
  min(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_address, customer_1.c_phone
limit 12;
select  
  part_1.p_comment, 
  max(
    part_1.p_partkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_comment, part_1.p_partkey
limit 36;
select  
  orders_1.o_orderdate, 
  max(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderstatus
limit 40;
select  
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  part_1.p_mfgr, 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_size, 
  min(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_brand, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 37;
select  
  lineitem_2.l_commitdate, 
  nation_1.n_name, 
  nation_1.n_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join orders as orders_1
        inner join lineitem as lineitem_2
        on (orders_1.o_orderkey = lineitem_2.l_orderkey )
      inner join region as region_1
        inner join nation as nation_1
        on (region_1.r_regionkey = nation_1.n_nationkey )
      on (lineitem_2.l_orderkey = nation_1.n_nationkey )
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where orders_1.o_orderkey is not NULL
limit 24;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 12;
select  
  orders_1.o_totalprice, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderstatus, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_totalprice
limit 2;
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 3;
select  
  supplier_2.s_address, 
  max(
    supplier_1.s_nationkey), 
  supplier_2.s_suppkey, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join nation as nation_1
          inner join supplier as supplier_1
          on (nation_1.n_nationkey = supplier_1.s_suppkey )
        inner join lineitem as lineitem_1
        on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
      on (customer_1.c_custkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (customer_1.c_custkey = supplier_2.s_suppkey )
where supplier_1.s_name < supplier_1.s_phone
group by supplier_1.s_name, supplier_2.s_address, supplier_2.s_suppkey
limit 36;
select  
  supplier_1.s_comment, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_acctbal < supplier_1.s_acctbal
limit 12;
select  
  max(
    partsupp_1.ps_partkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    inner join partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    on (region_1.r_regionkey = nation_1.n_nationkey )
where nation_1.n_regionkey is not NULL
group by nation_1.n_regionkey
limit 20;
select  
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where supplier_1.s_suppkey is not NULL
limit 5;
select  
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey >= lineitem_1.l_suppkey
group by lineitem_1.l_returnflag
limit 39;
select  
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_address, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_custkey), 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_nationkey, region_1.r_regionkey
limit 1;
select  
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
limit 42;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_regionkey
limit 20;
select  
  max(
    nation_2.n_nationkey), 
  nation_2.n_comment, 
  nation_2.n_comment, 
  nation_1.n_name, 
  nation_2.n_name, 
  min(
    nation_2.n_nationkey), 
  nation_1.n_name, 
  nation_2.n_regionkey, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    on (orders_1.o_orderkey = nation_2.n_nationkey )
where nation_1.n_name = orders_1.o_orderstatus
group by nation_1.n_name, nation_2.n_comment, nation_2.n_name, nation_2.n_regionkey, orders_1.o_clerk
limit 40;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 29;
select  
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
group by lineitem_1.l_partkey
limit 11;
select  
  part_1.p_retailprice, 
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_2.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_comment is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_retailprice, part_2.p_size
limit 13;
select  
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate <= lineitem_1.l_receiptdate
limit 7;
select  
  part_1.p_comment, 
  max(
    part_1.p_size), 
  part_1.p_name, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_comment, part_1.p_name
limit 17;
select  
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where supplier_1.s_phone > supplier_1.s_name
limit 18;
select  
  part_1.p_retailprice, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
limit 21;
select  
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 10;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 20;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  orders_1.o_orderkey, 
  region_1.r_name, 
  max(
    orders_1.o_shippriority), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
group by orders_1.o_orderkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 22;
select  
  supplier_1.s_phone, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 28;
select  
  min(
    partsupp_1.ps_availqty), 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 21;
select  
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice < orders_1.o_totalprice
limit 9;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority <= orders_1.o_custkey
group by orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 31;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax <= lineitem_1.l_extendedprice
limit 40;
select  
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 15;
select  
  supplier_1.s_address, 
  customer_1.c_comment, 
  nation_1.n_comment, 
  min(
    customer_1.c_custkey), 
  supplier_1.s_address, 
  supplier_1.s_name, 
  nation_1.n_comment, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  min(
    customer_1.c_nationkey), 
  min(
    customer_1.c_nationkey), 
  supplier_1.s_acctbal, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_custkey = supplier_1.s_suppkey )
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.s_nationkey is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, nation_1.n_comment, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name
limit 14;
select  
  part_1.p_brand, 
  max(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_retailprice
limit 14;
select  
  min(
    part_1.p_size), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_partkey
limit 19;
select  
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone
limit 23;
select  
  orders_1.o_comment, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority < orders_1.o_clerk
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority
limit 33;
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 9;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 31;
select  
  min(
    region_1.r_regionkey), 
  max(
    region_2.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_2.r_name is not NULL
limit 18;
select  
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 5;
select  
  lineitem_2.l_receiptdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_shipinstruct is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_shipinstruct, lineitem_2.l_receiptdate
limit 11;
select  
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_partkey
limit 14;
select  
  customer_1.c_phone, 
  min(
    customer_1.c_custkey), 
  nation_1.n_comment, 
  nation_1.n_name, 
  customer_1.c_phone, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_name is not NULL
group by customer_1.c_address, customer_1.c_phone, nation_1.n_comment, nation_1.n_name
limit 32;
select  
  part_1.p_size, 
  orders_1.o_orderstatus, 
  customer_1.c_name, 
  lineitem_1.l_receiptdate, 
  part_1.p_brand, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  part_1.p_brand, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  lineitem_1.l_shipmode, 
  orders_1.o_orderkey, 
  customer_1.c_name, 
  part_1.p_size, 
  lineitem_1.l_orderkey, 
  orders_1.o_orderdate, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
        inner join lineitem as lineitem_1
        on (customer_1.c_custkey = lineitem_1.l_orderkey )
      inner join supplier as supplier_1
        inner join part as part_1
        on (supplier_1.s_suppkey = part_1.p_partkey )
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_totalprice < lineitem_1.l_extendedprice
limit 31;
select  
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_size, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size
limit 34;
select  
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 26;
select  
  min(
    part_1.p_size), 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_retailprice
limit 32;
select  
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 30;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_partkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct = lineitem_1.l_linestatus
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 27;
select  
  part_2.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
      inner join supplier as supplier_2
        inner join part as part_2
          inner join supplier as supplier_3
          on (part_2.p_partkey = supplier_3.s_suppkey )
        on (supplier_2.s_suppkey = part_2.p_partkey )
      on (part_1.p_partkey = supplier_2.s_suppkey )
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_2.s_phone is not NULL
limit 20;
select  
  max(
    nation_1.n_nationkey), 
  partsupp_2.ps_supplycost, 
  part_2.p_brand, 
  partsupp_1.ps_comment, 
  part_2.p_brand, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join part as part_1
        inner join part as part_2
        on (part_1.p_partkey = part_2.p_partkey )
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    inner join partsupp as partsupp_2
        inner join supplier as supplier_1
        on (partsupp_2.ps_partkey = supplier_1.s_suppkey )
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where partsupp_1.ps_availqty < partsupp_1.ps_suppkey
group by nation_1.n_comment, part_2.p_brand, partsupp_1.ps_comment, partsupp_2.ps_supplycost
limit 13;
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  lineitem_1.l_shipmode, 
  customer_1.c_acctbal, 
  min(
    part_2.p_size), 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.n_nationkey = lineitem_1.l_orderkey )
      inner join part as part_2
      on (lineitem_1.l_orderkey = part_2.p_partkey )
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount >= part_1.p_retailprice
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, lineitem_1.l_shipmode, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 11;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  orders_1.o_comment, 
  min(
    part_1.p_size), 
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
            inner join region as region_1
            on (nation_1.n_nationkey = region_1.r_regionkey )
          inner join part as part_1
          on (region_1.r_regionkey = part_1.p_partkey )
        inner join part as part_2
            inner join orders as orders_1
            on (part_2.p_partkey = orders_1.o_orderkey )
          inner join lineitem as lineitem_1
          on (part_2.p_partkey = lineitem_1.l_orderkey )
        on (part_1.p_partkey = part_2.p_partkey )
      inner join orders as orders_2
      on (part_2.p_partkey = orders_2.o_orderkey )
    on (customer_1.c_custkey = part_1.p_partkey )
where orders_2.o_orderkey is not NULL
group by nation_1.n_comment, nation_1.n_name, orders_1.o_comment, region_1.r_name
limit 8;
select  
  orders_1.o_comment, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  nation_1.n_nationkey, 
  min(
    orders_1.o_orderkey), 
  min(
    orders_1.o_shippriority), 
  nation_1.n_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderdate >= orders_1.o_orderdate
group by nation_1.n_comment, nation_1.n_nationkey, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_totalprice
limit 41;
select  
  nation_1.n_regionkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where nation_1.n_name <= nation_1.n_name
limit 40;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 1;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 21;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 4;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey <= lineitem_1.l_linenumber
limit 33;
select  
  supplier_1.s_phone, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal > supplier_1.s_acctbal
group by supplier_1.s_acctbal, supplier_1.s_phone
limit 11;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 23;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 39;
select  
  customer_1.c_custkey, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_custkey, customer_1.c_nationkey
limit 39;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty = partsupp_1.ps_suppkey
limit 8;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 27;
select  
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_quantity is not NULL
limit 37;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey
limit 13;
select  
  part_1.p_name, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 21;
select  
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  supplier_1.s_address, 
  supplier_2.s_address, 
  min(
    orders_1.o_custkey), 
  region_1.r_comment, 
  max(
    supplier_2.s_suppkey), 
  customer_1.c_acctbal, 
  orders_1.o_orderkey, 
  region_1.r_regionkey, 
  customer_1.c_phone, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    inner join region as region_1
      inner join supplier as supplier_2
        inner join customer as customer_1
        on (supplier_2.s_suppkey = customer_1.c_custkey )
      on (region_1.r_regionkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_1.s_nationkey > orders_1.o_orderkey
group by customer_1.c_acctbal, customer_1.c_phone, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_totalprice, region_1.r_comment, region_1.r_regionkey, supplier_1.s_address, supplier_1.s_phone, supplier_2.s_address
limit 26;
select  
  part_1.p_name, 
  max(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container <= part_1.p_brand
group by part_1.p_mfgr, part_1.p_name, part_1.p_size
limit 37;
select  
  part_1.p_retailprice, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_retailprice
limit 25;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 24;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 40;
select  
  part_1.p_brand, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size <= part_1.p_partkey
limit 20;
select  
  min(
    partsupp_1.ps_suppkey), 
  lineitem_1.l_linenumber, 
  partsupp_1.ps_suppkey, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  partsupp_1.ps_suppkey, 
  orders_1.o_clerk, 
  lineitem_1.l_returnflag, 
  supplier_1.s_name, 
  min(
    orders_1.o_orderkey), 
  partsupp_1.ps_comment, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_quantity, lineitem_1.l_returnflag, orders_1.o_clerk, orders_1.o_orderkey, partsupp_1.ps_comment, partsupp_1.ps_suppkey, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_nationkey
limit 6;
select  
  min(
    customer_1.c_custkey), 
  supplier_1.s_comment, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  supplier_1.s_address, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  supplier_1.s_acctbal, 
  min(
    customer_1.c_custkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  customer_1.c_mktsegment, 
  supplier_1.s_address, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_comment is not NULL
group by customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey
limit 37;
select  
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey > customer_1.c_custkey
limit 7;
select  
  orders_1.o_comment, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_orderpriority = orders_1.o_clerk
limit 3;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 41;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipdate, 
  min(
    lineitem_1.l_orderkey), 
  max(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_comment, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 22;
select  
  max(
    nation_1.n_regionkey), 
  nation_2.n_nationkey, 
  part_1.p_type, 
  customer_1.c_address, 
  orders_1.o_totalprice, 
  part_1.p_container, 
  part_1.p_type, 
  max(
    nation_1.n_regionkey), 
  part_1.p_mfgr, 
  min(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  max(
    part_1.p_size), 
  nation_1.n_regionkey, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
          inner join region as region_1
          on (customer_1.c_custkey = region_1.r_regionkey )
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    inner join orders as orders_1
      inner join nation as nation_2
      on (orders_1.o_orderkey = nation_2.n_nationkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where part_1.p_mfgr is not NULL
group by customer_1.c_address, customer_1.c_phone, nation_1.n_regionkey, nation_2.n_nationkey, orders_1.o_totalprice, part_1.p_container, part_1.p_mfgr, part_1.p_type
limit 35;
select  
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_discount, lineitem_1.l_shipdate, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 12;
select  
  min(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 41;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 24;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where region_1.r_name is not NULL
limit 14;
select  
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 29;
select  
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_partkey, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_partkey
limit 22;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_partkey), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice < lineitem_1.l_tax
group by lineitem_1.l_extendedprice, lineitem_1.l_orderkey
limit 25;
select  
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_container, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
group by part_1.p_container, part_1.p_mfgr, part_1.p_partkey
limit 41;
select  
  max(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_mfgr, part_1.p_retailprice
limit 8;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 35;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 36;
select  
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where nation_1.n_regionkey is not NULL
limit 10;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 21;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 2;
select  
  max(
    lineitem_2.l_partkey), 
  lineitem_2.l_shipmode, 
  customer_1.c_address, 
  lineitem_1.l_tax, 
  customer_1.c_mktsegment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  lineitem_1.l_partkey, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
        inner join lineitem as lineitem_1
        on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
      inner join lineitem as lineitem_2
      on (partsupp_1.ps_partkey = lineitem_2.l_orderkey )
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_extendedprice > lineitem_1.l_quantity
group by customer_1.c_address, customer_1.c_mktsegment, lineitem_1.l_partkey, lineitem_1.l_tax, lineitem_2.l_shipmode, partsupp_1.ps_suppkey
limit 38;
select  
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey
limit 29;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 33;
select  
  max(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 34;
select  
  part_1.p_mfgr, 
  part_1.p_size, 
  part_1.p_comment, 
  min(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice <= part_1.p_retailprice
group by part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_retailprice, part_1.p_size
limit 42;
select  
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 39;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_acctbal
limit 5;
select  
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_name
limit 31;
select  
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment >= customer_1.c_phone
limit 9;
select  
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where part_1.p_comment is not NULL
limit 18;
select  
  orders_1.o_orderdate, 
  partsupp_1.ps_suppkey, 
  min(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    inner join partsupp as partsupp_1
    on (orders_2.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
group by orders_1.o_orderdate, partsupp_1.ps_suppkey
limit 29;
select  
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  min(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  max(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 40;
select  
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag < lineitem_1.l_shipmode
group by lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_shipmode
limit 31;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount >= lineitem_1.l_quantity
limit 12;
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  max(
    customer_1.c_nationkey), 
  max(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 7;
select  
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty
limit 40;
select  
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
group by supplier_1.s_nationkey
limit 16;
select  
  nation_1.n_comment, 
  supplier_1.s_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
limit 11;
select  
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
limit 9;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 12;
select  
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipdate, 
  part_1.p_comment, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_retailprice is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_shipdate, part_1.p_comment, part_1.p_partkey
limit 42;
select  
  min(
    nation_2.n_regionkey), 
  nation_2.n_nationkey, 
  lineitem_1.l_shipmode, 
  lineitem_2.l_partkey, 
  lineitem_2.l_partkey, 
  lineitem_2.l_partkey, 
  lineitem_2.l_shipdate, 
  nation_2.n_name, 
  lineitem_2.l_quantity, 
  lineitem_1.l_shipdate, 
  nation_2.n_regionkey, 
  max(
    lineitem_1.l_orderkey), 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.n_nationkey = lineitem_1.l_orderkey )
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join nation as nation_2
    on (lineitem_2.l_orderkey = nation_2.n_nationkey )
where nation_1.n_name is not NULL
group by lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_2.l_partkey, lineitem_2.l_quantity, lineitem_2.l_shipdate, nation_1.n_comment, nation_2.n_name, nation_2.n_nationkey, nation_2.n_regionkey
limit 34;
select  
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
limit 14;
select  
  max(
    customer_1.c_custkey), 
  min(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_custkey is not NULL
group by customer_1.c_address, partsupp_1.ps_comment
limit 7;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 19;
select  
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  max(
    part_1.p_size), 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_type, 
  min(
    part_1.p_size), 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_name, 
  min(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 26;
select  
  customer_2.c_custkey, 
  customer_1.c_custkey, 
  customer_2.c_comment, 
  part_1.p_comment, 
  max(
    customer_2.c_nationkey), 
  region_1.r_name, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  region_1.r_regionkey, 
  customer_2.c_phone, 
  region_1.r_name, 
  part_1.p_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join customer as customer_2
    on (region_1.r_regionkey = customer_2.c_custkey )
where customer_2.c_nationkey is not NULL
group by customer_1.c_custkey, customer_2.c_comment, customer_2.c_custkey, customer_2.c_phone, part_1.p_comment, part_1.p_mfgr, part_1.p_name, region_1.r_name, region_1.r_regionkey
limit 19;
select  
  max(
    part_1.p_partkey), 
  min(
    part_1.p_partkey), 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_name
limit 20;
select  
  customer_3.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    inner join customer as customer_3
    on (customer_1.c_custkey = customer_3.c_custkey )
where customer_1.c_comment is not NULL
limit 16;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_phone
limit 11;
select  
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_linestatus >= customer_1.c_phone
limit 28;
select  
  region_1.r_comment, 
  orders_2.o_custkey, 
  partsupp_1.ps_partkey, 
  orders_1.o_comment, 
  max(
    partsupp_1.ps_suppkey), 
  orders_2.o_orderstatus, 
  min(
    orders_2.o_orderkey), 
  max(
    partsupp_1.ps_availqty), 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
        inner join orders as orders_2
        on (orders_1.o_orderkey = orders_2.o_orderkey )
      inner join region as region_1
      on (orders_2.o_orderkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = orders_2.o_orderkey )
where orders_1.o_shippriority >= orders_2.o_shippriority
group by orders_1.o_comment, orders_2.o_custkey, orders_2.o_orderstatus, partsupp_1.ps_partkey, region_1.r_comment
limit 15;
select  
  min(
    supplier_1.s_nationkey), 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
group by orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 4;
select  
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_custkey, 
  max(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate >= orders_1.o_orderdate
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_shippriority
limit 1;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 38;
select  
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
limit 17;
select  
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate = lineitem_1.l_receiptdate
group by lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 27;
select  
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  lineitem_1.l_discount, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_tax = lineitem_1.l_extendedprice
limit 15;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_nationkey
limit 25;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where orders_1.o_orderdate < orders_1.o_orderdate
limit 22;
select  
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_custkey), 
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey >= customer_1.c_custkey
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_nationkey, customer_1.c_phone
limit 32;
select  
  orders_1.o_orderpriority, 
  min(
    orders_1.o_orderkey), 
  nation_1.n_regionkey, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_comment, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_orderdate is not NULL
group by nation_1.n_regionkey, orders_1.o_comment, orders_1.o_orderpriority
limit 19;
select  
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_orderkey is not NULL
limit 1;
select  
  part_1.p_brand, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_suppkey is not NULL
limit 2;
select  
  customer_2.c_acctbal, 
  customer_1.c_name, 
  customer_2.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      inner join customer as customer_2
      on (part_1.p_partkey = customer_2.c_custkey )
    inner join supplier as supplier_1
    on (customer_2.c_custkey = supplier_1.s_suppkey )
where customer_1.c_phone is not NULL
limit 11;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment, 
  lineitem_1.l_returnflag, 
  region_1.r_regionkey, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linestatus, lineitem_1.l_returnflag, region_1.r_regionkey
limit 38;
select  
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 29;
select  
  customer_1.c_phone, 
  max(
    partsupp_1.ps_suppkey), 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_partkey > partsupp_1.ps_availqty
group by customer_1.c_name, customer_1.c_phone
limit 41;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  nation_1.n_regionkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by nation_1.n_name, nation_1.n_regionkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 26;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 29;
select  
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_nationkey
limit 29;
select  
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 33;
select  
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_suppkey), 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_size, 
  partsupp_1.ps_comment, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where part_1.p_mfgr is not NULL
group by part_1.p_comment, part_1.p_name, part_1.p_partkey, part_1.p_size, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 22;
select  
  customer_1.c_phone, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 31;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_extendedprice, 
  supplier_1.s_comment, 
  min(
    lineitem_1.l_linenumber), 
  supplier_1.s_address, 
  lineitem_1.l_extendedprice, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where lineitem_1.l_quantity = lineitem_1.l_discount
group by lineitem_1.l_extendedprice, lineitem_1.l_shipmode, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey
limit 35;
select  
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_nationkey, supplier_1.s_phone
limit 19;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name
limit 17;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 16;
select  
  min(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_acctbal is not NULL
limit 17;
select  
  part_1.p_brand, 
  supplier_1.s_suppkey, 
  min(
    part_1.p_size), 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
          inner join region as region_1
          on (customer_1.c_custkey = region_1.r_regionkey )
        inner join lineitem as lineitem_1
        on (region_1.r_regionkey = lineitem_1.l_orderkey )
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where supplier_1.s_address is not NULL
group by part_1.p_brand, region_1.r_comment, region_1.r_regionkey, supplier_1.s_suppkey
limit 32;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 3;
select  
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 15;
select  
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_suppkey is not NULL
limit 31;
select  
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where part_1.p_type is not NULL
limit 14;
select  
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
limit 6;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 6;
select  
  max(
    orders_1.o_orderkey), 
  orders_1.o_shippriority, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_custkey), 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority
limit 29;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_suppkey, 
  part_1.p_comment, 
  lineitem_1.l_partkey, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_shipdate is not NULL
limit 12;
select  
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_suppkey
limit 31;
select  
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_custkey is not NULL
limit 7;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where region_1.r_comment is not NULL
limit 22;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_acctbal = customer_1.c_acctbal
limit 35;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 23;
select  
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 31;
select  
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  max(
    customer_1.c_custkey), 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 14;
select  
  supplier_1.s_name, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_2.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_nationkey >= supplier_1.s_nationkey
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey, supplier_2.s_phone
limit 22;
select  
  region_1.r_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_orderstatus is not NULL
limit 37;
select  
  max(
    orders_1.o_orderkey), 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_custkey, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_custkey), 
  max(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 27;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 37;
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_nationkey
limit 22;
select  
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment < customer_1.c_phone
group by customer_1.c_phone
limit 35;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join region as region_1
        on (supplier_1.s_suppkey = region_1.r_regionkey )
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where region_2.r_name is not NULL
limit 10;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_comment, 
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_tax, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_tax
limit 5;
select  
  partsupp_1.ps_partkey, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_supplycost, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 35;
select  
  customer_1.c_phone, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_phone is not NULL
limit 26;
select  
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
      inner join region as region_2
        inner join customer as customer_1
        on (region_2.r_regionkey = customer_1.c_custkey )
      on (region_1.r_regionkey = region_2.r_regionkey )
    on (orders_1.o_orderkey = customer_1.c_custkey )
where customer_1.c_acctbal > orders_1.o_totalprice
limit 13;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 25;
select  
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 37;
select  
  part_1.p_partkey, 
  part_1.p_retailprice, 
  max(
    part_1.p_partkey), 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_comment, part_1.p_partkey, part_1.p_retailprice
limit 10;
select  
  part_1.p_size, 
  part_1.p_size, 
  max(
    part_1.p_size), 
  part_1.p_retailprice, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container = part_1.p_mfgr
group by part_1.p_retailprice, part_1.p_size
limit 7;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 35;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where lineitem_1.l_extendedprice is not NULL
limit 26;
select  
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
limit 24;
select  
  partsupp_1.ps_partkey, 
  nation_1.n_comment, 
  nation_2.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
      inner join nation as nation_2
      on (partsupp_1.ps_partkey = nation_2.n_nationkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_regionkey is not NULL
limit 41;
select  
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_returnflag, lineitem_1.l_shipdate
limit 2;
select  
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand > part_1.p_container
limit 13;
select  
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 39;
select  
  partsupp_1.ps_suppkey, 
  partsupp_2.ps_partkey, 
  max(
    partsupp_1.ps_availqty), 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_2.ps_supplycost is not NULL
group by partsupp_1.ps_suppkey, partsupp_2.ps_partkey, supplier_1.s_phone
limit 9;
select  
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey
limit 41;
select  
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name <= region_1.r_name
limit 23;
select  
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join region as region_1
        inner join supplier as supplier_1
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      inner join supplier as supplier_2
      on (region_1.r_regionkey = supplier_2.s_suppkey )
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where region_1.r_regionkey is not NULL
limit 36;
select  
  lineitem_1.l_quantity
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join orders as orders_1
      inner join part as part_1
      on (orders_1.o_orderkey = part_1.p_partkey )
    on (supplier_1.s_suppkey = part_1.p_partkey )
where orders_1.o_comment is not NULL
limit 3;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 31;
select  
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 33;
select  
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 26;
select  
  partsupp_1.ps_supplycost, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    on (nation_1.n_nationkey = region_1.r_regionkey )
where partsupp_1.ps_partkey is not NULL
limit 21;
select  
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 30;
select  
  supplier_1.s_phone, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where part_1.p_comment is not NULL
group by supplier_1.s_phone
limit 13;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name < region_1.r_name
limit 39;
select  
  orders_1.o_orderpriority, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate = orders_1.o_orderdate
limit 35;
select  
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_name, part_1.p_retailprice
limit 12;
select  
  partsupp_1.ps_comment, 
  orders_1.o_orderstatus, 
  partsupp_1.ps_suppkey, 
  partsupp_2.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where partsupp_2.ps_availqty is not NULL
limit 10;
select  
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  region_1.r_comment, 
  customer_1.c_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_address is not NULL
limit 13;
select  
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 5;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join lineitem as lineitem_1
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where nation_1.n_regionkey is not NULL
limit 35;
select  
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_discount, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_returnflag
limit 31;
select  
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_partkey
limit 13;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 14;
select  
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 11;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 21;
select  
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 41;
select  
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_nationkey), 
  min(
    customer_1.c_custkey), 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 7;
select  
  lineitem_1.l_tax, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_receiptdate, lineitem_1.l_tax
limit 2;
select  
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 4;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 5;
select  
  part_1.p_brand, 
  lineitem_1.l_shipmode, 
  supplier_1.s_comment, 
  part_1.p_retailprice, 
  lineitem_1.l_discount, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where supplier_1.s_comment is not NULL
limit 36;
select  
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority = orders_1.o_custkey
group by orders_1.o_comment, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 23;
select  
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 34;
select  
  customer_1.c_custkey, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_custkey
limit 7;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_returnflag, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_quantity
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate <= lineitem_1.l_shipdate
group by lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey
limit 22;
select  
  region_1.r_comment, 
  part_1.p_size, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
limit 5;
select  
  part_1.p_size, 
  min(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 15;
select  
  nation_1.n_regionkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where partsupp_1.ps_suppkey = nation_1.n_nationkey
group by nation_1.n_comment, nation_1.n_regionkey, partsupp_1.ps_availqty, partsupp_1.ps_supplycost
limit 24;
select  
  max(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
        inner join supplier as supplier_1
        on (part_1.p_partkey = supplier_1.s_suppkey )
      inner join part as part_2
        inner join customer as customer_1
        on (part_2.p_partkey = customer_1.c_custkey )
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join partsupp as partsupp_1
        inner join part as part_3
          inner join nation as nation_1
          on (part_3.p_partkey = nation_1.n_nationkey )
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      inner join partsupp as partsupp_2
      on (nation_1.n_nationkey = partsupp_2.ps_partkey )
    on (customer_1.c_custkey = nation_1.n_nationkey )
where part_2.p_container is not NULL
limit 33;
select  
  nation_1.n_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
limit 18;
select  
  lineitem_1.l_linenumber, 
  partsupp_2.ps_suppkey, 
  partsupp_2.ps_availqty, 
  supplier_1.s_nationkey, 
  max(
    partsupp_2.ps_availqty), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  min(
    partsupp_1.ps_suppkey), 
  supplier_1.s_acctbal, 
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join partsupp as partsupp_2
        inner join lineitem as lineitem_1
        on (partsupp_2.ps_partkey = lineitem_1.l_orderkey )
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_partkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, partsupp_2.ps_availqty, partsupp_2.ps_suppkey, supplier_1.s_acctbal, supplier_1.s_nationkey
limit 37;
select  
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 3;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name
limit 20;
select  
  customer_1.c_nationkey, 
  region_1.r_comment, 
  customer_1.c_nationkey, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join partsupp as partsupp_1
      inner join region as region_1
        inner join customer as customer_1
        on (region_1.r_regionkey = customer_1.c_custkey )
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where customer_1.c_acctbal <= orders_1.o_totalprice
limit 1;
select  
  orders_1.o_orderstatus, 
  max(
    orders_2.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
        inner join orders as orders_1
        on (nation_1.n_nationkey = orders_1.o_orderkey )
      inner join orders as orders_2
        inner join customer as customer_1
        on (orders_2.o_orderkey = customer_1.c_custkey )
      on (nation_1.n_nationkey = orders_2.o_orderkey )
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_type is not NULL
group by orders_1.o_orderstatus
limit 6;
select  
  part_1.p_partkey, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
limit 31;
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal < supplier_1.s_acctbal
limit 26;
select  
  max(
    partsupp_2.ps_suppkey), 
  nation_1.n_nationkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
        inner join orders as orders_1
        on (partsupp_2.ps_partkey = orders_1.o_orderkey )
      inner join nation as nation_1
      on (partsupp_2.ps_partkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where orders_1.o_orderpriority < orders_1.o_orderstatus
group by nation_1.n_nationkey, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 4;
select distinct 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
limit 39;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey <= lineitem_1.l_linenumber
limit 33;
select  
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 40;
select  
  orders_1.o_comment, 
  min(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_shippriority
limit 10;
select  
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  max(
    partsupp_2.ps_availqty), 
  customer_1.c_comment, 
  partsupp_2.ps_availqty, 
  max(
    orders_1.o_orderkey), 
  max(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join customer as customer_1
        inner join part as part_1
          inner join partsupp as partsupp_1
          on (part_1.p_partkey = partsupp_1.ps_partkey )
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      on (orders_1.o_orderkey = customer_1.c_custkey )
    inner join partsupp as partsupp_2
    on (part_1.p_partkey = partsupp_2.ps_partkey )
where orders_1.o_clerk = part_1.p_mfgr
group by customer_1.c_comment, orders_1.o_comment, orders_1.o_orderdate, partsupp_2.ps_availqty
limit 15;
select  
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  lineitem_1.l_suppkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
group by lineitem_1.l_suppkey, nation_1.n_comment, nation_1.n_regionkey
limit 33;
select  
  customer_1.c_phone, 
  min(
    customer_1.c_nationkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  customer_1.c_comment, 
  nation_1.n_nationkey, 
  customer_1.c_nationkey, 
  nation_1.n_nationkey, 
  customer_1.c_phone, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_mktsegment > customer_1.c_phone
group by customer_1.c_comment, customer_1.c_nationkey, customer_1.c_phone, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 28;
select  
  nation_1.n_regionkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.n_name is not NULL
limit 24;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 16;
select  
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_shippriority), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderstatus is not NULL
group by nation_1.n_regionkey, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority
limit 27;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 21;
select  
  customer_1.c_comment, 
  customer_1.c_name, 
  min(
    customer_1.c_nationkey), 
  lineitem_1.l_returnflag, 
  customer_1.c_custkey, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where supplier_1.s_name is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, lineitem_1.l_returnflag
limit 4;
select  
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost > orders_1.o_totalprice
limit 3;
select  
  orders_1.o_orderpriority, 
  max(
    orders_1.o_orderkey), 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_totalprice > orders_1.o_totalprice
group by orders_1.o_orderpriority, region_1.r_comment, region_1.r_regionkey
limit 1;
select  
  max(
    supplier_1.s_suppkey), 
  nation_1.n_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, supplier_1.s_acctbal, supplier_1.s_suppkey
limit 2;
select  
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct
limit 17;
select  
  region_1.r_name, 
  part_2.p_name, 
  part_2.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
      inner join region as region_1
      on (part_2.p_partkey = region_1.r_regionkey )
    on (part_1.p_partkey = region_1.r_regionkey )
where part_2.p_size is not NULL
limit 29;
select  
  lineitem_1.l_linenumber, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
        inner join orders as orders_1
        on (region_1.r_regionkey = orders_1.o_orderkey )
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where part_1.p_container = lineitem_1.l_linestatus
limit 12;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 41;
select  
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 42;
select  
  supplier_1.s_name, 
  nation_1.n_regionkey, 
  supplier_1.s_suppkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_acctbal is not NULL
limit 35;
select  
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_linenumber
limit 33;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 35;
select  
  orders_1.o_comment, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderpriority
limit 17;
select  
  lineitem_1.l_shipdate, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_totalprice <= lineitem_1.l_tax
limit 8;
select  
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
limit 12;
select  
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_quantity, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
limit 4;
select  
  region_1.r_regionkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    inner join region as region_1
        inner join lineitem as lineitem_1
        on (region_1.r_regionkey = lineitem_1.l_orderkey )
      inner join orders as orders_2
      on (lineitem_1.l_orderkey = orders_2.o_orderkey )
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_partkey is not NULL
limit 19;
select  
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal = customer_1.c_acctbal
limit 4;
select  
  region_1.r_comment, 
  partsupp_1.ps_supplycost, 
  customer_1.c_phone, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
          inner join region as region_1
          on (customer_1.c_custkey = region_1.r_regionkey )
        inner join partsupp as partsupp_1
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where customer_2.c_phone is not NULL
limit 4;
select  
  part_2.p_container, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  nation_1.n_comment, 
  min(
    part_1.p_partkey), 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  customer_1.c_address, 
  part_1.p_type, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
        inner join part as part_2
          inner join customer as customer_1
          on (part_2.p_partkey = customer_1.c_custkey )
        on (part_1.p_partkey = customer_1.c_custkey )
      inner join partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      on (customer_1.c_custkey = nation_1.n_nationkey )
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where nation_1.n_comment is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_phone, nation_1.n_comment, part_1.p_type, part_2.p_container, partsupp_1.ps_suppkey
limit 33;
select  
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
        inner join partsupp as partsupp_1
          inner join part as part_1
          on (partsupp_1.ps_partkey = part_1.p_partkey )
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where customer_1.c_custkey >= partsupp_1.ps_partkey
limit 8;
select  
  orders_1.o_comment, 
  max(
    orders_1.o_custkey), 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  min(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 11;
select  
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_nationkey
limit 30;
select  
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 18;
select  
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_phone, 
  min(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 33;
select  
  min(
    supplier_1.s_suppkey), 
  customer_2.c_nationkey, 
  part_1.p_brand, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  part_1.p_partkey, 
  part_1.p_type, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
          inner join customer as customer_2
          on (lineitem_1.l_orderkey = customer_2.c_custkey )
        on (supplier_1.s_suppkey = customer_2.c_custkey )
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    on (part_1.p_partkey = customer_1.c_custkey )
where supplier_1.s_address is not NULL
group by customer_1.c_mktsegment, customer_2.c_nationkey, lineitem_1.l_linestatus, part_1.p_brand, part_1.p_partkey, part_1.p_type
limit 33;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 11;
select  
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_regionkey
limit 8;
select  
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_comment, 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  max(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey <= customer_1.c_nationkey
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 28;
select  
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 32;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_partkey, 
  lineitem_1.l_quantity
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey <= lineitem_1.l_orderkey
limit 32;
select  
  supplier_1.s_phone, 
  partsupp_1.ps_supplycost, 
  supplier_1.s_name, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_linestatus = lineitem_1.l_shipmode
limit 1;
select  
  region_1.r_name, 
  part_2.p_mfgr, 
  customer_1.c_comment, 
  customer_1.c_phone, 
  region_2.r_comment, 
  region_2.r_comment, 
  customer_1.c_phone, 
  region_2.r_comment, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
          inner join customer as customer_1
          on (part_1.p_partkey = customer_1.c_custkey )
        inner join region as region_1
        on (part_1.p_partkey = region_1.r_regionkey )
      inner join region as region_2
      on (part_1.p_partkey = region_2.r_regionkey )
    inner join part as part_2
    on (customer_1.c_custkey = part_2.p_partkey )
where region_2.r_comment is not NULL
limit 39;
select  
  part_1.p_comment, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_partkey, 
  max(
    part_1.p_partkey), 
  part_1.p_type, 
  max(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  min(
    part_1.p_partkey), 
  min(
    part_1.p_partkey), 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 26;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_orderpriority is not NULL
limit 17;
select  
  lineitem_1.l_suppkey, 
  lineitem_2.l_shipmode, 
  lineitem_1.l_linenumber, 
  lineitem_2.l_extendedprice, 
  lineitem_2.l_suppkey, 
  lineitem_2.l_discount, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_1.l_shipinstruct is not NULL
limit 18;
select  
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 23;
select  
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
      inner join partsupp as partsupp_1
        inner join customer as customer_1
          inner join lineitem as lineitem_1
          on (customer_1.c_custkey = lineitem_1.l_orderkey )
        on (partsupp_1.ps_partkey = customer_1.c_custkey )
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    on (nation_1.n_nationkey = customer_1.c_custkey )
where orders_1.o_orderpriority >= lineitem_1.l_returnflag
limit 28;
select  
  min(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount < lineitem_1.l_tax
group by lineitem_1.l_comment
limit 18;
select  
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 37;
select  
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_shipmode
limit 15;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey < region_1.r_regionkey
limit 34;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 29;
select  
  orders_2.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    inner join partsupp as partsupp_1
    on (orders_2.o_orderkey = partsupp_1.ps_partkey )
where orders_2.o_shippriority is not NULL
limit 5;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 2;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  min(
    supplier_1.s_nationkey), 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 28;
select  
  min(
    orders_1.o_orderkey), 
  customer_3.c_name, 
  orders_1.o_comment, 
  customer_3.c_mktsegment, 
  orders_2.o_shippriority, 
  customer_2.c_phone, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
        inner join customer as customer_1
          inner join orders as orders_2
          on (customer_1.c_custkey = orders_2.o_orderkey )
        on (region_1.r_regionkey = orders_2.o_orderkey )
      inner join customer as customer_2
        inner join customer as customer_3
        on (customer_2.c_custkey = customer_3.c_custkey )
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (orders_1.o_orderkey = customer_2.c_custkey )
where orders_2.o_shippriority is not NULL
group by customer_1.c_name, customer_2.c_phone, customer_3.c_mktsegment, customer_3.c_name, orders_1.o_comment, orders_2.o_shippriority
limit 41;
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 41;
select  
  lineitem_1.l_partkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where part_1.p_size is not NULL
limit 1;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_retailprice is not NULL
limit 23;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name
limit 42;
select  
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 30;
select  
  max(
    supplier_1.s_suppkey), 
  lineitem_1.l_shipdate, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  customer_1.c_nationkey, 
  supplier_1.s_name, 
  lineitem_1.l_quantity, 
  supplier_1.s_name, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode, 
  customer_1.c_comment, 
  lineitem_1.l_commitdate, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  customer_1.c_comment, 
  supplier_1.s_suppkey, 
  lineitem_1.l_discount, 
  customer_1.c_name, 
  supplier_1.s_address, 
  lineitem_1.l_shipinstruct, 
  customer_1.c_phone, 
  min(
    customer_1.c_nationkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  min(
    lineitem_1.l_partkey), 
  customer_1.c_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey), 
  supplier_1.s_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_custkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where customer_1.c_mktsegment is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_quantity, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_tax, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 12;
select  
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey <= region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 14;
select  
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  max(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 14;
select  
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join orders as orders_2
      inner join region as region_1
        inner join nation as nation_1
          inner join partsupp as partsupp_1
          on (nation_1.n_nationkey = partsupp_1.ps_partkey )
        on (region_1.r_regionkey = nation_1.n_nationkey )
      on (orders_2.o_orderkey = nation_1.n_nationkey )
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_name >= orders_1.o_orderpriority
limit 12;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 3;
select  
  min(
    part_1.p_partkey), 
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_name is not NULL
group by customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_phone
limit 23;
select  
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 30;
select  
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_comment, 
  max(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  min(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 16;
select  
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 17;
select  
  min(
    lineitem_1.l_partkey), 
  min(
    lineitem_1.l_partkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where lineitem_1.l_discount is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address
limit 38;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey
limit 30;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 7;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  supplier_1.s_address, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    supplier_1.s_nationkey), 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_phone = supplier_1.s_name
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 32;
select  
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 11;
select  
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_quantity, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode
limit 26;
select  
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_regionkey
limit 4;
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 33;
select  
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey > supplier_1.s_nationkey
limit 38;
select  
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_orderkey), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 30;
select  
  part_1.p_container, 
  part_1.p_name, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
limit 8;
select  
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where customer_1.c_nationkey is not NULL
limit 41;
select  
  max(
    part_1.p_partkey), 
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  min(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand = part_1.p_container
group by part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_size
limit 19;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_1.n_name is not NULL
limit 32;
select  
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join orders as orders_1
      inner join customer as customer_1
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      on (orders_1.o_orderkey = part_1.p_partkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_linenumber >= part_1.p_size
group by lineitem_1.l_discount
limit 30;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_phone, supplier_1.s_suppkey
limit 36;
select  
  orders_1.o_custkey, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_acctbal >= orders_1.o_totalprice
limit 23;
select  
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_retailprice is not NULL
limit 30;
select  
  partsupp_1.ps_partkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey), 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
group by nation_1.n_name, partsupp_1.ps_availqty, partsupp_1.ps_partkey
limit 7;
select  
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_1.c_name is not NULL
limit 18;
select  
  lineitem_1.l_receiptdate, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
        inner join partsupp as partsupp_1
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (customer_1.c_custkey = region_1.r_regionkey )
where partsupp_1.ps_availqty < customer_1.c_nationkey
limit 11;
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where part_1.p_container is not NULL
limit 11;
select  
  min(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  max(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_name, 
  max(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 22;
select  
  min(
    nation_1.n_regionkey), 
  region_2.r_regionkey, 
  region_2.r_comment, 
  region_2.r_regionkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_suppkey = nation_1.n_nationkey )
      inner join region as region_2
      on (supplier_1.s_suppkey = region_2.r_regionkey )
    on (region_1.r_regionkey = region_2.r_regionkey )
where nation_1.n_comment is not NULL
group by nation_1.n_regionkey, region_2.r_comment, region_2.r_regionkey
limit 24;
select  
  min(
    orders_1.o_custkey), 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_clerk, orders_1.o_orderdate, orders_1.o_totalprice
limit 14;
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 13;
select distinct 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 13;
select  
  max(
    customer_1.c_nationkey), 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
group by customer_1.c_custkey
limit 25;
select  
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
      inner join lineitem as lineitem_1
          inner join supplier as supplier_1
          on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
        inner join part as part_1
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    on (customer_1.c_custkey = nation_1.n_nationkey )
where nation_1.n_name > customer_1.c_phone
limit 26;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 6;
select  
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  max(
    orders_1.o_shippriority), 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  max(
    orders_1.o_custkey), 
  orders_1.o_custkey, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_totalprice
limit 15;
select  
  max(
    part_1.p_partkey), 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_name is not NULL
group by part_1.p_container
limit 17;
select  
  supplier_1.s_acctbal, 
  lineitem_1.l_partkey, 
  part_1.p_name, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join supplier as supplier_1
        inner join part as part_1
        on (supplier_1.s_suppkey = part_1.p_partkey )
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where part_1.p_retailprice >= lineitem_1.l_tax
limit 39;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 20;
select  
  partsupp_1.ps_comment, 
  nation_1.n_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where partsupp_1.ps_availqty is not NULL
limit 28;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
group by region_1.r_name, region_1.r_regionkey
limit 42;
select  
  part_2.p_name, 
  part_2.p_comment, 
  part_1.p_brand, 
  part_2.p_container, 
  min(
    part_1.p_size), 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_size is not NULL
group by part_1.p_brand, part_1.p_retailprice, part_2.p_comment, part_2.p_container, part_2.p_name
limit 40;
select  
  max(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 35;
select  
  lineitem_1.l_partkey, 
  lineitem_2.l_shipmode, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
      inner join lineitem as lineitem_2
      on (region_1.r_regionkey = lineitem_2.l_orderkey )
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_1.l_partkey is not NULL
limit 19;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 17;
select  
  lineitem_1.l_commitdate, 
  min(
    partsupp_1.ps_availqty), 
  customer_2.c_address, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
        inner join partsupp as partsupp_1
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join customer as customer_2
    on (lineitem_1.l_orderkey = customer_2.c_custkey )
where lineitem_1.l_receiptdate is not NULL
group by customer_2.c_address, lineitem_1.l_commitdate, partsupp_1.ps_availqty
limit 41;
select  
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 28;
select  
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 25;
select  
  customer_2.c_name, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  customer_1.c_address, 
  partsupp_1.ps_suppkey, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_availqty is not NULL
limit 4;
select  
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    inner join lineitem as lineitem_1
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where orders_1.o_totalprice >= lineitem_1.l_tax
limit 1;
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_comment, 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_nationkey), 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_name, customer_1.c_phone
limit 21;
select  
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_suppkey
limit 40;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  partsupp_2.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    inner join lineitem as lineitem_1
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    on (supplier_2.s_suppkey = partsupp_2.ps_partkey )
where supplier_2.s_name > lineitem_1.l_shipmode
limit 13;
select  
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_shipdate
limit 22;
select  
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_address, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name
limit 3;
select  
  part_1.p_container, 
  part_2.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_container is not NULL
limit 6;
select  
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 3;
select  
  max(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_nationkey, customer_1.c_phone
limit 19;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct, lineitem_1.l_tax
limit 24;
select  
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey <= lineitem_1.l_suppkey
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_suppkey
limit 41;
select  
  supplier_2.s_comment, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_nationkey = customer_1.c_custkey )
      inner join supplier as supplier_1
        inner join customer as customer_2
        on (supplier_1.s_suppkey = customer_2.c_custkey )
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (customer_2.c_custkey = supplier_2.s_suppkey )
where supplier_2.s_name is not NULL
limit 6;
select  
  lineitem_1.l_comment, 
  part_1.p_size, 
  nation_1.n_name, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_type is not NULL
limit 5;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_regionkey
limit 13;
select  
  region_1.r_name, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where partsupp_1.ps_suppkey <= partsupp_1.ps_partkey
limit 7;
select  
  customer_1.c_address, 
  min(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey
limit 5;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where region_1.r_name is not NULL
limit 26;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_regionkey
limit 2;
select  
  region_1.r_name, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  supplier_1.s_acctbal, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_nationkey), 
  supplier_1.s_address, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_address is not NULL
group by customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, region_1.r_name, supplier_1.s_acctbal, supplier_1.s_address
limit 19;
select  
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 18;
select  
  partsupp_1.ps_suppkey, 
  min(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
        inner join lineitem as lineitem_1
          inner join nation as nation_1
          on (lineitem_1.l_orderkey = nation_1.n_nationkey )
        on (orders_1.o_orderkey = nation_1.n_nationkey )
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    inner join customer as customer_1
        inner join customer as customer_2
        on (customer_1.c_custkey = customer_2.c_custkey )
      inner join partsupp as partsupp_1
      on (customer_2.c_custkey = partsupp_1.ps_partkey )
    on (orders_1.o_orderkey = customer_2.c_custkey )
where customer_1.c_name is not NULL
group by partsupp_1.ps_suppkey
limit 5;
select  
  part_1.p_container, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 17;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 24;
select  
  orders_1.o_custkey, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_custkey
limit 13;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 34;
select  
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal > supplier_1.s_acctbal
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_phone, supplier_1.s_suppkey
limit 29;
select  
  max(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_comment is not NULL
limit 3;
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 9;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 7;
select  
  min(
    part_1.p_partkey), 
  min(
    part_1.p_partkey), 
  part_1.p_type, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_size, 
  max(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_type, 
  max(
    part_1.p_size), 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_name, 
  min(
    part_1.p_partkey), 
  part_1.p_name, 
  min(
    part_1.p_partkey), 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 19;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
limit 24;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  min(
    part_1.p_partkey), 
  part_1.p_size, 
  part_1.p_partkey, 
  nation_1.n_regionkey, 
  part_1.p_brand, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_name, 
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, part_1.p_brand, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_size
limit 23;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct > lineitem_1.l_shipmode
limit 3;
select  
  part_1.p_retailprice, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
limit 17;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 19;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 8;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 24;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_address, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey
limit 18;
select  
  max(
    lineitem_1.l_partkey), 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    inner join nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where nation_1.n_nationkey is not NULL
group by customer_1.c_address
limit 30;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 34;
select  
  part_2.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
      inner join partsupp as partsupp_1
      on (part_2.p_partkey = partsupp_1.ps_partkey )
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_retailprice is not NULL
limit 10;
select  
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey >= part_1.p_size
limit 4;
select  
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
limit 31;
select  
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name
limit 13;
select  
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_totalprice >= part_1.p_retailprice
limit 38;
select  
  customer_1.c_acctbal, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join region as region_1
      on (customer_1.c_custkey = region_1.r_regionkey )
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where region_1.r_comment is not NULL
limit 28;
select  
  lineitem_1.l_extendedprice, 
  orders_2.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
        inner join orders as orders_1
        on (lineitem_1.l_orderkey = orders_1.o_orderkey )
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (lineitem_1.l_orderkey = orders_2.o_orderkey )
where lineitem_1.l_comment is not NULL
limit 41;
select  
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  min(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  nation_1.n_name, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_shippriority <= nation_1.n_nationkey
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_shippriority
limit 32;
select  
  min(
    part_1.p_size), 
  part_1.p_mfgr, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size = part_1.p_partkey
group by part_1.p_mfgr
limit 37;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 14;
select  
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 21;
select  
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty = partsupp_1.ps_suppkey
group by partsupp_1.ps_comment, partsupp_1.ps_partkey
limit 20;
select  
  partsupp_1.ps_suppkey, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_suppkey), 
  partsupp_1.ps_availqty, 
  partsupp_2.ps_supplycost, 
  partsupp_2.ps_availqty, 
  lineitem_1.l_commitdate, 
  partsupp_2.ps_availqty, 
  partsupp_2.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
    on (lineitem_1.l_orderkey = partsupp_2.ps_partkey )
where lineitem_1.l_quantity < lineitem_1.l_tax
group by lineitem_1.l_commitdate, lineitem_1.l_shipinstruct, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_2.ps_availqty, partsupp_2.ps_comment, partsupp_2.ps_supplycost
limit 18;
select  
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 40;
select  
  region_1.r_comment, 
  max(
    part_1.p_size), 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_orderkey), 
  part_1.p_brand, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where region_1.r_comment is not NULL
group by lineitem_1.l_partkey, part_1.p_brand, region_1.r_comment
limit 11;
select  
  partsupp_1.ps_supplycost, 
  orders_2.o_orderdate, 
  nation_2.n_comment, 
  orders_2.o_shippriority, 
  partsupp_1.ps_comment, 
  part_2.p_brand, 
  nation_2.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
        inner join orders as orders_1
          inner join supplier as supplier_1
          on (orders_1.o_orderkey = supplier_1.s_suppkey )
        on (part_1.p_partkey = supplier_1.s_suppkey )
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    inner join nation as nation_1
      inner join nation as nation_2
          inner join part as part_2
          on (nation_2.n_nationkey = part_2.p_partkey )
        inner join orders as orders_2
          inner join supplier as supplier_2
          on (orders_2.o_orderkey = supplier_2.s_suppkey )
        on (nation_2.n_nationkey = supplier_2.s_suppkey )
      on (nation_1.n_nationkey = part_2.p_partkey )
    on (supplier_1.s_suppkey = nation_2.n_nationkey )
where nation_1.n_comment is not NULL
limit 31;
select  
  max(
    partsupp_1.ps_partkey), 
  orders_2.o_orderdate, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join partsupp as partsupp_1
        inner join orders as orders_2
        on (partsupp_1.ps_partkey = orders_2.o_orderkey )
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_mktsegment < orders_2.o_clerk
group by orders_2.o_orderdate, partsupp_1.ps_suppkey
limit 37;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_shipmode, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where lineitem_1.l_shipdate = lineitem_1.l_commitdate
limit 17;
select  
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 2;
select  
  customer_1.c_phone, 
  min(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_comment, customer_1.c_nationkey, customer_1.c_phone
limit 23;
select  
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey < supplier_1.s_nationkey
limit 35;
select  
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where part_1.p_mfgr is not NULL
limit 41;
select  
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where partsupp_1.ps_availqty is not NULL
limit 7;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  supplier_1.s_address, 
  max(
    supplier_1.s_suppkey), 
  min(
    supplier_1.s_suppkey), 
  nation_1.n_name, 
  supplier_1.s_suppkey, 
  nation_1.n_name, 
  supplier_1.s_name, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  supplier_1.s_acctbal, 
  nation_1.n_name, 
  nation_1.n_name, 
  supplier_1.s_acctbal, 
  nation_1.n_regionkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  nation_1.n_name, 
  supplier_1.s_name, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_acctbal = supplier_1.s_acctbal
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_suppkey
limit 19;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey >= nation_1.n_regionkey
limit 18;
select  
  lineitem_1.l_partkey, 
  customer_1.c_address, 
  part_1.p_partkey, 
  lineitem_1.l_returnflag, 
  customer_1.c_phone, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join customer as customer_1
        inner join partsupp as partsupp_1
        on (customer_1.c_custkey = partsupp_1.ps_partkey )
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_linenumber is not NULL
limit 4;
select  
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 20;
select  
  lineitem_2.l_shipinstruct, 
  lineitem_2.l_commitdate, 
  lineitem_1.l_suppkey, 
  region_1.r_regionkey, 
  lineitem_1.l_shipdate, 
  region_1.r_comment, 
  customer_1.c_phone, 
  customer_1.c_address, 
  lineitem_1.l_quantity, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
        inner join lineitem as lineitem_1
        on (region_1.r_regionkey = lineitem_1.l_orderkey )
      inner join lineitem as lineitem_2
      on (region_1.r_regionkey = lineitem_2.l_orderkey )
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_2.l_shipmode is not NULL
limit 9;
select  
  orders_1.o_shippriority, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_totalprice is not NULL
group by orders_1.o_shippriority, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 42;
select  
  customer_1.c_address, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  min(
    customer_1.c_custkey), 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey >= customer_1.c_nationkey
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey
limit 6;
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 36;
select  
  nation_1.n_regionkey, 
  part_2.p_brand, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
        inner join supplier as supplier_1
        on (part_1.p_partkey = supplier_1.s_suppkey )
      inner join nation as nation_1
        inner join part as part_2
          inner join part as part_3
          on (part_2.p_partkey = part_3.p_partkey )
        on (nation_1.n_nationkey = part_2.p_partkey )
      on (supplier_1.s_suppkey = part_2.p_partkey )
    inner join nation as nation_2
    on (supplier_1.s_suppkey = nation_2.n_nationkey )
where part_3.p_mfgr is not NULL
limit 29;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment, 
  lineitem_1.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct < lineitem_1.l_linestatus
limit 13;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
limit 25;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 37;
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  min(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name
limit 16;
select  
  part_1.p_mfgr, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
group by nation_1.n_name, nation_1.n_nationkey, part_1.p_mfgr
limit 26;
select  
  max(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where part_1.p_partkey is not NULL
limit 3;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_regionkey
limit 39;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_partkey), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 9;
select  
  supplier_1.s_comment, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_comment, supplier_1.s_phone
limit 40;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice > lineitem_1.l_quantity
limit 9;
select  
  orders_1.o_custkey, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey > orders_1.o_orderkey
limit 12;
select  
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
limit 10;
select  
  lineitem_1.l_quantity
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 19;
select  
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where lineitem_1.l_orderkey = partsupp_1.ps_suppkey
limit 18;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority <= orders_1.o_clerk
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_totalprice
limit 42;
select  
  customer_1.c_phone, 
  min(
    customer_1.c_custkey), 
  customer_1.c_name, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_container, 
  customer_1.c_custkey, 
  part_1.p_container, 
  customer_1.c_mktsegment, 
  part_1.p_comment, 
  customer_1.c_nationkey, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where part_1.p_brand is not NULL
group by customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, part_1.p_comment, part_1.p_container, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 14;
select  
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 11;
select  
  part_1.p_partkey, 
  nation_1.n_regionkey, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join supplier as supplier_1
      inner join nation as nation_2
      on (supplier_1.s_suppkey = nation_2.n_nationkey )
    on (part_1.p_partkey = nation_2.n_nationkey )
where supplier_1.s_acctbal = part_1.p_retailprice
limit 24;
select  
  min(
    orders_1.o_orderkey), 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey <= orders_1.o_shippriority
group by orders_1.o_totalprice
limit 38;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
group by partsupp_1.ps_supplycost
limit 39;
select  
  supplier_1.s_address, 
  part_1.p_retailprice, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  supplier_1.s_phone, 
  part_1.p_comment, 
  min(
    part_1.p_partkey), 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  max(
    part_1.p_size), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_1.s_comment is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_partkey, part_1.p_retailprice, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 30;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    orders_1.o_custkey), 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_nationkey, nation_1.n_regionkey, supplier_1.s_comment, supplier_1.s_phone
limit 39;
select  
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipdate, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct
limit 6;
select  
  max(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 38;
select  
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty), 
  region_1.r_regionkey, 
  partsupp_1.ps_availqty, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, region_1.r_name, region_1.r_regionkey
limit 6;
select  
  max(
    supplier_1.s_suppkey), 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  part_1.p_container, 
  part_1.p_name, 
  supplier_1.s_nationkey, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_comment, 
  supplier_1.s_phone, 
  part_1.p_size, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where supplier_1.s_nationkey = supplier_1.s_suppkey
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_size, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone
limit 28;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 36;
select  
  nation_1.n_comment, 
  min(
    partsupp_1.ps_partkey), 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where partsupp_1.ps_availqty = partsupp_1.ps_suppkey
group by nation_1.n_comment, region_1.r_comment
limit 28;
select  
  max(
    lineitem_1.l_orderkey), 
  part_1.p_brand, 
  supplier_1.s_comment, 
  min(
    lineitem_1.l_orderkey), 
  min(
    part_1.p_size), 
  min(
    part_1.p_partkey), 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join region as region_1
        inner join lineitem as lineitem_1
        on (region_1.r_regionkey = lineitem_1.l_orderkey )
      on (supplier_1.s_suppkey = region_1.r_regionkey )
    inner join part as part_1
      inner join lineitem as lineitem_2
      on (part_1.p_partkey = lineitem_2.l_orderkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where region_1.r_regionkey is not NULL
group by part_1.p_brand, supplier_1.s_comment
limit 9;
select  
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 19;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 20;
select  
  supplier_3.s_address, 
  nation_1.n_name, 
  supplier_1.s_nationkey, 
  supplier_3.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
        inner join supplier as supplier_1
          inner join supplier as supplier_2
          on (supplier_1.s_suppkey = supplier_2.s_suppkey )
        on (lineitem_1.l_orderkey = supplier_2.s_suppkey )
      inner join supplier as supplier_3
        inner join nation as nation_1
        on (supplier_3.s_suppkey = nation_1.n_nationkey )
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where supplier_1.s_acctbal > orders_1.o_totalprice
limit 5;
select  
  orders_1.o_orderstatus, 
  customer_1.c_name, 
  customer_1.c_comment, 
  orders_2.o_totalprice, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (customer_1.c_custkey = orders_2.o_orderkey )
where orders_1.o_custkey is not NULL
limit 40;
select  
  partsupp_1.ps_comment, 
  customer_1.c_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    inner join supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where lineitem_1.l_comment is not NULL
limit 3;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join partsupp as partsupp_2
    on (nation_1.n_nationkey = partsupp_2.ps_partkey )
where partsupp_2.ps_comment is not NULL
limit 26;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join partsupp as partsupp_1
      inner join part as part_2
      on (partsupp_1.ps_partkey = part_2.p_partkey )
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_size < partsupp_1.ps_partkey
limit 33;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 37;
select  
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 33;
select  
  part_1.p_comment, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where supplier_1.s_nationkey is not NULL
group by part_1.p_comment, part_1.p_partkey, partsupp_1.ps_availqty
limit 27;
select  
  partsupp_1.ps_suppkey, 
  partsupp_2.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_2.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_comment is not NULL
limit 34;
select  
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 20;
select  
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
limit 24;
select  
  region_1.r_name, 
  min(
    partsupp_2.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join orders as orders_1
      on (part_1.p_partkey = orders_1.o_orderkey )
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    on (region_1.r_regionkey = partsupp_2.ps_partkey )
where partsupp_1.ps_comment is not NULL
group by region_1.r_name
limit 12;
select  
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 42;
select  
  min(
    lineitem_1.l_partkey), 
  orders_1.o_custkey, 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_orderkey is not NULL
group by lineitem_1.l_shipdate, orders_1.o_custkey
limit 24;
select  
  max(
    part_1.p_partkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_partkey, 
  part_1.p_comment, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  part_1.p_partkey, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where part_1.p_brand = supplier_1.s_phone
group by part_1.p_comment, part_1.p_container, part_1.p_partkey, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 9;
select  
  nation_1.n_comment, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_name < nation_1.n_name
limit 5;
select  
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  min(
    customer_1.c_nationkey), 
  orders_1.o_orderdate, 
  customer_2.c_acctbal, 
  orders_1.o_custkey, 
  customer_2.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    on (orders_1.o_orderkey = customer_2.c_custkey )
where customer_1.c_acctbal <= customer_2.c_acctbal
group by customer_1.c_comment, customer_1.c_nationkey, customer_2.c_acctbal, customer_2.c_custkey, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate
limit 14;
select  
  customer_1.c_address, 
  region_2.r_comment, 
  customer_1.c_custkey, 
  region_2.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  max(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  region_2.r_comment, 
  region_1.r_name, 
  supplier_1.s_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join region as region_1
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      on (customer_1.c_custkey = region_2.r_regionkey )
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where region_2.r_comment is not NULL
group by customer_1.c_address, customer_1.c_custkey, region_1.r_name, region_1.r_regionkey, region_2.r_comment, supplier_1.s_name, supplier_1.s_suppkey
limit 10;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 6;
select  
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_comment, orders_1.o_orderkey, orders_1.o_shippriority
limit 42;
select  
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 25;
select  
  orders_1.o_shippriority, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 31;
select  
  region_1.r_name, 
  region_1.r_comment, 
  max(
    orders_1.o_orderkey), 
  region_1.r_regionkey, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
group by orders_1.o_custkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 39;
select  
  customer_1.c_address, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 6;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_linenumber
limit 34;
select  
  part_1.p_name, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_acctbal >= part_1.p_retailprice
limit 12;
select  
  min(
    nation_1.n_regionkey), 
  max(
    customer_1.c_nationkey), 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_name is not NULL
group by customer_1.c_address
limit 7;
select  
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_quantity
limit 24;
select  
  max(
    supplier_1.s_nationkey), 
  lineitem_1.l_returnflag, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where supplier_1.s_name is not NULL
group by lineitem_1.l_returnflag, supplier_1.s_comment
limit 28;
select  
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment
limit 17;
select  
  customer_1.c_address, 
  supplier_1.s_acctbal, 
  customer_1.c_acctbal, 
  region_2.r_name, 
  lineitem_1.l_receiptdate, 
  part_1.p_comment, 
  max(
    lineitem_1.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join region as region_2
        inner join customer as customer_1
          inner join supplier as supplier_1
            inner join lineitem as lineitem_1
            on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
          on (customer_1.c_custkey = lineitem_1.l_orderkey )
        on (region_2.r_regionkey = customer_1.c_custkey )
      on (region_1.r_regionkey = customer_1.c_custkey )
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where customer_1.c_address is not NULL
group by customer_1.c_acctbal, customer_1.c_address, lineitem_1.l_receiptdate, part_1.p_comment, region_2.r_name, supplier_1.s_acctbal
limit 24;
select  
  orders_1.o_custkey, 
  min(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  orders_1.o_orderpriority, 
  region_2.r_name, 
  region_2.r_name, 
  region_1.r_name, 
  region_2.r_comment, 
  orders_1.o_orderpriority, 
  region_1.r_regionkey, 
  max(
    region_2.r_regionkey), 
  part_1.p_mfgr, 
  orders_1.o_orderpriority, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join part as part_1
      on (region_1.r_regionkey = part_1.p_partkey )
    inner join region as region_2
      inner join orders as orders_1
      on (region_2.r_regionkey = orders_1.o_orderkey )
    on (part_1.p_partkey = orders_1.o_orderkey )
where part_1.p_brand is not NULL
group by orders_1.o_custkey, orders_1.o_orderpriority, part_1.p_mfgr, part_1.p_retailprice, region_1.r_comment, region_1.r_name, region_1.r_regionkey, region_2.r_comment, region_2.r_name
limit 26;
select  
  min(
    orders_1.o_shippriority), 
  orders_2.o_shippriority, 
  orders_2.o_orderkey, 
  orders_1.o_totalprice, 
  nation_1.n_name, 
  min(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    inner join orders as orders_2
    on (nation_1.n_nationkey = orders_2.o_orderkey )
where orders_2.o_orderstatus is not NULL
group by nation_1.n_name, orders_1.o_totalprice, orders_2.o_orderkey, orders_2.o_shippriority
limit 10;
select  
  part_1.p_container, 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice, part_1.p_type
limit 17;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  region_1.r_comment, 
  region_1.r_comment, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_discount, 
  region_1.r_name, 
  region_1.r_comment, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where region_1.r_regionkey = lineitem_1.l_linenumber
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_quantity, lineitem_1.l_returnflag, lineitem_1.l_suppkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 3;
select  
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 20;
select  
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  supplier_1.s_nationkey, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
        inner join region as region_1
        on (orders_1.o_orderkey = region_1.r_regionkey )
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    inner join part as part_1
      inner join part as part_2
      on (part_1.p_partkey = part_2.p_partkey )
    on (region_1.r_regionkey = part_2.p_partkey )
where supplier_1.s_acctbal is not NULL
limit 42;
select  
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 35;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderkey), 
  min(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice <= orders_1.o_totalprice
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderstatus
limit 25;
select  
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
          inner join part as part_1
          on (lineitem_1.l_orderkey = part_1.p_partkey )
        inner join partsupp as partsupp_1
        on (part_1.p_partkey = partsupp_1.ps_partkey )
      inner join supplier as supplier_2
      on (part_1.p_partkey = supplier_2.s_suppkey )
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where lineitem_1.l_returnflag < supplier_1.s_phone
group by lineitem_1.l_comment
limit 9;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  min(
    orders_1.o_shippriority), 
  max(
    orders_1.o_shippriority), 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority
limit 28;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join orders as orders_1
      on (part_1.p_partkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where part_1.p_brand is not NULL
limit 4;
select  
  orders_1.o_orderdate, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey <= orders_1.o_shippriority
limit 37;
select  
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 6;
select  
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 10;
select  
  supplier_1.s_nationkey, 
  min(
    part_1.p_partkey), 
  supplier_1.s_comment, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where part_1.p_retailprice = supplier_1.s_acctbal
group by supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone
limit 17;
select  
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_phone
limit 36;
select  
  nation_1.n_regionkey, 
  partsupp_1.ps_supplycost, 
  nation_1.n_name, 
  nation_1.n_comment, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where orders_1.o_orderstatus >= orders_1.o_orderpriority
limit 20;
select  
  part_1.p_brand, 
  part_1.p_container, 
  min(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_mfgr, 
  min(
    part_1.p_partkey), 
  part_1.p_container, 
  min(
    part_1.p_partkey), 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 34;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 7;
select  
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    inner join customer as customer_2
      inner join lineitem as lineitem_1
      on (customer_2.c_custkey = lineitem_1.l_orderkey )
    on (customer_1.c_custkey = customer_2.c_custkey )
where lineitem_1.l_extendedprice <= lineitem_1.l_tax
limit 38;
select  
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.n_nationkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_comment
limit 2;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 21;
select  
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey
limit 13;
select  
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 25;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 10;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 34;
select  
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost = partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 39;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 31;
select  
  max(
    part_1.p_partkey), 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_mfgr
limit 14;
select  
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate <= orders_1.o_orderdate
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 17;
select  
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join partsupp as partsupp_1
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
limit 25;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_comment, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey > lineitem_1.l_linenumber
limit 10;
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_nationkey
limit 26;
select  
  min(
    lineitem_2.l_linenumber), 
  customer_1.c_name, 
  lineitem_1.l_comment, 
  customer_1.c_address, 
  lineitem_1.l_linestatus, 
  lineitem_2.l_tax, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join customer as customer_1
      inner join lineitem as lineitem_2
      on (customer_1.c_custkey = lineitem_2.l_orderkey )
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_2.l_linenumber is not NULL
group by customer_1.c_address, customer_1.c_name, customer_1.c_phone, lineitem_1.l_comment, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_suppkey, lineitem_1.l_tax, lineitem_2.l_tax
limit 34;
select  
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 3;
select  
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
      inner join lineitem as lineitem_1
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_commitdate is not NULL
limit 28;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 28;
select  
  supplier_1.s_address, 
  nation_1.n_comment, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_custkey >= nation_1.n_regionkey
limit 39;
select  
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
limit 23;
select  
  supplier_1.s_comment, 
  region_1.r_comment, 
  supplier_1.s_comment, 
  min(
    supplier_1.s_suppkey), 
  region_1.r_comment, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_nationkey >= region_1.r_regionkey
group by region_1.r_comment, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_suppkey
limit 16;
select  
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
limit 41;
select  
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  customer_1.c_address, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  nation_1.n_regionkey, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  nation_1.n_regionkey, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_custkey is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 21;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey <= lineitem_1.l_orderkey
limit 7;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 14;
select  
  region_1.r_name, 
  nation_1.n_name, 
  region_1.r_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  partsupp_1.ps_supplycost, 
  region_1.r_name, 
  max(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, partsupp_1.ps_supplycost, region_1.r_name, region_1.r_regionkey
limit 40;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_custkey), 
  max(
    orders_1.o_shippriority), 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 20;
select  
  partsupp_2.ps_suppkey, 
  orders_1.o_clerk, 
  min(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
      inner join lineitem as lineitem_1
        inner join partsupp as partsupp_2
        on (lineitem_1.l_orderkey = partsupp_2.ps_partkey )
      on (orders_1.o_orderkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, partsupp_2.ps_suppkey
limit 22;
select  
  nation_1.n_nationkey, 
  nation_2.n_nationkey, 
  max(
    nation_2.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_1.n_regionkey <= nation_1.n_nationkey
group by nation_1.n_nationkey, nation_2.n_nationkey
limit 23;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where lineitem_1.l_linestatus <= nation_1.n_name
limit 2;
select  
  supplier_1.s_phone, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 21;
select  
  min(
    partsupp_1.ps_availqty), 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 22;
select  
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_name, 
  max(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 5;
select  
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_custkey, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
group by orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_shippriority
limit 37;
select  
  customer_1.c_nationkey, 
  region_1.r_name, 
  max(
    nation_1.n_nationkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  nation_1.n_nationkey, 
  customer_1.c_name, 
  customer_1.c_phone, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_name, 
  nation_1.n_name, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_comment is not NULL
group by customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 24;
select  
  partsupp_1.ps_availqty, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where orders_1.o_orderpriority is not NULL
group by orders_1.o_orderdate, orders_1.o_orderpriority, partsupp_1.ps_availqty
limit 22;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 20;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 17;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey <= partsupp_1.ps_suppkey
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 18;
select  
  customer_1.c_custkey, 
  customer_1.c_phone, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_custkey, customer_1.c_phone
limit 28;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 20;
select  
  partsupp_1.ps_supplycost, 
  nation_1.n_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where partsupp_1.ps_supplycost is not NULL
limit 5;
select  
  max(
    orders_1.o_orderkey), 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_shippriority), 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_totalprice <= orders_1.o_totalprice
group by orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice, region_1.r_regionkey
limit 14;
select  
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
limit 23;
select  
  partsupp_1.ps_supplycost, 
  orders_1.o_clerk, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  part_1.p_mfgr, 
  min(
    part_1.p_size), 
  part_1.p_type, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderpriority = orders_1.o_orderstatus
group by orders_1.o_clerk, orders_1.o_custkey, part_1.p_mfgr, part_1.p_type, partsupp_1.ps_supplycost
limit 42;
select  
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  part_1.p_comment, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_address is not NULL
limit 31;
select  
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_acctbal, customer_1.c_phone
limit 18;
select  
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  max(
    part_1.p_size), 
  part_1.p_name, 
  max(
    part_1.p_partkey), 
  supplier_1.s_name, 
  part_1.p_partkey, 
  supplier_1.s_nationkey, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_1.s_name is not NULL
group by part_1.p_name, part_1.p_partkey, part_1.p_size, supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 31;
select  
  min(
    customer_1.c_nationkey), 
  partsupp_2.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  min(
    part_1.p_size), 
  min(
    partsupp_1.ps_availqty), 
  partsupp_2.ps_suppkey, 
  customer_2.c_custkey, 
  min(
    partsupp_2.ps_partkey), 
  partsupp_2.ps_supplycost, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
          inner join partsupp as partsupp_1
          on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
        inner join customer as customer_1
        on (partsupp_1.ps_partkey = customer_1.c_custkey )
      inner join customer as customer_2
        inner join part as part_1
        on (customer_2.c_custkey = part_1.p_partkey )
      on (partsupp_1.ps_partkey = customer_2.c_custkey )
    inner join partsupp as partsupp_2
    on (part_1.p_partkey = partsupp_2.ps_partkey )
where customer_1.c_acctbal is not NULL
group by customer_2.c_custkey, part_1.p_type, partsupp_1.ps_supplycost, partsupp_2.ps_suppkey, partsupp_2.ps_supplycost
limit 6;
select  
  min(
    customer_1.c_custkey), 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  customer_1.c_name, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_suppkey is not NULL
group by customer_1.c_name, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 34;
select  
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 22;
select  
  supplier_1.s_phone, 
  supplier_1.s_address, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_phone, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where customer_1.c_comment is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_nationkey, customer_1.c_phone, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_phone, supplier_1.s_suppkey
limit 4;
select  
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 37;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 11;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 32;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  part_1.p_brand, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where part_1.p_brand > part_1.p_container
limit 15;
select  
  orders_1.o_comment, 
  customer_1.c_acctbal, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderkey < customer_1.c_nationkey
limit 6;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 7;
select  
  supplier_1.s_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_name is not NULL
limit 9;
select  
  min(
    lineitem_2.l_orderkey), 
  lineitem_2.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join lineitem as lineitem_3
    on (lineitem_1.l_orderkey = lineitem_3.l_orderkey )
where lineitem_1.l_commitdate < lineitem_2.l_receiptdate
group by lineitem_2.l_shipinstruct
limit 30;
select  
  partsupp_2.ps_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  partsupp_2.ps_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join partsupp as partsupp_1
        inner join partsupp as partsupp_2
        on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
      on (customer_1.c_custkey = partsupp_2.ps_partkey )
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_comment is not NULL
limit 15;
select  
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 1;
select  
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 24;
select  
  nation_1.n_comment, 
  customer_1.c_custkey, 
  nation_1.n_comment, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  nation_1.n_name, 
  customer_1.c_phone, 
  max(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_acctbal is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_phone, nation_1.n_comment, nation_1.n_name
limit 16;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate < orders_1.o_orderdate
limit 11;
select  
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 30;
select  
  min(
    orders_1.o_orderkey), 
  min(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 19;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join lineitem as lineitem_1
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where lineitem_1.l_commitdate is not NULL
limit 37;
select  
  partsupp_1.ps_availqty, 
  max(
    supplier_1.s_nationkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  max(
    part_1.p_size), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
    on (part_1.p_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_supplycost, supplier_1.s_name
limit 41;
select  
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 31;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  region_1.r_name, 
  partsupp_1.ps_partkey, 
  region_1.r_comment, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 27;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipdate, 
  lineitem_2.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_linenumber = lineitem_2.l_partkey
limit 17;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 37;
select  
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 11;
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name
limit 13;
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  region_1.r_name, 
  min(
    nation_1.n_nationkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    inner join region as region_2
      inner join nation as nation_1
        inner join nation as nation_2
        on (nation_1.n_nationkey = nation_2.n_nationkey )
      on (region_2.r_regionkey = nation_1.n_nationkey )
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where region_1.r_name is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_partkey, nation_1.n_name, nation_1.n_regionkey, region_1.r_name
limit 7;
select  
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate < orders_1.o_orderdate
limit 40;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where part_1.p_container is not NULL
limit 30;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 11;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 2;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate >= lineitem_1.l_shipdate
limit 8;
select  
  partsupp_1.ps_comment, 
  supplier_1.s_address, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_address is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone
limit 39;
select  
  max(
    part_1.p_partkey), 
  min(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  min(
    part_1.p_partkey), 
  part_1.p_name, 
  part_1.p_container, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_container, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_size, part_1.p_type
limit 34;
select  
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_nationkey
limit 42;
select  
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey
limit 12;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_commitdate, 
  max(
    lineitem_1.l_partkey), 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_discount, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 34;
select  
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  orders_1.o_orderdate, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_orderkey <= region_1.r_regionkey
limit 11;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 40;
select  
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_comment is not NULL
limit 5;
select  
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_container, 
  part_1.p_mfgr, 
  max(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_retailprice
limit 29;
select  
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_orderpriority is not NULL
limit 31;
select  
  max(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name
limit 24;
select  
  customer_1.c_custkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_phone <= region_1.r_name
group by customer_1.c_custkey, region_1.r_comment, region_1.r_name
limit 18;
select  
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_type, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey > part_1.p_size
limit 1;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  part_1.p_container, 
  orders_1.o_clerk, 
  max(
    region_1.r_regionkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_orderdate >= orders_1.o_orderdate
group by orders_1.o_clerk, part_1.p_container, part_1.p_partkey, region_1.r_name
limit 27;
select  
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 34;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey = partsupp_1.ps_partkey
limit 2;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 5;
select  
  min(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey = partsupp_1.ps_partkey
group by partsupp_1.ps_availqty
limit 16;
select  
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice < orders_1.o_totalprice
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 35;
select  
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_regionkey
limit 12;
select  
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_nationkey is not NULL
limit 26;
select  
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where customer_1.c_phone is not NULL
limit 26;
select  
  customer_1.c_custkey, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_phone is not NULL
limit 1;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 26;
select  
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost > partsupp_1.ps_supplycost
group by partsupp_1.ps_partkey
limit 17;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 19;
select  
  customer_1.c_acctbal, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 25;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_tax, 
  lineitem_1.l_partkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_tax, 
  lineitem_1.l_quantity, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 39;
select  
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 30;
select  
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 35;
select  
  customer_3.c_custkey, 
  customer_3.c_phone, 
  partsupp_1.ps_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  min(
    customer_2.c_custkey), 
  customer_2.c_acctbal, 
  min(
    customer_2.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join partsupp as partsupp_1
      inner join customer as customer_2
        inner join customer as customer_3
        on (customer_2.c_custkey = customer_3.c_custkey )
      on (partsupp_1.ps_partkey = customer_2.c_custkey )
    on (customer_1.c_custkey = customer_3.c_custkey )
where partsupp_1.ps_supplycost is not NULL
group by customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_nationkey, customer_2.c_acctbal, customer_3.c_custkey, customer_3.c_phone, partsupp_1.ps_comment
limit 35;
select  
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey <= customer_1.c_custkey
limit 31;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
limit 26;
select  
  nation_2.n_name, 
  supplier_1.s_name, 
  part_2.p_retailprice, 
  max(
    nation_1.n_regionkey), 
  min(
    orders_1.o_custkey), 
  part_2.p_size, 
  supplier_1.s_comment, 
  nation_2.n_name, 
  max(
    lineitem_1.l_orderkey), 
  supplier_1.s_nationkey, 
  min(
    part_1.p_partkey), 
  nation_1.n_name, 
  max(
    nation_2.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      inner join lineitem as lineitem_1
        inner join nation as nation_2
        on (lineitem_1.l_orderkey = nation_2.n_nationkey )
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    inner join supplier as supplier_1
      inner join orders as orders_1
        inner join part as part_2
        on (orders_1.o_orderkey = part_2.p_partkey )
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    on (nation_2.n_nationkey = orders_1.o_orderkey )
where lineitem_1.l_quantity = orders_1.o_totalprice
group by nation_1.n_name, nation_2.n_name, part_2.p_retailprice, part_2.p_size, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey
limit 7;
select  
  partsupp_1.ps_comment, 
  nation_2.n_nationkey, 
  nation_2.n_name, 
  partsupp_1.ps_supplycost, 
  nation_1.n_comment, 
  nation_2.n_nationkey, 
  partsupp_1.ps_supplycost, 
  max(
    nation_1.n_regionkey), 
  nation_2.n_name, 
  min(
    nation_2.n_regionkey), 
  max(
    nation_1.n_nationkey), 
  partsupp_1.ps_availqty, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_2.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join nation as nation_1
      on (partsupp_1.ps_partkey = nation_1.n_nationkey )
    inner join nation as nation_2
    on (partsupp_1.ps_partkey = nation_2.n_nationkey )
where nation_2.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, nation_2.n_name, nation_2.n_nationkey, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 3;
select  
  part_1.p_retailprice, 
  nation_1.n_name, 
  partsupp_1.ps_comment, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where nation_1.n_nationkey is not NULL
limit 16;
select  
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 19;
select  
  min(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 5;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 24;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_regionkey <= nation_1.n_nationkey
limit 37;
select  
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
limit 28;
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 35;
select  
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment > customer_1.c_phone
limit 35;
select  
  nation_1.n_comment, 
  region_1.r_name, 
  max(
    orders_1.o_custkey), 
  nation_1.n_name, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    on (region_1.r_regionkey = orders_1.o_orderkey )
where lineitem_1.l_discount is not NULL
group by nation_1.n_comment, nation_1.n_name, orders_1.o_comment, region_1.r_name
limit 34;
select  
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipdate, 
  part_1.p_brand, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where part_1.p_partkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_returnflag, lineitem_1.l_shipdate, part_1.p_brand, partsupp_1.ps_partkey
limit 26;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 19;
select  
  customer_1.c_phone, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 13;
select  
  orders_1.o_orderstatus, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderstatus
limit 12;
select  
  region_1.r_comment, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  region_1.r_comment, 
  min(
    orders_1.o_custkey), 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where orders_1.o_totalprice >= orders_1.o_totalprice
group by orders_1.o_clerk, orders_1.o_orderpriority, orders_1.o_shippriority, region_1.r_comment
limit 34;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 31;
select  
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where part_1.p_brand is not NULL
limit 36;
select  
  max(
    lineitem_1.l_linenumber), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  lineitem_2.l_shipmode, 
  lineitem_1.l_commitdate, 
  lineitem_2.l_receiptdate, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      on (part_1.p_partkey = lineitem_2.l_orderkey )
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where lineitem_2.l_shipdate < lineitem_2.l_commitdate
group by lineitem_1.l_commitdate, lineitem_2.l_receiptdate, lineitem_2.l_shipmode, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey
limit 34;
select  
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate < lineitem_1.l_receiptdate
group by lineitem_1.l_shipmode
limit 10;
select  
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 26;
select  
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 41;
select  
  max(
    customer_1.c_nationkey), 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_custkey is not NULL
group by part_1.p_retailprice
limit 34;
select  
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 13;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 29;
select  
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
limit 4;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 18;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey, 
  lineitem_2.l_tax, 
  lineitem_2.l_receiptdate, 
  lineitem_2.l_orderkey, 
  lineitem_2.l_shipinstruct, 
  lineitem_2.l_discount, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_2.l_returnflag, 
  lineitem_2.l_extendedprice, 
  lineitem_2.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_2.l_receiptdate, 
  lineitem_1.l_partkey, 
  min(
    lineitem_2.l_partkey), 
  max(
    lineitem_2.l_suppkey), 
  lineitem_2.l_shipinstruct, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_returnflag is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_suppkey, lineitem_2.l_discount, lineitem_2.l_extendedprice, lineitem_2.l_orderkey, lineitem_2.l_partkey, lineitem_2.l_receiptdate, lineitem_2.l_returnflag, lineitem_2.l_shipinstruct, lineitem_2.l_tax
limit 29;
select  
  max(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where customer_1.c_nationkey is not NULL
limit 25;
select  
  lineitem_2.l_shipinstruct, 
  supplier_1.s_phone, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
          inner join lineitem as lineitem_1
          on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
        inner join lineitem as lineitem_2
        on (supplier_1.s_suppkey = lineitem_2.l_orderkey )
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join customer as customer_2
      inner join customer as customer_3
      on (customer_2.c_custkey = customer_3.c_custkey )
    on (lineitem_2.l_orderkey = customer_2.c_custkey )
where lineitem_2.l_extendedprice is not NULL
group by lineitem_2.l_shipinstruct, supplier_1.s_phone
limit 1;
select  
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  min(
    orders_1.o_custkey), 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 1;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_comment, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct >= lineitem_1.l_shipmode
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 9;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 42;
select  
  max(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_clerk, orders_1.o_orderpriority
limit 4;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  min(
    customer_1.c_custkey), 
  region_1.r_name, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  region_1.r_regionkey, 
  max(
    customer_1.c_nationkey), 
  region_1.r_name, 
  customer_1.c_name, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_acctbal > customer_1.c_acctbal
group by customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, region_1.r_name, region_1.r_regionkey
limit 41;
select  
  part_1.p_mfgr, 
  max(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_brand, 
  min(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size < part_1.p_partkey
group by part_1.p_brand, part_1.p_mfgr, part_1.p_size
limit 41;
select  
  customer_1.c_comment, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where customer_1.c_phone is not NULL
limit 7;
select  
  orders_1.o_orderkey, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus >= orders_1.o_clerk
limit 9;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 25;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_address, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_mktsegment
limit 42;
select  
  lineitem_1.l_discount, 
  orders_1.o_custkey, 
  lineitem_2.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join orders as orders_1
      inner join lineitem as lineitem_2
      on (orders_1.o_orderkey = lineitem_2.l_orderkey )
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_commitdate > orders_1.o_orderdate
limit 7;
select  
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment <= customer_1.c_phone
limit 4;
select  
  customer_1.c_acctbal, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_name, 
  min(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 26;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
limit 2;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 13;
select  
  min(
    supplier_1.s_nationkey), 
  min(
    part_2.p_size), 
  part_2.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join part as part_2
        inner join partsupp as partsupp_1
        on (part_2.p_partkey = partsupp_1.ps_partkey )
      on (part_1.p_partkey = part_2.p_partkey )
    inner join supplier as supplier_1
    on (part_2.p_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_availqty is not NULL
group by part_2.p_size
limit 42;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  partsupp_1.ps_comment, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where supplier_1.s_nationkey is not NULL
group by partsupp_1.ps_comment, region_1.r_name, supplier_1.s_suppkey
limit 35;
select  
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_phone, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_acctbal is not NULL
limit 21;
select  
  part_1.p_container, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where part_1.p_brand is not NULL
limit 4;
select  
  orders_1.o_clerk, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_extendedprice, 
  orders_1.o_totalprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_clerk > lineitem_1.l_shipinstruct
limit 8;
select  
  min(
    nation_1.n_regionkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 36;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 38;
select  
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_address, 
  customer_1.c_address, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_name
limit 8;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 35;
select  
  supplier_1.s_phone, 
  nation_1.n_comment, 
  lineitem_1.l_linenumber, 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
      inner join part as part_1
          inner join region as region_1
          on (part_1.p_partkey = region_1.r_regionkey )
        inner join lineitem as lineitem_1
          inner join orders as orders_1
          on (lineitem_1.l_orderkey = orders_1.o_orderkey )
        on (part_1.p_partkey = lineitem_1.l_orderkey )
      on (nation_1.n_nationkey = part_1.p_partkey )
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where lineitem_1.l_returnflag = region_1.r_name
group by lineitem_1.l_linenumber, nation_1.n_comment, supplier_1.s_phone
limit 40;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
limit 18;
select  
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
group by supplier_1.s_nationkey, supplier_1.s_phone
limit 23;
select  
  orders_1.o_orderdate, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  max(
    orders_1.o_custkey), 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_shippriority
limit 28;
select  
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
limit 16;
select  
  max(
    partsupp_1.ps_availqty), 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 34;
select  
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
limit 23;
select  
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 30;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_nationkey
limit 13;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  customer_1.c_name, 
  min(
    customer_1.c_nationkey), 
  region_1.r_regionkey, 
  customer_1.c_phone, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by customer_1.c_name, customer_1.c_phone, region_1.r_comment, region_1.r_regionkey
limit 21;
select  
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 40;
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 15;
select  
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
limit 12;
select  
  customer_1.c_nationkey, 
  customer_1.c_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  customer_1.c_acctbal, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_mktsegment < region_1.r_name
group by customer_1.c_acctbal, customer_1.c_name, customer_1.c_nationkey, region_1.r_comment, region_1.r_regionkey
limit 11;
select  
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment
limit 22;
select  
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 13;
select  
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    inner join nation as nation_1
          inner join nation as nation_2
          on (nation_1.n_nationkey = nation_2.n_nationkey )
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join part as part_2
      on (partsupp_1.ps_partkey = part_2.p_partkey )
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where part_1.p_size is not NULL
limit 21;
select  
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
limit 18;
select  
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 29;
select  
  max(
    lineitem_1.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where customer_1.c_mktsegment is not NULL
limit 26;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode
limit 15;
select  
  orders_1.o_orderpriority, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where part_1.p_name is not NULL
limit 41;
select  
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 36;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 35;
select  
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join nation as nation_1
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_nationkey is not NULL
limit 21;
select  
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 8;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  orders_1.o_shippriority, 
  region_1.r_name, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by orders_1.o_shippriority, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_supplycost, region_1.r_name, region_1.r_regionkey
limit 8;
select  
  max(
    part_1.p_partkey), 
  part_1.p_container, 
  max(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_container, part_1.p_mfgr, part_1.p_partkey
limit 6;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 3;
select  
  part_1.p_partkey, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice <= part_1.p_retailprice
limit 31;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 34;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 13;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
limit 17;
select  
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate >= lineitem_1.l_receiptdate
limit 36;
select  
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 27;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_shipdate, lineitem_1.l_shipmode
limit 8;
select  
  part_1.p_comment, 
  part_2.p_container, 
  part_2.p_container, 
  part_1.p_name, 
  part_2.p_retailprice, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  min(
    part_2.p_size), 
  part_1.p_name, 
  part_1.p_retailprice, 
  max(
    lineitem_1.l_suppkey), 
  part_1.p_retailprice, 
  part_1.p_container, 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
      inner join lineitem as lineitem_1
      on (part_2.p_partkey = lineitem_1.l_orderkey )
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_returnflag > lineitem_1.l_shipinstruct
group by lineitem_1.l_suppkey, part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_retailprice, part_2.p_container, part_2.p_retailprice
limit 4;
select  
  partsupp_2.ps_supplycost, 
  partsupp_2.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  nation_1.n_regionkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
        inner join partsupp as partsupp_2
        on (supplier_1.s_suppkey = partsupp_2.ps_partkey )
      inner join nation as nation_1
      on (partsupp_2.ps_partkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_suppkey is not NULL
limit 16;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey > customer_1.c_custkey
limit 16;
select  
  supplier_1.s_phone, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
limit 13;
select  
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_totalprice is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_shipinstruct
limit 34;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linenumber, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate is not NULL
group by lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_shipdate, lineitem_1.l_tax
limit 26;
select  
  max(
    lineitem_1.l_orderkey), 
  region_1.r_regionkey, 
  lineitem_1.l_shipdate, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  lineitem_1.l_partkey, 
  region_1.r_name, 
  min(
    lineitem_1.l_orderkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_shipdate, region_1.r_name, region_1.r_regionkey
limit 24;
select  
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_partkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  part_1.p_container, 
  partsupp_1.ps_supplycost, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type, partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 42;
select  
  nation_1.n_nationkey, 
  orders_1.o_orderdate, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_1.n_regionkey >= nation_1.n_nationkey
group by nation_1.n_nationkey, nation_1.n_regionkey, orders_1.o_orderdate, orders_1.o_shippriority
limit 20;
select  
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 37;
select  
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 7;
select  
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 42;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk < orders_1.o_orderpriority
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 25;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_suppkey), 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 10;
select  
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_totalprice is not NULL
limit 7;
select  
  customer_1.c_nationkey, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 31;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
limit 39;
select  
  region_1.r_name, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_regionkey is not NULL
group by region_1.r_name
limit 16;
select  
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
limit 34;
select  
  customer_1.c_comment, 
  lineitem_1.l_extendedprice, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_phone, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_returnflag, 
  customer_1.c_address, 
  customer_1.c_name, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_quantity is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_name, customer_1.c_phone, lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_suppkey
limit 31;
select  
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate > lineitem_1.l_commitdate
limit 12;
select  
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
      inner join orders as orders_1
      on (nation_2.n_nationkey = orders_1.o_orderkey )
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 2;
select  
  region_1.r_comment, 
  part_1.p_type, 
  part_1.p_partkey, 
  region_1.r_regionkey, 
  part_1.p_comment, 
  part_1.p_container, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_partkey is not NULL
limit 24;
select  
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_commitdate <= lineitem_1.l_shipdate
limit 12;
select  
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  min(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  min(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority > orders_1.o_orderkey
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 37;
select  
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey <= supplier_1.s_suppkey
limit 40;
select  
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_shipmode
limit 34;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 28;
select  
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 7;
select  
  supplier_1.s_phone, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    on (supplier_1.s_suppkey = partsupp_2.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 7;
select  
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_name, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey > customer_1.c_nationkey
group by customer_1.c_acctbal, customer_1.c_name, customer_1.c_nationkey
limit 42;
select  
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_mfgr, 
  min(
    part_1.p_size), 
  min(
    part_1.p_partkey), 
  part_1.p_container, 
  min(
    part_1.p_size), 
  max(
    part_1.p_partkey), 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container = part_1.p_brand
group by part_1.p_container, part_1.p_mfgr, part_1.p_retailprice, part_1.p_type
limit 42;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_2.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_2.n_comment, 
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_2.n_comment, nation_2.n_nationkey
limit 29;
select  
  customer_1.c_custkey, 
  orders_1.o_totalprice, 
  customer_1.c_mktsegment, 
  max(
    customer_3.c_custkey), 
  region_1.r_name, 
  nation_1.n_regionkey, 
  customer_1.c_phone, 
  region_1.r_comment, 
  customer_3.c_address, 
  orders_1.o_orderstatus, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join part as part_1
        inner join nation as nation_1
          inner join customer as customer_1
          on (nation_1.n_nationkey = customer_1.c_custkey )
        on (part_1.p_partkey = customer_1.c_custkey )
      on (orders_1.o_orderkey = part_1.p_partkey )
    inner join region as region_1
        inner join customer as customer_2
          inner join nation as nation_2
          on (customer_2.c_custkey = nation_2.n_nationkey )
        on (region_1.r_regionkey = nation_2.n_nationkey )
      inner join supplier as supplier_1
        inner join customer as customer_3
        on (supplier_1.s_suppkey = customer_3.c_custkey )
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where orders_1.o_orderdate < orders_1.o_orderdate
group by customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_phone, customer_3.c_address, nation_1.n_regionkey, orders_1.o_orderstatus, orders_1.o_totalprice, part_1.p_partkey, region_1.r_comment, region_1.r_name
limit 8;
select  
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice < orders_1.o_totalprice
limit 40;
select  
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  max(
    part_1.p_size), 
  max(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_name
limit 35;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount, 
  lineitem_1.l_partkey, 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 38;
select  
  part_1.p_type, 
  nation_1.n_regionkey, 
  nation_2.n_comment, 
  lineitem_1.l_shipmode, 
  max(
    nation_2.n_nationkey), 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    inner join nation as nation_2
        inner join part as part_2
        on (nation_2.n_nationkey = part_2.p_partkey )
      inner join part as part_3
        inner join lineitem as lineitem_1
        on (part_3.p_partkey = lineitem_1.l_orderkey )
      on (part_2.p_partkey = part_3.p_partkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where part_3.p_brand <= part_2.p_mfgr
group by lineitem_1.l_shipmode, nation_1.n_comment, nation_1.n_regionkey, nation_2.n_comment, part_1.p_type
limit 41;
select  
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 6;
select  
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 24;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 6;
select  
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_1.n_name is not NULL
limit 41;
select  
  part_1.p_mfgr, 
  part_1.p_brand, 
  min(
    part_1.p_partkey), 
  min(
    part_1.p_size), 
  min(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_type, 
  min(
    part_1.p_partkey), 
  part_1.p_brand, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_brand, part_1.p_mfgr, part_1.p_retailprice, part_1.p_type
limit 41;
select  
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where lineitem_1.l_linestatus = lineitem_1.l_shipinstruct
limit 13;
select  
  orders_1.o_custkey, 
  lineitem_1.l_linenumber, 
  part_1.p_brand, 
  part_1.p_brand, 
  part_1.p_container, 
  orders_1.o_orderpriority, 
  lineitem_2.l_discount, 
  lineitem_1.l_tax, 
  part_1.p_container, 
  lineitem_2.l_discount, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_partkey), 
  lineitem_2.l_commitdate, 
  max(
    part_1.p_size), 
  lineitem_2.l_discount, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
      inner join part as part_1
        inner join lineitem as lineitem_2
        on (part_1.p_partkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (orders_1.o_orderkey = lineitem_2.l_orderkey )
where orders_1.o_orderdate is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_tax, lineitem_2.l_commitdate, lineitem_2.l_discount, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderpriority, part_1.p_brand, part_1.p_container
limit 12;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty < partsupp_1.ps_partkey
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 6;
select  
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 27;
select  
  max(
    lineitem_1.l_partkey), 
  min(
    lineitem_1.l_linenumber), 
  min(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 4;
select  
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
limit 4;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 13;
select  
  orders_1.o_orderstatus, 
  nation_1.n_comment, 
  orders_1.o_shippriority, 
  max(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_clerk is not NULL
group by nation_1.n_comment, nation_1.n_regionkey, orders_1.o_orderstatus, orders_1.o_shippriority
limit 20;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 25;
select  
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 12;
select  
  min(
    lineitem_1.l_linenumber), 
  lineitem_2.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join partsupp as partsupp_1
        on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join part as part_1
    on (lineitem_2.l_orderkey = part_1.p_partkey )
where lineitem_1.l_linenumber = lineitem_2.l_linenumber
group by lineitem_2.l_orderkey
limit 35;
select  
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipdate, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode <= lineitem_1.l_linestatus
group by lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_tax
limit 26;
select  
  min(
    lineitem_1.l_suppkey), 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  lineitem_1.l_partkey, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_type is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, part_1.p_mfgr, part_1.p_partkey
limit 24;
select  
  part_1.p_partkey, 
  partsupp_1.ps_partkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
      inner join partsupp as partsupp_1
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    on (customer_1.c_custkey = part_1.p_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 7;
select  
  max(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_size, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_partkey, part_1.p_size, part_1.p_type
limit 13;
select  
  supplier_1.s_phone, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_orderpriority is not NULL
limit 8;
select  
  orders_1.o_comment, 
  orders_1.o_comment, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_shippriority
limit 40;
select  
  min(
    customer_1.c_custkey), 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_name
limit 4;
select  
  orders_1.o_orderpriority, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice >= orders_1.o_totalprice
group by orders_1.o_orderdate, orders_1.o_orderpriority
limit 23;
select  
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 30;
select  
  max(
    partsupp_1.ps_suppkey), 
  part_1.p_comment, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
          inner join nation as nation_1
          on (part_1.p_partkey = nation_1.n_nationkey )
        inner join partsupp as partsupp_1
        on (nation_1.n_nationkey = partsupp_1.ps_partkey )
      inner join nation as nation_2
      on (partsupp_1.ps_partkey = nation_2.n_nationkey )
    inner join lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where part_1.p_container is not NULL
group by part_1.p_comment, part_1.p_partkey
limit 38;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_returnflag is not NULL
limit 20;
select  
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_shippriority), 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_orderpriority, orders_1.o_orderstatus
limit 27;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  lineitem_1.l_quantity, 
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 28;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 7;
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name <= nation_1.n_name
group by nation_1.n_comment, nation_1.n_name
limit 40;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_comment, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_comment, supplier_1.s_nationkey
limit 16;
select  
  partsupp_1.ps_comment, 
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
      inner join part as part_1
        inner join customer as customer_1
          inner join supplier as supplier_1
          on (customer_1.c_custkey = supplier_1.s_suppkey )
        on (part_1.p_partkey = supplier_1.s_suppkey )
      on (orders_1.o_orderkey = customer_1.c_custkey )
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where customer_1.c_acctbal is not NULL
group by partsupp_1.ps_comment
limit 15;
select  
  part_1.p_type, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
limit 2;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 31;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 34;
select  
  nation_1.n_name, 
  min(
    nation_1.n_nationkey), 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.n_regionkey
limit 14;
select  
  supplier_2.s_name, 
  supplier_2.s_comment, 
  max(
    lineitem_1.l_linenumber), 
  supplier_2.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_1.s_acctbal is not NULL
group by lineitem_1.l_discount, supplier_1.s_name, supplier_1.s_suppkey, supplier_2.s_comment, supplier_2.s_name, supplier_2.s_suppkey
limit 13;
select  
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 33;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_linenumber), 
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  max(
    customer_1.c_custkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipmode, 
  customer_1.c_nationkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_suppkey, 
  customer_1.c_custkey, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_orderkey), 
  min(
    customer_1.c_nationkey), 
  lineitem_1.l_linestatus, 
  min(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_partkey >= customer_1.c_nationkey
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 18;
select  
  supplier_1.s_comment, 
  part_1.p_name, 
  supplier_2.s_phone, 
  supplier_2.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
      inner join supplier as supplier_2
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    on (part_1.p_partkey = supplier_2.s_suppkey )
where supplier_2.s_comment is not NULL
limit 28;
select  
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where orders_1.o_shippriority is not NULL
group by orders_1.o_comment, orders_1.o_totalprice, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 22;
select  
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where part_1.p_partkey is not NULL
group by region_1.r_comment
limit 13;
select  
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_mktsegment
limit 35;
select  
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  supplier_1.s_nationkey, 
  supplier_2.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  supplier_2.s_comment, 
  supplier_2.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join supplier as supplier_2
      inner join orders as orders_1
      on (supplier_2.s_suppkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_2.s_nationkey is not NULL
group by orders_1.o_orderpriority, orders_1.o_orderstatus, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_nationkey, supplier_2.s_comment, supplier_2.s_nationkey, supplier_2.s_phone
limit 15;
select  
  part_1.p_type, 
  max(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_container is not NULL
group by part_1.p_type
limit 30;
select  
  nation_1.n_nationkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey > nation_1.n_nationkey
limit 8;
select  
  customer_1.c_address, 
  min(
    customer_1.c_custkey), 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment
limit 16;
select  
  min(
    nation_2.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    inner join nation as nation_2
    on (orders_1.o_orderkey = nation_2.n_nationkey )
where nation_2.n_regionkey is not NULL
limit 25;
select  
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 27;
select  
  orders_1.o_custkey, 
  region_1.r_name, 
  region_1.r_comment, 
  customer_1.c_name, 
  orders_1.o_orderdate, 
  customer_1.c_custkey, 
  orders_1.o_orderstatus, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
    on (region_1.r_regionkey = customer_1.c_custkey )
where orders_1.o_orderdate is not NULL
limit 39;
select  
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 19;
select  
  max(
    customer_1.c_nationkey), 
  customer_3.c_address, 
  customer_2.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join customer as customer_1
        inner join part as part_1
        on (customer_1.c_custkey = part_1.p_partkey )
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    inner join customer as customer_2
      inner join customer as customer_3
      on (customer_2.c_custkey = customer_3.c_custkey )
    on (lineitem_1.l_orderkey = customer_2.c_custkey )
where customer_1.c_phone is not NULL
group by customer_2.c_mktsegment, customer_3.c_address
limit 20;
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey > customer_1.c_custkey
group by customer_1.c_phone
limit 28;
select  
  orders_1.o_clerk, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  min(
    orders_1.o_custkey), 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 15;
select  
  max(
    customer_1.c_nationkey), 
  customer_1.c_acctbal, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
group by customer_1.c_acctbal, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 33;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 5;
select  
  nation_2.n_comment, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name, 
  min(
    nation_2.n_regionkey), 
  nation_2.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_2.n_name, 
  nation_2.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_1.n_nationkey >= nation_2.n_regionkey
group by nation_1.n_name, nation_1.n_regionkey, nation_2.n_comment, nation_2.n_name, nation_2.n_nationkey
limit 18;
select  
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey
limit 6;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 8;
select  
  part_1.p_name, 
  part_1.p_name, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
limit 19;
select  
  nation_1.n_comment, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  nation_1.n_comment, 
  orders_1.o_orderkey, 
  nation_1.n_name, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  orders_1.o_shippriority, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  nation_1.n_nationkey, 
  orders_1.o_custkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 19;
select  
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 4;
select  
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 26;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 39;
select  
  nation_2.n_name, 
  nation_2.n_regionkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_2.n_comment, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_regionkey is not NULL
group by nation_1.n_nationkey, nation_1.n_regionkey, nation_2.n_comment, nation_2.n_name, nation_2.n_regionkey
limit 25;
select  
  part_1.p_partkey, 
  min(
    lineitem_2.l_partkey), 
  lineitem_1.l_extendedprice, 
  supplier_1.s_address, 
  max(
    part_1.p_partkey), 
  part_1.p_container, 
  max(
    lineitem_1.l_suppkey), 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  min(
    part_1.p_partkey), 
  lineitem_2.l_returnflag, 
  part_1.p_partkey, 
  supplier_1.s_phone, 
  lineitem_1.l_returnflag, 
  orders_1.o_custkey, 
  lineitem_2.l_tax, 
  min(
    part_1.p_size), 
  min(
    lineitem_2.l_orderkey), 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join lineitem as lineitem_1
        inner join partsupp as partsupp_1
          inner join supplier as supplier_1
          on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
        on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    inner join lineitem as lineitem_2
      inner join orders as orders_1
      on (lineitem_2.l_orderkey = orders_1.o_orderkey )
    on (part_1.p_partkey = orders_1.o_orderkey )
where lineitem_1.l_comment is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_returnflag, lineitem_2.l_returnflag, lineitem_2.l_tax, orders_1.o_custkey, orders_1.o_orderstatus, part_1.p_container, part_1.p_partkey, partsupp_1.ps_comment, partsupp_1.ps_supplycost, supplier_1.s_address, supplier_1.s_phone
limit 39;
select  
  customer_1.c_name, 
  customer_1.c_custkey, 
  min(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey
limit 2;
select  
  part_1.p_size, 
  part_1.p_brand, 
  max(
    part_1.p_size), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_brand, part_1.p_partkey, part_1.p_size
limit 10;
select  
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_shipinstruct
limit 9;
select  
  partsupp_1.ps_suppkey, 
  min(
    partsupp_2.ps_availqty), 
  nation_2.n_nationkey, 
  customer_1.c_nationkey, 
  nation_2.n_comment, 
  part_1.p_size, 
  nation_1.n_nationkey, 
  partsupp_2.ps_partkey, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  region_1.r_name, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
        inner join customer as customer_1
            inner join region as region_1
            on (customer_1.c_custkey = region_1.r_regionkey )
          inner join nation as nation_2
          on (region_1.r_regionkey = nation_2.n_nationkey )
        on (partsupp_2.ps_partkey = region_1.r_regionkey )
      inner join part as part_1
      on (nation_2.n_nationkey = part_1.p_partkey )
    on (nation_1.n_nationkey = partsupp_2.ps_partkey )
where partsupp_1.ps_comment is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_nationkey, nation_1.n_nationkey, nation_2.n_comment, nation_2.n_nationkey, part_1.p_retailprice, part_1.p_size, partsupp_1.ps_suppkey, partsupp_2.ps_partkey, region_1.r_name
limit 32;
select  
  lineitem_1.l_suppkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount = lineitem_1.l_extendedprice
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 8;
select  
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  min(
    orders_1.o_orderkey), 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderkey, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority < orders_1.o_clerk
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_totalprice
limit 17;
select  
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 33;
select  
  part_1.p_mfgr, 
  part_1.p_type, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_mktsegment is not NULL
limit 15;
select  
  part_1.p_comment, 
  part_1.p_name, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
limit 15;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 4;
select  
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 20;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 15;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey < region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 21;
select  
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_discount, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_quantity, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 39;
select  
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
limit 18;
select  
  customer_3.c_nationkey, 
  customer_2.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    inner join customer as customer_3
    on (customer_1.c_custkey = customer_3.c_custkey )
where customer_2.c_phone is not NULL
limit 36;
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey >= customer_1.c_nationkey
limit 15;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
group by region_1.r_name, region_1.r_regionkey
limit 15;
select  
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 42;
select  
  customer_1.c_custkey, 
  customer_2.c_nationkey, 
  max(
    customer_1.c_nationkey), 
  customer_2.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_phone <= customer_2.c_mktsegment
group by customer_1.c_custkey, customer_2.c_nationkey
limit 37;
select  
  min(
    partsupp_2.ps_availqty), 
  supplier_1.s_address, 
  partsupp_2.ps_suppkey, 
  max(
    lineitem_1.l_orderkey), 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_2.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
          inner join partsupp as partsupp_1
          on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
        inner join partsupp as partsupp_2
          inner join part as part_1
          on (partsupp_2.ps_partkey = part_1.p_partkey )
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where partsupp_1.ps_supplycost > part_1.p_retailprice
group by partsupp_1.ps_supplycost, partsupp_2.ps_suppkey, supplier_1.s_address
limit 28;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  region_1.r_regionkey, 
  region_2.r_regionkey, 
  region_2.r_name, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
        inner join region as region_1
        on (orders_1.o_orderkey = region_1.r_regionkey )
      inner join region as region_2
        inner join orders as orders_2
        on (region_2.r_regionkey = orders_2.o_orderkey )
      on (orders_1.o_orderkey = region_2.r_regionkey )
    inner join partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where orders_2.o_orderstatus is not NULL
limit 12;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 34;
select  
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 14;
select  
  part_2.p_name, 
  lineitem_1.l_orderkey, 
  min(
    nation_1.n_nationkey), 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  part_2.p_retailprice, 
  part_2.p_brand, 
  part_1.p_size, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join part as part_1
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    inner join orders as orders_1
      inner join part as part_2
      on (orders_1.o_orderkey = part_2.p_partkey )
    on (nation_1.n_nationkey = part_2.p_partkey )
where orders_1.o_orderkey < lineitem_1.l_partkey
group by lineitem_1.l_orderkey, nation_1.n_nationkey, orders_1.o_orderdate, orders_1.o_orderstatus, part_1.p_size, part_2.p_brand, part_2.p_name, part_2.p_retailprice
limit 40;
select  
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 25;
select  
  customer_1.c_acctbal, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where part_1.p_partkey >= customer_1.c_custkey
limit 7;
select  
  nation_2.n_name, 
  nation_2.n_name, 
  nation_1.n_regionkey, 
  max(
    nation_2.n_regionkey), 
  nation_1.n_name, 
  max(
    nation_2.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_2.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, nation_2.n_name, nation_2.n_nationkey
limit 3;
select  
  part_1.p_type, 
  part_1.p_retailprice, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where part_1.p_name is not NULL
limit 40;
select  
  min(
    part_1.p_size), 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_comment, 
  orders_1.o_totalprice, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderkey, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where part_1.p_brand is not NULL
group by orders_1.o_orderkey, orders_1.o_totalprice, part_1.p_brand, part_1.p_comment
limit 10;
select  
  customer_1.c_mktsegment, 
  customer_2.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_acctbal is not NULL
limit 2;
select  
  orders_1.o_orderpriority, 
  max(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_linestatus, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_extendedprice > lineitem_1.l_tax
group by lineitem_1.l_linestatus, lineitem_1.l_shipmode, lineitem_1.l_tax, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 13;
select  
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
limit 4;
select  
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_brand, 
  min(
    part_1.p_partkey), 
  part_1.p_type, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_mfgr, part_1.p_partkey, part_1.p_retailprice, part_1.p_type
limit 37;
select  
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 20;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 31;
select  
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal < supplier_1.s_acctbal
limit 33;
select  
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus > orders_1.o_clerk
limit 8;
select  
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey = customer_1.c_nationkey
limit 31;
select  
  max(
    part_1.p_size), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_partkey
limit 20;
select  
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 25;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  part_1.p_retailprice, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where part_1.p_size is not NULL
group by part_1.p_retailprice, region_1.r_comment
limit 19;
select  
  region_1.r_regionkey, 
  nation_1.n_name, 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  nation_1.n_nationkey, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
    on (nation_1.n_nationkey = region_1.r_regionkey )
where orders_1.o_custkey = orders_1.o_shippriority
limit 36;
select  
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey
limit 37;
select  
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax > lineitem_1.l_quantity
group by lineitem_1.l_quantity
limit 21;
select  
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
    on (region_1.r_regionkey = orders_1.o_orderkey )
where region_1.r_name is not NULL
limit 30;
select  
  min(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 10;
select  
  region_1.r_name, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  region_1.r_comment, 
  max(
    customer_1.c_nationkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  min(
    customer_1.c_custkey), 
  region_1.r_comment, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_custkey is not NULL
group by customer_1.c_phone, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 16;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment
limit 22;
select  
  part_1.p_retailprice, 
  part_2.p_size, 
  part_1.p_name, 
  min(
    nation_1.n_nationkey), 
  part_1.p_type, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
      inner join part as part_2
      on (nation_1.n_nationkey = part_2.p_partkey )
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_type is not NULL
group by nation_1.n_comment, part_1.p_name, part_1.p_retailprice, part_1.p_type, part_2.p_size
limit 8;
select  
  partsupp_1.ps_partkey, 
  part_1.p_type, 
  partsupp_1.ps_supplycost, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  part_1.p_comment, 
  part_1.p_type, 
  partsupp_1.ps_comment, 
  max(
    part_1.p_partkey), 
  partsupp_1.ps_partkey, 
  part_1.p_type, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where partsupp_1.ps_comment is not NULL
group by part_1.p_comment, part_1.p_retailprice, part_1.p_size, part_1.p_type, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 2;
select  
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 10;
select  
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_quantity, 
  orders_2.o_custkey, 
  max(
    customer_1.c_nationkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment, 
  max(
    lineitem_2.l_linenumber), 
  min(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join region as region_1
          inner join customer as customer_1
          on (region_1.r_regionkey = customer_1.c_custkey )
        inner join orders as orders_1
          inner join lineitem as lineitem_2
          on (orders_1.o_orderkey = lineitem_2.l_orderkey )
        on (customer_1.c_custkey = orders_1.o_orderkey )
      inner join orders as orders_2
      on (region_1.r_regionkey = orders_2.o_orderkey )
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where lineitem_1.l_linestatus <= lineitem_2.l_shipmode
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_quantity, orders_2.o_custkey
limit 36;
select  
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_regionkey
limit 4;
select  
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_phone, 
  part_1.p_name, 
  part_1.p_type, 
  part_1.p_retailprice, 
  supplier_1.s_address, 
  part_1.p_container, 
  part_1.p_mfgr, 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  max(
    part_1.p_partkey), 
  max(
    part_1.p_partkey), 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_1.s_suppkey is not NULL
group by part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice, part_1.p_size, part_1.p_type, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 30;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 16;
select  
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 29;
select  
  part_1.p_comment, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  min(
    part_1.p_partkey), 
  nation_1.n_comment, 
  part_1.p_comment, 
  nation_1.n_regionkey, 
  part_1.p_type, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_partkey), 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_comment, part_1.p_type
limit 6;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_comment, lineitem_1.l_linestatus, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_suppkey
limit 42;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey >= nation_1.n_nationkey
limit 39;
select  
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where partsupp_1.ps_supplycost is not NULL
limit 10;
select  
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_1.c_name is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 21;
select  
  customer_1.c_mktsegment, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey = customer_1.c_nationkey
limit 11;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal > supplier_1.s_acctbal
limit 37;
select  
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 35;
select  
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_name, 
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_brand, 
  max(
    part_1.p_partkey), 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_brand, 
  min(
    part_1.p_partkey), 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 41;
select  
  nation_1.n_regionkey, 
  max(
    part_1.p_size), 
  nation_1.n_nationkey, 
  supplier_1.s_phone, 
  part_1.p_brand, 
  nation_1.n_name, 
  min(
    supplier_1.s_nationkey), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.s_comment is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_brand, part_1.p_name, supplier_1.s_phone
limit 38;
select  
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, orders_1.o_comment, orders_1.o_orderkey
limit 42;
select  
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 34;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey <= partsupp_1.ps_suppkey
limit 36;
select  
  max(
    supplier_1.s_suppkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_partkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_shipmode < lineitem_1.l_linestatus
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_returnflag
limit 40;
select  
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 27;
select  
  region_1.r_name, 
  orders_1.o_comment, 
  nation_1.n_nationkey, 
  max(
    part_1.p_partkey), 
  orders_1.o_totalprice, 
  part_2.p_partkey, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
        inner join part as part_2
        on (part_1.p_partkey = part_2.p_partkey )
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where orders_1.o_clerk is not NULL
group by nation_1.n_nationkey, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_totalprice, part_2.p_partkey, region_1.r_name
limit 5;
select  
  max(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag > lineitem_1.l_shipinstruct
limit 40;
select  
  part_1.p_retailprice, 
  part_1.p_partkey, 
  min(
    part_1.p_size), 
  region_1.r_name, 
  region_1.r_regionkey, 
  min(
    part_1.p_partkey), 
  part_1.p_name, 
  partsupp_1.ps_comment, 
  part_1.p_partkey, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_partkey), 
  max(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
group by part_1.p_name, part_1.p_partkey, part_1.p_retailprice, partsupp_1.ps_comment, partsupp_1.ps_supplycost, region_1.r_name, region_1.r_regionkey
limit 18;
select  
  nation_1.n_name, 
  max(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey <= nation_1.n_regionkey
group by nation_1.n_name
limit 6;
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 13;
select  
  min(
    orders_1.o_shippriority), 
  supplier_1.s_address, 
  orders_2.o_comment, 
  orders_2.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
      inner join orders as orders_2
      on (supplier_1.s_suppkey = orders_2.o_orderkey )
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_2.o_shippriority <= supplier_1.s_nationkey
group by orders_2.o_comment, orders_2.o_orderkey, supplier_1.s_address
limit 1;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority <= orders_1.o_orderstatus
limit 19;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
group by region_1.r_comment, region_1.r_regionkey
limit 39;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_1
    on (nation_1.n_nationkey = lineitem_1.l_orderkey )
where nation_1.n_comment is not NULL
limit 38;
select  
  min(
    part_1.p_size), 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_partkey, part_1.p_retailprice
limit 30;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_custkey), 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  orders_1.o_orderstatus, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where supplier_1.s_name = orders_1.o_orderstatus
group by orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, supplier_1.s_acctbal, supplier_1.s_phone
limit 30;
select  
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name
limit 23;
select  
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_orderstatus is not NULL
limit 13;
select  
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
limit 21;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 40;
select  
  part_1.p_type, 
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_comment, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
limit 15;
select  
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.n_nationkey
limit 27;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name = region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 39;
select  
  min(
    part_1.p_size), 
  part_1.p_container, 
  supplier_1.s_phone, 
  lineitem_1.l_tax, 
  lineitem_1.l_extendedprice, 
  supplier_1.s_comment, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where supplier_1.s_address is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_tax, part_1.p_container, part_1.p_mfgr, supplier_1.s_comment, supplier_1.s_phone
limit 22;
select  
  region_2.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join region as region_2
      inner join supplier as supplier_1
      on (region_2.r_regionkey = supplier_1.s_suppkey )
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_name < supplier_1.s_phone
limit 36;
select  
  max(
    nation_1.n_regionkey), 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_comment is not NULL
group by region_1.r_comment
limit 11;
select  
  customer_2.c_mktsegment, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
        inner join nation as nation_1
          inner join customer as customer_2
          on (nation_1.n_nationkey = customer_2.c_custkey )
        on (customer_1.c_custkey = customer_2.c_custkey )
      inner join supplier as supplier_2
      on (customer_1.c_custkey = supplier_2.s_suppkey )
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_1.s_address is not NULL
limit 33;
select  
  customer_1.c_mktsegment, 
  min(
    part_1.p_size), 
  customer_2.c_comment, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  part_1.p_partkey, 
  part_1.p_size, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    inner join part as part_1
    on (customer_2.c_custkey = part_1.p_partkey )
where customer_2.c_nationkey is not NULL
group by customer_1.c_comment, customer_1.c_mktsegment, customer_1.c_phone, customer_2.c_comment, part_1.p_partkey, part_1.p_size
limit 7;
select  
  lineitem_1.l_partkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where lineitem_1.l_quantity is not NULL
limit 39;
select  
  max(
    partsupp_1.ps_suppkey), 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join region as region_1
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_comment, region_1.r_comment
limit 23;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate >= lineitem_1.l_shipdate
limit 21;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 30;
select  
  customer_2.c_name, 
  customer_2.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_mktsegment <= customer_1.c_phone
limit 14;
select  
  nation_1.n_comment, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  nation_1.n_nationkey, 
  customer_2.c_name, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  customer_2.c_custkey, 
  customer_2.c_nationkey, 
  customer_2.c_phone, 
  min(
    lineitem_1.l_suppkey), 
  customer_1.c_address, 
  customer_2.c_nationkey, 
  customer_2.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
        inner join customer as customer_2
        on (customer_1.c_custkey = customer_2.c_custkey )
      inner join lineitem as lineitem_1
      on (customer_2.c_custkey = lineitem_1.l_orderkey )
    on (nation_1.n_nationkey = customer_2.c_custkey )
where customer_1.c_phone is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_2.c_custkey, customer_2.c_name, customer_2.c_nationkey, customer_2.c_phone, nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 23;
select  
  min(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 19;
select  
  region_1.r_name, 
  part_1.p_comment, 
  max(
    customer_1.c_custkey), 
  max(
    region_1.r_regionkey), 
  min(
    customer_1.c_custkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join region as region_1
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where region_1.r_comment is not NULL
group by part_1.p_comment, region_1.r_name
limit 35;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 25;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 17;
select  
  part_1.p_name, 
  region_1.r_comment, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where region_1.r_comment is not NULL
limit 20;
select  
  orders_1.o_orderstatus, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  orders_1.o_orderdate, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderkey), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_shippriority is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_shippriority, partsupp_1.ps_availqty, partsupp_1.ps_comment
limit 32;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name > region_1.r_name
limit 38;
select  
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_name, 
  part_1.p_container, 
  max(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_retailprice, 
  max(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_name, 
  max(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr = part_1.p_brand
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice, part_1.p_size
limit 37;
select  
  customer_1.c_acctbal, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_orderdate <= orders_1.o_orderdate
limit 16;
select  
  customer_1.c_comment, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_phone is not NULL
group by customer_1.c_address, customer_1.c_comment, nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey
limit 1;
select  
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_custkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_acctbal <= orders_1.o_totalprice
limit 32;
select  
  nation_1.n_regionkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  partsupp_1.ps_availqty, 
  nation_1.n_name, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
      inner join partsupp as partsupp_1
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where partsupp_1.ps_suppkey is not NULL
group by nation_1.n_name, nation_1.n_regionkey, partsupp_1.ps_availqty, supplier_1.s_acctbal
limit 8;
select  
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderkey is not NULL
limit 17;
select  
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey = nation_1.n_nationkey
group by nation_1.n_comment
limit 30;
select  
  partsupp_1.ps_partkey, 
  region_1.r_name, 
  min(
    orders_2.o_shippriority), 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    inner join orders as orders_1
      inner join orders as orders_2
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_supplycost, region_1.r_name
limit 16;
select  
  customer_1.c_name, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal = customer_1.c_acctbal
limit 15;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 14;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 28;
select  
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey > customer_1.c_nationkey
limit 42;
select  
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 33;
select  
  min(
    lineitem_1.l_suppkey), 
  orders_1.o_orderkey, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_orderstatus > orders_1.o_clerk
group by orders_1.o_orderkey
limit 16;
select  
  max(
    orders_1.o_orderkey), 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_custkey, orders_1.o_orderstatus, orders_1.o_totalprice
limit 26;
select  
  min(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join lineitem as lineitem_1
      on (nation_1.n_nationkey = lineitem_1.l_orderkey )
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_1.n_name > lineitem_1.l_shipmode
limit 20;
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
group by customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 9;
select  
  orders_1.o_comment, 
  max(
    part_1.p_size), 
  part_2.p_name, 
  part_2.p_type, 
  part_2.p_mfgr, 
  part_2.p_mfgr, 
  part_1.p_retailprice, 
  orders_1.o_totalprice, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
      inner join part as part_2
      on (orders_1.o_orderkey = part_2.p_partkey )
    on (part_1.p_partkey = orders_1.o_orderkey )
where part_1.p_container is not NULL
group by orders_1.o_comment, orders_1.o_totalprice, part_1.p_partkey, part_1.p_retailprice, part_2.p_mfgr, part_2.p_name, part_2.p_type
limit 41;
select  
  part_1.p_container, 
  part_1.p_container, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_mfgr, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 6;
select  
  partsupp_1.ps_supplycost, 
  nation_1.n_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where nation_1.n_name < nation_1.n_name
limit 12;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 31;
select  
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 30;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 24;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 25;
select  
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 33;
select  
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity > lineitem_1.l_tax
group by lineitem_1.l_tax
limit 39;
select  
  supplier_1.s_address, 
  orders_1.o_comment, 
  min(
    supplier_1.s_nationkey), 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_orderdate < orders_1.o_orderdate
group by orders_1.o_comment, supplier_1.s_address
limit 36;
select  
  max(
    nation_1.n_nationkey), 
  orders_1.o_shippriority, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_1.n_comment is not NULL
group by nation_1.n_nationkey, orders_1.o_shippriority
limit 41;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where partsupp_1.ps_partkey is not NULL
limit 2;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
group by supplier_1.s_name
limit 39;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 20;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey > partsupp_1.ps_suppkey
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 34;
select  
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount >= supplier_1.s_acctbal
limit 8;
select  
  supplier_1.s_address, 
  lineitem_1.l_commitdate, 
  nation_1.n_regionkey, 
  lineitem_2.l_shipinstruct, 
  lineitem_1.l_receiptdate, 
  lineitem_2.l_tax, 
  supplier_1.s_name, 
  lineitem_2.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      inner join lineitem as lineitem_2
      on (nation_1.n_nationkey = lineitem_2.l_orderkey )
    on (supplier_1.s_suppkey = nation_1.n_nationkey )
where supplier_1.s_suppkey is not NULL
limit 27;
select  
  lineitem_3.l_partkey, 
  lineitem_1.l_receiptdate, 
  lineitem_2.l_shipdate, 
  lineitem_3.l_tax, 
  lineitem_3.l_tax, 
  lineitem_3.l_comment, 
  max(
    lineitem_2.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
      inner join lineitem as lineitem_3
      on (lineitem_2.l_orderkey = lineitem_3.l_orderkey )
    on (lineitem_1.l_orderkey = lineitem_3.l_orderkey )
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_receiptdate, lineitem_2.l_shipdate, lineitem_3.l_comment, lineitem_3.l_partkey, lineitem_3.l_tax
limit 40;
select  
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
limit 28;
select  
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  max(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_mfgr
limit 38;
select  
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name < region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 40;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey
limit 34;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
limit 6;
select  
  min(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 33;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
limit 8;
select  
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_partkey, 
  partsupp_1.ps_supplycost, 
  min(
    lineitem_1.l_partkey), 
  partsupp_1.ps_comment, 
  min(
    lineitem_1.l_linenumber), 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linestatus, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_availqty), 
  lineitem_1.l_quantity, 
  lineitem_1.l_returnflag, 
  partsupp_1.ps_partkey, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_suppkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where partsupp_1.ps_partkey >= lineitem_1.l_orderkey
group by lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_returnflag, lineitem_1.l_suppkey, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 28;
select  
  partsupp_1.ps_partkey, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
      inner join supplier as supplier_2
      on (partsupp_1.ps_partkey = supplier_2.s_suppkey )
    inner join region as region_1
    on (supplier_2.s_suppkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by partsupp_1.ps_partkey
limit 2;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice = lineitem_1.l_tax
limit 11;
select  
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 8;
select  
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
limit 26;
select  
  min(
    customer_1.c_nationkey), 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderdate <= orders_1.o_orderdate
group by partsupp_1.ps_comment
limit 36;
select  
  partsupp_1.ps_partkey, 
  supplier_1.s_address, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_phone is not NULL
group by partsupp_1.ps_partkey, supplier_1.s_address, supplier_1.s_suppkey
limit 6;
select  
  max(
    customer_1.c_nationkey), 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_custkey is not NULL
group by customer_1.c_comment, orders_1.o_orderkey, orders_1.o_orderpriority
limit 37;
select  
  min(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 26;
select  
  lineitem_1.l_commitdate, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where customer_1.c_custkey >= customer_1.c_nationkey
group by customer_1.c_nationkey, lineitem_1.l_commitdate
limit 21;
select  
  part_1.p_partkey, 
  min(
    part_1.p_size), 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_mfgr, part_1.p_partkey
limit 29;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 36;
select  
  lineitem_1.l_receiptdate, 
  part_2.p_comment, 
  min(
    orders_1.o_orderkey), 
  part_1.p_size, 
  lineitem_1.l_extendedprice, 
  part_2.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join part as part_2
        inner join orders as orders_1
        on (part_2.p_partkey = orders_1.o_orderkey )
      on (lineitem_1.l_orderkey = part_2.p_partkey )
    on (part_1.p_partkey = part_2.p_partkey )
where lineitem_1.l_shipdate is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_receiptdate, part_1.p_size, part_2.p_brand, part_2.p_comment
limit 33;
select  
  part_1.p_size, 
  part_1.p_mfgr, 
  nation_1.n_regionkey, 
  part_1.p_name, 
  nation_2.n_name, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join partsupp as partsupp_1
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    inner join orders as orders_1
      inner join nation as nation_1
        inner join nation as nation_2
        on (nation_1.n_nationkey = nation_2.n_nationkey )
      on (orders_1.o_orderkey = nation_2.n_nationkey )
    on (partsupp_1.ps_partkey = nation_2.n_nationkey )
where nation_2.n_regionkey is not NULL
limit 17;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
      inner join customer as customer_1
      on (lineitem_2.l_orderkey = customer_1.c_custkey )
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_tax is not NULL
limit 3;
select  
  customer_1.c_name, 
  customer_1.c_phone, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_nationkey <= nation_1.n_nationkey
group by customer_1.c_name, customer_1.c_phone, nation_1.n_regionkey
limit 13;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 36;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 35;
select  
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode < lineitem_1.l_linestatus
limit 31;
select  
  part_1.p_name, 
  min(
    part_1.p_size), 
  part_1.p_partkey, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey > part_1.p_size
group by part_1.p_name, part_1.p_partkey
limit 6;
select  
  max(
    customer_1.c_nationkey), 
  min(
    nation_2.n_nationkey), 
  min(
    part_1.p_partkey), 
  nation_2.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
        inner join customer as customer_1
        on (nation_1.n_nationkey = customer_1.c_custkey )
      inner join nation as nation_2
      on (customer_1.c_custkey = nation_2.n_nationkey )
    on (part_1.p_partkey = nation_2.n_nationkey )
where customer_1.c_custkey >= nation_1.n_regionkey
group by nation_2.n_nationkey
limit 8;
select  
  lineitem_1.l_extendedprice, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  part_1.p_partkey, 
  part_1.p_type, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
      inner join orders as orders_1
      on (part_1.p_partkey = orders_1.o_orderkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_receiptdate > orders_1.o_orderdate
group by lineitem_1.l_extendedprice, lineitem_1.l_receiptdate, orders_1.o_clerk, orders_1.o_totalprice, part_1.p_partkey, part_1.p_type
limit 20;
select  
  min(
    part_1.p_partkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_partkey
limit 3;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 21;
select  
  customer_1.c_address, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_orderdate is not NULL
group by customer_1.c_address
limit 21;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey), 
  min(
    orders_1.o_orderkey), 
  max(
    orders_1.o_custkey), 
  customer_1.c_comment, 
  customer_1.c_phone, 
  orders_1.o_orderdate, 
  customer_1.c_nationkey, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderpriority is not NULL
group by customer_1.c_comment, customer_1.c_nationkey, customer_1.c_phone, orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus
limit 35;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_shipinstruct
limit 8;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 35;
select  
  max(
    part_1.p_partkey), 
  region_1.r_comment, 
  min(
    part_1.p_size), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  part_1.p_name, 
  part_1.p_comment, 
  region_1.r_comment, 
  part_1.p_retailprice, 
  min(
    part_1.p_size), 
  region_1.r_comment, 
  part_1.p_partkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by part_1.p_comment, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 30;
select  
  orders_1.o_clerk, 
  partsupp_1.ps_availqty, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  min(
    partsupp_1.ps_availqty), 
  orders_1.o_orderstatus, 
  orders_1.o_orderpriority, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, partsupp_1.ps_availqty
limit 8;
select  
  part_1.p_size, 
  max(
    part_1.p_size), 
  min(
    orders_1.o_custkey), 
  supplier_1.s_phone, 
  orders_1.o_orderstatus, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where supplier_1.s_suppkey >= part_1.p_size
group by orders_1.o_orderstatus, part_1.p_size, part_1.p_type, supplier_1.s_phone
limit 24;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey < lineitem_1.l_suppkey
limit 11;
select  
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  max(
    customer_1.c_custkey), 
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_phone
limit 33;
select  
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_totalprice <= orders_1.o_totalprice
limit 24;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 10;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
group by region_1.r_comment, region_1.r_regionkey
limit 37;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_quantity is not NULL
limit 25;
select  
  part_1.p_type, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  part_1.p_name, 
  region_1.r_regionkey, 
  min(
    part_1.p_partkey), 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_retailprice = part_1.p_retailprice
group by part_1.p_name, part_1.p_type, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 6;
select  
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 37;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 40;
select  
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey <= customer_1.c_custkey
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 26;
select  
  supplier_1.s_comment, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey
limit 4;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  max(
    orders_1.o_custkey), 
  orders_1.o_custkey, 
  min(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_shippriority
limit 10;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 7;
select  
  min(
    partsupp_1.ps_availqty), 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 6;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 25;
select  
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone >= customer_1.c_mktsegment
limit 37;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_2.r_name, 
  customer_1.c_name, 
  region_2.r_comment, 
  min(
    orders_1.o_shippriority), 
  min(
    customer_1.c_nationkey), 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_2.r_regionkey, 
  customer_1.c_name, 
  region_2.r_comment, 
  customer_1.c_acctbal, 
  orders_1.o_custkey, 
  min(
    customer_1.c_custkey), 
  region_2.r_comment, 
  max(
    orders_1.o_orderkey), 
  region_2.r_comment, 
  region_2.r_comment, 
  customer_1.c_address, 
  region_2.r_regionkey, 
  customer_1.c_comment, 
  region_2.r_comment, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join customer as customer_1
        inner join orders as orders_1
        on (customer_1.c_custkey = orders_1.o_orderkey )
      on (region_1.r_regionkey = customer_1.c_custkey )
    inner join region as region_2
    on (orders_1.o_orderkey = region_2.r_regionkey )
where customer_1.c_acctbal > orders_1.o_totalprice
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_name, orders_1.o_custkey, orders_1.o_orderpriority, region_1.r_comment, region_1.r_name, region_1.r_regionkey, region_2.r_comment, region_2.r_name, region_2.r_regionkey
limit 33;
select  
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 26;
select  
  orders_1.o_orderdate, 
  supplier_1.s_name, 
  min(
    supplier_1.s_nationkey), 
  orders_1.o_orderstatus, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  supplier_1.s_acctbal, 
  max(
    lineitem_1.l_orderkey), 
  max(
    orders_1.o_shippriority), 
  orders_1.o_custkey, 
  min(
    lineitem_1.l_linenumber), 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join supplier as supplier_1
      on (orders_1.o_orderkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_receiptdate, lineitem_1.l_shipmode, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderstatus, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 5;
select  
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_suppkey
limit 13;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 32;
select distinct 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  customer_1.c_acctbal, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_acctbal < customer_1.c_acctbal
limit 28;
select  
  orders_1.o_orderstatus, 
  nation_1.n_comment, 
  orders_1.o_orderstatus, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  min(
    orders_1.o_orderkey), 
  nation_1.n_regionkey, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, orders_1.o_orderkey, orders_1.o_orderstatus
limit 32;
select  
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_custkey), 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 38;
select  
  orders_1.o_shippriority, 
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice < orders_1.o_totalprice
group by orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_shippriority, orders_1.o_totalprice
limit 7;
select  
  lineitem_1.l_extendedprice, 
  orders_1.o_shippriority, 
  orders_1.o_orderkey, 
  orders_1.o_clerk, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_linenumber, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_partkey), 
  orders_1.o_orderdate, 
  max(
    lineitem_1.l_linenumber), 
  max(
    partsupp_1.ps_partkey), 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_shippriority, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 8;
select  
  min(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 27;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_custkey), 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_shippriority, orders_1.o_totalprice
limit 1;
select  
  orders_1.o_orderstatus, 
  partsupp_1.ps_availqty, 
  lineitem_1.l_suppkey, 
  partsupp_1.ps_comment, 
  orders_2.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_2.o_totalprice, 
  part_1.p_partkey, 
  partsupp_1.ps_partkey, 
  part_1.p_name, 
  orders_2.o_orderpriority, 
  part_1.p_mfgr, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    inner join orders as orders_2
      inner join lineitem as lineitem_1
        inner join part as part_1
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      on (orders_2.o_orderkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where orders_1.o_orderstatus is not NULL
limit 8;
select  
  max(
    orders_1.o_orderkey), 
  nation_1.n_regionkey, 
  customer_1.c_mktsegment, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_comment is not NULL
group by customer_1.c_mktsegment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 16;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_name
limit 16;
select  
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  nation_1.n_nationkey, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
limit 27;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 11;
select  
  part_2.p_retailprice, 
  lineitem_1.l_shipmode, 
  supplier_2.s_phone, 
  supplier_2.s_phone, 
  part_1.p_comment, 
  max(
    supplier_2.s_suppkey), 
  partsupp_1.ps_comment, 
  lineitem_1.l_shipdate, 
  supplier_1.s_comment, 
  nation_2.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
        inner join customer as customer_1
          inner join lineitem as lineitem_1
          on (customer_1.c_custkey = lineitem_1.l_orderkey )
        on (nation_1.n_nationkey = customer_1.c_custkey )
      inner join orders as orders_1
          inner join supplier as supplier_1
          on (orders_1.o_orderkey = supplier_1.s_suppkey )
        inner join part as part_1
        on (supplier_1.s_suppkey = part_1.p_partkey )
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    inner join part as part_2
        inner join supplier as supplier_2
          inner join nation as nation_2
            inner join partsupp as partsupp_1
            on (nation_2.n_nationkey = partsupp_1.ps_partkey )
          on (supplier_2.s_suppkey = nation_2.n_nationkey )
        on (part_2.p_partkey = partsupp_1.ps_partkey )
      inner join orders as orders_2
      on (nation_2.n_nationkey = orders_2.o_orderkey )
    on (supplier_1.s_suppkey = nation_2.n_nationkey )
where supplier_2.s_phone is not NULL
group by lineitem_1.l_shipdate, lineitem_1.l_shipmode, nation_2.n_regionkey, part_1.p_comment, part_2.p_retailprice, partsupp_1.ps_comment, supplier_1.s_comment, supplier_2.s_phone
limit 1;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 22;
select  
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_size, 
  min(
    part_1.p_size), 
  part_1.p_brand, 
  part_1.p_mfgr, 
  min(
    part_1.p_partkey), 
  part_1.p_size, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey >= part_1.p_size
group by part_1.p_brand, part_1.p_comment, part_1.p_mfgr, part_1.p_size, part_1.p_type
limit 15;
select  
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 39;
select  
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
limit 1;
select  
  customer_1.c_custkey, 
  part_1.p_comment, 
  customer_1.c_name, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where customer_1.c_comment is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, part_1.p_comment
limit 40;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
limit 18;
select  
  part_1.p_mfgr, 
  part_1.p_name, 
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_partkey, 
  part_1.p_type, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_comment, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_size, part_1.p_type
limit 41;
select  
  partsupp_1.ps_comment, 
  customer_1.c_address, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  customer_1.c_address, 
  max(
    customer_1.c_custkey), 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_mktsegment <= customer_1.c_phone
group by customer_1.c_address, customer_1.c_comment, customer_1.c_nationkey, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 18;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    nation_2.n_regionkey), 
  nation_3.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
      inner join nation as nation_3
      on (nation_2.n_nationkey = nation_3.n_nationkey )
    on (nation_1.n_nationkey = nation_3.n_nationkey )
where nation_2.n_name is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_3.n_comment
limit 5;
select  
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 20;
select  
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate > lineitem_1.l_receiptdate
group by lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_returnflag
limit 12;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name >= region_1.r_name
limit 5;
select  
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_orderdate, orders_1.o_orderpriority
limit 9;
select  
  max(
    supplier_1.s_nationkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  supplier_1.s_address, 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join supplier as supplier_1
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where supplier_1.s_name > supplier_1.s_phone
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost, supplier_1.s_address, supplier_1.s_name
limit 13;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 31;
select  
  part_1.p_partkey, 
  min(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_partkey, 
  part_1.p_comment, 
  part_1.p_comment, 
  max(
    part_1.p_partkey), 
  part_1.p_type, 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_comment, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 23;
select  
  part_1.p_name, 
  min(
    part_1.p_size), 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_comment, part_1.p_name
limit 30;
select  
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
limit 34;
select  
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name > supplier_1.s_phone
limit 2;
select  
  min(
    orders_1.o_orderkey), 
  region_1.r_name, 
  max(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      inner join partsupp as partsupp_1
      on (region_1.r_regionkey = partsupp_1.ps_partkey )
    inner join part as part_2
        inner join supplier as supplier_1
        on (part_2.p_partkey = supplier_1.s_suppkey )
      inner join orders as orders_1
        inner join partsupp as partsupp_2
        on (orders_1.o_orderkey = partsupp_2.ps_partkey )
      on (part_2.p_partkey = partsupp_2.ps_partkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_1.ps_supplycost < part_2.p_retailprice
group by region_1.r_name
limit 29;
select  
  lineitem_1.l_shipmode, 
  lineitem_1.l_quantity, 
  lineitem_1.l_quantity, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 19;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name <= region_1.r_name
limit 35;
select  
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 31;
select distinct 
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_comment is not NULL
limit 36;
select  
  lineitem_2.l_comment, 
  lineitem_1.l_comment, 
  max(
    lineitem_2.l_suppkey), 
  partsupp_1.ps_comment, 
  lineitem_2.l_shipinstruct, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_container, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join partsupp as partsupp_1
      inner join part as part_1
      on (partsupp_1.ps_partkey = part_1.p_partkey )
    on (lineitem_2.l_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost = lineitem_2.l_quantity
group by lineitem_1.l_comment, lineitem_1.l_orderkey, lineitem_2.l_comment, lineitem_2.l_shipinstruct, part_1.p_brand, part_1.p_comment, part_1.p_container, partsupp_1.ps_comment
limit 6;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
limit 15;
select  
  supplier_1.s_acctbal, 
  orders_1.o_orderstatus, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  orders_1.o_orderdate, 
  supplier_1.s_comment, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_phone is not NULL
limit 3;
select  
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 29;
select  
  part_1.p_partkey, 
  part_1.p_type, 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
limit 36;
select  
  lineitem_1.l_suppkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    inner join customer as customer_1
    on (lineitem_2.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_tax is not NULL
limit 31;
select  
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus >= lineitem_1.l_shipinstruct
group by lineitem_1.l_comment, lineitem_1.l_shipinstruct, lineitem_1.l_suppkey
limit 5;
select  
  orders_1.o_totalprice, 
  min(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus > orders_1.o_orderpriority
group by orders_1.o_totalprice
limit 3;
select  
  partsupp_1.ps_partkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
      inner join partsupp as partsupp_2
      on (customer_1.c_custkey = partsupp_2.ps_partkey )
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_2.ps_supplycost < customer_1.c_acctbal
limit 11;
select  
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
limit 35;
select  
  part_1.p_brand, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where supplier_1.s_comment is not NULL
group by part_1.p_brand, supplier_1.s_name
limit 5;
select  
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone > customer_1.c_mktsegment
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name
limit 28;
select  
  orders_1.o_shippriority, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 24;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_extendedprice, 
  supplier_1.s_suppkey, 
  lineitem_1.l_returnflag, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal, 
  lineitem_1.l_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_suppkey, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 19;
select  
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_1.s_comment is not NULL
group by supplier_1.s_comment, supplier_1.s_nationkey
limit 2;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_extendedprice, lineitem_1.l_tax
limit 10;
select  
  nation_1.n_comment, 
  supplier_2.s_suppkey, 
  region_1.r_regionkey, 
  region_2.r_regionkey, 
  part_1.p_brand, 
  nation_1.n_name, 
  supplier_1.s_nationkey, 
  customer_1.c_name, 
  lineitem_1.l_orderkey, 
  customer_1.c_phone, 
  nation_1.n_name, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join supplier as supplier_1
          inner join region as region_1
          on (supplier_1.s_suppkey = region_1.r_regionkey )
        inner join customer as customer_1
        on (supplier_1.s_suppkey = customer_1.c_custkey )
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
        inner join region as region_2
          inner join partsupp as partsupp_1
          on (region_2.r_regionkey = partsupp_1.ps_partkey )
        on (lineitem_1.l_orderkey = region_2.r_regionkey )
      inner join supplier as supplier_2
        inner join part as part_1
        on (supplier_2.s_suppkey = part_1.p_partkey )
      on (partsupp_1.ps_partkey = supplier_2.s_suppkey )
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where lineitem_1.l_linestatus is not NULL
limit 15;
select  
  part_1.p_mfgr, 
  part_1.p_type, 
  supplier_1.s_acctbal, 
  part_1.p_comment, 
  max(
    supplier_1.s_nationkey), 
  max(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_suppkey = region_1.r_regionkey )
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_partkey > region_1.r_regionkey
group by part_1.p_comment, part_1.p_mfgr, part_1.p_type, supplier_1.s_acctbal
limit 27;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey
limit 1;
select  
  nation_1.n_regionkey, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where nation_1.n_name <= orders_1.o_orderstatus
group by nation_1.n_regionkey, orders_1.o_orderstatus
limit 24;
select  
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 42;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_comment, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 11;
select  
  customer_1.c_mktsegment, 
  partsupp_1.ps_suppkey, 
  partsupp_2.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_2.ps_availqty is not NULL
limit 19;
select  
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    inner join part as part_1
      inner join customer as customer_1
        inner join supplier as supplier_2
        on (customer_1.c_custkey = supplier_2.s_suppkey )
      on (part_1.p_partkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
limit 34;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 11;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  orders_1.o_orderdate, 
  customer_1.c_nationkey, 
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_custkey is not NULL
limit 42;
select  
  partsupp_1.ps_comment, 
  part_1.p_container, 
  min(
    part_2.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
      inner join part as part_2
      on (partsupp_1.ps_partkey = part_2.p_partkey )
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_mfgr is not NULL
group by part_1.p_container, partsupp_1.ps_comment
limit 26;
select  
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name
limit 20;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 15;
select  
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_comment is not NULL
limit 1;
select  
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 16;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_partkey
limit 40;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_custkey >= orders_1.o_shippriority
limit 37;
select  
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join supplier as supplier_2
        inner join part as part_1
        on (supplier_2.s_suppkey = part_1.p_partkey )
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    inner join lineitem as lineitem_1
      inner join region as region_1
      on (lineitem_1.l_orderkey = region_1.r_regionkey )
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where supplier_2.s_comment is not NULL
limit 23;
select  
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 31;
select  
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  max(
    nation_1.n_nationkey), 
  nation_2.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
      inner join customer as customer_1
      on (nation_2.n_nationkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where customer_1.c_comment is not NULL
group by customer_1.c_custkey, customer_1.c_name, nation_2.n_name
limit 22;
select  
  supplier_1.s_suppkey, 
  part_1.p_type, 
  supplier_1.s_name, 
  max(
    supplier_1.s_suppkey), 
  part_1.p_type, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_nationkey < customer_1.c_custkey
group by part_1.p_type, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_suppkey
limit 8;
select  
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join nation as nation_1
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join orders as orders_1
      inner join supplier as supplier_2
        inner join orders as orders_2
        on (supplier_2.s_suppkey = orders_2.o_orderkey )
      on (orders_1.o_orderkey = orders_2.o_orderkey )
    on (supplier_1.s_suppkey = orders_2.o_orderkey )
where orders_1.o_orderpriority is not NULL
limit 10;
select  
  part_1.p_size, 
  min(
    customer_1.c_custkey), 
  max(
    part_1.p_size), 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  max(
    part_1.p_size), 
  min(
    customer_1.c_nationkey), 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where customer_1.c_phone is not NULL
group by customer_1.c_nationkey, customer_1.c_phone, part_1.p_comment, part_1.p_retailprice, part_1.p_size
limit 32;
select  
  supplier_1.s_comment, 
  supplier_1.s_name, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_comment, supplier_1.s_name
limit 1;
select  
  partsupp_1.ps_suppkey, 
  max(
    nation_1.n_nationkey), 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join partsupp as partsupp_1
      inner join nation as nation_1
        inner join partsupp as partsupp_2
        on (nation_1.n_nationkey = partsupp_2.ps_partkey )
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    on (region_1.r_regionkey = partsupp_2.ps_partkey )
where nation_1.n_nationkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey
limit 29;
select  
  orders_1.o_clerk, 
  customer_2.c_mktsegment, 
  customer_2.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join part as part_1
          inner join customer as customer_1
          on (part_1.p_partkey = customer_1.c_custkey )
        inner join customer as customer_2
        on (part_1.p_partkey = customer_2.c_custkey )
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join orders as orders_1
    on (customer_2.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderkey > customer_2.c_nationkey
limit 35;
select  
  region_1.r_name, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  region_1.r_name, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  max(
    supplier_1.s_suppkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_acctbal < supplier_1.s_acctbal
group by region_1.r_comment, region_1.r_name, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 40;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 9;
select  
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_2.o_totalprice = customer_1.c_acctbal
limit 28;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 21;
select  
  customer_1.c_acctbal, 
  nation_1.n_nationkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where customer_1.c_acctbal <= customer_1.c_acctbal
limit 17;
select  
  part_1.p_size, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 15;
select  
  lineitem_1.l_partkey, 
  min(
    lineitem_1.l_suppkey), 
  part_1.p_retailprice, 
  part_1.p_comment, 
  lineitem_1.l_orderkey, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    on (part_1.p_partkey = customer_1.c_custkey )
where lineitem_1.l_linenumber < lineitem_1.l_partkey
group by customer_1.c_mktsegment, lineitem_1.l_orderkey, lineitem_1.l_partkey, part_1.p_comment, part_1.p_retailprice
limit 28;
select  
  min(
    supplier_1.s_nationkey), 
  customer_1.c_name, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_acctbal is not NULL
group by customer_1.c_name, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment
limit 9;
select  
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 9;
select  
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 35;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name
limit 5;
select  
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join region as region_1
        inner join part as part_1
        on (region_1.r_regionkey = part_1.p_partkey )
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    inner join lineitem as lineitem_2
    on (part_1.p_partkey = lineitem_2.l_orderkey )
where lineitem_1.l_commitdate is not NULL
limit 21;
select  
  min(
    partsupp_2.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join part as part_1
      inner join lineitem as lineitem_1
        inner join partsupp as partsupp_2
          inner join lineitem as lineitem_2
          on (partsupp_2.ps_partkey = lineitem_2.l_orderkey )
        on (lineitem_1.l_orderkey = partsupp_2.ps_partkey )
      on (part_1.p_partkey = partsupp_2.ps_partkey )
    on (partsupp_1.ps_partkey = lineitem_2.l_orderkey )
where partsupp_2.ps_suppkey is not NULL
limit 21;
select  
  region_1.r_comment, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_comment, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    on (part_1.p_partkey = region_1.r_regionkey )
where part_1.p_type is not NULL
group by lineitem_1.l_comment, part_1.p_name, region_1.r_comment
limit 2;
select  
  customer_2.c_phone, 
  customer_2.c_comment, 
  min(
    supplier_1.s_suppkey), 
  customer_1.c_acctbal, 
  customer_2.c_nationkey, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_2.c_address, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_custkey = supplier_1.s_suppkey )
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_2.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_2.c_address, customer_2.c_comment, customer_2.c_nationkey, customer_2.c_phone, supplier_1.s_phone
limit 8;
select  
  max(
    region_1.r_regionkey), 
  supplier_1.s_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  supplier_1.s_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_name, 
  max(
    supplier_1.s_suppkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey, supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name
limit 23;
select  
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    on (part_1.p_partkey = customer_1.c_custkey )
where orders_1.o_custkey >= orders_1.o_orderkey
limit 40;
select  
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 32;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_returnflag, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 18;
select  
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_retailprice, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size < part_1.p_partkey
limit 19;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  min(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_container is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_retailprice
limit 28;
select  
  region_1.r_comment, 
  part_1.p_name, 
  part_1.p_size, 
  region_1.r_comment, 
  region_1.r_name, 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
limit 9;
select  
  partsupp_1.ps_suppkey, 
  max(
    nation_1.n_regionkey), 
  min(
    nation_2.n_regionkey), 
  max(
    nation_1.n_regionkey), 
  part_1.p_brand, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  partsupp_1.ps_comment, 
  part_1.p_retailprice, 
  nation_2.n_name, 
  min(
    nation_2.n_regionkey), 
  min(
    part_1.p_size), 
  nation_2.n_comment, 
  part_1.p_mfgr, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join part as part_1
      inner join nation as nation_2
        inner join partsupp as partsupp_1
        on (nation_2.n_nationkey = partsupp_1.ps_partkey )
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where nation_1.n_name = part_1.p_container
group by nation_1.n_regionkey, nation_2.n_comment, nation_2.n_name, part_1.p_brand, part_1.p_mfgr, part_1.p_retailprice, partsupp_1.ps_comment, partsupp_1.ps_suppkey, supplier_1.s_name
limit 12;
select  
  orders_1.o_totalprice, 
  part_1.p_size, 
  supplier_1.s_comment, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  supplier_1.s_name, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority, 
  supplier_1.s_phone, 
  part_1.p_retailprice, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_orderdate < orders_1.o_orderdate
group by orders_1.o_clerk, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice, part_1.p_name, part_1.p_retailprice, part_1.p_size, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone
limit 29;
select  
  max(
    part_1.p_size), 
  min(
    part_2.p_partkey), 
  part_2.p_partkey, 
  max(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_1.p_size < part_2.p_size
group by part_2.p_partkey
limit 36;
select  
  supplier_1.s_name, 
  supplier_1.s_name, 
  lineitem_2.l_shipdate, 
  orders_1.o_orderdate, 
  lineitem_2.l_suppkey, 
  min(
    customer_1.c_custkey), 
  lineitem_2.l_partkey, 
  orders_1.o_orderdate, 
  min(
    customer_1.c_nationkey), 
  max(
    customer_1.c_nationkey), 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join supplier as supplier_1
        inner join lineitem as lineitem_2
        on (supplier_1.s_suppkey = lineitem_2.l_orderkey )
      inner join orders as orders_1
        inner join customer as customer_1
        on (orders_1.o_orderkey = customer_1.c_custkey )
      on (lineitem_2.l_orderkey = customer_1.c_custkey )
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where orders_1.o_orderkey is not NULL
group by lineitem_2.l_partkey, lineitem_2.l_shipdate, lineitem_2.l_suppkey, orders_1.o_orderdate, supplier_1.s_acctbal, supplier_1.s_name
limit 37;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
    on (part_1.p_partkey = orders_1.o_orderkey )
where orders_1.o_totalprice = part_1.p_retailprice
limit 22;
select  
  nation_2.n_name, 
  nation_1.n_comment, 
  customer_1.c_phone, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    nation_2.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
group by customer_1.c_phone, nation_1.n_comment, nation_2.n_name
limit 21;
select  
  max(
    part_1.p_size), 
  part_1.p_type, 
  part_1.p_comment, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_container, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_brand, 
  min(
    part_1.p_partkey), 
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container >= part_1.p_mfgr
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 17;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 8;
select  
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  max(
    supplier_1.s_nationkey), 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 29;
select  
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 23;
select  
  customer_1.c_mktsegment, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone >= customer_1.c_mktsegment
limit 34;
select  
  orders_1.o_totalprice, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  min(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk >= orders_1.o_orderpriority
group by orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_totalprice
limit 4;
select  
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_supplycost
limit 42;
select  
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 26;
select  
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal >= supplier_1.s_acctbal
limit 13;
select  
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal >= customer_1.c_acctbal
limit 22;
select  
  part_1.p_size, 
  customer_1.c_mktsegment, 
  customer_1.c_address, 
  part_1.p_comment, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where part_1.p_container is not NULL
limit 15;
select  
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 27;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey, 
  min(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_shipmode
limit 29;
select  
  min(
    orders_1.o_orderkey), 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_custkey, orders_1.o_orderstatus
limit 34;
select  
  max(
    orders_1.o_orderkey), 
  region_1.r_regionkey, 
  orders_1.o_comment, 
  customer_1.c_name, 
  region_2.r_regionkey, 
  orders_1.o_totalprice, 
  customer_1.c_address, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
      inner join orders as orders_1
        inner join region as region_2
        on (orders_1.o_orderkey = region_2.r_regionkey )
      on (region_1.r_regionkey = orders_1.o_orderkey )
    on (customer_1.c_custkey = orders_1.o_orderkey )
where region_2.r_regionkey > customer_1.c_nationkey
group by customer_1.c_address, customer_1.c_mktsegment, customer_1.c_name, orders_1.o_comment, orders_1.o_totalprice, region_1.r_regionkey, region_2.r_regionkey
limit 2;
select  
  region_1.r_comment, 
  orders_2.o_orderpriority, 
  orders_2.o_orderkey, 
  orders_2.o_totalprice, 
  part_1.p_size, 
  part_1.p_name, 
  part_1.p_brand, 
  supplier_1.s_suppkey, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
        inner join part as part_1
        on (orders_1.o_orderkey = part_1.p_partkey )
      inner join region as region_1
        inner join orders as orders_2
          inner join supplier as supplier_1
          on (orders_2.o_orderkey = supplier_1.s_suppkey )
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      on (orders_1.o_orderkey = region_1.r_regionkey )
    inner join nation as nation_1
    on (orders_2.o_orderkey = nation_1.n_nationkey )
where supplier_1.s_comment is not NULL
limit 20;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 38;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 27;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_name is not NULL
group by supplier_1.s_address, supplier_1.s_nationkey
limit 34;
select  
  region_1.r_name, 
  region_2.r_name, 
  region_1.r_regionkey, 
  max(
    nation_1.n_nationkey), 
  region_1.r_comment, 
  min(
    nation_1.n_nationkey), 
  region_1.r_comment, 
  nation_1.n_nationkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_comment is not NULL
group by nation_1.n_nationkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey, region_2.r_name
limit 12;
select  
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_brand is not NULL
limit 34;
select  
  supplier_1.s_comment, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
limit 23;
select  
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_retailprice, 
  min(
    part_1.p_size), 
  part_1.p_partkey, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_type
limit 8;
select  
  max(
    orders_1.o_custkey), 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join orders as orders_2
    on (customer_1.c_custkey = orders_2.o_orderkey )
where customer_1.c_address is not NULL
group by customer_1.c_name
limit 16;
select  
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey), 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name
limit 28;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 38;
select  
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where part_1.p_size is not NULL
limit 3;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate > lineitem_1.l_shipdate
limit 16;
select  
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_suppkey), 
  nation_1.n_name, 
  lineitem_1.l_linestatus, 
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join orders as orders_1
        inner join nation as nation_1
        on (orders_1.o_orderkey = nation_1.n_nationkey )
      inner join part as part_1
      on (nation_1.n_nationkey = part_1.p_partkey )
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where part_1.p_size <= part_1.p_partkey
group by lineitem_1.l_linestatus, lineitem_1.l_shipinstruct, nation_1.n_name
limit 33;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_availqty
limit 3;
select  
  nation_1.n_comment, 
  nation_1.n_comment, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_regionkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 2;
select  
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  max(
    lineitem_1.l_suppkey), 
  region_1.r_name, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_suppkey, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
group by lineitem_1.l_orderkey, lineitem_1.l_suppkey, region_1.r_name, supplier_1.s_acctbal, supplier_1.s_name
limit 37;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 17;
select  
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 35;
select  
  partsupp_3.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join lineitem as lineitem_1
      on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
    inner join partsupp as partsupp_2
      inner join orders as orders_1
        inner join partsupp as partsupp_3
        on (orders_1.o_orderkey = partsupp_3.ps_partkey )
      on (partsupp_2.ps_partkey = partsupp_3.ps_partkey )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_3.ps_availqty is not NULL
limit 5;
select  
  orders_2.o_clerk, 
  region_1.r_name, 
  supplier_1.s_suppkey, 
  region_1.r_regionkey, 
  customer_1.c_custkey, 
  orders_1.o_clerk, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join region as region_1
        inner join customer as customer_1
          inner join supplier as supplier_1
          on (customer_1.c_custkey = supplier_1.s_suppkey )
        on (region_1.r_regionkey = customer_1.c_custkey )
      on (orders_1.o_orderkey = region_1.r_regionkey )
    inner join orders as orders_2
    on (supplier_1.s_suppkey = orders_2.o_orderkey )
where orders_1.o_totalprice = supplier_1.s_acctbal
limit 13;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_orderstatus
limit 42;
select  
  nation_1.n_name, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 27;
select  
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderstatus
limit 10;
select  
  orders_1.o_orderpriority, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
limit 25;
select  
  supplier_1.s_address, 
  orders_1.o_orderdate, 
  supplier_1.s_phone, 
  min(
    orders_1.o_custkey), 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderpriority, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_nationkey is not NULL
group by orders_1.o_orderdate, orders_1.o_orderpriority, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 17;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 34;
select  
  nation_1.n_name, 
  part_1.p_partkey, 
  part_1.p_container, 
  customer_1.c_mktsegment, 
  max(
    part_1.p_size), 
  customer_1.c_custkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  part_1.p_name, 
  customer_1.c_mktsegment, 
  nation_1.n_name, 
  customer_1.c_name, 
  customer_1.c_address, 
  customer_1.c_nationkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where part_1.p_retailprice is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_container, part_1.p_name, part_1.p_partkey
limit 39;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 16;
select  
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_orderkey <= lineitem_1.l_suppkey
limit 22;
select  
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 21;
select  
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 3;
select  
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone < customer_1.c_mktsegment
limit 19;
select  
  max(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_name, part_1.p_retailprice
limit 37;
select  
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey
limit 22;
select  
  supplier_1.s_nationkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 21;
select  
  customer_1.c_address, 
  max(
    customer_1.c_custkey), 
  customer_1.c_phone, 
  customer_1.c_phone, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_address, customer_1.c_custkey, customer_1.c_phone
limit 34;
select  
  lineitem_2.l_linenumber, 
  max(
    lineitem_2.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
        inner join lineitem as lineitem_2
        on (partsupp_1.ps_partkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join part as part_1
      inner join orders as orders_1
      on (part_1.p_partkey = orders_1.o_orderkey )
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where lineitem_2.l_suppkey > orders_1.o_shippriority
group by lineitem_2.l_linenumber
limit 23;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 29;
select  
  lineitem_1.l_comment, 
  lineitem_1.l_suppkey, 
  min(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_partkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 2;
select  
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_shipmode is not NULL
limit 20;
select  
  supplier_2.s_name, 
  customer_1.c_name, 
  supplier_2.s_acctbal, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join supplier as supplier_2
      inner join orders as orders_1
        inner join customer as customer_1
          inner join part as part_1
          on (customer_1.c_custkey = part_1.p_partkey )
        on (orders_1.o_orderkey = customer_1.c_custkey )
      on (supplier_2.s_suppkey = orders_1.o_orderkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_comment is not NULL
limit 8;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_tax, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 27;
select  
  supplier_1.s_address, 
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join customer as customer_1
        on (supplier_1.s_suppkey = customer_1.c_custkey )
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    inner join partsupp as partsupp_1
    on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
where supplier_1.s_comment is not NULL
group by supplier_1.s_address
limit 12;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 1;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 11;
select  
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name < region_1.r_name
limit 15;
select  
  part_1.p_size, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  max(
    part_1.p_partkey), 
  part_1.p_comment, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_comment, part_1.p_mfgr, part_1.p_retailprice, part_1.p_size
limit 13;
select  
  part_1.p_name, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_2.l_suppkey), 
  lineitem_1.l_commitdate, 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
        inner join partsupp as partsupp_1
          inner join part as part_1
          on (partsupp_1.ps_partkey = part_1.p_partkey )
        on (lineitem_1.l_orderkey = part_1.p_partkey )
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    on (supplier_1.s_suppkey = lineitem_2.l_orderkey )
where part_1.p_retailprice is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_receiptdate, part_1.p_name
limit 13;
select  
  nation_1.n_name, 
  max(
    customer_1.c_nationkey), 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
      inner join nation as nation_1
      on (orders_1.o_orderkey = nation_1.n_nationkey )
    on (customer_1.c_custkey = orders_1.o_orderkey )
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey
limit 39;
select  
  nation_1.n_nationkey, 
  nation_1.n_name, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.n_nationkey
limit 9;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 6;
select  
  supplier_1.s_address, 
  supplier_2.s_comment, 
  supplier_2.s_phone, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join supplier as supplier_2
      inner join supplier as supplier_3
      on (supplier_2.s_suppkey = supplier_3.s_suppkey )
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_name is not NULL
limit 7;
select  
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
limit 31;
select  
  supplier_1.s_phone, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey > supplier_1.s_nationkey
limit 41;
select  
  min(
    region_2.r_regionkey), 
  orders_1.o_orderkey, 
  region_1.r_comment, 
  customer_1.c_acctbal, 
  region_1.r_comment, 
  region_2.r_comment, 
  region_2.r_name, 
  region_3.r_comment, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join orders as orders_1
          inner join customer as customer_1
          on (orders_1.o_orderkey = customer_1.c_custkey )
        inner join region as region_2
        on (customer_1.c_custkey = region_2.r_regionkey )
      inner join region as region_3
      on (customer_1.c_custkey = region_3.r_regionkey )
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_3.r_comment is not NULL
group by customer_1.c_acctbal, orders_1.o_orderkey, region_1.r_comment, region_2.r_comment, region_2.r_name, region_3.r_comment
limit 15;
select  
  lineitem_1.l_discount, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 41;
select  
  lineitem_2.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_commitdate >= lineitem_1.l_commitdate
limit 24;
select  
  part_1.p_size, 
  max(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  min(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_size
limit 10;
select  
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  customer_1.c_phone, 
  min(
    customer_1.c_custkey), 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  region_1.r_name, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_acctbal, 
  customer_1.c_address, 
  max(
    customer_1.c_nationkey), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_comment is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 8;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty < partsupp_1.ps_partkey
limit 32;
select  
  orders_1.o_shippriority, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 27;
select  
  customer_1.c_address, 
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_suppkey), 
  customer_1.c_nationkey, 
  lineitem_1.l_extendedprice, 
  min(
    customer_1.c_custkey), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_discount, 
  customer_1.c_name, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_suppkey, 
  customer_1.c_address, 
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  customer_1.c_phone, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_returnflag, 
  max(
    lineitem_1.l_linenumber), 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where lineitem_1.l_linenumber is not NULL
group by customer_1.c_address, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey
limit 22;
select  
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey
limit 26;
select  
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_partkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_discount, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_shipinstruct
limit 25;
select  
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 7;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 3;
select  
  region_1.r_comment, 
  max(
    lineitem_1.l_suppkey), 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join region as region_1
      on (partsupp_1.ps_partkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 35;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
limit 27;
select  
  customer_1.c_address, 
  customer_1.c_address, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment, customer_1.c_custkey
limit 26;
select  
  part_1.p_retailprice, 
  part_1.p_comment, 
  part_1.p_name, 
  min(
    part_1.p_size), 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_comment is not NULL
group by part_1.p_comment, part_1.p_name, part_1.p_retailprice
limit 12;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 25;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_partkey, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 40;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey = lineitem_1.l_orderkey
limit 33;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 19;
select  
  partsupp_1.ps_comment, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  part_1.p_mfgr, 
  partsupp_1.ps_supplycost, 
  orders_1.o_shippriority, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    inner join part as part_1
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where partsupp_1.ps_comment is not NULL
limit 40;
select  
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 23;
select  
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 21;
select  
  min(
    region_2.r_regionkey), 
  lineitem_1.l_partkey, 
  orders_1.o_custkey, 
  nation_1.n_nationkey, 
  region_2.r_comment, 
  orders_1.o_orderdate, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    inner join region as region_1
        inner join nation as nation_1
          inner join region as region_2
          on (nation_1.n_nationkey = region_2.r_regionkey )
        on (region_1.r_regionkey = nation_1.n_nationkey )
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where region_1.r_comment is not NULL
group by lineitem_1.l_partkey, nation_1.n_nationkey, orders_1.o_custkey, orders_1.o_orderdate, region_1.r_comment, region_2.r_comment
limit 12;
select  
  max(
    orders_1.o_orderkey), 
  min(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate <= orders_1.o_orderdate
group by orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 28;
select  
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 23;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey = partsupp_1.ps_availqty
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 2;
select  
  supplier_1.s_nationkey, 
  region_2.r_regionkey, 
  supplier_2.s_name, 
  min(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_suppkey = region_1.r_regionkey )
    inner join region as region_2
      inner join supplier as supplier_2
      on (region_2.r_regionkey = supplier_2.s_suppkey )
    on (supplier_1.s_suppkey = region_2.r_regionkey )
where supplier_2.s_acctbal > supplier_1.s_acctbal
group by region_2.r_regionkey, supplier_1.s_nationkey, supplier_2.s_name
limit 10;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_availqty), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 2;
select  
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey >= supplier_1.s_suppkey
limit 38;
select  
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join orders as orders_1
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where lineitem_1.l_shipdate >= lineitem_1.l_receiptdate
limit 8;
select  
  customer_1.c_phone, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_regionkey is not NULL
limit 10;
select  
  nation_2.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join partsupp as partsupp_1
          inner join region as region_1
          on (partsupp_1.ps_partkey = region_1.r_regionkey )
        on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
      inner join nation as nation_1
      on (region_1.r_regionkey = nation_1.n_nationkey )
    inner join nation as nation_2
      inner join part as part_1
      on (nation_2.n_nationkey = part_1.p_partkey )
    on (region_1.r_regionkey = part_1.p_partkey )
where lineitem_1.l_receiptdate is not NULL
limit 30;
select  
  part_1.p_name, 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  part_1.p_name, 
  nation_1.n_nationkey, 
  max(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where nation_1.n_regionkey <= nation_1.n_nationkey
group by nation_1.n_comment, nation_1.n_nationkey, part_1.p_name
limit 32;
select  
  part_1.p_retailprice, 
  max(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_tax, 
  part_1.p_brand, 
  lineitem_1.l_partkey, 
  part_1.p_brand, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_shipmode < lineitem_1.l_shipinstruct
group by lineitem_1.l_partkey, lineitem_1.l_receiptdate, lineitem_1.l_tax, part_1.p_brand, part_1.p_retailprice
limit 1;
select  
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_container, 
  part_1.p_name, 
  max(
    part_1.p_size), 
  min(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_size, 
  part_1.p_brand, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size < part_1.p_partkey
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_size
limit 12;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 23;
select  
  max(
    partsupp_1.ps_availqty), 
  region_1.r_name, 
  partsupp_1.ps_suppkey, 
  nation_1.n_name, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    on (region_1.r_regionkey = partsupp_1.ps_partkey )
where nation_1.n_regionkey is not NULL
group by nation_1.n_name, partsupp_1.ps_availqty, partsupp_1.ps_suppkey, region_1.r_name
limit 19;
select  
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_nationkey is not NULL
limit 1;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name <= region_1.r_name
limit 26;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 15;
select  
  part_1.p_mfgr, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 33;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_extendedprice, 
  supplier_2.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join orders as orders_1
      inner join supplier as supplier_2
      on (orders_1.o_orderkey = supplier_2.s_suppkey )
    on (nation_1.n_nationkey = supplier_2.s_suppkey )
where lineitem_1.l_extendedprice is not NULL
limit 1;
select  
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join region as region_1
      on (supplier_1.s_suppkey = region_1.r_regionkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where supplier_1.s_suppkey is not NULL
limit 28;
select  
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey), 
  max(
    nation_1.n_regionkey), 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 24;
select  
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_comment, 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone = customer_1.c_mktsegment
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 3;
select  
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
limit 19;
select  
  min(
    part_1.p_size), 
  max(
    part_1.p_partkey), 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_partkey
limit 28;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 22;
select  
  min(
    partsupp_2.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
        inner join nation as nation_1
        on (partsupp_2.ps_partkey = nation_1.n_nationkey )
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
limit 23;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
limit 3;
select  
  partsupp_3.ps_availqty, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    inner join partsupp as partsupp_3
    on (partsupp_2.ps_partkey = partsupp_3.ps_partkey )
where partsupp_1.ps_supplycost <= partsupp_2.ps_supplycost
limit 1;
select  
  customer_1.c_mktsegment, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
limit 21;
select  
  lineitem_2.l_quantity, 
  nation_1.n_nationkey, 
  lineitem_2.l_receiptdate, 
  nation_2.n_regionkey, 
  nation_2.n_nationkey, 
  lineitem_1.l_orderkey, 
  nation_2.n_name, 
  nation_1.n_regionkey, 
  nation_2.n_name, 
  min(
    nation_2.n_regionkey), 
  min(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join lineitem as lineitem_1
      inner join nation as nation_1
        inner join nation as nation_2
          inner join lineitem as lineitem_2
          on (nation_2.n_nationkey = lineitem_2.l_orderkey )
        on (nation_1.n_nationkey = nation_2.n_nationkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    on (customer_1.c_custkey = nation_1.n_nationkey )
where lineitem_1.l_partkey <= lineitem_1.l_linenumber
group by lineitem_1.l_orderkey, lineitem_2.l_quantity, lineitem_2.l_receiptdate, nation_1.n_nationkey, nation_1.n_regionkey, nation_2.n_name, nation_2.n_nationkey, nation_2.n_regionkey
limit 18;
select  
  min(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_receiptdate, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag = lineitem_1.l_shipmode
group by lineitem_1.l_linestatus, lineitem_1.l_receiptdate, lineitem_1.l_suppkey
limit 39;
select  
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 2;
select  
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipmode is not NULL
limit 23;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey <= partsupp_1.ps_suppkey
limit 26;
select  
  min(
    part_1.p_partkey), 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_partkey is not NULL
group by part_1.p_comment
limit 27;
select  
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_comment, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate >= orders_1.o_orderdate
limit 40;
select  
  supplier_1.s_phone, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join supplier as supplier_2
    on (supplier_1.s_suppkey = supplier_2.s_suppkey )
where supplier_2.s_address is not NULL
limit 30;
select  
  min(
    orders_1.o_custkey), 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_clerk is not NULL
group by orders_1.o_orderstatus
limit 18;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_acctbal < partsupp_1.ps_supplycost
limit 13;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  customer_1.c_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_custkey is not NULL
limit 24;
select  
  lineitem_2.l_orderkey, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
        inner join lineitem as lineitem_1
        on (customer_1.c_custkey = lineitem_1.l_orderkey )
      inner join part as part_1
      on (customer_1.c_custkey = part_1.p_partkey )
    inner join lineitem as lineitem_2
    on (customer_1.c_custkey = lineitem_2.l_orderkey )
where lineitem_2.l_extendedprice is not NULL
limit 3;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 22;
select  
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice < orders_1.o_totalprice
limit 18;
select  
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
limit 19;
select  
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_size, 
  max(
    part_1.p_size), 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_mfgr, part_1.p_size, part_1.p_type
limit 41;
select  
  region_2.r_name, 
  max(
    region_2.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_regionkey is not NULL
group by region_2.r_name
limit 39;
select  
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone >= supplier_1.s_name
group by supplier_1.s_acctbal, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 41;
select  
  orders_1.o_orderkey, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 24;
select  
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
limit 6;
select  
  lineitem_1.l_quantity, 
  max(
    lineitem_1.l_suppkey), 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_linestatus, 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_quantity, lineitem_1.l_returnflag
limit 2;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber > lineitem_1.l_orderkey
limit 4;
select  
  max(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey >= lineitem_1.l_linenumber
limit 33;
select  
  part_1.p_brand, 
  max(
    part_1.p_size), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_brand
limit 33;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 13;
select  
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  nation_1.n_comment, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
        inner join nation as nation_1
        on (lineitem_1.l_orderkey = nation_1.n_nationkey )
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderpriority is not NULL
limit 39;
select  
  customer_1.c_mktsegment, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_commitdate, 
  region_1.r_name, 
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  min(
    lineitem_1.l_orderkey), 
  max(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_orderkey is not NULL
group by customer_1.c_mktsegment, customer_1.c_name, lineitem_1.l_commitdate, lineitem_1.l_suppkey, region_1.r_name
limit 16;
select  
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 42;
select  
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_availqty)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_2.ps_partkey is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 29;
select  
  supplier_2.s_address, 
  region_1.r_name, 
  supplier_1.s_nationkey, 
  supplier_2.s_nationkey, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join partsupp as partsupp_1
        inner join supplier as supplier_1
        on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (partsupp_1.ps_partkey = supplier_2.s_suppkey )
where region_1.r_name is not NULL
limit 30;
select  
  partsupp_1.ps_comment, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipdate, 
  max(
    partsupp_1.ps_availqty), 
  lineitem_1.l_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  min(
    lineitem_1.l_linenumber), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where partsupp_1.ps_partkey is not NULL
group by lineitem_1.l_commitdate, lineitem_1.l_shipdate, lineitem_1.l_suppkey, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 35;
select  
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 40;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 9;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_2.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_1.n_regionkey = nation_1.n_nationkey
limit 40;
select  
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 37;
select  
  min(
    orders_1.o_orderkey), 
  max(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 32;
select  
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  min(
    partsupp_1.ps_partkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join partsupp as partsupp_1
      on (customer_1.c_custkey = partsupp_1.ps_partkey )
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where nation_1.n_regionkey is not NULL
group by customer_1.c_nationkey, nation_1.n_nationkey, nation_1.n_regionkey
limit 42;
select  
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_phone is not NULL
limit 22;
select  
  part_1.p_retailprice, 
  max(
    part_1.p_size), 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
group by part_1.p_container, part_1.p_name, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 29;
select  
  region_1.r_comment, 
  customer_1.c_custkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 34;
select  
  min(
    part_1.p_size), 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_container
limit 2;
select  
  max(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where partsupp_1.ps_suppkey is not NULL
limit 2;
select  
  max(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate = lineitem_1.l_commitdate
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_quantity, lineitem_1.l_shipdate
limit 20;
select  
  supplier_1.s_name, 
  max(
    orders_1.o_shippriority), 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_suppkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join orders as orders_1
      on (region_1.r_regionkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
group by region_1.r_comment, supplier_1.s_name, supplier_1.s_suppkey
limit 9;
select  
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join customer as customer_1
      on (part_1.p_partkey = customer_1.c_custkey )
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_nationkey is not NULL
limit 18;
select  
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  max(
    orders_1.o_shippriority), 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_clerk, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk <= orders_1.o_orderpriority
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 35;
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_custkey
limit 18;
select  
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size <= part_1.p_partkey
limit 20;
select  
  orders_2.o_orderstatus, 
  part_1.p_mfgr, 
  max(
    orders_2.o_shippriority), 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join part as part_1
      inner join orders as orders_2
      on (part_1.p_partkey = orders_2.o_orderkey )
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_2.o_shippriority is not NULL
group by orders_1.o_comment, orders_2.o_orderstatus, part_1.p_mfgr
limit 14;
select  
  part_1.p_type, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_type, 
  part_1.p_retailprice, 
  part_1.p_size, 
  part_1.p_comment, 
  part_1.p_comment, 
  part_1.p_size, 
  max(
    part_1.p_partkey), 
  part_1.p_size, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 40;
select  
  max(
    nation_1.n_regionkey), 
  max(
    part_1.p_partkey), 
  min(
    nation_1.n_regionkey), 
  part_1.p_mfgr, 
  nation_1.n_nationkey, 
  region_1.r_name, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join part as part_1
      inner join nation as nation_1
      on (part_1.p_partkey = nation_1.n_nationkey )
    on (region_1.r_regionkey = part_1.p_partkey )
where region_1.r_regionkey is not NULL
group by nation_1.n_nationkey, part_1.p_mfgr, region_1.r_comment, region_1.r_name
limit 3;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 21;
select  
  orders_1.o_totalprice, 
  orders_1.o_comment, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_custkey, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate = orders_1.o_orderdate
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 11;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_quantity, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate is not NULL
limit 15;
select  
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 24;
select  
  supplier_1.s_address, 
  supplier_1.s_phone, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where part_1.p_mfgr is not NULL
limit 6;
select  
  max(
    part_1.p_size), 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
group by part_1.p_mfgr
limit 16;
select  
  nation_2.n_comment, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_2.n_name, 
  min(
    nation_2.n_nationkey), 
  nation_2.n_regionkey, 
  nation_2.n_comment, 
  nation_1.n_regionkey, 
  nation_2.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_1.n_nationkey > nation_2.n_nationkey
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, nation_2.n_comment, nation_2.n_name, nation_2.n_regionkey
limit 13;
select  
  customer_1.c_acctbal, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
limit 34;
select  
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    on (customer_1.c_custkey = part_1.p_partkey )
where lineitem_1.l_extendedprice = lineitem_1.l_quantity
limit 26;
select  
  max(
    orders_1.o_custkey), 
  customer_1.c_custkey, 
  partsupp_1.ps_availqty, 
  region_1.r_name, 
  max(
    partsupp_1.ps_partkey), 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.ps_partkey = region_1.r_regionkey )
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where region_1.r_name is not NULL
group by customer_1.c_custkey, orders_1.o_totalprice, partsupp_1.ps_availqty, region_1.r_name
limit 15;
select  
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join region as region_1
        inner join customer as customer_1
          inner join lineitem as lineitem_1
          on (customer_1.c_custkey = lineitem_1.l_orderkey )
        on (region_1.r_regionkey = customer_1.c_custkey )
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where region_1.r_name is not NULL
limit 36;
select  
  lineitem_1.l_returnflag, 
  supplier_1.s_address, 
  region_2.r_comment, 
  region_1.r_comment, 
  min(
    lineitem_1.l_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
        inner join supplier as supplier_1
          inner join region as region_2
          on (supplier_1.s_suppkey = region_2.r_regionkey )
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    inner join supplier as supplier_2
    on (region_1.r_regionkey = supplier_2.s_suppkey )
where supplier_2.s_acctbal is not NULL
group by lineitem_1.l_returnflag, region_1.r_comment, region_2.r_comment, supplier_1.s_address
limit 41;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
limit 16;
select  
  customer_1.c_phone, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
limit 11;
select  
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 40;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  min(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey = supplier_1.s_suppkey
group by supplier_1.s_acctbal, supplier_1.s_comment
limit 27;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost >= partsupp_1.ps_supplycost
limit 2;
select  
  nation_2.n_comment, 
  customer_1.c_acctbal, 
  nation_1.n_comment, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  partsupp_1.ps_comment, 
  partsupp_2.ps_partkey, 
  nation_2.n_comment, 
  max(
    partsupp_2.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
          inner join supplier as supplier_1
          on (partsupp_2.ps_partkey = supplier_1.s_suppkey )
        inner join nation as nation_2
        on (partsupp_2.ps_partkey = nation_2.n_nationkey )
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = partsupp_2.ps_partkey )
where partsupp_1.ps_availqty is not NULL
group by customer_1.c_acctbal, nation_1.n_comment, nation_2.n_comment, partsupp_1.ps_comment, partsupp_2.ps_partkey, supplier_1.s_name, supplier_1.s_phone
limit 23;
select  
  orders_1.o_orderstatus, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey < orders_1.o_custkey
limit 37;
select  
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 3;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey = nation_1.n_regionkey
limit 5;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  min(
    partsupp_1.ps_availqty), 
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_availqty), 
  min(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 11;
select  
  region_1.r_name, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey > region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 25;
select  
  min(
    customer_1.c_nationkey), 
  customer_1.c_address, 
  customer_1.c_phone, 
  orders_1.o_custkey, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderstatus is not NULL
group by customer_1.c_address, customer_1.c_phone, orders_1.o_custkey, orders_1.o_orderdate
limit 35;
select  
  supplier_1.s_name, 
  customer_1.c_name, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where supplier_1.s_name <= lineitem_1.l_linestatus
limit 13;
select  
  min(
    nation_1.n_regionkey), 
  nation_2.n_nationkey, 
  region_1.r_comment, 
  nation_2.n_comment, 
  nation_2.n_regionkey, 
  nation_1.n_regionkey, 
  nation_2.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join nation as nation_2
    on (region_1.r_regionkey = nation_2.n_nationkey )
where region_1.r_comment is not NULL
group by nation_1.n_regionkey, nation_2.n_comment, nation_2.n_name, nation_2.n_nationkey, nation_2.n_regionkey, region_1.r_comment
limit 4;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 7;
select  
  region_1.r_comment, 
  supplier_1.s_address, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join supplier as supplier_1
      inner join lineitem as lineitem_1
      on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
    on (region_1.r_regionkey = lineitem_1.l_orderkey )
where supplier_1.s_acctbal is not NULL
limit 40;
select  
  customer_1.c_acctbal, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 38;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 42;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_address, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone = supplier_1.s_name
group by supplier_1.s_address, supplier_1.s_name, supplier_1.s_suppkey
limit 14;
select  
  orders_1.o_orderpriority, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
limit 32;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_receiptdate
limit 16;
select  
  supplier_1.s_name, 
  nation_1.n_regionkey, 
  part_1.p_container, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where supplier_1.s_name < part_1.p_container
limit 6;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_1.c_mktsegment is not NULL
limit 23;
select  
  orders_1.o_clerk, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where partsupp_1.ps_partkey is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_shippriority
limit 12;
select  
  max(
    supplier_1.s_suppkey), 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_shipdate, 
  lineitem_2.l_suppkey, 
  supplier_1.s_acctbal, 
  lineitem_2.l_tax, 
  lineitem_2.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_1.l_receiptdate is not NULL
group by lineitem_1.l_shipdate, lineitem_2.l_commitdate, lineitem_2.l_suppkey, lineitem_2.l_tax, supplier_1.s_acctbal
limit 5;
select  
  customer_1.c_name, 
  max(
    lineitem_2.l_orderkey), 
  max(
    lineitem_1.l_linenumber), 
  orders_1.o_clerk, 
  lineitem_1.l_quantity, 
  lineitem_2.l_shipdate, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_2.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
      inner join orders as orders_1
          inner join lineitem as lineitem_1
          on (orders_1.o_orderkey = lineitem_1.l_orderkey )
        inner join lineitem as lineitem_2
        on (orders_1.o_orderkey = lineitem_2.l_orderkey )
      on (part_1.p_partkey = orders_1.o_orderkey )
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderdate < lineitem_1.l_commitdate
group by customer_1.c_name, lineitem_1.l_quantity, lineitem_2.l_receiptdate, lineitem_2.l_shipdate, orders_1.o_clerk
limit 30;
select  
  orders_1.o_orderkey, 
  orders_1.o_custkey, 
  customer_1.c_name, 
  orders_1.o_totalprice, 
  max(
    orders_1.o_custkey), 
  customer_1.c_comment, 
  customer_1.c_name, 
  orders_1.o_orderkey, 
  max(
    customer_1.c_nationkey), 
  min(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_custkey is not NULL
group by customer_1.c_comment, customer_1.c_name, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_totalprice
limit 17;
select  
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 27;
select  
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  max(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_comment, supplier_1.s_name
limit 8;
select  
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    inner join customer as customer_1
    on (lineitem_1.l_orderkey = customer_1.c_custkey )
where partsupp_1.ps_comment is not NULL
limit 2;
select  
  max(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where supplier_1.s_suppkey is not NULL
limit 12;
select  
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_custkey), 
  orders_1.o_orderdate, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate >= orders_1.o_orderdate
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 25;
select  
  partsupp_1.ps_partkey, 
  part_1.p_comment, 
  partsupp_1.ps_comment, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where part_1.p_retailprice is not NULL
group by part_1.p_comment, partsupp_1.ps_comment, partsupp_1.ps_partkey
limit 32;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 36;
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
group by nation_1.n_regionkey
limit 10;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where customer_1.c_phone > customer_1.c_mktsegment
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 11;
select  
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where orders_1.o_orderdate = orders_1.o_orderdate
limit 20;
select  
  region_1.r_regionkey, 
  region_2.r_comment, 
  max(
    region_2.r_regionkey), 
  region_2.r_regionkey, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  min(
    region_2.r_regionkey), 
  min(
    region_1.r_regionkey), 
  max(
    region_2.r_regionkey), 
  region_2.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_regionkey, region_2.r_comment, region_2.r_name, region_2.r_regionkey
limit 1;
select  
  lineitem_1.l_orderkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_returnflag, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_orderkey, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode
limit 21;
select  
  lineitem_2.l_discount, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join lineitem as lineitem_2
        on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
      inner join partsupp as partsupp_1
        inner join orders as orders_1
        on (partsupp_1.ps_partkey = orders_1.o_orderkey )
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    inner join part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where supplier_1.s_name is not NULL
limit 13;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 29;
select  
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 4;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 33;
select  
  orders_2.o_orderpriority, 
  orders_2.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_1.o_orderkey > orders_2.o_orderkey
limit 28;
select  
  max(
    supplier_1.s_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join orders as orders_1
      on (customer_1.c_custkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
      inner join partsupp as partsupp_1
        inner join part as part_1
        on (partsupp_1.ps_partkey = part_1.p_partkey )
      on (supplier_1.s_suppkey = partsupp_1.ps_partkey )
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where customer_1.c_phone is not NULL
limit 17;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_discount, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipinstruct
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus < lineitem_1.l_returnflag
limit 23;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join supplier as supplier_1
          inner join region as region_1
          on (supplier_1.s_suppkey = region_1.r_regionkey )
        inner join nation as nation_2
        on (supplier_1.s_suppkey = nation_2.n_nationkey )
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_2.r_comment is not NULL
limit 12;
select  
  lineitem_2.l_quantity, 
  lineitem_2.l_shipinstruct, 
  partsupp_2.ps_partkey, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join region as region_1
          inner join lineitem as lineitem_2
          on (region_1.r_regionkey = lineitem_2.l_orderkey )
        inner join orders as orders_1
        on (lineitem_2.l_orderkey = orders_1.o_orderkey )
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    on (lineitem_1.l_orderkey = partsupp_2.ps_partkey )
where lineitem_1.l_linenumber = partsupp_1.ps_suppkey
limit 21;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 8;
select  
  nation_2.n_name, 
  nation_2.n_comment, 
  nation_2.n_name, 
  nation_2.n_nationkey, 
  nation_2.n_name, 
  nation_2.n_comment, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_2.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_2.n_nationkey > nation_2.n_regionkey
group by nation_1.n_comment, nation_2.n_comment, nation_2.n_name, nation_2.n_nationkey
limit 1;
select  
  partsupp_2.ps_supplycost, 
  partsupp_2.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
        inner join customer as customer_1
        on (partsupp_1.ps_partkey = customer_1.c_custkey )
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where customer_1.c_address is not NULL
limit 11;
select  
  orders_1.o_clerk, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_clerk, orders_1.o_orderdate
limit 14;
select  
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_comment
limit 41;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 6;
select  
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey = region_1.r_regionkey
limit 5;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_availqty), 
  orders_1.o_orderkey, 
  partsupp_1.ps_comment, 
  orders_1.o_comment, 
  orders_1.o_custkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join partsupp as partsupp_1
    on (orders_1.o_orderkey = partsupp_1.ps_partkey )
where orders_1.o_orderdate < orders_1.o_orderdate
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 6;
select  
  part_1.p_retailprice, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  max(
    part_1.p_partkey), 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_partkey, 
  part_1.p_brand, 
  part_1.p_partkey, 
  supplier_1.s_name, 
  part_1.p_name, 
  max(
    part_1.p_partkey), 
  part_1.p_container, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where part_1.p_mfgr is not NULL
group by part_1.p_brand, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 10;
select  
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone > supplier_1.s_name
limit 14;
select  
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_totalprice >= supplier_1.s_acctbal
limit 6;
select  
  region_1.r_regionkey, 
  max(
    orders_1.o_shippriority), 
  supplier_1.s_address, 
  orders_1.o_orderstatus, 
  region_1.r_name, 
  supplier_1.s_comment, 
  region_1.r_name, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join orders as orders_1
      on (supplier_1.s_suppkey = orders_1.o_orderkey )
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where orders_1.o_custkey < supplier_1.s_nationkey
group by orders_1.o_orderstatus, region_1.r_name, region_1.r_regionkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment
limit 28;
select  
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
limit 33;
select  
  nation_1.n_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where lineitem_1.l_partkey is not NULL
limit 41;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_comment, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey > supplier_1.s_suppkey
group by supplier_1.s_acctbal, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 14;
select  
  region_1.r_regionkey, 
  region_2.r_regionkey, 
  region_2.r_comment, 
  region_1.r_regionkey, 
  region_2.r_regionkey, 
  max(
    partsupp_1.ps_partkey), 
  region_1.r_comment, 
  min(
    region_2.r_regionkey), 
  region_2.r_name, 
  region_1.r_name, 
  partsupp_1.ps_comment, 
  region_2.r_name, 
  region_1.r_name, 
  min(
    region_2.r_regionkey), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_availqty, 
  region_2.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join region as region_1
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    on (partsupp_1.ps_partkey = region_2.r_regionkey )
where region_2.r_regionkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, region_1.r_comment, region_1.r_name, region_1.r_regionkey, region_2.r_comment, region_2.r_name, region_2.r_regionkey
limit 26;
select  
  orders_1.o_comment, 
  orders_1.o_shippriority, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority <= orders_1.o_orderkey
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderstatus, orders_1.o_shippriority
limit 3;
select  
  part_1.p_partkey, 
  lineitem_2.l_returnflag, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    inner join lineitem as lineitem_2
    on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
where lineitem_2.l_partkey is not NULL
group by lineitem_1.l_comment, lineitem_2.l_returnflag, part_1.p_partkey
limit 25;
select  
  customer_1.c_comment, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join customer as customer_1
    on (orders_1.o_orderkey = customer_1.c_custkey )
where orders_1.o_custkey is not NULL
limit 2;
select  
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 29;
select  
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty < partsupp_1.ps_partkey
group by partsupp_1.ps_suppkey
limit 41;
select  
  min(
    part_1.p_size), 
  part_1.p_size, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_name, part_1.p_size
limit 9;
select  
  max(
    partsupp_1.ps_availqty), 
  supplier_2.s_name, 
  nation_1.n_nationkey, 
  supplier_2.s_name, 
  supplier_2.s_suppkey, 
  supplier_3.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join supplier as supplier_1
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join part as part_1
        inner join supplier as supplier_2
        on (part_1.p_partkey = supplier_2.s_suppkey )
      inner join partsupp as partsupp_1
        inner join supplier as supplier_3
        on (partsupp_1.ps_partkey = supplier_3.s_suppkey )
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_1.s_name is not NULL
group by nation_1.n_nationkey, supplier_2.s_name, supplier_2.s_suppkey, supplier_3.s_suppkey
limit 6;
select  
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderdate < orders_1.o_orderdate
limit 17;
select  
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount >= lineitem_1.l_quantity
limit 13;
select  
  customer_1.c_nationkey, 
  customer_2.c_nationkey, 
  customer_2.c_custkey, 
  customer_2.c_comment, 
  customer_2.c_address, 
  customer_2.c_comment, 
  customer_3.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
      inner join customer as customer_3
      on (customer_2.c_custkey = customer_3.c_custkey )
    on (customer_1.c_custkey = customer_3.c_custkey )
where customer_1.c_mktsegment is not NULL
limit 5;
select  
  customer_1.c_address, 
  customer_1.c_address, 
  customer_2.c_address, 
  max(
    customer_2.c_custkey), 
  customer_1.c_custkey, 
  max(
    customer_2.c_custkey), 
  customer_1.c_phone, 
  customer_2.c_phone, 
  customer_2.c_mktsegment, 
  customer_2.c_nationkey, 
  customer_2.c_name, 
  min(
    customer_2.c_nationkey), 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join customer as customer_2
    on (customer_1.c_custkey = customer_2.c_custkey )
where customer_1.c_custkey <= customer_2.c_nationkey
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_phone, customer_2.c_address, customer_2.c_mktsegment, customer_2.c_name, customer_2.c_nationkey, customer_2.c_phone
limit 18;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  orders_1.o_orderdate, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus < orders_1.o_clerk
group by orders_1.o_comment, orders_1.o_orderdate, orders_1.o_orderkey
limit 34;
select  
  orders_1.o_custkey, 
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 2;
select  
  customer_1.c_mktsegment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  customer_1.c_phone, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_name, 
  customer_1.c_phone, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 9;
select  
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  customer_1.c_address, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 15;
select  
  customer_1.c_phone, 
  customer_1.c_comment, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment <= customer_1.c_phone
limit 11;
select  
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join part as part_1
    on (orders_1.o_orderkey = part_1.p_partkey )
where orders_1.o_custkey is not NULL
limit 21;
select  
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  customer_1.c_name, 
  supplier_1.s_acctbal, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_quantity, 
  min(
    supplier_1.s_suppkey), 
  lineitem_1.l_commitdate, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where lineitem_1.l_shipinstruct is not NULL
group by customer_1.c_name, lineitem_1.l_commitdate, lineitem_1.l_quantity, supplier_1.s_acctbal, supplier_1.s_nationkey
limit 42;
select  
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name
limit 31;
select  
  orders_1.o_custkey, 
  orders_1.o_orderkey, 
  min(
    orders_1.o_custkey), 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderkey, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_shippriority
limit 37;
select  
  customer_1.c_name, 
  orders_1.o_totalprice, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  supplier_1.s_comment, 
  max(
    supplier_1.s_suppkey), 
  customer_1.c_custkey, 
  max(
    supplier_1.s_nationkey), 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
      inner join part as part_1
        inner join orders as orders_1
        on (part_1.p_partkey = orders_1.o_orderkey )
      on (customer_1.c_custkey = part_1.p_partkey )
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where supplier_1.s_phone is not NULL
group by customer_1.c_custkey, customer_1.c_name, customer_1.c_phone, orders_1.o_totalprice, supplier_1.s_comment
limit 40;
select  
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join supplier as supplier_1
    on (part_1.p_partkey = supplier_1.s_suppkey )
where supplier_1.s_acctbal is not NULL
limit 1;
select  
  max(
    customer_1.c_nationkey), 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_name is not NULL
group by customer_1.c_name
limit 12;
select  
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice > orders_1.o_totalprice
limit 5;
select  
  lineitem_1.l_tax, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_type, 
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_orderkey), 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_linenumber, 
  min(
    lineitem_1.l_partkey), 
  min(
    lineitem_1.l_suppkey), 
  part_1.p_partkey, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  min(
    lineitem_1.l_linenumber), 
  part_1.p_size, 
  lineitem_1.l_commitdate, 
  min(
    part_1.p_size), 
  min(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where part_1.p_brand is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_linenumber, lineitem_1.l_tax, part_1.p_mfgr, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 24;
select  
  orders_1.o_custkey, 
  max(
    partsupp_1.ps_suppkey), 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  partsupp_1.ps_suppkey, 
  orders_1.o_custkey, 
  max(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  max(
    partsupp_1.ps_suppkey), 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  min(
    orders_1.o_custkey), 
  orders_1.o_orderstatus, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join orders as orders_1
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderpriority <= orders_1.o_clerk
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, partsupp_1.ps_suppkey
limit 14;
select  
  min(
    part_1.p_size), 
  min(
    region_2.r_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join region as region_1
        inner join region as region_2
        on (region_1.r_regionkey = region_2.r_regionkey )
      inner join part as part_1
      on (region_2.r_regionkey = part_1.p_partkey )
    on (nation_1.n_nationkey = part_1.p_partkey )
where part_1.p_size is not NULL
group by nation_1.n_comment, nation_1.n_regionkey
limit 27;
select  
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority = orders_1.o_clerk
group by orders_1.o_orderpriority
limit 11;
select  
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join part as part_1
    on (customer_1.c_custkey = part_1.p_partkey )
where part_1.p_name is not NULL
limit 5;
select  
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_retailprice, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 32;
select  
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 36;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 12;
select  
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
          inner join customer as customer_1
          on (partsupp_2.ps_partkey = customer_1.c_custkey )
        inner join region as region_1
        on (partsupp_2.ps_partkey = region_1.r_regionkey )
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_2.ps_comment is not NULL
limit 20;
select  
  max(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  max(
    customer_1.c_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  customer_1.c_custkey, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where nation_1.n_comment is not NULL
group by customer_1.c_custkey, customer_1.c_name, nation_1.n_comment, nation_1.n_nationkey
limit 16;
select  
  part_1.p_name, 
  min(
    part_1.p_partkey), 
  min(
    part_1.p_partkey), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container > part_1.p_mfgr
group by part_1.p_brand, part_1.p_name
limit 31;
select  
  min(
    customer_1.c_custkey), 
  customer_1.c_custkey, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal <= customer_1.c_acctbal
group by customer_1.c_comment, customer_1.c_custkey
limit 7;
select  
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 9;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_address, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_nationkey, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  min(
    supplier_1.s_suppkey), 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 13;
select  
  min(
    lineitem_1.l_suppkey), 
  lineitem_2.l_extendedprice, 
  lineitem_2.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
        inner join part as part_1
        on (nation_1.n_nationkey = part_1.p_partkey )
      inner join lineitem as lineitem_1
          inner join lineitem as lineitem_2
          on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
        inner join nation as nation_2
        on (lineitem_2.l_orderkey = nation_2.n_nationkey )
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    inner join part as part_2
    on (nation_2.n_nationkey = part_2.p_partkey )
where lineitem_1.l_suppkey is not NULL
group by lineitem_2.l_extendedprice, lineitem_2.l_orderkey
limit 29;
select  
  part_1.p_type, 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  part_1.p_comment, 
  part_1.p_mfgr, 
  part_1.p_mfgr, 
  part_1.p_name, 
  customer_1.c_phone, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
    on (part_1.p_partkey = customer_1.c_custkey )
where part_1.p_retailprice <= customer_1.c_acctbal
limit 23;
select  
  orders_1.o_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  orders_1.o_orderpriority, 
  orders_1.o_clerk, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 1;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey >= partsupp_1.ps_partkey
group by partsupp_1.ps_availqty, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 9;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 25;
select  
  orders_1.o_orderdate, 
  max(
    orders_2.o_orderkey), 
  max(
    orders_1.o_shippriority), 
  orders_1.o_totalprice, 
  orders_1.o_clerk, 
  orders_2.o_orderdate, 
  orders_1.o_orderpriority, 
  orders_2.o_orderdate, 
  orders_1.o_custkey, 
  orders_2.o_orderdate, 
  max(
    orders_2.o_orderkey), 
  max(
    orders_2.o_custkey), 
  orders_1.o_totalprice, 
  orders_2.o_totalprice, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join orders as orders_2
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_1.o_orderdate is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_totalprice, orders_2.o_orderdate, orders_2.o_totalprice
limit 5;
select  
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
        inner join supplier as supplier_1
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      on (nation_1.n_nationkey = supplier_1.s_suppkey )
    inner join supplier as supplier_2
    on (nation_1.n_nationkey = supplier_2.s_suppkey )
where supplier_2.s_acctbal is not NULL
limit 19;
select  
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join part as part_1
    on (supplier_1.s_suppkey = part_1.p_partkey )
where supplier_1.s_acctbal > part_1.p_retailprice
limit 1;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey >= region_1.r_regionkey
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 17;
select  
  lineitem_1.l_orderkey, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_commitdate = lineitem_1.l_receiptdate
group by lineitem_1.l_comment, lineitem_1.l_orderkey
limit 11;
select  
  max(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    inner join part as part_1
    on (nation_1.n_nationkey = part_1.p_partkey )
where part_1.p_name is not NULL
limit 3;
select  
  orders_1.o_totalprice, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_orderdate is not NULL
limit 36;
select  
  lineitem_1.l_shipinstruct, 
  customer_1.c_acctbal, 
  customer_1.c_comment, 
  max(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_comment is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, lineitem_1.l_shipinstruct
limit 1;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 26;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty = partsupp_1.ps_suppkey
limit 23;
select  
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_custkey is not NULL
limit 36;
select  
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 12;
select  
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_orderkey), 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_tax, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_discount, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct >= lineitem_1.l_linestatus
group by lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_returnflag, lineitem_1.l_shipmode, lineitem_1.l_tax
limit 10;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 8;
select  
  part_1.p_name, 
  part_1.p_comment, 
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
group by part_1.p_comment, part_1.p_name
limit 35;
select  
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where part_1.p_size < part_1.p_partkey
group by lineitem_1.l_linestatus
limit 35;
select  
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_comment, 
  part_1.p_partkey, 
  max(
    part_1.p_size), 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_size, 
  min(
    part_1.p_partkey), 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_retailprice, 
  min(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice = part_1.p_retailprice
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size, part_1.p_type
limit 11;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 38;
select  
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 2;
select  
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
limit 39;
select  
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 42;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  nation_1.n_nationkey, 
  partsupp_1.ps_partkey, 
  nation_1.n_nationkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where partsupp_1.ps_suppkey is not NULL
limit 36;
select  
  min(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct >= lineitem_1.l_returnflag
limit 32;
select  
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity = lineitem_1.l_discount
limit 3;
select  
  part_1.p_comment, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
    on (part_1.p_partkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
limit 10;
select  
  nation_2.n_name, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
        inner join nation as nation_1
        on (customer_1.c_custkey = nation_1.n_nationkey )
      inner join nation as nation_2
      on (customer_1.c_custkey = nation_2.n_nationkey )
    inner join region as region_1
    on (customer_1.c_custkey = region_1.r_regionkey )
where customer_1.c_name is not NULL
limit 35;
select  
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 25;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where supplier_1.s_name is not NULL
limit 34;
select  
  orders_1.o_custkey, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate <= orders_1.o_orderdate
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderpriority, orders_1.o_shippriority
limit 16;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 38;
select  
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey is not NULL
group by orders_1.o_clerk, orders_1.o_orderstatus
limit 27;
select  
  supplier_1.s_name, 
  max(
    customer_2.c_custkey), 
  customer_4.c_comment, 
  customer_3.c_comment, 
  min(
    partsupp_1.ps_partkey), 
  customer_2.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
          inner join customer as customer_1
            inner join customer as customer_2
            on (customer_1.c_custkey = customer_2.c_custkey )
          on (partsupp_1.ps_partkey = customer_2.c_custkey )
        inner join lineitem as lineitem_1
          inner join customer as customer_3
          on (lineitem_1.l_orderkey = customer_3.c_custkey )
        on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
      inner join customer as customer_4
      on (customer_2.c_custkey = customer_4.c_custkey )
    inner join supplier as supplier_1
    on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
where customer_2.c_comment is not NULL
group by customer_2.c_custkey, customer_3.c_comment, customer_4.c_comment, supplier_1.s_name
limit 35;
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  min(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join supplier as supplier_1
    on (customer_1.c_custkey = supplier_1.s_suppkey )
where customer_1.c_custkey is not NULL
group by supplier_1.s_address, supplier_1.s_nationkey
limit 4;
select  
  orders_1.o_comment, 
  orders_1.o_orderkey, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate >= orders_1.o_orderdate
group by orders_1.o_comment, orders_1.o_orderkey, orders_1.o_orderstatus
limit 41;
select  
  region_2.r_comment, 
  region_2.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join region as region_2
    on (region_1.r_regionkey = region_2.r_regionkey )
where region_1.r_name > region_2.r_name
limit 9;
select  
  partsupp_1.ps_comment, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_phone = customer_1.c_mktsegment
limit 37;
select  
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where nation_1.n_comment is not NULL
limit 28;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    inner join region as region_1
    on (nation_1.n_nationkey = region_1.r_regionkey )
where region_1.r_comment is not NULL
limit 2;
select  
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_custkey is not NULL
limit 3;
select  
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
limit 30;
select  
  region_1.r_comment, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join part as part_1
      on (orders_1.o_orderkey = part_1.p_partkey )
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where part_1.p_retailprice is not NULL
limit 36;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_comment, 
  min(
    partsupp_1.ps_partkey), 
  min(
    lineitem_1.l_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  lineitem_1.l_partkey, 
  supplier_1.s_comment, 
  partsupp_1.ps_partkey, 
  supplier_1.s_comment, 
  lineitem_1.l_shipdate, 
  supplier_1.s_address, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join supplier as supplier_1
      on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_1
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_linestatus is not NULL
group by lineitem_1.l_partkey, lineitem_1.l_shipdate, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 14;
select  
  max(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 13;
select  
  nation_1.n_nationkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_comment, 
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name > nation_1.n_name
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey
limit 26;
select  
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  region_1.r_regionkey, 
  part_1.p_name, 
  part_1.p_mfgr, 
  min(
    region_1.r_regionkey), 
  region_2.r_name, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    inner join region as region_2
      inner join part as part_1
      on (region_2.r_regionkey = part_1.p_partkey )
    on (region_1.r_regionkey = part_1.p_partkey )
where region_2.r_comment is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_mktsegment, part_1.p_mfgr, part_1.p_name, region_1.r_regionkey, region_2.r_name
limit 42;
select  
  part_1.p_retailprice, 
  min(
    part_1.p_size), 
  min(
    part_1.p_partkey), 
  part_1.p_name, 
  part_1.p_retailprice, 
  part_1.p_container, 
  part_1.p_size, 
  part_1.p_partkey, 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_partkey, part_1.p_retailprice, part_1.p_size
limit 36;
select  
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join nation as nation_1
    on (customer_1.c_custkey = nation_1.n_nationkey )
where customer_1.c_custkey is not NULL
limit 19;
select  
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_2.l_extendedprice, 
  customer_1.c_acctbal, 
  lineitem_1.l_commitdate, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_orderkey = lineitem_1.l_orderkey )
      inner join lineitem as lineitem_2
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    on (customer_1.c_custkey = lineitem_2.l_orderkey )
where customer_1.c_acctbal is not NULL
group by customer_1.c_acctbal, customer_1.c_nationkey, lineitem_1.l_commitdate, lineitem_2.l_extendedprice
limit 27;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 10;
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 42;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 31;
select  
  customer_1.c_phone, 
  customer_1.c_acctbal, 
  nation_1.n_regionkey, 
  customer_1.c_comment, 
  orders_1.o_shippriority, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  orders_1.o_totalprice, 
  nation_1.n_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join nation as nation_1
      on (customer_1.c_custkey = nation_1.n_nationkey )
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_acctbal is not NULL
limit 16;
select  
  region_1.r_regionkey, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 32;
select  
  max(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey = partsupp_1.ps_partkey
group by partsupp_1.ps_supplycost
limit 24;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber > lineitem_1.l_partkey
limit 40;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
      inner join lineitem as lineitem_1
      on (partsupp_2.ps_partkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_partkey is not NULL
limit 35;
select  
  orders_1.o_orderstatus, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join customer as customer_1
        inner join nation as nation_1
        on (customer_1.c_custkey = nation_1.n_nationkey )
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join part as part_1
      inner join orders as orders_1
        inner join partsupp as partsupp_1
        on (orders_1.o_orderkey = partsupp_1.ps_partkey )
      on (part_1.p_partkey = partsupp_1.ps_partkey )
    on (nation_1.n_nationkey = part_1.p_partkey )
where supplier_1.s_name <= customer_1.c_phone
limit 24;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 12;
select  
  part_1.p_retailprice, 
  customer_1.c_name, 
  part_1.p_comment, 
  part_1.p_comment, 
  supplier_1.s_suppkey, 
  min(
    customer_1.c_custkey), 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_nationkey, 
  customer_1.c_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join part as part_1
        inner join supplier as supplier_1
        on (part_1.p_partkey = supplier_1.s_suppkey )
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_mfgr is not NULL
group by customer_1.c_comment, customer_1.c_name, customer_1.c_nationkey, part_1.p_comment, part_1.p_retailprice, region_1.r_comment, supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_suppkey
limit 12;
select  
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_orderkey), 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice <= lineitem_1.l_tax
group by lineitem_1.l_quantity, lineitem_1.l_suppkey
limit 15;
select  
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 38;
select  
  supplier_1.s_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_comment, 
  supplier_1.s_address, 
  orders_1.o_orderkey, 
  supplier_1.s_name, 
  orders_1.o_orderstatus
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join orders as orders_1
    on (supplier_1.s_suppkey = orders_1.o_orderkey )
where orders_1.o_shippriority <= orders_1.o_custkey
limit 1;
select  
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  part_1.p_name, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  part_1.p_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join part as part_1
    on (region_1.r_regionkey = part_1.p_partkey )
where part_1.p_mfgr is not NULL
group by part_1.p_name, part_1.p_partkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 9;
select  
  part_1.p_retailprice, 
  part_1.p_brand, 
  part_1.p_size, 
  part_1.p_size, 
  min(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_name, part_1.p_retailprice, part_1.p_size
limit 5;
select  
  nation_1.n_comment, 
  partsupp_2.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join nation as nation_1
        on (supplier_1.s_suppkey = nation_1.n_nationkey )
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join partsupp as partsupp_2
      inner join region as region_1
      on (partsupp_2.ps_partkey = region_1.r_regionkey )
    on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 22;
select  
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_name, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_comment, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 5;
select  
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name
limit 16;
select  
  min(
    region_1.r_regionkey), 
  nation_1.n_nationkey, 
  region_1.r_comment, 
  region_1.r_name, 
  nation_1.n_regionkey, 
  part_1.p_retailprice, 
  customer_1.c_phone, 
  part_1.p_type, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join region as region_1
        inner join nation as nation_1
        on (region_1.r_regionkey = nation_1.n_nationkey )
      inner join customer as customer_1
      on (region_1.r_regionkey = customer_1.c_custkey )
    on (part_1.p_partkey = nation_1.n_nationkey )
where nation_1.n_name is not NULL
group by customer_1.c_phone, nation_1.n_comment, nation_1.n_nationkey, nation_1.n_regionkey, part_1.p_retailprice, part_1.p_type, region_1.r_comment, region_1.r_name
limit 36;
select  
  partsupp_2.ps_availqty, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_2.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join nation as nation_1
      inner join partsupp as partsupp_2
      on (nation_1.n_nationkey = partsupp_2.ps_partkey )
    on (partsupp_1.ps_partkey = nation_1.n_nationkey )
where partsupp_2.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_2.ps_availqty
limit 21;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipmode, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_receiptdate > lineitem_1.l_commitdate
group by lineitem_1.l_extendedprice, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_shipdate, lineitem_1.l_shipmode
limit 28;
select  
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  customer_1.c_acctbal, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_address, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_acctbal is not NULL
limit 1;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_comment, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 2;
select  
  supplier_1.s_acctbal, 
  nation_1.n_nationkey, 
  supplier_1.s_suppkey, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join customer as customer_1
      on (nation_1.n_nationkey = customer_1.c_custkey )
    inner join nation as nation_2
      inner join supplier as supplier_1
      on (nation_2.n_nationkey = supplier_1.s_suppkey )
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where supplier_1.s_nationkey is not NULL
limit 37;
select  
  part_1.p_brand, 
  max(
    part_1.p_size), 
  part_1.p_retailprice, 
  part_1.p_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
group by part_1.p_brand, part_1.p_name, part_1.p_retailprice
limit 7;
select  
  customer_2.c_mktsegment, 
  customer_3.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
          inner join customer as customer_2
          on (customer_1.c_custkey = customer_2.c_custkey )
        inner join partsupp as partsupp_1
          inner join lineitem as lineitem_1
          on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
        on (customer_2.c_custkey = lineitem_1.l_orderkey )
      inner join orders as orders_1
      on (partsupp_1.ps_partkey = orders_1.o_orderkey )
    inner join customer as customer_3
      inner join lineitem as lineitem_2
      on (customer_3.c_custkey = lineitem_2.l_orderkey )
    on (customer_1.c_custkey = lineitem_2.l_orderkey )
where lineitem_1.l_shipdate is not NULL
limit 6;
select  
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey is not NULL
limit 35;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 5;
select  
  min(
    customer_1.c_nationkey), 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join part as part_2
        inner join partsupp as partsupp_1
        on (part_2.p_partkey = partsupp_1.ps_partkey )
      inner join part as part_3
        inner join customer as customer_1
        on (part_3.p_partkey = customer_1.c_custkey )
      on (part_2.p_partkey = customer_1.c_custkey )
    on (part_1.p_partkey = part_3.p_partkey )
where supplier_1.s_name > part_1.p_mfgr
group by supplier_1.s_comment
limit 8;
select  
  orders_1.o_shippriority, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 38;
select  
  min(
    partsupp_1.ps_availqty), 
  supplier_1.s_acctbal, 
  supplier_1.s_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join customer as customer_1
        inner join partsupp as partsupp_2
        on (customer_1.c_custkey = partsupp_2.ps_partkey )
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    inner join region as region_1
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    on (partsupp_2.ps_partkey = region_1.r_regionkey )
where customer_1.c_phone = region_1.r_name
group by supplier_1.s_acctbal, supplier_1.s_address
limit 2;
select  
  customer_1.c_name, 
  customer_1.c_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone < customer_1.c_mktsegment
limit 39;
select  
  region_1.r_comment, 
  region_2.r_regionkey, 
  customer_1.c_phone, 
  min(
    lineitem_2.l_orderkey), 
  region_1.r_comment, 
  lineitem_1.l_tax, 
  part_1.p_type, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  min(
    nation_1.n_regionkey), 
  customer_1.c_phone, 
  max(
    nation_1.n_regionkey), 
  max(
    lineitem_2.l_orderkey), 
  part_1.p_name, 
  max(
    lineitem_1.l_suppkey), 
  part_1.p_partkey, 
  region_1.r_regionkey, 
  max(
    part_1.p_size), 
  region_1.r_regionkey, 
  max(
    lineitem_2.l_suppkey), 
  part_1.p_container, 
  lineitem_1.l_extendedprice, 
  max(
    part_1.p_size), 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
        inner join lineitem as lineitem_1
          inner join supplier as supplier_1
          on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
        on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
      inner join lineitem as lineitem_2
      on (supplier_1.s_suppkey = lineitem_2.l_orderkey )
    inner join nation as nation_1
          inner join customer as customer_1
            inner join part as part_1
            on (customer_1.c_custkey = part_1.p_partkey )
          on (nation_1.n_nationkey = part_1.p_partkey )
        inner join region as region_1
        on (nation_1.n_nationkey = region_1.r_regionkey )
      inner join region as region_2
      on (region_1.r_regionkey = region_2.r_regionkey )
    on (partsupp_1.ps_partkey = region_1.r_regionkey )
where lineitem_1.l_linenumber > customer_1.c_nationkey
group by customer_1.c_mktsegment, customer_1.c_phone, lineitem_1.l_extendedprice, lineitem_1.l_tax, part_1.p_container, part_1.p_name, part_1.p_partkey, part_1.p_type, partsupp_1.ps_partkey, region_1.r_comment, region_1.r_regionkey, region_2.r_regionkey
limit 3;
select  
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 39;
select  
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
limit 38;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 12;
select  
  nation_2.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    inner join region as region_1
    on (nation_2.n_nationkey = region_1.r_regionkey )
where region_1.r_name is not NULL
limit 17;
select  
  min(
    part_1.p_size)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice >= part_1.p_retailprice
limit 16;
select  
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 12;
select  
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_quantity, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_partkey), 
  max(
    lineitem_1.l_orderkey), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_quantity, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_commitdate, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_1.l_partkey), 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber = lineitem_1.l_partkey
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_tax
limit 7;
select  
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_container, 
  min(
    part_1.p_partkey), 
  part_1.p_brand, 
  part_1.p_comment, 
  part_1.p_retailprice, 
  part_1.p_name, 
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_retailprice
limit 38;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 24;
select  
  partsupp_1.ps_supplycost, 
  nation_1.n_name, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join partsupp as partsupp_1
      on (nation_1.n_nationkey = partsupp_1.ps_partkey )
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where customer_1.c_acctbal is not NULL
limit 19;
select  
  min(
    part_1.p_partkey), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_brand
limit 13;
select  
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_partkey, 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join customer as customer_1
    on (partsupp_1.ps_partkey = customer_1.c_custkey )
where partsupp_1.ps_supplycost is not NULL
limit 22;
select  
  orders_1.o_orderdate, 
  orders_1.o_orderpriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderdate is not NULL
limit 5;
select  
  max(
    nation_1.n_nationkey), 
  supplier_1.s_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  supplier_1.s_acctbal, 
  nation_1.n_name, 
  nation_1.n_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join supplier as supplier_1
    on (region_1.r_regionkey = supplier_1.s_suppkey )
where nation_1.n_nationkey is not NULL
group by nation_1.n_name, nation_1.n_nationkey, region_1.r_regionkey, supplier_1.s_acctbal, supplier_1.s_name
limit 35;
select  
  customer_1.c_nationkey, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join customer as customer_1
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where orders_1.o_orderdate = orders_1.o_orderdate
limit 21;
select  
  max(
    part_1.p_size), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
group by part_1.p_brand
limit 4;
select  
  customer_1.c_name, 
  orders_1.o_clerk, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join orders as orders_1
    on (customer_1.c_custkey = orders_1.o_orderkey )
where customer_1.c_comment is not NULL
limit 21;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 9;
select  
  lineitem_1.l_tax, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_suppkey, 
  lineitem_1.l_quantity
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus is not NULL
limit 36;
select  
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
group by supplier_1.s_acctbal, supplier_1.s_name, supplier_1.s_phone
limit 17;
select  
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
limit 15;
select  
  part_1.p_brand, 
  part_1.p_name, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
limit 30;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  max(
    nation_1.n_regionkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 39;
select  
  min(
    partsupp_1.ps_partkey), 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 29;
select  
  customer_1.c_phone, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_custkey, 
  customer_1.c_name, 
  customer_1.c_address
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_acctbal, customer_1.c_address, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 42;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_suppkey, 
  max(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
group by partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 27;
select  
  part_1.p_size, 
  min(
    partsupp_1.ps_partkey), 
  min(
    partsupp_1.ps_partkey), 
  part_1.p_comment, 
  part_1.p_retailprice, 
  max(
    part_1.p_size), 
  part_1.p_brand, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join partsupp as partsupp_1
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_availqty is not NULL
group by part_1.p_brand, part_1.p_comment, part_1.p_retailprice, part_1.p_size, partsupp_1.ps_partkey
limit 8;
select  
  min(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
limit 18;
select  
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_size, 
  part_1.p_type, 
  part_1.p_size, 
  part_1.p_mfgr, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_container is not NULL
limit 39;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost is not NULL
limit 34;
select  
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  part_1.p_name, 
  max(
    part_1.p_partkey), 
  part_1.p_mfgr
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join part as part_1
      on (supplier_1.s_suppkey = part_1.p_partkey )
    inner join region as region_1
    on (supplier_1.s_suppkey = region_1.r_regionkey )
where region_1.r_name is not NULL
group by part_1.p_mfgr, part_1.p_name, supplier_1.s_nationkey, supplier_1.s_phone
limit 36;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
limit 42;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_comment, 
  min(
    lineitem_1.l_partkey), 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_discount, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_partkey, 
  lineitem_1.l_quantity, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate < lineitem_1.l_commitdate
group by lineitem_1.l_comment, lineitem_1.l_discount, lineitem_1.l_extendedprice, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct
limit 25;
select  
  region_1.r_name, 
  min(
    part_1.p_size), 
  region_2.r_name, 
  region_1.r_comment, 
  region_2.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join region as region_2
      inner join part as part_1
      on (region_2.r_regionkey = part_1.p_partkey )
    on (region_1.r_regionkey = part_1.p_partkey )
where region_1.r_name >= part_1.p_mfgr
group by region_1.r_comment, region_1.r_name, region_2.r_name, region_2.r_regionkey
limit 24;
select  
  lineitem_1.l_linestatus, 
  lineitem_1.l_tax, 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
limit 27;
select  
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 6;
select  
  part_1.p_type, 
  part_1.p_brand, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  min(
    part_1.p_size), 
  max(
    part_1.p_size), 
  part_1.p_mfgr, 
  nation_1.n_name, 
  nation_1.n_name, 
  part_1.p_comment, 
  part_1.p_size, 
  max(
    nation_1.n_nationkey), 
  min(
    nation_1.n_nationkey), 
  max(
    part_1.p_size), 
  part_1.p_name, 
  part_1.p_container, 
  nation_1.n_comment, 
  min(
    part_1.p_size), 
  part_1.p_brand, 
  max(
    nation_1.n_nationkey), 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join nation as nation_1
    on (part_1.p_partkey = nation_1.n_nationkey )
where part_1.p_size is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_regionkey, part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_mfgr, part_1.p_name, part_1.p_size, part_1.p_type
limit 19;
select  
  customer_1.c_name, 
  max(
    customer_1.c_custkey), 
  max(
    customer_1.c_custkey), 
  min(
    customer_1.c_nationkey), 
  max(
    customer_1.c_custkey), 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
group by customer_1.c_name
limit 39;
select  
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name < region_1.r_name
group by region_1.r_name, region_1.r_regionkey
limit 11;
select  
  orders_1.o_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderkey > orders_1.o_custkey
limit 20;
select  
  part_2.p_type, 
  part_1.p_size, 
  region_1.r_regionkey, 
  part_2.p_type, 
  part_1.p_comment, 
  part_2.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join partsupp as partsupp_1
        inner join region as region_1
        on (partsupp_1.ps_partkey = region_1.r_regionkey )
      on (part_1.p_partkey = region_1.r_regionkey )
    inner join part as part_2
    on (part_1.p_partkey = part_2.p_partkey )
where part_2.p_size is not NULL
limit 27;
select  
  region_1.r_regionkey, 
  orders_1.o_orderkey, 
  region_1.r_comment, 
  min(
    nation_1.n_nationkey), 
  min(
    orders_1.o_orderkey), 
  region_1.r_name, 
  region_1.r_name, 
  customer_1.c_address, 
  customer_1.c_comment, 
  min(
    orders_1.o_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
        inner join customer as customer_1
        on (region_1.r_regionkey = customer_1.c_custkey )
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join orders as orders_1
    on (nation_1.n_nationkey = orders_1.o_orderkey )
where customer_1.c_nationkey is not NULL
group by customer_1.c_address, customer_1.c_comment, orders_1.o_orderkey, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 10;
select  
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderdate, 
  orders_1.o_shippriority, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_orderdate, orders_1.o_shippriority
limit 18;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
limit 27;
select  
  region_1.r_regionkey, 
  lineitem_2.l_returnflag, 
  region_2.r_comment, 
  lineitem_1.l_receiptdate, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
        inner join region as region_1
        on (lineitem_1.l_orderkey = region_1.r_regionkey )
      inner join lineitem as lineitem_2
        inner join region as region_2
        on (lineitem_2.l_orderkey = region_2.r_regionkey )
      on (lineitem_1.l_orderkey = region_2.r_regionkey )
    on (orders_1.o_orderkey = lineitem_2.l_orderkey )
where region_1.r_comment is not NULL
limit 30;
select  
  min(
    orders_1.o_shippriority), 
  min(
    orders_1.o_custkey), 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join nation as nation_1
        inner join lineitem as lineitem_1
        on (nation_1.n_nationkey = lineitem_1.l_orderkey )
      on (supplier_1.s_suppkey = nation_1.n_nationkey )
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_commitdate < orders_1.o_orderdate
group by nation_1.n_regionkey
limit 28;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
      inner join partsupp as partsupp_1
      on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where orders_1.o_orderpriority is not NULL
group by orders_1.o_orderdate, partsupp_1.ps_partkey
limit 4;
select  
  min(
    nation_2.n_nationkey), 
  max(
    orders_2.o_custkey), 
  orders_1.o_custkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  nation_2.n_nationkey, 
  nation_2.n_comment, 
  orders_1.o_totalprice, 
  orders_2.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join orders as orders_1
          inner join supplier as supplier_1
            inner join nation as nation_1
            on (supplier_1.s_suppkey = nation_1.n_nationkey )
          on (orders_1.o_orderkey = nation_1.n_nationkey )
        inner join nation as nation_2
          inner join orders as orders_2
          on (nation_2.n_nationkey = orders_2.o_orderkey )
        on (orders_1.o_orderkey = nation_2.n_nationkey )
      inner join partsupp as partsupp_1
      on (orders_1.o_orderkey = partsupp_1.ps_partkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
group by nation_2.n_comment, nation_2.n_nationkey, orders_1.o_custkey, orders_1.o_totalprice, orders_2.o_orderdate, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 34;
select  
  lineitem_1.l_comment, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_orderkey, 
  orders_1.o_orderpriority, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  lineitem_1.l_returnflag, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where orders_1.o_clerk is not NULL
group by lineitem_1.l_comment, lineitem_1.l_orderkey, lineitem_1.l_returnflag, lineitem_1.l_shipdate, orders_1.o_comment, orders_1.o_orderpriority, orders_1.o_shippriority
limit 29;
select  
  nation_1.n_name, 
  min(
    nation_1.n_nationkey), 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_name, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 38;
select  
  min(
    nation_1.n_regionkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where partsupp_1.ps_supplycost < partsupp_1.ps_supplycost
group by nation_1.n_comment, nation_1.n_nationkey, partsupp_1.ps_supplycost
limit 3;
select  
  supplier_1.s_address, 
  supplier_1.s_nationkey, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  supplier_1.s_acctbal, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_nationkey, supplier_1.s_phone, supplier_1.s_suppkey
limit 32;
select  
  nation_1.n_regionkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  customer_1.c_custkey, 
  nation_1.n_comment, 
  customer_1.c_acctbal, 
  nation_1.n_nationkey, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_nationkey, 
  customer_1.c_mktsegment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_name is not NULL
limit 27;
select  
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join orders as orders_1
      inner join region as region_1
      on (orders_1.o_orderkey = region_1.r_regionkey )
    on (nation_1.n_nationkey = region_1.r_regionkey )
where nation_1.n_regionkey = nation_1.n_nationkey
limit 7;
select  
  customer_2.c_comment, 
  customer_2.c_acctbal, 
  lineitem_1.l_shipmode, 
  customer_2.c_acctbal, 
  customer_1.c_custkey, 
  lineitem_1.l_suppkey, 
  customer_2.c_name, 
  customer_2.c_phone, 
  customer_1.c_mktsegment, 
  lineitem_1.l_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join customer as customer_2
      on (customer_1.c_custkey = customer_2.c_custkey )
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount <= lineitem_1.l_extendedprice
limit 9;
select  
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where orders_1.o_clerk is not NULL
limit 7;
select  
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 37;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey < nation_1.n_regionkey
group by nation_1.n_name
limit 18;
select  
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
group by supplier_1.s_comment
limit 6;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_acctbal, 
  supplier_1.s_phone, 
  supplier_1.s_suppkey, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_address, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 41;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join lineitem as lineitem_1
        inner join customer as customer_1
        on (lineitem_1.l_orderkey = customer_1.c_custkey )
      on (supplier_1.s_suppkey = customer_1.c_custkey )
    inner join orders as orders_1
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_commitdate <= lineitem_1.l_receiptdate
limit 35;
select  
  supplier_1.s_phone, 
  supplier_1.s_comment, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_suppkey, 
  supplier_1.s_acctbal, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_suppkey is not NULL
limit 31;
select  
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone <= supplier_1.s_name
group by supplier_1.s_name
limit 12;
select  
  nation_1.n_name, 
  nation_2.n_nationkey, 
  nation_2.n_regionkey, 
  lineitem_1.l_linestatus, 
  nation_1.n_regionkey, 
  nation_1.n_regionkey, 
  nation_2.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
      inner join nation as nation_2
      on (nation_1.n_nationkey = nation_2.n_nationkey )
    on (lineitem_1.l_orderkey = nation_2.n_nationkey )
where nation_1.n_name is not NULL
limit 6;
select  
  orders_1.o_orderkey, 
  min(
    orders_1.o_custkey), 
  orders_1.o_shippriority, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_comment is not NULL
group by orders_1.o_clerk, orders_1.o_orderkey, orders_1.o_shippriority
limit 13;
select  
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  max(
    partsupp_1.ps_suppkey), 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 15;
select  
  min(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  orders_1.o_comment, 
  region_1.r_comment, 
  orders_1.o_orderkey, 
  orders_1.o_orderkey, 
  region_1.r_regionkey, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join region as region_1
    on (orders_1.o_orderkey = region_1.r_regionkey )
where orders_1.o_clerk is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderkey, orders_1.o_orderpriority, region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 11;
select  
  part_1.p_retailprice, 
  part_1.p_size
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand > part_1.p_mfgr
limit 30;
select  
  part_1.p_retailprice, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice > part_1.p_retailprice
limit 32;
select  
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 41;
select  
  part_1.p_container, 
  orders_2.o_clerk, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
        inner join region as region_1
          inner join part as part_1
          on (region_1.r_regionkey = part_1.p_partkey )
        on (orders_1.o_orderkey = part_1.p_partkey )
      inner join supplier as supplier_1
      on (region_1.r_regionkey = supplier_1.s_suppkey )
    inner join orders as orders_2
      inner join partsupp as partsupp_1
      on (orders_2.o_orderkey = partsupp_1.ps_partkey )
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where part_1.p_partkey > orders_1.o_shippriority
limit 13;
select  
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  customer_1.c_nationkey, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  max(
    customer_1.c_custkey), 
  customer_1.c_comment, 
  customer_1.c_custkey, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_comment is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey
limit 17;
select  
  supplier_2.s_acctbal, 
  region_1.r_comment, 
  supplier_2.s_address, 
  nation_1.n_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
      inner join region as region_1
        inner join supplier as supplier_1
        on (region_1.r_regionkey = supplier_1.s_suppkey )
      on (nation_1.n_nationkey = region_1.r_regionkey )
    inner join supplier as supplier_2
    on (region_1.r_regionkey = supplier_2.s_suppkey )
where nation_1.n_comment is not NULL
limit 18;
select  
  lineitem_1.l_shipinstruct, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_linestatus, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_discount is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_returnflag, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode
limit 18;
select  
  part_1.p_container
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_mfgr is not NULL
limit 15;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where supplier_1.s_address is not NULL
limit 8;
select  
  supplier_1.s_suppkey, 
  supplier_1.s_phone, 
  supplier_1.s_phone, 
  supplier_1.s_name, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  max(
    supplier_1.s_nationkey), 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_nationkey = supplier_1.s_suppkey
group by supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 18;
select  
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_clerk, 
  orders_1.o_orderdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderstatus is not NULL
limit 11;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty, 
  max(
    partsupp_1.ps_suppkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey
limit 13;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join partsupp as partsupp_1
    on (nation_1.n_nationkey = partsupp_1.ps_partkey )
where nation_1.n_nationkey is not NULL
limit 14;
select  
  customer_1.c_nationkey, 
  part_1.p_name, 
  customer_1.c_mktsegment, 
  supplier_1.s_name, 
  part_1.p_size, 
  max(
    customer_1.c_nationkey), 
  part_1.p_mfgr, 
  lineitem_1.l_comment, 
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join lineitem as lineitem_1
        inner join supplier as supplier_1
        on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_commitdate >= lineitem_1.l_shipdate
group by customer_1.c_mktsegment, customer_1.c_nationkey, lineitem_1.l_comment, part_1.p_mfgr, part_1.p_name, part_1.p_size, supplier_1.s_name, supplier_1.s_suppkey
limit 15;
select  
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 25;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty, 
  part_1.p_type, 
  partsupp_1.ps_comment, 
  part_1.p_brand, 
  max(
    partsupp_1.ps_suppkey), 
  part_2.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join customer as customer_1
      inner join partsupp as partsupp_1
        inner join part as part_2
        on (partsupp_1.ps_partkey = part_2.p_partkey )
      on (customer_1.c_custkey = part_2.p_partkey )
    on (part_1.p_partkey = partsupp_1.ps_partkey )
where customer_1.c_address is not NULL
group by part_1.p_brand, part_1.p_type, part_2.p_brand, partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_supplycost
limit 41;
select  
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderstatus, 
  orders_1.o_orderkey, 
  orders_1.o_shippriority, 
  min(
    orders_1.o_custkey), 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_totalprice, 
  orders_1.o_shippriority, 
  orders_1.o_orderpriority, 
  orders_1.o_orderdate, 
  orders_1.o_totalprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 14;
select  
  min(
    customer_1.c_custkey), 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_address, 
  customer_1.c_comment, 
  customer_1.c_mktsegment, 
  customer_1.c_phone, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_phone
limit 7;
select  
  min(
    partsupp_1.ps_partkey), 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 11;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_supplycost <= partsupp_1.ps_supplycost
limit 15;
select  
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name >= nation_1.n_name
limit 2;
select  
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_nationkey, 
  min(
    nation_1.n_nationkey), 
  min(
    nation_1.n_regionkey), 
  nation_1.n_name, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 8;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey is not NULL
limit 32;
select  
  customer_1.c_acctbal, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_nationkey is not NULL
limit 27;
select  
  max(
    customer_1.c_nationkey), 
  customer_1.c_mktsegment, 
  customer_1.c_comment, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_acctbal, 
  customer_1.c_acctbal, 
  min(
    customer_1.c_custkey), 
  customer_1.c_nationkey, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_nationkey, 
  customer_1.c_acctbal, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  max(
    customer_1.c_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone >= customer_1.c_mktsegment
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_nationkey, customer_1.c_phone
limit 17;
select  
  lineitem_1.l_linenumber, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linestatus >= lineitem_1.l_shipinstruct
group by lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate
limit 12;
select  
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment, region_1.r_regionkey
limit 7;
select  
  supplier_1.s_name, 
  max(
    nation_1.n_regionkey), 
  min(
    nation_1.n_regionkey), 
  max(
    nation_1.n_regionkey), 
  nation_1.n_regionkey, 
  supplier_1.s_phone, 
  max(
    supplier_1.s_suppkey), 
  nation_1.n_name, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join supplier as supplier_1
    on (nation_1.n_nationkey = supplier_1.s_suppkey )
where nation_1.n_comment is not NULL
group by nation_1.n_name, nation_1.n_regionkey, supplier_1.s_name, supplier_1.s_phone
limit 20;
select  
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
    on (partsupp_1.ps_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_orderkey is not NULL
limit 5;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 8;
select  
  customer_2.c_custkey, 
  min(
    customer_1.c_custkey), 
  supplier_2.s_phone, 
  lineitem_1.l_shipinstruct, 
  customer_2.c_nationkey, 
  customer_2.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join supplier as supplier_1
      on (customer_1.c_custkey = supplier_1.s_suppkey )
    inner join customer as customer_2
        inner join supplier as supplier_2
        on (customer_2.c_custkey = supplier_2.s_suppkey )
      inner join lineitem as lineitem_1
      on (supplier_2.s_suppkey = lineitem_1.l_orderkey )
    on (customer_1.c_custkey = supplier_2.s_suppkey )
where lineitem_1.l_shipdate = lineitem_1.l_commitdate
group by customer_2.c_custkey, customer_2.c_nationkey, customer_2.c_phone, lineitem_1.l_shipinstruct, supplier_2.s_phone
limit 23;
select  
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 8;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  max(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name >= region_1.r_name
group by region_1.r_comment, region_1.r_name, region_1.r_regionkey
limit 5;
select  
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_address is not NULL
limit 8;
select  
  min(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
    inner join nation as nation_1
    on (region_1.r_regionkey = nation_1.n_nationkey )
where region_1.r_regionkey is not NULL
limit 4;
select  
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where lineitem_1.l_receiptdate <= lineitem_1.l_shipdate
limit 8;
select  
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  nation_1.n_name, 
  min(
    nation_1.n_nationkey), 
  nation_1.n_comment, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey
limit 27;
select  
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_linenumber > lineitem_1.l_orderkey
limit 6;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_suppkey, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_partkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_suppkey, partsupp_1.ps_supplycost
limit 25;
select  
  lineitem_1.l_orderkey, 
  customer_1.c_phone, 
  part_1.p_name, 
  customer_1.c_comment, 
  lineitem_1.l_receiptdate, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_comment, 
  part_1.p_mfgr, 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
      inner join customer as customer_1
      on (partsupp_1.ps_partkey = customer_1.c_custkey )
    inner join lineitem as lineitem_1
      inner join part as part_1
      on (lineitem_1.l_orderkey = part_1.p_partkey )
    on (partsupp_1.ps_partkey = part_1.p_partkey )
where lineitem_1.l_tax is not NULL
group by customer_1.c_comment, customer_1.c_phone, lineitem_1.l_comment, lineitem_1.l_orderkey, lineitem_1.l_receiptdate, lineitem_1.l_suppkey, part_1.p_mfgr, part_1.p_name
limit 14;
select  
  lineitem_1.l_linestatus, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_comment, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_partkey is not NULL
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_receiptdate
limit 26;
select  
  lineitem_2.l_extendedprice, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
    inner join lineitem as lineitem_1
      inner join orders as orders_1
        inner join lineitem as lineitem_2
        on (orders_1.o_orderkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    on (part_1.p_partkey = lineitem_1.l_orderkey )
where lineitem_2.l_orderkey is not NULL
limit 7;
select  
  lineitem_1.l_linestatus, 
  customer_1.c_address, 
  customer_1.c_comment, 
  lineitem_1.l_extendedprice, 
  max(
    lineitem_1.l_partkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipinstruct, 
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join lineitem as lineitem_1
    on (customer_1.c_custkey = lineitem_1.l_orderkey )
where lineitem_1.l_receiptdate is not NULL
group by customer_1.c_address, customer_1.c_comment, lineitem_1.l_extendedprice, lineitem_1.l_linestatus, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct
limit 36;
select  
  orders_1.o_comment, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
limit 29;
select  
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_suppkey), 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_quantity, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_quantity
limit 13;
select  
  orders_1.o_orderpriority, 
  lineitem_1.l_shipinstruct, 
  lineitem_2.l_partkey, 
  customer_1.c_mktsegment, 
  min(
    lineitem_1.l_partkey), 
  partsupp_1.ps_suppkey, 
  lineitem_2.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join nation as nation_1
          inner join supplier as supplier_1
          on (nation_1.n_nationkey = supplier_1.s_suppkey )
        inner join orders as orders_1
          inner join orders as orders_2
          on (orders_1.o_orderkey = orders_2.o_orderkey )
        on (supplier_1.s_suppkey = orders_2.o_orderkey )
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join lineitem as lineitem_2
      inner join customer as customer_1
          inner join partsupp as partsupp_1
          on (customer_1.c_custkey = partsupp_1.ps_partkey )
        inner join partsupp as partsupp_2
        on (customer_1.c_custkey = partsupp_2.ps_partkey )
      on (lineitem_2.l_orderkey = partsupp_1.ps_partkey )
    on (supplier_1.s_suppkey = partsupp_2.ps_partkey )
where supplier_1.s_comment is not NULL
group by customer_1.c_mktsegment, lineitem_1.l_shipinstruct, lineitem_2.l_partkey, lineitem_2.l_returnflag, orders_1.o_orderpriority, partsupp_1.ps_suppkey
limit 23;
select  
  part_1.p_size, 
  part_1.p_size, 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment, part_1.p_size, part_1.p_type
limit 35;
select  
  part_1.p_size, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_type is not NULL
limit 25;
select  
  supplier_1.s_nationkey, 
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_address, 
  max(
    supplier_1.s_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone < supplier_1.s_name
group by supplier_1.s_address, supplier_1.s_nationkey
limit 28;
select  
  orders_1.o_orderdate, 
  nation_1.n_nationkey, 
  orders_1.o_shippriority, 
  nation_1.n_regionkey, 
  nation_1.n_name, 
  min(
    orders_1.o_custkey), 
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_orderpriority is not NULL
group by nation_1.n_name, nation_1.n_nationkey, nation_1.n_regionkey, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_shippriority, orders_1.o_totalprice
limit 25;
select  
  lineitem_1.l_linenumber, 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_quantity is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_orderkey, lineitem_1.l_shipdate
limit 26;
select  
  partsupp_1.ps_suppkey, 
  customer_1.c_address, 
  customer_1.c_custkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
    inner join partsupp as partsupp_1
    on (customer_1.c_custkey = partsupp_1.ps_partkey )
where customer_1.c_mktsegment <= customer_1.c_phone
limit 27;
select  
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 14;
select  
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_extendedprice is not NULL
limit 5;
select  
  partsupp_1.ps_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_suppkey is not NULL
limit 22;
select  
  min(
    part_1.p_partkey), 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_commitdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where lineitem_1.l_extendedprice <= lineitem_1.l_quantity
group by lineitem_1.l_commitdate, lineitem_1.l_extendedprice
limit 25;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_availqty, 
  partsupp_1.ps_comment, 
  min(
    partsupp_1.ps_availqty), 
  partsupp_1.ps_suppkey, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
group by partsupp_1.ps_availqty, partsupp_1.ps_comment, partsupp_1.ps_suppkey
limit 40;
select  
  nation_1.n_regionkey, 
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 12;
select  
  lineitem_1.l_partkey, 
  max(
    lineitem_1.l_linenumber), 
  lineitem_1.l_discount, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_orderkey is not NULL
group by lineitem_1.l_discount, lineitem_1.l_partkey, lineitem_1.l_shipmode
limit 35;
select  
  region_1.r_name, 
  region_1.r_comment, 
  max(
    region_1.r_regionkey), 
  max(
    region_1.r_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_comment, region_1.r_name
limit 40;
select  
  min(
    lineitem_1.l_suppkey), 
  part_2.p_size, 
  part_2.p_type, 
  part_2.p_container, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_comment, 
  part_2.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join lineitem as lineitem_1
      on (part_1.p_partkey = lineitem_1.l_orderkey )
    inner join part as part_2
    on (lineitem_1.l_orderkey = part_2.p_partkey )
where part_2.p_comment is not NULL
group by lineitem_1.l_comment, lineitem_1.l_extendedprice, part_2.p_brand, part_2.p_container, part_2.p_size, part_2.p_type
limit 20;
select  
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  min(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_availqty is not NULL
group by partsupp_1.ps_comment, partsupp_1.ps_partkey, partsupp_1.ps_supplycost
limit 37;
select  
  partsupp_1.ps_comment, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_returnflag
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join supplier as supplier_1
      on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
    inner join partsupp as partsupp_1
    on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
where lineitem_1.l_orderkey is not NULL
limit 20;
select  
  lineitem_1.l_discount
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
      inner join part as part_1
          inner join region as region_1
          on (part_1.p_partkey = region_1.r_regionkey )
        inner join region as region_2
        on (part_1.p_partkey = region_2.r_regionkey )
      on (supplier_1.s_suppkey = part_1.p_partkey )
    inner join supplier as supplier_2
      inner join region as region_3
      on (supplier_2.s_suppkey = region_3.r_regionkey )
    on (part_1.p_partkey = supplier_2.s_suppkey )
where region_3.r_comment is not NULL
limit 13;
select  
  min(
    nation_1.n_nationkey), 
  nation_1.n_nationkey, 
  nation_1.n_comment, 
  nation_1.n_comment, 
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
group by nation_1.n_comment, nation_1.n_nationkey
limit 37;
select  
  lineitem_1.l_commitdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipdate, 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipinstruct is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_tax
limit 9;
select  
  customer_1.c_mktsegment, 
  customer_1.c_name, 
  customer_1.c_custkey, 
  max(
    customer_1.c_nationkey), 
  max(
    customer_1.c_custkey), 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  customer_1.c_custkey, 
  customer_1.c_custkey, 
  customer_1.c_phone, 
  customer_1.c_custkey, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_acctbal, 
  customer_1.c_custkey, 
  customer_1.c_mktsegment, 
  customer_1.c_mktsegment, 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment > customer_1.c_phone
group by customer_1.c_acctbal, customer_1.c_custkey, customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone
limit 30;
select  
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey), 
  nation_1.n_regionkey, 
  max(
    nation_1.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
group by nation_1.n_regionkey
limit 4;
select  
  part_1.p_name, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice > part_1.p_retailprice
limit 30;
select  
  nation_1.n_comment, 
  nation_1.n_name, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name < nation_1.n_name
limit 26;
select  
  supplier_1.s_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_comment is not NULL
limit 42;
select  
  supplier_1.s_address, 
  supplier_1.s_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
limit 33;
select  
  nation_1.n_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_comment is not NULL
limit 14;
select  
  nation_1.n_nationkey, 
  orders_1.o_orderpriority, 
  max(
    nation_1.n_nationkey), 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join nation as nation_1
      inner join region as region_1
        inner join nation as nation_2
        on (region_1.r_regionkey = nation_2.n_nationkey )
      on (nation_1.n_nationkey = region_1.r_regionkey )
    on (orders_1.o_orderkey = region_1.r_regionkey )
where region_1.r_regionkey is not NULL
group by nation_1.n_nationkey, orders_1.o_orderpriority, region_1.r_name
limit 37;
select  
  orders_1.o_orderpriority, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  orders_1.o_clerk, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_comment, 
  min(
    orders_1.o_shippriority), 
  orders_1.o_orderkey, 
  max(
    orders_1.o_shippriority)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_shippriority
limit 38;
select  
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_discount, 
  lineitem_1.l_shipmode
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate = lineitem_1.l_commitdate
group by lineitem_1.l_discount, lineitem_1.l_shipmode
limit 22;
select  
  region_1.r_name, 
  region_1.r_name, 
  region_1.r_name, 
  min(
    region_1.r_regionkey), 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 31;
select  
  region_1.r_comment, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_name, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
limit 14;
select  
  partsupp_2.ps_comment, 
  nation_1.n_comment, 
  supplier_2.s_suppkey, 
  partsupp_2.ps_availqty, 
  nation_1.n_name, 
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
      inner join nation as nation_1
        inner join supplier as supplier_2
        on (nation_1.n_nationkey = supplier_2.s_suppkey )
      on (supplier_1.s_suppkey = supplier_2.s_suppkey )
    inner join partsupp as partsupp_1
      inner join partsupp as partsupp_2
      on (partsupp_1.ps_partkey = partsupp_2.ps_partkey )
    on (supplier_2.s_suppkey = partsupp_2.ps_partkey )
where partsupp_1.ps_supplycost is not NULL
limit 34;
select  
  part_1.p_partkey, 
  min(
    part_1.p_partkey), 
  part_1.p_mfgr, 
  part_1.p_type, 
  part_1.p_partkey, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_retailprice, 
  part_1.p_mfgr, 
  part_1.p_brand, 
  part_1.p_mfgr, 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size is not NULL
group by part_1.p_brand, part_1.p_mfgr, part_1.p_partkey, part_1.p_retailprice, part_1.p_type
limit 6;
select  
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 34;
select  
  customer_1.c_nationkey, 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_phone is not NULL
limit 12;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_supplycost, 
  partsupp_1.ps_availqty
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_comment is not NULL
limit 13;
select  
  part_1.p_name, 
  part_1.p_comment, 
  part_1.p_type, 
  part_1.p_name, 
  part_1.p_type, 
  min(
    part_1.p_size), 
  part_1.p_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_name is not NULL
group by part_1.p_comment, part_1.p_name, part_1.p_type
limit 13;
select  
  supplier_1.s_nationkey, 
  partsupp_1.ps_comment, 
  partsupp_1.ps_supplycost, 
  lineitem_1.l_shipdate, 
  partsupp_1.ps_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join partsupp as partsupp_2
      inner join supplier as supplier_1
        inner join lineitem as lineitem_1
        on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
      on (partsupp_2.ps_partkey = supplier_1.s_suppkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where partsupp_2.ps_availqty < partsupp_2.ps_partkey
limit 24;
select  
  customer_1.c_address, 
  customer_1.c_comment, 
  min(
    customer_1.c_custkey), 
  customer_1.c_address, 
  customer_1.c_address, 
  max(
    customer_1.c_nationkey), 
  customer_1.c_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_mktsegment is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_phone
limit 21;
select  
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join lineitem as lineitem_1
      inner join customer as customer_1
      on (lineitem_1.l_orderkey = customer_1.c_custkey )
    on (supplier_1.s_suppkey = lineitem_1.l_orderkey )
where lineitem_1.l_commitdate is not NULL
limit 10;
select  
  max(
    lineitem_1.l_orderkey), 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
      inner join lineitem as lineitem_1
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    inner join customer as customer_1
    on (region_1.r_regionkey = customer_1.c_custkey )
where lineitem_1.l_linestatus >= region_1.r_name
group by region_1.r_regionkey
limit 7;
select  
  part_1.p_container, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_retailprice is not NULL
limit 21;
select  
  lineitem_1.l_quantity, 
  lineitem_1.l_discount, 
  lineitem_1.l_extendedprice, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_extendedprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_comment is not NULL
limit 42;
select  
  max(
    nation_1.n_nationkey), 
  customer_1.c_address, 
  part_1.p_mfgr, 
  max(
    customer_2.c_custkey), 
  max(
    nation_2.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
        inner join nation as nation_1
        on (partsupp_1.ps_partkey = nation_1.n_nationkey )
      inner join nation as nation_2
      on (partsupp_1.ps_partkey = nation_2.n_nationkey )
    inner join part as part_1
          inner join customer as customer_1
          on (part_1.p_partkey = customer_1.c_custkey )
        inner join customer as customer_2
        on (customer_1.c_custkey = customer_2.c_custkey )
      inner join part as part_2
      on (customer_2.c_custkey = part_2.p_partkey )
    on (nation_2.n_nationkey = customer_1.c_custkey )
where nation_1.n_name < part_2.p_mfgr
group by customer_1.c_address, part_1.p_mfgr
limit 33;
select  
  customer_1.c_nationkey, 
  customer_1.c_name, 
  max(
    customer_1.c_nationkey), 
  min(
    customer_1.c_custkey), 
  min(
    customer_1.c_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
group by customer_1.c_name, customer_1.c_nationkey
limit 25;
select  
  orders_1.o_shippriority, 
  orders_1.o_shippriority, 
  orders_1.o_custkey, 
  orders_1.o_shippriority, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_orderdate, 
  orders_1.o_comment, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_comment, 
  orders_1.o_orderstatus, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_shippriority, orders_1.o_totalprice
limit 37;
select  
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_orderpriority is not NULL
limit 7;
select  
  nation_1.n_name, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
    on (lineitem_1.l_orderkey = nation_1.n_nationkey )
where nation_1.n_regionkey is not NULL
limit 14;
select  
  region_1.r_comment, 
  lineitem_2.l_shipdate, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_shipdate, 
  lineitem_2.l_receiptdate, 
  max(
    lineitem_2.l_orderkey), 
  lineitem_1.l_linestatus, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join lineitem as lineitem_2
      inner join region as region_1
      on (lineitem_2.l_orderkey = region_1.r_regionkey )
    on (lineitem_1.l_orderkey = region_1.r_regionkey )
where lineitem_1.l_extendedprice is not NULL
group by lineitem_1.l_linestatus, lineitem_1.l_returnflag, lineitem_1.l_shipdate, lineitem_2.l_receiptdate, lineitem_2.l_shipdate, region_1.r_comment, region_1.r_regionkey
limit 28;
select  
  min(
    nation_1.n_regionkey), 
  customer_1.c_address, 
  customer_1.c_name, 
  customer_1.c_comment, 
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  nation_1.n_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join customer as customer_1
    on (nation_1.n_nationkey = customer_1.c_custkey )
where nation_1.n_nationkey is not NULL
group by customer_1.c_address, customer_1.c_comment, customer_1.c_name, customer_1.c_nationkey, nation_1.n_name
limit 30;
select  
  max(
    part_1.p_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_brand is not NULL
limit 38;
select  
  customer_1.c_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
where customer_1.c_address is not NULL
limit 9;
select  
  orders_1.o_totalprice, 
  orders_1.o_custkey, 
  orders_1.o_clerk, 
  orders_1.o_comment, 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_totalprice, 
  orders_1.o_orderstatus, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_orderdate, 
  max(
    orders_1.o_orderkey), 
  orders_1.o_orderpriority, 
  orders_1.o_orderkey, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_clerk
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_totalprice is not NULL
group by orders_1.o_clerk, orders_1.o_comment, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderpriority, orders_1.o_orderstatus, orders_1.o_totalprice
limit 19;
select  
  lineitem_1.l_shipdate, 
  orders_1.o_orderstatus, 
  lineitem_1.l_shipdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_discount <= lineitem_1.l_extendedprice
limit 12;
select  
  max(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey is not NULL
group by region_1.r_comment, region_1.r_name
limit 32;
select  
  max(
    nation_1.n_regionkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_name is not NULL
limit 11;
select  
  nation_1.n_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_regionkey = nation_1.n_nationkey
limit 29;
select  
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_regionkey < region_1.r_regionkey
limit 20;
select  
  min(
    region_1.r_regionkey), 
  region_1.r_comment, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
group by region_1.r_comment
limit 24;
select  
  customer_1.c_nationkey, 
  customer_1.c_nationkey, 
  part_1.p_retailprice, 
  customer_1.c_comment, 
  part_1.p_partkey, 
  customer_1.c_custkey, 
  part_1.p_partkey, 
  customer_1.c_phone, 
  part_1.p_container, 
  min(
    customer_1.c_nationkey), 
  customer_1.c_name, 
  customer_1.c_nationkey, 
  max(
    part_1.p_size), 
  part_1.p_comment, 
  part_1.p_brand, 
  max(
    supplier_1.s_suppkey), 
  supplier_1.s_suppkey, 
  supplier_1.s_name, 
  supplier_1.s_phone, 
  max(
    supplier_1.s_suppkey), 
  part_1.p_retailprice, 
  max(
    customer_1.c_nationkey), 
  min(
    supplier_1.s_suppkey), 
  customer_1.c_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join supplier as supplier_1
      on (part_1.p_partkey = supplier_1.s_suppkey )
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where supplier_1.s_nationkey is not NULL
group by customer_1.c_acctbal, customer_1.c_comment, customer_1.c_custkey, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, part_1.p_brand, part_1.p_comment, part_1.p_container, part_1.p_partkey, part_1.p_retailprice, supplier_1.s_name, supplier_1.s_phone, supplier_1.s_suppkey
limit 30;
select  
  max(
    lineitem_1.l_orderkey), 
  part_1.p_brand
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  customer as customer_1
      inner join lineitem as lineitem_1
      on (customer_1.c_custkey = lineitem_1.l_orderkey )
    inner join part as part_1
    on (lineitem_1.l_orderkey = part_1.p_partkey )
where customer_1.c_nationkey is not NULL
group by part_1.p_brand
limit 10;
select  
  lineitem_1.l_shipmode, 
  min(
    lineitem_3.l_suppkey), 
  lineitem_1.l_linenumber, 
  lineitem_1.l_shipmode, 
  min(
    lineitem_3.l_orderkey), 
  part_1.p_size, 
  orders_1.o_orderpriority, 
  max(
    lineitem_2.l_suppkey), 
  orders_1.o_clerk, 
  lineitem_2.l_linenumber, 
  max(
    lineitem_3.l_linenumber)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
        inner join partsupp as partsupp_1
        on (lineitem_1.l_orderkey = partsupp_1.ps_partkey )
      inner join orders as orders_1
        inner join lineitem as lineitem_2
        on (orders_1.o_orderkey = lineitem_2.l_orderkey )
      on (lineitem_1.l_orderkey = orders_1.o_orderkey )
    inner join lineitem as lineitem_3
      inner join part as part_1
      on (lineitem_3.l_orderkey = part_1.p_partkey )
    on (partsupp_1.ps_partkey = lineitem_3.l_orderkey )
where lineitem_2.l_shipmode >= part_1.p_mfgr
group by lineitem_1.l_linenumber, lineitem_1.l_shipmode, lineitem_2.l_linenumber, orders_1.o_clerk, orders_1.o_orderpriority, part_1.p_size
limit 11;
select  
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  supplier_1.s_nationkey, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal > supplier_1.s_acctbal
limit 13;
select  
  supplier_1.s_comment, 
  supplier_1.s_address, 
  min(
    supplier_1.s_nationkey), 
  supplier_1.s_comment, 
  supplier_1.s_address, 
  supplier_1.s_name, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_comment, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_phone is not NULL
group by supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_comment, supplier_1.s_name
limit 25;
select  
  partsupp_1.ps_availqty, 
  max(
    region_1.r_regionkey), 
  orders_1.o_shippriority, 
  orders_1.o_clerk, 
  region_1.r_comment, 
  orders_1.o_orderpriority, 
  lineitem_1.l_quantity, 
  orders_1.o_custkey, 
  lineitem_1.l_comment, 
  region_1.r_comment, 
  orders_1.o_orderdate, 
  region_1.r_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join region as region_1
      inner join orders as orders_1
        inner join lineitem as lineitem_1
        on (orders_1.o_orderkey = lineitem_1.l_orderkey )
      on (region_1.r_regionkey = lineitem_1.l_orderkey )
    on (partsupp_1.ps_partkey = orders_1.o_orderkey )
where orders_1.o_orderpriority > orders_1.o_orderstatus
group by lineitem_1.l_comment, lineitem_1.l_quantity, orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderpriority, orders_1.o_shippriority, partsupp_1.ps_availqty, region_1.r_comment
limit 32;
select  
  partsupp_1.ps_availqty, 
  partsupp_1.ps_supplycost
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 18;
select  
  min(
    partsupp_1.ps_suppkey), 
  max(
    partsupp_1.ps_partkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
where partsupp_1.ps_partkey is not NULL
limit 12;
select  
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_name is not NULL
limit 32;
select  
  orders_1.o_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
    inner join lineitem as lineitem_1
    on (orders_1.o_orderkey = lineitem_1.l_orderkey )
where lineitem_1.l_returnflag = lineitem_1.l_shipinstruct
limit 9;
select  
  supplier_1.s_name, 
  customer_1.c_mktsegment, 
  supplier_1.s_address, 
  customer_1.c_phone, 
  supplier_1.s_acctbal, 
  max(
    customer_1.c_nationkey), 
  supplier_1.s_acctbal, 
  supplier_1.s_nationkey, 
  supplier_1.s_address, 
  supplier_1.s_suppkey, 
  customer_1.c_nationkey, 
  customer_1.c_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
    inner join customer as customer_1
    on (supplier_1.s_suppkey = customer_1.c_custkey )
where customer_1.c_custkey is not NULL
group by customer_1.c_mktsegment, customer_1.c_name, customer_1.c_nationkey, customer_1.c_phone, supplier_1.s_acctbal, supplier_1.s_address, supplier_1.s_name, supplier_1.s_nationkey, supplier_1.s_suppkey
limit 7;
select  
  lineitem_1.l_partkey, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_orderkey, 
  lineitem_1.l_discount, 
  lineitem_1.l_comment, 
  lineitem_1.l_tax, 
  lineitem_1.l_returnflag, 
  lineitem_1.l_suppkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_shipdate is not NULL
limit 10;
select  
  min(
    supplier_1.s_suppkey), 
  supplier_1.s_phone, 
  supplier_1.s_nationkey, 
  supplier_1.s_acctbal
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal <= supplier_1.s_acctbal
group by supplier_1.s_acctbal, supplier_1.s_nationkey, supplier_1.s_phone
limit 12;
select  
  orders_1.o_orderdate, 
  orders_1.o_custkey, 
  max(
    orders_1.o_shippriority), 
  orders_1.o_clerk, 
  orders_1.o_totalprice, 
  orders_1.o_orderkey, 
  orders_1.o_orderstatus, 
  orders_1.o_orderdate, 
  orders_1.o_orderstatus, 
  max(
    orders_1.o_custkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_clerk is not NULL
group by orders_1.o_clerk, orders_1.o_custkey, orders_1.o_orderdate, orders_1.o_orderkey, orders_1.o_orderstatus, orders_1.o_totalprice
limit 8;
select  
  nation_1.n_name, 
  nation_1.n_nationkey, 
  nation_1.n_name, 
  nation_1.n_nationkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
where nation_1.n_nationkey is not NULL
limit 29;
select  
  region_1.r_regionkey, 
  max(
    region_1.r_regionkey), 
  min(
    region_1.r_regionkey), 
  region_1.r_name, 
  region_1.r_regionkey, 
  region_1.r_regionkey, 
  region_1.r_regionkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
group by region_1.r_name, region_1.r_regionkey
limit 31;
select  
  min(
    nation_2.n_nationkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  nation as nation_1
    inner join nation as nation_2
    on (nation_1.n_nationkey = nation_2.n_nationkey )
where nation_1.n_nationkey is not NULL
limit 40;
select  
  lineitem_1.l_suppkey, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_commitdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_comment, 
  lineitem_1.l_commitdate, 
  min(
    lineitem_1.l_suppkey), 
  lineitem_1.l_receiptdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipdate, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipdate, 
  lineitem_1.l_partkey, 
  lineitem_1.l_linestatus, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_discount, 
  min(
    lineitem_1.l_suppkey), 
  max(
    lineitem_1.l_suppkey), 
  lineitem_1.l_shipmode, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_quantity, 
  lineitem_1.l_partkey, 
  lineitem_1.l_tax, 
  lineitem_1.l_orderkey, 
  min(
    lineitem_1.l_partkey), 
  max(
    lineitem_1.l_orderkey)
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_returnflag is not NULL
group by lineitem_1.l_comment, lineitem_1.l_commitdate, lineitem_1.l_discount, lineitem_1.l_linenumber, lineitem_1.l_linestatus, lineitem_1.l_orderkey, lineitem_1.l_partkey, lineitem_1.l_quantity, lineitem_1.l_receiptdate, lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 14;
select  
  lineitem_1.l_receiptdate
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
    inner join nation as nation_1
      inner join orders as orders_1
      on (nation_1.n_nationkey = orders_1.o_orderkey )
    on (lineitem_1.l_orderkey = orders_1.o_orderkey )
where lineitem_1.l_discount < lineitem_1.l_quantity
limit 29;
select  
  part_1.p_brand, 
  part_1.p_retailprice
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
where part_1.p_size >= part_1.p_partkey
limit 23;
select  
  orders_1.o_orderpriority, 
  nation_1.n_name, 
  orders_2.o_comment, 
  lineitem_1.l_orderkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
      inner join lineitem as lineitem_2
        inner join orders as orders_1
        on (lineitem_2.l_orderkey = orders_1.o_orderkey )
      on (lineitem_1.l_orderkey = lineitem_2.l_orderkey )
    inner join orders as orders_2
      inner join region as region_1
        inner join nation as nation_1
        on (region_1.r_regionkey = nation_1.n_nationkey )
      on (orders_2.o_orderkey = region_1.r_regionkey )
    on (orders_1.o_orderkey = orders_2.o_orderkey )
where orders_1.o_custkey is not NULL
limit 7;
select  
  region_1.r_regionkey, 
  region_1.r_comment, 
  region_1.r_comment, 
  region_1.r_name, 
  region_1.r_name
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  region as region_1
where region_1.r_comment is not NULL
limit 11;
select  
  orders_1.o_orderdate, 
  customer_1.c_custkey, 
  min(
    nation_1.n_regionkey), 
  customer_1.c_custkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
      inner join customer as customer_1
      on (orders_1.o_orderkey = customer_1.c_custkey )
    inner join nation as nation_1
    on (orders_1.o_orderkey = nation_1.n_nationkey )
where orders_1.o_shippriority <= nation_1.n_regionkey
group by customer_1.c_custkey, orders_1.o_orderdate
limit 33;
select  
  orders_1.o_orderpriority, 
  orders_1.o_custkey, 
  orders_1.o_orderpriority, 
  orders_1.o_comment
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 8;
select  
  partsupp_1.ps_partkey, 
  partsupp_1.ps_partkey, 
  lineitem_1.l_shipdate, 
  supplier_1.s_name, 
  lineitem_1.l_shipinstruct, 
  max(
    lineitem_1.l_suppkey), 
  partsupp_1.ps_partkey
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  partsupp as partsupp_1
    inner join lineitem as lineitem_1
        inner join supplier as supplier_1
        on (lineitem_1.l_orderkey = supplier_1.s_suppkey )
      inner join nation as nation_1
      on (lineitem_1.l_orderkey = nation_1.n_nationkey )
    on (partsupp_1.ps_partkey = supplier_1.s_suppkey )
where lineitem_1.l_linenumber is not NULL
group by lineitem_1.l_shipdate, lineitem_1.l_shipinstruct, partsupp_1.ps_partkey, supplier_1.s_name
limit 41;
select  
  lineitem_1.l_shipmode, 
  min(
    lineitem_1.l_linenumber), 
  lineitem_1.l_tax
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_suppkey > lineitem_1.l_linenumber
group by lineitem_1.l_shipmode, lineitem_1.l_tax
limit 28;
select  
  part_1.p_type, 
  part_1.p_type
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  part as part_1
      inner join orders as orders_1
      on (part_1.p_partkey = orders_1.o_orderkey )
    inner join supplier as supplier_1
    on (orders_1.o_orderkey = supplier_1.s_suppkey )
where part_1.p_type is not NULL
limit 25;
select  
  supplier_1.s_phone
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  supplier as supplier_1
where supplier_1.s_acctbal is not NULL
limit 36;
select  
  orders_1.o_shippriority
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  orders as orders_1
where orders_1.o_shippriority is not NULL
limit 19;
select  
  lineitem_1.l_suppkey, 
  lineitem_1.l_shipmode, 
  lineitem_1.l_quantity, 
  min(
    lineitem_1.l_orderkey), 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_tax, 
  lineitem_1.l_shipinstruct, 
  lineitem_1.l_linenumber, 
  lineitem_1.l_linenumber
 , provsql.sr_why(provsql.provenance(), 'provmap') from 
  lineitem as lineitem_1
where lineitem_1.l_tax is not NULL
group by lineitem_1.l_linenumber, lineitem_1.l_quantity, lineitem_1.l_shipinstruct, lineitem_1.l_shipmode, lineitem_1.l_suppkey, lineitem_1.l_tax
limit 6;
