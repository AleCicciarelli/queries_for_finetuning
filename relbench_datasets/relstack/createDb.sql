CREATE TABLE IF NOT EXISTS "comments" (
    "Id" BIGINT PRIMARY KEY,
    "PostId" BIGINT,
    "UserId" BIGINT,
    "ContentLicense" TEXT,
    "UserDisplayName" TEXT,
    "Text" TEXT,
    "CreationDate" TIMESTAMP,
    FOREIGN KEY ("UserId") REFERENCES "users"("Id"),
    FOREIGN KEY ("PostId") REFERENCES "posts"("Id")
);

CREATE TABLE IF NOT EXISTS "badges" (
    "Id" BIGINT PRIMARY KEY,
    "UserId" BIGINT,
    "Class" BIGINT,
    "Name" TEXT,
    "TagBased" BOOLEAN,
    "Date" TIMESTAMP,
    FOREIGN KEY ("UserId") REFERENCES "users"("Id")
);

CREATE TABLE IF NOT EXISTS "postLinks" (
    "Id" BIGINT PRIMARY KEY,
    "RelatedPostId" BIGINT,
    "PostId" BIGINT,
    "LinkTypeId" BIGINT,
    "CreationDate" TIMESTAMP,
    FOREIGN KEY ("PostId") REFERENCES "posts"("Id"),
    FOREIGN KEY ("RelatedPostId") REFERENCES "posts"("Id")
);

CREATE TABLE IF NOT EXISTS "postHistory" (
    "Id" BIGINT PRIMARY KEY,
    "PostId" BIGINT,
    "UserId" BIGINT,
    "PostHistoryTypeId" BIGINT,
    "UserDisplayName" TEXT,
    "ContentLicense" TEXT,
    "RevisionGUID" TEXT,
    "Text" TEXT,
    "Comment" TEXT,
    "CreationDate" TIMESTAMP,
    FOREIGN KEY ("PostId") REFERENCES "posts"("Id"),
    FOREIGN KEY ("UserId") REFERENCES "users"("Id")
);

CREATE TABLE IF NOT EXISTS "votes" (
    "Id" BIGINT PRIMARY KEY,
    "UserId" BIGINT,
    "PostId" BIGINT,
    "VoteTypeId" BIGINT,
    "CreationDate" TIMESTAMP,
    FOREIGN KEY ("PostId") REFERENCES "posts"("Id"),
    FOREIGN KEY ("UserId") REFERENCES "users"("Id")
);

CREATE TABLE IF NOT EXISTS "users" (
    "Id" BIGINT PRIMARY KEY,
    "AccountId" BIGINT,
    "DisplayName" TEXT,
    "Location" TEXT,
    "ProfileImageUrl" BIGINT,
    "WebsiteUrl" TEXT,
    "AboutMe" TEXT,
    "CreationDate" TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "posts" (
    "Id" BIGINT PRIMARY KEY,
    "OwnerUserId" BIGINT,
    "PostTypeId" BIGINT,
    "AcceptedAnswerId" BIGINT,
    "ParentId" BIGINT,
    "OwnerDisplayName" TEXT,
    "Title" TEXT,
    "Tags" TEXT,
    "ContentLicense" TEXT,
    "Body" TEXT,
    "CreationDate" TIMESTAMP,
    FOREIGN KEY ("OwnerUserId") REFERENCES "users"("Id"),
    FOREIGN KEY ("ParentId") REFERENCES "posts"("Id"),
    FOREIGN KEY ("AcceptedAnswerId") REFERENCES "posts"("Id")
);


\COPY supplier   FROM '~/Téléchargements/596C7942-ABB4-4554-A8A3-4FE2B368FA4C-TPC-H-Tool/TPC-H V3.0.1/dbgen/data/supplier.csv'   DELIMITER '|' CSV;

select provsql.add_provenance('customer');
select provsql.add_provenance('lineitem');
select provsql.add_provenance('nation');
select provsql.add_provenance('region');
select provsql.add_provenance('part');
select provsql.add_provenance('partsupp');
select provsql.add_provenance('supplier');


select create_provenance_mapping('cust_map', 'customer', 'c_custkey');

select create_provenance_mapping('orders_map', 'orders', 'o_orderkey');
select create_provenance_mapping('line_map', 'lineitem', 'l_orderkey');
select create_provenance_mapping('part_map', 'part', 'p_partkey');
select create_provenance_mapping('supp_map', 'supplier', 's_suppkey');
select create_provenance_mapping('ps_map', 'partsupp', 'ps_suppkey');
select create_provenance_mapping('nation_map', 'nation', 'n_nationkey');
select create_provenance_mapping('region_map', 'region', 'region_' || ROW_NUMBER() OVER (ORDER_BY r_regionkey) as r_regionkey);


create table provmap as 
select * from cust_map
union all
select * from ord_map
union all
select * from line_map
union all
select * from part_map
union all
select * from supp_map
union all
select * from ps_map
union all
select * from nation_map
union all
select * from region_map;   


CREATE TABLE cust_map AS
SELECT 
    c_custkey AS pk,
    provsql,
    'customer_' || ROW_NUMBER() OVER (ORDER BY c_custkey) AS cust_id
FROM customer;
CREATE TABLE ord_map AS
SELECT 
    o_orderkey AS pk,
    provsql,
    'orders_' || ROW_NUMBER() OVER (ORDER BY o_orderkey) AS ord_id
FROM orders;
CREATE TABLE line_map AS
SELECT 
    l_orderkey AS pk,
    provsql,     
    'lineitem_' || ROW_NUMBER() OVER (ORDER BY l_orderkey) AS line_id
FROM lineitem;
CREATE TABLE part_map AS
SELECT 
    p_partkey AS pk,
    provsql,     
    'part_' || ROW_NUMBER() OVER (ORDER BY p_partkey) AS part_id
FROM part;
CREATE TABLE supp_map AS
SELECT 
    s_suppkey AS pk,
    provsql,     
    'supplier_' || ROW_NUMBER() OVER (ORDER BY s_suppkey) AS supp_id
FROM supplier;
CREATE TABLE ps_map AS
SELECT 
    ps_suppkey AS pk,
    provsql,     
    'partsupp_' || ROW_NUMBER() OVER (ORDER BY ps_suppkey) AS ps_id
FROM partsupp;
CREATE TABLE nation_map AS
SELECT 
    n_nationkey AS pk,      
    provsql,     
    'nation_' || ROW_NUMBER() OVER (ORDER BY n_nationkey) AS nation_id
FROM nation;
CREATE TABLE region_map AS
SELECT 
    r_regionkey AS pk,      
    provsql,     
    'region_' || ROW_NUMBER() OVER (ORDER BY r_regionkey) AS region_id
FROM region;        


drop table if exists cust_map;
drop table if exists ord_map;
drop table if exists line_map;
drop table if exists part_map;
drop table if exists supp_map;
drop table if exists ps_map;    
drop table if exists nation_map;
drop table if exists region_map;