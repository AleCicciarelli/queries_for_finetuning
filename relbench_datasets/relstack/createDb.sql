
CREATE TABLE users (
    Id BIGINT PRIMARY KEY,
    AccountId BIGINT,
    Reputation BIGINT,
    Views BIGINT,
    DownVotes BIGINT,
    UpVotes BIGINT,
    DisplayName TEXT,
    Location TEXT,
    ProfileImageUrl TEXT,
    WebsiteUrl TEXT,
    AboutMe TEXT,
    CreationDate TIMESTAMPTZ,
    LastAccessDate TIMESTAMPTZ
);
CREATE TABLE posts (
    Id BIGINT PRIMARY KEY,
    OwnerUserId BIGINT,
    LastEditorUserId BIGINT,
    PostTypeId BIGINT,
    AcceptedAnswerId BIGINT,
    Score BIGINT,
    ParentId BIGINT,
    ViewCount BIGINT,
    AnswerCount BIGINT,
    CommentCount BIGINT,
    OwnerDisplayName TEXT,
    LastEditorDisplayName TEXT,
    Title TEXT,
    Tags TEXT,
    ContentLicense TEXT,
    Body TEXT,
    FavoriteCount BIGINT,
    CreationDate TIMESTAMPTZ,
    CommunityOwnedDate TIMESTAMPTZ,
    ClosedDate TIMESTAMPTZ,
    LastEditDate TIMESTAMPTZ,
    LastActivityDate TIMESTAMPTZ,
    FOREIGN KEY (OwnerUserId) REFERENCES users(Id),
    FOREIGN KEY (LastEditorUserId) REFERENCES users(Id)
);
CREATE TABLE comments (
    Id BIGINT PRIMARY KEY,
    PostId BIGINT,
    UserId BIGINT,
    Score BIGINT,
    UserDisplayName TEXT,
    Text TEXT,
    CreationDate TIMESTAMPTZ,
    FOREIGN KEY (PostId) REFERENCES posts(Id),
    FOREIGN KEY (UserId) REFERENCES users(Id)
);

CREATE TABLE votes (
    Id BIGINT PRIMARY KEY,
    UserId BIGINT,
    PostId BIGINT,
    VoteTypeId BIGINT,
    BountyAmount BIGINT,
    CreationDate TIMESTAMPTZ,
    FOREIGN KEY (PostId) REFERENCES posts(Id),
    FOREIGN KEY (UserId) REFERENCES users(Id)
);

CREATE TABLE postHistory (
    Id BIGINT PRIMARY KEY,
    PostId BIGINT,
    UserId BIGINT,
    PostHistoryTypeId BIGINT,
    UserDisplayName TEXT,
    ContentLicense TEXT,
    RevisionGUID TEXT,
    Text TEXT,
    Comment TEXT,
    CreationDate TIMESTAMPTZ,
    FOREIGN KEY (PostId) REFERENCES posts(Id),
    FOREIGN KEY (UserId) REFERENCES users(Id)
);
CREATE TABLE postLinks (
    Id BIGINT PRIMARY KEY,
    RelatedPostId BIGINT,
    PostId BIGINT,
    LinkTypeId BIGINT,
    CreationDate TIMESTAMPTZ,
    FOREIGN KEY (PostId) REFERENCES posts(Id),
    FOREIGN KEY (RelatedPostId) REFERENCES posts(Id)
);
CREATE TABLE badges (
    Id BIGINT PRIMARY KEY,
    UserId BIGINT,
    Class TEXT,
    Name TEXT,
    TagBased TEXT,
    Date TIMESTAMPTZ,
    FOREIGN KEY (UserId) REFERENCES users(Id)
);

\COPY table_name FROM 'file_name.csv' WITH ( FORMAT csv, DELIMITER ',', HEADER true );
