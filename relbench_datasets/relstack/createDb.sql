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
