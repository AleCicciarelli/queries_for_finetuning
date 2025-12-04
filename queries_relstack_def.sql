select  
  votes.UserId, 
  votes.Id, 
  votes.Id
from 
  votes
where votes.PostId is NULL
limit 79;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  comments.UserDisplayName, 
  comments.Id
from 
  comments
where comments.UserId is NULL
limit 31;
select  
  users.CreationDate, 
  users.CreationDate, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.LinkTypeId, 
  users.DisplayName
from 
  postLinks
    inner join users
    on (users.AccountId >= users.ProfileImageUrl)
where users.AboutMe is NULL
limit 79;
select  
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.UserId
from 
  votes
where votes.PostId >= votes.UserId;
select  
  badges.UserId, 
  badges.Name, 
  badges.Id, 
  badges.Name
from 
  badges
where badges.Name is not NULL;
select  
  postHistory.UserDisplayName
from 
  postHistory
where postHistory.UserDisplayName is not NULL
limit 172;
select  
  votes.PostId, 
  votes.UserId, 
  votes.Id
from 
  votes
where votes.UserId is not NULL
limit 115;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.UserId, 
  max(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as money) as money)), 
  postHistory.ContentLicense, 
  postHistory.PostId
from 
  postHistory
where postHistory.Comment <= postHistory.ContentLicense;
select  
  postLinks.CreationDate, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.CreationDate is not NULL;
select  
  min(
    cast(votes.Id as int8)), 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.PostId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.PostId, 
  votes.Id, 
  votes.Id
from 
  votes
where votes.Id is not NULL
limit 82;
select  
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as float4) as float4)), 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.Id
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 42;
select distinct 
  postHistory.Comment
from 
  postHistory
    inner join postHistory
        inner join votes
            inner join badges
            on (badges.Name >= badges.Name)
          inner join badges
            inner join postHistory
            on (badges.Date = postHistory.CreationDate )
          on (votes.CreationDate <= postHistory.CreationDate)
        on (votes.CreationDate < badges.Date)
      inner join postLinks
      on (badges.TagBased = badges.TagBased)
    on (postHistory.ContentLicense = postHistory.UserDisplayName)
where badges.Name is NULL;
select  
  users.ProfileImageUrl
from 
  users
where users.AccountId is NULL
limit 98;
select  
  badges.Id, 
  badges.Class, 
  badges.Id, 
  badges.UserId
from 
  badges
where badges.UserId is not NULL
limit 178;
select  
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.Id
from 
  postLinks
where postLinks.RelatedPostId >= postLinks.LinkTypeId;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.LinkTypeId is NULL;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.CreationDate
from 
  votes
        inner join postLinks
          inner join postHistory
            inner join postLinks
            on (postLinks.CreationDate > postHistory.CreationDate)
          on (postLinks.LinkTypeId = postHistory.Id )
        on (votes.PostId = postLinks.Id )
      inner join comments
            inner join posts
            on (posts.CreationDate <= posts.CreationDate)
          inner join postLinks
          on (posts.ParentId = postLinks.Id )
        inner join postLinks
          inner join badges
          on (postLinks.CreationDate <= postLinks.CreationDate)
        on (postLinks.PostId >= postLinks.PostId)
      on (postLinks.RelatedPostId <= posts.AcceptedAnswerId)
    inner join postLinks
        inner join users
        on (postLinks.CreationDate > users.CreationDate)
      inner join badges
        inner join postLinks
          inner join votes
                  inner join posts
                  on (posts.Body < posts.Title)
                inner join postHistory
                  inner join votes
                  on (postHistory.RevisionGUID >= postHistory.ContentLicense)
                on (posts.Title > posts.OwnerDisplayName)
              inner join users
              on (postHistory.Comment < users.Location)
            inner join postHistory
            on (users.ProfileImageUrl > users.AccountId)
          on (posts.CreationDate >= postHistory.CreationDate)
        on (users.ProfileImageUrl < users.ProfileImageUrl)
      on (badges.TagBased = badges.TagBased)
    on (postHistory.UserId is not NULL)
where badges.Name is NULL
limit 85;
select  
  postHistory.Id, 
  votes.CreationDate, 
  posts.OwnerUserId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  posts.OwnerUserId, 
  posts.Tags, 
  posts.Body, 
  posts.ContentLicense, 
  max(
    cast(cast(null as "time") as "time")), 
  votes.Id, 
  posts.Body
from 
  votes
      inner join postHistory
      on (postHistory.UserDisplayName > postHistory.RevisionGUID)
    inner join posts
      inner join posts
      on (posts.Title = posts.OwnerDisplayName )
    on (votes.VoteTypeId is not NULL)
where posts.Body is NULL;
select  
  postHistory.UserId
from 
  postHistory
      inner join votes
      on (postHistory.RevisionGUID >= postHistory.UserDisplayName)
    inner join postLinks
          inner join comments
          on (postLinks.Id >= comments.UserId)
        inner join comments
        on (postLinks.Id < postLinks.RelatedPostId)
      inner join comments
            inner join postHistory
            on (comments.UserDisplayName = postHistory.UserDisplayName )
          inner join badges
          on (postHistory.Id < comments.Id)
        inner join postHistory
        on (badges.TagBased > badges.TagBased)
      on (comments.ContentLicense <= postHistory.RevisionGUID)
    on (votes.VoteTypeId is NULL)
where comments.UserDisplayName is not NULL
limit 99;
select  
  votes.VoteTypeId, 
  votes.PostId, 
  votes.PostId, 
  votes.Id
from 
  votes
where votes.UserId is not NULL
limit 43;
select  
  posts.Body, 
  posts.Body
from 
  users
      inner join posts
      on (users.CreationDate = posts.CreationDate)
    inner join postLinks
    on (posts.OwnerUserId is not NULL)
where users.AboutMe is not NULL
limit 76;
select  
  postHistory.PostId, 
  postHistory.RevisionGUID, 
  postHistory.UserId
from 
  postHistory
where postHistory.UserId = postHistory.PostHistoryTypeId
limit 28;
select  
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is NULL;
select  
  badges.UserId, 
  postLinks.PostId, 
  badges.Name, 
  badges.Class
from 
  postLinks
        inner join votes
        on (votes.PostId > votes.UserId)
      inner join badges
        inner join postLinks
        on (badges.UserId = postLinks.Id )
      on (votes.Id = badges.Id )
    inner join users
    on (postLinks.RelatedPostId = users.Id )
where badges.TagBased is NULL;
select  
  badges.Date, 
  badges.Date, 
  comments.UserDisplayName, 
  min(
    cast(cast(null as tid) as tid)), 
  comments.CreationDate, 
  postHistory.ContentLicense, 
  badges.Name, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  badges
      inner join postHistory
      on (postHistory.Comment >= badges.Name)
    inner join postHistory
        inner join comments
          inner join badges
            inner join postHistory
            on (badges.Date = postHistory.CreationDate)
          on (comments.CreationDate <= postHistory.CreationDate)
        on (postHistory.UserDisplayName = badges.Name )
      inner join badges
          inner join comments
            inner join postHistory
            on (comments.CreationDate < postHistory.CreationDate)
          on (postHistory.CreationDate <= badges.Date)
        inner join comments
        on (postHistory.PostHistoryTypeId < badges.Class)
      on (badges.TagBased > badges.TagBased)
    on (postHistory.Text = badges.Name )
where comments.CreationDate is not NULL
limit 109;
select  
  badges.Name, 
  badges.Class, 
  postHistory.UserId
from 
  postLinks
      inner join postLinks
            inner join badges
            on (badges.Name = badges.Name)
          inner join badges
          on (postLinks.CreationDate >= badges.Date)
        inner join votes
        on (badges.Class = votes.Id )
      on (badges.Name > badges.Name)
    inner join badges
        inner join badges
        on (badges.Name <= badges.Name)
      inner join postHistory
      on (badges.UserId <= badges.Id)
    on (votes.Id = badges.Id )
where postLinks.LinkTypeId < badges.Class;
select  
  votes.VoteTypeId, 
  votes.PostId
from 
  votes
where votes.CreationDate is NULL;
select  
  posts.ContentLicense
from 
  badges
    inner join posts
        inner join posts
          inner join postLinks
          on (posts.OwnerUserId = postLinks.Id )
        on (posts.OwnerUserId = postLinks.Id )
      inner join users
      on (users.DisplayName > posts.ContentLicense)
    on (posts.Id is NULL)
where users.AccountId = users.ProfileImageUrl
limit 74;
select  
  badges.Class, 
  badges.Date, 
  badges.Name, 
  badges.Name, 
  badges.Class
from 
  badges
where badges.TagBased <= badges.TagBased
limit 116;
select  
  badges.Date
from 
  badges
    inner join users
    on (badges.Date = users.CreationDate )
where users.CreationDate is NULL;
select  
  postLinks.RelatedPostId, 
  postLinks.Id, 
  max(
    cast(cast(null as date) as date)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is not NULL;
select  
  posts.OwnerUserId
from 
  posts
where posts.Tags is not NULL;
select  
  badges.Class, 
  sum(
    cast(cast(null as int2) as int2))
from 
  badges
where badges.Name is NULL
limit 104;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  comments.CreationDate, 
  comments.UserId, 
  badges.Date, 
  users.CreationDate, 
  badges.UserId, 
  users.Location, 
  badges.Class, 
  users.Id, 
  badges.Name, 
  users.Location, 
  badges.UserId, 
  badges.Id, 
  comments.Id, 
  users.DisplayName, 
  badges.UserId
from 
  badges
    inner join users
      inner join comments
      on (users.DisplayName = comments.Text)
    on (users.ProfileImageUrl < users.ProfileImageUrl)
where users.ProfileImageUrl < users.AccountId
limit 69;
select  
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  max(
    cast(cast(null as oid) as oid)), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 63;
select  
  comments.Id, 
  min(
    cast(cast(null as timetz) as timetz)), 
  users.DisplayName, 
  users.Id, 
  users.AboutMe, 
  users.Location
from 
  users
    inner join comments
    on (comments.CreationDate = users.CreationDate)
where comments.PostId = users.Id
limit 106;
select  
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  votes.UserId, 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.Id, 
  posts.AcceptedAnswerId, 
  postLinks.PostId, 
  postLinks.Id, 
  posts.Id, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  avg(
    cast(82 as int4)), 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.RelatedPostId, 
  posts.OwnerDisplayName
from 
  postLinks
        inner join postLinks
        on (postLinks.RelatedPostId = postLinks.Id )
      inner join votes
        inner join posts
          inner join posts
          on (posts.PostTypeId >= posts.OwnerUserId)
        on (posts.PostTypeId >= votes.VoteTypeId)
      on (postLinks.RelatedPostId > posts.ParentId)
    inner join postLinks
    on (postLinks.PostId is not NULL)
where posts.OwnerUserId is NULL
limit 58;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  postLinks.Id, 
  max(
    cast(cast(null as money) as money)), 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate is NULL
limit 90;
select  
  postHistory.UserId, 
  postHistory.PostId
from 
  posts
          inner join postHistory
          on (postHistory.CreationDate = posts.CreationDate)
        inner join votes
        on (postHistory.CreationDate = posts.CreationDate)
      inner join postLinks
      on (posts.Body >= postHistory.RevisionGUID)
    inner join votes
      inner join votes
      on (votes.Id = votes.PostId)
    on (votes.CreationDate is not NULL)
where postHistory.Id is NULL;
select  
  min(
    cast(cast(null as oid) as oid)), 
  posts.Body, 
  votes.CreationDate, 
  users.Id, 
  postHistory.Comment, 
  users.AccountId, 
  votes.UserId, 
  votes.VoteTypeId
from 
  postHistory
        inner join users
        on (users.ProfileImageUrl = users.AccountId)
      inner join badges
        inner join comments
        on (badges.TagBased < badges.TagBased)
      on (postHistory.UserDisplayName = comments.ContentLicense )
    inner join posts
        inner join votes
        on (votes.VoteTypeId >= votes.PostId)
      inner join comments
      on (comments.CreationDate < posts.CreationDate)
    on (users.DisplayName = postHistory.Text)
where users.WebsiteUrl is not NULL
limit 130;
select  
  badges.Date, 
  max(
    cast(cast(null as date) as date))
from 
  votes
            inner join comments
              inner join badges
              on (comments.UserDisplayName <= badges.Name)
            on (comments.UserId <= votes.Id)
          inner join posts
          on (comments.ContentLicense < posts.Title)
        inner join postLinks
        on (votes.CreationDate >= postLinks.CreationDate)
      inner join badges
      on (badges.TagBased <= badges.TagBased)
    inner join badges
    on (posts.CreationDate <= comments.CreationDate)
where badges.TagBased is not NULL
limit 78;
select  
  users.Id, 
  users.AboutMe, 
  postLinks.PostId, 
  users.Id, 
  postHistory.Comment, 
  comments.ContentLicense, 
  posts.Body
from 
  comments
      inner join postHistory
      on (comments.Id = postHistory.Id )
    inner join posts
      inner join users
          inner join postLinks
                inner join comments
                on (comments.Text = comments.UserDisplayName)
              inner join postHistory
              on (postLinks.LinkTypeId = postHistory.Id )
            inner join postHistory
            on (comments.UserDisplayName <= postHistory.Comment)
          on (users.ProfileImageUrl <= users.ProfileImageUrl)
        inner join users
          inner join users
            inner join postHistory
            on (users.AccountId <= users.AccountId)
          on (users.WebsiteUrl <= users.Location)
        on (postHistory.CreationDate >= postLinks.CreationDate)
      on (posts.Title = users.WebsiteUrl)
    on (comments.UserDisplayName = users.DisplayName )
where users.CreationDate < postHistory.CreationDate
limit 68;
select  
  postHistory.PostId, 
  sum(
    cast(cast(null as int2) as int2)), 
  comments.Id, 
  postLinks.LinkTypeId, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postLinks.PostId, 
  comments.Text, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.PostId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.Id, 
  comments.ContentLicense, 
  postHistory.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as int2) as int2)), 
  postHistory.PostHistoryTypeId, 
  postHistory.Text
from 
  postHistory
      inner join comments
      on (postHistory.Comment = comments.ContentLicense )
    inner join postLinks
    on (postHistory.Id is not NULL)
where postLinks.PostId is not NULL;
select  
  votes.PostId, 
  comments.CreationDate, 
  max(
    cast(badges.UserId as int8)), 
  comments.UserDisplayName, 
  votes.PostId, 
  badges.Name, 
  votes.PostId, 
  votes.VoteTypeId, 
  badges.Date, 
  comments.UserId, 
  min(
    cast(cast(null as money) as money)), 
  comments.Text, 
  votes.Id, 
  votes.VoteTypeId, 
  min(
    cast(cast(null as tid) as tid)), 
  badges.UserId, 
  comments.Id, 
  comments.PostId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.VoteTypeId, 
  badges.Date
from 
  votes
      inner join comments
      on (comments.ContentLicense < comments.UserDisplayName)
    inner join badges
    on (comments.Id is NULL)
where comments.Id is not NULL
limit 78;
select  
  comments.CreationDate, 
  postHistory.Text, 
  postLinks.RelatedPostId, 
  postHistory.CreationDate, 
  postHistory.RevisionGUID, 
  min(
    cast(postHistory.Id as int8))
from 
  comments
    inner join comments
        inner join postHistory
        on (postHistory.UserId = postHistory.PostHistoryTypeId)
      inner join badges
          inner join postLinks
          on (badges.Name >= badges.Name)
        inner join postHistory
        on (badges.Id < postLinks.Id)
      on (comments.ContentLicense < postHistory.Comment)
    on (postLinks.LinkTypeId is NULL)
where postHistory.Text is not NULL;
select  
  votes.Id, 
  votes.Id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  votes.Id, 
  max(
    cast(cast(null as float4) as float4)), 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.Id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.UserId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.UserId
from 
  votes
where votes.PostId is not NULL;
select  
  comments.PostId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.UserId, 
  votes.PostId, 
  comments.CreationDate
from 
  comments
    inner join votes
      inner join votes
      on (votes.PostId <= votes.Id)
    on (votes.Id is NULL)
where votes.CreationDate is not NULL;
select  
  postLinks.Id, 
  posts.Id, 
  votes.PostId, 
  votes.Id
from 
  posts
    inner join votes
      inner join posts
          inner join postHistory
          on (posts.Title = postHistory.Text)
        inner join comments
          inner join votes
              inner join badges
              on (badges.TagBased >= badges.TagBased)
            inner join postLinks
            on (votes.CreationDate >= votes.CreationDate)
          on (comments.PostId = postLinks.Id )
        on (badges.TagBased >= badges.TagBased)
      on (badges.TagBased < badges.TagBased)
    on (votes.UserId is not NULL)
where badges.TagBased < badges.TagBased
limit 98;
select  
  users.Location, 
  users.WebsiteUrl, 
  users.Id, 
  users.AccountId
from 
  users
where users.AccountId is NULL
limit 125;
select  
  users.DisplayName, 
  users.DisplayName, 
  users.DisplayName
from 
  users
where users.DisplayName is not NULL
limit 81;
select  
  votes.UserId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  posts.Title, 
  avg(
    cast(41 as int4)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  postLinks.CreationDate, 
  postHistory.ContentLicense, 
  users.CreationDate
from 
  postHistory
          inner join posts
            inner join badges
            on (posts.Id >= posts.AcceptedAnswerId)
          on (badges.UserId >= badges.Class)
        inner join posts
        on (posts.AcceptedAnswerId > postHistory.PostId)
      inner join badges
      on (posts.AcceptedAnswerId = badges.Id )
    inner join votes
      inner join users
          inner join postLinks
            inner join comments
              inner join postHistory
              on (comments.UserDisplayName <= postHistory.ContentLicense)
            on (postLinks.CreationDate = postHistory.CreationDate )
          on (users.WebsiteUrl = postHistory.UserDisplayName )
        inner join postHistory
        on (postHistory.CreationDate > postHistory.CreationDate)
      on (comments.UserDisplayName = postHistory.UserDisplayName)
    on (users.CreationDate is NULL)
where postHistory.ContentLicense is NULL
limit 86;
select  
  votes.PostId, 
  votes.Id, 
  votes.Id, 
  votes.VoteTypeId
from 
  votes
    inner join votes
    on (votes.UserId = votes.Id )
where votes.VoteTypeId is NULL
limit 55;
select  
  badges.Date, 
  badges.Class, 
  badges.TagBased, 
  badges.Name, 
  badges.UserId, 
  badges.Date, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.Name, 
  badges.Date, 
  badges.Name, 
  badges.Class, 
  badges.Id, 
  avg(
    cast(cast(null as float4) as float4))
from 
  badges
where badges.UserId is NULL
limit 114;
select  
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.Date is not NULL
limit 99;
select  
  badges.Name, 
  comments.Id, 
  votes.VoteTypeId, 
  badges.Name, 
  badges.Id, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.Name
from 
  votes
      inner join comments
      on (comments.CreationDate <= votes.CreationDate)
    inner join badges
          inner join users
          on (badges.TagBased <= badges.TagBased)
        inner join users
        on (users.Id >= badges.Class)
      inner join badges
        inner join users
        on (badges.TagBased = badges.TagBased)
      on (badges.TagBased <= badges.TagBased)
    on (votes.CreationDate = badges.Date )
where badges.Class is NULL;
select  
  badges.TagBased, 
  postHistory.ContentLicense
from 
  comments
      inner join posts
        inner join users
            inner join postHistory
            on (users.AccountId <= users.ProfileImageUrl)
          inner join badges
          on (badges.TagBased > badges.TagBased)
        on (posts.Tags = postHistory.UserDisplayName )
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    inner join votes
      inner join postHistory
      on (votes.PostId = postHistory.Id )
    on (badges.TagBased >= badges.TagBased)
where users.Location is not NULL;
select  
  posts.Tags, 
  posts.Title, 
  posts.OwnerDisplayName, 
  posts.OwnerUserId
from 
  posts
where posts.Body is NULL
limit 157;
select  
  users.Location, 
  max(
    cast(cast(null as money) as money)), 
  users.ProfileImageUrl
from 
  postLinks
    inner join votes
        inner join users
        on (votes.CreationDate > users.CreationDate)
      inner join users
      on (users.Location > users.AboutMe)
    on (users.ProfileImageUrl < users.ProfileImageUrl)
where votes.VoteTypeId is not NULL
limit 184;
select  
  badges.Name, 
  users.WebsiteUrl
from 
  votes
    inner join postHistory
        inner join badges
        on (badges.TagBased >= badges.TagBased)
      inner join badges
            inner join badges
            on (badges.Date = badges.Date )
          inner join users
          on (users.ProfileImageUrl = users.AccountId)
        inner join votes
        on (users.ProfileImageUrl = users.ProfileImageUrl)
      on (postHistory.Id = badges.Id )
    on (users.DisplayName is NULL)
where badges.Id is NULL;
select  
  users.WebsiteUrl, 
  count(
    cast(users.CreationDate as "timestamp")), 
  users.Id, 
  users.Id, 
  users.Id, 
  users.DisplayName, 
  users.Location, 
  users.DisplayName, 
  users.CreationDate, 
  users.WebsiteUrl, 
  users.WebsiteUrl
from 
  users
where users.CreationDate is not NULL
limit 6;
select  
  posts.Id, 
  posts.Title, 
  comments.UserId, 
  sum(
    cast(postHistory.Id as int8)), 
  comments.UserId, 
  users.ProfileImageUrl, 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.LinkTypeId, 
  users.AboutMe, 
  postLinks.LinkTypeId, 
  posts.Body, 
  comments.UserDisplayName, 
  users.WebsiteUrl
from 
  posts
      inner join comments
        inner join users
        on (users.AccountId > users.ProfileImageUrl)
      on (users.CreationDate < users.CreationDate)
    inner join posts
      inner join postLinks
        inner join postHistory
          inner join users
          on (users.CreationDate < users.CreationDate)
        on (postLinks.CreationDate >= users.CreationDate)
      on (postHistory.PostId <= posts.OwnerUserId)
    on (posts.Id > postLinks.PostId)
where postLinks.PostId is not NULL
limit 80;
select  
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.UserDisplayName, 
  comments.Id, 
  comments.UserId
from 
  comments
where comments.CreationDate is not NULL;
select  
  comments.Text, 
  comments.Text, 
  count(
    cast(comments.Text as text))
from 
  comments
where comments.UserDisplayName <= comments.Text;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  badges
    inner join comments
    on (comments.PostId is not NULL)
where comments.Text is NULL
limit 24;
select  
  votes.Id, 
  posts.OwnerUserId
from 
  posts
    inner join votes
        inner join badges
          inner join postLinks
          on (badges.TagBased > badges.TagBased)
        on (badges.Name <= badges.Name)
      inner join badges
              inner join comments
              on (comments.PostId >= badges.UserId)
            inner join posts
              inner join postHistory
              on (posts.Tags = postHistory.UserDisplayName )
            on (badges.Id < comments.PostId)
          inner join votes
          on (comments.CreationDate > votes.CreationDate)
        inner join postLinks
          inner join postLinks
          on (postLinks.LinkTypeId < postLinks.Id)
        on (postHistory.Text >= posts.OwnerDisplayName)
      on (posts.CreationDate >= postHistory.CreationDate)
    on (postHistory.CreationDate is NULL)
where posts.AcceptedAnswerId is not NULL;
select  
  posts.AcceptedAnswerId
from 
  posts
where posts.CreationDate < posts.CreationDate;
select  
  users.Id, 
  users.AccountId, 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.Location, 
  users.Location
from 
  users
where users.AboutMe <= users.WebsiteUrl;
select  
  users.DisplayName, 
  comments.Text, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postHistory.UserDisplayName
from 
  users
    inner join comments
      inner join postLinks
        inner join postHistory
        on (postHistory.CreationDate <= postLinks.CreationDate)
      on (comments.CreationDate >= comments.CreationDate)
    on (comments.ContentLicense is not NULL)
where users.CreationDate is NULL;
select  
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId
from 
  posts
where posts.PostTypeId is not NULL;
select  
  postLinks.LinkTypeId
from 
  users
        inner join postLinks
          inner join votes
          on (postLinks.CreationDate <= votes.CreationDate)
        on (users.DisplayName < users.DisplayName)
      inner join votes
      on (votes.Id = votes.VoteTypeId)
    inner join postLinks
    on (users.DisplayName is NULL)
where postLinks.CreationDate >= postLinks.CreationDate
limit 99;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.PostId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.VoteTypeId
from 
  votes
where votes.VoteTypeId is not NULL
limit 107;
select  
  comments.Id, 
  comments.PostId, 
  comments.Id
from 
  comments
where comments.Text >= comments.UserDisplayName
limit 96;
select  
  max(
    cast(cast(null as int2) as int2))
from 
  badges
where badges.TagBased is not NULL
limit 87;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 104;
select  
  postHistory.ContentLicense, 
  postHistory.PostId
from 
  users
          inner join postHistory
          on (users.CreationDate <= users.CreationDate)
        inner join postHistory
            inner join comments
              inner join postHistory
              on (postHistory.PostId >= postHistory.PostHistoryTypeId)
            on (postHistory.UserId < comments.PostId)
          inner join postLinks
          on (postHistory.UserId >= comments.Id)
        on (users.CreationDate <= postHistory.CreationDate)
      inner join postLinks
      on (comments.PostId <= users.Id)
    inner join postLinks
    on (postLinks.Id is not NULL)
where postHistory.Comment >= postHistory.Comment
limit 81;
select  
  users.CreationDate, 
  users.AccountId, 
  users.Id, 
  users.CreationDate, 
  users.AccountId, 
  users.CreationDate
from 
  users
where users.Id <= users.Id;
select  
  users.CreationDate, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  users.ProfileImageUrl, 
  users.Id, 
  votes.CreationDate
from 
  votes
      inner join users
      on (users.ProfileImageUrl <= users.ProfileImageUrl)
    inner join users
    on (users.DisplayName is not NULL)
where votes.Id is NULL
limit 95;
select  
  votes.VoteTypeId, 
  min(
    cast(cast(null as date) as date))
from 
  votes
where votes.VoteTypeId is NULL;
select  
  comments.Id, 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.ContentLicense, 
  comments.Id, 
  comments.PostId, 
  comments.Text, 
  comments.CreationDate, 
  comments.UserId, 
  comments.Text, 
  comments.Id, 
  comments.UserId, 
  comments.PostId, 
  comments.CreationDate
from 
  comments
where comments.CreationDate > comments.CreationDate
limit 79;
select  
  min(
    cast(cast(null as int2) as int2)), 
  votes.Id, 
  votes.PostId, 
  votes.Id, 
  votes.UserId, 
  votes.UserId, 
  votes.UserId, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.VoteTypeId
from 
  votes
where votes.CreationDate = votes.CreationDate;
select  
  posts.AcceptedAnswerId, 
  posts.Body, 
  posts.CreationDate, 
  posts.PostTypeId, 
  posts.Id, 
  max(
    cast(cast(null as int2) as int2)), 
  posts.PostTypeId, 
  posts.Tags, 
  posts.Title, 
  posts.Body, 
  posts.ContentLicense, 
  posts.ContentLicense, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.ContentLicense, 
  posts.Id
from 
  posts
where posts.OwnerDisplayName is NULL
limit 75;
select  
  comments.UserId
from 
  comments
where comments.CreationDate is NULL
limit 45;
select  
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.PostId = postLinks.Id
limit 58;
select  
  comments.Id, 
  comments.Text, 
  comments.UserId, 
  comments.ContentLicense, 
  comments.UserId, 
  comments.PostId, 
  comments.CreationDate, 
  comments.Text, 
  comments.Id
from 
  comments
where comments.UserDisplayName is not NULL
limit 23;
select  
  comments.PostId, 
  comments.PostId, 
  comments.ContentLicense
from 
  comments
where comments.PostId is NULL;
select  
  users.DisplayName, 
  users.CreationDate, 
  users.Location, 
  users.Id, 
  users.DisplayName
from 
  users
where users.Location is not NULL
limit 135;
select  
  votes.Id
from 
  votes
where votes.VoteTypeId is NULL
limit 127;
select  
  badges.Id, 
  badges.Class, 
  badges.Id, 
  badges.Id
from 
  badges
where badges.Date is not NULL
limit 139;
select  
  badges.Date, 
  badges.Name, 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.UserId, 
  postHistory.Text, 
  count(*), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  badges.Name, 
  comments.UserId, 
  avg(
    cast(88 as int4)), 
  comments.CreationDate, 
  badges.Id, 
  badges.Name, 
  badges.TagBased, 
  badges.Class, 
  postHistory.Comment, 
  count(*), 
  comments.UserId, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  badges.Id, 
  comments.PostId, 
  comments.Id
from 
  badges
    inner join badges
      inner join comments
            inner join badges
            on (comments.PostId <= comments.UserId)
          inner join comments
          on (comments.CreationDate = comments.CreationDate)
        inner join postHistory
        on (badges.TagBased > badges.TagBased)
      on (comments.Text < postHistory.RevisionGUID)
    on (postHistory.UserDisplayName is NULL)
where comments.PostId is NULL
limit 96;
select  
  posts.PostTypeId
from 
  posts
where posts.Tags is NULL
limit 82;
select  
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  comments.PostId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  comments.UserDisplayName, 
  comments.UserId
from 
  comments
where comments.CreationDate is not NULL
limit 167;
select  
  comments.Id, 
  comments.UserDisplayName, 
  posts.Tags, 
  users.CreationDate, 
  users.Id, 
  badges.Date, 
  posts.ContentLicense, 
  postHistory.Comment, 
  postLinks.PostId, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.PostId, 
  comments.UserId, 
  posts.AcceptedAnswerId, 
  users.DisplayName, 
  users.CreationDate, 
  postLinks.CreationDate, 
  comments.PostId, 
  postLinks.CreationDate, 
  postHistory.Text, 
  posts.Body
from 
  postLinks
          inner join posts
            inner join postHistory
            on (posts.PostTypeId <= posts.AcceptedAnswerId)
          on (postHistory.Comment < posts.Body)
        inner join badges
              inner join comments
                inner join users
                on (users.Location = comments.UserDisplayName)
              on (badges.Id = comments.Id )
            inner join posts
            on (posts.ContentLicense = comments.Text)
          inner join postHistory
          on (badges.TagBased <= badges.TagBased)
        on (posts.OwnerDisplayName = postHistory.ContentLicense)
      inner join postLinks
        inner join postLinks
        on (postLinks.PostId = postLinks.Id )
      on (badges.Date >= postLinks.CreationDate)
    inner join comments
          inner join comments
          on (comments.ContentLicense >= comments.ContentLicense)
        inner join comments
        on (comments.CreationDate < comments.CreationDate)
      inner join users
      on (comments.PostId = users.Id )
    on (users.Location = comments.ContentLicense )
where posts.CreationDate is NULL
limit 65;
select  
  posts.ParentId, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as int2) as int2)), 
  votes.PostId, 
  votes.UserId, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postLinks.CreationDate, 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.Id, 
  posts.ContentLicense, 
  votes.Id, 
  postLinks.Id, 
  votes.CreationDate, 
  posts.Tags, 
  min(
    cast(cast(null as xid8) as xid8)), 
  votes.VoteTypeId, 
  min(
    cast(postHistory.CreationDate as "timestamp")), 
  postLinks.RelatedPostId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.UserId, 
  badges.Id, 
  posts.Body, 
  votes.PostId, 
  badges.Name, 
  votes.Id, 
  badges.Id, 
  posts.OwnerUserId, 
  postLinks.CreationDate, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  votes
          inner join votes
            inner join badges
            on (badges.TagBased < badges.TagBased)
          on (badges.Name < badges.Name)
        inner join comments
        on (votes.PostId = comments.Id )
      inner join postHistory
        inner join votes
            inner join postLinks
              inner join postLinks
              on (postLinks.CreationDate = postLinks.CreationDate )
            on (votes.PostId = postLinks.Id )
          inner join votes
          on (postLinks.PostId <= postLinks.RelatedPostId)
        on (votes.CreationDate > postHistory.CreationDate)
      on (postLinks.CreationDate >= votes.CreationDate)
    inner join posts
    on (votes.Id is not NULL)
where votes.CreationDate = votes.CreationDate;
select  
  users.DisplayName, 
  users.WebsiteUrl, 
  users.AboutMe, 
  users.Location, 
  users.CreationDate
from 
  users
where users.WebsiteUrl is not NULL;
select  
  posts.Body, 
  posts.Tags
from 
  posts
    inner join users
      inner join postLinks
      on (postLinks.LinkTypeId > postLinks.RelatedPostId)
    on (posts.ContentLicense = users.DisplayName )
where postLinks.RelatedPostId < postLinks.LinkTypeId
limit 129;
select  
  min(
    cast(postLinks.LinkTypeId as int8)), 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.PostId is not NULL
limit 62;
select  
  votes.PostId, 
  avg(
    cast(cast(null as float4) as float4)), 
  sum(
    cast(cast(null as money) as money)), 
  votes.UserId, 
  comments.Id, 
  posts.Tags
from 
  posts
        inner join comments
        on (posts.Body > posts.ContentLicense)
      inner join posts
      on (posts.CreationDate < posts.CreationDate)
    inner join votes
    on (votes.CreationDate is not NULL)
where votes.PostId is NULL;
select  
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.TagBased < badges.TagBased
limit 85;
select  
  posts.Body
from 
  badges
    inner join posts
    on (posts.OwnerDisplayName is not NULL)
where badges.Date is not NULL
limit 88;
select  
  postLinks.RelatedPostId
from 
  users
        inner join votes
          inner join postLinks
          on (postLinks.Id > votes.PostId)
        on (users.ProfileImageUrl >= users.AccountId)
      inner join comments
      on (users.DisplayName = comments.ContentLicense )
    inner join users
      inner join users
        inner join postHistory
        on (postHistory.PostId < postHistory.UserId)
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    on (comments.Text is not NULL)
where postHistory.CreationDate <= comments.CreationDate
limit 95;
select  
  votes.CreationDate, 
  votes.UserId, 
  badges.UserId, 
  users.CreationDate
from 
  badges
      inner join users
        inner join users
        on (users.AboutMe <= users.AboutMe)
      on (users.ProfileImageUrl <= users.AccountId)
    inner join votes
    on (badges.TagBased < badges.TagBased)
where users.Location is not NULL;
select  
  postLinks.CreationDate
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 133;
select  
  postHistory.PostHistoryTypeId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postHistory.ContentLicense, 
  avg(
    cast(cast(null as float8) as float8)), 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  comments.UserId, 
  postLinks.RelatedPostId, 
  postLinks.PostId
from 
  postHistory
    inner join postLinks
      inner join postLinks
        inner join comments
          inner join postHistory
          on (postHistory.CreationDate < comments.CreationDate)
        on (postHistory.UserId = postLinks.LinkTypeId)
      on (postHistory.ContentLicense = comments.UserDisplayName)
    on (postHistory.CreationDate is NULL)
where postLinks.RelatedPostId is NULL
limit 118;
select  
  badges.UserId, 
  badges.Name, 
  badges.Class, 
  badges.UserId, 
  badges.Class, 
  max(
    cast(badges.Name as text)), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.Date, 
  badges.Date, 
  badges.Name, 
  badges.Date, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  badges.TagBased, 
  badges.Id, 
  badges.UserId, 
  badges.UserId, 
  badges.UserId
from 
  badges
where badges.TagBased is NULL
limit 63;
select  
  comments.PostId, 
  comments.ContentLicense
from 
  comments
where comments.CreationDate is not NULL
limit 162;
select  
  postLinks.CreationDate, 
  badges.Date
from 
  badges
    inner join postLinks
    on (postLinks.LinkTypeId is NULL)
where postLinks.CreationDate is NULL
limit 140;
select  
  min(
    cast(cast(null as float4) as float4)), 
  comments.ContentLicense, 
  votes.UserId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.ContentLicense
from 
  comments
    inner join votes
    on (comments.ContentLicense is not NULL)
where comments.PostId is NULL
limit 80;
select  
  badges.Id, 
  badges.TagBased, 
  badges.Class, 
  min(
    cast(badges.Name as text)), 
  badges.Name
from 
  badges
where badges.Name > badges.Name
limit 61;
select  
  posts.OwnerDisplayName
from 
  posts
where posts.PostTypeId is NULL
limit 103;
select  
  badges.Name, 
  badges.Name, 
  posts.OwnerDisplayName, 
  posts.ContentLicense, 
  badges.Id, 
  badges.Id, 
  votes.PostId, 
  posts.Body
from 
  badges
      inner join posts
      on (badges.Name = posts.Body)
    inner join votes
    on (badges.Name is NULL)
where votes.PostId is not NULL
limit 107;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.Id
from 
  postLinks
where postLinks.PostId >= postLinks.LinkTypeId;
select  
  users.Location, 
  users.CreationDate, 
  users.WebsiteUrl, 
  users.Location, 
  users.AccountId, 
  users.WebsiteUrl, 
  users.DisplayName, 
  min(
    cast(71 as int4)), 
  users.Location, 
  users.Id, 
  users.WebsiteUrl, 
  users.AccountId, 
  users.ProfileImageUrl
from 
  users
where users.DisplayName is NULL
limit 10;
select  
  posts.ParentId, 
  posts.ParentId, 
  postHistory.Text, 
  posts.OwnerDisplayName, 
  posts.PostTypeId, 
  sum(
    cast(cast(null as float4) as float4))
from 
  postHistory
    inner join posts
    on (posts.Id is NULL)
where postHistory.RevisionGUID is not NULL;
select  
  votes.Id, 
  votes.UserId
from 
  votes
    inner join votes
    on (votes.UserId is NULL)
where votes.UserId is NULL;
select  
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  posts
where posts.PostTypeId is NULL
limit 90;
select  
  postHistory.Text, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.Text is not NULL;
select  
  badges.TagBased, 
  posts.AcceptedAnswerId, 
  badges.UserId, 
  posts.Body, 
  min(
    cast(cast(null as money) as money)), 
  badges.TagBased, 
  posts.ContentLicense, 
  posts.ContentLicense, 
  badges.TagBased, 
  posts.PostTypeId, 
  badges.TagBased, 
  posts.ContentLicense, 
  sum(
    cast(posts.PostTypeId as int8)), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  badges.TagBased, 
  posts.CreationDate, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.Class, 
  posts.Id, 
  posts.OwnerUserId, 
  posts.Id, 
  sum(
    cast(cast(null as int2) as int2)), 
  badges.UserId, 
  posts.OwnerDisplayName
from 
  badges
    inner join posts
    on (posts.ContentLicense > posts.OwnerDisplayName)
where badges.TagBased <= badges.TagBased
limit 132;
select  
  badges.Class, 
  badges.Class
from 
  badges
where badges.Id is not NULL;
select  
  votes.Id, 
  users.Location, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  users.ProfileImageUrl
from 
  votes
    inner join users
    on (users.CreationDate is not NULL)
where users.WebsiteUrl is not NULL
limit 114;
select  
  sum(
    cast(votes.PostId as int8)), 
  postLinks.RelatedPostId, 
  posts.Id, 
  votes.CreationDate, 
  postHistory.Id, 
  postHistory.Text, 
  postLinks.LinkTypeId, 
  badges.Name, 
  badges.Name, 
  comments.UserId, 
  posts.Body, 
  badges.TagBased, 
  badges.Id
from 
  postHistory
      inner join postLinks
            inner join badges
            on (postLinks.Id > badges.UserId)
          inner join votes
          on (postLinks.CreationDate >= postLinks.CreationDate)
        inner join posts
        on (votes.CreationDate <= postLinks.CreationDate)
      on (posts.Tags <= posts.Title)
    inner join votes
      inner join postHistory
            inner join postHistory
            on (postHistory.CreationDate < postHistory.CreationDate)
          inner join postHistory
            inner join comments
            on (comments.Text = postHistory.ContentLicense)
          on (postHistory.Id = comments.Id )
        inner join users
                inner join badges
                on (badges.TagBased < badges.TagBased)
              inner join postHistory
              on (users.ProfileImageUrl > users.AccountId)
            inner join posts
            on (users.CreationDate <= users.CreationDate)
          inner join postLinks
            inner join postLinks
            on (postLinks.RelatedPostId >= postLinks.LinkTypeId)
          on (postLinks.Id > postLinks.Id)
        on (badges.TagBased = badges.TagBased)
      on (users.AboutMe > comments.UserDisplayName)
    on (comments.CreationDate >= votes.CreationDate)
where postHistory.CreationDate is not NULL
limit 146;
select  
  postLinks.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.LinkTypeId is not NULL;
select  
  comments.Text, 
  comments.UserDisplayName
from 
  comments
where comments.Id is not NULL
limit 91;
select  
  users.AboutMe, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.Id, 
  users.DisplayName, 
  min(
    cast(users.Id as int8)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.Location, 
  users.CreationDate, 
  users.DisplayName, 
  users.Location, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.AccountId, 
  users.AboutMe, 
  users.Id, 
  users.Id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as inet) as inet)), 
  users.DisplayName, 
  users.CreationDate, 
  users.DisplayName, 
  users.AccountId, 
  users.DisplayName
from 
  users
where users.Id = users.Id
limit 154;
select  
  votes.CreationDate
from 
  votes
where votes.PostId > votes.UserId;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.PostId is NULL
limit 30;
select  
  votes.CreationDate, 
  postLinks.LinkTypeId, 
  votes.VoteTypeId
from 
  postLinks
      inner join votes
      on (postLinks.Id = votes.Id )
    inner join votes
    on (postLinks.CreationDate is not NULL)
where votes.VoteTypeId is NULL
limit 154;
select  
  badges.Id, 
  badges.Class
from 
  badges
where badges.Date is not NULL
limit 84;
select  
  posts.Body, 
  posts.Id, 
  posts.OwnerUserId, 
  posts.Tags, 
  posts.ContentLicense, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.CreationDate, 
  posts.Body, 
  posts.OwnerDisplayName, 
  posts.OwnerDisplayName, 
  posts.Body, 
  posts.Body, 
  posts.AcceptedAnswerId, 
  max(
    cast(cast(null as inet) as inet))
from 
  posts
where posts.ParentId is NULL
limit 70;
select  
  users.AboutMe, 
  users.Id, 
  users.WebsiteUrl, 
  users.Id, 
  users.ProfileImageUrl, 
  users.WebsiteUrl
from 
  users
where users.WebsiteUrl is NULL
limit 111;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postHistory.UserDisplayName
from 
  postLinks
          inner join badges
            inner join postLinks
            on (badges.TagBased = badges.TagBased)
          on (postLinks.RelatedPostId = badges.Id )
        inner join posts
        on (postLinks.CreationDate = posts.CreationDate )
      inner join postLinks
      on (posts.CreationDate > postLinks.CreationDate)
    inner join postHistory
      inner join badges
      on (postHistory.PostId = badges.Id )
    on (badges.Date is not NULL)
where postLinks.CreationDate > postLinks.CreationDate;
select  
  comments.CreationDate, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as int2) as int2)), 
  comments.Text, 
  posts.ContentLicense
from 
  posts
    inner join comments
    on (comments.CreationDate > posts.CreationDate)
where posts.ContentLicense is not NULL;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id, 
  sum(
    cast(45 as int4))
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 80;
select  
  posts.AcceptedAnswerId, 
  badges.Class, 
  badges.Id, 
  posts.ContentLicense, 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.Location, 
  votes.Id, 
  users.AboutMe, 
  users.Location, 
  badges.UserId, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.AboutMe, 
  min(
    cast(cast(null as date) as date)), 
  users.Location, 
  postHistory.ContentLicense, 
  users.CreationDate, 
  users.ProfileImageUrl, 
  posts.ContentLicense, 
  users.WebsiteUrl, 
  badges.Class
from 
  badges
      inner join users
              inner join users
              on (users.WebsiteUrl <= users.AboutMe)
            inner join postHistory
              inner join users
              on (users.CreationDate > postHistory.CreationDate)
            on (users.Id >= postHistory.UserId)
          inner join users
          on (users.CreationDate <= users.CreationDate)
        inner join votes
        on (users.AccountId = users.AccountId)
      on (badges.TagBased >= badges.TagBased)
    inner join posts
        inner join posts
        on (posts.AcceptedAnswerId >= posts.OwnerUserId)
      inner join badges
      on (badges.TagBased = badges.TagBased)
    on (posts.Id is not NULL)
where users.AccountId <= users.AccountId
limit 87;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  comments.UserDisplayName
from 
  comments
where comments.Text is not NULL
limit 88;
select  
  postLinks.PostId, 
  min(
    cast(postLinks.RelatedPostId as int8)), 
  max(
    cast(cast(null as date) as date)), 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as inet) as inet)), 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  avg(
    cast(cast(null as float8) as float8)), 
  postLinks.Id, 
  postLinks.Id, 
  min(
    cast(cast(null as money) as money)), 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id is NULL
limit 78;
select  
  badges.Id, 
  badges.Date
from 
  badges
where badges.Date < badges.Date;
select  
  comments.UserDisplayName, 
  votes.CreationDate, 
  postHistory.UserDisplayName
from 
  postHistory
    inner join comments
      inner join postHistory
        inner join votes
        on (votes.CreationDate >= votes.CreationDate)
      on (comments.UserId = votes.Id )
    on (postHistory.ContentLicense = postHistory.UserDisplayName )
where comments.ContentLicense is not NULL
limit 140;
select  
  badges.TagBased, 
  badges.Name, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.CreationDate
from 
  postHistory
            inner join comments
              inner join postHistory
              on (postHistory.CreationDate >= postHistory.CreationDate)
            on (postHistory.Comment >= postHistory.Text)
          inner join posts
          on (postHistory.UserId = posts.Id )
        inner join users
          inner join posts
              inner join postLinks
              on (posts.ParentId = postLinks.Id )
            inner join badges
                inner join postHistory
                on (postHistory.UserDisplayName > postHistory.RevisionGUID)
              inner join posts
              on (posts.Title < posts.Title)
            on (badges.TagBased >= badges.TagBased)
          on (badges.TagBased < badges.TagBased)
        on (comments.CreationDate > postHistory.CreationDate)
      inner join badges
      on (postHistory.UserId < posts.OwnerUserId)
    inner join badges
      inner join posts
        inner join postHistory
          inner join posts
          on (posts.CreationDate > postHistory.CreationDate)
        on (posts.Title = posts.OwnerDisplayName )
      on (badges.Name = posts.OwnerDisplayName )
    on (postHistory.Id is NULL)
where users.ProfileImageUrl <= users.ProfileImageUrl
limit 98;
select  
  users.ProfileImageUrl, 
  users.ProfileImageUrl
from 
  votes
    inner join users
    on (votes.Id = users.Id )
where votes.PostId > users.Id
limit 151;
select  
  min(
    cast(cast(null as int2) as int2)), 
  posts.Body, 
  posts.OwnerUserId, 
  posts.Title, 
  posts.PostTypeId, 
  posts.ContentLicense, 
  posts.ContentLicense, 
  posts.CreationDate
from 
  posts
where posts.Body < posts.Title
limit 108;
select  
  comments.CreationDate, 
  posts.OwnerDisplayName, 
  users.AccountId, 
  postLinks.CreationDate, 
  users.DisplayName, 
  postHistory.CreationDate, 
  badges.Id, 
  sum(
    cast(55 as int4)), 
  postLinks.RelatedPostId, 
  users.Id, 
  users.AccountId, 
  postLinks.PostId, 
  max(
    cast(badges.UserId as int8)), 
  users.ProfileImageUrl, 
  users.DisplayName, 
  postLinks.PostId, 
  postLinks.PostId
from 
  users
        inner join postLinks
            inner join users
            on (users.AboutMe < users.AboutMe)
          inner join users
          on (users.AccountId <= users.AccountId)
        on (postLinks.CreationDate <= users.CreationDate)
      inner join postHistory
      on (users.CreationDate > postLinks.CreationDate)
    inner join users
            inner join comments
            on (comments.CreationDate <= comments.CreationDate)
          inner join postLinks
              inner join badges
              on (badges.TagBased >= badges.TagBased)
            inner join comments
            on (postLinks.RelatedPostId < comments.Id)
          on (comments.CreationDate = users.CreationDate)
        inner join posts
        on (comments.UserDisplayName = posts.OwnerDisplayName )
      inner join postHistory
      on (postHistory.CreationDate <= comments.CreationDate)
    on (comments.ContentLicense is not NULL)
where badges.TagBased > badges.TagBased
limit 45;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  users.AboutMe, 
  comments.UserDisplayName, 
  comments.UserDisplayName, 
  comments.Text, 
  users.CreationDate, 
  users.DisplayName, 
  users.DisplayName, 
  users.AccountId, 
  comments.PostId, 
  users.AccountId
from 
  users
    inner join comments
    on (comments.CreationDate <= users.CreationDate)
where comments.UserDisplayName is NULL
limit 94;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.OwnerDisplayName, 
  posts.Tags, 
  posts.OwnerUserId, 
  posts.OwnerUserId, 
  posts.Id
from 
  posts
where posts.ContentLicense is not NULL
limit 30;
select  
  badges.Id, 
  badges.Class, 
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.Date <= badges.Date
limit 107;
select  
  badges.Class, 
  badges.TagBased, 
  badges.UserId, 
  badges.UserId, 
  badges.Date
from 
  badges
where badges.TagBased is NULL;
select  
  max(
    cast(posts.CreationDate as "timestamp")), 
  posts.CreationDate, 
  comments.Id, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as xid8) as xid8)), 
  postLinks.RelatedPostId
from 
  postHistory
        inner join votes
          inner join posts
            inner join votes
            on (posts.ParentId = votes.Id )
          on (votes.VoteTypeId < posts.AcceptedAnswerId)
        on (postHistory.Comment = postHistory.RevisionGUID)
      inner join posts
        inner join users
            inner join postLinks
            on (postLinks.LinkTypeId < postLinks.Id)
          inner join postLinks
            inner join posts
            on (postLinks.RelatedPostId = posts.Id )
          on (postLinks.CreationDate >= users.CreationDate)
        on (posts.Tags = users.DisplayName )
      on (postHistory.CreationDate = posts.CreationDate)
    inner join users
            inner join comments
            on (users.CreationDate > users.CreationDate)
          inner join users
            inner join comments
            on (comments.CreationDate > comments.CreationDate)
          on (users.AboutMe >= users.Location)
        inner join badges
        on (users.ProfileImageUrl <= users.AccountId)
      inner join comments
      on (users.CreationDate > comments.CreationDate)
    on (votes.VoteTypeId = comments.Id )
where users.ProfileImageUrl > users.ProfileImageUrl
limit 150;
select  
  votes.CreationDate, 
  users.WebsiteUrl, 
  users.Location
from 
  posts
    inner join votes
      inner join postHistory
        inner join users
          inner join postLinks
            inner join badges
            on (badges.Name = badges.Name)
          on (badges.TagBased < badges.TagBased)
        on (users.AccountId > users.AccountId)
      on (votes.VoteTypeId = postHistory.Id )
    on (posts.CreationDate is not NULL)
where votes.Id is NULL;
select  
  users.Id, 
  users.DisplayName, 
  min(
    cast(cast(null as "time") as "time")), 
  users.AboutMe, 
  max(
    cast(users.AccountId as float8)), 
  users.WebsiteUrl, 
  users.Location, 
  avg(
    cast(users.AccountId as float8)), 
  users.AboutMe, 
  users.CreationDate, 
  users.AccountId
from 
  users
where users.ProfileImageUrl is NULL;
select  
  postHistory.Comment, 
  badges.Id, 
  sum(
    cast(cast(null as int2) as int2)), 
  badges.UserId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.PostId, 
  votes.PostId, 
  postHistory.RevisionGUID, 
  postHistory.ContentLicense, 
  badges.TagBased, 
  postHistory.UserId, 
  badges.Class, 
  postHistory.CreationDate, 
  badges.UserId, 
  postHistory.Comment
from 
  postHistory
        inner join votes
        on (postHistory.UserDisplayName > postHistory.ContentLicense)
      inner join postHistory
      on (votes.Id >= votes.Id)
    inner join badges
    on (postHistory.Text is NULL)
where postHistory.PostId is not NULL;
select  
  postHistory.Id, 
  postHistory.PostHistoryTypeId
from 
  comments
          inner join posts
              inner join votes
              on (votes.CreationDate = posts.CreationDate)
            inner join users
            on (users.WebsiteUrl < posts.ContentLicense)
          on (posts.CreationDate < users.CreationDate)
        inner join postHistory
        on (comments.CreationDate >= comments.CreationDate)
      inner join votes
        inner join postHistory
        on (votes.Id >= votes.VoteTypeId)
      on (votes.VoteTypeId = postHistory.Id )
    inner join postLinks
              inner join users
              on (users.Id < users.Id)
            inner join postHistory
            on (postHistory.CreationDate = users.CreationDate)
          inner join votes
            inner join comments
              inner join comments
              on (comments.CreationDate = comments.CreationDate)
            on (votes.VoteTypeId > votes.UserId)
          on (users.AccountId > users.AccountId)
        inner join postLinks
          inner join comments
          on (postLinks.CreationDate < comments.CreationDate)
        on (postLinks.PostId > comments.PostId)
      inner join users
        inner join votes
        on (users.CreationDate >= votes.CreationDate)
      on (postLinks.LinkTypeId = votes.Id )
    on (postHistory.Id is not NULL)
where postHistory.ContentLicense is not NULL
limit 23;
select  
  postHistory.PostId, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postHistory.ContentLicense, 
  postHistory.UserId
from 
  postHistory
where postHistory.UserId is not NULL;
select  
  votes.CreationDate, 
  votes.Id, 
  votes.VoteTypeId
from 
  votes
where votes.Id is not NULL
limit 82;
select  
  posts.Title, 
  avg(
    cast(postLinks.LinkTypeId as int8)), 
  comments.Text, 
  min(
    cast(cast(null as oid) as oid)), 
  posts.PostTypeId, 
  posts.Tags
from 
  posts
    inner join comments
      inner join postLinks
      on (comments.Id = postLinks.Id )
    on (comments.Id >= posts.PostTypeId)
where posts.OwnerDisplayName is NULL
limit 79;
select  
  badges.TagBased, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  postLinks
            inner join users
            on (users.Location <= users.Location)
          inner join postLinks
          on (users.ProfileImageUrl <= users.ProfileImageUrl)
        inner join users
        on (postLinks.LinkTypeId = users.Id)
      inner join badges
          inner join badges
          on (badges.TagBased < badges.TagBased)
        inner join votes
        on (badges.Date < badges.Date)
      on (users.ProfileImageUrl = users.AccountId)
    inner join comments
    on (users.DisplayName = comments.ContentLicense )
where users.AccountId is NULL;
select  
  comments.UserDisplayName
from 
  users
      inner join badges
          inner join comments
                inner join postHistory
                on (comments.Id < postHistory.PostHistoryTypeId)
              inner join posts
              on (postHistory.Id = posts.Id )
            inner join votes
            on (posts.Id = postHistory.Id)
          on (votes.CreationDate <= badges.Date)
        inner join posts
          inner join badges
          on (posts.PostTypeId = badges.Id )
        on (badges.TagBased = badges.TagBased)
      on (postHistory.UserId > users.Id)
    inner join posts
      inner join votes
          inner join comments
          on (comments.Text >= comments.Text)
        inner join comments
        on (votes.VoteTypeId = comments.Id)
      on (posts.PostTypeId > posts.ParentId)
    on (comments.ContentLicense >= comments.Text)
where postHistory.PostId is not NULL
limit 121;
select  
  posts.PostTypeId
from 
  posts
where posts.ParentId is not NULL
limit 95;
select  
  min(
    cast(cast(null as int2) as int2)), 
  badges.TagBased, 
  badges.TagBased, 
  badges.Name, 
  badges.Class, 
  badges.TagBased, 
  badges.Id, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Id, 
  badges.Class, 
  badges.Date, 
  badges.Date, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  min(
    cast(16 as int4)), 
  badges.Id
from 
  badges
where badges.UserId is NULL
limit 99;
select  
  comments.Text, 
  comments.Id, 
  max(
    cast(cast(null as money) as money))
from 
  comments
where comments.ContentLicense is NULL;
select  
  badges.TagBased, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  sum(
    cast(58 as int4)), 
  badges.TagBased
from 
  badges
where badges.Class is not NULL
limit 129;
select  
  users.AccountId, 
  min(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as int2) as int2))
from 
  badges
    inner join posts
          inner join users
            inner join comments
            on (comments.CreationDate <= users.CreationDate)
          on (posts.AcceptedAnswerId > users.Id)
        inner join users
        on (posts.ParentId >= users.Id)
      inner join badges
      on (users.Id <= posts.AcceptedAnswerId)
    on (posts.CreationDate is not NULL)
where posts.Title = comments.Text
limit 86;
select  
  postHistory.Text, 
  badges.Date, 
  votes.PostId, 
  min(
    cast(users.AccountId as float8)), 
  votes.CreationDate, 
  badges.Date, 
  postHistory.Id, 
  badges.UserId, 
  users.AboutMe, 
  badges.Name, 
  votes.VoteTypeId, 
  badges.UserId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  avg(
    cast(cast(null as int2) as int2)), 
  badges.Name, 
  postHistory.PostId, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.WebsiteUrl
from 
  users
    inner join postHistory
        inner join badges
        on (badges.Date >= badges.Date)
      inner join votes
      on (postHistory.CreationDate <= votes.CreationDate)
    on (users.Id is not NULL)
where postHistory.ContentLicense < users.Location
limit 52;
select  
  users.DisplayName, 
  users.AccountId, 
  users.Id, 
  users.AboutMe
from 
  users
where users.AccountId is not NULL;
select  
  users.AccountId, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.Text, 
  users.AccountId
from 
  votes
      inner join comments
        inner join postLinks
        on (comments.UserDisplayName = comments.UserDisplayName)
      on (postLinks.CreationDate > votes.CreationDate)
    inner join users
      inner join users
      on (users.WebsiteUrl > users.AboutMe)
    on (postLinks.Id is not NULL)
where users.AboutMe is NULL
limit 11;
select  
  postLinks.LinkTypeId, 
  min(
    cast(badges.Id as int8)), 
  min(
    cast(badges.Class as int8)), 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  badges.Class, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  badges.Name
from 
  badges
    inner join postLinks
    on (postLinks.RelatedPostId is NULL)
where badges.Name is not NULL
limit 117;
select  
  avg(
    cast(comments.Id as int8)), 
  postHistory.PostId
from 
  comments
    inner join postHistory
    on (postHistory.Text <= comments.UserDisplayName)
where comments.ContentLicense is NULL;
select  
  posts.ParentId, 
  posts.OwnerUserId, 
  comments.ContentLicense, 
  postLinks.Id, 
  badges.Name, 
  comments.UserId, 
  badges.UserId, 
  posts.Body, 
  comments.CreationDate, 
  posts.OwnerDisplayName, 
  posts.Tags, 
  posts.Body, 
  posts.ParentId, 
  badges.Id, 
  comments.Id, 
  max(
    cast(cast(null as money) as money)), 
  posts.ContentLicense, 
  posts.ParentId, 
  posts.OwnerUserId, 
  badges.Name, 
  badges.TagBased
from 
  posts
        inner join postLinks
        on (postLinks.CreationDate > posts.CreationDate)
      inner join badges
            inner join posts
            on (badges.UserId <= posts.AcceptedAnswerId)
          inner join comments
          on (comments.CreationDate <= posts.CreationDate)
        inner join posts
        on (badges.Id = posts.Id )
      on (badges.TagBased <= badges.TagBased)
    inner join badges
        inner join badges
        on (badges.TagBased = badges.TagBased )
      inner join posts
        inner join comments
        on (comments.PostId = posts.Id)
      on (badges.TagBased = badges.TagBased)
    on (badges.UserId is not NULL)
where comments.PostId is not NULL
limit 161;
select  
  comments.PostId, 
  comments.Text
from 
  comments
where comments.UserId is not NULL;
select  
  badges.UserId, 
  badges.TagBased, 
  comments.CreationDate, 
  comments.ContentLicense, 
  comments.UserId, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  badges
    inner join comments
    on (comments.UserDisplayName is NULL)
where comments.CreationDate is NULL
limit 103;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  avg(
    cast(82 as int4)), 
  postLinks.Id, 
  postLinks.Id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.Id
from 
  postLinks
where postLinks.PostId is not NULL;
select  
  comments.ContentLicense, 
  min(
    cast(comments.UserDisplayName as text)), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.PostId, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.Text, 
  comments.Text, 
  comments.ContentLicense
from 
  comments
where comments.UserId is NULL;
select  
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.PostId, 
  avg(
    cast(cast(null as int2) as int2)), 
  votes.UserId, 
  min(
    cast(cast(null as oid) as oid)), 
  votes.CreationDate, 
  votes.Id, 
  votes.Id, 
  votes.UserId, 
  votes.Id, 
  votes.Id, 
  votes.PostId
from 
  votes
where votes.VoteTypeId is not NULL;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.PostId is not NULL
limit 48;
select  
  max(
    cast(cast(null as money) as money))
from 
  badges
where badges.Id is not NULL
limit 62;
select  
  badges.Id, 
  postLinks.LinkTypeId, 
  users.CreationDate, 
  min(
    cast(cast(null as date) as date)), 
  min(
    cast(users.AboutMe as text)), 
  users.Id, 
  badges.Date, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  users.Id, 
  users.CreationDate
from 
  users
      inner join comments
          inner join postLinks
          on (postLinks.PostId = comments.UserId)
        inner join postHistory
            inner join votes
              inner join postLinks
              on (votes.VoteTypeId < postLinks.LinkTypeId)
            on (postLinks.RelatedPostId > postLinks.LinkTypeId)
          inner join users
          on (postHistory.ContentLicense <= postHistory.ContentLicense)
        on (users.AboutMe > postHistory.ContentLicense)
      on (users.CreationDate = comments.CreationDate )
    inner join users
        inner join postHistory
        on (users.AccountId = users.ProfileImageUrl)
      inner join badges
      on (postHistory.PostId = badges.Id )
    on (postHistory.CreationDate is not NULL)
where badges.TagBased <= badges.TagBased;
select  
  users.AccountId
from 
  users
where users.Id < users.Id
limit 109;
select  
  postLinks.LinkTypeId, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  avg(
    cast(cast(null as int2) as int2)), 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  max(
    cast(postLinks.RelatedPostId as int8))
from 
  postLinks
    inner join postLinks
    on (postLinks.RelatedPostId = postLinks.Id )
where postLinks.CreationDate <= postLinks.CreationDate
limit 33;
select  
  badges.Date
from 
  votes
    inner join badges
    on (badges.Class is not NULL)
where badges.Date > votes.CreationDate
limit 96;
select  
  comments.Text, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as inet) as inet)), 
  sum(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  comments.PostId, 
  postLinks.Id, 
  posts.ParentId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  posts.AcceptedAnswerId, 
  postLinks.PostId, 
  postLinks.RelatedPostId
from 
  comments
    inner join postLinks
        inner join postLinks
        on (postLinks.RelatedPostId < postLinks.LinkTypeId)
      inner join posts
          inner join postLinks
          on (posts.ParentId = postLinks.Id )
        inner join postLinks
        on (posts.ContentLicense <= posts.ContentLicense)
      on (posts.OwnerDisplayName > posts.Title)
    on (comments.Id = postLinks.Id )
where postLinks.CreationDate is NULL
limit 148;
select  
  posts.PostTypeId, 
  posts.Tags, 
  posts.Body, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  count(*), 
  max(
    cast(cast(null as tid) as tid))
from 
  posts
where posts.OwnerDisplayName is not NULL;
select distinct 
  users.WebsiteUrl, 
  users.ProfileImageUrl
from 
  users
where users.Location <= users.WebsiteUrl;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  badges.Name, 
  badges.Date, 
  badges.Name, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.Id, 
  badges.Id
from 
  badges
where badges.UserId is not NULL;
select  
  badges.TagBased, 
  badges.Class, 
  badges.Name, 
  badges.Date
from 
  badges
    inner join badges
    on (badges.Class is not NULL)
where badges.Id >= badges.UserId
limit 155;
select  
  votes.UserId, 
  votes.UserId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  badges.Name, 
  postLinks.RelatedPostId, 
  votes.Id, 
  postLinks.LinkTypeId, 
  comments.UserDisplayName, 
  votes.VoteTypeId
from 
  votes
      inner join comments
          inner join votes
            inner join postHistory
              inner join postLinks
              on (postHistory.PostHistoryTypeId = postLinks.Id )
            on (votes.CreationDate < postHistory.CreationDate)
          on (postLinks.RelatedPostId >= postLinks.Id)
        inner join badges
        on (votes.CreationDate > comments.CreationDate)
      on (votes.CreationDate = postHistory.CreationDate )
    inner join votes
      inner join votes
        inner join users
        on (users.ProfileImageUrl = users.ProfileImageUrl)
      on (votes.Id < votes.Id)
    on (postLinks.CreationDate is not NULL)
where postHistory.Id is not NULL
limit 135;
select  
  max(
    cast(cast(null as tid) as tid))
from 
  badges
where badges.Class > badges.UserId
limit 124;
select  
  badges.Id, 
  badges.Id, 
  min(
    cast(badges.Name as text)), 
  badges.Class, 
  badges.Date
from 
  badges
where badges.Name is NULL;
select  
  postHistory.Id, 
  sum(
    cast(67 as int4)), 
  badges.TagBased, 
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  postHistory.UserDisplayName, 
  postHistory.Id, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postHistory.Text, 
  badges.Class, 
  postHistory.PostHistoryTypeId, 
  badges.Date, 
  badges.UserId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.CreationDate, 
  max(
    cast(cast(null as date) as date)), 
  postLinks.PostId, 
  postHistory.UserDisplayName
from 
  badges
      inner join postLinks
      on (badges.Date <= postLinks.CreationDate)
    inner join postHistory
    on (postHistory.Id is NULL)
where badges.UserId is NULL
limit 124;
select  
  comments.Text, 
  comments.UserId, 
  comments.Text, 
  comments.CreationDate, 
  comments.PostId, 
  max(
    cast(comments.Text as text)), 
  comments.UserId, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.PostId, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  comments.CreationDate, 
  comments.Text, 
  comments.UserId, 
  comments.Id, 
  comments.ContentLicense, 
  sum(
    cast(76 as int4)), 
  comments.CreationDate, 
  comments.UserId, 
  comments.ContentLicense, 
  comments.Id, 
  max(
    cast(cast(null as int2) as int2)), 
  comments.UserId, 
  comments.CreationDate, 
  comments.CreationDate, 
  min(
    cast(cast(null as inet) as inet)), 
  comments.UserDisplayName, 
  comments.Id
from 
  comments
where comments.Text is NULL
limit 109;
select  
  votes.PostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  votes.CreationDate, 
  postLinks.CreationDate, 
  votes.PostId, 
  votes.Id, 
  comments.UserId, 
  comments.Id, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.Id, 
  badges.Date, 
  postLinks.LinkTypeId, 
  min(
    cast(15 as int4)), 
  postLinks.PostId, 
  postLinks.CreationDate
from 
  postLinks
        inner join badges
        on (badges.Date >= badges.Date)
      inner join comments
          inner join votes
          on (comments.UserDisplayName < comments.ContentLicense)
        inner join votes
        on (votes.CreationDate <= comments.CreationDate)
      on (comments.ContentLicense = comments.UserDisplayName)
    inner join postLinks
      inner join votes
      on (postLinks.PostId = votes.Id )
    on (badges.Id is not NULL)
where votes.VoteTypeId is not NULL
limit 118;
select  
  postLinks.RelatedPostId, 
  min(
    cast(14 as int4)), 
  postLinks.RelatedPostId, 
  badges.TagBased, 
  posts.ContentLicense, 
  min(
    cast(postHistory.RevisionGUID as text)), 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.UserId, 
  badges.Name, 
  posts.Id, 
  postHistory.Text
from 
  postLinks
          inner join comments
          on (postLinks.CreationDate > comments.CreationDate)
        inner join postLinks
          inner join postHistory
            inner join votes
            on (postHistory.CreationDate < votes.CreationDate)
          on (postHistory.UserDisplayName = postHistory.Comment)
        on (comments.ContentLicense < comments.ContentLicense)
      inner join badges
            inner join comments
            on (badges.Id = comments.Id )
          inner join badges
          on (badges.Name < comments.UserDisplayName)
        inner join postHistory
        on (postHistory.UserId >= badges.Class)
      on (comments.UserDisplayName = postHistory.UserDisplayName )
    inner join badges
        inner join posts
        on (posts.OwnerDisplayName > posts.Body)
      inner join votes
      on (badges.UserId = votes.Id )
    on (badges.Date is NULL)
where comments.Id is NULL
limit 60;
select  
  sum(
    cast(29 as int4)), 
  users.Id, 
  comments.UserId, 
  comments.CreationDate, 
  votes.PostId, 
  posts.OwnerDisplayName, 
  postLinks.PostId, 
  posts.ParentId, 
  votes.PostId, 
  postLinks.CreationDate, 
  users.AccountId, 
  users.Location, 
  badges.Name, 
  posts.Tags, 
  posts.PostTypeId, 
  badges.Date, 
  users.CreationDate
from 
  posts
        inner join users
        on (posts.Id = users.Id )
      inner join votes
        inner join postLinks
          inner join users
              inner join users
                inner join users
                on (users.AccountId > users.AccountId)
              on (users.Location <= users.Location)
            inner join badges
            on (badges.Date > users.CreationDate)
          on (postLinks.PostId < postLinks.LinkTypeId)
        on (votes.Id = users.Id )
      on (posts.Id = users.Id )
    inner join comments
    on (comments.Text is not NULL)
where postLinks.Id is not NULL;
select  
  users.CreationDate
from 
  badges
      inner join postHistory
      on (badges.UserId = postHistory.Id )
    inner join users
      inner join posts
        inner join posts
        on (posts.AcceptedAnswerId > posts.OwnerUserId)
      on (users.WebsiteUrl = posts.OwnerDisplayName )
    on (posts.OwnerDisplayName is NULL)
where posts.AcceptedAnswerId is NULL
limit 95;
select  
  postLinks.PostId, 
  postLinks.PostId, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postLinks.CreationDate, 
  postHistory.CreationDate, 
  users.AccountId, 
  posts.CreationDate, 
  users.Location, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postLinks.LinkTypeId, 
  users.DisplayName, 
  postLinks.RelatedPostId, 
  posts.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postHistory.ContentLicense, 
  users.Location, 
  postLinks.RelatedPostId, 
  postLinks.PostId
from 
  postLinks
          inner join users
            inner join posts
            on (posts.AcceptedAnswerId < users.Id)
          on (postLinks.PostId = users.Id )
        inner join badges
        on (posts.ContentLicense = posts.ContentLicense)
      inner join postLinks
        inner join postLinks
        on (postLinks.RelatedPostId > postLinks.LinkTypeId)
      on (users.CreationDate > postLinks.CreationDate)
    inner join postHistory
        inner join posts
          inner join postHistory
          on (postHistory.Comment < postHistory.RevisionGUID)
        on (postHistory.UserDisplayName = postHistory.Comment)
      inner join postLinks
      on (postHistory.RevisionGUID < postHistory.Comment)
    on (postHistory.CreationDate = posts.CreationDate)
where badges.Name is NULL
limit 18;
select  
  comments.UserId, 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.PostId, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  comments.Id, 
  postLinks.CreationDate, 
  postLinks.Id, 
  avg(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as "time") as "time"))
from 
  postLinks
      inner join comments
      on (postLinks.RelatedPostId >= comments.Id)
    inner join badges
    on (comments.Text is not NULL)
where badges.Class is not NULL
limit 125;
select  
  posts.Title
from 
  votes
      inner join comments
      on (votes.VoteTypeId = comments.Id )
    inner join posts
    on (comments.Text = posts.OwnerDisplayName )
where comments.UserId is NULL
limit 82;
select  
  badges.Date
from 
  badges
      inner join comments
      on (badges.TagBased >= badges.TagBased)
    inner join votes
    on (badges.TagBased = badges.TagBased)
where votes.PostId >= votes.VoteTypeId
limit 155;
select  
  votes.CreationDate, 
  votes.CreationDate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.Id, 
  posts.ParentId, 
  postHistory.CreationDate, 
  postHistory.PostId
from 
  votes
      inner join votes
        inner join posts
          inner join votes
          on (posts.OwnerDisplayName < posts.Body)
        on (votes.UserId >= votes.UserId)
      on (posts.ContentLicense > posts.Body)
    inner join postHistory
    on (votes.VoteTypeId is not NULL)
where postHistory.UserDisplayName is not NULL;
select  
  posts.Title
from 
  posts
    inner join comments
      inner join comments
        inner join posts
          inner join postHistory
          on (posts.AcceptedAnswerId > posts.ParentId)
        on (posts.CreationDate < posts.CreationDate)
      on (comments.CreationDate = comments.CreationDate )
    on (posts.CreationDate > posts.CreationDate)
where postHistory.Comment is NULL;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(comments.UserDisplayName as text)), 
  postHistory.Id, 
  badges.Id, 
  postLinks.RelatedPostId, 
  comments.Id
from 
  comments
        inner join badges
        on (badges.Date = comments.CreationDate)
      inner join postLinks
      on (badges.TagBased > badges.TagBased)
    inner join postHistory
    on (comments.CreationDate is not NULL)
where badges.TagBased is not NULL
limit 56;
select  
  users.AccountId, 
  comments.UserDisplayName, 
  comments.Text, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  badges.TagBased, 
  postLinks.PostId, 
  votes.UserId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  users.Id, 
  votes.VoteTypeId, 
  sum(
    cast(cast(null as money) as money)), 
  postLinks.Id, 
  badges.Id, 
  comments.PostId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  comments.CreationDate, 
  users.AccountId, 
  postLinks.CreationDate, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.Date, 
  comments.Id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.Id, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  comments
    inner join users
          inner join postHistory
                inner join comments
                on (postHistory.Id = comments.UserId)
              inner join postLinks
                inner join comments
                on (postLinks.LinkTypeId = comments.Id )
              on (postHistory.Comment >= postHistory.UserDisplayName)
            inner join badges
              inner join comments
              on (badges.Name = badges.Name)
            on (comments.UserDisplayName = comments.UserDisplayName)
          on (users.ProfileImageUrl > users.ProfileImageUrl)
        inner join votes
        on (postLinks.CreationDate = votes.CreationDate )
      inner join postHistory
          inner join badges
          on (postHistory.Id = badges.Id )
        inner join postLinks
          inner join badges
          on (postLinks.LinkTypeId < badges.Id)
        on (badges.Class >= postHistory.PostHistoryTypeId)
      on (comments.UserId = badges.Id )
    on (users.AccountId > users.AccountId)
where postHistory.PostHistoryTypeId is NULL
limit 92;
select  
  posts.AcceptedAnswerId, 
  posts.PostTypeId, 
  posts.ContentLicense, 
  posts.Body, 
  posts.PostTypeId, 
  posts.Id, 
  posts.OwnerUserId, 
  min(
    cast(cast(null as float8) as float8)), 
  posts.CreationDate, 
  posts.Title, 
  posts.AcceptedAnswerId, 
  posts.OwnerUserId, 
  posts.PostTypeId, 
  posts.OwnerDisplayName, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  posts
where posts.AcceptedAnswerId > posts.Id
limit 121;
select distinct 
  posts.ContentLicense, 
  badges.Class, 
  badges.Class
from 
  posts
    inner join postHistory
        inner join users
        on (users.AboutMe >= postHistory.RevisionGUID)
      inner join posts
          inner join badges
          on (badges.Class >= posts.ParentId)
        inner join badges
        on (posts.PostTypeId = badges.Id )
      on (postHistory.CreationDate <= users.CreationDate)
    on (badges.TagBased is NULL)
where users.ProfileImageUrl < users.AccountId;
select  
  comments.Id
from 
  comments
        inner join comments
        on (comments.Text = comments.ContentLicense )
      inner join votes
            inner join votes
            on (votes.CreationDate = votes.CreationDate )
          inner join users
          on (votes.CreationDate = users.CreationDate)
        inner join posts
        on (votes.Id > votes.UserId)
      on (comments.ContentLicense <= comments.ContentLicense)
    inner join badges
    on (votes.VoteTypeId is not NULL)
where comments.Id is NULL
limit 110;
select  
  votes.UserId, 
  min(
    cast(cast(null as text) as text)), 
  votes.UserId, 
  votes.UserId, 
  votes.PostId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.UserId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.UserId, 
  votes.Id, 
  votes.VoteTypeId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.VoteTypeId, 
  max(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  votes.CreationDate
from 
  votes
where votes.VoteTypeId is NULL;
select  
  votes.VoteTypeId
from 
  votes
where votes.PostId is NULL
limit 110;
select  
  votes.CreationDate, 
  votes.PostId, 
  votes.UserId, 
  votes.CreationDate
from 
  votes
where votes.Id is NULL
limit 114;
select  
  badges.Name, 
  badges.Date, 
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.TagBased > badges.TagBased
limit 42;
select  
  comments.Id, 
  comments.Id, 
  comments.UserId, 
  sum(
    cast(cast(null as int2) as int2)), 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.Id, 
  max(
    cast(cast(null as float8) as float8)), 
  comments.CreationDate, 
  comments.PostId, 
  comments.UserDisplayName
from 
  comments
where comments.Id is not NULL
limit 83;
select  
  comments.Id, 
  posts.OwnerDisplayName, 
  posts.Title, 
  posts.Title, 
  comments.CreationDate, 
  posts.Body, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
    inner join posts
    on (comments.Text is NULL)
where posts.OwnerDisplayName is not NULL;
select  
  posts.Title
from 
  users
      inner join posts
      on (posts.CreationDate = users.CreationDate)
    inner join users
    on (users.CreationDate > users.CreationDate)
where users.Location < users.DisplayName
limit 75;
select  
  comments.PostId
from 
  posts
        inner join comments
          inner join posts
            inner join postHistory
              inner join comments
              on (postHistory.Id < comments.PostId)
            on (postHistory.RevisionGUID < posts.Title)
          on (comments.CreationDate = postHistory.CreationDate)
        on (posts.AcceptedAnswerId = comments.Id )
      inner join votes
        inner join comments
        on (comments.CreationDate <= votes.CreationDate)
      on (comments.CreationDate >= comments.CreationDate)
    inner join votes
      inner join votes
      on (votes.VoteTypeId >= votes.UserId)
    on (comments.Id = votes.Id )
where posts.AcceptedAnswerId < votes.VoteTypeId;
select  
  postHistory.Id, 
  postHistory.Comment, 
  posts.Title, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.CreationDate
from 
  users
      inner join postHistory
        inner join badges
          inner join postHistory
          on (badges.TagBased < badges.TagBased)
        on (postHistory.UserId > postHistory.UserId)
      on (postHistory.UserDisplayName <= badges.Name)
    inner join users
      inner join postLinks
              inner join postLinks
                inner join posts
                on (posts.PostTypeId > postLinks.LinkTypeId)
              on (postLinks.LinkTypeId = posts.ParentId)
            inner join postLinks
            on (posts.OwnerDisplayName < posts.OwnerDisplayName)
          inner join badges
          on (posts.OwnerDisplayName = badges.Name )
        inner join posts
        on (posts.AcceptedAnswerId > posts.ParentId)
      on (users.Id = posts.Id )
    on (posts.OwnerDisplayName > posts.OwnerDisplayName)
where postLinks.RelatedPostId is not NULL
limit 69;
select  
  postLinks.Id, 
  avg(
    cast(45 as int4)), 
  posts.Tags, 
  comments.Id
from 
  postLinks
        inner join postLinks
          inner join votes
            inner join postHistory
            on (votes.UserId = postHistory.Id )
          on (votes.CreationDate = postLinks.CreationDate)
        on (votes.CreationDate >= votes.CreationDate)
      inner join votes
        inner join comments
        on (votes.Id >= votes.Id)
      on (votes.VoteTypeId >= comments.UserId)
    inner join posts
      inner join comments
      on (posts.AcceptedAnswerId <= posts.ParentId)
    on (comments.ContentLicense = posts.OwnerDisplayName )
where comments.Text is not NULL
limit 184;
select  
  votes.UserId, 
  users.AboutMe, 
  posts.Id, 
  votes.PostId
from 
  badges
      inner join badges
      on (badges.UserId <= badges.UserId)
    inner join votes
        inner join postHistory
        on (votes.CreationDate = votes.CreationDate)
      inner join posts
          inner join votes
          on (posts.CreationDate < votes.CreationDate)
        inner join votes
            inner join users
              inner join posts
              on (posts.CreationDate <= users.CreationDate)
            on (posts.Body >= users.AboutMe)
          inner join users
          on (posts.OwnerDisplayName <= posts.ContentLicense)
        on (posts.Title < posts.ContentLicense)
      on (posts.Body = users.Location)
    on (votes.PostId is NULL)
where votes.Id is NULL
limit 77;
select  
  users.AccountId
from 
  users
where users.DisplayName is not NULL
limit 6;
select  
  votes.VoteTypeId, 
  comments.UserDisplayName, 
  min(
    cast(cast(null as timetz) as timetz)), 
  users.WebsiteUrl, 
  comments.UserId
from 
  users
    inner join comments
        inner join votes
        on (votes.CreationDate > comments.CreationDate)
      inner join comments
            inner join votes
            on (comments.PostId = votes.Id )
          inner join users
          on (users.AccountId < users.AccountId)
        inner join votes
        on (users.ProfileImageUrl < users.ProfileImageUrl)
      on (votes.UserId = votes.VoteTypeId)
    on (users.DisplayName = comments.UserDisplayName)
where votes.PostId is NULL;
select  
  postHistory.UserId, 
  postHistory.ContentLicense, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.PostId <= postHistory.Id;
select  
  votes.CreationDate, 
  votes.UserId
from 
  votes
where votes.CreationDate is NULL
limit 99;
select  
  max(
    cast(cast(null as inet) as inet)), 
  posts.CreationDate, 
  badges.Class, 
  posts.ContentLicense, 
  comments.UserId, 
  posts.OwnerUserId, 
  posts.ContentLicense, 
  badges.Id, 
  users.WebsiteUrl, 
  posts.OwnerUserId, 
  badges.TagBased, 
  badges.Name, 
  posts.Id
from 
  postHistory
        inner join posts
        on (postHistory.CreationDate <= postHistory.CreationDate)
      inner join users
      on (postHistory.Comment <= users.AboutMe)
    inner join badges
        inner join posts
        on (badges.Date > badges.Date)
      inner join comments
      on (badges.Date <= comments.CreationDate)
    on (comments.UserId is NULL)
where posts.Body is not NULL
limit 93;
select  
  votes.UserId, 
  votes.VoteTypeId
from 
  votes
where votes.VoteTypeId <= votes.Id
limit 140;
select  
  comments.CreationDate, 
  postLinks.CreationDate, 
  comments.UserDisplayName, 
  comments.Id, 
  posts.OwnerDisplayName, 
  posts.Title, 
  votes.CreationDate, 
  comments.CreationDate, 
  postLinks.LinkTypeId, 
  posts.Body, 
  postLinks.PostId, 
  min(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as int2) as int2)), 
  badges.Date, 
  comments.Text, 
  votes.UserId, 
  comments.ContentLicense, 
  comments.Text, 
  votes.PostId, 
  badges.Date, 
  min(
    cast(cast(null as tid) as tid)), 
  posts.OwnerUserId, 
  votes.VoteTypeId
from 
  postLinks
      inner join postLinks
        inner join votes
        on (postLinks.Id = votes.Id )
      on (postLinks.Id < votes.VoteTypeId)
    inner join comments
        inner join badges
        on (comments.ContentLicense = badges.Name )
      inner join comments
        inner join posts
        on (comments.UserId = posts.Id )
      on (comments.ContentLicense > comments.ContentLicense)
    on (postLinks.PostId is NULL)
where comments.Text > posts.ContentLicense
limit 92;
select  
  users.ProfileImageUrl, 
  users.AccountId
from 
  users
where users.Id is not NULL
limit 27;
select  
  badges.Class, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Class
from 
  postHistory
        inner join users
        on (postHistory.Text = users.DisplayName )
      inner join badges
      on (users.ProfileImageUrl <= users.ProfileImageUrl)
    inner join postLinks
        inner join postHistory
        on (postHistory.Comment > postHistory.Comment)
      inner join comments
        inner join badges
          inner join badges
          on (badges.UserId = badges.Id )
        on (badges.TagBased > badges.TagBased)
      on (postLinks.PostId = badges.Id )
    on (postHistory.CreationDate = badges.Date )
where postLinks.RelatedPostId is not NULL;
select  
  postHistory.RevisionGUID
from 
  posts
    inner join postHistory
    on (postHistory.Id is NULL)
where postHistory.Text is NULL
limit 56;
select  
  posts.Title
from 
  postLinks
              inner join postHistory
              on (postLinks.CreationDate <= postHistory.CreationDate)
            inner join votes
                inner join postLinks
                on (votes.CreationDate = postLinks.CreationDate )
              inner join votes
              on (votes.VoteTypeId <= votes.VoteTypeId)
            on (postLinks.RelatedPostId >= votes.UserId)
          inner join posts
          on (postLinks.Id < postLinks.RelatedPostId)
        inner join posts
          inner join users
          on (users.CreationDate < posts.CreationDate)
        on (votes.UserId = postLinks.LinkTypeId)
      inner join users
      on (votes.CreationDate <= users.CreationDate)
    inner join postLinks
    on (users.CreationDate < users.CreationDate)
where postHistory.CreationDate is NULL;
select  
  comments.CreationDate
from 
  comments
where comments.Text is not NULL
limit 79;
select  
  badges.Date
from 
  badges
where badges.Date is not NULL
limit 109;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  users.CreationDate, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.PostId, 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  min(
    cast(postHistory.UserId as int8)), 
  users.Id, 
  postHistory.Id, 
  users.CreationDate, 
  postHistory.Comment, 
  postHistory.CreationDate, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  sum(
    cast(postHistory.UserId as int8)), 
  postHistory.Id, 
  users.CreationDate, 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as date) as date)), 
  users.AccountId, 
  max(
    cast(75 as int4)), 
  postHistory.RevisionGUID, 
  users.CreationDate, 
  users.Location, 
  postHistory.Id, 
  postHistory.Comment
from 
  users
    inner join postHistory
    on (users.AboutMe is not NULL)
where postHistory.UserId >= postHistory.PostId;
select  
  users.Location, 
  users.ProfileImageUrl, 
  max(
    cast(posts.CreationDate as "timestamp")), 
  users.CreationDate, 
  count(*)
from 
  users
    inner join users
        inner join users
            inner join posts
            on (users.Id = posts.Id )
          inner join votes
          on (users.AccountId <= users.AccountId)
        on (posts.Body > users.DisplayName)
      inner join users
      on (users.ProfileImageUrl >= users.AccountId)
    on (users.Id <= votes.VoteTypeId)
where users.AboutMe is NULL
limit 159;
select  
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
    inner join comments
    on (users.Location is not NULL)
where users.Id is not NULL
limit 145;
select  
  votes.PostId, 
  votes.Id, 
  votes.PostId, 
  votes.VoteTypeId, 
  min(
    cast(votes.Id as int8)), 
  votes.Id
from 
  votes
where votes.VoteTypeId is not NULL;
select  
  votes.CreationDate, 
  votes.PostId, 
  votes.Id, 
  votes.PostId, 
  votes.Id, 
  votes.Id, 
  votes.Id, 
  votes.UserId, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.CreationDate
from 
  votes
where votes.CreationDate is not NULL;
select  
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.UserId, 
  postHistory.ContentLicense, 
  postHistory.Id
from 
  postHistory
where postHistory.CreationDate <= postHistory.CreationDate;
select  
  badges.Name, 
  badges.Name, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  badges
where badges.Date > badges.Date
limit 99;
select  
  users.CreationDate, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  posts.ContentLicense, 
  postHistory.Id, 
  posts.CreationDate, 
  comments.UserId, 
  postHistory.CreationDate, 
  posts.Id, 
  users.WebsiteUrl, 
  postHistory.PostHistoryTypeId, 
  postHistory.PostHistoryTypeId
from 
  postHistory
    inner join postHistory
        inner join postHistory
              inner join users
              on (postHistory.Id = users.Id )
            inner join posts
            on (postHistory.ContentLicense = users.WebsiteUrl)
          inner join comments
          on (comments.CreationDate >= users.CreationDate)
        on (users.ProfileImageUrl <= users.ProfileImageUrl)
      inner join posts
      on (users.AccountId < users.ProfileImageUrl)
    on (users.WebsiteUrl is NULL)
where posts.CreationDate is NULL;
select  
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as text) as text)), 
  postLinks.PostId
from 
  postLinks
where postLinks.LinkTypeId is not NULL;
select  
  max(
    cast(cast(null as money) as money)), 
  postLinks.LinkTypeId, 
  postLinks.PostId
from 
  postLinks
where postLinks.LinkTypeId is NULL;
select  
  postLinks.Id, 
  max(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as float4) as float4)), 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId < postLinks.RelatedPostId
limit 90;
select  
  votes.UserId
from 
  comments
    inner join votes
    on (comments.CreationDate = votes.CreationDate )
where votes.VoteTypeId > votes.VoteTypeId
limit 103;
select  
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id is NULL
limit 125;
select  
  users.AccountId
from 
  users
where users.AccountId is NULL
limit 179;
select  
  badges.Id, 
  badges.Name, 
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  badges.Name, 
  max(
    cast(cast(null as inet) as inet)), 
  badges.Date
from 
  badges
where badges.Id is not NULL
limit 160;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  votes.PostId, 
  sum(
    cast(posts.Id as int8)), 
  votes.UserId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  posts.CreationDate, 
  max(
    cast(cast(null as money) as money)), 
  avg(
    cast(votes.VoteTypeId as int8)), 
  users.Id, 
  max(
    cast(cast(null as "time") as "time")), 
  users.WebsiteUrl, 
  postHistory.PostId, 
  posts.ParentId, 
  votes.PostId, 
  users.AccountId, 
  votes.UserId
from 
  users
            inner join posts
            on (users.Id < posts.OwnerUserId)
          inner join comments
          on (users.AccountId > users.AccountId)
        inner join users
          inner join votes
            inner join postHistory
            on (votes.CreationDate = postHistory.CreationDate)
          on (users.ProfileImageUrl < users.ProfileImageUrl)
        on (postHistory.Id >= posts.Id)
      inner join votes
      on (users.ProfileImageUrl < users.AccountId)
    inner join votes
    on (posts.ParentId = posts.ParentId)
where postHistory.CreationDate >= votes.CreationDate
limit 137;
select  
  min(
    cast(postHistory.Id as int8)), 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  sum(
    cast(postHistory.UserId as int8))
from 
  postHistory
where postHistory.UserId is NULL
limit 174;
select  
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.Id is NULL
limit 176;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  comments.Text, 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId, 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.CreationDate, 
  votes.CreationDate, 
  comments.PostId, 
  postHistory.Text, 
  postHistory.PostId, 
  postHistory.Comment, 
  votes.PostId, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.Text, 
  postHistory.Id
from 
  postHistory
      inner join comments
        inner join postHistory
        on (postHistory.CreationDate = postHistory.CreationDate)
      on (comments.UserId <= postHistory.PostHistoryTypeId)
    inner join votes
    on (comments.CreationDate = votes.CreationDate )
where postHistory.ContentLicense is not NULL
limit 180;
select  
  posts.ParentId, 
  posts.Body, 
  posts.ParentId, 
  badges.UserId, 
  sum(
    cast(cast(null as int2) as int2)), 
  posts.Title, 
  posts.OwnerDisplayName, 
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
    inner join votes
        inner join badges
          inner join posts
          on (badges.Id = posts.Id )
        on (badges.TagBased < badges.TagBased)
      inner join posts
      on (votes.UserId <= posts.OwnerUserId)
    on (comments.Text = posts.OwnerDisplayName )
where comments.PostId is NULL
limit 145;
select  
  badges.Class
from 
  badges
    inner join badges
        inner join comments
        on (badges.TagBased <= badges.TagBased)
      inner join postHistory
        inner join posts
        on (postHistory.RevisionGUID = posts.OwnerDisplayName )
      on (postHistory.Id < comments.PostId)
    on (comments.UserDisplayName is NULL)
where postHistory.CreationDate is not NULL;
select  
  votes.UserId, 
  count(
    cast(votes.VoteTypeId as int8)), 
  votes.PostId, 
  votes.UserId, 
  votes.VoteTypeId, 
  votes.Id, 
  avg(
    cast(1 as int4)), 
  votes.PostId
from 
  votes
where votes.Id is NULL;
select  
  posts.ParentId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postHistory.UserId, 
  badges.UserId
from 
  badges
    inner join postHistory
          inner join badges
          on (postHistory.PostId >= postHistory.UserId)
        inner join postLinks
          inner join badges
            inner join posts
            on (posts.CreationDate > badges.Date)
          on (badges.TagBased >= badges.TagBased)
        on (badges.Class = postHistory.PostId)
      inner join posts
        inner join posts
        on (posts.CreationDate <= posts.CreationDate)
      on (postLinks.RelatedPostId < badges.UserId)
    on (postLinks.PostId is not NULL)
where postLinks.RelatedPostId > posts.AcceptedAnswerId;
select  
  posts.CreationDate, 
  postLinks.RelatedPostId, 
  posts.Body, 
  posts.OwnerDisplayName
from 
  posts
        inner join posts
          inner join postHistory
          on (posts.ParentId <= postHistory.PostId)
        on (posts.Body < postHistory.UserDisplayName)
      inner join postLinks
        inner join postHistory
              inner join postHistory
              on (postHistory.Text < postHistory.Comment)
            inner join postLinks
            on (postHistory.CreationDate < postHistory.CreationDate)
          inner join votes
          on (postLinks.CreationDate <= postHistory.CreationDate)
        on (postHistory.ContentLicense >= postHistory.Comment)
      on (postHistory.RevisionGUID <= postHistory.UserDisplayName)
    inner join posts
      inner join badges
      on (badges.Date = posts.CreationDate)
    on (posts.Tags is not NULL)
where posts.OwnerUserId is NULL;
select  
  postHistory.UserDisplayName
from 
  postHistory
      inner join votes
      on (postHistory.CreationDate < postHistory.CreationDate)
    inner join comments
    on (votes.CreationDate <= comments.CreationDate)
where votes.PostId is not NULL;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  postLinks.RelatedPostId, 
  comments.CreationDate, 
  avg(
    cast(comments.Id as int8)), 
  comments.CreationDate, 
  postLinks.LinkTypeId, 
  comments.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.PostId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate
from 
  postLinks
    inner join comments
    on (postLinks.RelatedPostId = comments.Id )
where postLinks.Id is NULL
limit 127;
select  
  votes.PostId, 
  votes.Id, 
  votes.PostId
from 
  votes
where votes.VoteTypeId is NULL;
select  
  users.Location, 
  votes.PostId
from 
  votes
        inner join postHistory
            inner join users
            on (postHistory.PostId = postHistory.UserId)
          inner join badges
          on (badges.Date >= postHistory.CreationDate)
        on (postHistory.CreationDate <= badges.Date)
      inner join postHistory
        inner join posts
        on (postHistory.CreationDate = posts.CreationDate)
      on (badges.TagBased > badges.TagBased)
    inner join votes
    on (votes.CreationDate is NULL)
where users.AccountId > users.AccountId
limit 36;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.ParentId, 
  max(
    cast(cast(null as date) as date)), 
  posts.Body
from 
  posts
where posts.CreationDate is not NULL;
select  
  postLinks.LinkTypeId, 
  postHistory.UserId, 
  max(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.Location, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  votes.VoteTypeId, 
  posts.OwnerDisplayName, 
  users.CreationDate, 
  users.AccountId, 
  postHistory.Text, 
  posts.Id, 
  posts.Body
from 
  postLinks
    inner join posts
        inner join postHistory
        on (postHistory.Comment <= posts.Tags)
      inner join users
          inner join postLinks
          on (users.ProfileImageUrl <= users.AccountId)
        inner join votes
        on (postLinks.RelatedPostId = votes.Id )
      on (postHistory.PostHistoryTypeId > posts.ParentId)
    on (postLinks.PostId is NULL)
where postLinks.CreationDate > users.CreationDate
limit 26;
select  
  comments.ContentLicense, 
  min(
    cast(comments.PostId as int8)), 
  max(
    cast(comments.UserId as int8)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  avg(
    cast(cast(null as float8) as float8)), 
  comments.ContentLicense, 
  comments.PostId, 
  comments.ContentLicense, 
  comments.Text, 
  max(
    cast(cast(null as oid) as oid)), 
  comments.Text, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  comments.Id, 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.Id, 
  comments.UserId, 
  comments.ContentLicense
from 
  comments
where comments.PostId is NULL
limit 98;
select  
  users.Location
from 
  votes
      inner join users
        inner join postHistory
        on (users.WebsiteUrl = postHistory.UserDisplayName )
      on (votes.UserId < postHistory.PostHistoryTypeId)
    inner join users
    on (votes.Id is NULL)
where users.AccountId <= users.ProfileImageUrl
limit 49;
select  
  votes.Id, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.PostId, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  votes.UserId, 
  votes.UserId
from 
  votes
where votes.UserId is not NULL;
select  
  comments.Id, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.Id, 
  comments.PostId, 
  comments.UserDisplayName, 
  comments.PostId, 
  comments.Id, 
  comments.Text, 
  comments.PostId, 
  comments.UserId, 
  comments.ContentLicense
from 
  comments
where comments.UserId is NULL
limit 115;
select  
  votes.VoteTypeId, 
  badges.Id, 
  users.AccountId, 
  max(
    cast(cast(null as "time") as "time")), 
  badges.Class, 
  badges.TagBased, 
  votes.VoteTypeId, 
  badges.Name, 
  users.AboutMe, 
  comments.Text, 
  badges.Date, 
  badges.Id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.CreationDate, 
  votes.CreationDate, 
  votes.Id
from 
  votes
      inner join users
        inner join votes
            inner join badges
            on (badges.Date <= badges.Date)
          inner join users
          on (votes.CreationDate < users.CreationDate)
        on (users.WebsiteUrl = users.DisplayName )
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    inner join comments
    on (users.AccountId <= users.AccountId)
where votes.Id is not NULL;
select  
  comments.Id, 
  badges.Class, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(badges.UserId as int8)), 
  postHistory.ContentLicense, 
  comments.UserId, 
  postHistory.CreationDate, 
  badges.UserId
from 
  users
        inner join comments
        on (comments.Text = users.DisplayName)
      inner join badges
        inner join badges
        on (badges.Date < badges.Date)
      on (users.AccountId > users.AccountId)
    inner join postHistory
        inner join comments
        on (comments.CreationDate >= postHistory.CreationDate)
      inner join comments
      on (postHistory.UserDisplayName > comments.Text)
    on (comments.Text = postHistory.UserDisplayName )
where comments.ContentLicense is NULL
limit 89;
select  
  max(
    cast(65 as int4))
from 
  badges
where badges.Class is not NULL
limit 121;
select  
  comments.Text, 
  posts.OwnerUserId
from 
  badges
        inner join postLinks
            inner join comments
            on (postLinks.LinkTypeId = postLinks.PostId)
          inner join votes
          on (comments.UserDisplayName <= comments.ContentLicense)
        on (votes.CreationDate > comments.CreationDate)
      inner join comments
        inner join badges
        on (badges.Id = badges.Class)
      on (badges.TagBased <= badges.TagBased)
    inner join users
      inner join posts
        inner join badges
          inner join posts
          on (badges.TagBased < badges.TagBased)
        on (posts.ContentLicense < posts.ContentLicense)
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    on (comments.UserDisplayName >= posts.OwnerDisplayName)
where posts.PostTypeId <= badges.Class
limit 175;
select  
  badges.Class, 
  postLinks.LinkTypeId, 
  badges.Id, 
  postLinks.CreationDate
from 
  badges
    inner join postLinks
    on (postLinks.RelatedPostId is not NULL)
where postLinks.LinkTypeId is not NULL
limit 102;
select  
  comments.UserId, 
  users.WebsiteUrl, 
  postHistory.UserId, 
  postHistory.ContentLicense
from 
  postHistory
        inner join votes
          inner join votes
          on (votes.PostId > votes.VoteTypeId)
        on (postHistory.UserDisplayName = postHistory.ContentLicense)
      inner join postHistory
        inner join postLinks
          inner join users
            inner join comments
                inner join postHistory
                on (comments.Text > postHistory.Text)
              inner join votes
              on (postHistory.PostHistoryTypeId >= postHistory.PostId)
            on (users.Id = votes.Id )
          on (postLinks.RelatedPostId = postHistory.Id )
        on (postHistory.Comment <= users.DisplayName)
      on (users.AccountId < users.ProfileImageUrl)
    inner join votes
      inner join posts
      on (posts.CreationDate <= votes.CreationDate)
    on (postHistory.UserId is not NULL)
where postHistory.RevisionGUID is NULL
limit 160;
select  
  votes.PostId, 
  votes.UserId, 
  votes.PostId
from 
  votes
where votes.PostId is NULL
limit 136;
select  
  posts.Id, 
  max(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  max(
    cast(71 as int4)), 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  posts.PostTypeId, 
  posts.OwnerUserId, 
  posts.CreationDate, 
  posts.Title, 
  posts.Title
from 
  posts
where posts.CreationDate is NULL
limit 100;
select  
  posts.CreationDate
from 
  badges
      inner join comments
      on (badges.TagBased >= badges.TagBased)
    inner join posts
    on (badges.UserId is NULL)
where posts.Tags is NULL;
select distinct 
  users.DisplayName, 
  badges.UserId, 
  postHistory.PostHistoryTypeId, 
  posts.Tags
from 
  badges
        inner join users
                inner join badges
                on (users.ProfileImageUrl <= users.AccountId)
              inner join users
              on (users.AccountId = users.AccountId )
            inner join postLinks
            on (badges.TagBased >= badges.TagBased)
          inner join posts
          on (postLinks.LinkTypeId = posts.Id )
        on (badges.Name = posts.OwnerDisplayName )
      inner join votes
          inner join badges
          on (badges.Name < badges.Name)
        inner join badges
          inner join posts
            inner join posts
              inner join postHistory
              on (posts.CreationDate = posts.CreationDate)
            on (posts.Title >= posts.Tags)
          on (badges.TagBased < badges.TagBased)
        on (posts.CreationDate > votes.CreationDate)
      on (users.AccountId > users.AccountId)
    inner join votes
        inner join postLinks
        on (postLinks.Id > postLinks.LinkTypeId)
      inner join posts
        inner join posts
        on (posts.PostTypeId > posts.PostTypeId)
      on (postLinks.PostId >= postLinks.RelatedPostId)
    on (posts.OwnerUserId is NULL)
where posts.ContentLicense is NULL
limit 86;
select  
  votes.VoteTypeId, 
  votes.Id, 
  posts.OwnerUserId, 
  votes.Id, 
  votes.CreationDate, 
  posts.Body, 
  count(
    cast(posts.PostTypeId as int8)), 
  posts.ParentId, 
  users.DisplayName, 
  votes.UserId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  sum(
    cast(9 as int4)), 
  votes.CreationDate, 
  votes.PostId, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as oid) as oid)), 
  postHistory.UserDisplayName, 
  postHistory.Text, 
  posts.Title
from 
  posts
    inner join votes
        inner join votes
          inner join votes
          on (votes.Id = votes.Id )
        on (votes.UserId >= votes.VoteTypeId)
      inner join users
        inner join postHistory
        on (postHistory.UserId <= users.Id)
      on (postHistory.CreationDate >= votes.CreationDate)
    on (votes.VoteTypeId is not NULL)
where users.Location <= users.DisplayName;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  count(
    cast(users.Id as int8)), 
  users.WebsiteUrl, 
  users.Id, 
  max(
    cast(cast(null as date) as date)), 
  users.Location
from 
  users
where users.Id >= users.Id;
select  
  comments.UserDisplayName, 
  comments.UserDisplayName, 
  comments.PostId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  comments.ContentLicense, 
  comments.UserDisplayName, 
  comments.Id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  comments
where comments.CreationDate is not NULL;
select  
  votes.UserId, 
  votes.CreationDate
from 
  votes
where votes.Id is not NULL;
select  
  users.ProfileImageUrl, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.DisplayName
from 
  users
where users.ProfileImageUrl is NULL
limit 120;
select  
  badges.TagBased, 
  postHistory.Id
from 
  comments
            inner join comments
            on (comments.UserId < comments.UserId)
          inner join votes
            inner join postHistory
            on (votes.VoteTypeId > votes.PostId)
          on (comments.Text = postHistory.UserDisplayName )
        inner join postHistory
        on (comments.CreationDate = postHistory.CreationDate )
      inner join badges
              inner join badges
              on (badges.TagBased = badges.TagBased)
            inner join posts
            on (badges.UserId < posts.AcceptedAnswerId)
          inner join users
          on (posts.Tags >= users.Location)
        inner join comments
        on (comments.UserDisplayName < posts.ContentLicense)
      on (users.ProfileImageUrl > users.AccountId)
    inner join users
          inner join badges
          on (badges.Name >= users.AboutMe)
        inner join comments
        on (badges.Date <= badges.Date)
      inner join votes
      on (users.Id < votes.Id)
    on (postHistory.CreationDate is NULL)
where badges.Class < posts.Id;
select  
  badges.Date
from 
  postLinks
    inner join badges
    on (postLinks.RelatedPostId is NULL)
where postLinks.Id is not NULL;
select  
  users.AccountId, 
  users.Id, 
  users.AboutMe, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
where users.Location < users.Location
limit 92;
select  
  comments.Id, 
  postHistory.UserDisplayName, 
  votes.PostId, 
  users.DisplayName, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  votes
            inner join postHistory
              inner join comments
                inner join posts
                on (comments.ContentLicense = posts.OwnerDisplayName )
              on (posts.CreationDate >= comments.CreationDate)
            on (posts.Title < postHistory.Comment)
          inner join votes
          on (comments.PostId > comments.Id)
        inner join users
        on (votes.CreationDate = comments.CreationDate)
      inner join users
      on (users.AccountId <= users.AccountId)
    inner join postHistory
    on (postHistory.UserId is not NULL)
where users.AboutMe is not NULL;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posts.ParentId, 
  posts.ContentLicense, 
  posts.Title, 
  posts.Tags, 
  posts.AcceptedAnswerId, 
  posts.Id, 
  posts.PostTypeId
from 
  posts
where posts.Id is NULL
limit 142;
select  
  postHistory.ContentLicense
from 
  postHistory
where postHistory.PostId is NULL
limit 69;
select  
  votes.PostId, 
  avg(
    cast(votes.UserId as int8)), 
  votes.Id, 
  votes.Id
from 
  votes
where votes.CreationDate is NULL
limit 50;
select  
  users.CreationDate, 
  users.AboutMe, 
  users.AccountId, 
  users.Location, 
  users.DisplayName, 
  users.AboutMe, 
  users.WebsiteUrl, 
  users.AccountId, 
  users.Location, 
  users.CreationDate, 
  users.CreationDate
from 
  users
where users.Location is not NULL
limit 53;
select  
  postHistory.ContentLicense, 
  badges.Name
from 
  users
              inner join badges
              on (users.AccountId < users.ProfileImageUrl)
            inner join badges
            on (badges.UserId < badges.Class)
          inner join users
            inner join comments
            on (users.WebsiteUrl = comments.ContentLicense )
          on (users.Location <= comments.UserDisplayName)
        inner join comments
            inner join badges
            on (comments.CreationDate = comments.CreationDate)
          inner join postLinks
            inner join users
            on (postLinks.RelatedPostId = users.Id )
          on (users.AccountId = users.AccountId)
        on (postLinks.PostId <= users.Id)
      inner join postHistory
        inner join postHistory
        on (postHistory.CreationDate <= postHistory.CreationDate)
      on (users.ProfileImageUrl >= users.AccountId)
    inner join badges
    on (badges.TagBased is NULL)
where users.WebsiteUrl is NULL;
select  
  badges.Date, 
  badges.Name, 
  badges.Name, 
  badges.Id, 
  badges.Id, 
  badges.UserId, 
  badges.Class
from 
  badges
where badges.Name < badges.Name
limit 47;
select  
  posts.ContentLicense, 
  posts.OwnerUserId, 
  posts.ContentLicense
from 
  posts
where posts.CreationDate is not NULL
limit 127;
select  
  votes.PostId, 
  votes.PostId, 
  votes.Id, 
  votes.VoteTypeId, 
  votes.PostId
from 
  votes
where votes.CreationDate <= votes.CreationDate
limit 119;
select  
  badges.TagBased, 
  badges.Name, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.Date, 
  badges.Class, 
  badges.Class, 
  badges.Class, 
  badges.UserId, 
  badges.TagBased, 
  badges.Id, 
  badges.Id, 
  max(
    cast(cast(null as date) as date)), 
  badges.TagBased, 
  max(
    cast(cast(null as timetz) as timetz)), 
  badges.TagBased, 
  badges.Class, 
  badges.TagBased, 
  badges.UserId, 
  badges.Date
from 
  badges
where badges.TagBased > badges.TagBased
limit 56;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postHistory.ContentLicense, 
  badges.Class, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  badges
    inner join postHistory
      inner join postLinks
        inner join badges
        on (postLinks.RelatedPostId >= postLinks.LinkTypeId)
      on (badges.TagBased < badges.TagBased)
    on (postLinks.RelatedPostId is not NULL)
where badges.Name is not NULL
limit 142;
select  
  users.CreationDate, 
  comments.PostId, 
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.Location
from 
  badges
        inner join posts
          inner join posts
            inner join postHistory
            on (posts.OwnerUserId <= postHistory.UserId)
          on (posts.OwnerUserId <= posts.Id)
        on (posts.CreationDate = badges.Date)
      inner join comments
      on (postHistory.UserId >= posts.PostTypeId)
    inner join postHistory
          inner join users
          on (postHistory.PostId > postHistory.PostId)
        inner join comments
        on (postHistory.Id < postHistory.PostHistoryTypeId)
      inner join postLinks
      on (postHistory.Text <= comments.ContentLicense)
    on (badges.Id = postHistory.Id )
where postLinks.LinkTypeId is NULL
limit 63;
select  
  postHistory.Id, 
  postLinks.CreationDate, 
  max(
    cast(cast(null as float4) as float4)), 
  postLinks.CreationDate, 
  postHistory.RevisionGUID, 
  postLinks.PostId, 
  postHistory.Text, 
  votes.UserId, 
  postHistory.Id, 
  postHistory.Id, 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.CreationDate, 
  votes.CreationDate, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postHistory.PostHistoryTypeId, 
  postLinks.CreationDate, 
  votes.PostId, 
  postHistory.Text, 
  postLinks.CreationDate
from 
  votes
      inner join users
      on (votes.CreationDate < users.CreationDate)
    inner join postHistory
            inner join postHistory
            on (postHistory.Id > postHistory.Id)
          inner join users
            inner join postLinks
            on (users.Id <= postLinks.PostId)
          on (postHistory.Comment = users.DisplayName )
        inner join postLinks
        on (postHistory.PostHistoryTypeId = postLinks.Id )
      inner join postHistory
      on (users.AccountId > users.AccountId)
    on (users.CreationDate < postLinks.CreationDate)
where postHistory.Comment is NULL
limit 117;
select  
  comments.CreationDate, 
  comments.Id, 
  comments.CreationDate, 
  comments.ContentLicense, 
  comments.UserId, 
  comments.CreationDate, 
  comments.UserId, 
  comments.Id, 
  comments.Id, 
  max(
    cast(cast(null as money) as money)), 
  comments.UserId, 
  comments.UserId, 
  comments.UserDisplayName, 
  avg(
    cast(cast(null as float8) as float8)), 
  comments.UserId, 
  comments.UserDisplayName
from 
  comments
where comments.Id is not NULL;
select  
  postHistory.ContentLicense, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  max(
    cast(postHistory.Comment as text)), 
  postHistory.PostHistoryTypeId, 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.CreationDate = postHistory.CreationDate
limit 66;
select  
  postHistory.ContentLicense, 
  postHistory.Id, 
  postHistory.Comment, 
  postHistory.ContentLicense, 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.PostId, 
  postHistory.ContentLicense, 
  postHistory.UserId, 
  postHistory.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.PostId, 
  postHistory.RevisionGUID, 
  postHistory.PostId
from 
  postHistory
where postHistory.UserId >= postHistory.PostId
limit 105;
select  
  badges.Date, 
  badges.Name, 
  badges.Class, 
  badges.Class
from 
  badges
where badges.Date is NULL;
select  
  votes.UserId, 
  posts.ContentLicense, 
  sum(
    cast(postLinks.LinkTypeId as int8)), 
  postHistory.PostId, 
  postLinks.RelatedPostId, 
  comments.UserDisplayName, 
  votes.VoteTypeId, 
  postHistory.UserId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.CreationDate, 
  postHistory.Text, 
  comments.PostId, 
  comments.ContentLicense, 
  badges.TagBased, 
  badges.Date
from 
  votes
    inner join badges
        inner join votes
            inner join postHistory
                inner join postHistory
                on (postHistory.Comment = postHistory.Comment)
              inner join postLinks
                inner join postLinks
                on (postLinks.CreationDate <= postLinks.CreationDate)
              on (postHistory.Comment < postHistory.ContentLicense)
            on (postLinks.PostId = postLinks.Id)
          inner join comments
          on (postLinks.CreationDate >= votes.CreationDate)
        on (badges.Id = postLinks.Id )
      inner join comments
        inner join postLinks
            inner join votes
              inner join postLinks
              on (postLinks.PostId > postLinks.Id)
            on (votes.CreationDate < postLinks.CreationDate)
          inner join badges
            inner join posts
            on (badges.TagBased <= badges.TagBased)
          on (postLinks.PostId = posts.Id )
        on (posts.CreationDate < comments.CreationDate)
      on (postLinks.Id <= comments.Id)
    on (comments.UserDisplayName is not NULL)
where postLinks.CreationDate is not NULL
limit 140;
select  
  users.DisplayName
from 
  posts
    inner join users
      inner join posts
        inner join comments
          inner join postLinks
          on (comments.Text >= comments.Text)
        on (comments.Text = posts.Body)
      on (users.DisplayName >= users.DisplayName)
    on (posts.OwnerDisplayName <= posts.Tags)
where postLinks.RelatedPostId is NULL
limit 145;
select  
  posts.CreationDate, 
  posts.CreationDate, 
  posts.OwnerUserId, 
  posts.CreationDate
from 
  posts
where posts.Id is not NULL
limit 157;
select  
  posts.Title, 
  min(
    cast(cast(null as int2) as int2))
from 
  badges
    inner join users
      inner join posts
      on (users.CreationDate <= posts.CreationDate)
    on (posts.OwnerDisplayName is NULL)
where posts.CreationDate = users.CreationDate
limit 98;
select  
  comments.UserDisplayName, 
  users.AboutMe, 
  comments.UserId, 
  comments.UserId, 
  comments.PostId, 
  max(
    cast(cast(null as date) as date)), 
  users.AboutMe
from 
  users
    inner join comments
    on (comments.PostId is not NULL)
where users.CreationDate <= comments.CreationDate
limit 135;
select  
  badges.Date, 
  badges.TagBased, 
  badges.Class, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as float8) as float8)), 
  badges.Class, 
  badges.UserId, 
  badges.UserId, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  badges
where badges.Name is NULL
limit 120;
select  
  users.Id, 
  users.Location, 
  sum(
    cast(comments.PostId as int8)), 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
    inner join users
    on (users.DisplayName is NULL)
where comments.ContentLicense >= comments.UserDisplayName
limit 103;
select  
  votes.PostId, 
  badges.Id
from 
  votes
        inner join comments
              inner join comments
              on (comments.Id = comments.Id )
            inner join posts
            on (comments.CreationDate > comments.CreationDate)
          inner join votes
          on (posts.Id <= votes.Id)
        on (votes.PostId = posts.ParentId)
      inner join badges
      on (comments.Id = badges.Id )
    inner join users
        inner join votes
        on (votes.CreationDate <= users.CreationDate)
      inner join badges
            inner join postHistory
            on (postHistory.CreationDate < postHistory.CreationDate)
          inner join postHistory
          on (badges.Class = postHistory.Id )
        inner join users
        on (users.AccountId = users.ProfileImageUrl)
      on (postHistory.UserDisplayName < postHistory.RevisionGUID)
    on (comments.PostId is NULL)
where badges.TagBased < badges.TagBased
limit 97;
select  
  votes.Id, 
  votes.PostId
from 
  votes
where votes.Id is not NULL
limit 27;
select  
  users.DisplayName, 
  badges.UserId, 
  postLinks.PostId, 
  users.CreationDate, 
  badges.Id, 
  votes.Id, 
  posts.Tags, 
  posts.Tags, 
  badges.Name, 
  badges.Name, 
  max(
    cast(cast(null as tid) as tid)), 
  votes.PostId, 
  badges.Name, 
  users.WebsiteUrl, 
  votes.Id
from 
  users
              inner join users
                inner join badges
                on (users.AboutMe <= users.WebsiteUrl)
              on (users.ProfileImageUrl < users.ProfileImageUrl)
            inner join votes
            on (users.AccountId < users.ProfileImageUrl)
          inner join comments
          on (users.CreationDate = users.CreationDate)
        inner join badges
        on (users.AccountId < users.AccountId)
      inner join posts
              inner join votes
                inner join posts
                on (posts.OwnerDisplayName <= posts.OwnerDisplayName)
              on (posts.Title = posts.OwnerDisplayName )
            inner join comments
            on (votes.VoteTypeId = posts.Id)
          inner join posts
            inner join badges
            on (posts.CreationDate <= posts.CreationDate)
          on (comments.Text <= posts.Title)
        inner join posts
        on (votes.CreationDate >= posts.CreationDate)
      on (votes.PostId = posts.Id )
    inner join votes
        inner join postLinks
        on (postLinks.RelatedPostId > votes.PostId)
      inner join votes
      on (votes.CreationDate < postLinks.CreationDate)
    on (badges.Date is NULL)
where users.CreationDate is NULL
limit 106;
select  
  badges.TagBased
from 
  posts
      inner join badges
      on (badges.TagBased < badges.TagBased)
    inner join badges
        inner join comments
        on (badges.Name > comments.UserDisplayName)
      inner join users
            inner join comments
              inner join comments
                inner join postLinks
                on (comments.ContentLicense > comments.UserDisplayName)
              on (comments.ContentLicense = comments.ContentLicense )
            on (users.CreationDate = comments.CreationDate )
          inner join comments
          on (comments.CreationDate < comments.CreationDate)
        inner join users
        on (users.ProfileImageUrl = users.ProfileImageUrl)
      on (comments.Text = comments.ContentLicense )
    on (comments.PostId <= comments.UserId)
where users.WebsiteUrl is NULL
limit 97;
select  
  postHistory.UserDisplayName, 
  postHistory.Comment
from 
  postHistory
where postHistory.CreationDate = postHistory.CreationDate
limit 171;
select  
  badges.Name, 
  badges.UserId, 
  comments.UserId, 
  postLinks.PostId, 
  max(
    cast(postLinks.LinkTypeId as int8)), 
  votes.UserId
from 
  badges
            inner join comments
            on (badges.TagBased >= badges.TagBased)
          inner join posts
            inner join votes
              inner join badges
              on (votes.VoteTypeId >= votes.PostId)
            on (posts.Id < badges.UserId)
          on (badges.TagBased >= badges.TagBased)
        inner join postHistory
          inner join badges
          on (badges.TagBased = badges.TagBased)
        on (badges.Date = badges.Date)
      inner join users
          inner join postLinks
          on (postLinks.RelatedPostId < users.Id)
        inner join posts
            inner join comments
            on (posts.Tags = comments.ContentLicense )
          inner join votes
            inner join posts
            on (votes.CreationDate > votes.CreationDate)
          on (posts.PostTypeId = comments.UserId)
        on (posts.OwnerDisplayName < users.DisplayName)
      on (posts.CreationDate >= badges.Date)
    inner join posts
      inner join users
              inner join posts
              on (users.AccountId > users.AccountId)
            inner join postHistory
              inner join votes
                inner join users
                  inner join badges
                  on (badges.TagBased = badges.TagBased)
                on (users.AboutMe = users.WebsiteUrl)
              on (postHistory.CreationDate = votes.CreationDate )
            on (votes.PostId <= votes.PostId)
          inner join postLinks
          on (users.CreationDate <= badges.Date)
        inner join comments
        on (badges.TagBased = badges.TagBased)
      on (posts.OwnerUserId = comments.Id )
    on (users.ProfileImageUrl > users.AccountId)
where comments.Id is not NULL;
select  
  max(
    cast(cast(null as float4) as float4)), 
  max(
    cast(badges.Name as text))
from 
  badges
    inner join postLinks
          inner join votes
            inner join postHistory
            on (votes.Id < votes.UserId)
          on (postHistory.Comment < postHistory.RevisionGUID)
        inner join posts
        on (posts.CreationDate = posts.CreationDate)
      inner join votes
            inner join badges
            on (votes.CreationDate > votes.CreationDate)
          inner join postLinks
            inner join votes
            on (postLinks.CreationDate = postLinks.CreationDate)
          on (badges.TagBased > badges.TagBased)
        inner join badges
        on (badges.Name = badges.Name)
      on (postHistory.CreationDate < votes.CreationDate)
    on (badges.Id = votes.Id )
where votes.CreationDate < postLinks.CreationDate
limit 89;
select  
  badges.TagBased, 
  badges.TagBased, 
  badges.Class
from 
  posts
    inner join badges
    on (posts.OwnerUserId is NULL)
where posts.AcceptedAnswerId is NULL;
select  
  users.Location, 
  comments.UserDisplayName, 
  users.WebsiteUrl
from 
  posts
        inner join comments
        on (posts.CreationDate <= comments.CreationDate)
      inner join users
      on (comments.Id < comments.PostId)
    inner join users
    on (users.DisplayName is NULL)
where users.Id <= posts.ParentId
limit 191;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.Text
from 
  badges
        inner join comments
        on (badges.TagBased <= badges.TagBased)
      inner join badges
      on (badges.Id >= comments.Id)
    inner join comments
        inner join votes
        on (comments.Text = comments.UserDisplayName)
      inner join users
      on (users.ProfileImageUrl = users.ProfileImageUrl)
    on (users.DisplayName is not NULL)
where votes.PostId > comments.Id
limit 144;
select  
  users.Location, 
  votes.Id, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.Id, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.Id, 
  posts.ContentLicense, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  badges.Class
from 
  users
      inner join comments
        inner join badges
          inner join posts
          on (posts.CreationDate <= badges.Date)
        on (badges.Id = comments.PostId)
      on (posts.ContentLicense > badges.Name)
    inner join votes
          inner join users
          on (users.AboutMe > users.Location)
        inner join users
            inner join votes
            on (users.WebsiteUrl > users.Location)
          inner join badges
          on (votes.UserId = users.Id)
        on (users.ProfileImageUrl >= users.ProfileImageUrl)
      inner join badges
        inner join badges
        on (badges.UserId > badges.UserId)
      on (votes.PostId > badges.Class)
    on (badges.TagBased is NULL)
where users.WebsiteUrl is not NULL
limit 43;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is not NULL;
select  
  max(
    cast(cast(null as oid) as oid)), 
  postHistory.UserDisplayName, 
  max(
    cast(cast(null as tid) as tid)), 
  postHistory.ContentLicense, 
  min(
    cast(postHistory.UserDisplayName as text)), 
  postHistory.UserId
from 
  postHistory
where postHistory.CreationDate < postHistory.CreationDate;
select  
  posts.Body, 
  posts.PostTypeId
from 
  posts
where posts.ContentLicense is not NULL;
select  
  posts.Id, 
  votes.UserId
from 
  posts
    inner join votes
    on (votes.VoteTypeId is not NULL)
where posts.ContentLicense is not NULL;
select  
  badges.Id
from 
  badges
    inner join badges
      inner join postHistory
      on (badges.TagBased = badges.TagBased)
    on (badges.UserId is not NULL)
where postHistory.PostHistoryTypeId <= badges.UserId
limit 44;
select  
  votes.Id
from 
  users
        inner join posts
        on (posts.ParentId < posts.OwnerUserId)
      inner join votes
        inner join votes
        on (votes.CreationDate > votes.CreationDate)
      on (users.AboutMe >= posts.Title)
    inner join postLinks
    on (posts.ContentLicense is not NULL)
where users.Id is not NULL
limit 165;
select  
  badges.UserId
from 
  badges
where badges.TagBased is not NULL;
select  
  postLinks.CreationDate, 
  min(
    cast(cast(null as oid) as oid)), 
  postHistory.UserId, 
  votes.VoteTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  comments.UserDisplayName, 
  comments.PostId, 
  postHistory.Id, 
  max(
    cast(cast(null as "time") as "time")), 
  postLinks.LinkTypeId
from 
  postLinks
          inner join postHistory
          on (postHistory.Text < postHistory.Text)
        inner join votes
            inner join postLinks
            on (votes.CreationDate = votes.CreationDate)
          inner join postLinks
          on (votes.CreationDate > postLinks.CreationDate)
        on (postLinks.PostId < postLinks.Id)
      inner join comments
        inner join votes
        on (votes.CreationDate < votes.CreationDate)
      on (postHistory.CreationDate <= votes.CreationDate)
    inner join comments
    on (comments.UserDisplayName is NULL)
where votes.CreationDate is NULL
limit 66;
select  
  votes.Id, 
  votes.UserId, 
  votes.Id, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.PostId, 
  votes.PostId, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as tid) as tid)), 
  votes.PostId, 
  votes.UserId, 
  votes.UserId, 
  votes.PostId
from 
  votes
    inner join votes
    on (votes.UserId < votes.Id)
where votes.PostId >= votes.PostId;
select  
  comments.ContentLicense, 
  comments.PostId, 
  comments.CreationDate
from 
  users
    inner join users
      inner join comments
        inner join comments
        on (comments.UserId >= comments.UserId)
      on (comments.CreationDate > users.CreationDate)
    on (users.AboutMe > comments.ContentLicense)
where comments.UserId >= users.Id
limit 65;
select  
  posts.AcceptedAnswerId, 
  posts.PostTypeId, 
  posts.AcceptedAnswerId, 
  posts.Tags, 
  posts.CreationDate, 
  posts.ParentId, 
  posts.ContentLicense, 
  posts.Tags, 
  posts.Tags
from 
  posts
where posts.CreationDate is NULL
limit 92;
select  
  posts.ContentLicense, 
  posts.CreationDate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.Id
from 
  posts
where posts.PostTypeId is NULL
limit 28;
select  
  badges.UserId, 
  badges.Id, 
  badges.Class, 
  badges.TagBased, 
  badges.TagBased
from 
  badges
where badges.Name >= badges.Name
limit 88;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(cast(null as money) as money))
from 
  comments
where comments.Text is not NULL;
select  
  votes.PostId, 
  postLinks.PostId
from 
  posts
    inner join users
          inner join postLinks
          on (postLinks.CreationDate >= users.CreationDate)
        inner join votes
        on (votes.CreationDate < postLinks.CreationDate)
      inner join postLinks
              inner join posts
              on (posts.Tags > posts.ContentLicense)
            inner join votes
            on (postLinks.LinkTypeId = votes.Id )
          inner join users
          on (users.ProfileImageUrl = users.ProfileImageUrl)
        inner join votes
        on (users.ProfileImageUrl = users.AccountId)
      on (users.Location = posts.Title)
    on (votes.PostId is not NULL)
where postLinks.CreationDate is not NULL;
select  
  users.AboutMe, 
  users.WebsiteUrl, 
  users.ProfileImageUrl, 
  postHistory.PostHistoryTypeId
from 
  postHistory
    inner join users
        inner join comments
        on (users.ProfileImageUrl = users.AccountId)
      inner join users
      on (users.DisplayName >= users.WebsiteUrl)
    on (postHistory.UserDisplayName = users.DisplayName )
where comments.CreationDate is NULL
limit 101;
select  
  comments.Text, 
  comments.Id, 
  max(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(32 as int4))
from 
  comments
where comments.UserId is NULL
limit 95;
select  
  postHistory.UserDisplayName
from 
  comments
    inner join postHistory
          inner join postHistory
            inner join votes
            on (postHistory.PostHistoryTypeId = votes.Id )
          on (postHistory.Comment = postHistory.RevisionGUID)
        inner join postHistory
          inner join users
          on (users.AboutMe < users.WebsiteUrl)
        on (users.AccountId >= users.AccountId)
      inner join votes
        inner join votes
          inner join users
          on (votes.VoteTypeId = users.Id )
        on (votes.UserId = votes.Id )
      on (votes.UserId = votes.Id )
    on (postHistory.ContentLicense = postHistory.UserDisplayName)
where votes.VoteTypeId is not NULL
limit 57;
select  
  postLinks.CreationDate
from 
  postLinks
    inner join comments
    on (comments.CreationDate is NULL)
where comments.CreationDate < postLinks.CreationDate
limit 110;
select  
  min(
    cast(cast(null as tid) as tid)), 
  badges.UserId, 
  badges.TagBased, 
  badges.TagBased, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  badges.UserId, 
  badges.Id
from 
  badges
where badges.Name <= badges.Name
limit 102;
select  
  users.AccountId, 
  users.WebsiteUrl, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.WebsiteUrl, 
  users.CreationDate, 
  min(
    cast(cast(null as int2) as int2))
from 
  users
where users.CreationDate = users.CreationDate
limit 68;
select  
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  avg(
    cast(postLinks.RelatedPostId as int8)), 
  postLinks.LinkTypeId, 
  postLinks.PostId
from 
  postLinks
where postLinks.PostId is NULL;
select  
  avg(
    cast(2 as int4)), 
  min(
    cast(13 as int4)), 
  badges.Class, 
  posts.OwnerUserId, 
  posts.Body, 
  badges.UserId, 
  avg(
    cast(posts.Id as int8)), 
  votes.PostId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.UserId, 
  votes.PostId, 
  posts.ParentId, 
  badges.UserId, 
  votes.VoteTypeId, 
  badges.TagBased, 
  votes.CreationDate, 
  posts.PostTypeId
from 
  badges
    inner join posts
      inner join votes
      on (posts.CreationDate > posts.CreationDate)
    on (badges.UserId = posts.Id )
where votes.CreationDate is not NULL
limit 88;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.Id, 
  count(
    cast(votes.Id as int8)), 
  votes.Id, 
  votes.CreationDate, 
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.VoteTypeId is NULL
limit 89;
select  
  posts.Body
from 
  posts
    inner join posts
    on (posts.OwnerDisplayName is NULL)
where posts.PostTypeId = posts.Id;
select  
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.Id is NULL;
select  
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  max(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.PostId = postLinks.Id
limit 92;
select  
  votes.Id, 
  min(
    cast(cast(null as tid) as tid)), 
  posts.ParentId, 
  comments.UserId, 
  votes.VoteTypeId
from 
  votes
        inner join votes
          inner join posts
          on (votes.UserId <= posts.PostTypeId)
        on (votes.CreationDate >= votes.CreationDate)
      inner join postLinks
      on (posts.ContentLicense = posts.OwnerDisplayName)
    inner join users
      inner join comments
      on (comments.CreationDate < comments.CreationDate)
    on (posts.AcceptedAnswerId is NULL)
where users.CreationDate = votes.CreationDate;
select  
  postLinks.CreationDate, 
  postLinks.PostId
from 
  comments
    inner join postLinks
      inner join postLinks
          inner join users
          on (users.Id = postLinks.PostId)
        inner join comments
        on (users.ProfileImageUrl <= users.AccountId)
      on (comments.Id = postLinks.PostId)
    on (postLinks.Id = comments.PostId)
where users.AccountId < users.ProfileImageUrl
limit 40;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postHistory.Id, 
  users.AccountId, 
  comments.Id, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.UserId, 
  comments.UserDisplayName, 
  badges.Date
from 
  comments
    inner join comments
      inner join votes
        inner join users
            inner join badges
            on (users.ProfileImageUrl = users.AccountId)
          inner join postHistory
          on (postHistory.PostHistoryTypeId < badges.UserId)
        on (votes.CreationDate = postHistory.CreationDate )
      on (comments.UserDisplayName = badges.Name )
    on (comments.Text is not NULL)
where comments.CreationDate = comments.CreationDate
limit 91;
select  
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.AboutMe, 
  min(
    cast(cast(null as date) as date)), 
  users.AccountId, 
  users.CreationDate, 
  users.AccountId, 
  users.Id, 
  users.AccountId, 
  users.CreationDate, 
  users.AccountId, 
  users.DisplayName, 
  users.DisplayName, 
  sum(
    cast(cast(null as money) as money)), 
  users.CreationDate, 
  users.AboutMe, 
  users.AccountId, 
  users.CreationDate, 
  users.ProfileImageUrl, 
  users.Id, 
  users.ProfileImageUrl, 
  users.Location, 
  users.AccountId, 
  users.AccountId, 
  users.WebsiteUrl, 
  users.AccountId, 
  sum(
    cast(users.ProfileImageUrl as float8)), 
  users.AboutMe
from 
  users
where users.AccountId > users.ProfileImageUrl
limit 188;
select  
  posts.AcceptedAnswerId, 
  posts.AcceptedAnswerId, 
  posts.ParentId, 
  posts.AcceptedAnswerId, 
  posts.PostTypeId, 
  posts.PostTypeId, 
  posts.Tags
from 
  posts
where posts.AcceptedAnswerId is not NULL
limit 30;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as float4) as float4)), 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.Id
from 
  postLinks
where postLinks.Id is NULL
limit 56;
select  
  badges.Id, 
  badges.Date, 
  badges.Name, 
  badges.Date, 
  badges.TagBased, 
  badges.TagBased, 
  badges.Id, 
  badges.Name, 
  badges.UserId, 
  badges.Date, 
  badges.TagBased, 
  badges.Name
from 
  badges
where badges.Id is NULL;
select  
  min(
    cast(cast(null as float8) as float8)), 
  postLinks.RelatedPostId, 
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate > postLinks.CreationDate
limit 84;
select  
  votes.Id, 
  postHistory.ContentLicense, 
  votes.CreationDate, 
  users.AboutMe, 
  votes.Id, 
  max(
    cast(cast(null as float4) as float4)), 
  votes.PostId, 
  posts.OwnerDisplayName
from 
  posts
            inner join users
                inner join votes
                on (users.CreationDate >= users.CreationDate)
              inner join postLinks
              on (users.AccountId <= users.AccountId)
            on (posts.OwnerDisplayName <= users.WebsiteUrl)
          inner join votes
          on (votes.Id = votes.Id )
        inner join votes
          inner join postHistory
          on (votes.VoteTypeId = postHistory.PostId)
        on (posts.ContentLicense >= postHistory.Comment)
      inner join postLinks
        inner join users
        on (postLinks.RelatedPostId = users.Id )
      on (users.AccountId < users.ProfileImageUrl)
    inner join postHistory
        inner join votes
          inner join votes
            inner join postHistory
              inner join postLinks
              on (postHistory.UserId = postLinks.Id )
            on (postLinks.CreationDate >= votes.CreationDate)
          on (votes.CreationDate < postLinks.CreationDate)
        on (postHistory.PostId = votes.Id )
      inner join postLinks
          inner join posts
          on (posts.AcceptedAnswerId <= postLinks.Id)
        inner join badges
        on (posts.Body <= posts.Body)
      on (postHistory.RevisionGUID = postHistory.UserDisplayName)
    on (postLinks.RelatedPostId = badges.Id )
where votes.UserId is NULL
limit 31;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  postHistory.Text, 
  postHistory.CreationDate
from 
  postHistory
where postHistory.CreationDate is not NULL
limit 160;
select  
  posts.Id, 
  postLinks.LinkTypeId, 
  posts.OwnerDisplayName, 
  posts.Id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posts.ContentLicense
from 
  posts
    inner join postLinks
    on (postLinks.CreationDate < postLinks.CreationDate)
where postLinks.CreationDate is NULL;
select  
  postHistory.ContentLicense, 
  max(
    cast(cast(null as float8) as float8)), 
  postHistory.PostHistoryTypeId, 
  postHistory.Comment
from 
  postHistory
where postHistory.UserId is not NULL
limit 175;
select  
  badges.Date, 
  badges.Id, 
  badges.Id, 
  badges.Id, 
  badges.Class, 
  badges.Name, 
  badges.UserId
from 
  badges
where badges.Class is NULL;
select  
  votes.CreationDate, 
  votes.PostId, 
  votes.CreationDate
from 
  votes
where votes.VoteTypeId is NULL;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  badges.Name
from 
  postHistory
          inner join badges
              inner join users
                inner join postHistory
                on (users.Location = postHistory.UserDisplayName )
              on (badges.Id = users.Id )
            inner join comments
              inner join postLinks
              on (postLinks.Id <= comments.PostId)
            on (users.DisplayName = postHistory.RevisionGUID)
          on (comments.UserDisplayName > postHistory.Text)
        inner join posts
        on (users.AccountId < users.AccountId)
      inner join posts
      on (postLinks.Id = posts.Id )
    inner join postLinks
      inner join postHistory
        inner join postHistory
        on (postHistory.ContentLicense = postHistory.UserDisplayName )
      on (postLinks.PostId = postHistory.Id )
    on (postHistory.UserId is NULL)
where postHistory.UserId is not NULL
limit 114;
select  
  badges.Name, 
  badges.Class, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.Id, 
  postLinks.Id, 
  posts.Tags, 
  votes.UserId, 
  users.CreationDate
from 
  users
      inner join users
      on (users.Id = users.Id)
    inner join votes
            inner join votes
            on (votes.PostId < votes.PostId)
          inner join badges
          on (badges.TagBased < badges.TagBased)
        inner join postLinks
            inner join badges
            on (postLinks.LinkTypeId = badges.Id )
          inner join postHistory
          on (postHistory.RevisionGUID > postHistory.Text)
        on (postHistory.Comment < badges.Name)
      inner join postLinks
            inner join posts
            on (postLinks.RelatedPostId = posts.Id )
          inner join postHistory
              inner join posts
              on (posts.Title >= postHistory.UserDisplayName)
            inner join badges
            on (postHistory.UserDisplayName = badges.Name )
          on (badges.TagBased = badges.TagBased)
        inner join badges
          inner join comments
          on (comments.CreationDate = badges.Date)
        on (posts.Id = comments.Id )
      on (votes.CreationDate = badges.Date )
    on (badges.TagBased is NULL)
where posts.ParentId >= postHistory.PostHistoryTypeId
limit 107;
select  
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  max(
    cast(81 as int4)), 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  min(
    cast(95 as int4)), 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  min(
    cast(79 as int4)), 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  min(
    cast(cast(null as inet) as inet)), 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  max(
    cast(cast(null as date) as date)), 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.Id
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 67;
select  
  votes.Id, 
  posts.AcceptedAnswerId, 
  posts.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  users.WebsiteUrl, 
  min(
    cast(posts.CreationDate as "timestamp")), 
  postLinks.PostId
from 
  postHistory
      inner join postHistory
        inner join users
          inner join postHistory
          on (postHistory.ContentLicense >= postHistory.RevisionGUID)
        on (users.Id < postHistory.Id)
      on (users.AccountId >= users.ProfileImageUrl)
    inner join badges
        inner join votes
        on (badges.Name < badges.Name)
      inner join postHistory
          inner join postLinks
              inner join users
              on (postLinks.Id = users.Id)
            inner join postLinks
            on (users.WebsiteUrl > users.AboutMe)
          on (postHistory.Id = postLinks.Id )
        inner join postHistory
          inner join comments
            inner join posts
            on (posts.CreationDate >= comments.CreationDate)
          on (postHistory.RevisionGUID = posts.OwnerDisplayName )
        on (postHistory.CreationDate > posts.CreationDate)
      on (users.ProfileImageUrl < users.AccountId)
    on (votes.Id is NULL)
where postHistory.Text is not NULL;
select  
  votes.PostId, 
  votes.VoteTypeId
from 
  votes
    inner join postLinks
    on (votes.PostId is NULL)
where votes.CreationDate is not NULL
limit 144;
select  
  comments.ContentLicense, 
  votes.CreationDate, 
  min(
    cast(comments.CreationDate as "timestamp")), 
  comments.CreationDate, 
  avg(
    cast(cast(null as float8) as float8)), 
  votes.VoteTypeId, 
  comments.CreationDate, 
  votes.Id, 
  min(
    cast(cast(null as float8) as float8)), 
  postHistory.PostId, 
  votes.PostId
from 
  comments
        inner join votes
        on (votes.Id < votes.Id)
      inner join comments
      on (comments.CreationDate < comments.CreationDate)
    inner join votes
        inner join postHistory
          inner join votes
          on (postHistory.RevisionGUID = postHistory.Comment)
        on (postHistory.Comment < postHistory.UserDisplayName)
      inner join votes
        inner join comments
        on (votes.UserId = comments.Id )
      on (comments.ContentLicense >= comments.UserDisplayName)
    on (postHistory.UserDisplayName is NULL)
where votes.UserId <= votes.Id;
select  
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  count(
    cast(postHistory.PostHistoryTypeId as int8)), 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.CreationDate is not NULL
limit 108;
select  
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  votes
      inner join badges
      on (badges.TagBased < badges.TagBased)
    inner join posts
      inner join users
            inner join comments
                inner join posts
                on (comments.PostId >= posts.Id)
              inner join posts
              on (posts.AcceptedAnswerId = posts.Id )
            on (users.AccountId >= users.ProfileImageUrl)
          inner join postHistory
            inner join posts
            on (posts.CreationDate = postHistory.CreationDate)
          on (comments.UserDisplayName = postHistory.RevisionGUID)
        inner join votes
          inner join users
              inner join posts
              on (users.DisplayName >= posts.ContentLicense)
            inner join badges
            on (badges.Date > users.CreationDate)
          on (users.ProfileImageUrl < users.AccountId)
        on (badges.Class <= posts.Id)
      on (users.ProfileImageUrl = users.AccountId)
    on (users.ProfileImageUrl <= users.ProfileImageUrl)
where users.ProfileImageUrl is NULL
limit 87;
select  
  min(
    cast(cast(null as inet) as inet)), 
  postLinks.Id, 
  min(
    cast(37 as int4)), 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.CreationDate > postLinks.CreationDate;
select  
  votes.Id, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.CreationDate, 
  posts.Body, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  posts.OwnerDisplayName, 
  votes.UserId, 
  posts.ParentId, 
  badges.UserId
from 
  postLinks
        inner join postLinks
            inner join posts
              inner join votes
                inner join postHistory
                on (postHistory.ContentLicense > postHistory.RevisionGUID)
              on (posts.Body = postHistory.UserDisplayName )
            on (postLinks.PostId = posts.Id )
          inner join postLinks
          on (postHistory.CreationDate >= posts.CreationDate)
        on (postLinks.Id = postLinks.Id )
      inner join badges
          inner join posts
          on (badges.Name = posts.OwnerDisplayName )
        inner join postHistory
          inner join postLinks
          on (postHistory.CreationDate = postLinks.CreationDate )
        on (posts.CreationDate = postLinks.CreationDate)
      on (posts.Body > postHistory.Comment)
    inner join badges
    on (posts.Body > posts.OwnerDisplayName)
where badges.Date is not NULL;
select  
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as tid) as tid)), 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id
from 
  postLinks
where postLinks.Id is not NULL
limit 55;
select  
  postLinks.CreationDate, 
  comments.ContentLicense, 
  badges.Id, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  min(
    cast(cast(null as inet) as inet)), 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.Id, 
  users.WebsiteUrl, 
  comments.Text, 
  postHistory.Id, 
  postHistory.UserId, 
  postLinks.PostId, 
  postHistory.Id, 
  postHistory.UserId
from 
  postLinks
    inner join badges
      inner join comments
          inner join postHistory
            inner join postLinks
            on (postHistory.Text <= postHistory.UserDisplayName)
          on (comments.PostId = postLinks.Id )
        inner join users
        on (postHistory.RevisionGUID <= postHistory.Comment)
      on (postLinks.CreationDate >= users.CreationDate)
    on (postLinks.RelatedPostId = comments.Id )
where badges.Id is NULL
limit 76;
select  
  users.Id, 
  sum(
    cast(users.ProfileImageUrl as float8)), 
  users.AccountId, 
  postLinks.RelatedPostId, 
  users.AccountId, 
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  users.WebsiteUrl, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.CreationDate
from 
  postLinks
      inner join users
      on (postLinks.CreationDate >= postLinks.CreationDate)
    inner join users
    on (users.DisplayName <= users.DisplayName)
where postLinks.CreationDate is not NULL;
select  
  postHistory.ContentLicense, 
  postHistory.Id, 
  posts.AcceptedAnswerId, 
  postHistory.Id, 
  posts.AcceptedAnswerId, 
  posts.Tags, 
  postHistory.ContentLicense, 
  min(
    cast(87 as int4))
from 
  postHistory
    inner join posts
    on (posts.CreationDate is not NULL)
where posts.OwnerUserId is NULL
limit 160;
select distinct 
  users.ProfileImageUrl, 
  comments.UserId, 
  users.CreationDate, 
  badges.UserId, 
  postLinks.LinkTypeId, 
  postHistory.UserId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  users.CreationDate
from 
  postHistory
      inner join badges
      on (badges.Date < badges.Date)
    inner join postLinks
        inner join comments
            inner join postHistory
            on (comments.UserDisplayName >= postHistory.UserDisplayName)
          inner join comments
            inner join users
              inner join postHistory
                inner join comments
                on (postHistory.UserId = comments.Id )
              on (users.Location = postHistory.UserDisplayName )
            on (postHistory.UserId > comments.PostId)
          on (postHistory.UserId = postHistory.Id )
        on (users.AccountId < users.ProfileImageUrl)
      inner join postLinks
      on (postHistory.CreationDate > users.CreationDate)
    on (comments.Text < comments.Text)
where comments.Text is not NULL
limit 125;
select  
  min(
    cast(votes.Id as int8)), 
  posts.AcceptedAnswerId, 
  postLinks.PostId, 
  users.Location, 
  votes.Id, 
  posts.CreationDate, 
  votes.VoteTypeId, 
  sum(
    cast(cast(null as int2) as int2)), 
  postLinks.PostId, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postHistory.Text, 
  posts.OwnerUserId, 
  postLinks.LinkTypeId, 
  posts.PostTypeId, 
  users.AboutMe, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postHistory.PostHistoryTypeId, 
  postHistory.UserId, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  users
          inner join users
            inner join comments
            on (users.Location = comments.ContentLicense )
          on (users.CreationDate <= users.CreationDate)
        inner join posts
        on (posts.CreationDate > comments.CreationDate)
      inner join postHistory
      on (postHistory.UserId <= postHistory.Id)
    inner join postLinks
        inner join votes
        on (votes.PostId >= postLinks.PostId)
      inner join posts
          inner join postHistory
            inner join postLinks
            on (postLinks.CreationDate > postLinks.CreationDate)
          on (posts.Tags < posts.ContentLicense)
        inner join badges
          inner join posts
          on (posts.Title < posts.OwnerDisplayName)
        on (posts.Body >= posts.ContentLicense)
      on (postLinks.CreationDate = postLinks.CreationDate )
    on (posts.PostTypeId is not NULL)
where badges.TagBased < badges.TagBased
limit 113;
select  
  users.CreationDate
from 
  users
where users.AboutMe >= users.WebsiteUrl
limit 153;
select  
  badges.Date, 
  avg(
    cast(14 as int4)), 
  posts.Title, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.ContentLicense, 
  votes.CreationDate, 
  postLinks.Id
from 
  postHistory
            inner join posts
            on (postHistory.PostHistoryTypeId < postHistory.PostHistoryTypeId)
          inner join postHistory
            inner join users
            on (users.ProfileImageUrl = users.ProfileImageUrl)
          on (postHistory.CreationDate = users.CreationDate)
        inner join users
            inner join badges
                inner join badges
                on (badges.Class <= badges.UserId)
              inner join votes
              on (badges.UserId = votes.Id )
            on (badges.Name <= users.AboutMe)
          inner join postLinks
          on (votes.PostId = postLinks.Id )
        on (users.ProfileImageUrl = users.AccountId)
      inner join postHistory
      on (posts.AcceptedAnswerId = postHistory.Id )
    inner join posts
        inner join postLinks
            inner join posts
            on (posts.CreationDate >= postLinks.CreationDate)
          inner join posts
          on (posts.ContentLicense < posts.Body)
        on (posts.PostTypeId = posts.Id )
      inner join postLinks
      on (postLinks.RelatedPostId = postLinks.Id )
    on (posts.OwnerUserId is not NULL)
where postHistory.CreationDate < badges.Date
limit 85;
select  
  comments.UserDisplayName, 
  votes.UserId, 
  posts.Id, 
  comments.PostId, 
  postLinks.LinkTypeId, 
  votes.VoteTypeId, 
  comments.Text, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  max(
    cast(cast(null as money) as money))
from 
  comments
      inner join postLinks
          inner join votes
              inner join postHistory
              on (postHistory.Comment >= postHistory.UserDisplayName)
            inner join postLinks
              inner join postLinks
              on (postLinks.PostId = postLinks.Id )
            on (votes.Id > postHistory.UserId)
          on (votes.VoteTypeId = postLinks.LinkTypeId)
        inner join comments
          inner join posts
              inner join posts
              on (posts.Id < posts.Id)
            inner join votes
              inner join postLinks
              on (votes.UserId = postLinks.Id )
            on (posts.CreationDate > votes.CreationDate)
          on (posts.PostTypeId > comments.UserId)
        on (postLinks.LinkTypeId < postLinks.PostId)
      on (posts.Tags > posts.OwnerDisplayName)
    inner join users
      inner join votes
      on (users.CreationDate = votes.CreationDate)
    on (postLinks.RelatedPostId >= postLinks.RelatedPostId)
where postLinks.RelatedPostId is not NULL;
select  
  votes.CreationDate, 
  comments.UserDisplayName, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.AboutMe, 
  avg(
    cast(cast(null as float4) as float4))
from 
  postLinks
        inner join postHistory
        on (postLinks.CreationDate < postHistory.CreationDate)
      inner join votes
      on (postHistory.CreationDate <= postLinks.CreationDate)
    inner join votes
        inner join users
        on (users.Location >= users.AboutMe)
      inner join comments
      on (users.DisplayName = comments.UserDisplayName)
    on (votes.CreationDate > postHistory.CreationDate)
where postLinks.PostId is not NULL;
select  
  badges.Id
from 
  badges
where badges.TagBased is not NULL
limit 127;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.VoteTypeId
from 
  posts
    inner join votes
    on (votes.VoteTypeId is not NULL)
where posts.ParentId is NULL
limit 176;
select  
  posts.CreationDate, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  sum(
    cast(97 as int4))
from 
  posts
where posts.CreationDate = posts.CreationDate
limit 96;
select  
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as int2) as int2)), 
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  max(
    cast(cast(null as float8) as float8))
from 
  postLinks
where postLinks.RelatedPostId is NULL;
select  
  users.DisplayName, 
  posts.ParentId, 
  min(
    cast(10 as int4)), 
  postLinks.RelatedPostId
from 
  users
          inner join posts
            inner join posts
            on (posts.OwnerUserId >= posts.PostTypeId)
          on (posts.Tags = posts.Tags)
        inner join postLinks
        on (users.ProfileImageUrl > users.ProfileImageUrl)
      inner join users
          inner join postLinks
          on (users.ProfileImageUrl > users.ProfileImageUrl)
        inner join posts
            inner join votes
            on (votes.PostId >= posts.OwnerUserId)
          inner join comments
              inner join posts
              on (posts.CreationDate < comments.CreationDate)
            inner join users
            on (comments.CreationDate >= comments.CreationDate)
          on (posts.ContentLicense = posts.OwnerDisplayName )
        on (users.AccountId < users.AccountId)
      on (posts.OwnerDisplayName <= users.DisplayName)
    inner join postLinks
    on (users.Id = postLinks.Id )
where comments.Text is not NULL
limit 68;
select  
  postHistory.Text, 
  postHistory.PostId
from 
  postHistory
where postHistory.PostId is not NULL
limit 53;
select  
  users.DisplayName, 
  comments.CreationDate, 
  comments.Text, 
  users.CreationDate
from 
  users
          inner join users
            inner join posts
              inner join posts
              on (posts.Body <= posts.Body)
            on (users.AccountId <= users.AccountId)
          on (posts.CreationDate < users.CreationDate)
        inner join comments
            inner join votes
            on (comments.UserId = votes.Id )
          inner join comments
              inner join users
              on (comments.Text = users.DisplayName )
            inner join posts
              inner join users
              on (posts.OwnerDisplayName = users.DisplayName )
            on (comments.CreationDate < comments.CreationDate)
          on (users.ProfileImageUrl > users.ProfileImageUrl)
        on (users.CreationDate = votes.CreationDate )
      inner join comments
        inner join users
          inner join postLinks
          on (postLinks.CreationDate < users.CreationDate)
        on (comments.PostId <= comments.UserId)
      on (posts.CreationDate > postLinks.CreationDate)
    inner join postHistory
      inner join postHistory
      on (postHistory.PostHistoryTypeId <= postHistory.Id)
    on (users.DisplayName <= posts.Title)
where postLinks.CreationDate > votes.CreationDate
limit 125;
select  
  comments.Text, 
  comments.CreationDate
from 
  comments
where comments.UserId is not NULL;
select  
  sum(
    cast(38 as int4)), 
  avg(
    cast(posts.OwnerUserId as int8)), 
  badges.Class, 
  max(
    cast(cast(null as int2) as int2))
from 
  badges
        inner join votes
        on (badges.Name < badges.Name)
      inner join posts
      on (badges.UserId < badges.Class)
    inner join postHistory
      inner join comments
      on (postHistory.Text <= comments.Text)
    on (postHistory.PostId is not NULL)
where badges.UserId is NULL
limit 123;
select  
  users.AboutMe
from 
  comments
        inner join users
          inner join users
          on (users.WebsiteUrl < users.AboutMe)
        on (users.AboutMe >= comments.ContentLicense)
      inner join users
        inner join comments
        on (users.AboutMe = comments.ContentLicense )
      on (users.AboutMe <= users.WebsiteUrl)
    inner join comments
      inner join comments
          inner join users
          on (users.ProfileImageUrl < users.AccountId)
        inner join badges
                inner join postLinks
                on (badges.Id = postLinks.RelatedPostId)
              inner join users
              on (users.AboutMe = users.WebsiteUrl)
            inner join badges
            on (badges.UserId < postLinks.Id)
          inner join badges
          on (badges.TagBased <= badges.TagBased)
        on (badges.Date < users.CreationDate)
      on (users.AccountId > users.AccountId)
    on (users.CreationDate <= users.CreationDate)
where users.ProfileImageUrl > users.ProfileImageUrl
limit 118;
select  
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.Text, 
  comments.Id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.WebsiteUrl, 
  users.CreationDate, 
  users.AboutMe
from 
  users
    inner join comments
    on (users.ProfileImageUrl < users.ProfileImageUrl)
where users.Id is not NULL
limit 123;
select  
  postHistory.PostId, 
  postLinks.RelatedPostId
from 
  comments
    inner join votes
        inner join posts
        on (votes.Id >= votes.VoteTypeId)
      inner join users
        inner join badges
            inner join posts
            on (badges.Name = posts.Tags)
          inner join postLinks
            inner join postHistory
            on (postHistory.Comment < postHistory.RevisionGUID)
          on (badges.Id > postLinks.Id)
        on (users.WebsiteUrl = posts.OwnerDisplayName )
      on (votes.Id >= votes.Id)
    on (comments.CreationDate = votes.CreationDate)
where users.Location is NULL
limit 154;
select  
  posts.Body
from 
  posts
where posts.Title is not NULL;
select  
  users.CreationDate, 
  users.Id, 
  badges.TagBased, 
  badges.Date, 
  max(
    cast(cast(null as "time") as "time")), 
  badges.UserId, 
  users.CreationDate, 
  badges.Name, 
  users.DisplayName, 
  min(
    cast(70 as int4)), 
  users.WebsiteUrl
from 
  badges
    inner join users
    on (badges.Date < badges.Date)
where badges.Date < badges.Date
limit 101;
select  
  users.Id
from 
  users
where users.Location is not NULL
limit 101;
select  
  badges.TagBased
from 
  posts
      inner join badges
      on (posts.Id = badges.Id )
    inner join comments
    on (posts.CreationDate <= badges.Date)
where posts.PostTypeId > comments.Id;
select  
  count(*), 
  comments.Id, 
  comments.PostId, 
  comments.PostId, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  comments
where comments.UserId < comments.Id
limit 164;
select  
  postLinks.LinkTypeId, 
  posts.Id, 
  postLinks.RelatedPostId, 
  badges.Id, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  posts.Body
from 
  postLinks
      inner join badges
      on (badges.Name < badges.Name)
    inner join posts
    on (badges.Id is not NULL)
where badges.Id is NULL
limit 102;
select  
  users.WebsiteUrl, 
  users.ProfileImageUrl, 
  users.DisplayName, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.ProfileImageUrl, 
  sum(
    cast(cast(null as money) as money)), 
  users.AccountId, 
  users.Id, 
  users.AccountId
from 
  users
    inner join users
    on (users.WebsiteUrl is not NULL)
where users.AboutMe is NULL
limit 122;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  min(
    cast(cast(null as text) as text)), 
  votes.Id
from 
  votes
where votes.CreationDate is not NULL
limit 119;
select  
  max(
    cast(cast(null as inet) as inet)), 
  users.CreationDate, 
  posts.CreationDate, 
  votes.CreationDate, 
  posts.Tags, 
  votes.CreationDate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  users.DisplayName, 
  votes.UserId, 
  users.WebsiteUrl, 
  users.ProfileImageUrl
from 
  comments
      inner join posts
      on (posts.CreationDate < posts.CreationDate)
    inner join votes
          inner join comments
            inner join votes
              inner join users
              on (votes.CreationDate > votes.CreationDate)
            on (users.AccountId = users.ProfileImageUrl)
          on (votes.Id = votes.Id )
        inner join comments
        on (users.ProfileImageUrl < users.ProfileImageUrl)
      inner join users
            inner join votes
            on (users.DisplayName < users.AboutMe)
          inner join postLinks
          on (users.WebsiteUrl < users.AboutMe)
        inner join postHistory
              inner join votes
              on (postHistory.UserDisplayName < postHistory.Text)
            inner join users
                inner join postLinks
                on (postLinks.CreationDate > postLinks.CreationDate)
              inner join badges
              on (badges.TagBased < badges.TagBased)
            on (users.AccountId <= users.AccountId)
          inner join users
            inner join votes
            on (users.Id >= votes.UserId)
          on (users.Location < users.AboutMe)
        on (postLinks.RelatedPostId = badges.Id )
      on (users.ProfileImageUrl = users.AccountId)
    on (postHistory.PostHistoryTypeId is NULL)
where badges.TagBased = badges.TagBased
limit 47;
select  
  postLinks.RelatedPostId, 
  votes.VoteTypeId, 
  comments.Id, 
  users.Id, 
  votes.UserId, 
  posts.Id
from 
  badges
            inner join users
            on (badges.Class <= users.Id)
          inner join users
            inner join users
            on (users.CreationDate >= users.CreationDate)
          on (users.WebsiteUrl = users.DisplayName )
        inner join postLinks
        on (users.Id = postLinks.Id )
      inner join users
      on (users.AccountId = users.ProfileImageUrl)
    inner join posts
      inner join users
            inner join votes
            on (votes.PostId < votes.VoteTypeId)
          inner join votes
            inner join comments
            on (comments.UserId < comments.Id)
          on (users.WebsiteUrl > users.AboutMe)
        inner join badges
          inner join postLinks
          on (badges.Id = postLinks.Id )
        on (users.ProfileImageUrl > users.ProfileImageUrl)
      on (users.ProfileImageUrl <= users.AccountId)
    on (badges.TagBased > badges.TagBased)
where badges.Class is not NULL
limit 142;
select  
  max(
    cast(cast(null as int2) as int2))
from 
  comments
where comments.CreationDate is not NULL
limit 45;
select  
  posts.ContentLicense, 
  posts.Body, 
  max(
    cast(posts.PostTypeId as int8)), 
  posts.OwnerUserId, 
  posts.Tags, 
  posts.Tags, 
  posts.Body, 
  posts.CreationDate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.CreationDate, 
  posts.Tags, 
  posts.OwnerDisplayName
from 
  posts
where posts.ContentLicense is NULL
limit 114;
select  
  users.WebsiteUrl, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.AboutMe, 
  users.DisplayName, 
  users.DisplayName, 
  users.AboutMe, 
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
where users.WebsiteUrl is NULL
limit 124;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  badges.UserId, 
  badges.Id
from 
  badges
where badges.UserId is not NULL;
select  
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as int2) as int2))
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 101;
select  
  max(
    cast(cast(null as int2) as int2)), 
  postLinks.CreationDate
from 
  badges
          inner join postLinks
          on (badges.Id = postLinks.Id )
        inner join users
          inner join postHistory
            inner join votes
            on (postHistory.ContentLicense <= postHistory.Text)
          on (votes.Id < votes.VoteTypeId)
        on (postHistory.PostId > postLinks.RelatedPostId)
      inner join postHistory
      on (badges.TagBased <= badges.TagBased)
    inner join postLinks
      inner join postLinks
        inner join users
            inner join badges
            on (badges.Class > badges.UserId)
          inner join postLinks
          on (users.AboutMe > badges.Name)
        on (badges.Class = postLinks.RelatedPostId)
      on (postLinks.LinkTypeId = badges.Id )
    on (votes.PostId is NULL)
where users.DisplayName is NULL
limit 50;
select  
  max(
    cast(cast(null as xid8) as xid8))
from 
  comments
      inner join postLinks
        inner join votes
        on (postLinks.CreationDate > votes.CreationDate)
      on (comments.ContentLicense > comments.ContentLicense)
    inner join posts
    on (postLinks.LinkTypeId is not NULL)
where comments.PostId is NULL
limit 43;
select  
  posts.PostTypeId, 
  posts.Id, 
  posts.ParentId, 
  posts.Id
from 
  posts
where posts.Tags is not NULL
limit 129;
select  
  users.Location
from 
  users
      inner join badges
      on (badges.Date <= users.CreationDate)
    inner join votes
    on (users.WebsiteUrl is NULL)
where badges.Date >= votes.CreationDate
limit 123;
select  
  comments.PostId
from 
  comments
where comments.UserDisplayName = comments.ContentLicense
limit 102;
select  
  users.Location, 
  users.ProfileImageUrl, 
  users.DisplayName, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  users.ProfileImageUrl, 
  min(
    cast(12 as int4)), 
  users.WebsiteUrl, 
  postLinks.RelatedPostId, 
  max(
    cast(users.DisplayName as text)), 
  postLinks.PostId, 
  postLinks.PostId
from 
  postLinks
    inner join users
    on (users.WebsiteUrl is not NULL)
where users.CreationDate is NULL;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.DisplayName, 
  users.Location, 
  users.AboutMe, 
  users.AboutMe, 
  users.AboutMe, 
  users.Id, 
  users.CreationDate, 
  users.AccountId, 
  users.AboutMe, 
  users.AboutMe, 
  users.WebsiteUrl, 
  users.ProfileImageUrl, 
  users.Location, 
  max(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  users
where users.ProfileImageUrl is NULL
limit 153;
select  
  min(
    cast(cast(null as text) as text)), 
  votes.Id, 
  votes.PostId, 
  votes.CreationDate, 
  votes.CreationDate
from 
  votes
where votes.UserId is not NULL
limit 196;
select  
  postHistory.PostHistoryTypeId, 
  users.CreationDate, 
  badges.Class, 
  postLinks.LinkTypeId
from 
  votes
          inner join postHistory
          on (postHistory.CreationDate < votes.CreationDate)
        inner join users
        on (postHistory.ContentLicense = users.DisplayName )
      inner join users
      on (users.CreationDate >= users.CreationDate)
    inner join users
      inner join badges
        inner join postLinks
        on (badges.Name > badges.Name)
      on (postLinks.RelatedPostId > badges.UserId)
    on (users.WebsiteUrl is NULL)
where badges.Date > users.CreationDate
limit 95;
select  
  postHistory.ContentLicense, 
  badges.UserId, 
  badges.Name, 
  votes.UserId, 
  postHistory.UserId, 
  badges.Date, 
  badges.UserId
from 
  badges
          inner join postHistory
                inner join posts
                on (posts.PostTypeId >= posts.Id)
              inner join badges
                inner join comments
                on (badges.TagBased <= badges.TagBased)
              on (badges.Date = postHistory.CreationDate)
            inner join postHistory
            on (postHistory.ContentLicense >= posts.ContentLicense)
          on (postHistory.CreationDate = postHistory.CreationDate)
        inner join badges
        on (postHistory.Id > postHistory.Id)
      inner join votes
      on (badges.TagBased <= badges.TagBased)
    inner join badges
      inner join postHistory
      on (badges.Id > postHistory.PostHistoryTypeId)
    on (badges.UserId is NULL)
where postHistory.UserId = postHistory.PostId
limit 115;
select  
  badges.Name, 
  postLinks.LinkTypeId, 
  badges.Id, 
  posts.Tags, 
  posts.Body, 
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  postLinks.Id, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postHistory.PostHistoryTypeId, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  posts.ContentLicense
from 
  badges
        inner join posts
        on (badges.Id = posts.ParentId)
      inner join postHistory
      on (badges.TagBased <= badges.TagBased)
    inner join postLinks
      inner join postHistory
      on (postHistory.CreationDate = postHistory.CreationDate)
    on (badges.Date = postHistory.CreationDate )
where postHistory.ContentLicense is not NULL
limit 96;
select  
  votes.UserId, 
  postHistory.PostId, 
  badges.UserId, 
  comments.UserDisplayName
from 
  comments
        inner join votes
        on (votes.UserId >= votes.PostId)
      inner join postLinks
        inner join votes
          inner join votes
          on (votes.CreationDate = votes.CreationDate)
        on (votes.CreationDate > votes.CreationDate)
      on (votes.UserId >= postLinks.PostId)
    inner join badges
          inner join postLinks
          on (badges.Date = postLinks.CreationDate )
        inner join comments
        on (comments.ContentLicense < comments.ContentLicense)
      inner join postHistory
      on (postHistory.Comment > postHistory.RevisionGUID)
    on (comments.UserId is NULL)
where votes.PostId = postLinks.LinkTypeId
limit 80;
select  
  posts.Title, 
  posts.AcceptedAnswerId, 
  posts.ContentLicense, 
  posts.Tags, 
  posts.Body, 
  posts.Id, 
  posts.OwnerDisplayName
from 
  posts
    inner join posts
    on (posts.PostTypeId is not NULL)
where posts.Body is not NULL
limit 83;
select  
  max(
    cast(posts.Tags as text)), 
  posts.CreationDate, 
  comments.UserDisplayName
from 
  comments
    inner join posts
    on (comments.UserId is not NULL)
where comments.UserDisplayName <= posts.OwnerDisplayName
limit 80;
select  
  comments.Id, 
  max(
    cast(cast(null as float8) as float8))
from 
  comments
where comments.ContentLicense <= comments.UserDisplayName
limit 110;
select  
  users.AboutMe, 
  postHistory.PostId, 
  sum(
    cast(users.ProfileImageUrl as float8))
from 
  postLinks
      inner join postHistory
          inner join users
            inner join posts
              inner join postHistory
              on (postHistory.ContentLicense >= postHistory.RevisionGUID)
            on (users.CreationDate = users.CreationDate)
          on (posts.PostTypeId >= posts.AcceptedAnswerId)
        inner join postLinks
          inner join comments
            inner join comments
            on (comments.UserId = comments.Id )
          on (comments.UserId > comments.PostId)
        on (comments.CreationDate >= users.CreationDate)
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    inner join votes
    on (votes.CreationDate <= posts.CreationDate)
where postLinks.Id is NULL
limit 33;
select  
  min(
    cast(cast(null as timetz) as timetz))
from 
  postHistory
          inner join votes
          on (votes.CreationDate < postHistory.CreationDate)
        inner join postHistory
        on (postHistory.CreationDate <= postHistory.CreationDate)
      inner join postLinks
          inner join postLinks
            inner join votes
            on (votes.CreationDate > votes.CreationDate)
          on (postLinks.LinkTypeId < postLinks.Id)
        inner join postHistory
            inner join users
              inner join comments
              on (comments.ContentLicense > users.DisplayName)
            on (comments.Text < users.AboutMe)
          inner join postLinks
          on (comments.UserId = postLinks.Id )
        on (postLinks.CreationDate > votes.CreationDate)
      on (postHistory.PostId > postHistory.PostId)
    inner join comments
            inner join comments
            on (comments.UserId <= comments.Id)
          inner join posts
          on (posts.Tags > comments.UserDisplayName)
        inner join users
        on (posts.Body > comments.Text)
      inner join postLinks
      on (postLinks.RelatedPostId > posts.AcceptedAnswerId)
    on (users.WebsiteUrl is not NULL)
where users.CreationDate < votes.CreationDate;
select  
  postHistory.CreationDate, 
  postHistory.RevisionGUID, 
  postHistory.CreationDate, 
  comments.UserDisplayName, 
  sum(
    cast(cast(null as int2) as int2)), 
  badges.TagBased, 
  postLinks.Id
from 
  posts
        inner join postLinks
            inner join postHistory
            on (postLinks.CreationDate < postLinks.CreationDate)
          inner join badges
          on (badges.Id <= postLinks.Id)
        on (badges.TagBased < badges.TagBased)
      inner join comments
          inner join postHistory
          on (postHistory.PostId < postHistory.Id)
        inner join badges
          inner join comments
          on (badges.Class = comments.Id )
        on (postHistory.UserId = comments.Id )
      on (postHistory.Comment >= postHistory.UserDisplayName)
    inner join posts
        inner join users
        on (users.DisplayName < posts.ContentLicense)
      inner join postHistory
        inner join postHistory
          inner join posts
          on (postHistory.UserId = posts.Id )
        on (postHistory.PostHistoryTypeId < postHistory.PostId)
      on (postHistory.UserId = users.Id)
    on (comments.PostId is not NULL)
where users.AccountId > users.AccountId
limit 135;
select  
  posts.Title, 
  sum(
    cast(posts.ParentId as int8)), 
  max(
    cast(posts.OwnerUserId as int8)), 
  posts.PostTypeId, 
  posts.ParentId, 
  posts.OwnerUserId
from 
  posts
where posts.OwnerUserId is not NULL
limit 94;
select  
  users.DisplayName, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postLinks.PostId, 
  users.Location, 
  posts.ContentLicense, 
  badges.Name
from 
  postLinks
    inner join postLinks
        inner join posts
            inner join posts
            on (posts.ParentId < posts.Id)
          inner join users
          on (posts.OwnerDisplayName = users.DisplayName )
        on (posts.ParentId < postLinks.RelatedPostId)
      inner join votes
          inner join users
            inner join users
            on (users.Id > users.Id)
          on (users.AccountId <= users.AccountId)
        inner join postLinks
            inner join postHistory
            on (postHistory.UserDisplayName = postHistory.Comment)
          inner join badges
            inner join posts
              inner join postLinks
                inner join postHistory
                on (postLinks.CreationDate < postHistory.CreationDate)
              on (postHistory.CreationDate <= posts.CreationDate)
            on (badges.Class > postHistory.UserId)
          on (postHistory.UserId <= postHistory.PostId)
        on (postLinks.LinkTypeId >= postHistory.Id)
      on (postLinks.CreationDate <= badges.Date)
    on (users.CreationDate = posts.CreationDate)
where votes.CreationDate is not NULL
limit 167;
select  
  max(
    cast(30 as int4)), 
  users.Location
from 
  users
          inner join postLinks
          on (users.Id = postLinks.Id )
        inner join votes
        on (users.AboutMe >= users.WebsiteUrl)
      inner join votes
        inner join votes
          inner join postLinks
              inner join posts
              on (posts.ContentLicense < posts.OwnerDisplayName)
            inner join votes
            on (postLinks.CreationDate = votes.CreationDate)
          on (votes.CreationDate > posts.CreationDate)
        on (votes.VoteTypeId = votes.Id )
      on (votes.VoteTypeId < votes.UserId)
    inner join users
    on (postLinks.CreationDate is NULL)
where users.ProfileImageUrl > users.ProfileImageUrl
limit 69;
select  
  users.Id, 
  users.CreationDate, 
  users.CreationDate, 
  min(
    cast(8 as int4)), 
  users.WebsiteUrl, 
  users.DisplayName, 
  users.Id, 
  users.CreationDate, 
  users.WebsiteUrl, 
  avg(
    cast(users.Id as int8)), 
  users.ProfileImageUrl
from 
  users
where users.Id = users.Id
limit 91;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  users.Location, 
  postLinks.LinkTypeId, 
  users.CreationDate, 
  posts.Id, 
  users.CreationDate, 
  postLinks.CreationDate, 
  users.Location, 
  users.Id, 
  postLinks.RelatedPostId, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  users.AboutMe, 
  min(
    cast(cast(null as "time") as "time")), 
  posts.Tags, 
  users.Id
from 
  posts
    inner join users
      inner join postLinks
      on (users.AccountId <= users.ProfileImageUrl)
    on (postLinks.CreationDate < postLinks.CreationDate)
where postLinks.PostId is NULL
limit 63;
select  
  min(
    cast(posts.PostTypeId as int8)), 
  postHistory.UserId, 
  users.DisplayName, 
  postHistory.Id, 
  count(*)
from 
  postLinks
      inner join postHistory
      on (postLinks.LinkTypeId = postHistory.Id )
    inner join posts
      inner join users
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    on (users.ProfileImageUrl <= users.AccountId)
where postLinks.PostId is not NULL
limit 26;
select  
  comments.UserDisplayName, 
  comments.UserDisplayName, 
  comments.Text, 
  comments.Text, 
  comments.ContentLicense
from 
  comments
where comments.Id is not NULL
limit 64;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  badges.Name, 
  badges.Class, 
  badges.Name, 
  badges.UserId, 
  badges.Id
from 
  badges
where badges.Date is NULL
limit 133;
select  
  comments.Id, 
  comments.Text, 
  comments.UserDisplayName
from 
  comments
where comments.UserId is not NULL;
select  
  votes.Id, 
  votes.Id, 
  votes.PostId, 
  votes.Id
from 
  votes
where votes.PostId is not NULL;
select  
  comments.ContentLicense, 
  badges.Name, 
  badges.Id
from 
  votes
          inner join badges
          on (badges.Date >= votes.CreationDate)
        inner join posts
        on (votes.PostId = posts.Id )
      inner join comments
      on (badges.Date = votes.CreationDate)
    inner join posts
    on (posts.Id > comments.Id)
where comments.CreationDate is NULL
limit 81;
select  
  users.Id, 
  badges.Name, 
  votes.UserId, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  sum(
    cast(22 as int4)), 
  max(
    cast(cast(null as int2) as int2))
from 
  users
      inner join badges
      on (users.ProfileImageUrl > users.AccountId)
    inner join votes
    on (users.WebsiteUrl < users.AboutMe)
where users.AboutMe is NULL
limit 95;
select  
  max(
    cast(posts.CreationDate as "timestamp"))
from 
  users
    inner join postHistory
      inner join badges
            inner join postLinks
              inner join postLinks
              on (postLinks.RelatedPostId = postLinks.Id )
            on (postLinks.CreationDate = postLinks.CreationDate)
          inner join posts
          on (posts.ParentId = posts.AcceptedAnswerId)
        inner join badges
        on (badges.Class >= badges.Id)
      on (badges.Name > postHistory.RevisionGUID)
    on (users.CreationDate = postLinks.CreationDate )
where users.AccountId is not NULL
limit 73;
select  
  postHistory.PostId, 
  badges.TagBased
from 
  posts
        inner join badges
          inner join badges
          on (badges.Class = badges.Id)
        on (posts.Tags = badges.Name )
      inner join postHistory
        inner join postHistory
          inner join postLinks
          on (postHistory.Text = postHistory.Text)
        on (postLinks.CreationDate = postHistory.CreationDate)
      on (badges.TagBased < badges.TagBased)
    inner join postHistory
    on (postHistory.UserId is not NULL)
where postHistory.ContentLicense >= postHistory.Text
limit 70;
select  
  users.DisplayName, 
  users.WebsiteUrl, 
  users.DisplayName, 
  users.AccountId, 
  users.WebsiteUrl, 
  users.Id, 
  avg(
    cast(cast(null as float4) as float4)), 
  users.AboutMe
from 
  users
where users.DisplayName is NULL
limit 131;
select  
  comments.Text, 
  comments.UserId, 
  comments.ContentLicense
from 
  comments
where comments.UserId is NULL
limit 18;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.Id is not NULL
limit 131;
select  
  badges.Id
from 
  badges
where badges.UserId is not NULL
limit 111;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.CreationDate >= postLinks.CreationDate
limit 62;
select  
  postLinks.RelatedPostId, 
  votes.PostId, 
  votes.VoteTypeId, 
  postLinks.Id
from 
  postLinks
          inner join postLinks
            inner join votes
            on (votes.UserId >= postLinks.PostId)
          on (votes.CreationDate = postLinks.CreationDate)
        inner join users
        on (users.WebsiteUrl = users.AboutMe)
      inner join posts
      on (posts.PostTypeId >= votes.UserId)
    inner join users
    on (users.DisplayName is NULL)
where users.ProfileImageUrl <= users.AccountId;
select  
  comments.UserId, 
  comments.Id, 
  comments.Text, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  comments.CreationDate
from 
  comments
where comments.Text is NULL
limit 152;
select  
  postHistory.Comment
from 
  postHistory
    inner join postHistory
    on (postHistory.PostHistoryTypeId is NULL)
where postHistory.PostHistoryTypeId is NULL;
select  
  postLinks.LinkTypeId
from 
  postLinks
          inner join users
          on (users.CreationDate > postLinks.CreationDate)
        inner join postLinks
        on (users.AboutMe <= users.Location)
      inner join postLinks
      on (postLinks.PostId > postLinks.LinkTypeId)
    inner join users
      inner join users
      on (users.ProfileImageUrl > users.AccountId)
    on (postLinks.LinkTypeId is not NULL)
where users.AccountId is not NULL
limit 61;
select  
  comments.Id
from 
  comments
where comments.CreationDate is not NULL
limit 30;
select  
  comments.UserDisplayName
from 
  postLinks
        inner join badges
        on (postLinks.CreationDate >= postLinks.CreationDate)
      inner join badges
      on (badges.TagBased >= badges.TagBased)
    inner join comments
      inner join posts
      on (comments.Id = posts.Id )
    on (comments.Id is not NULL)
where postLinks.LinkTypeId is not NULL;
select  
  posts.Id, 
  posts.OwnerDisplayName, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.UserId, 
  posts.PostTypeId, 
  comments.UserId, 
  badges.UserId
from 
  posts
    inner join comments
        inner join comments
          inner join badges
          on (comments.ContentLicense = badges.Name )
        on (comments.Id = comments.Id )
      inner join comments
      on (badges.Date >= comments.CreationDate)
    on (posts.ContentLicense is NULL)
where badges.Id is NULL
limit 134;
select  
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.PostId
from 
  posts
      inner join votes
      on (posts.ParentId < posts.PostTypeId)
    inner join postHistory
        inner join postLinks
        on (postHistory.Id = postLinks.Id )
      inner join comments
      on (postHistory.ContentLicense < postHistory.ContentLicense)
    on (comments.UserDisplayName is NULL)
where postLinks.RelatedPostId is NULL
limit 37;
select  
  comments.ContentLicense, 
  comments.UserDisplayName, 
  comments.Id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.PostId, 
  comments.CreationDate, 
  comments.UserId, 
  min(
    cast(cast(null as date) as date)), 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.Text, 
  comments.PostId, 
  comments.UserId, 
  comments.PostId, 
  comments.PostId, 
  comments.UserId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.Text, 
  comments.UserId, 
  max(
    cast(cast(null as tid) as tid)), 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.ContentLicense
from 
  comments
where comments.CreationDate is not NULL
limit 38;
select  
  users.WebsiteUrl, 
  votes.CreationDate, 
  votes.VoteTypeId
from 
  votes
    inner join users
    on (votes.VoteTypeId is NULL)
where users.ProfileImageUrl is NULL
limit 35;
select  
  comments.Text, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.UserId
from 
  comments
where comments.ContentLicense is not NULL;
select  
  comments.PostId, 
  comments.UserId
from 
  comments
where comments.CreationDate >= comments.CreationDate
limit 45;
select  
  posts.ContentLicense, 
  badges.Id, 
  badges.Id, 
  badges.Name, 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.Name, 
  badges.Name, 
  badges.Class, 
  posts.PostTypeId, 
  badges.Class, 
  posts.PostTypeId, 
  posts.Id, 
  badges.Name, 
  min(
    cast(badges.Name as text)), 
  posts.Body, 
  badges.TagBased, 
  max(
    cast(cast(null as money) as money)), 
  posts.OwnerUserId, 
  badges.TagBased, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Class
from 
  badges
    inner join posts
    on (badges.Class is NULL)
where posts.Id is NULL;
select  
  posts.OwnerUserId, 
  users.Location
from 
  users
    inner join postHistory
      inner join posts
        inner join users
              inner join badges
              on (users.ProfileImageUrl >= users.AccountId)
            inner join votes
              inner join posts
                  inner join postLinks
                  on (posts.Title >= posts.Title)
                inner join users
                on (postLinks.CreationDate < users.CreationDate)
              on (posts.Body > posts.Tags)
            on (badges.Date = users.CreationDate )
          inner join users
          on (badges.TagBased < badges.TagBased)
        on (users.CreationDate > users.CreationDate)
      on (posts.Id = postHistory.UserId)
    on (postHistory.CreationDate = users.CreationDate)
where users.CreationDate is NULL
limit 140;
select  
  comments.UserId, 
  comments.Text, 
  comments.Text, 
  comments.Id, 
  comments.Text, 
  comments.UserDisplayName, 
  comments.PostId, 
  comments.Id, 
  comments.Id
from 
  comments
where comments.UserDisplayName is not NULL;
select  
  postHistory.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  comments.PostId, 
  users.CreationDate, 
  postHistory.UserId, 
  badges.UserId, 
  min(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as oid) as oid)), 
  badges.Id, 
  comments.CreationDate, 
  comments.ContentLicense, 
  badges.Name, 
  comments.CreationDate, 
  postHistory.CreationDate, 
  comments.UserId, 
  postHistory.RevisionGUID, 
  postHistory.ContentLicense
from 
  postHistory
          inner join users
          on (users.CreationDate = postHistory.CreationDate)
        inner join comments
          inner join users
          on (users.Id <= comments.PostId)
        on (users.Id = comments.Id )
      inner join postLinks
        inner join comments
        on (postLinks.RelatedPostId < postLinks.PostId)
      on (users.WebsiteUrl <= users.DisplayName)
    inner join postLinks
      inner join badges
        inner join postHistory
        on (postHistory.UserDisplayName <= postHistory.Comment)
      on (postLinks.RelatedPostId = postHistory.Id )
    on (users.AccountId = users.ProfileImageUrl)
where badges.TagBased > badges.TagBased
limit 122;
select  
  votes.UserId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.PostId
from 
  votes
where votes.Id is not NULL
limit 99;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  votes.Id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  max(
    cast(cast(null as tid) as tid)), 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.PostId, 
  min(
    cast(cast(null as oid) as oid))
from 
  votes
where votes.VoteTypeId is not NULL
limit 30;
select  
  comments.Text
from 
  votes
          inner join badges
          on (badges.Id < votes.VoteTypeId)
        inner join users
        on (users.WebsiteUrl > users.WebsiteUrl)
      inner join users
            inner join postHistory
            on (users.Id < postHistory.PostHistoryTypeId)
          inner join comments
          on (postHistory.Id <= users.Id)
        inner join postLinks
        on (postHistory.Id = postLinks.Id )
      on (users.CreationDate <= votes.CreationDate)
    inner join postHistory
            inner join postLinks
            on (postHistory.Text < postHistory.RevisionGUID)
          inner join badges
          on (postHistory.RevisionGUID = badges.Name )
        inner join postLinks
        on (badges.TagBased <= badges.TagBased)
      inner join users
      on (users.AccountId <= users.AccountId)
    on (comments.Text > comments.UserDisplayName)
where users.AccountId <= users.ProfileImageUrl
limit 129;
select  
  postLinks.LinkTypeId, 
  badges.UserId, 
  postLinks.CreationDate
from 
  votes
      inner join badges
      on (votes.Id = badges.Id )
    inner join postLinks
    on (badges.Name is NULL)
where votes.Id is not NULL;
select  
  postLinks.CreationDate, 
  max(
    cast(84 as int4))
from 
  postLinks
    inner join votes
    on (postLinks.CreationDate = votes.CreationDate )
where postLinks.PostId is NULL
limit 148;
select  
  comments.PostId
from 
  comments
      inner join votes
      on (comments.UserId = votes.Id )
    inner join postHistory
    on (comments.CreationDate < votes.CreationDate)
where votes.VoteTypeId is NULL;
select  
  users.Location, 
  users.Location, 
  postHistory.PostHistoryTypeId, 
  comments.PostId, 
  comments.CreationDate
from 
  posts
          inner join postLinks
          on (postLinks.Id > posts.OwnerUserId)
        inner join comments
          inner join postHistory
          on (postHistory.UserId <= postHistory.UserId)
        on (comments.Text <= posts.ContentLicense)
      inner join users
        inner join badges
        on (users.WebsiteUrl <= users.AboutMe)
      on (postLinks.CreationDate < users.CreationDate)
    inner join users
    on (badges.TagBased is NULL)
where users.Id >= comments.Id
limit 21;
select  
  comments.Id, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  sum(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  posts.ParentId, 
  users.DisplayName, 
  badges.Id, 
  users.AccountId
from 
  votes
    inner join postHistory
          inner join posts
            inner join users
            on (posts.CreationDate >= users.CreationDate)
          on (postHistory.Comment = posts.OwnerDisplayName )
        inner join users
          inner join badges
              inner join users
              on (badges.TagBased >= badges.TagBased)
            inner join comments
            on (badges.TagBased < badges.TagBased)
          on (comments.CreationDate = badges.Date)
        on (comments.PostId <= postHistory.UserId)
      inner join users
        inner join postLinks
          inner join badges
          on (badges.Name = badges.Name)
        on (postLinks.RelatedPostId < badges.Id)
      on (users.AccountId = users.ProfileImageUrl)
    on (posts.ContentLicense is NULL)
where users.WebsiteUrl is NULL;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.RelatedPostId is NULL;
select  
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName, 
  postHistory.Id, 
  postHistory.Id
from 
  postHistory
where postHistory.CreationDate = postHistory.CreationDate;
select  
  max(
    cast(cast(null as tid) as tid)), 
  postLinks.LinkTypeId
from 
  postLinks
      inner join postLinks
        inner join badges
        on (badges.TagBased = badges.TagBased)
      on (badges.Id >= postLinks.RelatedPostId)
    inner join postLinks
    on (badges.TagBased > badges.TagBased)
where postLinks.Id is not NULL
limit 79;
select  
  max(
    cast(cast(null as oid) as oid)), 
  posts.ParentId, 
  users.Id, 
  posts.CreationDate, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Name, 
  postHistory.RevisionGUID, 
  posts.Body, 
  posts.ContentLicense
from 
  users
          inner join postHistory
          on (users.Location = postHistory.RevisionGUID)
        inner join postHistory
                inner join votes
                on (postHistory.ContentLicense > postHistory.UserDisplayName)
              inner join posts
              on (postHistory.PostHistoryTypeId = votes.VoteTypeId)
            inner join posts
            on (posts.OwnerDisplayName <= postHistory.UserDisplayName)
          inner join posts
          on (posts.Tags >= posts.Body)
        on (users.ProfileImageUrl = users.AccountId)
      inner join postHistory
      on (posts.OwnerDisplayName <= postHistory.UserDisplayName)
    inner join badges
    on (posts.Title is not NULL)
where badges.TagBased <= badges.TagBased;
select  
  comments.PostId, 
  min(
    cast(30 as int4)), 
  comments.Text, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as float4) as float4))
from 
  comments
where comments.ContentLicense is NULL;
select  
  posts.Id, 
  postHistory.ContentLicense
from 
  users
    inner join posts
      inner join postHistory
      on (postHistory.CreationDate <= posts.CreationDate)
    on (users.CreationDate is not NULL)
where posts.OwnerUserId is not NULL;
select  
  posts.AcceptedAnswerId, 
  posts.Tags
from 
  posts
where posts.Body is not NULL
limit 79;
select  
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as oid) as oid)), 
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.CreationDate, 
  postHistory.ContentLicense, 
  postHistory.Comment, 
  postHistory.RevisionGUID, 
  postHistory.CreationDate, 
  postHistory.UserId, 
  postHistory.ContentLicense, 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.ContentLicense, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  postHistory.Text, 
  postHistory.ContentLicense, 
  postHistory.UserId, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postHistory.PostId, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  postHistory.RevisionGUID, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(postHistory.PostId as int8)), 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.PostId is not NULL
limit 120;
select  
  postHistory.UserId, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  min(
    cast(cast(null as "time") as "time"))
from 
  postHistory
where postHistory.Comment > postHistory.Text
limit 189;
select  
  votes.UserId, 
  posts.Body, 
  votes.UserId, 
  posts.Title, 
  votes.PostId, 
  votes.VoteTypeId, 
  posts.Id
from 
  votes
      inner join posts
      on (votes.CreationDate = posts.CreationDate )
    inner join postHistory
    on (votes.PostId is not NULL)
where votes.PostId is not NULL;
select  
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName, 
  postHistory.CreationDate, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  postHistory.UserId, 
  min(
    cast(cast(null as int2) as int2))
from 
  postHistory
where postHistory.ContentLicense is NULL
limit 163;
select  
  max(
    cast(90 as int4)), 
  posts.OwnerUserId, 
  posts.ContentLicense, 
  comments.ContentLicense, 
  comments.PostId, 
  comments.PostId, 
  comments.CreationDate, 
  posts.OwnerDisplayName, 
  posts.ContentLicense, 
  comments.CreationDate, 
  min(
    cast(comments.UserDisplayName as text)), 
  posts.Title
from 
  comments
    inner join posts
    on (comments.ContentLicense is not NULL)
where comments.ContentLicense is not NULL
limit 152;
select  
  badges.Name, 
  votes.VoteTypeId, 
  users.Location, 
  badges.UserId
from 
  votes
    inner join users
          inner join postLinks
          on (users.CreationDate = postLinks.CreationDate )
        inner join postHistory
          inner join postLinks
            inner join badges
            on (badges.TagBased = badges.TagBased)
          on (postHistory.ContentLicense >= badges.Name)
        on (badges.TagBased <= badges.TagBased)
      inner join votes
      on (badges.TagBased < badges.TagBased)
    on (users.WebsiteUrl is NULL)
where badges.TagBased > badges.TagBased
limit 99;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.Date, 
  comments.PostId
from 
  comments
    inner join comments
      inner join badges
      on (badges.TagBased < badges.TagBased)
    on (comments.ContentLicense <= comments.ContentLicense)
where comments.Text < comments.ContentLicense
limit 117;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate >= postLinks.CreationDate;
select  
  postHistory.RevisionGUID, 
  count(*), 
  postHistory.Text, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName
from 
  postHistory
where postHistory.PostId is not NULL
limit 112;
select  
  max(
    cast(cast(null as float4) as float4)), 
  users.AccountId
from 
  postLinks
        inner join badges
        on (postLinks.CreationDate < postLinks.CreationDate)
      inner join posts
          inner join badges
          on (badges.Date <= badges.Date)
        inner join posts
          inner join postHistory
          on (postHistory.PostHistoryTypeId >= posts.OwnerUserId)
        on (badges.Date > postHistory.CreationDate)
      on (posts.Body = posts.Tags)
    inner join users
      inner join posts
          inner join votes
            inner join users
              inner join badges
              on (badges.Date <= users.CreationDate)
            on (badges.Class < badges.Class)
          on (votes.Id >= posts.PostTypeId)
        inner join users
          inner join postHistory
          on (users.AboutMe < postHistory.Text)
        on (users.Id = posts.Id)
      on (users.Location = postHistory.UserDisplayName )
    on (postLinks.Id = votes.Id )
where badges.TagBased is not NULL
limit 64;
select  
  posts.Body, 
  posts.PostTypeId, 
  posts.ParentId, 
  posts.AcceptedAnswerId
from 
  posts
where posts.ParentId is NULL
limit 165;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  max(
    cast(cast(null as oid) as oid)), 
  max(
    cast(postHistory.RevisionGUID as text))
from 
  postHistory
where postHistory.CreationDate is NULL;
select  
  avg(
    cast(users.Id as int8))
from 
  users
where users.AccountId is not NULL;
select  
  comments.ContentLicense, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.Id, 
  comments.UserId, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.CreationDate
from 
  comments
where comments.PostId <= comments.PostId
limit 89;
select  
  comments.UserDisplayName, 
  comments.Text, 
  comments.CreationDate
from 
  comments
    inner join comments
    on (comments.ContentLicense = comments.ContentLicense )
where comments.ContentLicense is not NULL
limit 138;
select  
  comments.UserId, 
  count(*)
from 
  users
    inner join comments
    on (users.Id is not NULL)
where users.WebsiteUrl is not NULL
limit 167;
select  
  postHistory.Text, 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postHistory.UserDisplayName, 
  postHistory.Comment, 
  postHistory.Id, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postHistory.PostId, 
  postHistory.Id, 
  postHistory.CreationDate, 
  postHistory.Comment, 
  postHistory.ContentLicense, 
  postHistory.UserDisplayName
from 
  postHistory
where postHistory.RevisionGUID is NULL
limit 158;
select  
  votes.Id
from 
  votes
where votes.VoteTypeId is not NULL
limit 84;
select  
  votes.Id
from 
  badges
        inner join users
        on (badges.Date > badges.Date)
      inner join comments
      on (badges.TagBased > badges.TagBased)
    inner join votes
    on (comments.Text <= comments.ContentLicense)
where badges.UserId is NULL;
select  
  count(*), 
  comments.Text, 
  comments.Id, 
  comments.PostId, 
  min(
    cast(comments.ContentLicense as text)), 
  avg(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.UserId
from 
  comments
where comments.UserDisplayName is not NULL
limit 121;
select  
  posts.ContentLicense, 
  posts.OwnerDisplayName
from 
  posts
where posts.PostTypeId is not NULL
limit 62;
select  
  max(
    cast(cast(null as date) as date)), 
  votes.CreationDate
from 
  votes
      inner join posts
      on (posts.CreationDate <= votes.CreationDate)
    inner join badges
    on (posts.ParentId is not NULL)
where posts.CreationDate = badges.Date;
select  
  comments.UserDisplayName, 
  comments.Text
from 
  comments
where comments.PostId is not NULL
limit 85;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  votes.PostId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  votes.UserId, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  votes.Id, 
  votes.PostId, 
  votes.PostId, 
  votes.Id, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  votes.UserId
from 
  votes
where votes.PostId is not NULL
limit 109;
select  
  posts.Title, 
  postHistory.PostId
from 
  postHistory
      inner join posts
      on (postHistory.CreationDate = posts.CreationDate )
    inner join posts
    on (posts.CreationDate is NULL)
where posts.OwnerDisplayName is not NULL
limit 68;
select  
  users.ProfileImageUrl, 
  postHistory.Comment, 
  posts.CreationDate, 
  users.WebsiteUrl, 
  badges.Class, 
  users.AccountId, 
  postHistory.Comment, 
  postHistory.UserDisplayName, 
  badges.Id, 
  posts.Body, 
  users.Location
from 
  postHistory
        inner join badges
            inner join postHistory
              inner join posts
              on (postHistory.PostHistoryTypeId <= postHistory.Id)
            on (postHistory.PostHistoryTypeId < posts.Id)
          inner join users
            inner join users
              inner join comments
              on (comments.CreationDate > comments.CreationDate)
            on (users.AccountId > users.AccountId)
          on (badges.TagBased >= badges.TagBased)
        on (users.ProfileImageUrl <= users.ProfileImageUrl)
      inner join badges
      on (users.AccountId < users.ProfileImageUrl)
    inner join postLinks
    on (postLinks.Id is not NULL)
where users.ProfileImageUrl < users.ProfileImageUrl
limit 86;
select  
  min(
    cast(cast(null as money) as money)), 
  sum(
    cast(cast(null as money) as money)), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  postHistory
where postHistory.PostId is NULL
limit 92;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  posts
      inner join users
                inner join votes
                on (users.DisplayName > users.AboutMe)
              inner join posts
              on (users.AccountId > users.AccountId)
            inner join users
              inner join votes
              on (votes.CreationDate <= votes.CreationDate)
            on (users.CreationDate = users.CreationDate )
          inner join badges
          on (users.Id >= badges.Class)
        inner join votes
        on (posts.CreationDate = votes.CreationDate )
      on (votes.Id <= posts.AcceptedAnswerId)
    inner join users
    on (users.Location is not NULL)
where votes.VoteTypeId is not NULL;
select  
  users.ProfileImageUrl
from 
  users
            inner join postHistory
              inner join badges
              on (badges.Date < postHistory.CreationDate)
            on (users.Id = postHistory.Id )
          inner join users
          on (badges.Class = badges.Id)
        inner join comments
        on (postHistory.CreationDate = comments.CreationDate )
      inner join votes
          inner join comments
          on (comments.Id >= comments.PostId)
        inner join postHistory
            inner join postHistory
              inner join postLinks
                inner join badges
                on (postLinks.LinkTypeId = badges.Id )
              on (postHistory.PostId = postLinks.Id)
            on (postHistory.Comment > postHistory.Comment)
          inner join votes
          on (postHistory.UserDisplayName >= postHistory.Text)
        on (votes.UserId > postLinks.RelatedPostId)
      on (postHistory.PostHistoryTypeId < postHistory.PostHistoryTypeId)
    inner join users
      inner join postHistory
          inner join badges
            inner join postLinks
              inner join posts
              on (postLinks.PostId < posts.PostTypeId)
            on (badges.Class = posts.Id )
          on (postLinks.Id > badges.Class)
        inner join posts
            inner join users
            on (users.AccountId >= users.ProfileImageUrl)
          inner join users
              inner join postLinks
              on (postLinks.CreationDate < postLinks.CreationDate)
            inner join comments
            on (users.CreationDate = postLinks.CreationDate)
          on (users.DisplayName < posts.Title)
        on (postLinks.CreationDate <= comments.CreationDate)
      on (badges.TagBased = badges.TagBased)
    on (badges.TagBased = badges.TagBased)
where postHistory.Comment > postHistory.Text;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  votes.VoteTypeId
from 
  votes
      inner join badges
      on (votes.CreationDate >= badges.Date)
    inner join postLinks
    on (badges.Id is not NULL)
where badges.Name is NULL;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as date) as date)), 
  posts.ParentId, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  posts
where posts.PostTypeId is NULL
limit 134;
select  
  votes.UserId, 
  votes.CreationDate
from 
  votes
where votes.UserId is NULL
limit 98;
select  
  postHistory.CreationDate, 
  max(
    cast(cast(null as date) as date)), 
  postHistory.UserId, 
  posts.ContentLicense, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  posts.CreationDate, 
  posts.CreationDate, 
  min(
    cast(cast(null as inet) as inet)), 
  postHistory.ContentLicense
from 
  posts
    inner join postHistory
        inner join postHistory
        on (postHistory.Id > postHistory.Id)
      inner join postLinks
          inner join postHistory
          on (postLinks.CreationDate = postHistory.CreationDate )
        inner join posts
        on (posts.Id = postHistory.Id)
      on (postHistory.UserId < postLinks.LinkTypeId)
    on (postHistory.Text is NULL)
where postHistory.ContentLicense >= postHistory.RevisionGUID
limit 177;
select  
  posts.Body, 
  users.CreationDate, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  users
    inner join posts
    on (users.WebsiteUrl = posts.OwnerDisplayName )
where posts.Id is not NULL
limit 190;
select  
  users.CreationDate, 
  postLinks.RelatedPostId
from 
  users
    inner join postLinks
    on (users.WebsiteUrl > users.Location)
where postLinks.PostId is NULL
limit 27;
select  
  comments.UserDisplayName
from 
  comments
where comments.PostId is not NULL
limit 87;
select  
  users.WebsiteUrl, 
  sum(
    cast(69 as int4)), 
  users.CreationDate, 
  users.CreationDate, 
  badges.Name, 
  badges.UserId, 
  badges.Id
from 
  badges
    inner join users
    on (badges.UserId < users.Id)
where users.Id is NULL
limit 72;
select  
  postHistory.ContentLicense, 
  avg(
    cast(cast(null as float4) as float4)), 
  postHistory.PostId
from 
  comments
    inner join postHistory
    on (comments.CreationDate = postHistory.CreationDate )
where comments.Text is NULL;
select  
  users.AccountId, 
  postHistory.RevisionGUID
from 
  postLinks
        inner join postHistory
        on (postLinks.PostId < postHistory.PostHistoryTypeId)
      inner join postHistory
      on (postLinks.LinkTypeId > postHistory.PostHistoryTypeId)
    inner join users
      inner join comments
        inner join comments
        on (comments.Id = comments.UserId)
      on (comments.PostId >= comments.UserId)
    on (postHistory.PostId = users.Id )
where users.DisplayName <= postHistory.Comment
limit 132;
select  
  postLinks.CreationDate, 
  comments.ContentLicense, 
  votes.UserId, 
  comments.Text, 
  comments.PostId, 
  votes.UserId, 
  comments.ContentLicense
from 
  comments
      inner join comments
      on (comments.UserDisplayName >= comments.Text)
    inner join postLinks
          inner join votes
              inner join postHistory
              on (postHistory.ContentLicense > postHistory.UserDisplayName)
            inner join comments
                  inner join posts
                  on (posts.OwnerUserId >= posts.Id)
                inner join badges
                on (badges.Date <= comments.CreationDate)
              inner join users
              on (posts.CreationDate <= users.CreationDate)
            on (postHistory.RevisionGUID = users.DisplayName )
          on (postHistory.CreationDate < comments.CreationDate)
        inner join postLinks
          inner join badges
          on (badges.Date < badges.Date)
        on (badges.TagBased >= badges.TagBased)
      inner join votes
      on (postLinks.CreationDate = votes.CreationDate )
    on (comments.CreationDate <= badges.Date)
where users.ProfileImageUrl <= users.ProfileImageUrl;
select  
  badges.Class
from 
  badges
where badges.TagBased is NULL;
select  
  posts.ContentLicense, 
  votes.PostId, 
  badges.UserId, 
  posts.Id
from 
  postLinks
        inner join badges
        on (badges.Date < postLinks.CreationDate)
      inner join votes
      on (postLinks.Id > votes.VoteTypeId)
    inner join posts
    on (votes.VoteTypeId = posts.Id )
where badges.TagBased <= badges.TagBased;
select  
  comments.UserDisplayName, 
  min(
    cast(comments.UserId as int8)), 
  comments.UserDisplayName, 
  comments.UserDisplayName
from 
  comments
where comments.CreationDate is not NULL
limit 68;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  postHistory.UserId, 
  postHistory.Id
from 
  postLinks
    inner join postHistory
    on (postLinks.LinkTypeId = postHistory.Id )
where postLinks.RelatedPostId > postHistory.PostId
limit 146;
select  
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  postHistory.PostHistoryTypeId, 
  postHistory.PostId
from 
  postHistory
where postHistory.RevisionGUID <= postHistory.UserDisplayName
limit 184;
select  
  postHistory.PostId, 
  avg(
    cast(users.AccountId as float8)), 
  votes.Id, 
  votes.CreationDate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.OwnerDisplayName, 
  votes.UserId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.PostId, 
  votes.UserId, 
  users.Location, 
  posts.Tags, 
  users.Location
from 
  posts
    inner join users
            inner join posts
            on (users.Id = posts.PostTypeId)
          inner join votes
          on (users.Location > posts.Body)
        inner join postHistory
          inner join postLinks
          on (postHistory.UserDisplayName > postHistory.ContentLicense)
        on (users.ProfileImageUrl < users.AccountId)
      inner join users
        inner join posts
            inner join postLinks
            on (postLinks.PostId = posts.ParentId)
          inner join users
          on (postLinks.RelatedPostId < users.Id)
        on (users.AccountId >= users.AccountId)
      on (votes.VoteTypeId < votes.Id)
    on (postHistory.Comment is NULL)
where posts.Body is NULL;
select  
  users.CreationDate, 
  users.AccountId, 
  comments.PostId, 
  comments.Id, 
  comments.CreationDate, 
  comments.PostId, 
  users.CreationDate, 
  comments.UserId, 
  min(
    cast(cast(null as oid) as oid)), 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.PostId, 
  comments.PostId, 
  comments.PostId, 
  users.CreationDate
from 
  users
    inner join comments
    on (users.CreationDate is NULL)
where users.AccountId < users.AccountId
limit 168;
select  
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.Id is NULL
limit 136;
select  
  posts.OwnerUserId, 
  posts.PostTypeId, 
  postLinks.LinkTypeId
from 
  posts
    inner join posts
      inner join postLinks
      on (posts.Tags < posts.OwnerDisplayName)
    on (posts.AcceptedAnswerId is not NULL)
where posts.Title is not NULL;
select  
  badges.UserId, 
  posts.Tags, 
  posts.AcceptedAnswerId, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  posts.AcceptedAnswerId, 
  posts.ParentId, 
  badges.Date, 
  badges.Date, 
  posts.OwnerDisplayName, 
  badges.TagBased, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.TagBased, 
  posts.Title, 
  badges.Id, 
  posts.Id, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  badges.Date
from 
  badges
    inner join posts
    on (badges.Name is NULL)
where badges.Id = posts.Id
limit 56;
select  
  comments.UserId, 
  users.AboutMe, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  posts.OwnerDisplayName, 
  count(*), 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.Date, 
  users.AccountId, 
  users.Location, 
  badges.Name, 
  postLinks.LinkTypeId, 
  badges.Name, 
  badges.Name, 
  users.AboutMe, 
  badges.UserId, 
  postLinks.RelatedPostId, 
  comments.PostId, 
  comments.Text, 
  badges.UserId, 
  posts.ParentId, 
  users.Id, 
  comments.UserDisplayName
from 
  users
    inner join postLinks
      inner join postHistory
              inner join posts
                inner join comments
                on (posts.OwnerDisplayName > comments.Text)
              on (posts.Id >= comments.PostId)
            inner join badges
              inner join postLinks
              on (badges.TagBased < badges.TagBased)
            on (badges.Date >= postHistory.CreationDate)
          inner join comments
          on (badges.Name = comments.ContentLicense )
        inner join users
        on (badges.Class <= posts.Id)
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    on (posts.CreationDate is NULL)
where postLinks.CreationDate is not NULL
limit 99;
select  
  users.ProfileImageUrl, 
  users.Id, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as oid) as oid)), 
  users.Id, 
  users.CreationDate
from 
  users
where users.AboutMe is NULL
limit 92;
select  
  votes.CreationDate, 
  votes.UserId, 
  badges.Class
from 
  votes
      inner join users
      on (votes.UserId = users.Id )
    inner join badges
      inner join votes
        inner join users
          inner join badges
          on (users.Id < badges.UserId)
        on (users.ProfileImageUrl < users.ProfileImageUrl)
      on (badges.UserId = users.Id )
    on (badges.Name is not NULL)
where users.Id is NULL
limit 77;
select  
  votes.Id, 
  votes.CreationDate, 
  votes.UserId, 
  min(
    cast(cast(null as float4) as float4))
from 
  votes
where votes.Id is not NULL
limit 42;
select  
  count(
    cast(posts.PostTypeId as int8)), 
  users.Location, 
  postLinks.PostId
from 
  postLinks
        inner join postHistory
        on (postHistory.RevisionGUID < postHistory.RevisionGUID)
      inner join postHistory
      on (postLinks.CreationDate > postHistory.CreationDate)
    inner join users
        inner join users
          inner join users
              inner join postLinks
              on (users.CreationDate < postLinks.CreationDate)
            inner join votes
              inner join posts
              on (votes.CreationDate >= posts.CreationDate)
            on (votes.CreationDate = posts.CreationDate)
          on (users.Id = users.Id )
        on (posts.Id = users.Id)
      inner join users
      on (users.AccountId <= users.AccountId)
    on (users.Id < postHistory.PostId)
where postHistory.PostHistoryTypeId is NULL
limit 56;
select  
  votes.PostId, 
  votes.CreationDate
from 
  votes
      inner join users
      on (users.DisplayName > users.DisplayName)
    inner join badges
    on (users.Location is NULL)
where badges.TagBased >= badges.TagBased
limit 92;
select  
  posts.Title, 
  max(
    cast(posts.Title as text)), 
  posts.OwnerUserId, 
  max(
    cast(posts.Title as text))
from 
  posts
      inner join posts
      on (posts.OwnerUserId < posts.AcceptedAnswerId)
    inner join posts
    on (posts.OwnerDisplayName is NULL)
where posts.Title is not NULL
limit 119;
select  
  posts.OwnerDisplayName, 
  postHistory.UserId, 
  postLinks.CreationDate, 
  votes.CreationDate, 
  posts.OwnerDisplayName, 
  posts.PostTypeId, 
  postLinks.PostId, 
  postHistory.RevisionGUID, 
  count(*), 
  max(
    cast(cast(null as money) as money)), 
  votes.Id, 
  posts.Title, 
  posts.ContentLicense
from 
  postHistory
      inner join posts
        inner join postLinks
        on (posts.CreationDate <= posts.CreationDate)
      on (postLinks.PostId >= posts.OwnerUserId)
    inner join votes
    on (postHistory.PostHistoryTypeId is NULL)
where posts.Title = postHistory.RevisionGUID
limit 157;
select  
  users.AboutMe, 
  users.AccountId
from 
  users
where users.CreationDate <= users.CreationDate;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.PostId is NULL
limit 84;
select  
  postLinks.LinkTypeId
from 
  postHistory
            inner join badges
            on (postHistory.Comment = badges.Name )
          inner join comments
              inner join postLinks
              on (postLinks.PostId < comments.PostId)
            inner join postLinks
            on (postLinks.PostId > postLinks.RelatedPostId)
          on (comments.UserId >= postLinks.PostId)
        inner join comments
        on (postHistory.Text <= comments.UserDisplayName)
      inner join badges
      on (postHistory.RevisionGUID <= comments.ContentLicense)
    inner join posts
        inner join postHistory
          inner join votes
              inner join votes
              on (votes.Id < votes.UserId)
            inner join posts
            on (votes.UserId < votes.UserId)
          on (postHistory.CreationDate = votes.CreationDate )
        on (posts.Body < postHistory.Text)
      inner join postLinks
      on (posts.Tags >= posts.ContentLicense)
    on (badges.Date = votes.CreationDate )
where postLinks.CreationDate is NULL
limit 99;
select  
  votes.Id, 
  badges.Id, 
  votes.VoteTypeId, 
  sum(
    cast(cast(null as int2) as int2)), 
  votes.UserId
from 
  votes
    inner join votes
      inner join badges
      on (votes.CreationDate < badges.Date)
    on (votes.Id is NULL)
where badges.TagBased >= badges.TagBased
limit 75;
select  
  min(
    cast(comments.UserId as int8)), 
  comments.Id, 
  comments.UserDisplayName, 
  comments.Id, 
  min(
    cast(users.ProfileImageUrl as float8)), 
  comments.UserDisplayName, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  comments
    inner join users
    on (comments.PostId is NULL)
where comments.UserId < users.Id
limit 90;
select  
  badges.Name, 
  badges.TagBased, 
  badges.UserId, 
  badges.Name, 
  min(
    cast(badges.Class as int8))
from 
  badges
where badges.Name is NULL
limit 119;
select  
  max(
    cast(cast(null as oid) as oid)), 
  posts.PostTypeId
from 
  posts
where posts.Title is not NULL
limit 94;
select  
  posts.ContentLicense, 
  max(
    cast(cast(null as float4) as float4)), 
  count(
    cast(comments.UserId as int8)), 
  comments.CreationDate, 
  min(
    cast(cast(null as tid) as tid)), 
  comments.ContentLicense, 
  posts.Id, 
  comments.UserId, 
  comments.UserId, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  comments
    inner join posts
    on (comments.UserDisplayName is not NULL)
where comments.CreationDate is NULL
limit 55;
select  
  votes.PostId, 
  posts.Tags, 
  postHistory.UserId
from 
  posts
    inner join posts
      inner join posts
          inner join postHistory
          on (posts.ParentId >= postHistory.PostId)
        inner join votes
        on (posts.ParentId = votes.Id )
      on (posts.CreationDate = postHistory.CreationDate)
    on (postHistory.Comment is NULL)
where postHistory.Id is NULL
limit 104;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  comments.CreationDate, 
  comments.UserDisplayName
from 
  comments
where comments.ContentLicense is NULL
limit 174;
select  
  min(
    cast(cast(null as money) as money)), 
  users.Location, 
  users.Location, 
  votes.UserId, 
  users.AccountId, 
  votes.VoteTypeId, 
  votes.PostId
from 
  votes
    inner join users
    on (votes.VoteTypeId = users.Id )
where users.Id is NULL
limit 178;
select  
  votes.VoteTypeId
from 
  votes
where votes.Id < votes.Id;
select  
  postHistory.Id, 
  comments.PostId
from 
  badges
        inner join posts
        on (posts.CreationDate < badges.Date)
      inner join votes
          inner join postLinks
          on (postLinks.Id >= votes.VoteTypeId)
        inner join postHistory
        on (postHistory.RevisionGUID < postHistory.RevisionGUID)
      on (badges.Class > votes.VoteTypeId)
    inner join comments
    on (comments.CreationDate is NULL)
where comments.Text is NULL
limit 154;
select  
  votes.Id, 
  votes.PostId, 
  postHistory.PostId, 
  posts.AcceptedAnswerId, 
  votes.CreationDate, 
  posts.Id, 
  posts.Tags, 
  votes.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  postHistory.Text, 
  postHistory.CreationDate, 
  votes.UserId, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.Comment
from 
  postHistory
    inner join votes
        inner join posts
        on (posts.ContentLicense = posts.Title)
      inner join postHistory
      on (postHistory.Id < votes.VoteTypeId)
    on (postHistory.UserDisplayName is not NULL)
where postHistory.PostId is NULL;
select  
  posts.OwnerDisplayName, 
  posts.Tags, 
  posts.Tags, 
  postHistory.Text, 
  posts.OwnerUserId
from 
  postHistory
    inner join posts
    on (postHistory.CreationDate < posts.CreationDate)
where posts.Tags is NULL
limit 124;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(60 as int4)), 
  avg(
    cast(89 as int4))
from 
  badges
              inner join postLinks
              on (badges.Date < postLinks.CreationDate)
            inner join postHistory
              inner join badges
              on (badges.TagBased >= badges.TagBased)
            on (postLinks.CreationDate <= postLinks.CreationDate)
          inner join posts
          on (badges.Id = posts.Id )
        inner join postLinks
            inner join postHistory
            on (postLinks.RelatedPostId = postHistory.Id )
          inner join badges
            inner join comments
            on (badges.UserId = comments.Id )
          on (postLinks.LinkTypeId = comments.Id )
        on (posts.Body <= comments.ContentLicense)
      inner join posts
      on (posts.ContentLicense = posts.OwnerDisplayName )
    inner join users
      inner join users
            inner join votes
            on (users.DisplayName >= users.Location)
          inner join postHistory
          on (users.ProfileImageUrl <= users.ProfileImageUrl)
        inner join postHistory
        on (users.CreationDate = votes.CreationDate)
      on (users.Id = users.Id)
    on (badges.Class = postHistory.Id )
where posts.AcceptedAnswerId is not NULL
limit 41;
select  
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.Id, 
  comments.UserId, 
  comments.ContentLicense, 
  sum(
    cast(comments.UserId as int8)), 
  comments.Id, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.UserDisplayName
from 
  comments
where comments.ContentLicense is not NULL
limit 80;
select  
  posts.OwnerUserId, 
  posts.Title, 
  posts.Id, 
  posts.OwnerUserId, 
  max(
    cast(cast(null as tid) as tid))
from 
  posts
where posts.PostTypeId is NULL
limit 50;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  votes.VoteTypeId, 
  votes.Id, 
  votes.Id
from 
  posts
    inner join users
      inner join votes
      on (users.CreationDate >= votes.CreationDate)
    on (posts.PostTypeId is NULL)
where votes.PostId is not NULL
limit 23;
select  
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.LinkTypeId is NULL
limit 83;
select  
  postLinks.CreationDate, 
  max(
    cast(posts.Body as text)), 
  users.DisplayName, 
  sum(
    cast(cast(null as int2) as int2)), 
  users.AccountId, 
  max(
    cast(users.AboutMe as text)), 
  users.AboutMe, 
  posts.ContentLicense
from 
  votes
      inner join users
            inner join posts
              inner join users
              on (posts.Id = users.Id )
            on (users.ProfileImageUrl < users.ProfileImageUrl)
          inner join postLinks
          on (posts.ParentId >= users.Id)
        inner join votes
        on (users.AboutMe = posts.Tags)
      on (posts.Id <= users.Id)
    inner join postLinks
    on (votes.CreationDate < posts.CreationDate)
where votes.PostId is NULL
limit 76;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  badges.TagBased
from 
  postHistory
      inner join comments
      on (comments.Id >= postHistory.PostHistoryTypeId)
    inner join postLinks
      inner join badges
      on (postLinks.PostId = badges.Id )
    on (postHistory.CreationDate is NULL)
where postLinks.CreationDate = badges.Date;
select  
  posts.OwnerUserId, 
  votes.Id, 
  posts.PostTypeId, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.Body, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.CreationDate, 
  votes.PostId, 
  votes.VoteTypeId, 
  posts.OwnerDisplayName, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.Id, 
  min(
    cast(cast(null as "time") as "time")), 
  posts.Title, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  posts
    inner join votes
    on (posts.ContentLicense is NULL)
where posts.AcceptedAnswerId is NULL;
select  
  postHistory.Id, 
  votes.Id, 
  postHistory.Text, 
  postHistory.Comment, 
  badges.TagBased, 
  badges.UserId, 
  users.AboutMe, 
  badges.Class, 
  max(
    cast(68 as int4)), 
  badges.Name, 
  postHistory.UserDisplayName, 
  badges.Id
from 
  badges
      inner join users
          inner join postHistory
            inner join badges
            on (postHistory.ContentLicense = badges.Name )
          on (users.DisplayName = badges.Name )
        inner join votes
        on (badges.TagBased > badges.TagBased)
      on (postHistory.Id > votes.Id)
    inner join users
      inner join users
      on (users.CreationDate > users.CreationDate)
    on (users.AboutMe is NULL)
where postHistory.CreationDate < users.CreationDate;
select  
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.PostId, 
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 139;
select  
  votes.PostId, 
  postHistory.PostHistoryTypeId, 
  votes.Id
from 
  users
    inner join postHistory
      inner join votes
        inner join users
          inner join votes
            inner join votes
            on (votes.CreationDate <= votes.CreationDate)
          on (users.CreationDate = votes.CreationDate )
        on (votes.CreationDate > votes.CreationDate)
      on (votes.Id <= votes.VoteTypeId)
    on (votes.Id is not NULL)
where users.Id <= votes.UserId;
select  
  postLinks.PostId
from 
  postLinks
where postLinks.Id is not NULL
limit 50;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Class, 
  badges.Date, 
  badges.Name
from 
  badges
where badges.UserId is NULL;
select  
  sum(
    cast(votes.VoteTypeId as int8)), 
  users.CreationDate, 
  comments.UserId, 
  users.WebsiteUrl, 
  users.DisplayName
from 
  users
    inner join comments
      inner join comments
        inner join votes
        on (votes.VoteTypeId > votes.UserId)
      on (votes.PostId = comments.Id)
    on (users.Location is NULL)
where comments.Id is not NULL
limit 66;
select  
  comments.UserDisplayName, 
  max(
    cast(13 as int4)), 
  badges.Id, 
  sum(
    cast(users.AccountId as float8)), 
  sum(
    cast(users.ProfileImageUrl as float8)), 
  comments.CreationDate, 
  max(
    cast(43 as int4)), 
  postLinks.LinkTypeId, 
  posts.Body, 
  posts.PostTypeId, 
  posts.PostTypeId, 
  postHistory.RevisionGUID
from 
  postLinks
    inner join postHistory
          inner join posts
          on (posts.CreationDate >= postHistory.CreationDate)
        inner join users
          inner join postHistory
          on (users.ProfileImageUrl > users.ProfileImageUrl)
        on (postHistory.PostHistoryTypeId > postHistory.UserId)
      inner join comments
          inner join comments
            inner join posts
              inner join badges
              on (badges.Date = posts.CreationDate)
            on (comments.UserId = badges.UserId)
          on (comments.UserId <= comments.UserId)
        inner join users
        on (posts.CreationDate < posts.CreationDate)
      on (posts.OwnerUserId = posts.PostTypeId)
    on (postLinks.Id = comments.Id )
where comments.PostId is NULL
limit 77;
select  
  users.DisplayName, 
  users.DisplayName, 
  max(
    cast(cast(null as xid8) as xid8)), 
  avg(
    cast(users.Id as int8))
from 
  users
where users.DisplayName is NULL;
select  
  comments.Id, 
  badges.UserId, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  badges.TagBased
from 
  badges
    inner join comments
    on (comments.CreationDate = comments.CreationDate)
where badges.TagBased < badges.TagBased;
select  
  comments.UserDisplayName, 
  min(
    cast(users.AccountId as float8))
from 
  comments
    inner join users
            inner join badges
            on (users.Id <= users.Id)
          inner join postHistory
            inner join comments
              inner join postHistory
              on (postHistory.Comment <= comments.Text)
            on (postHistory.PostId = comments.Id )
          on (users.AccountId = users.AccountId)
        inner join postHistory
          inner join comments
          on (postHistory.UserId <= comments.PostId)
        on (comments.CreationDate > users.CreationDate)
      inner join posts
              inner join posts
              on (posts.ParentId < posts.AcceptedAnswerId)
            inner join votes
            on (posts.OwnerUserId > posts.AcceptedAnswerId)
          inner join votes
            inner join users
              inner join users
              on (users.CreationDate < users.CreationDate)
            on (votes.Id < votes.UserId)
          on (posts.Title < users.Location)
        inner join votes
        on (users.DisplayName = posts.Title)
      on (users.WebsiteUrl > users.DisplayName)
    on (postHistory.UserDisplayName is NULL)
where posts.AcceptedAnswerId is NULL
limit 62;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.ParentId, 
  posts.Title, 
  posts.Body
from 
  posts
where posts.Id is NULL;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  postHistory
where postHistory.UserDisplayName > postHistory.UserDisplayName;
select  
  badges.Date
from 
  badges
where badges.Id <= badges.UserId
limit 123;
select  
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.PostId
from 
  postLinks
where postLinks.PostId is not NULL
limit 93;
select  
  votes.VoteTypeId, 
  postLinks.RelatedPostId, 
  badges.UserId, 
  users.DisplayName, 
  comments.PostId
from 
  users
    inner join comments
          inner join postLinks
          on (comments.PostId <= comments.UserId)
        inner join postHistory
          inner join badges
            inner join votes
            on (badges.Id = votes.Id )
          on (postHistory.CreationDate = badges.Date)
        on (postLinks.LinkTypeId = badges.Id )
      inner join postLinks
      on (votes.PostId = postLinks.Id )
    on (postHistory.PostId is not NULL)
where postLinks.Id is not NULL
limit 77;
select  
  users.CreationDate, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  users.ProfileImageUrl, 
  posts.OwnerUserId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postHistory.PostHistoryTypeId
from 
  posts
    inner join comments
        inner join postHistory
        on (comments.CreationDate = postHistory.CreationDate )
      inner join users
      on (postHistory.CreationDate = comments.CreationDate)
    on (users.CreationDate is not NULL)
where users.ProfileImageUrl is not NULL
limit 149;
select  
  badges.Name, 
  badges.Class, 
  badges.Class, 
  badges.TagBased, 
  badges.Date, 
  avg(
    cast(94 as int4)), 
  badges.Class, 
  badges.Name, 
  badges.TagBased, 
  badges.Class, 
  badges.UserId, 
  badges.Date, 
  badges.Name, 
  badges.Date
from 
  badges
where badges.Id is not NULL;
select  
  postHistory.PostId, 
  postHistory.PostId
from 
  postHistory
where postHistory.Comment is NULL
limit 39;
select  
  postLinks.PostId, 
  postHistory.RevisionGUID
from 
  posts
    inner join postHistory
        inner join postLinks
        on (postLinks.PostId = postLinks.Id)
      inner join badges
        inner join posts
        on (badges.Class = posts.Id )
      on (postLinks.LinkTypeId = posts.Id )
    on (postHistory.CreationDate <= posts.CreationDate)
where posts.Id is not NULL;
select  
  users.Id, 
  postHistory.Text, 
  users.DisplayName, 
  postHistory.ContentLicense, 
  posts.Id, 
  badges.Class, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  votes
        inner join badges
        on (badges.Class <= votes.PostId)
      inner join users
        inner join comments
            inner join postHistory
            on (postHistory.CreationDate > postHistory.CreationDate)
          inner join comments
          on (comments.UserId = postHistory.PostHistoryTypeId)
        on (users.ProfileImageUrl = users.ProfileImageUrl)
      on (users.Location <= users.Location)
    inner join posts
      inner join postLinks
        inner join users
          inner join users
          on (users.ProfileImageUrl = users.AccountId )
        on (users.WebsiteUrl >= users.WebsiteUrl)
      on (posts.Body = users.DisplayName )
    on (badges.TagBased < badges.TagBased)
where postHistory.Text is not NULL
limit 143;
select  
  posts.Tags, 
  posts.AcceptedAnswerId, 
  posts.OwnerUserId, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.Title, 
  posts.AcceptedAnswerId, 
  posts.AcceptedAnswerId
from 
  posts
where posts.Title is NULL;
select  
  posts.CreationDate
from 
  posts
    inner join users
    on (users.CreationDate <= posts.CreationDate)
where users.Location is not NULL
limit 69;
select  
  users.DisplayName
from 
  users
where users.CreationDate < users.CreationDate
limit 61;
select  
  posts.CreationDate, 
  posts.ContentLicense
from 
  posts
where posts.Title = posts.ContentLicense
limit 93;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as money) as money)), 
  badges.Date, 
  postHistory.CreationDate, 
  postHistory.PostHistoryTypeId, 
  postHistory.Id
from 
  badges
    inner join postHistory
    on (badges.Name = postHistory.UserDisplayName )
where badges.Date is not NULL
limit 107;
select  
  posts.Title
from 
  posts
where posts.Tags is not NULL;
select  
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.VoteTypeId
from 
  votes
where votes.CreationDate < votes.CreationDate
limit 67;
select  
  badges.TagBased, 
  comments.UserDisplayName
from 
  badges
    inner join comments
      inner join users
      on (comments.CreationDate < users.CreationDate)
    on (comments.ContentLicense is not NULL)
where badges.TagBased <= badges.TagBased
limit 103;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 73;
select  
  postHistory.PostId, 
  postHistory.UserId, 
  postHistory.UserId
from 
  postHistory
    inner join votes
      inner join postHistory
      on (postHistory.Text > postHistory.RevisionGUID)
    on (postHistory.Text is NULL)
where postHistory.ContentLicense is NULL
limit 111;
select distinct 
  min(
    cast(cast(null as "interval") as "interval")), 
  votes.PostId
from 
  votes
where votes.UserId is NULL
limit 117;
select  
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  postHistory.RevisionGUID
from 
  postHistory
    inner join users
    on (users.Id is NULL)
where postHistory.CreationDate is NULL;
select  
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.CreationDate is NULL;
select  
  comments.PostId, 
  comments.UserDisplayName, 
  comments.UserId, 
  max(
    cast(cast(null as money) as money)), 
  comments.Text, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.CreationDate, 
  comments.Id, 
  min(
    cast(comments.CreationDate as "timestamp")), 
  comments.PostId, 
  comments.Text, 
  comments.CreationDate
from 
  comments
where comments.PostId is NULL
limit 91;
select  
  min(
    cast(cast(null as "time") as "time")), 
  votes.CreationDate, 
  users.Id, 
  votes.UserId
from 
  votes
        inner join postLinks
        on (votes.PostId = postLinks.Id )
      inner join users
        inner join posts
        on (users.AboutMe = posts.OwnerDisplayName )
      on (postLinks.LinkTypeId = users.Id )
    inner join votes
      inner join users
        inner join badges
        on (users.AboutMe = badges.Name )
      on (badges.Name > users.Location)
    on (badges.Name is NULL)
where votes.PostId is not NULL;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as oid) as oid)), 
  postHistory.PostHistoryTypeId, 
  postHistory.PostId, 
  max(
    cast(postHistory.UserDisplayName as text)), 
  postHistory.Id, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.Id, 
  postHistory.Comment, 
  postHistory.CreationDate, 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.PostId <= postHistory.UserId
limit 134;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.UserId, 
  comments.Text, 
  postLinks.RelatedPostId, 
  comments.Text, 
  comments.Text
from 
  postLinks
    inner join comments
    on (postLinks.LinkTypeId is not NULL)
where postLinks.PostId is not NULL
limit 129;
select  
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  min(
    cast(cast(null as float8) as float8)), 
  postLinks.CreationDate, 
  sum(
    cast(cast(null as money) as money))
from 
  postLinks
where postLinks.Id > postLinks.RelatedPostId
limit 111;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  votes.UserId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  votes.PostId
from 
  postLinks
    inner join postLinks
      inner join votes
      on (postLinks.CreationDate = votes.CreationDate )
    on (postLinks.CreationDate = votes.CreationDate )
where postLinks.CreationDate is NULL;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz))
from 
  postHistory
          inner join postHistory
          on (postHistory.Text < postHistory.UserDisplayName)
        inner join badges
          inner join users
          on (badges.Date = users.CreationDate)
        on (postHistory.PostId < postHistory.UserId)
      inner join badges
      on (users.Id = badges.UserId)
    inner join comments
      inner join posts
        inner join votes
        on (posts.CreationDate = posts.CreationDate)
      on (comments.CreationDate > votes.CreationDate)
    on (votes.PostId is not NULL)
where votes.UserId is NULL
limit 21;
select  
  votes.VoteTypeId, 
  badges.Id
from 
  postLinks
    inner join postLinks
        inner join votes
        on (postLinks.LinkTypeId = votes.Id )
      inner join postLinks
        inner join badges
        on (postLinks.Id = badges.Id )
      on (postLinks.CreationDate <= postLinks.CreationDate)
    on (badges.TagBased < badges.TagBased)
where postLinks.Id is not NULL
limit 78;
select  
  votes.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
      inner join postLinks
      on (postLinks.CreationDate < postLinks.CreationDate)
    inner join votes
    on (postLinks.CreationDate <= postLinks.CreationDate)
where postLinks.RelatedPostId is NULL
limit 116;
select  
  count(*), 
  count(*)
from 
  comments
    inner join postHistory
    on (postHistory.Id is NULL)
where comments.CreationDate is NULL
limit 64;
select  
  postHistory.CreationDate, 
  postHistory.Id, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.Text is NULL
limit 183;
select  
  comments.PostId, 
  comments.ContentLicense, 
  comments.Id
from 
  comments
    inner join postHistory
    on (postHistory.CreationDate is NULL)
where postHistory.PostId is not NULL
limit 56;
select  
  max(
    cast(cast(null as float4) as float4)), 
  users.ProfileImageUrl, 
  users.Id, 
  users.DisplayName, 
  users.AccountId, 
  postHistory.Text, 
  postHistory.UserDisplayName, 
  users.AccountId, 
  users.Location, 
  users.Location, 
  users.ProfileImageUrl, 
  users.AboutMe
from 
  users
      inner join postHistory
      on (users.ProfileImageUrl = users.ProfileImageUrl)
    inner join users
    on (users.Id is NULL)
where users.CreationDate >= postHistory.CreationDate
limit 23;
select  
  badges.Id, 
  badges.Id, 
  badges.Date
from 
  badges
where badges.UserId is NULL
limit 68;
select  
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  badges
where badges.TagBased is NULL
limit 91;
select  
  users.AboutMe, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.CreationDate
from 
  users
where users.AccountId = users.ProfileImageUrl
limit 108;
select  
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.CreationDate is NULL
limit 145;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posts.ContentLicense, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.UserId, 
  votes.Id, 
  posts.OwnerUserId, 
  min(
    cast(23 as int4))
from 
  votes
      inner join posts
            inner join comments
            on (posts.CreationDate = posts.CreationDate)
          inner join postHistory
          on (postHistory.CreationDate <= posts.CreationDate)
        inner join users
        on (users.CreationDate >= comments.CreationDate)
      on (comments.CreationDate <= comments.CreationDate)
    inner join users
    on (users.Location is not NULL)
where posts.ContentLicense is not NULL;
select  
  users.WebsiteUrl, 
  users.CreationDate, 
  users.ProfileImageUrl
from 
  users
where users.AccountId = users.AccountId
limit 159;
select  
  postLinks.Id
from 
  postLinks
        inner join votes
        on (postLinks.CreationDate < postLinks.CreationDate)
      inner join postLinks
      on (votes.CreationDate <= votes.CreationDate)
    inner join comments
    on (comments.ContentLicense is not NULL)
where postLinks.PostId is not NULL
limit 113;
select  
  badges.Date, 
  postLinks.PostId, 
  votes.Id
from 
  votes
      inner join badges
      on (badges.Name <= badges.Name)
    inner join comments
      inner join postLinks
      on (postLinks.LinkTypeId > postLinks.PostId)
    on (badges.TagBased < badges.TagBased)
where postLinks.CreationDate <= badges.Date
limit 99;
select  
  votes.UserId
from 
  votes
where votes.CreationDate is not NULL
limit 66;
select  
  users.WebsiteUrl, 
  postHistory.PostHistoryTypeId, 
  users.WebsiteUrl, 
  posts.Id
from 
  postHistory
      inner join comments
      on (comments.PostId > postHistory.Id)
    inner join users
            inner join users
              inner join posts
              on (users.Location >= users.Location)
            on (posts.CreationDate > users.CreationDate)
          inner join badges
          on (posts.ContentLicense = users.Location)
        inner join posts
        on (users.ProfileImageUrl = users.AccountId)
      inner join posts
      on (users.Location = posts.OwnerDisplayName )
    on (comments.UserId >= posts.ParentId)
where badges.Class is NULL
limit 102;
select  
  comments.UserDisplayName, 
  postLinks.PostId, 
  min(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  votes.UserId, 
  postHistory.Text, 
  comments.CreationDate
from 
  postHistory
    inner join badges
        inner join postLinks
        on (badges.TagBased = badges.TagBased)
      inner join users
        inner join comments
          inner join votes
            inner join postLinks
            on (postLinks.CreationDate < votes.CreationDate)
          on (comments.UserDisplayName < comments.Text)
        on (votes.CreationDate > postLinks.CreationDate)
      on (badges.TagBased < badges.TagBased)
    on (comments.PostId < postLinks.Id)
where comments.PostId is NULL;
select  
  postHistory.PostId, 
  postHistory.ContentLicense, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense
from 
  postHistory
where postHistory.Comment is NULL
limit 129;
select  
  max(
    cast(posts.CreationDate as "timestamp")), 
  users.Id, 
  users.Id, 
  badges.TagBased, 
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as float4) as float4)), 
  posts.OwnerDisplayName, 
  badges.Class, 
  users.Location, 
  badges.Id, 
  users.DisplayName, 
  posts.OwnerDisplayName
from 
  postHistory
    inner join users
      inner join badges
              inner join users
              on (badges.TagBased <= badges.TagBased)
            inner join badges
            on (badges.Class < badges.UserId)
          inner join users
          on (badges.TagBased > badges.TagBased)
        inner join posts
        on (users.AccountId < users.AccountId)
      on (badges.Id <= users.Id)
    on (posts.Tags is NULL)
where badges.Class is NULL
limit 95;
select  
  badges.Id, 
  badges.Name, 
  min(
    cast(badges.Id as int8)), 
  max(
    cast(badges.Date as "timestamp"))
from 
  badges
where badges.Date is not NULL
limit 66;
select  
  votes.PostId
from 
  votes
where votes.Id is not NULL
limit 196;
select  
  users.AboutMe
from 
  postHistory
      inner join users
      on (postHistory.Comment <= postHistory.RevisionGUID)
    inner join postLinks
    on (users.WebsiteUrl is NULL)
where postHistory.ContentLicense is not NULL
limit 123;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  votes.Id
from 
  votes
    inner join comments
        inner join badges
        on (comments.UserDisplayName > comments.ContentLicense)
      inner join votes
      on (badges.Date < comments.CreationDate)
    on (badges.UserId is NULL)
where badges.Id is not NULL;
select  
  postLinks.Id
from 
  postLinks
where postLinks.Id is NULL
limit 97;
select  
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.PostId, 
  badges.TagBased, 
  min(
    cast(cast(null as oid) as oid))
from 
  badges
        inner join postLinks
        on (badges.TagBased <= badges.TagBased)
      inner join postLinks
      on (badges.Name > badges.Name)
    inner join postLinks
      inner join postLinks
        inner join postHistory
        on (postHistory.Id >= postHistory.Id)
      on (postHistory.RevisionGUID = postHistory.Comment)
    on (badges.Class is NULL)
where badges.Name is NULL
limit 79;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.AcceptedAnswerId, 
  sum(
    cast(posts.AcceptedAnswerId as int8)), 
  posts.Id, 
  posts.Body, 
  posts.AcceptedAnswerId
from 
  posts
where posts.Tags = posts.Title
limit 142;
select  
  users.AccountId, 
  users.ProfileImageUrl, 
  users.DisplayName, 
  users.WebsiteUrl, 
  users.CreationDate, 
  users.Location, 
  users.AccountId
from 
  users
where users.Id >= users.Id;
select  
  users.WebsiteUrl, 
  postHistory.PostHistoryTypeId, 
  users.Location, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as int2) as int2)), 
  badges.Id, 
  users.ProfileImageUrl, 
  postLinks.PostId, 
  min(
    cast(comments.CreationDate as "timestamp"))
from 
  postLinks
              inner join users
              on (users.ProfileImageUrl <= users.ProfileImageUrl)
            inner join users
            on (postLinks.PostId = users.Id )
          inner join comments
          on (postLinks.PostId = comments.Id )
        inner join users
        on (comments.ContentLicense >= users.AboutMe)
      inner join badges
            inner join comments
            on (comments.ContentLicense < comments.ContentLicense)
          inner join postHistory
          on (badges.TagBased >= badges.TagBased)
        inner join postLinks
        on (comments.UserId > comments.UserId)
      on (comments.UserId = comments.Id )
    inner join users
    on (badges.UserId is NULL)
where postHistory.CreationDate = postLinks.CreationDate
limit 170;
select distinct 
  postHistory.ContentLicense, 
  postHistory.Text, 
  postHistory.UserId, 
  postHistory.Text, 
  max(
    cast(cast(null as money) as money)), 
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  postHistory.Text, 
  postHistory.CreationDate, 
  postHistory.CreationDate, 
  postHistory.RevisionGUID, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.PostHistoryTypeId <= postHistory.PostId
limit 105;
select  
  badges.Date, 
  badges.UserId, 
  badges.Date, 
  badges.TagBased, 
  badges.Id, 
  badges.Class, 
  badges.Name, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  badges.Class, 
  badges.Class, 
  badges.UserId
from 
  badges
where badges.TagBased is NULL
limit 161;
select  
  comments.CreationDate, 
  comments.PostId, 
  min(
    cast(42 as int4)), 
  min(
    cast(13 as int4)), 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.UserDisplayName
from 
  comments
where comments.Text > comments.UserDisplayName
limit 48;
select  
  postHistory.PostId
from 
  postHistory
            inner join users
            on (postHistory.PostId >= postHistory.Id)
          inner join comments
            inner join comments
            on (comments.Id = comments.Id )
          on (users.CreationDate >= comments.CreationDate)
        inner join comments
        on (comments.Text >= postHistory.UserDisplayName)
      inner join postLinks
      on (comments.Id = postLinks.Id )
    inner join posts
    on (postLinks.PostId = posts.Id )
where postHistory.CreationDate is NULL
limit 58;
select  
  badges.Name, 
  users.AccountId, 
  postHistory.UserDisplayName, 
  users.ProfileImageUrl
from 
  postHistory
    inner join users
        inner join badges
        on (badges.TagBased >= badges.TagBased)
      inner join users
      on (users.AccountId >= users.ProfileImageUrl)
    on (users.DisplayName is not NULL)
where users.AccountId < users.AccountId
limit 41;
select  
  comments.UserId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  votes
        inner join postLinks
        on (postLinks.PostId >= postLinks.RelatedPostId)
      inner join postLinks
      on (postLinks.RelatedPostId < votes.Id)
    inner join comments
    on (votes.PostId = comments.Id )
where votes.Id is not NULL
limit 117;
select  
  postHistory.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.CreationDate, 
  postHistory.ContentLicense, 
  postHistory.CreationDate, 
  max(
    cast(cast(null as date) as date)), 
  postHistory.UserDisplayName
from 
  postHistory
    inner join postHistory
    on (postHistory.UserDisplayName is NULL)
where postHistory.RevisionGUID is not NULL
limit 100;
select  
  postHistory.Id
from 
  users
        inner join comments
            inner join postLinks
              inner join comments
              on (comments.Id > postLinks.PostId)
            on (comments.CreationDate <= postLinks.CreationDate)
          inner join votes
          on (votes.Id <= postLinks.Id)
        on (comments.CreationDate = votes.CreationDate)
      inner join postHistory
      on (comments.UserId = postHistory.Id )
    inner join postHistory
    on (postHistory.CreationDate = postHistory.CreationDate )
where postHistory.Id <= votes.PostId
limit 106;
select  
  postHistory.PostId, 
  postHistory.Comment, 
  postHistory.ContentLicense
from 
  postHistory
where postHistory.RevisionGUID is not NULL;
select  
  users.WebsiteUrl, 
  users.CreationDate, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  avg(
    cast(cast(null as int2) as int2)), 
  users.Id
from 
  users
where users.Id < users.Id;
select distinct 
  users.DisplayName, 
  users.DisplayName
from 
  comments
    inner join postHistory
        inner join users
        on (postHistory.CreationDate > postHistory.CreationDate)
      inner join postLinks
      on (postLinks.CreationDate > postLinks.CreationDate)
    on (comments.UserDisplayName = users.DisplayName )
where postHistory.ContentLicense is not NULL;
select  
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as int2) as int2)), 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as money) as money)), 
  postLinks.PostId, 
  avg(
    cast(56 as int4)), 
  count(
    cast(postLinks.Id as int8)), 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.PostId
from 
  postLinks
where postLinks.PostId is NULL
limit 57;
select  
  votes.CreationDate, 
  votes.Id, 
  votes.PostId, 
  votes.Id, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.Id, 
  votes.PostId, 
  votes.Id
from 
  votes
where votes.Id is not NULL;
select  
  min(
    cast(cast(null as float8) as float8)), 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  avg(
    cast(cast(null as float8) as float8))
from 
  postLinks
where postLinks.LinkTypeId is NULL
limit 166;
select  
  users.AboutMe
from 
  users
where users.ProfileImageUrl is not NULL
limit 109;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  comments.CreationDate, 
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  comments.Id, 
  postHistory.PostHistoryTypeId, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.PostId, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  postHistory.Id
from 
  postHistory
    inner join comments
    on (comments.ContentLicense is not NULL)
where comments.ContentLicense is NULL
limit 170;
select  
  min(
    cast(cast(null as date) as date)), 
  posts.CreationDate
from 
  posts
where posts.CreationDate is NULL
limit 72;
select  
  avg(
    cast(66 as int4)), 
  sum(
    cast(cast(null as int2) as int2)), 
  count(*), 
  votes.Id, 
  votes.Id, 
  comments.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  votes.UserId, 
  count(*), 
  comments.UserDisplayName, 
  badges.Id, 
  votes.VoteTypeId, 
  postHistory.PostId, 
  votes.PostId
from 
  votes
    inner join badges
          inner join comments
            inner join postHistory
              inner join postHistory
              on (postHistory.ContentLicense = postHistory.Comment)
            on (postHistory.Id >= postHistory.PostHistoryTypeId)
          on (badges.TagBased >= badges.TagBased)
        inner join comments
        on (postHistory.UserDisplayName >= comments.UserDisplayName)
      inner join votes
      on (postHistory.Comment > comments.UserDisplayName)
    on (votes.VoteTypeId is NULL)
where votes.UserId is NULL
limit 139;
select  
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  postHistory.Id
from 
  postHistory
where postHistory.ContentLicense = postHistory.ContentLicense
limit 99;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  badges.TagBased, 
  badges.TagBased, 
  min(
    cast(cast(null as inet) as inet)), 
  badges.Name, 
  badges.Class, 
  badges.UserId, 
  badges.Name, 
  badges.TagBased, 
  badges.Name, 
  badges.UserId, 
  badges.Name, 
  badges.Date, 
  min(
    cast(cast(null as float8) as float8)), 
  badges.TagBased, 
  badges.Name, 
  badges.Date
from 
  badges
where badges.Id is NULL;
select  
  users.DisplayName, 
  users.DisplayName, 
  users.AccountId, 
  users.DisplayName, 
  users.DisplayName
from 
  users
where users.Location = users.WebsiteUrl
limit 73;
select  
  votes.UserId, 
  votes.PostId
from 
  votes
where votes.UserId is not NULL
limit 43;
select  
  comments.Id, 
  postLinks.PostId, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  min(
    cast(cast(null as float8) as float8)), 
  comments.UserId, 
  postLinks.PostId, 
  comments.UserDisplayName, 
  comments.PostId, 
  comments.UserId
from 
  postLinks
    inner join comments
    on (postLinks.Id is not NULL)
where comments.Text is NULL
limit 49;
select  
  posts.CreationDate, 
  posts.OwnerDisplayName, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  posts.Id, 
  posts.ContentLicense, 
  max(
    cast(cast(null as date) as date)), 
  posts.ContentLicense, 
  sum(
    cast(cast(null as float4) as float4)), 
  posts.PostTypeId, 
  posts.OwnerDisplayName, 
  sum(
    cast(cast(null as int2) as int2))
from 
  posts
where posts.Title is NULL;
select  
  votes.CreationDate
from 
  votes
where votes.PostId is not NULL;
select  
  votes.VoteTypeId, 
  badges.Class
from 
  postLinks
    inner join badges
          inner join postLinks
          on (badges.Class > postLinks.RelatedPostId)
        inner join badges
        on (badges.Name < badges.Name)
      inner join postHistory
          inner join postHistory
          on (postHistory.ContentLicense >= postHistory.UserDisplayName)
        inner join votes
        on (postHistory.CreationDate < postHistory.CreationDate)
      on (postHistory.Id <= badges.UserId)
    on (postLinks.CreationDate = postLinks.CreationDate )
where postHistory.PostHistoryTypeId is not NULL
limit 181;
select  
  users.WebsiteUrl, 
  users.DisplayName
from 
  users
where users.CreationDate is NULL
limit 96;
select  
  max(
    cast(cast(null as float4) as float4)), 
  badges.Date, 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.Name
from 
  badges
where badges.TagBased <= badges.TagBased
limit 57;
select  
  comments.Text, 
  comments.Id, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  postLinks
    inner join comments
      inner join votes
        inner join comments
        on (comments.UserDisplayName >= comments.Text)
      on (comments.Id <= comments.PostId)
    on (votes.UserId is not NULL)
where comments.UserDisplayName is not NULL
limit 106;
select  
  comments.CreationDate, 
  comments.Text
from 
  comments
where comments.Id is not NULL
limit 133;
select  
  comments.CreationDate, 
  badges.TagBased, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  postLinks
          inner join postLinks
          on (postLinks.RelatedPostId = postLinks.Id )
        inner join users
          inner join badges
          on (users.Id = badges.Id )
        on (badges.TagBased > badges.TagBased)
      inner join postHistory
          inner join comments
          on (postHistory.Text <= postHistory.ContentLicense)
        inner join postLinks
            inner join postLinks
            on (postLinks.RelatedPostId >= postLinks.LinkTypeId)
          inner join postLinks
          on (postLinks.LinkTypeId <= postLinks.PostId)
        on (postHistory.ContentLicense < comments.ContentLicense)
      on (postLinks.LinkTypeId < postLinks.PostId)
    inner join comments
            inner join postLinks
            on (postLinks.CreationDate < comments.CreationDate)
          inner join postLinks
          on (comments.CreationDate <= comments.CreationDate)
        inner join badges
          inner join comments
          on (badges.Date = comments.CreationDate )
        on (comments.Text > comments.UserDisplayName)
      inner join votes
      on (postLinks.Id >= comments.Id)
    on (comments.Text <= comments.ContentLicense)
where postLinks.CreationDate = users.CreationDate
limit 159;
select  
  badges.Class, 
  votes.Id, 
  votes.CreationDate
from 
  badges
      inner join badges
      on (badges.UserId = badges.Id )
    inner join postLinks
          inner join votes
          on (votes.CreationDate = postLinks.CreationDate)
        inner join comments
        on (postLinks.RelatedPostId = comments.Id )
      inner join posts
        inner join users
            inner join badges
            on (badges.Date < badges.Date)
          inner join badges
          on (badges.TagBased <= badges.TagBased)
        on (badges.Date >= badges.Date)
      on (badges.TagBased < badges.TagBased)
    on (users.CreationDate is not NULL)
where badges.Id is NULL;
select  
  comments.UserId, 
  comments.UserDisplayName, 
  votes.CreationDate
from 
  votes
        inner join comments
        on (comments.UserDisplayName = comments.Text)
      inner join comments
      on (comments.Id = comments.Id )
    inner join postHistory
      inner join postHistory
      on (postHistory.Id >= postHistory.PostId)
    on (postHistory.PostHistoryTypeId is NULL)
where comments.ContentLicense is NULL
limit 82;
select  
  comments.ContentLicense, 
  min(
    cast(cast(null as date) as date))
from 
  comments
where comments.ContentLicense is not NULL
limit 56;
select  
  posts.OwnerUserId, 
  badges.Class, 
  comments.Text, 
  badges.Id, 
  posts.Id, 
  votes.VoteTypeId, 
  postHistory.Text
from 
  postHistory
      inner join badges
          inner join comments
          on (comments.ContentLicense > comments.UserDisplayName)
        inner join posts
        on (badges.Class = badges.Id)
      on (posts.OwnerUserId = postHistory.PostHistoryTypeId)
    inner join comments
        inner join votes
        on (comments.PostId = votes.Id )
      inner join badges
        inner join votes
        on (votes.CreationDate >= votes.CreationDate)
      on (votes.PostId >= votes.UserId)
    on (votes.PostId is not NULL)
where votes.Id is NULL;
select  
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.Id is NULL
limit 158;
select  
  users.Location, 
  users.AccountId, 
  users.Location, 
  postHistory.ContentLicense, 
  users.DisplayName, 
  users.Location, 
  avg(
    cast(cast(null as int2) as int2)), 
  users.Location, 
  users.AboutMe, 
  users.Location, 
  postHistory.UserId, 
  sum(
    cast(13 as int4)), 
  postHistory.CreationDate, 
  max(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postHistory.UserId, 
  users.AccountId
from 
  postHistory
    inner join users
    on (postHistory.UserId = users.Id )
where users.ProfileImageUrl is not NULL;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId
from 
  postLinks
    inner join postLinks
    on (postLinks.Id is NULL)
where postLinks.Id is NULL
limit 122;
select  
  users.CreationDate, 
  votes.PostId, 
  sum(
    cast(cast(null as money) as money)), 
  posts.CreationDate, 
  comments.ContentLicense, 
  comments.CreationDate, 
  max(
    cast(cast(null as oid) as oid)), 
  comments.CreationDate, 
  votes.PostId, 
  comments.PostId, 
  comments.PostId
from 
  users
      inner join comments
      on (comments.CreationDate < users.CreationDate)
    inner join comments
      inner join users
          inner join posts
          on (users.WebsiteUrl = posts.OwnerDisplayName )
        inner join comments
          inner join votes
          on (comments.PostId = votes.Id )
        on (comments.CreationDate = users.CreationDate)
      on (users.AccountId > users.AccountId)
    on (comments.PostId is not NULL)
where votes.CreationDate is not NULL
limit 187;
select  
  users.DisplayName, 
  users.WebsiteUrl, 
  users.AccountId, 
  users.ProfileImageUrl, 
  users.Location, 
  users.ProfileImageUrl
from 
  users
where users.AboutMe is not NULL;
select  
  badges.Id, 
  badges.TagBased, 
  badges.Id, 
  badges.Class, 
  badges.Name, 
  badges.UserId
from 
  badges
    inner join badges
    on (badges.Date = badges.Date )
where badges.UserId = badges.UserId
limit 125;
select  
  postLinks.PostId
from 
  postLinks
where postLinks.Id is NULL
limit 87;
select  
  comments.UserId, 
  users.CreationDate, 
  users.ProfileImageUrl
from 
  votes
    inner join comments
            inner join badges
            on (comments.CreationDate < badges.Date)
          inner join users
          on (badges.Date = badges.Date)
        inner join comments
        on (users.DisplayName >= comments.UserDisplayName)
      inner join postLinks
          inner join votes
            inner join users
            on (votes.Id = users.Id )
          on (users.CreationDate >= votes.CreationDate)
        inner join posts
        on (posts.CreationDate >= posts.CreationDate)
      on (users.CreationDate < comments.CreationDate)
    on (votes.UserId is NULL)
where votes.PostId is NULL;
select  
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as inet) as inet))
from 
  postHistory
              inner join posts
              on (postHistory.Id <= posts.PostTypeId)
            inner join comments
              inner join users
              on (comments.CreationDate >= users.CreationDate)
            on (users.ProfileImageUrl > users.ProfileImageUrl)
          inner join badges
          on (badges.Date > postHistory.CreationDate)
        inner join comments
            inner join postHistory
              inner join votes
              on (votes.CreationDate >= votes.CreationDate)
            on (comments.CreationDate = postHistory.CreationDate)
          inner join postLinks
            inner join users
              inner join postHistory
              on (postHistory.Comment = postHistory.Comment)
            on (users.DisplayName = postHistory.UserDisplayName)
          on (comments.PostId < postHistory.Id)
        on (comments.CreationDate < badges.Date)
      inner join postLinks
      on (users.ProfileImageUrl = users.ProfileImageUrl)
    inner join postHistory
    on (users.ProfileImageUrl = users.ProfileImageUrl)
where badges.Date is NULL
limit 151;
select  
  users.AboutMe, 
  users.ProfileImageUrl
from 
  users
where users.CreationDate = users.CreationDate;
select  
  votes.VoteTypeId
from 
  posts
    inner join votes
    on (posts.Id is NULL)
where votes.PostId is not NULL;
select  
  posts.ContentLicense, 
  posts.CreationDate, 
  posts.ParentId, 
  sum(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  posts
where posts.Id is not NULL
limit 79;
select  
  postHistory.UserDisplayName
from 
  comments
    inner join postHistory
      inner join comments
      on (postHistory.UserId = comments.Id)
    on (comments.Text is not NULL)
where comments.Text is NULL
limit 138;
select  
  min(
    cast(users.DisplayName as text)), 
  users.WebsiteUrl, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.UserId, 
  postLinks.PostId, 
  badges.UserId, 
  max(
    cast(cast(null as inet) as inet))
from 
  comments
      inner join postLinks
        inner join badges
        on (badges.TagBased = badges.TagBased)
      on (badges.Date = comments.CreationDate)
    inner join users
        inner join users
        on (users.Id <= users.Id)
      inner join comments
      on (users.WebsiteUrl = users.WebsiteUrl)
    on (badges.TagBased > badges.TagBased)
where users.AccountId > users.AccountId;
select  
  posts.AcceptedAnswerId, 
  min(
    cast(cast(null as money) as money)), 
  posts.ContentLicense, 
  comments.ContentLicense, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  comments.Id, 
  comments.UserId, 
  comments.UserDisplayName
from 
  posts
    inner join comments
    on (posts.AcceptedAnswerId is not NULL)
where posts.Tags is not NULL
limit 172;
select  
  max(
    cast(cast(null as "time") as "time")), 
  postHistory.PostId, 
  postHistory.PostId, 
  postHistory.Text, 
  postHistory.Comment, 
  min(
    cast(cast(null as oid) as oid)), 
  postHistory.CreationDate, 
  postHistory.Comment, 
  postHistory.PostId, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.RevisionGUID, 
  postHistory.RevisionGUID, 
  postHistory.Text, 
  postHistory.PostHistoryTypeId, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.Id
from 
  postHistory
where postHistory.RevisionGUID is not NULL;
select  
  users.CreationDate, 
  users.Location
from 
  users
    inner join postLinks
      inner join comments
        inner join users
          inner join postLinks
          on (users.Id = postLinks.Id )
        on (comments.ContentLicense = users.DisplayName )
      on (users.DisplayName > comments.Text)
    on (postLinks.LinkTypeId < postLinks.Id)
where postLinks.CreationDate is NULL
limit 76;
select  
  postLinks.RelatedPostId, 
  votes.Id, 
  users.AccountId, 
  users.DisplayName, 
  votes.CreationDate, 
  votes.UserId, 
  votes.VoteTypeId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.UserDisplayName, 
  votes.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  postHistory
      inner join postLinks
          inner join users
          on (users.CreationDate = postLinks.CreationDate)
        inner join postLinks
            inner join postHistory
            on (postHistory.CreationDate >= postLinks.CreationDate)
          inner join votes
          on (postHistory.PostHistoryTypeId <= postLinks.RelatedPostId)
        on (postHistory.ContentLicense = users.DisplayName)
      on (postHistory.Id = postLinks.Id )
    inner join comments
      inner join posts
          inner join users
          on (posts.Title = users.WebsiteUrl)
        inner join postLinks
        on (postLinks.PostId <= postLinks.Id)
      on (comments.UserId = postLinks.Id )
    on (postLinks.PostId is not NULL)
where votes.UserId is NULL
limit 42;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  comments.UserId, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.ContentLicense
from 
  comments
where comments.Id > comments.UserId
limit 58;
select  
  posts.AcceptedAnswerId, 
  posts.PostTypeId, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  posts
where posts.ParentId is NULL
limit 156;
select  
  sum(
    cast(cast(null as money) as money)), 
  badges.Id
from 
  badges
where badges.Date is NULL
limit 144;
select  
  users.CreationDate, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.VoteTypeId, 
  users.DisplayName, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  posts.Body, 
  users.AccountId, 
  users.AccountId, 
  users.AccountId
from 
  postLinks
    inner join comments
          inner join postHistory
            inner join users
            on (users.AccountId <= users.ProfileImageUrl)
          on (users.CreationDate < users.CreationDate)
        inner join postLinks
          inner join votes
            inner join users
            on (users.WebsiteUrl < users.Location)
          on (postLinks.LinkTypeId = users.Id )
        on (users.AccountId = users.AccountId)
      inner join posts
      on (users.CreationDate >= comments.CreationDate)
    on (postHistory.CreationDate >= postLinks.CreationDate)
where postHistory.CreationDate < comments.CreationDate;
select  
  postHistory.PostId
from 
  postHistory
where postHistory.UserDisplayName < postHistory.Text;
select  
  posts.OwnerUserId, 
  posts.Title
from 
  posts
where posts.OwnerUserId is NULL
limit 90;
select  
  min(
    cast(cast(null as tid) as tid)), 
  postLinks.Id
from 
  badges
    inner join comments
      inner join postLinks
      on (postLinks.CreationDate > comments.CreationDate)
    on (postLinks.CreationDate is not NULL)
where comments.ContentLicense is NULL;
select  
  users.AccountId, 
  users.WebsiteUrl, 
  users.AboutMe, 
  users.WebsiteUrl, 
  posts.ParentId, 
  count(
    cast(posts.ParentId as int8)), 
  users.WebsiteUrl, 
  sum(
    cast(26 as int4)), 
  avg(
    cast(posts.AcceptedAnswerId as int8)), 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.ProfileImageUrl, 
  posts.Title, 
  posts.Title, 
  posts.ContentLicense, 
  posts.OwnerDisplayName
from 
  users
    inner join posts
    on (posts.ParentId <= posts.OwnerUserId)
where posts.CreationDate is NULL
limit 80;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  users.AccountId, 
  badges.UserId, 
  badges.TagBased, 
  comments.UserDisplayName, 
  comments.PostId, 
  users.DisplayName, 
  comments.PostId, 
  max(
    cast(badges.Id as int8)), 
  users.AboutMe, 
  badges.Date, 
  users.AccountId, 
  comments.UserId, 
  comments.Text, 
  users.ProfileImageUrl, 
  users.AccountId, 
  sum(
    cast(comments.PostId as int8)), 
  comments.UserDisplayName, 
  min(
    cast(cast(null as "time") as "time")), 
  posts.Title
from 
  votes
    inner join users
        inner join users
        on (users.CreationDate > users.CreationDate)
      inner join comments
        inner join users
          inner join badges
              inner join comments
              on (badges.Id = comments.Id )
            inner join badges
              inner join posts
              on (posts.ContentLicense > posts.ContentLicense)
            on (badges.Class = posts.OwnerUserId)
          on (users.CreationDate > users.CreationDate)
        on (badges.TagBased = badges.TagBased)
      on (users.Id = badges.Id )
    on (users.Location is NULL)
where badges.Class is NULL;
select  
  posts.ParentId, 
  sum(
    cast(posts.OwnerUserId as int8)), 
  posts.Id, 
  posts.ParentId, 
  posts.OwnerUserId, 
  posts.Title, 
  posts.OwnerUserId, 
  posts.PostTypeId, 
  posts.PostTypeId, 
  posts.Tags, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  posts.CreationDate, 
  posts.PostTypeId, 
  posts.OwnerDisplayName, 
  posts.Tags
from 
  posts
where posts.ParentId is not NULL
limit 109;
select  
  posts.PostTypeId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
        inner join postHistory
            inner join postHistory
            on (postHistory.RevisionGUID = postHistory.UserDisplayName )
          inner join votes
              inner join posts
              on (posts.Body <= posts.Body)
            inner join posts
            on (posts.CreationDate >= posts.CreationDate)
          on (votes.Id >= postHistory.PostId)
        on (posts.CreationDate = votes.CreationDate)
      inner join posts
      on (posts.Body <= posts.ContentLicense)
    inner join posts
    on (posts.Tags is NULL)
where posts.ContentLicense is NULL;
select  
  votes.CreationDate, 
  votes.CreationDate, 
  postHistory.PostHistoryTypeId, 
  votes.Id, 
  votes.CreationDate, 
  votes.PostId, 
  postHistory.UserDisplayName, 
  postHistory.Comment, 
  postHistory.CreationDate, 
  max(
    cast(cast(null as tid) as tid)), 
  votes.UserId, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  votes.UserId, 
  max(
    cast(cast(null as float8) as float8)), 
  votes.PostId, 
  postHistory.PostHistoryTypeId, 
  votes.CreationDate, 
  postHistory.UserDisplayName, 
  votes.VoteTypeId, 
  votes.UserId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as float4) as float4)), 
  votes.PostId
from 
  votes
    inner join postHistory
    on (postHistory.RevisionGUID is not NULL)
where postHistory.PostHistoryTypeId is NULL
limit 114;
select  
  posts.CreationDate, 
  posts.ParentId
from 
  posts
where posts.Body is not NULL
limit 114;
select  
  votes.UserId, 
  votes.UserId
from 
  votes
where votes.VoteTypeId is NULL
limit 38;
select  
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.Id, 
  postHistory.PostId, 
  postHistory.PostId
from 
  postHistory
where postHistory.CreationDate is not NULL
limit 106;
select  
  comments.UserId, 
  comments.UserId, 
  min(
    cast(cast(null as float4) as float4)), 
  comments.UserId, 
  comments.UserId, 
  comments.Id, 
  comments.UserDisplayName
from 
  comments
where comments.CreationDate is not NULL
limit 127;
select  
  postHistory.CreationDate
from 
  postHistory
where postHistory.UserId is NULL;
select  
  posts.PostTypeId, 
  comments.PostId, 
  posts.OwnerDisplayName, 
  postHistory.CreationDate, 
  badges.Id, 
  posts.OwnerDisplayName, 
  postLinks.CreationDate, 
  comments.PostId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.ContentLicense, 
  badges.Date, 
  min(
    cast(cast(null as int2) as int2)), 
  postLinks.Id, 
  postLinks.Id, 
  avg(
    cast(cast(null as float4) as float4)), 
  users.DisplayName, 
  badges.UserId, 
  postLinks.PostId
from 
  posts
      inner join votes
          inner join postHistory
            inner join badges
            on (badges.UserId > postHistory.PostId)
          on (badges.Date < postHistory.CreationDate)
        inner join users
          inner join postLinks
            inner join badges
              inner join comments
              on (badges.Name = badges.Name)
            on (postLinks.LinkTypeId > comments.PostId)
          on (badges.TagBased <= badges.TagBased)
        on (badges.Name < users.WebsiteUrl)
      on (postLinks.CreationDate = comments.CreationDate)
    inner join badges
    on (votes.UserId is NULL)
where postHistory.Text > posts.OwnerDisplayName;
select  
  users.AccountId
from 
  comments
    inner join users
        inner join badges
          inner join comments
            inner join votes
            on (votes.Id >= votes.PostId)
          on (comments.UserId > badges.UserId)
        on (users.WebsiteUrl = badges.Name )
      inner join postLinks
        inner join votes
        on (postLinks.CreationDate >= postLinks.CreationDate)
      on (postLinks.CreationDate >= votes.CreationDate)
    on (badges.TagBased < badges.TagBased)
where badges.Date = badges.Date;
select  
  postHistory.RevisionGUID, 
  sum(
    cast(cast(null as float4) as float4)), 
  votes.VoteTypeId, 
  posts.Id, 
  postHistory.Text, 
  votes.Id, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.PostId, 
  max(
    cast(postHistory.CreationDate as "timestamp")), 
  votes.CreationDate, 
  min(
    cast(cast(null as inet) as inet)), 
  posts.Tags, 
  votes.Id, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.Id, 
  posts.Body, 
  postHistory.UserDisplayName, 
  postHistory.Comment
from 
  postHistory
        inner join posts
        on (posts.Id >= postHistory.UserId)
      inner join votes
      on (posts.ContentLicense >= postHistory.Comment)
    inner join postLinks
    on (posts.ParentId >= votes.UserId)
where postLinks.Id is NULL
limit 100;
select  
  max(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as inet) as inet))
from 
  badges
      inner join badges
      on (badges.UserId > badges.Class)
    inner join postLinks
      inner join users
      on (users.WebsiteUrl = users.AboutMe)
    on (users.AboutMe > badges.Name)
where badges.TagBased >= badges.TagBased
limit 135;
select  
  badges.TagBased, 
  min(
    cast(cast(null as date) as date))
from 
  badges
      inner join postHistory
        inner join postHistory
        on (postHistory.Comment = postHistory.UserDisplayName )
      on (postHistory.UserId = postHistory.PostHistoryTypeId)
    inner join votes
    on (postHistory.UserDisplayName is NULL)
where badges.TagBased > badges.TagBased
limit 164;
select  
  comments.UserId, 
  comments.PostId, 
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
where comments.Text is NULL;
select  
  badges.Class, 
  comments.ContentLicense, 
  comments.ContentLicense, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  comments.UserDisplayName, 
  postHistory.RevisionGUID, 
  comments.ContentLicense, 
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  badges.Date, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.Id
from 
  comments
        inner join badges
        on (comments.CreationDate > comments.CreationDate)
      inner join posts
        inner join postLinks
        on (posts.OwnerUserId >= postLinks.PostId)
      on (badges.TagBased > badges.TagBased)
    inner join postHistory
    on (posts.PostTypeId is not NULL)
where comments.CreationDate < posts.CreationDate
limit 95;
select  
  votes.Id, 
  votes.VoteTypeId, 
  votes.PostId, 
  posts.Tags, 
  posts.OwnerUserId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.PostId, 
  users.ProfileImageUrl
from 
  postHistory
    inner join postHistory
            inner join postHistory
            on (postHistory.CreationDate < postHistory.CreationDate)
          inner join comments
          on (postHistory.CreationDate >= postHistory.CreationDate)
        inner join votes
            inner join badges
              inner join votes
              on (votes.CreationDate < votes.CreationDate)
            on (badges.Name < badges.Name)
          inner join posts
          on (posts.Tags >= posts.Body)
        on (postHistory.Text <= postHistory.RevisionGUID)
      inner join posts
        inner join votes
          inner join users
          on (users.AccountId < users.ProfileImageUrl)
        on (users.AccountId > users.ProfileImageUrl)
      on (posts.ContentLicense = postHistory.RevisionGUID)
    on (postHistory.UserDisplayName = users.DisplayName )
where postHistory.RevisionGUID is not NULL
limit 103;
select  
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as money) as money)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.PostId = postLinks.LinkTypeId
limit 61;
select  
  votes.Id, 
  max(
    cast(posts.CreationDate as "timestamp")), 
  votes.VoteTypeId, 
  max(
    cast(votes.VoteTypeId as int8)), 
  posts.Id, 
  avg(
    cast(votes.PostId as int8)), 
  count(*), 
  sum(
    cast(votes.UserId as int8)), 
  votes.Id, 
  votes.VoteTypeId, 
  sum(
    cast(cast(null as int2) as int2))
from 
  posts
      inner join votes
      on (posts.PostTypeId <= votes.VoteTypeId)
    inner join postLinks
    on (posts.OwnerUserId < posts.OwnerUserId)
where postLinks.CreationDate = postLinks.CreationDate;
select  
  posts.Tags, 
  posts.OwnerUserId, 
  posts.OwnerUserId, 
  posts.ParentId, 
  posts.Id, 
  posts.Tags, 
  posts.CreationDate, 
  posts.OwnerUserId, 
  posts.AcceptedAnswerId
from 
  posts
where posts.ParentId is not NULL
limit 179;
select  
  comments.ContentLicense
from 
  postHistory
      inner join votes
          inner join comments
          on (votes.UserId < votes.UserId)
        inner join votes
        on (comments.UserDisplayName = comments.ContentLicense)
      on (postHistory.CreationDate = postHistory.CreationDate)
    inner join postHistory
            inner join postLinks
            on (postHistory.Text >= postHistory.RevisionGUID)
          inner join postLinks
          on (postHistory.Id >= postLinks.RelatedPostId)
        inner join users
          inner join comments
          on (users.ProfileImageUrl > users.ProfileImageUrl)
        on (comments.UserId = comments.Id)
      inner join users
        inner join postLinks
        on (users.Id = postLinks.Id )
      on (comments.ContentLicense < postHistory.Comment)
    on (votes.CreationDate is not NULL)
where postLinks.CreationDate <= postHistory.CreationDate
limit 28;
select  
  users.AccountId, 
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  users.CreationDate, 
  min(
    cast(cast(null as "time") as "time")), 
  users.Id, 
  min(
    cast(cast(null as "time") as "time")), 
  users.ProfileImageUrl, 
  min(
    cast(cast(null as tid) as tid)), 
  users.ProfileImageUrl, 
  users.WebsiteUrl, 
  users.CreationDate, 
  max(
    cast(cast(null as tid) as tid)), 
  users.AboutMe
from 
  users
where users.AboutMe is not NULL;
select  
  min(
    cast(cast(null as inet) as inet))
from 
  users
where users.Id is NULL
limit 68;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  postHistory.PostHistoryTypeId, 
  postLinks.Id, 
  max(
    cast(cast(null as xid8) as xid8)), 
  postLinks.CreationDate
from 
  postLinks
      inner join postHistory
      on (postHistory.RevisionGUID < postHistory.UserDisplayName)
    inner join postLinks
      inner join postLinks
            inner join postHistory
            on (postHistory.RevisionGUID < postHistory.Comment)
          inner join users
          on (postHistory.RevisionGUID < postHistory.RevisionGUID)
        inner join votes
        on (postHistory.PostHistoryTypeId < postLinks.Id)
      on (postHistory.RevisionGUID > users.AboutMe)
    on (postHistory.RevisionGUID is not NULL)
where postLinks.Id is not NULL
limit 78;
select  
  users.AccountId, 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as inet) as inet)), 
  users.DisplayName, 
  max(
    cast(users.CreationDate as "timestamp")), 
  users.DisplayName
from 
  users
where users.DisplayName is NULL
limit 23;
select  
  comments.UserId, 
  votes.UserId, 
  votes.UserId, 
  posts.ContentLicense, 
  posts.ParentId, 
  posts.PostTypeId, 
  comments.UserDisplayName
from 
  badges
    inner join votes
        inner join posts
        on (votes.PostId > posts.Id)
      inner join comments
      on (posts.ContentLicense <= posts.Tags)
    on (posts.AcceptedAnswerId <= badges.Class)
where votes.CreationDate = posts.CreationDate;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.Id
from 
  postHistory
        inner join votes
        on (postHistory.ContentLicense >= postHistory.ContentLicense)
      inner join users
              inner join users
              on (users.WebsiteUrl = users.DisplayName)
            inner join postHistory
              inner join badges
              on (postHistory.CreationDate <= badges.Date)
            on (users.CreationDate = users.CreationDate)
          inner join votes
          on (postHistory.UserId < users.Id)
        inner join postHistory
          inner join users
          on (postHistory.UserDisplayName = users.DisplayName )
        on (users.ProfileImageUrl = users.ProfileImageUrl)
      on (badges.TagBased >= badges.TagBased)
    inner join posts
      inner join users
          inner join posts
          on (users.AccountId > users.AccountId)
        inner join badges
        on (users.AboutMe = badges.Name )
      on (posts.ParentId >= posts.PostTypeId)
    on (votes.CreationDate is NULL)
where users.WebsiteUrl >= postHistory.Text
limit 67;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  comments.UserId, 
  comments.Text
from 
  comments
where comments.PostId is NULL
limit 107;
select  
  votes.Id, 
  votes.PostId, 
  avg(
    cast(cast(null as int2) as int2))
from 
  votes
where votes.Id is not NULL
limit 145;
select  
  badges.Date, 
  badges.Id, 
  badges.UserId, 
  badges.TagBased, 
  badges.Id
from 
  badges
where badges.TagBased <= badges.TagBased
limit 112;
select  
  badges.Name
from 
  posts
      inner join postLinks
      on (posts.CreationDate <= posts.CreationDate)
    inner join badges
    on (badges.Date is NULL)
where posts.ParentId is not NULL;
select  
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  postHistory
    inner join badges
    on (postHistory.Comment = badges.Name )
where badges.Id < postHistory.PostHistoryTypeId;
select  
  postHistory.CreationDate, 
  postHistory.CreationDate, 
  votes.PostId, 
  postHistory.PostHistoryTypeId, 
  votes.CreationDate
from 
  votes
    inner join postHistory
    on (postHistory.CreationDate is NULL)
where votes.PostId is NULL
limit 85;
select  
  posts.ContentLicense, 
  posts.OwnerUserId, 
  posts.ParentId, 
  posts.Tags
from 
  posts
where posts.AcceptedAnswerId is not NULL
limit 58;
select  
  min(
    cast(postHistory.UserId as int8)), 
  postHistory.PostId, 
  postHistory.ContentLicense, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.UserId, 
  postHistory.UserId, 
  postHistory.ContentLicense, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  postHistory.UserId, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  postHistory
where postHistory.Id is NULL;
select  
  comments.CreationDate, 
  sum(
    cast(votes.PostId as int8))
from 
  comments
      inner join postLinks
      on (comments.UserId > postLinks.PostId)
    inner join votes
    on (postLinks.Id is not NULL)
where comments.ContentLicense is not NULL;
select  
  postLinks.LinkTypeId, 
  votes.Id, 
  postLinks.Id, 
  badges.TagBased, 
  max(
    cast(cast(null as float4) as float4))
from 
  users
    inner join badges
        inner join votes
          inner join postLinks
                inner join postLinks
                on (postLinks.CreationDate = postLinks.CreationDate)
              inner join badges
              on (badges.Date = postLinks.CreationDate)
            inner join postLinks
            on (badges.Name <= badges.Name)
          on (badges.Name <= badges.Name)
        on (badges.TagBased = badges.TagBased )
      inner join comments
      on (postLinks.CreationDate = badges.Date)
    on (badges.TagBased >= badges.TagBased)
where postLinks.PostId = postLinks.PostId;
select  
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  postLinks
    inner join postLinks
    on (postLinks.Id is NULL)
where postLinks.RelatedPostId is NULL;
select  
  votes.Id, 
  users.WebsiteUrl, 
  users.AccountId
from 
  users
            inner join postLinks
            on (users.CreationDate < postLinks.CreationDate)
          inner join users
            inner join votes
              inner join votes
              on (votes.VoteTypeId > votes.UserId)
            on (users.AccountId = users.ProfileImageUrl)
          on (users.AboutMe = users.DisplayName )
        inner join users
        on (postLinks.Id > votes.VoteTypeId)
      inner join posts
        inner join badges
        on (posts.OwnerDisplayName = posts.Title)
      on (users.Id < postLinks.RelatedPostId)
    inner join posts
    on (postLinks.CreationDate = posts.CreationDate )
where badges.Name is not NULL;
select  
  badges.Class
from 
  badges
where badges.UserId <= badges.Class
limit 55;
select  
  badges.TagBased, 
  max(
    cast(cast(null as date) as date)), 
  sum(
    cast(cast(null as money) as money)), 
  badges.UserId, 
  badges.Name, 
  badges.Id, 
  badges.Name, 
  badges.TagBased, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.Class
from 
  badges
where badges.Name >= badges.Name
limit 47;
select  
  comments.Text, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.Comment, 
  users.AboutMe, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.ContentLicense, 
  users.Location, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName
from 
  postHistory
          inner join votes
          on (postHistory.Id = votes.Id )
        inner join users
        on (users.ProfileImageUrl <= users.AccountId)
      inner join users
        inner join posts
              inner join posts
              on (posts.ParentId = posts.Id )
            inner join comments
            on (posts.OwnerUserId <= posts.OwnerUserId)
          inner join posts
          on (posts.OwnerDisplayName > posts.Title)
        on (users.CreationDate = posts.CreationDate )
      on (posts.Id <= posts.AcceptedAnswerId)
    inner join votes
    on (posts.Id = votes.Id )
where users.DisplayName > posts.Title
limit 44;
select  
  votes.Id, 
  votes.PostId, 
  votes.UserId, 
  votes.Id
from 
  votes
where votes.VoteTypeId is NULL;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 192;
select  
  postHistory.CreationDate, 
  postHistory.UserId, 
  postHistory.UserId, 
  postHistory.PostId, 
  postHistory.PostHistoryTypeId, 
  postHistory.ContentLicense, 
  sum(
    cast(1 as int4)), 
  postHistory.CreationDate, 
  postHistory.Comment, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  min(
    cast(cast(null as "interval") as "interval")), 
  postHistory.PostHistoryTypeId, 
  postHistory.Text, 
  postHistory.PostId, 
  postHistory.Id, 
  postHistory.UserId, 
  postHistory.CreationDate, 
  postHistory.UserId, 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  postHistory.Text, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.PostHistoryTypeId, 
  sum(
    cast(postHistory.PostHistoryTypeId as int8))
from 
  postHistory
where postHistory.Comment > postHistory.ContentLicense
limit 97;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.TagBased, 
  badges.Id, 
  badges.Class, 
  min(
    cast(cast(null as money) as money)), 
  badges.UserId, 
  badges.UserId, 
  badges.TagBased, 
  badges.Class, 
  badges.Class
from 
  badges
where badges.Id is not NULL;
select  
  comments.UserId, 
  badges.UserId, 
  max(
    cast(cast(null as int2) as int2)), 
  postLinks.PostId, 
  comments.ContentLicense, 
  badges.Date, 
  postLinks.LinkTypeId, 
  badges.Class, 
  max(
    cast(comments.UserId as int8)), 
  sum(
    cast(cast(null as money) as money)), 
  users.WebsiteUrl, 
  badges.TagBased, 
  users.AccountId
from 
  badges
          inner join users
              inner join comments
              on (users.CreationDate = comments.CreationDate)
            inner join comments
            on (comments.UserId >= comments.UserId)
          on (badges.Id = users.Id )
        inner join comments
        on (badges.TagBased > badges.TagBased)
      inner join postLinks
      on (comments.Id = postLinks.Id )
    inner join postLinks
          inner join badges
          on (badges.Class > postLinks.LinkTypeId)
        inner join badges
          inner join posts
              inner join comments
              on (posts.Title = comments.ContentLicense )
            inner join badges
            on (posts.ContentLicense <= comments.Text)
          on (badges.TagBased < badges.TagBased)
        on (badges.TagBased < badges.TagBased)
      inner join comments
          inner join votes
          on (comments.CreationDate <= votes.CreationDate)
        inner join comments
            inner join postLinks
              inner join users
              on (postLinks.PostId = users.Id )
            on (postLinks.Id > comments.Id)
          inner join users
          on (postLinks.Id = users.Id)
        on (votes.PostId = users.Id )
      on (comments.CreationDate < postLinks.CreationDate)
    on (postLinks.RelatedPostId is NULL)
where badges.TagBased > badges.TagBased
limit 52;
select  
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  users.Id, 
  users.AccountId, 
  users.Id, 
  users.AboutMe, 
  users.ProfileImageUrl
from 
  users
where users.WebsiteUrl is NULL
limit 74;
select  
  postHistory.ContentLicense, 
  postHistory.UserId, 
  badges.Class, 
  badges.TagBased, 
  postHistory.Comment, 
  badges.Date, 
  badges.Name, 
  badges.Id, 
  badges.Date, 
  badges.Date
from 
  postHistory
    inner join badges
      inner join comments
        inner join badges
        on (badges.TagBased > badges.TagBased)
      on (comments.Text = comments.ContentLicense)
    on (badges.TagBased is NULL)
where badges.Date is not NULL
limit 80;
select  
  max(
    cast(badges.Name as text)), 
  postLinks.RelatedPostId
from 
  badges
    inner join postLinks
      inner join postLinks
      on (postLinks.Id = postLinks.RelatedPostId)
    on (postLinks.CreationDate is not NULL)
where badges.Class is not NULL;
select  
  postLinks.PostId, 
  badges.UserId, 
  avg(
    cast(cast(null as float4) as float4))
from 
  badges
          inner join postLinks
          on (badges.TagBased > badges.TagBased)
        inner join votes
            inner join posts
            on (votes.PostId = posts.Id )
          inner join users
          on (users.ProfileImageUrl > users.ProfileImageUrl)
        on (badges.TagBased >= badges.TagBased)
      inner join postLinks
      on (users.AccountId > users.AccountId)
    inner join postLinks
    on (postLinks.PostId is NULL)
where badges.TagBased < badges.TagBased;
select  
  sum(
    cast(cast(null as int2) as int2))
from 
  posts
      inner join badges
      on (badges.Date = posts.CreationDate)
    inner join postLinks
            inner join postHistory
            on (postHistory.UserDisplayName = postHistory.UserDisplayName)
          inner join posts
          on (posts.Id > postLinks.RelatedPostId)
        inner join users
        on (posts.Tags >= postHistory.UserDisplayName)
      inner join votes
      on (posts.Id < postLinks.LinkTypeId)
    on (posts.Body is not NULL)
where votes.PostId is NULL
limit 130;
select  
  votes.PostId, 
  sum(
    cast(cast(null as int2) as int2)), 
  postLinks.LinkTypeId, 
  postHistory.ContentLicense, 
  comments.Text, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  users.WebsiteUrl, 
  votes.Id, 
  count(
    cast(postHistory.CreationDate as "timestamp"))
from 
  users
      inner join postHistory
        inner join votes
        on (votes.CreationDate >= votes.CreationDate)
      on (users.AboutMe = postHistory.UserDisplayName )
    inner join postLinks
      inner join comments
        inner join badges
        on (badges.UserId >= badges.Class)
      on (comments.CreationDate < postLinks.CreationDate)
    on (badges.TagBased = badges.TagBased)
where postLinks.Id is NULL
limit 77;
select  
  badges.UserId, 
  badges.Id
from 
  badges
where badges.UserId is NULL;
select  
  comments.UserId, 
  votes.VoteTypeId, 
  badges.Date, 
  posts.Body, 
  comments.Id, 
  comments.Text
from 
  badges
      inner join posts
      on (posts.CreationDate = posts.CreationDate)
    inner join badges
        inner join votes
            inner join posts
              inner join comments
              on (posts.PostTypeId < posts.PostTypeId)
            on (posts.CreationDate <= posts.CreationDate)
          inner join badges
          on (posts.OwnerDisplayName < posts.Title)
        on (posts.CreationDate > posts.CreationDate)
      inner join postLinks
            inner join posts
              inner join votes
              on (posts.PostTypeId < posts.Id)
            on (votes.CreationDate < votes.CreationDate)
          inner join comments
          on (votes.CreationDate < votes.CreationDate)
        inner join comments
        on (postLinks.CreationDate = comments.CreationDate )
      on (comments.ContentLicense <= posts.Body)
    on (votes.PostId is not NULL)
where comments.Id is NULL
limit 42;
select  
  posts.AcceptedAnswerId, 
  users.WebsiteUrl, 
  comments.ContentLicense
from 
  postLinks
        inner join users
        on (users.DisplayName = users.Location)
      inner join posts
      on (users.CreationDate <= users.CreationDate)
    inner join comments
    on (posts.ContentLicense is NULL)
where posts.PostTypeId is NULL
limit 19;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.VoteTypeId, 
  votes.UserId
from 
  votes
where votes.Id is not NULL
limit 142;
select  
  postLinks.LinkTypeId, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  comments.Id, 
  votes.UserId, 
  posts.ParentId, 
  comments.Id, 
  votes.PostId, 
  postLinks.RelatedPostId, 
  comments.UserId, 
  users.DisplayName
from 
  posts
        inner join users
            inner join votes
            on (users.CreationDate = votes.CreationDate )
          inner join comments
          on (users.ProfileImageUrl <= users.AccountId)
        on (comments.ContentLicense < comments.UserDisplayName)
      inner join posts
      on (posts.Body = posts.OwnerDisplayName )
    inner join users
        inner join posts
        on (posts.Id = posts.ParentId)
      inner join postLinks
            inner join comments
            on (comments.ContentLicense > comments.Text)
          inner join postLinks
          on (postLinks.CreationDate >= postLinks.CreationDate)
        inner join badges
              inner join comments
              on (comments.CreationDate < comments.CreationDate)
            inner join votes
            on (comments.CreationDate > badges.Date)
          inner join posts
          on (comments.Text >= posts.ContentLicense)
        on (badges.TagBased = badges.TagBased)
      on (users.WebsiteUrl = badges.Name )
    on (users.DisplayName = comments.ContentLicense )
where posts.ParentId is not NULL
limit 153;
select  
  votes.CreationDate, 
  votes.Id, 
  min(
    cast(votes.UserId as int8)), 
  min(
    cast(cast(null as int2) as int2)), 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.UserId, 
  avg(
    cast(90 as int4)), 
  votes.UserId, 
  votes.PostId, 
  votes.UserId, 
  min(
    cast(votes.CreationDate as "timestamp")), 
  votes.CreationDate
from 
  votes
where votes.UserId > votes.PostId
limit 94;
select  
  postHistory.Id, 
  users.WebsiteUrl, 
  users.Id, 
  users.AboutMe, 
  posts.PostTypeId, 
  comments.PostId, 
  postHistory.Text, 
  comments.UserDisplayName, 
  comments.Id, 
  postHistory.ContentLicense, 
  posts.AcceptedAnswerId, 
  comments.UserId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.PostTypeId, 
  users.WebsiteUrl
from 
  postHistory
      inner join posts
        inner join users
        on (posts.CreationDate = users.CreationDate)
      on (posts.CreationDate <= users.CreationDate)
    inner join comments
    on (users.AccountId < users.AccountId)
where users.AboutMe is not NULL
limit 71;
select  
  posts.CreationDate, 
  posts.ContentLicense
from 
  posts
    inner join badges
    on (posts.Body is not NULL)
where badges.Class is not NULL;
select  
  postLinks.PostId
from 
  postLinks
where postLinks.Id is NULL
limit 168;
select  
  postHistory.Comment, 
  posts.Tags, 
  posts.CreationDate, 
  postHistory.PostHistoryTypeId, 
  postHistory.PostId, 
  comments.UserId, 
  postHistory.PostHistoryTypeId, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.CreationDate, 
  postHistory.Comment, 
  postHistory.UserDisplayName, 
  comments.Text, 
  postHistory.Id, 
  posts.AcceptedAnswerId, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName, 
  postHistory.PostId
from 
  posts
      inner join comments
      on (posts.Id > comments.PostId)
    inner join postHistory
    on (postHistory.UserDisplayName < posts.OwnerDisplayName)
where comments.CreationDate is not NULL;
select  
  min(
    cast(cast(null as timetz) as timetz))
from 
  posts
        inner join postLinks
        on (posts.CreationDate < postLinks.CreationDate)
      inner join users
      on (postLinks.Id = users.Id )
    inner join comments
        inner join badges
            inner join postLinks
            on (badges.TagBased >= badges.TagBased)
          inner join users
          on (users.AccountId > users.ProfileImageUrl)
        on (comments.ContentLicense = badges.Name )
      inner join votes
        inner join posts
        on (posts.CreationDate > posts.CreationDate)
      on (badges.TagBased = badges.TagBased)
    on (postLinks.CreationDate = comments.CreationDate )
where posts.PostTypeId = badges.UserId;
select  
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  postLinks
    inner join postLinks
    on (postLinks.LinkTypeId is not NULL)
where postLinks.RelatedPostId is not NULL;
select  
  users.ProfileImageUrl, 
  max(
    cast(users.CreationDate as "timestamp")), 
  users.AccountId, 
  users.Id, 
  count(
    cast(users.AccountId as float8))
from 
  users
where users.Id < users.Id
limit 171;
select  
  comments.UserDisplayName
from 
  comments
where comments.UserId < comments.PostId
limit 79;
select  
  badges.TagBased, 
  min(
    cast(badges.UserId as int8)), 
  badges.UserId, 
  badges.Id
from 
  badges
where badges.Name is not NULL;
select distinct 
  posts.ContentLicense, 
  posts.Body
from 
  posts
    inner join badges
    on (posts.Body is NULL)
where badges.Name is not NULL
limit 68;
select  
  votes.PostId, 
  votes.PostId
from 
  posts
      inner join badges
      on (posts.Body = badges.Name )
    inner join votes
    on (badges.Id < votes.UserId)
where badges.Class is not NULL;
select  
  badges.Date, 
  badges.TagBased, 
  badges.TagBased, 
  badges.Id, 
  posts.ContentLicense, 
  posts.PostTypeId, 
  badges.Name
from 
  posts
    inner join badges
        inner join posts
        on (badges.TagBased >= badges.TagBased)
      inner join badges
      on (badges.Date < badges.Date)
    on (posts.OwnerDisplayName is NULL)
where posts.Id is NULL
limit 28;
select  
  badges.Id, 
  posts.ContentLicense
from 
  badges
    inner join posts
    on (badges.Id = posts.Id )
where posts.AcceptedAnswerId is not NULL
limit 64;
select  
  comments.CreationDate, 
  comments.CreationDate, 
  comments.CreationDate, 
  comments.UserId, 
  comments.Id, 
  comments.ContentLicense, 
  comments.UserId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as date) as date)), 
  comments.Text
from 
  comments
where comments.CreationDate is NULL
limit 137;
select  
  postLinks.PostId, 
  max(
    cast(cast(null as float4) as float4)), 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.Id
from 
  postLinks
where postLinks.PostId is not NULL
limit 104;
select  
  badges.Name, 
  badges.Class, 
  badges.Id, 
  badges.Id, 
  badges.Date, 
  min(
    cast(cast(null as date) as date))
from 
  badges
where badges.UserId is NULL
limit 59;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  avg(
    cast(postLinks.Id as int8)), 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  postLinks
where postLinks.PostId is not NULL
limit 134;
select  
  comments.ContentLicense, 
  comments.Id, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  avg(
    cast(cast(null as int2) as int2)), 
  users.Location, 
  comments.UserId, 
  comments.PostId
from 
  users
    inner join comments
    on (comments.UserDisplayName < users.DisplayName)
where users.ProfileImageUrl > users.ProfileImageUrl
limit 73;
select  
  posts.Id, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.OwnerDisplayName, 
  avg(
    cast(65 as int4)), 
  posts.Tags, 
  posts.AcceptedAnswerId, 
  posts.ContentLicense, 
  sum(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as money) as money)), 
  posts.CreationDate, 
  posts.ParentId, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  sum(
    cast(cast(null as float8) as float8)), 
  posts.Tags, 
  posts.Tags, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posts.ParentId
from 
  posts
    inner join posts
    on (posts.OwnerDisplayName is not NULL)
where posts.CreationDate is NULL;
select  
  postLinks.CreationDate, 
  users.AccountId, 
  avg(
    cast(users.ProfileImageUrl as float8))
from 
  users
        inner join posts
        on (posts.OwnerUserId >= posts.Id)
      inner join postLinks
      on (postLinks.CreationDate < posts.CreationDate)
    inner join posts
    on (users.CreationDate = posts.CreationDate)
where posts.Body is not NULL
limit 54;
select  
  badges.TagBased, 
  badges.TagBased, 
  badges.Name, 
  badges.Class, 
  badges.Class, 
  badges.Name, 
  badges.Name, 
  badges.Name, 
  badges.Name, 
  badges.UserId, 
  badges.Date
from 
  badges
where badges.Class is NULL;
select  
  comments.CreationDate, 
  max(
    cast(cast(null as float4) as float4))
from 
  comments
    inner join postLinks
    on (comments.PostId is not NULL)
where postLinks.LinkTypeId is NULL;
select  
  min(
    cast(67 as int4)), 
  comments.CreationDate, 
  postHistory.UserId, 
  badges.UserId
from 
  postHistory
      inner join badges
          inner join comments
            inner join badges
              inner join users
              on (badges.Date = users.CreationDate )
            on (badges.TagBased < badges.TagBased)
          on (badges.Id > badges.UserId)
        inner join comments
          inner join postHistory
          on (comments.CreationDate > comments.CreationDate)
        on (badges.TagBased < badges.TagBased)
      on (postHistory.Comment > users.DisplayName)
    inner join votes
    on (postHistory.UserId is NULL)
where votes.CreationDate is not NULL
limit 63;
select  
  postLinks.PostId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  users.ProfileImageUrl, 
  comments.Id, 
  comments.Id, 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(98 as int4))
from 
  posts
      inner join posts
        inner join postLinks
        on (posts.Title >= posts.Title)
      on (posts.OwnerDisplayName <= posts.Body)
    inner join posts
          inner join postHistory
            inner join users
            on (postHistory.PostHistoryTypeId = users.Id )
          on (posts.OwnerDisplayName = posts.Title)
        inner join postLinks
        on (users.CreationDate <= users.CreationDate)
      inner join postHistory
        inner join comments
        on (postHistory.UserId = comments.Id )
      on (users.DisplayName <= postHistory.ContentLicense)
    on (posts.Id is not NULL)
where postLinks.Id is NULL
limit 8;
select  
  votes.UserId, 
  votes.VoteTypeId
from 
  votes
where votes.Id is NULL;
select  
  postHistory.PostHistoryTypeId, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postHistory.UserDisplayName, 
  postLinks.LinkTypeId, 
  postHistory.Id
from 
  postHistory
    inner join postLinks
    on (postHistory.PostId is not NULL)
where postHistory.PostId is not NULL
limit 130;
select  
  users.AboutMe, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as "time") as "time")), 
  users.DisplayName, 
  users.CreationDate, 
  users.ProfileImageUrl
from 
  users
where users.AboutMe is NULL
limit 80;
select distinct 
  comments.CreationDate, 
  comments.UserId, 
  comments.PostId, 
  min(
    cast(cast(null as timetz) as timetz)), 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.ContentLicense
from 
  comments
where comments.Id is NULL
limit 112;
select  
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.Id = votes.Id
limit 184;
select  
  postHistory.Id, 
  postHistory.ContentLicense, 
  postHistory.Id, 
  postHistory.ContentLicense, 
  posts.Id, 
  postHistory.Text, 
  postHistory.Id
from 
  postHistory
    inner join posts
    on (posts.ContentLicense >= postHistory.RevisionGUID)
where posts.Body is NULL
limit 136;
select  
  badges.Name, 
  min(
    cast(cast(null as tid) as tid))
from 
  badges
      inner join votes
      on (badges.Date > badges.Date)
    inner join postLinks
    on (badges.Name <= badges.Name)
where votes.VoteTypeId is NULL
limit 147;
select  
  posts.Body, 
  badges.Class
from 
  users
        inner join posts
        on (posts.ParentId = posts.OwnerUserId)
      inner join postLinks
      on (posts.Body = users.DisplayName)
    inner join badges
          inner join badges
            inner join postHistory
            on (postHistory.RevisionGUID = postHistory.Text)
          on (badges.TagBased > badges.TagBased)
        inner join comments
        on (comments.Id = badges.Id)
      inner join badges
      on (badges.TagBased > badges.TagBased)
    on (users.DisplayName is NULL)
where users.AccountId >= users.ProfileImageUrl;
select  
  users.AccountId
from 
  postHistory
    inner join postLinks
            inner join postHistory
            on (postHistory.PostHistoryTypeId <= postLinks.LinkTypeId)
          inner join users
            inner join badges
            on (badges.Id >= users.Id)
          on (postHistory.PostId = postHistory.Id)
        inner join postLinks
        on (postHistory.UserId = postLinks.Id )
      inner join badges
        inner join users
        on (users.Location > users.DisplayName)
      on (postLinks.CreationDate < postHistory.CreationDate)
    on (badges.Date is not NULL)
where postHistory.PostId is NULL
limit 10;
select  
  postLinks.CreationDate
from 
  postLinks
    inner join users
    on (postLinks.PostId is not NULL)
where postLinks.CreationDate is NULL
limit 160;
select distinct 
  postHistory.UserId, 
  postHistory.Text, 
  postHistory.CreationDate, 
  postHistory.Id
from 
  postHistory
where postHistory.PostId = postHistory.PostId
limit 126;
select  
  users.AboutMe, 
  users.Location, 
  users.Location
from 
  users
where users.Id = users.Id
limit 97;
select  
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.PostId
from 
  votes
where votes.VoteTypeId is not NULL
limit 75;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.RevisionGUID, 
  postHistory.UserDisplayName, 
  postHistory.CreationDate
from 
  postHistory
where postHistory.ContentLicense is NULL
limit 64;
select  
  badges.Name, 
  count(
    cast(badges.UserId as int8)), 
  badges.Id, 
  badges.UserId, 
  badges.Id, 
  badges.Id, 
  max(
    cast(cast(null as tid) as tid))
from 
  badges
where badges.Class is NULL
limit 102;
select  
  votes.PostId, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId
from 
  votes
    inner join votes
    on (votes.Id is NULL)
where votes.CreationDate is not NULL;
select  
  min(
    cast(cast(null as tid) as tid)), 
  votes.UserId, 
  comments.UserId
from 
  votes
    inner join badges
      inner join votes
        inner join comments
        on (votes.CreationDate < comments.CreationDate)
      on (badges.TagBased <= badges.TagBased)
    on (badges.Class is not NULL)
where votes.CreationDate <= badges.Date
limit 80;
select  
  comments.Text
from 
  users
          inner join users
          on (users.AboutMe > users.AboutMe)
        inner join postHistory
            inner join badges
            on (postHistory.UserId = postHistory.PostHistoryTypeId)
          inner join votes
          on (postHistory.PostId = votes.Id )
        on (users.Id = badges.Id )
      inner join users
      on (badges.Id >= users.Id)
    inner join postLinks
      inner join comments
          inner join comments
          on (comments.UserId = comments.Id )
        inner join postHistory
          inner join users
          on (postHistory.UserDisplayName = users.DisplayName )
        on (users.ProfileImageUrl >= users.AccountId)
      on (comments.UserDisplayName > comments.ContentLicense)
    on (users.WebsiteUrl = comments.ContentLicense )
where users.CreationDate is not NULL
limit 103;
select  
  posts.Title, 
  posts.OwnerUserId, 
  posts.AcceptedAnswerId, 
  posts.Id, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posts.AcceptedAnswerId, 
  posts.OwnerUserId, 
  posts.PostTypeId, 
  min(
    cast(cast(null as float4) as float4)), 
  posts.Body, 
  posts.PostTypeId, 
  posts.OwnerUserId, 
  posts.Title
from 
  posts
where posts.Id = posts.AcceptedAnswerId;
select  
  postHistory.Comment, 
  users.Id, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.PostHistoryTypeId, 
  users.Id, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.Comment, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  users.WebsiteUrl, 
  users.Id, 
  min(
    cast(cast(null as inet) as inet)), 
  postHistory.ContentLicense, 
  users.WebsiteUrl, 
  postHistory.UserId, 
  min(
    cast(postHistory.Id as int8)), 
  users.WebsiteUrl, 
  users.Id, 
  postHistory.PostId, 
  users.WebsiteUrl, 
  postHistory.CreationDate, 
  postHistory.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  users.Location, 
  postHistory.RevisionGUID, 
  users.AboutMe, 
  postHistory.PostId, 
  users.Location, 
  postHistory.UserId, 
  postHistory.RevisionGUID, 
  postHistory.RevisionGUID, 
  postHistory.Text, 
  users.AboutMe, 
  postHistory.CreationDate, 
  users.WebsiteUrl, 
  postHistory.CreationDate
from 
  postHistory
    inner join users
    on (postHistory.PostId = users.Id )
where users.Location is not NULL;
select  
  postHistory.UserId, 
  postHistory.UserDisplayName, 
  postHistory.Comment, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  postHistory.Id, 
  postHistory.RevisionGUID, 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(57 as int4)), 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.Text, 
  postHistory.ContentLicense
from 
  postHistory
where postHistory.ContentLicense is not NULL
limit 56;
select  
  posts.ContentLicense, 
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as float4) as float4)), 
  votes.VoteTypeId
from 
  posts
      inner join votes
      on (votes.CreationDate >= votes.CreationDate)
    inner join postLinks
          inner join postLinks
            inner join badges
            on (badges.Class <= postLinks.Id)
          on (badges.TagBased < badges.TagBased)
        inner join posts
            inner join votes
            on (posts.Id > posts.OwnerUserId)
          inner join votes
          on (posts.ParentId <= posts.Id)
        on (badges.TagBased < badges.TagBased)
      inner join badges
        inner join postLinks
        on (badges.Date < badges.Date)
      on (postLinks.PostId = postLinks.Id )
    on (posts.CreationDate is NULL)
where postLinks.CreationDate is NULL
limit 162;
select  
  badges.Id
from 
  badges
where badges.Date is NULL;
select  
  badges.Name, 
  badges.UserId
from 
  badges
    inner join badges
    on (badges.UserId = badges.UserId)
where badges.Date is not NULL
limit 93;
select  
  badges.Date, 
  min(
    cast(users.ProfileImageUrl as float8)), 
  max(
    cast(cast(null as oid) as oid)), 
  badges.Id, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as inet) as inet)), 
  postHistory.Id, 
  badges.Id, 
  users.AboutMe, 
  postHistory.UserId, 
  users.AboutMe, 
  postHistory.Id, 
  badges.Date, 
  users.DisplayName
from 
  badges
        inner join users
        on (badges.Id = users.Id )
      inner join postHistory
      on (postHistory.Id <= postHistory.PostHistoryTypeId)
    inner join postHistory
      inner join postLinks
      on (postLinks.CreationDate >= postHistory.CreationDate)
    on (users.CreationDate is not NULL)
where postHistory.ContentLicense <= postHistory.RevisionGUID
limit 73;
select  
  votes.Id, 
  postHistory.Id
from 
  postHistory
      inner join badges
      on (postHistory.Text > postHistory.RevisionGUID)
    inner join votes
        inner join comments
            inner join postLinks
            on (comments.Text > comments.ContentLicense)
          inner join votes
            inner join postHistory
            on (postHistory.Comment >= postHistory.ContentLicense)
          on (postLinks.Id = postHistory.Id )
        on (comments.UserDisplayName = postHistory.Text)
      inner join comments
      on (comments.Text > comments.Text)
    on (badges.TagBased is not NULL)
where comments.UserId is not NULL
limit 34;
select  
  posts.Tags, 
  posts.CreationDate, 
  posts.OwnerUserId, 
  min(
    cast(cast(null as tid) as tid)), 
  posts.OwnerUserId, 
  posts.CreationDate, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  posts.Title, 
  posts.ContentLicense
from 
  posts
where posts.CreationDate >= posts.CreationDate
limit 184;
select  
  posts.Id, 
  posts.ContentLicense
from 
  postLinks
      inner join users
          inner join posts
          on (users.AccountId < users.ProfileImageUrl)
        inner join postHistory
        on (posts.CreationDate > posts.CreationDate)
      on (posts.Body < users.DisplayName)
    inner join badges
    on (users.Id is not NULL)
where users.CreationDate is not NULL
limit 112;
select  
  badges.Date, 
  badges.UserId, 
  badges.Class
from 
  badges
where badges.Date is not NULL
limit 74;
select  
  users.Location, 
  users.DisplayName, 
  users.AboutMe, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.CreationDate, 
  users.CreationDate, 
  users.AboutMe, 
  users.WebsiteUrl, 
  sum(
    cast(cast(null as money) as money)), 
  users.DisplayName
from 
  users
where users.ProfileImageUrl = users.AccountId
limit 110;
select  
  comments.UserDisplayName, 
  comments.Text
from 
  comments
where comments.CreationDate <= comments.CreationDate
limit 170;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.TagBased, 
  badges.Date
from 
  badges
where badges.Class is NULL
limit 133;
select  
  users.Id, 
  votes.UserId, 
  max(
    cast(cast(null as int2) as int2)), 
  sum(
    cast(68 as int4)), 
  users.Id
from 
  users
    inner join votes
    on (users.CreationDate = votes.CreationDate )
where users.CreationDate is NULL;
select  
  min(
    cast(postHistory.CreationDate as "timestamp")), 
  postHistory.PostId, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.RevisionGUID, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.PostId is NULL;
select  
  votes.Id, 
  votes.UserId, 
  postHistory.CreationDate
from 
  postHistory
        inner join comments
        on (comments.Text = postHistory.Comment)
      inner join votes
        inner join comments
        on (votes.VoteTypeId >= comments.Id)
      on (comments.ContentLicense <= comments.UserDisplayName)
    inner join badges
    on (votes.Id <= postHistory.PostId)
where votes.CreationDate is not NULL
limit 43;
select  
  votes.VoteTypeId, 
  badges.Date
from 
  badges
          inner join postHistory
            inner join comments
              inner join votes
              on (comments.Text <= comments.Text)
            on (comments.CreationDate > postHistory.CreationDate)
          on (postHistory.UserId <= votes.UserId)
        inner join postLinks
        on (badges.Date < postHistory.CreationDate)
      inner join votes
      on (badges.Name > postHistory.RevisionGUID)
    inner join comments
    on (badges.TagBased = badges.TagBased)
where comments.UserDisplayName is not NULL
limit 89;
select  
  comments.CreationDate, 
  comments.PostId
from 
  comments
where comments.CreationDate is NULL
limit 40;
select  
  users.Location, 
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(users.ProfileImageUrl as float8)), 
  votes.Id, 
  min(
    cast(cast(null as tid) as tid)), 
  votes.CreationDate, 
  posts.OwnerUserId, 
  postLinks.Id
from 
  postLinks
              inner join posts
              on (posts.Title = posts.OwnerDisplayName)
            inner join users
            on (users.WebsiteUrl >= users.DisplayName)
          inner join postLinks
          on (posts.Id <= posts.Id)
        inner join votes
                inner join votes
                on (votes.Id > votes.VoteTypeId)
              inner join postHistory
                inner join comments
                on (postHistory.RevisionGUID = postHistory.Text)
              on (votes.Id = comments.Id )
            inner join postHistory
            on (postHistory.RevisionGUID < postHistory.Comment)
          inner join users
          on (postHistory.UserId > postHistory.PostId)
        on (postLinks.LinkTypeId = postHistory.Id )
      inner join comments
      on (users.CreationDate = comments.CreationDate)
    inner join users
    on (users.Id = users.Id )
where postLinks.LinkTypeId is NULL;
select  
  postHistory.RevisionGUID, 
  postHistory.ContentLicense
from 
  posts
    inner join postHistory
    on (posts.ParentId is not NULL)
where postHistory.Comment is NULL
limit 92;
select  
  postLinks.PostId
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 114;
select  
  votes.VoteTypeId, 
  postLinks.PostId, 
  postHistory.CreationDate, 
  postHistory.ContentLicense, 
  posts.ParentId, 
  posts.OwnerUserId, 
  posts.Body
from 
  users
          inner join postLinks
            inner join users
            on (postLinks.Id > postLinks.LinkTypeId)
          on (users.Id = postLinks.PostId)
        inner join postLinks
        on (users.DisplayName <= users.WebsiteUrl)
      inner join votes
          inner join badges
            inner join postLinks
            on (badges.UserId = postLinks.Id )
          on (postLinks.RelatedPostId < postLinks.RelatedPostId)
        inner join postHistory
        on (postLinks.LinkTypeId = postHistory.PostId)
      on (users.CreationDate = users.CreationDate)
    inner join posts
        inner join badges
            inner join posts
            on (badges.Date <= badges.Date)
          inner join comments
          on (posts.CreationDate = comments.CreationDate )
        on (posts.ParentId < posts.PostTypeId)
      inner join postHistory
      on (comments.UserId = postHistory.Id )
    on (posts.Title >= postHistory.UserDisplayName)
where posts.Body is not NULL
limit 89;
select  
  posts.OwnerDisplayName, 
  badges.UserId, 
  posts.Tags, 
  posts.OwnerUserId, 
  posts.Tags, 
  sum(
    cast(posts.Id as int8))
from 
  posts
    inner join badges
    on (badges.Class is not NULL)
where badges.Class is not NULL
limit 93;
select  
  users.Id, 
  users.Location, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as oid) as oid)), 
  users.AccountId, 
  users.CreationDate, 
  users.Location, 
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  users.Id
from 
  users
where users.AboutMe is not NULL
limit 127;
select  
  badges.UserId, 
  badges.TagBased, 
  postLinks.LinkTypeId, 
  badges.UserId, 
  postLinks.PostId, 
  min(
    cast(cast(null as money) as money)), 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  badges.UserId, 
  postLinks.CreationDate, 
  max(
    cast(postLinks.RelatedPostId as int8)), 
  postLinks.Id
from 
  postLinks
    inner join badges
    on (badges.Class is NULL)
where postLinks.RelatedPostId is NULL
limit 87;
select  
  postLinks.LinkTypeId, 
  users.DisplayName, 
  postLinks.LinkTypeId, 
  comments.ContentLicense, 
  votes.Id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  votes.PostId, 
  comments.Text, 
  votes.PostId, 
  postHistory.Comment, 
  postLinks.PostId, 
  users.CreationDate, 
  postLinks.LinkTypeId, 
  postHistory.PostHistoryTypeId, 
  votes.UserId, 
  users.DisplayName, 
  badges.UserId
from 
  badges
          inner join users
          on (badges.Name > users.DisplayName)
        inner join postLinks
        on (badges.Name >= badges.Name)
      inner join badges
        inner join postHistory
        on (postHistory.UserId > badges.UserId)
      on (postHistory.ContentLicense >= postHistory.ContentLicense)
    inner join votes
      inner join comments
      on (comments.UserDisplayName > comments.UserDisplayName)
    on (votes.CreationDate >= votes.CreationDate)
where votes.CreationDate is not NULL
limit 104;
select  
  posts.OwnerUserId, 
  posts.CreationDate, 
  postLinks.RelatedPostId, 
  posts.AcceptedAnswerId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as tid) as tid))
from 
  posts
    inner join postLinks
    on (posts.CreationDate = postLinks.CreationDate )
where postLinks.RelatedPostId is not NULL
limit 99;
select  
  comments.Text, 
  comments.UserDisplayName, 
  avg(
    cast(56 as int4)), 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(91 as int4)), 
  badges.Date
from 
  badges
    inner join comments
          inner join comments
            inner join votes
            on (votes.CreationDate <= comments.CreationDate)
          on (comments.UserDisplayName <= comments.Text)
        inner join users
              inner join comments
              on (users.WebsiteUrl < users.AboutMe)
            inner join users
            on (users.AccountId < users.AccountId)
          inner join posts
          on (users.AccountId > users.ProfileImageUrl)
        on (users.ProfileImageUrl > users.AccountId)
      inner join comments
      on (comments.CreationDate = comments.CreationDate)
    on (badges.Class = comments.Id )
where votes.PostId is NULL;
select  
  max(
    cast(cast(null as date) as date)), 
  postLinks.PostId, 
  min(
    cast(cast(null as float4) as float4)), 
  votes.PostId
from 
  votes
        inner join badges
        on (votes.VoteTypeId = badges.Id )
      inner join posts
      on (badges.Id = posts.Id )
    inner join postLinks
          inner join comments
          on (comments.CreationDate >= postLinks.CreationDate)
        inner join postLinks
        on (postLinks.RelatedPostId = postLinks.Id )
      inner join users
        inner join comments
        on (comments.Id >= comments.Id)
      on (comments.CreationDate < comments.CreationDate)
    on (votes.Id is not NULL)
where postLinks.CreationDate = badges.Date
limit 92;
select  
  comments.UserDisplayName, 
  min(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as float4) as float4))
from 
  votes
    inner join postLinks
      inner join comments
      on (postLinks.Id = comments.Id )
    on (votes.Id is not NULL)
where postLinks.CreationDate is not NULL
limit 168;
select  
  votes.CreationDate, 
  votes.VoteTypeId
from 
  votes
where votes.VoteTypeId >= votes.UserId
limit 154;
select  
  min(
    cast(cast(null as text) as text)), 
  votes.VoteTypeId, 
  max(
    cast(votes.CreationDate as "timestamp")), 
  postLinks.LinkTypeId, 
  avg(
    cast(cast(null as float4) as float4)), 
  postLinks.PostId, 
  sum(
    cast(cast(null as float8) as float8)), 
  votes.Id, 
  postLinks.PostId, 
  min(
    cast(cast(null as date) as date)), 
  votes.Id, 
  votes.PostId, 
  votes.UserId, 
  postLinks.PostId, 
  max(
    cast(cast(null as int2) as int2)), 
  votes.Id, 
  votes.UserId, 
  postLinks.Id, 
  votes.PostId, 
  votes.Id, 
  postLinks.RelatedPostId
from 
  postLinks
    inner join votes
    on (votes.CreationDate = votes.CreationDate)
where postLinks.PostId is not NULL
limit 95;
select  
  postHistory.ContentLicense, 
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  postHistory
    inner join posts
      inner join postLinks
      on (postLinks.RelatedPostId > postLinks.RelatedPostId)
    on (postHistory.PostId is not NULL)
where postLinks.LinkTypeId is not NULL
limit 108;
select  
  postHistory.CreationDate, 
  postHistory.PostHistoryTypeId, 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.ContentLicense, 
  postHistory.Id, 
  postHistory.UserId, 
  postHistory.UserDisplayName, 
  postHistory.Comment, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserId, 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as date) as date))
from 
  postHistory
where postHistory.ContentLicense is not NULL
limit 93;
select  
  sum(
    cast(cast(null as money) as money)), 
  postLinks.PostId, 
  postLinks.Id
from 
  posts
    inner join postLinks
    on (postLinks.CreationDate is NULL)
where posts.CreationDate is not NULL
limit 90;
select  
  postLinks.LinkTypeId, 
  comments.UserDisplayName, 
  posts.CreationDate, 
  postLinks.PostId, 
  max(
    cast(cast(null as "time") as "time")), 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId
from 
  posts
    inner join comments
          inner join badges
              inner join postHistory
              on (postHistory.PostHistoryTypeId >= postHistory.PostHistoryTypeId)
            inner join badges
              inner join postLinks
              on (badges.Name > badges.Name)
            on (badges.Name <= badges.Name)
          on (badges.Date > comments.CreationDate)
        inner join comments
        on (postHistory.Text > comments.Text)
      inner join posts
          inner join postLinks
          on (postLinks.RelatedPostId = posts.PostTypeId)
        inner join postLinks
        on (postLinks.PostId >= posts.Id)
      on (badges.TagBased > badges.TagBased)
    on (badges.Class <= posts.ParentId)
where posts.AcceptedAnswerId is NULL
limit 116;
select  
  postHistory.UserId
from 
  votes
        inner join postLinks
            inner join postHistory
            on (postHistory.Comment > postHistory.ContentLicense)
          inner join comments
              inner join votes
              on (votes.CreationDate > comments.CreationDate)
            inner join comments
            on (comments.CreationDate = votes.CreationDate)
          on (votes.CreationDate >= postLinks.CreationDate)
        on (postHistory.Comment < comments.Text)
      inner join badges
          inner join postHistory
          on (postHistory.CreationDate <= badges.Date)
        inner join comments
          inner join comments
          on (comments.UserId = comments.Id )
        on (badges.Name < postHistory.UserDisplayName)
      on (postHistory.UserId < comments.Id)
    inner join votes
        inner join postHistory
        on (postHistory.UserDisplayName = postHistory.ContentLicense)
      inner join badges
      on (votes.PostId >= votes.UserId)
    on (comments.CreationDate >= comments.CreationDate)
where badges.Name is not NULL
limit 179;
select  
  comments.PostId, 
  comments.UserId, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as "interval") as "interval")), 
  comments.PostId, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.UserDisplayName
from 
  comments
where comments.UserDisplayName is NULL
limit 119;
select  
  postHistory.RevisionGUID, 
  postLinks.PostId, 
  badges.TagBased, 
  postHistory.UserDisplayName, 
  postHistory.PostId, 
  badges.UserId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  badges.UserId
from 
  badges
      inner join postLinks
        inner join postHistory
        on (postLinks.RelatedPostId >= postLinks.RelatedPostId)
      on (badges.TagBased <= badges.TagBased)
    inner join postLinks
    on (badges.Class is not NULL)
where badges.Date > badges.Date
limit 79;
select  
  badges.Date, 
  sum(
    cast(cast(null as int2) as int2)), 
  postLinks.LinkTypeId, 
  postLinks.PostId
from 
  badges
    inner join postLinks
    on (badges.TagBased < badges.TagBased)
where postLinks.CreationDate <= postLinks.CreationDate;
select  
  postLinks.PostId, 
  users.DisplayName, 
  badges.UserId
from 
  users
        inner join users
        on (users.Location = users.DisplayName )
      inner join posts
      on (users.Id >= posts.AcceptedAnswerId)
    inner join badges
      inner join postLinks
        inner join votes
        on (votes.CreationDate < postLinks.CreationDate)
      on (badges.Date = postLinks.CreationDate )
    on (posts.AcceptedAnswerId >= posts.Id)
where users.Location >= users.WebsiteUrl;
select  
  postLinks.PostId, 
  badges.TagBased
from 
  badges
    inner join postLinks
    on (postLinks.LinkTypeId is NULL)
where postLinks.PostId is not NULL;
select  
  postLinks.LinkTypeId, 
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate > postLinks.CreationDate;
select  
  votes.CreationDate, 
  votes.PostId, 
  votes.VoteTypeId, 
  min(
    cast(votes.VoteTypeId as int8))
from 
  votes
where votes.PostId is NULL;
select  
  postLinks.Id
from 
  postLinks
    inner join posts
    on (posts.Tags is NULL)
where posts.OwnerUserId is not NULL
limit 86;
select  
  posts.PostTypeId, 
  posts.PostTypeId, 
  comments.ContentLicense, 
  posts.Id, 
  comments.PostId, 
  posts.PostTypeId
from 
  votes
      inner join posts
      on (votes.CreationDate <= posts.CreationDate)
    inner join posts
        inner join comments
        on (posts.CreationDate < comments.CreationDate)
      inner join postLinks
      on (postLinks.LinkTypeId > postLinks.Id)
    on (votes.VoteTypeId = posts.Id )
where posts.Body is not NULL;
select  
  min(
    cast(cast(null as int2) as int2)), 
  badges.TagBased, 
  badges.TagBased, 
  users.Id, 
  users.Id, 
  posts.OwnerUserId, 
  posts.AcceptedAnswerId
from 
  badges
    inner join users
      inner join posts
      on (users.DisplayName = posts.OwnerDisplayName )
    on (badges.Date is NULL)
where users.ProfileImageUrl is not NULL
limit 102;
select  
  users.Location
from 
  users
where users.CreationDate is NULL;
select  
  comments.ContentLicense
from 
  postHistory
          inner join postLinks
          on (postHistory.Text = postHistory.UserDisplayName)
        inner join comments
            inner join comments
            on (comments.UserId > comments.Id)
          inner join badges
            inner join posts
                inner join badges
                on (posts.PostTypeId > posts.PostTypeId)
              inner join badges
              on (posts.ParentId < badges.Class)
            on (badges.TagBased > badges.TagBased)
          on (posts.ParentId <= comments.Id)
        on (badges.Name > comments.UserDisplayName)
      inner join comments
          inner join votes
          on (comments.UserId >= votes.UserId)
        inner join postLinks
        on (comments.PostId = postLinks.Id )
      on (badges.TagBased = badges.TagBased)
    inner join badges
    on (postLinks.Id = badges.Id )
where postLinks.RelatedPostId is not NULL
limit 63;
select  
  postLinks.LinkTypeId, 
  postLinks.Id, 
  users.Location
from 
  postLinks
    inner join users
    on (postLinks.LinkTypeId is NULL)
where users.CreationDate is not NULL
limit 57;
select  
  posts.OwnerDisplayName, 
  posts.Body, 
  votes.CreationDate, 
  votes.CreationDate
from 
  votes
    inner join badges
      inner join votes
          inner join posts
            inner join users
              inner join postHistory
              on (users.CreationDate <= postHistory.CreationDate)
            on (posts.Tags = users.DisplayName )
          on (votes.UserId = users.Id )
        inner join users
          inner join posts
          on (users.CreationDate = posts.CreationDate)
        on (votes.CreationDate >= posts.CreationDate)
      on (users.ProfileImageUrl = users.AccountId)
    on (posts.OwnerUserId <= votes.UserId)
where badges.TagBased > badges.TagBased
limit 146;
select  
  comments.PostId, 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.UserId, 
  comments.Text, 
  comments.PostId, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  comments.ContentLicense, 
  comments.Text
from 
  comments
where comments.UserId is not NULL
limit 43;
select  
  min(
    cast(cast(null as inet) as inet)), 
  users.AboutMe
from 
  users
where users.CreationDate is not NULL;
select  
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 133;
select  
  postHistory.ContentLicense, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.UserDisplayName is not NULL
limit 126;
select  
  users.AccountId
from 
  users
where users.WebsiteUrl is not NULL
limit 141;
select  
  votes.Id, 
  votes.UserId, 
  votes.PostId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.Id, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.UserId, 
  votes.Id, 
  votes.UserId, 
  votes.CreationDate, 
  votes.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  votes.UserId
from 
  votes
where votes.PostId is NULL
limit 37;
select  
  max(
    cast(cast(null as float8) as float8)), 
  sum(
    cast(49 as int4)), 
  posts.ContentLicense, 
  max(
    cast(postLinks.CreationDate as "timestamp")), 
  badges.Id
from 
  posts
        inner join badges
        on (badges.TagBased = badges.TagBased)
      inner join postLinks
          inner join comments
          on (comments.CreationDate > postLinks.CreationDate)
        inner join badges
        on (badges.Date = postLinks.CreationDate)
      on (badges.Name = posts.ContentLicense)
    inner join posts
    on (badges.Name = posts.OwnerDisplayName )
where postLinks.CreationDate is NULL
limit 100;
select  
  posts.AcceptedAnswerId, 
  posts.AcceptedAnswerId, 
  posts.Tags
from 
  posts
where posts.CreationDate > posts.CreationDate
limit 163;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  postLinks.LinkTypeId, 
  votes.UserId, 
  votes.PostId, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  votes.UserId
from 
  votes
    inner join postLinks
    on (votes.VoteTypeId is not NULL)
where votes.PostId is not NULL;
select  
  badges.UserId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.UserId, 
  posts.OwnerDisplayName, 
  min(
    cast(37 as int4)), 
  posts.Body, 
  users.AboutMe, 
  posts.PostTypeId, 
  posts.Tags, 
  badges.Class, 
  posts.PostTypeId, 
  postHistory.CreationDate, 
  postHistory.UserDisplayName, 
  posts.Body, 
  postHistory.PostId, 
  postHistory.UserId, 
  users.Location, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.CreationDate, 
  postHistory.PostId, 
  posts.CreationDate, 
  postHistory.Comment, 
  posts.AcceptedAnswerId, 
  posts.OwnerUserId, 
  postHistory.UserDisplayName, 
  badges.Class, 
  min(
    cast(cast(null as date) as date)), 
  posts.AcceptedAnswerId, 
  badges.Class, 
  postHistory.Id, 
  posts.Tags, 
  posts.OwnerUserId, 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.AccountId, 
  badges.Name
from 
  users
        inner join badges
        on (users.ProfileImageUrl >= users.ProfileImageUrl)
      inner join badges
        inner join posts
        on (badges.Class = posts.Id )
      on (users.CreationDate = badges.Date)
    inner join posts
      inner join postHistory
      on (posts.Body = postHistory.Comment)
    on (badges.UserId = postHistory.Id )
where users.WebsiteUrl is NULL
limit 71;
select  
  badges.Id, 
  badges.Class, 
  badges.Class, 
  badges.Date, 
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.Date is NULL
limit 159;
select distinct 
  avg(
    cast(votes.PostId as int8)), 
  postHistory.PostId, 
  comments.Text, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.UserId, 
  comments.CreationDate, 
  postHistory.PostHistoryTypeId, 
  comments.UserDisplayName, 
  votes.PostId
from 
  votes
      inner join comments
      on (comments.ContentLicense > comments.Text)
    inner join postHistory
    on (comments.UserId is NULL)
where votes.PostId is NULL
limit 77;
select  
  comments.PostId, 
  votes.UserId
from 
  users
    inner join posts
        inner join comments
        on (comments.ContentLicense < posts.Tags)
      inner join votes
      on (comments.UserDisplayName < posts.Body)
    on (votes.UserId is NULL)
where comments.UserDisplayName is NULL;
select  
  postLinks.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posts.OwnerDisplayName, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  posts
    inner join postLinks
    on (posts.PostTypeId = postLinks.Id )
where posts.ContentLicense < posts.Title;
select  
  posts.Id
from 
  badges
          inner join posts
          on (posts.ParentId = posts.AcceptedAnswerId)
        inner join posts
        on (badges.TagBased < badges.TagBased)
      inner join postHistory
      on (posts.CreationDate = postHistory.CreationDate)
    inner join posts
    on (postHistory.UserId is not NULL)
where posts.Title < postHistory.ContentLicense;
select  
  comments.Text, 
  comments.ContentLicense, 
  comments.Text
from 
  comments
where comments.UserDisplayName >= comments.Text
limit 82;
select  
  postHistory.UserDisplayName, 
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  postHistory.PostId
from 
  postHistory
where postHistory.RevisionGUID > postHistory.Comment;
select  
  postHistory.Comment, 
  max(
    cast(cast(null as tid) as tid)), 
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postHistory.UserId, 
  postHistory.UserId, 
  postHistory.Id, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postHistory.Text
from 
  postHistory
    inner join postHistory
    on (postHistory.PostHistoryTypeId is NULL)
where postHistory.CreationDate >= postHistory.CreationDate
limit 95;
select  
  posts.AcceptedAnswerId, 
  posts.OwnerDisplayName, 
  max(
    cast(cast(null as oid) as oid)), 
  posts.PostTypeId, 
  posts.Id
from 
  posts
where posts.AcceptedAnswerId is NULL;
select  
  badges.Date, 
  badges.Name, 
  badges.Id, 
  sum(
    cast(cast(null as money) as money))
from 
  badges
where badges.UserId is NULL
limit 134;
select  
  avg(
    cast(users.Id as int8)), 
  users.Id, 
  users.AccountId, 
  users.AboutMe, 
  users.AboutMe, 
  users.AboutMe, 
  users.CreationDate, 
  users.Location, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  users
    inner join users
    on (users.CreationDate is not NULL)
where users.CreationDate < users.CreationDate
limit 129;
select  
  posts.OwnerDisplayName, 
  postLinks.PostId, 
  posts.CreationDate, 
  comments.UserId, 
  comments.ContentLicense, 
  users.AboutMe, 
  postLinks.LinkTypeId, 
  postHistory.PostHistoryTypeId, 
  users.Id
from 
  posts
        inner join postLinks
            inner join users
            on (postLinks.LinkTypeId <= postLinks.Id)
          inner join votes
          on (users.AboutMe > users.DisplayName)
        on (users.AccountId <= users.AccountId)
      inner join comments
          inner join comments
          on (comments.Text = comments.ContentLicense )
        inner join users
        on (comments.ContentLicense = users.DisplayName )
      on (users.ProfileImageUrl < users.AccountId)
    inner join users
          inner join comments
            inner join postHistory
            on (comments.Id = postHistory.Id )
          on (users.AccountId < users.AccountId)
        inner join comments
        on (postHistory.Id = comments.Id )
      inner join comments
        inner join postLinks
        on (comments.CreationDate <= postLinks.CreationDate)
      on (comments.CreationDate <= comments.CreationDate)
    on (comments.ContentLicense = postHistory.UserDisplayName )
where users.AccountId is NULL
limit 29;
select  
  min(
    cast(postHistory.CreationDate as "timestamp")), 
  badges.Name, 
  postHistory.RevisionGUID
from 
  posts
      inner join users
          inner join postHistory
          on (users.AccountId > users.AccountId)
        inner join users
              inner join badges
              on (users.DisplayName = badges.Name )
            inner join posts
            on (badges.Date < users.CreationDate)
          inner join postHistory
          on (postHistory.CreationDate = badges.Date)
        on (badges.TagBased = badges.TagBased)
      on (users.AccountId >= users.AccountId)
    inner join users
      inner join badges
          inner join comments
          on (badges.Date <= badges.Date)
        inner join postLinks
        on (badges.Id = postLinks.Id )
      on (badges.TagBased > badges.TagBased)
    on (users.WebsiteUrl = badges.Name )
where users.AccountId <= users.AccountId
limit 151;
select  
  postHistory.Comment, 
  comments.Text, 
  comments.CreationDate, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.ContentLicense, 
  comments.ContentLicense
from 
  postHistory
    inner join comments
    on (comments.CreationDate is not NULL)
where postHistory.ContentLicense is not NULL
limit 163;
select  
  posts.PostTypeId, 
  posts.AcceptedAnswerId, 
  posts.Body, 
  posts.OwnerUserId, 
  min(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as money) as money))
from 
  posts
where posts.CreationDate = posts.CreationDate
limit 57;
select  
  comments.PostId, 
  count(
    cast(comments.PostId as int8)), 
  max(
    cast(cast(null as "time") as "time")), 
  comments.Text
from 
  comments
where comments.ContentLicense is not NULL
limit 57;
select  
  min(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 62;
select  
  comments.CreationDate, 
  comments.PostId, 
  comments.UserId, 
  comments.Id, 
  comments.Text, 
  min(
    cast(cast(null as inet) as inet)), 
  comments.PostId
from 
  comments
where comments.UserId = comments.UserId
limit 77;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as text) as text))
from 
  postLinks
where postLinks.Id is not NULL
limit 48;
select  
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 76;
select  
  comments.CreationDate, 
  comments.ContentLicense, 
  comments.UserId
from 
  comments
where comments.CreationDate is NULL;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.UserId, 
  votes.CreationDate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.UserId, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.PostId, 
  votes.UserId
from 
  votes
where votes.Id is NULL
limit 101;
select  
  comments.UserId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.CreationDate, 
  comments.UserId
from 
  comments
    inner join posts
    on (posts.AcceptedAnswerId is NULL)
where comments.Text is NULL
limit 50;
select  
  votes.UserId, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  sum(
    cast(cast(null as int2) as int2)), 
  comments.Id, 
  votes.CreationDate, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.Id, 
  votes.Id, 
  max(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.CreationDate, 
  votes.PostId, 
  votes.Id, 
  comments.Id, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.UserId, 
  votes.VoteTypeId
from 
  comments
    inner join votes
    on (comments.UserId is not NULL)
where comments.ContentLicense is NULL
limit 73;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.Id, 
  badges.TagBased, 
  badges.Id, 
  badges.TagBased, 
  badges.Date
from 
  badges
where badges.TagBased = badges.TagBased
limit 129;
select  
  votes.UserId, 
  postLinks.Id, 
  votes.CreationDate, 
  postLinks.CreationDate, 
  votes.CreationDate, 
  votes.PostId
from 
  postLinks
    inner join votes
    on (postLinks.Id = votes.Id )
where votes.UserId is NULL;
select  
  posts.AcceptedAnswerId, 
  badges.Class, 
  posts.CreationDate, 
  users.AboutMe, 
  badges.Date, 
  badges.UserId, 
  users.AboutMe, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  sum(
    cast(posts.PostTypeId as int8)), 
  posts.Body
from 
  posts
    inner join badges
      inner join users
      on (users.AccountId < users.AccountId)
    on (users.AboutMe is NULL)
where users.ProfileImageUrl <= users.AccountId;
select  
  votes.VoteTypeId, 
  votes.CreationDate
from 
  votes
where votes.Id = votes.Id
limit 53;
select  
  votes.CreationDate, 
  users.Id, 
  max(
    cast(cast(null as date) as date)), 
  sum(
    cast(cast(null as money) as money)), 
  postLinks.CreationDate, 
  badges.Date, 
  votes.PostId, 
  votes.PostId
from 
  badges
    inner join badges
        inner join postLinks
        on (badges.TagBased < badges.TagBased)
      inner join users
            inner join users
            on (users.AccountId = users.AccountId )
          inner join votes
          on (users.CreationDate < votes.CreationDate)
        inner join posts
        on (votes.VoteTypeId >= posts.Id)
      on (users.AccountId <= users.ProfileImageUrl)
    on (users.WebsiteUrl is NULL)
where badges.TagBased is not NULL
limit 91;
select  
  posts.CreationDate, 
  posts.PostTypeId, 
  posts.Body, 
  min(
    cast(posts.CreationDate as "timestamp")), 
  posts.OwnerUserId
from 
  posts
where posts.CreationDate >= posts.CreationDate
limit 71;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  votes.Id, 
  votes.Id, 
  max(
    cast(59 as int4)), 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.Id, 
  votes.UserId, 
  max(
    cast(votes.CreationDate as "timestamp")), 
  votes.Id, 
  votes.UserId, 
  min(
    cast(5 as int4)), 
  votes.Id
from 
  votes
where votes.CreationDate is not NULL;
select  
  posts.AcceptedAnswerId
from 
  users
      inner join posts
      on (users.AccountId < users.ProfileImageUrl)
    inner join posts
    on (posts.CreationDate = posts.CreationDate )
where posts.CreationDate > posts.CreationDate
limit 98;
select  
  posts.Tags, 
  posts.CreationDate, 
  posts.ParentId
from 
  posts
where posts.Body is not NULL;
select  
  min(
    cast(cast(null as float4) as float4)), 
  comments.CreationDate, 
  sum(
    cast(58 as int4)), 
  comments.ContentLicense, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  postHistory
        inner join comments
          inner join comments
          on (comments.UserDisplayName = comments.ContentLicense )
        on (postHistory.Id < comments.PostId)
      inner join comments
        inner join posts
            inner join postLinks
            on (posts.Title > posts.Title)
          inner join postHistory
          on (postHistory.PostId >= posts.OwnerUserId)
        on (comments.PostId = posts.Id )
      on (comments.ContentLicense < comments.Text)
    inner join postLinks
    on (postLinks.CreationDate is not NULL)
where postLinks.PostId is NULL
limit 110;
select  
  users.Id, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  max(
    cast(cast(null as int2) as int2)), 
  users.Location, 
  users.AccountId, 
  postLinks.RelatedPostId, 
  users.AboutMe, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.AboutMe
from 
  postLinks
    inner join users
    on (postLinks.PostId is NULL)
where users.AboutMe is NULL
limit 104;
select  
  badges.TagBased, 
  badges.TagBased, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.Name, 
  badges.UserId, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Date, 
  badges.Name, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  max(
    cast(84 as int4)), 
  badges.UserId, 
  badges.Class, 
  badges.Name, 
  badges.Id, 
  badges.Class
from 
  badges
where badges.UserId >= badges.UserId
limit 34;
select  
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as date) as date)), 
  postHistory.PostId
from 
  postHistory
where postHistory.Text is not NULL
limit 125;
select  
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.Id is not NULL
limit 120;
select  
  postHistory.Comment, 
  postHistory.UserId, 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as tid) as tid)), 
  postHistory.Comment, 
  postHistory.PostId, 
  min(
    cast(77 as int4)), 
  postHistory.Id, 
  max(
    cast(cast(null as money) as money)), 
  postHistory.Text, 
  postHistory.Text, 
  sum(
    cast(cast(null as money) as money)), 
  postHistory.ContentLicense, 
  postHistory.CreationDate, 
  postHistory.Text
from 
  postHistory
where postHistory.Text <= postHistory.RevisionGUID
limit 80;
select  
  min(
    cast(cast(null as tid) as tid)), 
  votes.UserId
from 
  votes
where votes.Id is not NULL
limit 99;
select  
  postLinks.Id
from 
  comments
      inner join postLinks
      on (comments.Text <= comments.UserDisplayName)
    inner join postHistory
        inner join comments
        on (postHistory.PostId < comments.Id)
      inner join postHistory
      on (postHistory.Id = postHistory.Id )
    on (postLinks.LinkTypeId = postHistory.Id )
where postHistory.ContentLicense is not NULL
limit 99;
select  
  users.WebsiteUrl, 
  users.Id, 
  users.DisplayName, 
  users.WebsiteUrl, 
  avg(
    cast(users.AccountId as float8)), 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.CreationDate
from 
  users
where users.DisplayName is NULL
limit 122;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  votes.UserId, 
  votes.UserId, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as date) as date)), 
  votes.VoteTypeId
from 
  postLinks
    inner join votes
    on (postLinks.Id = votes.Id )
where postLinks.PostId is not NULL;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  comments.CreationDate, 
  comments.ContentLicense, 
  max(
    cast(users.ProfileImageUrl as float8)), 
  comments.UserId, 
  users.AccountId
from 
  badges
          inner join postLinks
            inner join postHistory
            on (postHistory.CreationDate <= postLinks.CreationDate)
          on (badges.Date >= postHistory.CreationDate)
        inner join comments
        on (badges.Date > badges.Date)
      inner join users
        inner join comments
        on (users.Id = comments.PostId)
      on (badges.TagBased <= badges.TagBased)
    inner join users
      inner join comments
        inner join postHistory
          inner join users
          on (postHistory.RevisionGUID = users.DisplayName )
        on (postHistory.UserId <= users.Id)
      on (users.CreationDate = users.CreationDate)
    on (postLinks.CreationDate is NULL)
where postLinks.LinkTypeId is NULL
limit 82;
select  
  users.AboutMe
from 
  users
where users.Id = users.Id;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.Id
from 
  postLinks
    inner join postLinks
    on (postLinks.CreationDate is not NULL)
where postLinks.CreationDate > postLinks.CreationDate
limit 114;
select  
  comments.PostId, 
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.PostId, 
  comments.Id, 
  comments.Id, 
  comments.UserDisplayName, 
  max(
    cast(comments.CreationDate as "timestamp")), 
  sum(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.CreationDate, 
  comments.ContentLicense, 
  comments.ContentLicense
from 
  comments
where comments.CreationDate <= comments.CreationDate;
select  
  badges.Name, 
  postLinks.Id, 
  posts.Title, 
  postLinks.CreationDate, 
  posts.PostTypeId, 
  postHistory.UserId, 
  postLinks.RelatedPostId, 
  votes.PostId, 
  votes.UserId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postHistory.Text, 
  posts.AcceptedAnswerId, 
  postHistory.Id, 
  postHistory.PostId, 
  postHistory.CreationDate, 
  votes.PostId, 
  votes.CreationDate, 
  votes.Id, 
  posts.OwnerUserId
from 
  postLinks
    inner join postHistory
        inner join votes
            inner join posts
            on (votes.CreationDate <= votes.CreationDate)
          inner join badges
          on (badges.TagBased = badges.TagBased)
        on (postHistory.PostId = badges.Id )
      inner join votes
        inner join posts
        on (votes.CreationDate < posts.CreationDate)
      on (posts.AcceptedAnswerId >= posts.PostTypeId)
    on (postHistory.UserDisplayName >= posts.Body)
where votes.CreationDate is not NULL;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  comments.CreationDate, 
  badges.Name
from 
  badges
      inner join comments
      on (comments.Id >= comments.Id)
    inner join badges
      inner join posts
      on (posts.CreationDate > posts.CreationDate)
    on (badges.Id is not NULL)
where badges.TagBased <= badges.TagBased
limit 78;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  posts.Title, 
  posts.OwnerDisplayName
from 
  posts
where posts.PostTypeId is not NULL
limit 134;
select  
  comments.CreationDate, 
  comments.CreationDate, 
  comments.UserDisplayName
from 
  comments
where comments.Id > comments.UserId
limit 91;
select  
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  votes
where votes.PostId = votes.VoteTypeId;
select  
  comments.UserId, 
  max(
    cast(cast(null as float4) as float4)), 
  users.ProfileImageUrl, 
  users.Location, 
  comments.UserId, 
  posts.CreationDate, 
  posts.OwnerDisplayName, 
  posts.Body, 
  users.DisplayName, 
  users.WebsiteUrl, 
  users.DisplayName, 
  posts.PostTypeId, 
  comments.UserDisplayName, 
  users.Location
from 
  postLinks
      inner join users
      on (postLinks.LinkTypeId = users.Id )
    inner join comments
      inner join users
        inner join posts
        on (users.CreationDate = posts.CreationDate )
      on (comments.CreationDate < posts.CreationDate)
    on (users.AboutMe is NULL)
where users.AccountId = users.AccountId
limit 135;
select  
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  postHistory.Comment, 
  users.WebsiteUrl, 
  users.Location, 
  badges.Name, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  users.DisplayName, 
  postHistory.RevisionGUID, 
  votes.CreationDate, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.LinkTypeId, 
  comments.ContentLicense, 
  badges.TagBased, 
  posts.Id, 
  users.Id, 
  users.AboutMe, 
  postLinks.PostId
from 
  users
      inner join users
              inner join badges
              on (badges.TagBased < badges.TagBased)
            inner join users
            on (users.CreationDate <= users.CreationDate)
          inner join postLinks
          on (users.AccountId > users.AccountId)
        inner join postLinks
          inner join postLinks
            inner join votes
            on (postLinks.CreationDate >= votes.CreationDate)
          on (postLinks.PostId > votes.VoteTypeId)
        on (postLinks.RelatedPostId > postLinks.LinkTypeId)
      on (postLinks.CreationDate > users.CreationDate)
    inner join users
          inner join comments
          on (users.ProfileImageUrl < users.AccountId)
        inner join postLinks
        on (comments.PostId <= postLinks.LinkTypeId)
      inner join postLinks
            inner join posts
            on (posts.CreationDate > postLinks.CreationDate)
          inner join postHistory
          on (postLinks.PostId <= posts.ParentId)
        inner join comments
          inner join comments
            inner join users
            on (users.CreationDate >= comments.CreationDate)
          on (comments.UserId > comments.UserId)
        on (posts.CreationDate <= posts.CreationDate)
      on (postLinks.CreationDate > users.CreationDate)
    on (postLinks.LinkTypeId is NULL)
where users.DisplayName is not NULL;
select  
  postHistory.UserId, 
  postHistory.CreationDate, 
  posts.Tags, 
  postHistory.UserId, 
  comments.ContentLicense, 
  users.DisplayName, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.PostId, 
  postHistory.PostId, 
  posts.OwnerUserId, 
  comments.Text, 
  min(
    cast(cast(null as int2) as int2)), 
  postHistory.ContentLicense, 
  postHistory.UserId, 
  postHistory.CreationDate, 
  votes.Id, 
  max(
    cast(cast(null as "time") as "time")), 
  postHistory.PostHistoryTypeId, 
  comments.UserDisplayName, 
  postHistory.Text
from 
  comments
    inner join votes
        inner join comments
        on (votes.CreationDate = comments.CreationDate )
      inner join votes
          inner join posts
          on (votes.PostId > posts.PostTypeId)
        inner join users
              inner join postHistory
              on (users.CreationDate < users.CreationDate)
            inner join postHistory
              inner join posts
              on (posts.AcceptedAnswerId < posts.AcceptedAnswerId)
            on (users.WebsiteUrl = posts.OwnerDisplayName )
          inner join postHistory
          on (postHistory.UserDisplayName > postHistory.Comment)
        on (postHistory.Text < postHistory.Text)
      on (votes.PostId = postHistory.Id )
    on (postHistory.PostHistoryTypeId is not NULL)
where posts.OwnerUserId is not NULL
limit 112;
select  
  badges.UserId, 
  postLinks.CreationDate, 
  postLinks.CreationDate
from 
  users
    inner join badges
      inner join postLinks
        inner join posts
        on (postLinks.CreationDate < posts.CreationDate)
      on (posts.CreationDate <= posts.CreationDate)
    on (badges.Id < users.Id)
where users.ProfileImageUrl <= users.AccountId;
select  
  min(
    cast(cast(null as tid) as tid)), 
  max(
    cast(votes.CreationDate as "timestamp"))
from 
  users
    inner join postHistory
        inner join votes
          inner join postLinks
          on (votes.PostId > postLinks.PostId)
        on (votes.CreationDate <= postLinks.CreationDate)
      inner join posts
        inner join badges
          inner join badges
          on (badges.Id = badges.Id)
        on (badges.Date >= badges.Date)
      on (postLinks.LinkTypeId = badges.Id )
    on (users.AboutMe is not NULL)
where badges.Id is NULL;
select  
  postHistory.Comment, 
  users.CreationDate
from 
  postHistory
        inner join users
        on (users.Id <= postHistory.PostId)
      inner join postHistory
        inner join users
        on (users.AccountId > users.ProfileImageUrl)
      on (users.AboutMe <= users.AboutMe)
    inner join badges
    on (users.DisplayName is NULL)
where users.AboutMe is not NULL
limit 25;
select  
  postHistory.CreationDate, 
  badges.Class, 
  badges.TagBased, 
  badges.Date, 
  badges.Class, 
  postHistory.Text, 
  max(
    cast(cast(null as float4) as float4))
from 
  postHistory
    inner join badges
    on (postHistory.UserId is not NULL)
where badges.Name is NULL
limit 87;
select  
  comments.ContentLicense, 
  comments.Id, 
  comments.Id, 
  comments.UserId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  comments.Id
from 
  comments
where comments.Text is not NULL
limit 136;
select  
  postLinks.Id, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.Date, 
  votes.VoteTypeId
from 
  postHistory
        inner join votes
        on (postHistory.UserId = votes.Id )
      inner join votes
        inner join badges
        on (badges.Name = badges.Name)
      on (votes.UserId = badges.Id )
    inner join postLinks
      inner join badges
      on (badges.Name = badges.Name)
    on (badges.Date is not NULL)
where votes.VoteTypeId is not NULL
limit 70;
select  
  comments.Text, 
  comments.Id, 
  comments.UserId, 
  comments.UserId
from 
  comments
where comments.ContentLicense is NULL
limit 150;
select  
  users.WebsiteUrl
from 
  users
where users.Id is not NULL
limit 45;
select  
  badges.TagBased, 
  badges.Date
from 
  badges
    inner join postLinks
    on (postLinks.RelatedPostId is NULL)
where badges.Id is NULL;
select  
  users.ProfileImageUrl, 
  votes.UserId, 
  votes.VoteTypeId, 
  users.CreationDate, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.CreationDate, 
  users.AccountId, 
  users.WebsiteUrl, 
  users.DisplayName, 
  votes.VoteTypeId, 
  comments.UserDisplayName, 
  avg(
    cast(68 as int4)), 
  comments.PostId, 
  users.ProfileImageUrl
from 
  users
      inner join users
        inner join votes
        on (users.Id = votes.Id )
      on (users.AccountId <= users.ProfileImageUrl)
    inner join comments
    on (users.WebsiteUrl = comments.ContentLicense )
where users.WebsiteUrl is not NULL;
select  
  comments.ContentLicense
from 
  badges
    inner join comments
      inner join postLinks
      on (comments.CreationDate <= comments.CreationDate)
    on (comments.PostId > postLinks.LinkTypeId)
where comments.Id < badges.UserId
limit 112;
select  
  max(
    cast(cast(null as oid) as oid)), 
  postHistory.Id, 
  comments.Text, 
  max(
    cast(cast(null as float4) as float4)), 
  posts.Body, 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.ProfileImageUrl
from 
  posts
      inner join votes
          inner join posts
            inner join badges
                inner join postHistory
                on (badges.Id = postHistory.Id )
              inner join users
              on (postHistory.Text > users.AboutMe)
            on (posts.Title = badges.Name )
          on (badges.TagBased >= badges.TagBased)
        inner join postLinks
        on (postLinks.LinkTypeId > postHistory.UserId)
      on (posts.CreationDate = badges.Date)
    inner join postLinks
      inner join comments
        inner join posts
          inner join badges
            inner join votes
            on (badges.Id = votes.Id )
          on (posts.OwnerUserId = votes.Id )
        on (comments.PostId = badges.Id )
      on (badges.TagBased = badges.TagBased)
    on (posts.ParentId is not NULL)
where posts.ContentLicense <= posts.Title
limit 93;
select  
  votes.VoteTypeId, 
  votes.PostId
from 
  votes
where votes.Id < votes.PostId;
select  
  min(
    cast(cast(null as money) as money)), 
  posts.ContentLicense, 
  posts.PostTypeId, 
  posts.OwnerUserId, 
  posts.OwnerUserId, 
  posts.OwnerUserId, 
  posts.Body, 
  posts.Tags, 
  max(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as date) as date)), 
  posts.ParentId, 
  posts.CreationDate, 
  posts.ContentLicense
from 
  posts
where posts.PostTypeId is NULL
limit 71;
select  
  sum(
    cast(28 as int4)), 
  postLinks.Id, 
  comments.UserDisplayName
from 
  badges
    inner join postLinks
      inner join postLinks
        inner join comments
        on (postLinks.PostId >= comments.UserId)
      on (postLinks.RelatedPostId = postLinks.Id )
    on (badges.Date >= postLinks.CreationDate)
where badges.TagBased < badges.TagBased
limit 98;
select  
  postLinks.Id, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as money) as money)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 111;
select  
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.Id is not NULL
limit 68;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.ContentLicense, 
  sum(
    cast(cast(null as float4) as float4))
from 
  postHistory
        inner join postHistory
        on (postHistory.PostId >= postHistory.UserId)
      inner join users
          inner join users
          on (users.ProfileImageUrl = users.AccountId)
        inner join postLinks
            inner join postHistory
              inner join votes
              on (postHistory.PostHistoryTypeId = votes.Id )
            on (postLinks.LinkTypeId = postHistory.Id )
          inner join votes
          on (postHistory.ContentLicense <= postHistory.ContentLicense)
        on (votes.CreationDate <= postHistory.CreationDate)
      on (votes.Id >= postLinks.LinkTypeId)
    inner join postHistory
      inner join comments
      on (postHistory.UserId > comments.UserId)
    on (votes.PostId is not NULL)
where postHistory.ContentLicense is NULL
limit 83;
select  
  badges.Date, 
  sum(
    cast(votes.Id as int8)), 
  postHistory.Text
from 
  votes
    inner join postLinks
        inner join posts
        on (posts.CreationDate >= posts.CreationDate)
      inner join postHistory
        inner join badges
        on (postHistory.UserId <= postHistory.PostHistoryTypeId)
      on (postHistory.Comment < postHistory.ContentLicense)
    on (posts.ParentId <= votes.PostId)
where postHistory.CreationDate = posts.CreationDate
limit 147;
select  
  postHistory.CreationDate, 
  postLinks.LinkTypeId, 
  max(
    cast(badges.Name as text)), 
  postHistory.Text, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  users.Id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.OwnerUserId, 
  badges.Class, 
  postHistory.Text, 
  postHistory.ContentLicense
from 
  badges
      inner join users
            inner join postHistory
            on (users.Id = postHistory.Id )
          inner join postLinks
          on (postHistory.PostId = postLinks.Id )
        inner join postHistory
        on (users.ProfileImageUrl >= users.AccountId)
      on (postLinks.CreationDate < postHistory.CreationDate)
    inner join postHistory
      inner join posts
      on (posts.AcceptedAnswerId > posts.ParentId)
    on (postHistory.UserDisplayName is not NULL)
where postHistory.PostHistoryTypeId = postLinks.Id
limit 129;
select  
  min(
    cast(cast(null as "time") as "time")), 
  badges.Name, 
  min(
    cast(cast(null as date) as date)), 
  badges.Date, 
  badges.UserId, 
  badges.UserId, 
  badges.Name, 
  badges.Date, 
  badges.Class, 
  badges.UserId
from 
  badges
where badges.Id is NULL
limit 149;
select  
  min(
    cast(postHistory.UserDisplayName as text)), 
  postHistory.PostId, 
  comments.Id, 
  postHistory.PostId, 
  postHistory.PostId, 
  badges.TagBased, 
  postHistory.Comment
from 
  postHistory
    inner join votes
          inner join badges
          on (badges.Name = badges.Name)
        inner join votes
        on (votes.CreationDate > badges.Date)
      inner join comments
        inner join postHistory
        on (comments.PostId = postHistory.PostId)
      on (badges.TagBased = badges.TagBased)
    on (votes.VoteTypeId is NULL)
where votes.UserId is not NULL
limit 57;
select  
  users.DisplayName, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  users.DisplayName, 
  max(
    cast(cast(null as float4) as float4)), 
  users.AccountId, 
  users.CreationDate, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.ProfileImageUrl, 
  users.ProfileImageUrl, 
  users.Location, 
  users.WebsiteUrl
from 
  users
where users.WebsiteUrl is not NULL
limit 146;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  comments.PostId, 
  comments.Id
from 
  comments
where comments.UserDisplayName is NULL
limit 105;
select  
  postLinks.RelatedPostId, 
  postLinks.Id, 
  posts.Title, 
  posts.CreationDate, 
  postLinks.CreationDate, 
  posts.Title, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postLinks.CreationDate
from 
  posts
    inner join postLinks
    on (posts.AcceptedAnswerId = postLinks.Id )
where postLinks.CreationDate is NULL
limit 61;
select  
  comments.ContentLicense, 
  comments.Id, 
  comments.PostId, 
  comments.UserId
from 
  comments
where comments.CreationDate is not NULL
limit 118;
select  
  comments.ContentLicense
from 
  comments
    inner join users
    on (comments.UserDisplayName is NULL)
where users.AccountId is NULL
limit 103;
select  
  votes.Id, 
  votes.CreationDate, 
  votes.PostId, 
  min(
    cast(cast(null as money) as money)), 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.Id, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.VoteTypeId
from 
  votes
where votes.PostId is not NULL;
select  
  badges.Id, 
  max(
    cast(badges.Class as int8)), 
  badges.Name, 
  badges.Date
from 
  badges
where badges.Date is not NULL;
select  
  votes.CreationDate, 
  badges.Class, 
  postLinks.RelatedPostId, 
  postLinks.Id
from 
  postLinks
    inner join badges
      inner join posts
            inner join votes
            on (posts.CreationDate > votes.CreationDate)
          inner join postLinks
          on (votes.Id = postLinks.Id )
        inner join badges
          inner join postLinks
              inner join badges
              on (postLinks.LinkTypeId = badges.Id )
            inner join votes
            on (badges.Date >= badges.Date)
          on (badges.Name < badges.Name)
        on (postLinks.PostId = posts.ParentId)
      on (postLinks.RelatedPostId < postLinks.RelatedPostId)
    on (badges.UserId is not NULL)
where badges.Id is NULL
limit 112;
select  
  posts.PostTypeId
from 
  posts
      inner join posts
          inner join comments
            inner join postHistory
            on (comments.UserId = postHistory.Id )
          on (posts.CreationDate >= comments.CreationDate)
        inner join postHistory
        on (postHistory.PostHistoryTypeId = postHistory.Id )
      on (comments.CreationDate <= comments.CreationDate)
    inner join comments
    on (postHistory.UserId is not NULL)
where postHistory.CreationDate is NULL
limit 171;
select  
  postLinks.Id
from 
  badges
        inner join votes
        on (badges.Date <= votes.CreationDate)
      inner join postHistory
        inner join badges
          inner join votes
            inner join comments
              inner join postLinks
              on (comments.Id > postLinks.Id)
            on (votes.PostId < postLinks.RelatedPostId)
          on (postLinks.CreationDate > badges.Date)
        on (postLinks.LinkTypeId <= postHistory.Id)
      on (votes.CreationDate = postHistory.CreationDate)
    inner join postHistory
    on (votes.VoteTypeId is not NULL)
where badges.Id is NULL;
select  
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is NULL
limit 41;
select  
  users.Id, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.VoteTypeId, 
  users.DisplayName, 
  votes.UserId, 
  badges.TagBased
from 
  badges
    inner join votes
      inner join votes
        inner join users
        on (users.ProfileImageUrl > users.AccountId)
      on (users.WebsiteUrl = users.DisplayName)
    on (votes.UserId is NULL)
where users.AccountId >= users.AccountId
limit 121;
select  
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.PostId
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 82;
select  
  max(
    cast(cast(null as oid) as oid)), 
  postHistory.Comment
from 
  votes
    inner join postHistory
      inner join comments
      on (postHistory.Text < comments.ContentLicense)
    on (votes.PostId >= comments.PostId)
where comments.UserId <= votes.VoteTypeId
limit 140;
select  
  postHistory.RevisionGUID, 
  postHistory.PostId, 
  postHistory.PostId, 
  postHistory.Id, 
  max(
    cast(82 as int4)), 
  postHistory.PostHistoryTypeId, 
  postHistory.ContentLicense, 
  postHistory.Comment, 
  postHistory.Text, 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.PostHistoryTypeId <= postHistory.PostId
limit 110;
select  
  votes.Id, 
  postLinks.RelatedPostId
from 
  postLinks
    inner join votes
    on (votes.CreationDate is NULL)
where postLinks.CreationDate is not NULL
limit 126;
select  
  comments.UserId, 
  comments.Text, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as timetz) as timetz)), 
  votes.Id, 
  postHistory.ContentLicense, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.OwnerUserId, 
  posts.CreationDate, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  comments.UserId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.AcceptedAnswerId, 
  votes.Id, 
  postHistory.Id, 
  comments.ContentLicense, 
  comments.PostId, 
  postHistory.UserId, 
  votes.VoteTypeId, 
  posts.Tags, 
  posts.Body, 
  posts.ParentId, 
  votes.CreationDate, 
  postLinks.PostId, 
  postHistory.Id, 
  posts.Tags, 
  votes.PostId, 
  comments.ContentLicense
from 
  postHistory
      inner join postLinks
        inner join posts
            inner join votes
            on (posts.Body = posts.Tags)
          inner join posts
          on (posts.Id = posts.Id )
        on (postLinks.RelatedPostId = posts.Id )
      on (posts.Body = postHistory.UserDisplayName)
    inner join votes
      inner join comments
      on (comments.UserDisplayName >= comments.Text)
    on (postLinks.Id is NULL)
where comments.Text >= posts.ContentLicense
limit 126;
select  
  min(
    cast(cast(null as money) as money)), 
  badges.Name
from 
  comments
    inner join votes
      inner join comments
            inner join users
            on (users.AccountId > users.ProfileImageUrl)
          inner join users
          on (comments.ContentLicense = users.WebsiteUrl)
        inner join badges
        on (comments.CreationDate <= comments.CreationDate)
      on (votes.CreationDate = comments.CreationDate )
    on (comments.ContentLicense is NULL)
where comments.PostId is not NULL
limit 87;
select  
  posts.CreationDate, 
  posts.ParentId, 
  posts.Body, 
  max(
    cast(cast(null as "time") as "time")), 
  posts.Id, 
  posts.CreationDate, 
  posts.ContentLicense, 
  posts.Title, 
  posts.CreationDate, 
  posts.ContentLicense, 
  posts.OwnerUserId, 
  posts.Id
from 
  posts
where posts.CreationDate <= posts.CreationDate
limit 87;
select  
  max(
    cast(16 as int4)), 
  posts.Title, 
  posts.ContentLicense, 
  posts.AcceptedAnswerId, 
  posts.Body, 
  posts.Body, 
  posts.Body, 
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  posts.OwnerUserId, 
  posts.Title, 
  posts.OwnerUserId, 
  max(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  posts.ContentLicense, 
  min(
    cast(cast(null as date) as date))
from 
  posts
where posts.CreationDate >= posts.CreationDate
limit 119;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.Id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.UserId, 
  postLinks.Id
from 
  comments
    inner join postLinks
    on (comments.CreationDate >= comments.CreationDate)
where postLinks.PostId is NULL
limit 46;
select  
  comments.Text, 
  badges.Name
from 
  users
    inner join badges
        inner join comments
        on (badges.Id <= comments.PostId)
      inner join comments
      on (badges.TagBased < badges.TagBased)
    on (comments.ContentLicense is not NULL)
where badges.TagBased > badges.TagBased
limit 69;
select  
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  postLinks
where postLinks.PostId is NULL;
select  
  votes.Id
from 
  votes
where votes.Id is not NULL
limit 63;
select  
  postHistory.UserDisplayName, 
  users.Id
from 
  users
      inner join badges
      on (users.ProfileImageUrl <= users.ProfileImageUrl)
    inner join postHistory
    on (users.CreationDate is NULL)
where badges.Id is not NULL;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  postHistory.PostHistoryTypeId, 
  postHistory.Comment, 
  postHistory.Id, 
  postHistory.Text, 
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  postHistory.Id, 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as "time") as "time")), 
  postHistory.ContentLicense, 
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName, 
  postHistory.CreationDate
from 
  postHistory
where postHistory.CreationDate < postHistory.CreationDate
limit 129;
select  
  avg(
    cast(cast(null as float8) as float8))
from 
  postHistory
        inner join postHistory
            inner join badges
            on (badges.Id = badges.Class)
          inner join postHistory
          on (postHistory.PostHistoryTypeId <= postHistory.PostHistoryTypeId)
        on (postHistory.ContentLicense = postHistory.ContentLicense)
      inner join badges
          inner join posts
              inner join votes
              on (votes.UserId <= votes.PostId)
            inner join postHistory
            on (postHistory.Comment >= postHistory.RevisionGUID)
          on (posts.PostTypeId >= postHistory.UserId)
        inner join badges
        on (badges.TagBased >= badges.TagBased)
      on (votes.CreationDate >= posts.CreationDate)
    inner join postHistory
      inner join votes
      on (votes.PostId > votes.PostId)
    on (postHistory.PostHistoryTypeId is NULL)
where votes.VoteTypeId is not NULL
limit 83;
select  
  badges.Date, 
  comments.Text, 
  badges.Id, 
  comments.Text
from 
  badges
    inner join comments
    on (badges.TagBased < badges.TagBased)
where badges.Id is not NULL;
select  
  min(
    cast(cast(null as "time") as "time")), 
  posts.ContentLicense, 
  posts.Body, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posts.ContentLicense, 
  posts.Title, 
  min(
    cast(posts.ContentLicense as text)), 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  posts
where posts.CreationDate = posts.CreationDate
limit 70;
select  
  postHistory.Text
from 
  postHistory
where postHistory.RevisionGUID <= postHistory.Comment;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  posts.OwnerDisplayName, 
  posts.OwnerUserId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.Title
from 
  posts
        inner join users
        on (users.AccountId < users.ProfileImageUrl)
      inner join postHistory
        inner join posts
          inner join badges
          on (posts.Tags = badges.Name )
        on (posts.ContentLicense < posts.Title)
      on (badges.TagBased <= badges.TagBased)
    inner join posts
    on (users.ProfileImageUrl is not NULL)
where posts.Tags is not NULL
limit 105;
select  
  votes.VoteTypeId
from 
  votes
where votes.PostId <= votes.UserId
limit 85;
select  
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.PostId
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 123;
select  
  users.WebsiteUrl
from 
  users
where users.Location is not NULL;
select  
  posts.Title, 
  posts.ContentLicense, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  min(
    cast(cast(null as oid) as oid)), 
  posts.ParentId, 
  posts.ParentId
from 
  posts
    inner join posts
      inner join posts
      on (posts.Tags > posts.ContentLicense)
    on (posts.CreationDate is not NULL)
where posts.ParentId is NULL;
select  
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  avg(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.Id is not NULL
limit 101;
select  
  postLinks.PostId, 
  postLinks.Id, 
  votes.Id, 
  votes.Id, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  votes
    inner join postLinks
    on (votes.Id = postLinks.Id )
where postLinks.RelatedPostId is NULL
limit 160;
select  
  votes.CreationDate, 
  comments.PostId
from 
  votes
    inner join comments
    on (comments.UserId is not NULL)
where comments.CreationDate is not NULL;
select  
  badges.Class, 
  badges.TagBased
from 
  badges
where badges.Date is not NULL
limit 100;
select  
  postHistory.UserId
from 
  postHistory
where postHistory.CreationDate is NULL
limit 82;
select  
  posts.CreationDate
from 
  postHistory
    inner join posts
        inner join comments
            inner join comments
            on (comments.CreationDate <= comments.CreationDate)
          inner join comments
          on (comments.CreationDate >= comments.CreationDate)
        on (comments.CreationDate = comments.CreationDate)
      inner join posts
        inner join posts
        on (posts.CreationDate > posts.CreationDate)
      on (comments.PostId < posts.Id)
    on (postHistory.CreationDate = posts.CreationDate )
where comments.CreationDate is NULL
limit 148;
select  
  badges.Id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.Id, 
  badges.Date, 
  badges.Date, 
  badges.UserId, 
  badges.TagBased, 
  badges.Class
from 
  badges
    inner join badges
    on (badges.Id is not NULL)
where badges.TagBased is not NULL
limit 100;
select  
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId
from 
  postLinks
    inner join postHistory
    on (postLinks.CreationDate is not NULL)
where postHistory.PostHistoryTypeId is not NULL
limit 170;
select  
  min(
    cast(cast(null as float8) as float8))
from 
  comments
where comments.PostId is not NULL
limit 118;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.PostId, 
  postHistory.Id, 
  postHistory.RevisionGUID, 
  postHistory.UserDisplayName, 
  postHistory.Text, 
  min(
    cast(cast(null as tid) as tid)), 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.Id >= postHistory.Id;
select  
  votes.PostId
from 
  votes
where votes.VoteTypeId is NULL
limit 148;
select  
  comments.PostId, 
  comments.UserDisplayName, 
  comments.UserDisplayName, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as oid) as oid)), 
  comments.UserDisplayName, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.UserId, 
  comments.UserId
from 
  comments
where comments.UserDisplayName is NULL;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.Id is not NULL
limit 84;
select  
  postLinks.PostId, 
  postLinks.CreationDate, 
  sum(
    cast(70 as int4)), 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.CreationDate = postLinks.CreationDate
limit 105;
select  
  comments.UserId, 
  badges.UserId, 
  comments.ContentLicense
from 
  votes
    inner join votes
        inner join users
            inner join comments
            on (users.ProfileImageUrl = users.AccountId)
          inner join users
                inner join posts
                on (posts.ParentId <= posts.OwnerUserId)
              inner join postHistory
              on (posts.CreationDate <= users.CreationDate)
            inner join postHistory
            on (users.ProfileImageUrl < users.ProfileImageUrl)
          on (comments.Text <= users.WebsiteUrl)
        on (postHistory.CreationDate >= comments.CreationDate)
      inner join badges
      on (posts.OwnerUserId < users.Id)
    on (votes.VoteTypeId = votes.Id )
where postHistory.CreationDate is NULL;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  postLinks.PostId, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  posts
          inner join comments
          on (posts.Id = comments.Id )
        inner join postHistory
          inner join postHistory
          on (postHistory.PostHistoryTypeId < postHistory.PostId)
        on (posts.ContentLicense <= posts.Tags)
      inner join comments
          inner join votes
          on (comments.CreationDate = votes.CreationDate )
        inner join comments
        on (comments.CreationDate >= comments.CreationDate)
      on (postHistory.Text <= postHistory.Comment)
    inner join badges
          inner join users
            inner join votes
            on (users.AccountId > users.AccountId)
          on (users.AboutMe <= badges.Name)
        inner join votes
        on (badges.Date > users.CreationDate)
      inner join comments
        inner join postHistory
          inner join comments
            inner join postLinks
            on (comments.Text >= comments.UserDisplayName)
          on (postHistory.RevisionGUID > postHistory.Text)
        on (comments.CreationDate <= comments.CreationDate)
      on (postHistory.CreationDate < votes.CreationDate)
    on (votes.PostId is NULL)
where postHistory.UserId is NULL
limit 128;
select  
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.PostHistoryTypeId is not NULL
limit 120;
select  
  comments.UserDisplayName, 
  users.CreationDate, 
  badges.Id, 
  comments.CreationDate
from 
  users
      inner join comments
        inner join comments
        on (comments.PostId = comments.Id )
      on (comments.PostId > comments.UserId)
    inner join badges
    on (badges.Date >= badges.Date)
where users.Id <= badges.Class
limit 103;
select  
  comments.UserId, 
  postHistory.Comment
from 
  comments
    inner join postHistory
    on (comments.UserId < comments.Id)
where postHistory.CreationDate <= postHistory.CreationDate;
select  
  max(
    cast(cast(null as float8) as float8)), 
  badges.Class, 
  badges.UserId
from 
  badges
where badges.Name < badges.Name
limit 144;
select  
  badges.UserId, 
  badges.TagBased, 
  badges.Name, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  badges.UserId
from 
  badges
where badges.Name is not NULL;
select  
  votes.PostId, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.CreationDate
from 
  votes
where votes.CreationDate < votes.CreationDate
limit 159;
select  
  users.Id, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(users.ProfileImageUrl as float8)), 
  comments.ContentLicense
from 
  badges
        inner join comments
            inner join posts
            on (posts.OwnerDisplayName >= posts.ContentLicense)
          inner join comments
          on (comments.UserId = comments.Id )
        on (badges.Date = posts.CreationDate )
      inner join users
      on (comments.CreationDate < users.CreationDate)
    inner join votes
    on (badges.Date = votes.CreationDate )
where users.WebsiteUrl is NULL;
select  
  badges.Date, 
  badges.TagBased
from 
  badges
where badges.Id is not NULL
limit 128;
select  
  comments.CreationDate, 
  comments.Id
from 
  comments
where comments.Text is not NULL
limit 134;
select  
  postHistory.UserDisplayName, 
  badges.Class, 
  badges.TagBased
from 
  postLinks
    inner join badges
        inner join badges
            inner join users
            on (users.ProfileImageUrl <= users.AccountId)
          inner join postHistory
          on (badges.Date = postHistory.CreationDate )
        on (users.ProfileImageUrl <= users.ProfileImageUrl)
      inner join users
      on (badges.Date < postHistory.CreationDate)
    on (badges.Id is not NULL)
where users.CreationDate is not NULL
limit 107;
select  
  comments.Id, 
  sum(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as tid) as tid))
from 
  posts
    inner join users
      inner join badges
          inner join users
          on (users.Id > badges.Id)
        inner join comments
            inner join badges
            on (badges.Date > badges.Date)
          inner join users
          on (users.AboutMe < badges.Name)
        on (badges.UserId <= comments.PostId)
      on (users.AccountId >= users.ProfileImageUrl)
    on (badges.TagBased is NULL)
where users.Location >= comments.Text;
select  
  min(
    cast(cast(null as "time") as "time")), 
  badges.Class, 
  badges.Date, 
  postLinks.Id
from 
  postLinks
    inner join badges
    on (badges.Date is NULL)
where badges.Id is not NULL
limit 123;
select  
  postLinks.Id, 
  postLinks.Id, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as text) as text)), 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.PostId is NULL
limit 168;
select  
  posts.PostTypeId, 
  posts.OwnerUserId, 
  posts.ParentId, 
  posts.ContentLicense, 
  comments.ContentLicense, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.CreationDate
from 
  comments
    inner join posts
    on (posts.Title is NULL)
where posts.PostTypeId is NULL
limit 100;
select  
  users.DisplayName, 
  votes.Id, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.Id, 
  users.AboutMe, 
  votes.PostId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(votes.CreationDate as "timestamp")), 
  users.AccountId, 
  users.AboutMe, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  votes
    inner join users
      inner join votes
      on (users.AboutMe > users.DisplayName)
    on (users.WebsiteUrl > users.Location)
where votes.CreationDate is not NULL;
select  
  max(
    cast(comments.CreationDate as "timestamp")), 
  comments.UserDisplayName, 
  count(*), 
  comments.UserDisplayName, 
  comments.Id, 
  comments.ContentLicense, 
  comments.PostId, 
  max(
    cast(cast(null as timestamptz) as timestamptz))
from 
  comments
where comments.ContentLicense > comments.ContentLicense
limit 79;
select  
  postHistory.Text, 
  postHistory.Comment, 
  votes.Id, 
  votes.PostId
from 
  votes
    inner join posts
        inner join postHistory
          inner join posts
          on (postHistory.ContentLicense = posts.OwnerDisplayName )
        on (posts.CreationDate = postHistory.CreationDate)
      inner join postHistory
        inner join postHistory
          inner join badges
          on (postHistory.ContentLicense = badges.Name )
        on (postHistory.PostHistoryTypeId = postHistory.Id )
      on (postHistory.UserDisplayName > postHistory.Text)
    on (votes.UserId is not NULL)
where postHistory.PostHistoryTypeId is not NULL;
select distinct 
  posts.Body, 
  posts.Tags, 
  posts.Title, 
  posts.Id, 
  posts.PostTypeId, 
  posts.CreationDate, 
  posts.Title, 
  posts.ContentLicense, 
  posts.AcceptedAnswerId, 
  posts.Body, 
  posts.Tags, 
  posts.Body, 
  posts.Id, 
  posts.OwnerUserId, 
  max(
    cast(posts.ContentLicense as text)), 
  posts.CreationDate, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.Title
from 
  posts
where posts.Id = posts.Id
limit 95;
select  
  posts.CreationDate, 
  badges.Date, 
  posts.CreationDate, 
  postHistory.Id, 
  posts.CreationDate, 
  posts.Tags, 
  badges.Class, 
  badges.Id, 
  postHistory.ContentLicense
from 
  posts
    inner join postHistory
        inner join posts
        on (postHistory.PostId > posts.PostTypeId)
      inner join badges
      on (badges.TagBased < badges.TagBased)
    on (badges.TagBased >= badges.TagBased)
where badges.TagBased = badges.TagBased;
select  
  min(
    cast(cast(null as float8) as float8)), 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  postHistory.RevisionGUID, 
  postHistory.PostId, 
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.ContentLicense, 
  postHistory.PostHistoryTypeId, 
  postHistory.Id, 
  min(
    cast(cast(null as float8) as float8)), 
  postHistory.RevisionGUID, 
  postHistory.Text, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.UserId is not NULL
limit 140;
select  
  badges.UserId, 
  posts.PostTypeId, 
  badges.Class, 
  badges.TagBased, 
  badges.Class, 
  postLinks.CreationDate, 
  badges.Class, 
  max(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId
from 
  badges
        inner join badges
        on (badges.Class > badges.Class)
      inner join posts
      on (badges.Id < posts.OwnerUserId)
    inner join postLinks
    on (badges.Id is NULL)
where badges.TagBased > badges.TagBased
limit 115;
select  
  posts.Id, 
  posts.PostTypeId, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  votes
    inner join posts
        inner join posts
          inner join comments
          on (posts.CreationDate < posts.CreationDate)
        on (posts.CreationDate = posts.CreationDate)
      inner join votes
              inner join users
              on (users.AboutMe >= users.DisplayName)
            inner join votes
            on (users.AboutMe <= users.WebsiteUrl)
          inner join users
          on (users.AccountId = users.AccountId )
        inner join votes
        on (users.DisplayName < users.AboutMe)
      on (comments.PostId = votes.Id )
    on (users.ProfileImageUrl = users.ProfileImageUrl)
where users.DisplayName is NULL;
select  
  postHistory.Id, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  postHistory.Text, 
  postHistory.Id, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  postHistory
where postHistory.Comment is NULL
limit 192;
select  
  votes.Id, 
  users.Id, 
  postLinks.RelatedPostId
from 
  users
        inner join users
        on (users.CreationDate >= users.CreationDate)
      inner join postHistory
      on (users.AccountId >= users.AccountId)
    inner join votes
        inner join postLinks
        on (postLinks.CreationDate > votes.CreationDate)
      inner join comments
          inner join users
          on (users.AccountId > users.AccountId)
        inner join votes
        on (users.Id = votes.Id )
      on (postLinks.PostId = votes.Id )
    on (postHistory.PostHistoryTypeId = users.Id )
where users.AccountId is not NULL;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.Id, 
  votes.PostId
from 
  votes
where votes.CreationDate is not NULL
limit 114;
select  
  comments.PostId, 
  postLinks.CreationDate, 
  comments.UserDisplayName, 
  postLinks.CreationDate, 
  comments.PostId, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as float4) as float4)), 
  comments.ContentLicense, 
  max(
    cast(cast(null as inet) as inet)), 
  comments.Text, 
  comments.ContentLicense
from 
  comments
    inner join postLinks
    on (comments.UserDisplayName is not NULL)
where comments.Id is NULL;
select  
  badges.Class, 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.UserId, 
  badges.Id, 
  badges.Class, 
  badges.Date, 
  badges.TagBased, 
  badges.Date
from 
  badges
where badges.TagBased is not NULL;
select  
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  badges
    inner join postLinks
    on (badges.Id = postLinks.Id )
where badges.Class is not NULL;
select  
  postHistory.ContentLicense, 
  postHistory.Comment, 
  postHistory.UserId, 
  comments.Id, 
  postHistory.ContentLicense, 
  postLinks.CreationDate, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  avg(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.ContentLicense, 
  postLinks.PostId, 
  comments.ContentLicense, 
  postLinks.CreationDate, 
  count(*)
from 
  comments
      inner join postHistory
          inner join postHistory
          on (postHistory.Id <= postHistory.Id)
        inner join postLinks
          inner join comments
          on (postLinks.CreationDate >= postLinks.CreationDate)
        on (postHistory.CreationDate < comments.CreationDate)
      on (comments.UserDisplayName = postHistory.ContentLicense)
    inner join comments
      inner join postLinks
      on (comments.CreationDate >= comments.CreationDate)
    on (postHistory.CreationDate is not NULL)
where comments.Text is NULL
limit 141;
select  
  users.CreationDate, 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.Id
from 
  users
where users.Location < users.DisplayName;
select  
  postLinks.RelatedPostId, 
  avg(
    cast(cast(null as float4) as float4)), 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  sum(
    cast(postLinks.Id as int8)), 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.CreationDate <= postLinks.CreationDate
limit 40;
select  
  postHistory.Text, 
  posts.Tags, 
  postHistory.ContentLicense, 
  posts.PostTypeId, 
  count(*)
from 
  posts
    inner join postHistory
    on (postHistory.PostId < posts.OwnerUserId)
where postHistory.Comment is NULL
limit 46;
select  
  badges.Date, 
  badges.Name
from 
  badges
    inner join posts
      inner join postLinks
        inner join postLinks
        on (postLinks.Id = postLinks.LinkTypeId)
      on (postLinks.CreationDate > postLinks.CreationDate)
    on (badges.Name is not NULL)
where postLinks.RelatedPostId is not NULL
limit 53;
select  
  badges.UserId
from 
  postHistory
        inner join comments
            inner join posts
              inner join comments
              on (posts.OwnerUserId >= comments.UserId)
            on (comments.CreationDate > comments.CreationDate)
          inner join users
              inner join postHistory
              on (users.WebsiteUrl = postHistory.UserDisplayName )
            inner join postHistory
              inner join postLinks
              on (postLinks.RelatedPostId > postHistory.PostHistoryTypeId)
            on (postHistory.UserId < postLinks.LinkTypeId)
          on (users.AccountId > users.AccountId)
        on (comments.CreationDate = postHistory.CreationDate)
      inner join badges
          inner join comments
          on (badges.TagBased >= badges.TagBased)
        inner join postLinks
          inner join posts
          on (postLinks.CreationDate >= posts.CreationDate)
        on (postLinks.CreationDate > comments.CreationDate)
      on (postLinks.PostId = comments.Id )
    inner join users
    on (postHistory.Text is NULL)
where badges.Name is NULL
limit 118;
select  
  votes.UserId, 
  votes.Id, 
  votes.PostId, 
  votes.CreationDate, 
  votes.Id, 
  votes.UserId
from 
  votes
where votes.CreationDate is not NULL
limit 140;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.CreationDate, 
  min(
    cast(cast(null as oid) as oid))
from 
  votes
where votes.PostId is NULL;
select  
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  postHistory.Text, 
  postHistory.Id, 
  postHistory.Comment, 
  postHistory.UserId, 
  postHistory.Id, 
  postHistory.PostId
from 
  postHistory
where postHistory.UserId is NULL
limit 59;
select  
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.RelatedPostId is not NULL;
select  
  comments.UserId, 
  min(
    cast(cast(null as inet) as inet)), 
  comments.PostId
from 
  comments
where comments.Text > comments.ContentLicense;
select  
  comments.Id, 
  comments.CreationDate
from 
  comments
where comments.CreationDate <= comments.CreationDate
limit 123;
select  
  postLinks.Id, 
  postLinks.Id, 
  comments.UserDisplayName, 
  max(
    cast(postLinks.PostId as int8)), 
  postLinks.RelatedPostId
from 
  comments
    inner join postLinks
      inner join comments
      on (postLinks.CreationDate = comments.CreationDate )
    on (comments.ContentLicense >= comments.ContentLicense)
where postLinks.CreationDate is NULL
limit 123;
select  
  votes.UserId, 
  postHistory.Comment, 
  users.Id, 
  postHistory.RevisionGUID, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  badges.Name, 
  votes.PostId, 
  min(
    cast(cast(null as oid) as oid)), 
  posts.CreationDate, 
  badges.TagBased, 
  badges.UserId, 
  postHistory.PostHistoryTypeId
from 
  badges
            inner join posts
            on (badges.Date = posts.CreationDate )
          inner join postHistory
          on (posts.Tags = postHistory.UserDisplayName )
        inner join votes
        on (posts.Tags = posts.Title)
      inner join postLinks
        inner join users
        on (users.CreationDate >= postLinks.CreationDate)
      on (users.ProfileImageUrl = users.ProfileImageUrl)
    inner join votes
        inner join posts
          inner join postHistory
            inner join users
            on (postHistory.ContentLicense = users.DisplayName )
          on (postHistory.PostHistoryTypeId <= posts.ParentId)
        on (postHistory.CreationDate = users.CreationDate)
      inner join posts
          inner join badges
          on (posts.Id = badges.Id )
        inner join postHistory
          inner join postHistory
          on (postHistory.Id > postHistory.UserId)
        on (postHistory.ContentLicense = postHistory.UserDisplayName)
      on (users.AccountId >= users.ProfileImageUrl)
    on (badges.TagBased >= badges.TagBased)
where votes.UserId <= postHistory.Id
limit 83;
select  
  users.Location, 
  users.CreationDate
from 
  postLinks
              inner join votes
              on (votes.CreationDate > votes.CreationDate)
            inner join users
            on (users.WebsiteUrl < users.Location)
          inner join badges
              inner join votes
              on (votes.CreationDate > badges.Date)
            inner join votes
            on (badges.TagBased = badges.TagBased)
          on (votes.UserId >= badges.UserId)
        inner join users
        on (postLinks.RelatedPostId = users.Id )
      inner join votes
        inner join posts
        on (posts.CreationDate >= posts.CreationDate)
      on (badges.TagBased <= badges.TagBased)
    inner join users
        inner join posts
        on (posts.ParentId > posts.ParentId)
      inner join users
            inner join badges
            on (users.ProfileImageUrl > users.AccountId)
          inner join badges
          on (badges.TagBased < badges.TagBased)
        inner join posts
        on (posts.PostTypeId = badges.Class)
      on (badges.Name > users.Location)
    on (posts.Tags >= posts.ContentLicense)
where users.AboutMe = posts.Body;
select  
  votes.Id, 
  comments.ContentLicense
from 
  votes
    inner join posts
      inner join comments
      on (posts.PostTypeId = posts.ParentId)
    on (votes.PostId = comments.Id )
where votes.CreationDate >= comments.CreationDate
limit 121;
select  
  comments.CreationDate, 
  comments.Text, 
  comments.Id, 
  comments.PostId, 
  comments.UserId, 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as float4) as float4)), 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.Text
from 
  comments
where comments.UserId is NULL;
select  
  badges.UserId, 
  badges.Class, 
  badges.Id, 
  badges.Name, 
  badges.Class, 
  max(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as oid) as oid))
from 
  badges
        inner join badges
        on (badges.TagBased < badges.TagBased)
      inner join badges
      on (badges.TagBased <= badges.TagBased)
    inner join comments
    on (badges.UserId < badges.Class)
where badges.Name is NULL
limit 189;
select  
  badges.Class
from 
  badges
    inner join comments
    on (comments.CreationDate is not NULL)
where badges.Class is not NULL
limit 49;
select  
  comments.UserId, 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.Class, 
  users.CreationDate, 
  badges.Date, 
  votes.PostId, 
  max(
    cast(cast(null as inet) as inet))
from 
  comments
        inner join badges
        on (comments.UserId = badges.Id )
      inner join votes
          inner join users
            inner join users
              inner join comments
              on (comments.UserDisplayName < users.AboutMe)
            on (users.Location = users.DisplayName )
          on (votes.VoteTypeId > votes.VoteTypeId)
        inner join votes
            inner join comments
            on (comments.UserDisplayName <= comments.ContentLicense)
          inner join comments
              inner join votes
              on (comments.UserId = votes.Id )
            inner join votes
              inner join badges
              on (votes.UserId = badges.Id )
            on (votes.UserId = badges.Id )
          on (votes.CreationDate < comments.CreationDate)
        on (badges.TagBased < badges.TagBased)
      on (users.Location = comments.UserDisplayName)
    inner join votes
      inner join postHistory
      on (votes.UserId = postHistory.Id )
    on (comments.Id is NULL)
where comments.UserId is not NULL;
select  
  comments.UserId, 
  badges.Class, 
  max(
    cast(cast(null as oid) as oid)), 
  max(
    cast(users.ProfileImageUrl as float8)), 
  postLinks.PostId
from 
  badges
          inner join comments
          on (badges.Date = comments.CreationDate )
        inner join votes
          inner join users
          on (users.DisplayName = users.WebsiteUrl)
        on (comments.UserDisplayName = badges.Name)
      inner join postLinks
        inner join postLinks
            inner join badges
            on (postLinks.LinkTypeId = badges.Class)
          inner join badges
          on (badges.TagBased < badges.TagBased)
        on (postLinks.CreationDate = postLinks.CreationDate )
      on (users.AccountId < users.ProfileImageUrl)
    inner join postLinks
    on (users.DisplayName < comments.Text)
where comments.UserDisplayName = badges.Name;
select  
  users.ProfileImageUrl, 
  users.DisplayName
from 
  users
    inner join users
    on (users.Id is not NULL)
where users.ProfileImageUrl is not NULL
limit 96;
select  
  postHistory.Id, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.CreationDate, 
  postHistory.Id, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.PostHistoryTypeId is NULL
limit 113;
select  
  votes.Id
from 
  users
    inner join votes
    on (users.AccountId is NULL)
where users.DisplayName is not NULL
limit 171;
select  
  votes.CreationDate, 
  votes.PostId, 
  votes.Id, 
  votes.PostId, 
  votes.UserId, 
  votes.Id, 
  votes.Id, 
  votes.VoteTypeId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.VoteTypeId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.UserId, 
  votes.CreationDate, 
  votes.CreationDate
from 
  votes
where votes.CreationDate is not NULL
limit 8;
select  
  min(
    cast(cast(null as "time") as "time")), 
  postHistory.RevisionGUID, 
  postHistory.CreationDate
from 
  badges
              inner join votes
              on (votes.UserId > votes.Id)
            inner join votes
            on (votes.CreationDate >= votes.CreationDate)
          inner join users
          on (votes.CreationDate = users.CreationDate )
        inner join postLinks
        on (badges.UserId = postLinks.Id )
      inner join votes
          inner join postLinks
            inner join postLinks
            on (postLinks.CreationDate <= postLinks.CreationDate)
          on (votes.UserId = postLinks.Id )
        inner join badges
        on (votes.PostId = badges.Id )
      on (users.ProfileImageUrl >= users.AccountId)
    inner join postHistory
        inner join votes
        on (postHistory.Id = votes.VoteTypeId)
      inner join postHistory
      on (votes.Id = postHistory.Id )
    on (votes.PostId is not NULL)
where users.ProfileImageUrl <= users.AccountId;
select  
  users.ProfileImageUrl, 
  users.CreationDate, 
  min(
    cast(cast(null as float4) as float4)), 
  comments.Text
from 
  postHistory
        inner join comments
        on (postHistory.CreationDate < comments.CreationDate)
      inner join badges
      on (badges.Date < postHistory.CreationDate)
    inner join postLinks
        inner join users
          inner join comments
          on (users.ProfileImageUrl = users.AccountId)
        on (comments.UserDisplayName < comments.ContentLicense)
      inner join posts
        inner join users
          inner join posts
          on (users.Location = posts.OwnerDisplayName )
        on (posts.OwnerUserId = posts.AcceptedAnswerId)
      on (users.Location < users.AboutMe)
    on (users.CreationDate is NULL)
where users.DisplayName <= comments.UserDisplayName;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  votes.CreationDate, 
  min(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as oid) as oid)), 
  users.DisplayName
from 
  comments
    inner join postHistory
      inner join votes
          inner join users
          on (votes.PostId < votes.PostId)
        inner join postHistory
          inner join comments
          on (postHistory.RevisionGUID <= postHistory.UserDisplayName)
        on (comments.Text = postHistory.Text)
      on (comments.UserDisplayName < postHistory.Text)
    on (users.AccountId >= users.AccountId)
where postHistory.PostHistoryTypeId is not NULL;
select  
  min(
    cast(users.Id as int8)), 
  min(
    cast(cast(null as tid) as tid)), 
  users.Id
from 
  users
where users.WebsiteUrl is NULL;
select  
  postHistory.UserId, 
  postHistory.RevisionGUID, 
  postHistory.RevisionGUID, 
  postHistory.UserId, 
  postHistory.ContentLicense, 
  min(
    cast(postHistory.PostHistoryTypeId as int8)), 
  max(
    cast(cast(null as float8) as float8))
from 
  postHistory
where postHistory.UserId is NULL
limit 131;
select  
  users.AboutMe, 
  votes.Id, 
  posts.ParentId, 
  posts.OwnerUserId, 
  votes.PostId, 
  votes.Id, 
  votes.VoteTypeId, 
  users.AccountId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(users.Id as int8))
from 
  posts
    inner join users
      inner join votes
      on (users.AboutMe < users.AboutMe)
    on (users.ProfileImageUrl is not NULL)
where users.ProfileImageUrl <= users.ProfileImageUrl;
select  
  votes.PostId, 
  posts.PostTypeId, 
  users.CreationDate, 
  postLinks.Id, 
  postHistory.UserId, 
  posts.ContentLicense
from 
  users
    inner join users
              inner join posts
              on (posts.PostTypeId >= posts.PostTypeId)
            inner join postLinks
            on (users.CreationDate <= posts.CreationDate)
          inner join votes
          on (users.AccountId > users.ProfileImageUrl)
        inner join users
            inner join votes
            on (users.Location <= users.WebsiteUrl)
          inner join postHistory
          on (users.ProfileImageUrl > users.AccountId)
        on (posts.Body = postHistory.UserDisplayName )
      inner join posts
      on (votes.CreationDate >= users.CreationDate)
    on (votes.PostId is NULL)
where posts.Title is NULL
limit 93;
select  
  sum(
    cast(cast(null as float4) as float4))
from 
  posts
        inner join postHistory
          inner join users
          on (users.CreationDate >= postHistory.CreationDate)
        on (posts.Tags = postHistory.UserDisplayName )
      inner join comments
      on (users.CreationDate > users.CreationDate)
    inner join votes
        inner join badges
              inner join votes
              on (badges.Class = votes.Id )
            inner join postLinks
            on (votes.PostId = votes.PostId)
          inner join postLinks
          on (votes.Id >= votes.VoteTypeId)
        on (votes.CreationDate = votes.CreationDate )
      inner join users
          inner join badges
            inner join users
            on (users.ProfileImageUrl <= users.AccountId)
          on (users.Id = users.Id )
        inner join votes
        on (users.AccountId >= users.AccountId)
      on (users.WebsiteUrl = users.DisplayName)
    on (postHistory.CreationDate = users.CreationDate )
where badges.Date > users.CreationDate
limit 97;
select  
  max(
    cast(votes.CreationDate as "timestamp")), 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as date) as date)), 
  votes.PostId, 
  votes.UserId
from 
  votes
where votes.UserId > votes.VoteTypeId
limit 101;
select  
  badges.Class, 
  badges.UserId, 
  badges.UserId, 
  badges.TagBased, 
  badges.TagBased, 
  badges.Id, 
  badges.Class, 
  badges.Class, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  badges.TagBased, 
  badges.Date
from 
  badges
where badges.Date is not NULL;
select  
  users.CreationDate
from 
  posts
        inner join postHistory
          inner join users
          on (users.AboutMe >= users.AboutMe)
        on (posts.CreationDate <= postHistory.CreationDate)
      inner join postHistory
      on (postHistory.PostId >= postHistory.PostId)
    inner join postHistory
      inner join badges
      on (badges.TagBased < badges.TagBased)
    on (postHistory.PostHistoryTypeId = badges.Id )
where users.WebsiteUrl is not NULL;
select  
  min(
    cast(cast(null as "time") as "time")), 
  postHistory.UserDisplayName, 
  comments.Id, 
  postHistory.RevisionGUID, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  min(
    cast(cast(null as tid) as tid)), 
  comments.Text, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  postHistory.UserDisplayName, 
  postHistory.CreationDate, 
  postHistory.CreationDate, 
  comments.ContentLicense, 
  comments.ContentLicense
from 
  postHistory
      inner join comments
            inner join posts
            on (comments.UserId >= comments.PostId)
          inner join comments
          on (comments.ContentLicense = posts.Title)
        inner join comments
        on (posts.CreationDate < comments.CreationDate)
      on (comments.UserDisplayName <= comments.Text)
    inner join comments
      inner join postHistory
      on (comments.UserId = postHistory.PostHistoryTypeId)
    on (comments.CreationDate > comments.CreationDate)
where postHistory.CreationDate < posts.CreationDate
limit 118;
select  
  users.Id, 
  users.Location, 
  sum(
    cast(cast(null as float4) as float4))
from 
  posts
      inner join comments
      on (posts.Id <= posts.Id)
    inner join users
    on (users.AccountId < users.ProfileImageUrl)
where users.Location is not NULL;
select  
  min(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postHistory.RevisionGUID, 
  postHistory.CreationDate, 
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  postHistory.Id, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postHistory.PostId
from 
  postHistory
where postHistory.Comment is not NULL
limit 92;
select  
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as float4) as float4)), 
  postLinks.CreationDate
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 85;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.CreationDate, 
  votes.Id, 
  votes.UserId
from 
  votes
where votes.VoteTypeId is not NULL
limit 120;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.UserDisplayName, 
  postHistory.Text, 
  postHistory.CreationDate, 
  postHistory.RevisionGUID, 
  sum(
    cast(postHistory.UserId as int8)), 
  postHistory.Id, 
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.Text, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.UserId, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  postHistory.Comment
from 
  postHistory
where postHistory.UserId is not NULL
limit 74;
select  
  posts.ContentLicense, 
  posts.Body, 
  posts.PostTypeId, 
  posts.OwnerDisplayName, 
  min(
    cast(posts.PostTypeId as int8)), 
  posts.Id
from 
  posts
where posts.Body is not NULL
limit 125;
select  
  users.WebsiteUrl, 
  users.Location
from 
  users
where users.ProfileImageUrl < users.ProfileImageUrl;
select  
  users.AboutMe, 
  users.AccountId, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  users.Id, 
  users.CreationDate, 
  users.ProfileImageUrl, 
  users.AccountId
from 
  users
where users.AboutMe is NULL
limit 103;
select  
  posts.ParentId, 
  comments.UserId, 
  posts.CreationDate, 
  postHistory.PostHistoryTypeId, 
  comments.UserId, 
  comments.Text, 
  comments.ContentLicense, 
  comments.Id, 
  comments.UserId, 
  postHistory.RevisionGUID, 
  comments.UserDisplayName, 
  votes.CreationDate, 
  comments.Text, 
  comments.PostId
from 
  comments
    inner join postHistory
        inner join votes
          inner join comments
          on (votes.VoteTypeId <= votes.PostId)
        on (votes.CreationDate > comments.CreationDate)
      inner join comments
        inner join postHistory
          inner join posts
          on (postHistory.CreationDate >= posts.CreationDate)
        on (comments.ContentLicense >= comments.ContentLicense)
      on (votes.VoteTypeId = comments.Id )
    on (comments.UserDisplayName is NULL)
where postHistory.Text is NULL
limit 95;
select  
  votes.UserId
from 
  votes
where votes.UserId is not NULL
limit 58;
select  
  postLinks.CreationDate, 
  comments.CreationDate, 
  comments.ContentLicense, 
  avg(
    cast(users.ProfileImageUrl as float8)), 
  postLinks.PostId, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  postLinks.PostId, 
  postHistory.UserId, 
  postLinks.LinkTypeId, 
  badges.UserId, 
  min(
    cast(postLinks.LinkTypeId as int8)), 
  users.AboutMe, 
  badges.Id, 
  postHistory.UserDisplayName
from 
  users
      inner join postHistory
          inner join users
          on (postHistory.PostHistoryTypeId < postHistory.PostHistoryTypeId)
        inner join postHistory
        on (users.CreationDate > postHistory.CreationDate)
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    inner join users
            inner join postLinks
            on (users.CreationDate < postLinks.CreationDate)
          inner join comments
          on (users.AccountId <= users.ProfileImageUrl)
        inner join badges
          inner join postLinks
          on (badges.UserId = postLinks.Id )
        on (users.AccountId < users.ProfileImageUrl)
      inner join postLinks
        inner join votes
        on (postLinks.Id = votes.Id )
      on (users.CreationDate <= votes.CreationDate)
    on (postLinks.PostId is NULL)
where users.DisplayName <= users.AboutMe
limit 128;
select  
  sum(
    cast(3 as int4)), 
  posts.Tags, 
  max(
    cast(comments.UserId as int8))
from 
  posts
    inner join comments
        inner join comments
        on (comments.PostId = comments.PostId)
      inner join postHistory
        inner join posts
          inner join comments
            inner join votes
            on (comments.CreationDate = comments.CreationDate)
          on (votes.PostId = votes.VoteTypeId)
        on (comments.UserDisplayName = posts.Title)
      on (votes.Id > comments.UserId)
    on (posts.OwnerDisplayName is not NULL)
where posts.Title >= comments.Text
limit 148;
select  
  posts.Id, 
  max(
    cast(cast(null as inet) as inet)), 
  comments.CreationDate, 
  votes.CreationDate, 
  postLinks.Id, 
  max(
    cast(posts.ContentLicense as text)), 
  votes.UserId, 
  votes.CreationDate, 
  postHistory.PostId
from 
  posts
          inner join votes
            inner join comments
            on (comments.UserDisplayName = comments.Text)
          on (comments.ContentLicense > comments.Text)
        inner join votes
        on (comments.ContentLicense > posts.OwnerDisplayName)
      inner join postLinks
      on (postLinks.CreationDate = posts.CreationDate)
    inner join postHistory
      inner join posts
        inner join postLinks
        on (posts.CreationDate > posts.CreationDate)
      on (postLinks.CreationDate >= posts.CreationDate)
    on (votes.UserId <= postHistory.UserId)
where postHistory.CreationDate >= comments.CreationDate
limit 103;
select  
  badges.TagBased, 
  sum(
    cast(63 as int4))
from 
  badges
where badges.Date >= badges.Date;
select  
  max(
    cast(cast(null as oid) as oid)), 
  postLinks.PostId, 
  votes.Id, 
  postHistory.UserId, 
  votes.Id, 
  posts.Id, 
  sum(
    cast(22 as int4)), 
  postLinks.Id, 
  users.AccountId, 
  posts.AcceptedAnswerId, 
  comments.Id, 
  comments.PostId, 
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
            inner join badges
              inner join postLinks
              on (badges.UserId = postLinks.Id )
            on (badges.TagBased = badges.TagBased)
          inner join votes
            inner join users
            on (votes.UserId < votes.Id)
          on (votes.VoteTypeId = badges.UserId)
        inner join comments
          inner join votes
          on (comments.CreationDate = votes.CreationDate )
        on (users.AboutMe <= users.Location)
      inner join badges
            inner join postHistory
                inner join postHistory
                on (postHistory.ContentLicense > postHistory.RevisionGUID)
              inner join comments
              on (comments.UserId < postHistory.PostHistoryTypeId)
            on (badges.Id = postHistory.Id )
          inner join comments
          on (postHistory.Comment >= comments.UserDisplayName)
        inner join posts
        on (postHistory.CreationDate <= postHistory.CreationDate)
      on (votes.PostId = postHistory.UserId)
    inner join posts
    on (badges.TagBased >= badges.TagBased)
where users.ProfileImageUrl >= users.AccountId
limit 86;
select  
  badges.Class, 
  badges.Name, 
  badges.Class, 
  badges.Date
from 
  badges
where badges.TagBased <= badges.TagBased;
select  
  users.DisplayName, 
  users.Id, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  users.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  users.WebsiteUrl, 
  users.AboutMe
from 
  users
    inner join users
    on (users.CreationDate is NULL)
where users.WebsiteUrl is not NULL;
select  
  max(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.CreationDate is NULL
limit 124;
select  
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  count(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.Id
from 
  postLinks
where postLinks.Id is NULL
limit 67;
select  
  posts.Body, 
  posts.ContentLicense, 
  postLinks.Id, 
  posts.ContentLicense, 
  posts.Tags, 
  posts.Title
from 
  postLinks
    inner join posts
    on (posts.OwnerUserId is not NULL)
where posts.CreationDate > posts.CreationDate;
select  
  users.CreationDate, 
  users.Location, 
  users.AccountId, 
  users.AccountId, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as inet) as inet)), 
  avg(
    cast(76 as int4)), 
  users.AboutMe, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  users.CreationDate, 
  users.ProfileImageUrl, 
  users.Id, 
  users.WebsiteUrl, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  users.CreationDate, 
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(20 as int4))
from 
  users
where users.CreationDate is NULL
limit 13;
select  
  votes.PostId, 
  posts.Title, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postHistory.CreationDate, 
  posts.ParentId, 
  postHistory.ContentLicense, 
  postHistory.Text
from 
  postLinks
          inner join postHistory
          on (postHistory.PostId >= postHistory.UserId)
        inner join posts
        on (postLinks.PostId = posts.Id )
      inner join votes
      on (posts.AcceptedAnswerId < posts.AcceptedAnswerId)
    inner join postHistory
    on (postHistory.Text is not NULL)
where postLinks.CreationDate <= votes.CreationDate;
select  
  posts.PostTypeId, 
  posts.OwnerUserId, 
  posts.PostTypeId, 
  posts.Id, 
  posts.OwnerUserId, 
  posts.Tags, 
  posts.OwnerUserId
from 
  posts
where posts.ParentId is NULL;
select  
  users.ProfileImageUrl, 
  users.CreationDate
from 
  users
where users.AboutMe <= users.Location
limit 160;
select  
  postHistory.Comment, 
  min(
    cast(cast(null as inet) as inet)), 
  postHistory.Comment, 
  postHistory.UserDisplayName, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postHistory.UserDisplayName
from 
  postHistory
where postHistory.CreationDate < postHistory.CreationDate
limit 86;
select  
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.UserDisplayName, 
  comments.Text, 
  comments.Text, 
  comments.Text, 
  comments.CreationDate, 
  comments.PostId
from 
  comments
where comments.Id is not NULL
limit 29;
select  
  comments.PostId, 
  votes.UserId
from 
  postHistory
    inner join comments
        inner join votes
        on (comments.CreationDate = votes.CreationDate )
      inner join badges
            inner join posts
            on (badges.TagBased <= badges.TagBased)
          inner join votes
          on (posts.OwnerDisplayName = posts.OwnerDisplayName)
        inner join votes
        on (badges.Date < votes.CreationDate)
      on (votes.CreationDate >= comments.CreationDate)
    on (postHistory.CreationDate = votes.CreationDate )
where badges.Id = badges.UserId
limit 85;
select  
  postHistory.CreationDate, 
  votes.Id
from 
  postLinks
    inner join votes
            inner join postHistory
              inner join votes
              on (postHistory.Id = votes.Id )
            on (postHistory.RevisionGUID <= postHistory.ContentLicense)
          inner join postHistory
              inner join comments
              on (comments.CreationDate <= comments.CreationDate)
            inner join comments
            on (comments.ContentLicense < comments.ContentLicense)
          on (votes.CreationDate = comments.CreationDate)
        inner join badges
        on (votes.UserId < votes.VoteTypeId)
      inner join users
        inner join posts
        on (posts.OwnerDisplayName > users.DisplayName)
      on (users.CreationDate <= badges.Date)
    on (comments.CreationDate <= votes.CreationDate)
where posts.OwnerDisplayName is not NULL;
select  
  users.ProfileImageUrl, 
  users.AccountId, 
  users.CreationDate, 
  users.AboutMe, 
  users.WebsiteUrl, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.Id, 
  users.CreationDate, 
  users.DisplayName, 
  users.CreationDate, 
  users.WebsiteUrl
from 
  users
where users.Id is not NULL
limit 191;
select  
  postLinks.Id, 
  avg(
    cast(cast(null as float8) as float8)), 
  badges.Name, 
  badges.TagBased
from 
  posts
    inner join postLinks
          inner join badges
            inner join postLinks
              inner join posts
              on (postLinks.CreationDate <= postLinks.CreationDate)
            on (badges.Date < posts.CreationDate)
          on (postLinks.PostId < postLinks.PostId)
        inner join postLinks
          inner join badges
          on (badges.TagBased < badges.TagBased)
        on (postLinks.LinkTypeId < posts.Id)
      inner join votes
      on (votes.PostId < postLinks.LinkTypeId)
    on (posts.ParentId is not NULL)
where badges.TagBased < badges.TagBased
limit 84;
select  
  badges.Date, 
  badges.Id, 
  badges.Id, 
  badges.Name, 
  badges.UserId, 
  badges.Class, 
  max(
    cast(cast(null as inet) as inet)), 
  badges.Date, 
  badges.Id, 
  min(
    cast(cast(null as oid) as oid)), 
  badges.Name, 
  badges.Date
from 
  badges
where badges.Class is NULL
limit 148;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  votes.Id, 
  votes.CreationDate
from 
  votes
    inner join postLinks
        inner join badges
            inner join postLinks
            on (badges.Name <= badges.Name)
          inner join comments
          on (comments.ContentLicense < comments.Text)
        on (postLinks.LinkTypeId = badges.Id)
      inner join badges
      on (badges.TagBased < badges.TagBased)
    on (badges.Id is NULL)
where votes.Id is NULL
limit 71;
select  
  badges.UserId, 
  min(
    cast(users.AboutMe as text))
from 
  users
    inner join votes
      inner join badges
        inner join postLinks
        on (badges.Name >= badges.Name)
      on (votes.CreationDate = votes.CreationDate)
    on (votes.Id is NULL)
where users.DisplayName is NULL
limit 88;
select  
  votes.CreationDate, 
  votes.UserId, 
  votes.CreationDate
from 
  votes
where votes.CreationDate is NULL;
select  
  min(
    cast(cast(null as tid) as tid)), 
  badges.UserId, 
  badges.Date, 
  badges.TagBased, 
  badges.Date, 
  badges.TagBased, 
  badges.Name, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  badges
where badges.Class is not NULL
limit 24;
select  
  min(
    cast(cast(null as int2) as int2)), 
  badges.Id, 
  max(
    cast(84 as int4)), 
  badges.Name, 
  avg(
    cast(cast(null as int2) as int2)), 
  badges.Name, 
  badges.Class, 
  badges.Id, 
  badges.Date, 
  badges.Date, 
  badges.TagBased, 
  badges.TagBased, 
  badges.Date, 
  min(
    cast(badges.Date as "timestamp")), 
  min(
    cast(cast(null as money) as money)), 
  badges.Date
from 
  badges
where badges.Class is not NULL;
select  
  badges.Name, 
  badges.Date, 
  badges.Name, 
  min(
    cast(badges.Class as int8)), 
  badges.Date
from 
  badges
where badges.Date < badges.Date;
select  
  postHistory.Id
from 
  postHistory
        inner join posts
          inner join users
          on (users.WebsiteUrl < users.WebsiteUrl)
        on (posts.ContentLicense >= posts.Body)
      inner join votes
      on (users.ProfileImageUrl <= users.AccountId)
    inner join postLinks
        inner join votes
          inner join users
          on (users.Location <= users.WebsiteUrl)
        on (users.CreationDate = users.CreationDate)
      inner join users
      on (users.ProfileImageUrl >= users.ProfileImageUrl)
    on (postHistory.Id is not NULL)
where users.ProfileImageUrl > users.AccountId
limit 138;
select  
  votes.VoteTypeId, 
  votes.PostId, 
  votes.PostId, 
  votes.UserId, 
  votes.Id, 
  votes.PostId
from 
  votes
where votes.PostId is not NULL
limit 149;
select  
  comments.CreationDate
from 
  comments
    inner join comments
      inner join comments
      on (comments.PostId = comments.Id )
    on (comments.CreationDate is not NULL)
where comments.ContentLicense <= comments.ContentLicense;
select  
  comments.Text, 
  postHistory.CreationDate, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  badges.Date, 
  badges.Name, 
  postHistory.UserDisplayName, 
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  posts.CreationDate, 
  posts.Body, 
  comments.PostId, 
  min(
    cast(cast(null as tid) as tid)), 
  posts.OwnerUserId
from 
  comments
          inner join posts
          on (posts.Title < comments.UserDisplayName)
        inner join posts
              inner join badges
              on (badges.Date = posts.CreationDate)
            inner join comments
              inner join posts
              on (posts.Body = posts.Body)
            on (badges.UserId = comments.Id )
          inner join posts
              inner join postLinks
              on (posts.OwnerDisplayName <= posts.ContentLicense)
            inner join comments
            on (postLinks.CreationDate > comments.CreationDate)
          on (posts.Tags > posts.Body)
        on (comments.UserDisplayName = posts.ContentLicense)
      inner join users
      on (users.AccountId < users.AccountId)
    inner join postHistory
    on (posts.ContentLicense is NULL)
where comments.UserId is NULL
limit 149;
select  
  posts.Body, 
  min(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  posts
where posts.Title is NULL
limit 94;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  sum(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  postLinks
where postLinks.CreationDate > postLinks.CreationDate
limit 121;
select  
  badges.Date, 
  users.AccountId, 
  users.Id, 
  posts.Body, 
  users.DisplayName, 
  postHistory.Comment, 
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as oid) as oid)), 
  badges.UserId, 
  postHistory.ContentLicense, 
  avg(
    cast(82 as int4))
from 
  users
          inner join users
            inner join users
            on (users.CreationDate <= users.CreationDate)
          on (users.WebsiteUrl = users.DisplayName )
        inner join postHistory
        on (users.Location > users.AboutMe)
      inner join posts
        inner join postLinks
            inner join posts
              inner join comments
              on (posts.Tags <= posts.ContentLicense)
            on (comments.PostId > posts.AcceptedAnswerId)
          inner join votes
          on (posts.OwnerDisplayName > posts.ContentLicense)
        on (posts.OwnerUserId >= postLinks.Id)
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    inner join postHistory
        inner join badges
                inner join postHistory
                on (badges.TagBased > badges.TagBased)
              inner join comments
              on (badges.TagBased < badges.TagBased)
            inner join votes
              inner join posts
              on (posts.ContentLicense <= posts.ContentLicense)
            on (posts.Id < comments.UserId)
          inner join postHistory
          on (votes.UserId <= postHistory.Id)
        on (postHistory.CreationDate = postHistory.CreationDate )
      inner join votes
      on (votes.CreationDate >= postHistory.CreationDate)
    on (posts.OwnerUserId = comments.UserId)
where postHistory.PostId is NULL
limit 175;
select  
  postLinks.CreationDate
from 
  postLinks
where postLinks.LinkTypeId is NULL
limit 99;
select  
  postHistory.Text, 
  votes.VoteTypeId, 
  comments.CreationDate, 
  votes.Id, 
  postHistory.UserId, 
  comments.UserDisplayName, 
  avg(
    cast(comments.PostId as int8)), 
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.UserDisplayName, 
  postHistory.ContentLicense, 
  comments.PostId
from 
  postHistory
          inner join votes
            inner join comments
            on (comments.ContentLicense <= comments.Text)
          on (comments.UserDisplayName < postHistory.UserDisplayName)
        inner join comments
        on (postHistory.UserId <= votes.PostId)
      inner join votes
      on (votes.PostId >= votes.VoteTypeId)
    inner join postHistory
    on (postHistory.UserId is not NULL)
where postHistory.RevisionGUID = comments.UserDisplayName
limit 123;
select  
  postHistory.PostId, 
  postHistory.RevisionGUID
from 
  users
    inner join postHistory
    on (users.AccountId <= users.ProfileImageUrl)
where postHistory.Text is NULL
limit 98;
select  
  min(
    cast(badges.UserId as int8)), 
  badges.Id, 
  badges.UserId, 
  badges.TagBased, 
  badges.Id, 
  badges.TagBased, 
  badges.Date, 
  badges.TagBased, 
  badges.TagBased, 
  badges.Name, 
  badges.Class, 
  min(
    cast(badges.Class as int8)), 
  badges.Class
from 
  badges
    inner join badges
    on (badges.Name is not NULL)
where badges.Class >= badges.Id;
select  
  badges.UserId, 
  badges.UserId
from 
  badges
where badges.Name is not NULL
limit 46;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  users.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  comments.Id, 
  users.ProfileImageUrl, 
  min(
    cast(cast(null as date) as date)), 
  badges.UserId, 
  users.Location, 
  comments.UserId, 
  postLinks.CreationDate, 
  posts.CreationDate, 
  users.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId
from 
  postLinks
      inner join comments
            inner join users
            on (comments.PostId < comments.Id)
          inner join badges
          on (users.AccountId >= users.ProfileImageUrl)
        inner join comments
          inner join posts
          on (comments.ContentLicense > comments.ContentLicense)
        on (comments.PostId = posts.Id )
      on (comments.Id > badges.Class)
    inner join users
    on (posts.AcceptedAnswerId is not NULL)
where postLinks.RelatedPostId is not NULL;
select  
  posts.CreationDate, 
  posts.PostTypeId, 
  posts.CreationDate, 
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  posts
where posts.OwnerDisplayName is NULL
limit 139;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.Class
from 
  badges
where badges.Name > badges.Name;
select  
  users.DisplayName
from 
  users
      inner join postLinks
      on (postLinks.LinkTypeId = postLinks.PostId)
    inner join postLinks
        inner join users
        on (users.ProfileImageUrl >= users.ProfileImageUrl)
      inner join posts
        inner join posts
          inner join users
            inner join postHistory
                inner join badges
                  inner join postLinks
                  on (badges.TagBased < badges.TagBased)
                on (postLinks.PostId > postLinks.LinkTypeId)
              inner join users
                  inner join posts
                  on (users.CreationDate <= posts.CreationDate)
                inner join postLinks
                on (posts.OwnerUserId = postLinks.Id )
              on (badges.TagBased <= badges.TagBased)
            on (users.ProfileImageUrl <= users.AccountId)
          on (postHistory.UserDisplayName = badges.Name)
        on (postLinks.CreationDate < postLinks.CreationDate)
      on (badges.TagBased > badges.TagBased)
    on (badges.TagBased >= badges.TagBased)
where badges.TagBased = badges.TagBased
limit 68;
select  
  posts.Tags, 
  posts.Tags, 
  posts.PostTypeId, 
  posts.Body, 
  posts.ParentId
from 
  posts
where posts.CreationDate >= posts.CreationDate
limit 93;
select  
  comments.PostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  comments.ContentLicense, 
  comments.Id, 
  postLinks.PostId, 
  postLinks.PostId, 
  comments.ContentLicense, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  votes.CreationDate, 
  max(
    cast(cast(null as oid) as oid)), 
  badges.Class, 
  badges.Date, 
  badges.Id, 
  badges.UserId
from 
  votes
    inner join users
      inner join comments
          inner join badges
            inner join postLinks
                inner join posts
                on (posts.Tags <= posts.Body)
              inner join badges
              on (badges.TagBased > badges.TagBased)
            on (badges.Id >= badges.Id)
          on (badges.Date <= postLinks.CreationDate)
        inner join postLinks
        on (posts.ContentLicense = comments.UserDisplayName)
      on (posts.OwnerUserId > postLinks.RelatedPostId)
    on (comments.UserDisplayName is not NULL)
where users.ProfileImageUrl is NULL
limit 83;
select  
  users.Id, 
  users.CreationDate, 
  users.AboutMe, 
  users.AboutMe, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  users
where users.CreationDate is NULL;
select  
  max(
    cast(cast(null as float8) as float8)), 
  badges.Id, 
  badges.Name
from 
  badges
where badges.Date is not NULL
limit 151;
select  
  avg(
    cast(users.Id as int8)), 
  users.DisplayName
from 
  users
where users.Id is not NULL;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  count(
    cast(postLinks.RelatedPostId as int8))
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 18;
select  
  badges.Id, 
  badges.Id, 
  badges.Class, 
  badges.Class, 
  badges.Date, 
  badges.Name
from 
  badges
where badges.Class is not NULL
limit 98;
select  
  votes.UserId, 
  votes.PostId, 
  votes.CreationDate, 
  votes.UserId
from 
  votes
where votes.CreationDate is not NULL
limit 39;
select distinct 
  postHistory.UserId, 
  postHistory.ContentLicense, 
  postHistory.UserDisplayName, 
  postHistory.Id
from 
  postHistory
where postHistory.CreationDate >= postHistory.CreationDate
limit 70;
select  
  postHistory.Id, 
  postHistory.Text, 
  postHistory.PostId, 
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  postHistory
where postHistory.ContentLicense is NULL;
select  
  badges.UserId, 
  badges.UserId, 
  max(
    cast(cast(null as inet) as inet)), 
  badges.Id, 
  count(*), 
  badges.TagBased
from 
  badges
where badges.UserId is not NULL;
select  
  votes.Id, 
  votes.PostId, 
  sum(
    cast(81 as int4)), 
  votes.Id, 
  votes.Id, 
  votes.PostId, 
  votes.PostId, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.PostId, 
  votes.UserId, 
  sum(
    cast(votes.VoteTypeId as int8))
from 
  votes
where votes.PostId is not NULL
limit 97;
select  
  postHistory.PostId
from 
  posts
        inner join badges
        on (posts.OwnerDisplayName < posts.Title)
      inner join postHistory
        inner join postHistory
        on (postHistory.PostHistoryTypeId <= postHistory.PostHistoryTypeId)
      on (postHistory.Id < badges.UserId)
    inner join posts
    on (posts.OwnerUserId is NULL)
where postHistory.PostHistoryTypeId is not NULL
limit 27;
select  
  badges.Id, 
  badges.UserId, 
  min(
    cast(badges.Name as text))
from 
  badges
      inner join votes
      on (badges.Date = votes.CreationDate )
    inner join postLinks
    on (badges.Name = badges.Name)
where postLinks.CreationDate is not NULL
limit 120;
select  
  postLinks.Id, 
  postLinks.CreationDate, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.ProfileImageUrl, 
  postLinks.RelatedPostId, 
  users.AboutMe, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  users.AboutMe, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.PostId, 
  users.CreationDate, 
  sum(
    cast(postLinks.Id as int8)), 
  votes.VoteTypeId, 
  postLinks.RelatedPostId
from 
  users
    inner join postLinks
        inner join postLinks
          inner join users
          on (users.AccountId > users.AccountId)
        on (users.DisplayName > users.AboutMe)
      inner join votes
      on (votes.VoteTypeId <= votes.UserId)
    on (postLinks.PostId is not NULL)
where votes.PostId is not NULL
limit 46;
select  
  users.Location, 
  users.WebsiteUrl, 
  users.DisplayName, 
  users.Location, 
  users.AccountId, 
  users.AboutMe
from 
  users
where users.Id > users.Id
limit 87;
select  
  comments.PostId, 
  postHistory.ContentLicense, 
  comments.UserId, 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as date) as date)), 
  comments.UserDisplayName
from 
  comments
            inner join badges
            on (comments.ContentLicense = badges.Name )
          inner join posts
              inner join comments
              on (posts.ContentLicense = comments.ContentLicense )
            inner join comments
              inner join postHistory
              on (postHistory.Comment >= comments.ContentLicense)
            on (postHistory.CreationDate <= comments.CreationDate)
          on (posts.OwnerDisplayName > comments.Text)
        inner join comments
          inner join postLinks
            inner join votes
            on (votes.PostId > votes.VoteTypeId)
          on (votes.VoteTypeId < comments.PostId)
        on (badges.Id <= postLinks.LinkTypeId)
      inner join posts
          inner join postHistory
              inner join postLinks
              on (postHistory.UserId > postLinks.Id)
            inner join votes
            on (postLinks.CreationDate <= postHistory.CreationDate)
          on (votes.CreationDate < posts.CreationDate)
        inner join postLinks
        on (postLinks.RelatedPostId > postHistory.PostId)
      on (comments.CreationDate <= comments.CreationDate)
    inner join comments
            inner join users
            on (users.AboutMe = users.Location)
          inner join postLinks
            inner join postHistory
              inner join postHistory
                inner join users
                  inner join posts
                  on (users.CreationDate <= users.CreationDate)
                on (users.ProfileImageUrl < users.ProfileImageUrl)
              on (users.AccountId = users.ProfileImageUrl)
            on (postHistory.CreationDate <= postHistory.CreationDate)
          on (comments.CreationDate <= postLinks.CreationDate)
        inner join votes
        on (comments.CreationDate = votes.CreationDate )
      inner join postHistory
        inner join postHistory
        on (postHistory.PostHistoryTypeId >= postHistory.PostId)
      on (votes.UserId < votes.VoteTypeId)
    on (postHistory.PostHistoryTypeId is NULL)
where comments.UserId is not NULL
limit 102;
select  
  comments.CreationDate, 
  comments.Text, 
  postHistory.RevisionGUID, 
  comments.UserDisplayName
from 
  postHistory
      inner join comments
      on (comments.Id < postHistory.PostHistoryTypeId)
    inner join comments
    on (postHistory.CreationDate >= postHistory.CreationDate)
where postHistory.PostHistoryTypeId > comments.PostId
limit 57;
select  
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.PostId, 
  comments.PostId, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  comments.ContentLicense, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  comments.CreationDate
from 
  comments
where comments.Id is not NULL
limit 102;
select  
  users.ProfileImageUrl, 
  users.AccountId, 
  users.WebsiteUrl, 
  users.Id, 
  users.WebsiteUrl, 
  users.Location, 
  users.AccountId, 
  users.DisplayName, 
  users.Id, 
  users.DisplayName, 
  max(
    cast(users.AboutMe as text)), 
  users.ProfileImageUrl, 
  users.AccountId, 
  users.Id, 
  users.AboutMe, 
  users.AboutMe, 
  max(
    cast(users.ProfileImageUrl as float8)), 
  users.Location, 
  users.Location, 
  users.WebsiteUrl, 
  users.AboutMe, 
  users.Location, 
  users.Id
from 
  users
where users.DisplayName is not NULL;
select  
  comments.ContentLicense, 
  comments.Id, 
  comments.Text, 
  badges.Date, 
  max(
    cast(73 as int4))
from 
  users
      inner join postHistory
      on (users.ProfileImageUrl = users.AccountId)
    inner join badges
          inner join comments
          on (badges.Class <= comments.Id)
        inner join users
        on (badges.TagBased = badges.TagBased)
      inner join comments
        inner join comments
        on (comments.ContentLicense <= comments.UserDisplayName)
      on (badges.TagBased > badges.TagBased)
    on (postHistory.ContentLicense is not NULL)
where users.Id is not NULL
limit 34;
select  
  badges.Class, 
  badges.Date
from 
  badges
where badges.Date is not NULL
limit 128;
select  
  posts.OwnerUserId, 
  badges.Name, 
  badges.UserId, 
  posts.ContentLicense, 
  posts.Tags, 
  posts.Title, 
  badges.UserId, 
  posts.Tags, 
  badges.UserId, 
  posts.Tags, 
  badges.Name, 
  badges.TagBased, 
  badges.UserId, 
  posts.CreationDate, 
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  postLinks
    inner join posts
          inner join posts
          on (posts.Tags = posts.Title)
        inner join badges
        on (posts.CreationDate <= badges.Date)
      inner join posts
          inner join badges
            inner join badges
            on (badges.TagBased < badges.TagBased)
          on (badges.Date = badges.Date)
        inner join badges
        on (badges.Id > badges.Id)
      on (badges.UserId = badges.Id )
    on (postLinks.RelatedPostId is NULL)
where badges.Name is not NULL;
select  
  postHistory.CreationDate, 
  postHistory.CreationDate, 
  postHistory.RevisionGUID, 
  sum(
    cast(cast(null as float8) as float8)), 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  max(
    cast(cast(null as inet) as inet))
from 
  postHistory
where postHistory.UserId is not NULL;
select  
  postLinks.RelatedPostId, 
  posts.ParentId, 
  postLinks.CreationDate, 
  users.Id, 
  avg(
    cast(users.ProfileImageUrl as float8)), 
  posts.Body
from 
  postHistory
    inner join posts
        inner join posts
        on (posts.Title = posts.OwnerDisplayName )
      inner join users
        inner join posts
          inner join postLinks
          on (posts.CreationDate < posts.CreationDate)
        on (users.AccountId > users.AccountId)
      on (posts.CreationDate = posts.CreationDate)
    on (posts.ContentLicense is not NULL)
where postHistory.Text > postHistory.UserDisplayName
limit 74;
select  
  posts.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  votes.VoteTypeId, 
  votes.UserId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id, 
  users.DisplayName, 
  postLinks.CreationDate
from 
  posts
        inner join postLinks
          inner join postLinks
          on (postLinks.CreationDate <= postLinks.CreationDate)
        on (postLinks.PostId > postLinks.Id)
      inner join badges
        inner join votes
        on (votes.CreationDate > votes.CreationDate)
      on (badges.TagBased < badges.TagBased)
    inner join votes
        inner join badges
          inner join postLinks
              inner join postLinks
              on (postLinks.Id > postLinks.LinkTypeId)
            inner join posts
            on (postLinks.PostId <= postLinks.LinkTypeId)
          on (postLinks.LinkTypeId > posts.Id)
        on (votes.Id = badges.Id )
      inner join badges
        inner join postHistory
          inner join postLinks
            inner join users
            on (postLinks.CreationDate >= postLinks.CreationDate)
          on (users.AccountId <= users.AccountId)
        on (badges.TagBased = badges.TagBased)
      on (badges.TagBased >= badges.TagBased)
    on (postLinks.Id is not NULL)
where users.ProfileImageUrl <= users.AccountId
limit 148;
select  
  postHistory.ContentLicense, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.CreationDate is NULL
limit 126;
select  
  badges.Class
from 
  badges
where badges.Id is not NULL
limit 44;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.Comment
from 
  postHistory
where postHistory.CreationDate < postHistory.CreationDate
limit 40;
select  
  posts.PostTypeId, 
  posts.ContentLicense, 
  posts.AcceptedAnswerId, 
  posts.AcceptedAnswerId, 
  posts.ContentLicense, 
  sum(
    cast(posts.AcceptedAnswerId as int8)), 
  posts.PostTypeId, 
  posts.PostTypeId
from 
  posts
where posts.Title >= posts.Body;
select  
  comments.Text, 
  comments.PostId
from 
  comments
where comments.Id is not NULL
limit 160;
select  
  postHistory.Id, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.DisplayName, 
  comments.CreationDate, 
  badges.TagBased
from 
  postHistory
            inner join posts
                inner join users
                on (users.ProfileImageUrl = users.AccountId)
              inner join comments
              on (posts.CreationDate = comments.CreationDate)
            on (postHistory.CreationDate <= comments.CreationDate)
          inner join comments
              inner join postHistory
              on (postHistory.ContentLicense >= postHistory.UserDisplayName)
            inner join postHistory
              inner join postHistory
              on (postHistory.RevisionGUID <= postHistory.Comment)
            on (postHistory.UserId <= comments.UserId)
          on (postHistory.Id > postHistory.Id)
        inner join comments
        on (users.AccountId <= users.AccountId)
      inner join posts
          inner join badges
          on (posts.OwnerDisplayName >= badges.Name)
        inner join posts
        on (posts.Tags < posts.ContentLicense)
      on (comments.Text = comments.ContentLicense)
    inner join postLinks
    on (postHistory.PostId > postHistory.UserId)
where users.AboutMe is NULL
limit 83;
select  
  comments.Id, 
  comments.CreationDate, 
  min(
    cast(cast(null as tid) as tid))
from 
  comments
where comments.CreationDate > comments.CreationDate
limit 71;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  postHistory.PostHistoryTypeId, 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  max(
    cast(cast(null as inet) as inet))
from 
  postHistory
where postHistory.RevisionGUID is NULL;
select  
  users.AccountId, 
  users.WebsiteUrl, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.RelatedPostId
from 
  posts
    inner join badges
        inner join users
            inner join badges
                inner join postLinks
                on (postLinks.PostId < badges.Class)
              inner join users
              on (users.AccountId = users.AccountId)
            on (badges.Class >= users.Id)
          inner join users
          on (badges.Class <= postLinks.RelatedPostId)
        on (users.WebsiteUrl > users.WebsiteUrl)
      inner join comments
        inner join comments
        on (comments.Text = comments.ContentLicense )
      on (comments.UserDisplayName > users.Location)
    on (users.DisplayName is not NULL)
where postLinks.RelatedPostId is not NULL
limit 124;
select  
  users.ProfileImageUrl, 
  users.Location, 
  users.WebsiteUrl, 
  users.Id, 
  posts.CreationDate, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  comments
    inner join users
          inner join badges
          on (users.Id >= badges.Class)
        inner join users
            inner join badges
            on (users.DisplayName = badges.Name )
          inner join posts
          on (users.WebsiteUrl <= users.Location)
        on (badges.TagBased < badges.TagBased)
      inner join posts
      on (users.ProfileImageUrl > users.AccountId)
    on (posts.ContentLicense is not NULL)
where users.WebsiteUrl is not NULL
limit 147;
select  
  users.Location, 
  postLinks.LinkTypeId, 
  posts.Tags, 
  posts.OwnerUserId, 
  posts.Body, 
  posts.Tags, 
  comments.ContentLicense, 
  comments.Text, 
  comments.PostId
from 
  posts
          inner join users
          on (posts.PostTypeId > posts.Id)
        inner join posts
        on (posts.Id = posts.Id )
      inner join posts
        inner join postLinks
            inner join postLinks
            on (postLinks.CreationDate >= postLinks.CreationDate)
          inner join comments
          on (postLinks.PostId = comments.Id )
        on (postLinks.LinkTypeId = postLinks.Id)
      on (posts.Tags < posts.Body)
    inner join postHistory
      inner join postHistory
          inner join posts
          on (postHistory.RevisionGUID = postHistory.Text)
        inner join comments
            inner join users
            on (comments.CreationDate > comments.CreationDate)
          inner join postHistory
          on (postHistory.Comment <= users.AboutMe)
        on (posts.Body = comments.ContentLicense )
      on (comments.CreationDate >= comments.CreationDate)
    on (posts.ContentLicense is NULL)
where comments.ContentLicense is NULL;
select  
  badges.Name, 
  badges.UserId, 
  badges.Name, 
  badges.TagBased
from 
  badges
where badges.TagBased is NULL;
select  
  comments.Text
from 
  votes
      inner join comments
      on (votes.CreationDate <= comments.CreationDate)
    inner join badges
          inner join votes
              inner join postLinks
              on (votes.Id < postLinks.Id)
            inner join postHistory
            on (postLinks.CreationDate < votes.CreationDate)
          on (badges.Id = postHistory.Id )
        inner join votes
        on (votes.PostId = votes.Id )
      inner join comments
      on (postHistory.Id <= postHistory.Id)
    on (comments.UserId is not NULL)
where comments.UserDisplayName is NULL
limit 139;
select  
  users.Id
from 
  users
where users.AboutMe is not NULL
limit 64;
select  
  posts.ParentId, 
  posts.CreationDate, 
  posts.ContentLicense, 
  posts.Body, 
  posts.PostTypeId, 
  posts.Tags, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(posts.CreationDate as "timestamp")), 
  posts.Title, 
  posts.OwnerUserId, 
  posts.Tags, 
  posts.PostTypeId, 
  posts.OwnerDisplayName, 
  posts.CreationDate
from 
  posts
    inner join posts
    on (posts.Body = posts.OwnerDisplayName )
where posts.Title is not NULL
limit 99;
select  
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.RevisionGUID is not NULL
limit 68;
select  
  users.ProfileImageUrl, 
  votes.CreationDate, 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as money) as money)), 
  comments.Text, 
  comments.Text, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.UserId, 
  sum(
    cast(cast(null as float4) as float4)), 
  users.AboutMe, 
  users.CreationDate
from 
  users
      inner join comments
      on (users.ProfileImageUrl >= users.AccountId)
    inner join votes
    on (comments.UserDisplayName is not NULL)
where votes.VoteTypeId is not NULL
limit 71;
select  
  badges.Id, 
  badges.TagBased, 
  badges.Name, 
  badges.Name
from 
  badges
where badges.UserId is not NULL
limit 144;
select  
  posts.Body, 
  posts.OwnerDisplayName, 
  posts.OwnerDisplayName, 
  posts.OwnerDisplayName, 
  posts.Tags, 
  postHistory.ContentLicense
from 
  posts
    inner join postHistory
    on (posts.OwnerUserId is not NULL)
where posts.AcceptedAnswerId >= posts.OwnerUserId
limit 60;
select  
  postHistory.UserDisplayName, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.UserDisplayName, 
  postHistory.Id, 
  postHistory.UserId
from 
  postHistory
where postHistory.UserDisplayName < postHistory.RevisionGUID;
select  
  votes.CreationDate
from 
  votes
    inner join postLinks
    on (postLinks.CreationDate > postLinks.CreationDate)
where postLinks.PostId is not NULL
limit 141;
select  
  users.CreationDate, 
  users.Location, 
  users.AccountId, 
  users.ProfileImageUrl, 
  users.DisplayName, 
  users.DisplayName, 
  users.Id, 
  users.Id, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.DisplayName
from 
  users
where users.DisplayName is not NULL
limit 128;
select  
  badges.Date, 
  badges.UserId, 
  badges.Class, 
  badges.Name
from 
  badges
where badges.UserId <= badges.UserId
limit 81;
select  
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  votes.VoteTypeId
from 
  votes
    inner join postLinks
    on (votes.CreationDate = postLinks.CreationDate )
where votes.Id is not NULL
limit 30;
select  
  users.AccountId, 
  users.Location
from 
  users
where users.Id < users.Id;
select  
  postHistory.Text, 
  votes.VoteTypeId, 
  postHistory.Id
from 
  comments
    inner join postLinks
          inner join badges
            inner join postHistory
                inner join comments
                on (postHistory.Text = postHistory.RevisionGUID)
              inner join votes
              on (postHistory.UserDisplayName = comments.Text)
            on (postHistory.CreationDate < votes.CreationDate)
          on (postHistory.PostHistoryTypeId = votes.Id)
        inner join users
          inner join posts
          on (posts.CreationDate = users.CreationDate)
        on (badges.TagBased > badges.TagBased)
      inner join postHistory
      on (users.ProfileImageUrl <= users.ProfileImageUrl)
    on (comments.CreationDate is NULL)
where users.ProfileImageUrl > users.ProfileImageUrl
limit 71;
select  
  badges.TagBased, 
  avg(
    cast(postHistory.PostHistoryTypeId as int8)), 
  votes.PostId, 
  posts.Body, 
  posts.OwnerUserId, 
  badges.Class, 
  max(
    cast(cast(null as tid) as tid)), 
  votes.UserId, 
  badges.Id, 
  postHistory.Id, 
  votes.PostId, 
  badges.Name, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posts.Body, 
  badges.Date, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Class, 
  min(
    cast(cast(null as float8) as float8)), 
  badges.Name, 
  posts.ContentLicense, 
  badges.Id, 
  max(
    cast(cast(null as date) as date)), 
  postHistory.UserDisplayName, 
  badges.Date, 
  badges.Class, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  avg(
    cast(cast(null as float8) as float8))
from 
  badges
        inner join badges
        on (badges.Id <= badges.Class)
      inner join votes
      on (badges.Name > badges.Name)
    inner join badges
        inner join posts
        on (posts.Tags = posts.Title)
      inner join postHistory
      on (badges.Date = posts.CreationDate)
    on (posts.Id is NULL)
where posts.PostTypeId is not NULL;
select  
  comments.Id, 
  comments.Text, 
  comments.ContentLicense, 
  comments.Text, 
  comments.PostId, 
  comments.CreationDate, 
  comments.UserId, 
  comments.Id, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  min(
    cast(2 as int4)), 
  comments.Id, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.Text, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
where comments.UserDisplayName > comments.Text;
select  
  postLinks.LinkTypeId, 
  votes.VoteTypeId, 
  postLinks.LinkTypeId
from 
  votes
      inner join comments
      on (comments.CreationDate = votes.CreationDate)
    inner join votes
      inner join postLinks
        inner join comments
          inner join postLinks
          on (comments.Text <= comments.UserDisplayName)
        on (comments.ContentLicense <= comments.Text)
      on (votes.CreationDate < votes.CreationDate)
    on (postLinks.PostId = postLinks.PostId)
where votes.VoteTypeId is NULL;
select  
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.Id
from 
  postLinks
where postLinks.Id is not NULL
limit 56;
select  
  badges.Id, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as tid) as tid)), 
  posts.OwnerUserId, 
  votes.VoteTypeId, 
  votes.UserId
from 
  votes
          inner join posts
          on (posts.Tags >= posts.Tags)
        inner join badges
            inner join votes
            on (badges.TagBased > badges.TagBased)
          inner join postLinks
          on (votes.CreationDate = postLinks.CreationDate )
        on (posts.Id = posts.ParentId)
      inner join postHistory
      on (badges.TagBased > badges.TagBased)
    inner join posts
        inner join votes
            inner join posts
            on (posts.Id > posts.AcceptedAnswerId)
          inner join postLinks
          on (postLinks.RelatedPostId = votes.PostId)
        on (posts.CreationDate < posts.CreationDate)
      inner join badges
        inner join posts
          inner join comments
          on (posts.CreationDate > posts.CreationDate)
        on (badges.TagBased > badges.TagBased)
      on (posts.Body = badges.Name )
    on (posts.CreationDate >= posts.CreationDate)
where votes.VoteTypeId is not NULL;
select  
  votes.Id, 
  comments.ContentLicense, 
  postLinks.LinkTypeId, 
  votes.CreationDate
from 
  users
    inner join postHistory
          inner join comments
          on (postHistory.Text < postHistory.Text)
        inner join postLinks
          inner join postHistory
            inner join votes
            on (postHistory.UserDisplayName > postHistory.Text)
          on (postLinks.Id = postHistory.Id )
        on (postHistory.CreationDate = votes.CreationDate)
      inner join users
      on (postHistory.PostId = votes.Id)
    on (users.DisplayName = comments.ContentLicense )
where users.ProfileImageUrl is NULL;
select  
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is NULL;
select  
  badges.Id, 
  badges.Id
from 
  badges
where badges.UserId is not NULL
limit 86;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  badges.UserId, 
  badges.Date, 
  badges.Date
from 
  badges
where badges.Date is not NULL;
select  
  posts.Id, 
  posts.PostTypeId, 
  comments.UserId, 
  votes.Id
from 
  votes
      inner join posts
          inner join postHistory
          on (posts.Id = posts.ParentId)
        inner join comments
        on (postHistory.UserDisplayName >= postHistory.ContentLicense)
      on (postHistory.CreationDate < posts.CreationDate)
    inner join posts
    on (posts.Body < posts.OwnerDisplayName)
where posts.Title is NULL;
select  
  badges.UserId
from 
  badges
where badges.UserId is not NULL
limit 140;
select  
  users.AboutMe, 
  users.WebsiteUrl, 
  users.AboutMe, 
  users.AboutMe, 
  users.WebsiteUrl, 
  users.Id, 
  users.ProfileImageUrl
from 
  users
where users.CreationDate > users.CreationDate
limit 62;
select  
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as oid) as oid)), 
  votes.VoteTypeId, 
  votes.UserId, 
  min(
    cast(votes.CreationDate as "timestamp")), 
  votes.VoteTypeId, 
  votes.UserId, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  votes
where votes.Id is not NULL
limit 172;
select  
  comments.Id, 
  comments.Text, 
  comments.UserId
from 
  comments
where comments.Id is not NULL
limit 148;
select  
  max(
    cast(cast(null as timetz) as timetz)), 
  votes.VoteTypeId, 
  votes.Id
from 
  comments
    inner join votes
          inner join votes
            inner join users
              inner join users
              on (users.Location <= users.Location)
            on (users.AccountId <= users.AccountId)
          on (votes.CreationDate = users.CreationDate)
        inner join postHistory
        on (votes.VoteTypeId < votes.PostId)
      inner join comments
      on (votes.VoteTypeId > votes.PostId)
    on (users.ProfileImageUrl <= users.ProfileImageUrl)
where users.AboutMe is not NULL
limit 104;
select  
  users.AccountId, 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.AccountId, 
  users.AccountId, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  users
where users.Id is NULL
limit 113;
select  
  votes.VoteTypeId, 
  comments.Id, 
  users.Location, 
  comments.CreationDate, 
  comments.PostId, 
  users.ProfileImageUrl, 
  min(
    cast(users.AccountId as float8))
from 
  users
        inner join comments
        on (users.AboutMe = users.AboutMe)
      inner join users
      on (comments.ContentLicense = users.DisplayName )
    inner join votes
    on (votes.PostId is NULL)
where users.AccountId is NULL
limit 71;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.RelatedPostId is NULL;
select  
  votes.PostId, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.Id, 
  votes.UserId, 
  votes.UserId
from 
  votes
where votes.Id is NULL
limit 83;
select  
  badges.Id, 
  badges.TagBased, 
  badges.UserId
from 
  badges
where badges.TagBased > badges.TagBased
limit 70;
select  
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.Text, 
  comments.PostId, 
  max(
    cast(cast(null as "time") as "time")), 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.PostId, 
  comments.Id, 
  comments.UserId, 
  comments.ContentLicense, 
  min(
    cast(cast(null as int2) as int2)), 
  comments.ContentLicense, 
  comments.PostId, 
  comments.PostId, 
  comments.PostId
from 
  comments
where comments.Id is NULL;
select  
  min(
    cast(cast(null as date) as date)), 
  badges.TagBased, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.Name, 
  badges.Class, 
  badges.TagBased, 
  badges.UserId, 
  badges.Name, 
  badges.Date, 
  badges.Name, 
  badges.UserId, 
  badges.Class, 
  badges.TagBased
from 
  badges
where badges.Date is not NULL
limit 188;
select  
  postLinks.CreationDate
from 
  postLinks
      inner join users
      on (users.ProfileImageUrl >= users.AccountId)
    inner join users
    on (users.Id < postLinks.PostId)
where users.AccountId <= users.AccountId
limit 86;
select  
  postLinks.Id, 
  badges.UserId, 
  badges.TagBased, 
  users.AccountId, 
  badges.Name, 
  badges.TagBased, 
  users.AccountId, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as float4) as float4)), 
  badges.Class, 
  badges.Date, 
  badges.UserId, 
  postLinks.LinkTypeId, 
  users.WebsiteUrl
from 
  badges
      inner join badges
          inner join postLinks
              inner join users
              on (postLinks.LinkTypeId = users.Id )
            inner join users
            on (users.Id < users.Id)
          on (badges.Id = postLinks.Id )
        inner join badges
        on (badges.TagBased > badges.TagBased)
      on (users.AboutMe < users.AboutMe)
    inner join votes
    on (votes.Id is NULL)
where votes.VoteTypeId is NULL
limit 163;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  comments.Id, 
  comments.UserId, 
  comments.Id, 
  comments.PostId, 
  comments.UserDisplayName, 
  avg(
    cast(cast(null as int2) as int2)), 
  comments.UserId, 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  comments
where comments.ContentLicense is not NULL
limit 125;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postHistory.PostHistoryTypeId, 
  postLinks.PostId, 
  min(
    cast(postHistory.ContentLicense as text)), 
  postHistory.CreationDate, 
  postHistory.UserId
from 
  postHistory
      inner join postLinks
      on (postHistory.CreationDate >= postLinks.CreationDate)
    inner join postLinks
    on (postLinks.CreationDate is NULL)
where postLinks.CreationDate = postLinks.CreationDate
limit 46;
select  
  comments.UserId, 
  votes.UserId
from 
  comments
    inner join votes
    on (comments.Id is not NULL)
where votes.UserId is not NULL
limit 65;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  comments.CreationDate
from 
  comments
where comments.Id < comments.Id
limit 169;
select  
  badges.Id, 
  votes.PostId, 
  badges.Id, 
  posts.AcceptedAnswerId
from 
  votes
            inner join votes
            on (votes.Id <= votes.VoteTypeId)
          inner join badges
          on (votes.UserId >= votes.VoteTypeId)
        inner join badges
          inner join users
          on (badges.Class = users.Id )
        on (votes.VoteTypeId = users.Id )
      inner join comments
      on (badges.Date = comments.CreationDate )
    inner join posts
    on (users.ProfileImageUrl <= users.AccountId)
where badges.Id is not NULL
limit 25;
select  
  users.CreationDate
from 
  comments
    inner join users
          inner join votes
          on (users.CreationDate < users.CreationDate)
        inner join postLinks
            inner join votes
            on (postLinks.CreationDate < votes.CreationDate)
          inner join postLinks
            inner join votes
              inner join comments
                  inner join users
                  on (users.WebsiteUrl <= users.DisplayName)
                inner join badges
                  inner join votes
                  on (badges.Name >= badges.Name)
                on (users.ProfileImageUrl >= users.AccountId)
              on (users.WebsiteUrl = comments.Text)
            on (users.AboutMe < badges.Name)
          on (users.Id <= postLinks.PostId)
        on (badges.UserId >= votes.UserId)
      inner join comments
      on (comments.ContentLicense <= users.DisplayName)
    on (users.ProfileImageUrl is NULL)
where postLinks.Id is not NULL;
select  
  users.WebsiteUrl, 
  users.Location, 
  users.DisplayName, 
  users.DisplayName, 
  users.AboutMe
from 
  users
where users.WebsiteUrl is NULL
limit 181;
select  
  posts.Tags, 
  posts.OwnerUserId, 
  posts.AcceptedAnswerId, 
  posts.OwnerDisplayName
from 
  posts
where posts.PostTypeId is not NULL
limit 187;
select  
  comments.Text, 
  comments.PostId, 
  comments.CreationDate, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.Id, 
  comments.Id, 
  comments.Id, 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.CreationDate, 
  comments.Id, 
  comments.Id, 
  comments.UserId, 
  comments.Id, 
  comments.Text, 
  min(
    cast(cast(null as timetz) as timetz)), 
  comments.PostId, 
  comments.UserDisplayName, 
  comments.PostId
from 
  comments
where comments.PostId >= comments.PostId
limit 149;
select  
  badges.UserId
from 
  badges
where badges.UserId is not NULL
limit 89;
select  
  postHistory.Comment, 
  sum(
    cast(cast(null as float4) as float4)), 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as int2) as int2)), 
  sum(
    cast(postHistory.PostHistoryTypeId as int8)), 
  avg(
    cast(47 as int4)), 
  postHistory.CreationDate, 
  min(
    cast(cast(null as float4) as float4))
from 
  postHistory
where postHistory.CreationDate is not NULL
limit 77;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 172;
select  
  comments.UserDisplayName
from 
  comments
where comments.Text is NULL
limit 142;
select  
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.Id, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  votes
    inner join postHistory
    on (votes.VoteTypeId = postHistory.Id )
where postHistory.UserId < votes.UserId
limit 91;
select  
  badges.Date, 
  postHistory.PostId, 
  badges.Date, 
  badges.Date, 
  postHistory.PostHistoryTypeId, 
  badges.UserId, 
  votes.CreationDate
from 
  badges
    inner join postHistory
      inner join votes
      on (postHistory.RevisionGUID < postHistory.Comment)
    on (postHistory.Comment is NULL)
where postHistory.RevisionGUID >= postHistory.Text
limit 74;
select  
  comments.Id
from 
  comments
    inner join comments
    on (comments.UserId = comments.Id )
where comments.ContentLicense is NULL
limit 89;
select  
  badges.TagBased, 
  badges.UserId
from 
  badges
where badges.Name < badges.Name
limit 113;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  users.AboutMe, 
  users.DisplayName, 
  users.Location, 
  users.CreationDate, 
  users.DisplayName, 
  users.AboutMe, 
  users.Id, 
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(users.Id as int8)), 
  users.DisplayName, 
  users.AccountId, 
  users.AboutMe, 
  users.Location, 
  users.Location, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
where users.Location = users.AboutMe;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  comments.UserDisplayName, 
  comments.Text
from 
  comments
where comments.PostId is NULL
limit 173;
select  
  votes.UserId, 
  postHistory.Id
from 
  postHistory
    inner join votes
    on (votes.Id is not NULL)
where postHistory.Comment is not NULL;
select  
  comments.CreationDate
from 
  comments
where comments.UserDisplayName < comments.UserDisplayName;
select  
  badges.Date, 
  badges.Class, 
  badges.Name, 
  badges.Class, 
  badges.Name, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  badges.Date
from 
  badges
where badges.UserId <= badges.UserId;
select  
  users.ProfileImageUrl, 
  users.Id
from 
  badges
        inner join posts
          inner join postHistory
              inner join posts
              on (posts.OwnerUserId < posts.AcceptedAnswerId)
            inner join postLinks
            on (postHistory.UserId = postLinks.Id )
          on (posts.ContentLicense < posts.OwnerDisplayName)
        on (posts.Body <= badges.Name)
      inner join users
      on (posts.AcceptedAnswerId = users.Id )
    inner join badges
      inner join posts
        inner join users
          inner join postLinks
          on (users.ProfileImageUrl < users.AccountId)
        on (postLinks.CreationDate <= postLinks.CreationDate)
      on (badges.UserId = users.Id )
    on (posts.AcceptedAnswerId is NULL)
where badges.UserId is not NULL
limit 96;
select  
  posts.Tags, 
  posts.ParentId
from 
  votes
        inner join posts
        on (votes.UserId = posts.Id )
      inner join postLinks
      on (postLinks.CreationDate < posts.CreationDate)
    inner join comments
    on (comments.CreationDate >= postLinks.CreationDate)
where votes.CreationDate is NULL
limit 87;
select  
  users.ProfileImageUrl
from 
  users
    inner join users
    on (users.CreationDate is not NULL)
where users.Location is NULL
limit 94;
select  
  postHistory.Text, 
  postHistory.UserId, 
  posts.PostTypeId, 
  posts.OwnerDisplayName, 
  postHistory.UserDisplayName, 
  posts.Id
from 
  posts
    inner join postHistory
    on (posts.OwnerUserId is NULL)
where posts.AcceptedAnswerId is NULL
limit 135;
select  
  users.DisplayName, 
  users.Id, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.Id
from 
  users
where users.Location is NULL
limit 150;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  votes.Id, 
  votes.PostId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  votes
where votes.CreationDate is NULL;
select  
  users.CreationDate, 
  users.Location, 
  users.WebsiteUrl, 
  users.CreationDate, 
  users.AboutMe, 
  users.Id, 
  users.DisplayName, 
  users.DisplayName, 
  max(
    cast(55 as int4)), 
  min(
    cast(users.Location as text)), 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.DisplayName, 
  users.Location
from 
  users
where users.Id = users.Id
limit 115;
select  
  votes.PostId, 
  avg(
    cast(1 as int4)), 
  votes.Id, 
  votes.CreationDate
from 
  votes
      inner join votes
      on (votes.CreationDate <= votes.CreationDate)
    inner join postLinks
    on (votes.UserId is not NULL)
where votes.CreationDate is NULL;
select  
  votes.CreationDate
from 
  postLinks
    inner join posts
      inner join votes
        inner join votes
          inner join badges
          on (badges.UserId >= votes.UserId)
        on (votes.CreationDate > votes.CreationDate)
      on (posts.ContentLicense = posts.ContentLicense)
    on (votes.CreationDate is not NULL)
where badges.Date = votes.CreationDate
limit 33;
select  
  comments.UserId
from 
  comments
where comments.CreationDate > comments.CreationDate
limit 134;
select  
  votes.CreationDate, 
  votes.PostId, 
  comments.UserDisplayName, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.UserDisplayName, 
  comments.Text, 
  comments.PostId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId, 
  votes.VoteTypeId, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  comments.PostId, 
  min(
    cast(comments.ContentLicense as text)), 
  votes.CreationDate, 
  min(
    cast(cast(null as float8) as float8)), 
  votes.CreationDate, 
  comments.UserId, 
  votes.CreationDate, 
  votes.UserId, 
  comments.Id, 
  votes.UserId, 
  count(
    cast(comments.Text as text))
from 
  comments
    inner join votes
    on (votes.UserId is not NULL)
where comments.CreationDate is NULL;
select  
  badges.Id, 
  badges.Class, 
  badges.Class
from 
  badges
where badges.Class is not NULL
limit 122;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.PostId is NULL;
select  
  users.AccountId
from 
  users
where users.AboutMe is NULL
limit 91;
select  
  comments.Id, 
  comments.UserId, 
  comments.UserDisplayName
from 
  comments
where comments.ContentLicense is NULL
limit 104;
select  
  badges.Class, 
  badges.UserId, 
  badges.Id
from 
  badges
where badges.Name = badges.Name;
select  
  badges.Name, 
  postHistory.Id, 
  postHistory.Id, 
  postHistory.UserId, 
  badges.Class, 
  avg(
    cast(56 as int4)), 
  postHistory.PostHistoryTypeId, 
  postHistory.PostHistoryTypeId
from 
  badges
    inner join postHistory
    on (postHistory.CreationDate is NULL)
where badges.Name is not NULL
limit 140;
select  
  users.Id, 
  users.AccountId, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as int2) as int2)), 
  users.AboutMe, 
  min(
    cast(cast(null as float4) as float4)), 
  users.WebsiteUrl, 
  min(
    cast(cast(null as inet) as inet)), 
  users.Id
from 
  users
where users.AccountId < users.ProfileImageUrl;
select  
  postHistory.RevisionGUID, 
  postHistory.CreationDate, 
  postHistory.Comment, 
  max(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as oid) as oid)), 
  postHistory.Id, 
  postHistory.Text, 
  postHistory.Id, 
  postHistory.PostId, 
  postHistory.CreationDate, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.CreationDate < postHistory.CreationDate
limit 83;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.OwnerUserId, 
  posts.Tags, 
  comments.PostId, 
  badges.UserId, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  badges
    inner join comments
        inner join posts
        on (comments.UserDisplayName > comments.ContentLicense)
      inner join badges
          inner join posts
          on (badges.Date > posts.CreationDate)
        inner join postLinks
          inner join votes
            inner join comments
              inner join badges
              on (badges.Name = comments.ContentLicense)
            on (badges.TagBased > badges.TagBased)
          on (postLinks.CreationDate <= votes.CreationDate)
        on (badges.Id > votes.Id)
      on (badges.Date < posts.CreationDate)
    on (badges.Date is not NULL)
where postLinks.PostId is not NULL;
select  
  min(
    cast(cast(null as money) as money)), 
  postLinks.PostId
from 
  postLinks
where postLinks.RelatedPostId is not NULL;
select  
  comments.PostId, 
  votes.Id, 
  comments.Text, 
  comments.Id
from 
  badges
      inner join votes
      on (badges.TagBased >= badges.TagBased)
    inner join comments
    on (votes.Id is NULL)
where votes.UserId is NULL;
select  
  posts.Tags, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  posts.Body, 
  posts.AcceptedAnswerId, 
  posts.ContentLicense, 
  posts.Tags
from 
  posts
where posts.PostTypeId is not NULL
limit 119;
select  
  min(
    cast(cast(null as "time") as "time"))
from 
  postLinks
          inner join users
          on (users.CreationDate >= postLinks.CreationDate)
        inner join postHistory
        on (users.AccountId <= users.AccountId)
      inner join posts
      on (postHistory.Id >= postHistory.Id)
    inner join users
    on (users.CreationDate = users.CreationDate )
where posts.Id is not NULL;
select  
  posts.Body, 
  max(
    cast(cast(null as money) as money)), 
  posts.OwnerUserId, 
  max(
    cast(cast(null as money) as money)), 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  posts.ContentLicense
from 
  posts
where posts.Id is not NULL;
select  
  max(
    cast(badges.Name as text)), 
  badges.UserId, 
  badges.Class, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  badges
where badges.Date = badges.Date;
select  
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.Text, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  postHistory.UserId, 
  avg(
    cast(cast(null as float8) as float8)), 
  postHistory.Text, 
  min(
    cast(cast(null as money) as money)), 
  postHistory.PostId
from 
  postHistory
where postHistory.Comment < postHistory.RevisionGUID;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as date) as date)), 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate is NULL;
select  
  postLinks.PostId, 
  postLinks.Id
from 
  postLinks
where postLinks.PostId is not NULL
limit 38;
select  
  users.ProfileImageUrl, 
  users.Id
from 
  postHistory
    inner join users
        inner join users
        on (users.WebsiteUrl = users.DisplayName )
      inner join posts
          inner join badges
          on (posts.Tags <= posts.ContentLicense)
        inner join postHistory
        on (posts.ContentLicense > badges.Name)
      on (users.CreationDate = badges.Date)
    on (users.AccountId is not NULL)
where users.ProfileImageUrl < users.ProfileImageUrl
limit 110;
select  
  votes.UserId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.Id
from 
  votes
where votes.PostId is NULL
limit 119;
select  
  badges.UserId, 
  badges.Class
from 
  badges
    inner join badges
    on (badges.Class is not NULL)
where badges.TagBased is not NULL
limit 162;
select  
  comments.Text, 
  votes.Id, 
  posts.Title, 
  users.AboutMe, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  posts
      inner join postLinks
          inner join users
              inner join votes
                  inner join posts
                  on (votes.UserId = posts.Id )
                inner join comments
                on (posts.Title > posts.Tags)
              on (users.Id = comments.Id )
            inner join votes
            on (votes.VoteTypeId < votes.UserId)
          on (postLinks.LinkTypeId = comments.Id )
        inner join votes
        on (postLinks.CreationDate >= postLinks.CreationDate)
      on (comments.UserDisplayName >= users.DisplayName)
    inner join users
    on (posts.ContentLicense <= posts.ContentLicense)
where votes.UserId = posts.PostTypeId
limit 84;
select  
  badges.UserId, 
  badges.Name, 
  min(
    cast(cast(null as date) as date)), 
  postHistory.ContentLicense, 
  badges.Name
from 
  postHistory
    inner join badges
      inner join badges
      on (badges.Name > badges.Name)
    on (postHistory.PostId = badges.Id )
where badges.Id is NULL;
select  
  posts.AcceptedAnswerId, 
  max(
    cast(cast(null as timestamptz) as timestamptz))
from 
  posts
where posts.CreationDate is NULL
limit 166;
select  
  max(
    cast(comments.PostId as int8)), 
  comments.UserDisplayName, 
  max(
    cast(comments.CreationDate as "timestamp"))
from 
  comments
where comments.Id is NULL
limit 84;
select  
  votes.PostId, 
  votes.PostId, 
  postLinks.Id, 
  votes.VoteTypeId, 
  postLinks.RelatedPostId
from 
  postLinks
    inner join votes
    on (votes.CreationDate > postLinks.CreationDate)
where votes.PostId is NULL
limit 107;
select  
  min(
    cast(cast(null as oid) as oid)), 
  sum(
    cast(cast(null as float4) as float4)), 
  users.AccountId, 
  comments.ContentLicense, 
  comments.PostId, 
  comments.PostId, 
  users.Location, 
  comments.Text, 
  comments.ContentLicense, 
  comments.PostId, 
  users.AboutMe, 
  avg(
    cast(20 as int4)), 
  users.DisplayName
from 
  comments
    inner join comments
        inner join badges
        on (comments.CreationDate = badges.Date )
      inner join users
      on (badges.TagBased <= badges.TagBased)
    on (comments.PostId <= comments.PostId)
where users.AccountId >= users.ProfileImageUrl
limit 94;
select  
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  users.DisplayName, 
  postLinks.LinkTypeId, 
  postHistory.RevisionGUID, 
  postHistory.PostId, 
  postHistory.UserId, 
  users.WebsiteUrl, 
  postLinks.PostId, 
  users.ProfileImageUrl, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postHistory.PostHistoryTypeId, 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  users.Location, 
  postHistory.UserId, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  users.Location, 
  users.DisplayName, 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.ProfileImageUrl, 
  users.WebsiteUrl, 
  postLinks.Id, 
  users.Location
from 
  postHistory
    inner join postLinks
        inner join postLinks
        on (postLinks.LinkTypeId < postLinks.Id)
      inner join users
      on (users.ProfileImageUrl = users.AccountId)
    on (users.CreationDate is not NULL)
where postHistory.CreationDate is not NULL;
select  
  min(
    cast(votes.VoteTypeId as int8)), 
  postHistory.UserDisplayName, 
  postHistory.Id, 
  votes.Id
from 
  postLinks
      inner join votes
        inner join users
        on (users.ProfileImageUrl = users.AccountId)
      on (postLinks.CreationDate < users.CreationDate)
    inner join postHistory
      inner join votes
      on (votes.UserId = votes.Id)
    on (votes.VoteTypeId is NULL)
where votes.CreationDate > users.CreationDate;
select  
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  postLinks
where postLinks.PostId is NULL
limit 143;
select  
  min(
    cast(posts.CreationDate as "timestamp")), 
  postLinks.RelatedPostId, 
  users.Location, 
  posts.ParentId, 
  users.AccountId, 
  max(
    cast(cast(null as "time") as "time"))
from 
  posts
    inner join postLinks
      inner join users
        inner join users
        on (users.ProfileImageUrl = users.AccountId )
      on (users.DisplayName < users.AboutMe)
    on (users.CreationDate >= posts.CreationDate)
where posts.AcceptedAnswerId is NULL
limit 75;
select  
  count(
    cast(postLinks.RelatedPostId as int8)), 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  max(
    cast(cast(null as inet) as inet))
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 110;
select  
  postHistory.Id, 
  badges.Class, 
  postHistory.PostId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  postHistory.Text, 
  comments.Id, 
  postHistory.Id, 
  comments.PostId, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
    inner join badges
      inner join postLinks
          inner join comments
          on (comments.Id = comments.PostId)
        inner join postHistory
        on (postLinks.LinkTypeId = postHistory.Id )
      on (postLinks.CreationDate < postLinks.CreationDate)
    on (postLinks.RelatedPostId is NULL)
where comments.PostId is NULL;
select  
  votes.UserId
from 
  votes
where votes.UserId is not NULL
limit 113;
select  
  comments.PostId, 
  avg(
    cast(cast(null as float4) as float4)), 
  comments.ContentLicense, 
  comments.Id, 
  comments.UserId, 
  comments.Id, 
  comments.UserDisplayName
from 
  comments
where comments.UserId is not NULL
limit 90;
select  
  votes.VoteTypeId, 
  max(
    cast(posts.ContentLicense as text))
from 
  posts
          inner join users
            inner join votes
            on (users.CreationDate = votes.CreationDate )
          on (posts.Tags < users.WebsiteUrl)
        inner join postHistory
        on (votes.PostId = postHistory.Id )
      inner join posts
      on (posts.Body >= posts.Title)
    inner join comments
    on (votes.UserId = comments.Id )
where posts.OwnerUserId is not NULL
limit 95;
select  
  users.CreationDate, 
  users.DisplayName, 
  users.Location, 
  users.AccountId, 
  users.Location
from 
  users
where users.AccountId is NULL;
select  
  postLinks.RelatedPostId
from 
  users
      inner join comments
            inner join votes
              inner join posts
                inner join posts
                on (posts.AcceptedAnswerId >= posts.OwnerUserId)
              on (posts.Body >= posts.OwnerDisplayName)
            on (posts.OwnerUserId < posts.ParentId)
          inner join postLinks
          on (comments.Id = posts.PostTypeId)
        inner join users
        on (users.AboutMe > posts.OwnerDisplayName)
      on (posts.Id > posts.Id)
    inner join comments
          inner join users
          on (comments.ContentLicense > users.DisplayName)
        inner join comments
        on (users.DisplayName < comments.ContentLicense)
      inner join postLinks
        inner join postLinks
        on (postLinks.LinkTypeId >= postLinks.Id)
      on (users.AccountId <= users.AccountId)
    on (comments.PostId is NULL)
where comments.PostId is not NULL
limit 55;
select  
  posts.CreationDate, 
  posts.Tags
from 
  posts
where posts.PostTypeId is not NULL
limit 100;
select  
  votes.Id, 
  badges.Date, 
  badges.Class
from 
  votes
    inner join badges
      inner join votes
      on (badges.Class = votes.Id )
    on (votes.VoteTypeId is NULL)
where votes.Id is NULL;
select  
  posts.OwnerUserId, 
  badges.UserId, 
  max(
    cast(cast(null as float4) as float4)), 
  comments.ContentLicense, 
  votes.VoteTypeId, 
  posts.Title, 
  postHistory.Id, 
  votes.VoteTypeId, 
  comments.CreationDate, 
  badges.Date, 
  posts.ContentLicense, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.ContentLicense, 
  votes.Id, 
  postHistory.Comment, 
  votes.PostId, 
  comments.UserId, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  postHistory.RevisionGUID
from 
  votes
      inner join badges
      on (badges.TagBased <= badges.TagBased)
    inner join posts
          inner join comments
          on (posts.AcceptedAnswerId = comments.Id )
        inner join votes
        on (comments.UserDisplayName > comments.Text)
      inner join comments
        inner join posts
          inner join postHistory
          on (postHistory.Text > posts.ContentLicense)
        on (comments.CreationDate < posts.CreationDate)
      on (posts.OwnerDisplayName >= comments.ContentLicense)
    on (comments.PostId >= comments.UserId)
where votes.PostId is NULL;
select  
  votes.PostId, 
  comments.ContentLicense, 
  votes.UserId, 
  badges.Date
from 
  votes
        inner join comments
        on (comments.UserId > comments.UserId)
      inner join postHistory
      on (postHistory.Id > comments.PostId)
    inner join badges
    on (comments.ContentLicense is NULL)
where comments.PostId <= postHistory.PostHistoryTypeId;
select  
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.PostId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  avg(
    cast(cast(null as float4) as float4)), 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.Id, 
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.Id, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  count(
    cast(postLinks.LinkTypeId as int8)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 82;
select  
  users.WebsiteUrl, 
  posts.Body, 
  postHistory.ContentLicense
from 
  posts
        inner join postHistory
          inner join users
          on (postHistory.Text = users.Location)
        on (postHistory.UserId = users.Id)
      inner join users
      on (users.CreationDate = postHistory.CreationDate)
    inner join comments
    on (posts.ParentId is not NULL)
where users.CreationDate = comments.CreationDate;
select  
  postHistory.CreationDate, 
  users.WebsiteUrl
from 
  postHistory
      inner join badges
      on (badges.TagBased >= badges.TagBased)
    inner join users
    on (badges.Id is not NULL)
where postHistory.CreationDate is NULL
limit 122;
select  
  comments.Text, 
  comments.Id, 
  comments.UserId, 
  min(
    cast(comments.ContentLicense as text)), 
  comments.PostId, 
  comments.PostId, 
  postLinks.Id, 
  comments.UserId, 
  comments.CreationDate, 
  comments.PostId, 
  comments.CreationDate, 
  comments.Id, 
  comments.CreationDate
from 
  postLinks
    inner join comments
    on (comments.PostId < comments.UserId)
where comments.Id is NULL
limit 141;
select  
  badges.Date, 
  badges.Date, 
  badges.Name, 
  badges.Class, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.UserId, 
  badges.Id, 
  badges.UserId
from 
  badges
where badges.Date is not NULL
limit 175;
select  
  comments.UserId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.Text, 
  comments.Text, 
  comments.ContentLicense
from 
  comments
where comments.UserId is not NULL;
select  
  badges.TagBased, 
  avg(
    cast(cast(null as int2) as int2)), 
  postHistory.CreationDate, 
  posts.Title, 
  avg(
    cast(37 as int4)), 
  postHistory.Text, 
  posts.PostTypeId, 
  badges.TagBased, 
  posts.OwnerUserId, 
  badges.Class, 
  posts.ParentId, 
  posts.CreationDate, 
  avg(
    cast(posts.OwnerUserId as int8)), 
  max(
    cast(46 as int4)), 
  posts.PostTypeId, 
  posts.ParentId, 
  postHistory.UserId, 
  posts.CreationDate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  posts.CreationDate, 
  badges.Class, 
  posts.ParentId, 
  postHistory.PostId, 
  posts.ContentLicense, 
  badges.Id, 
  postHistory.UserDisplayName, 
  min(
    cast(cast(null as date) as date))
from 
  posts
    inner join badges
        inner join postHistory
        on (badges.TagBased > badges.TagBased)
      inner join posts
      on (badges.TagBased >= badges.TagBased)
    on (posts.AcceptedAnswerId is NULL)
where posts.ContentLicense <= posts.Body;
select  
  comments.CreationDate, 
  comments.ContentLicense, 
  postHistory.PostId, 
  users.AccountId, 
  postHistory.ContentLicense, 
  avg(
    cast(users.ProfileImageUrl as float8)), 
  users.ProfileImageUrl, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  users
      inner join comments
      on (comments.Id > comments.UserId)
    inner join postHistory
    on (comments.UserId is NULL)
where postHistory.UserId is not NULL
limit 88;
select  
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.PostId, 
  comments.UserId, 
  comments.CreationDate, 
  min(
    cast(cast(null as float4) as float4)), 
  comments.Text, 
  comments.PostId
from 
  comments
where comments.ContentLicense is not NULL
limit 137;
select  
  posts.OwnerUserId, 
  votes.VoteTypeId, 
  posts.PostTypeId, 
  comments.ContentLicense, 
  postHistory.UserId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as "time") as "time")), 
  votes.CreationDate, 
  posts.ContentLicense, 
  badges.UserId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  posts
        inner join postLinks
        on (postLinks.LinkTypeId < postLinks.Id)
      inner join votes
        inner join posts
            inner join postLinks
            on (posts.OwnerUserId = postLinks.Id )
          inner join badges
          on (badges.UserId >= postLinks.PostId)
        on (posts.CreationDate >= postLinks.CreationDate)
      on (postLinks.LinkTypeId <= posts.Id)
    inner join postHistory
        inner join posts
          inner join comments
              inner join postHistory
                inner join votes
                on (votes.UserId = postHistory.Id)
              on (votes.PostId < postHistory.UserId)
            inner join comments
            on (comments.UserDisplayName = comments.ContentLicense )
          on (posts.OwnerUserId = postHistory.Id )
        on (comments.CreationDate > posts.CreationDate)
      inner join postLinks
      on (postHistory.CreationDate < postHistory.CreationDate)
    on (posts.ParentId is NULL)
where comments.PostId is NULL;
select  
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.Id, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  comments.CreationDate, 
  comments.CreationDate, 
  comments.PostId, 
  comments.ContentLicense, 
  min(
    cast(39 as int4))
from 
  comments
      inner join postLinks
        inner join comments
          inner join postLinks
          on (postLinks.CreationDate >= postLinks.CreationDate)
        on (postLinks.CreationDate <= postLinks.CreationDate)
      on (postLinks.RelatedPostId <= postLinks.Id)
    inner join comments
    on (comments.Text = comments.Text)
where postLinks.RelatedPostId is NULL
limit 127;
select  
  comments.Id, 
  comments.Id, 
  comments.CreationDate, 
  max(
    cast(cast(null as int2) as int2)), 
  votes.CreationDate, 
  comments.ContentLicense, 
  comments.CreationDate, 
  votes.Id, 
  posts.AcceptedAnswerId
from 
  votes
    inner join comments
      inner join posts
      on (posts.OwnerDisplayName > posts.Title)
    on (votes.UserId = comments.Id )
where comments.Id is NULL
limit 117;
select  
  votes.CreationDate, 
  votes.UserId, 
  votes.VoteTypeId
from 
  votes
where votes.UserId is not NULL
limit 177;
select  
  votes.CreationDate
from 
  votes
where votes.VoteTypeId is NULL;
select  
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.Id, 
  comments.UserId, 
  postLinks.RelatedPostId, 
  comments.Id, 
  postLinks.PostId, 
  comments.CreationDate, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  postLinks.Id
from 
  comments
      inner join postLinks
      on (comments.ContentLicense <= comments.UserDisplayName)
    inner join postHistory
    on (postLinks.PostId is NULL)
where postHistory.UserId is not NULL;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.LinkTypeId, 
  users.ProfileImageUrl
from 
  postLinks
    inner join users
    on (users.AboutMe is not NULL)
where users.AccountId >= users.ProfileImageUrl;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate is not NULL;
select  
  comments.UserDisplayName, 
  badges.Id, 
  users.ProfileImageUrl, 
  badges.Id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  comments.ContentLicense, 
  min(
    cast(cast(null as oid) as oid))
from 
  badges
        inner join badges
          inner join users
          on (users.Location >= users.DisplayName)
        on (badges.Name = badges.Name )
      inner join comments
        inner join postHistory
        on (comments.CreationDate <= postHistory.CreationDate)
      on (badges.TagBased >= badges.TagBased)
    inner join posts
    on (badges.UserId is not NULL)
where users.ProfileImageUrl > users.ProfileImageUrl
limit 51;
select  
  posts.Id, 
  count(*)
from 
  posts
where posts.CreationDate is NULL
limit 61;
select  
  posts.PostTypeId
from 
  posts
where posts.AcceptedAnswerId is not NULL
limit 146;
select  
  posts.Id, 
  posts.PostTypeId, 
  posts.CreationDate, 
  posts.AcceptedAnswerId
from 
  posts
where posts.Title is NULL;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.CreationDate, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserId, 
  postHistory.RevisionGUID, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.Text, 
  postHistory.ContentLicense, 
  postHistory.PostHistoryTypeId, 
  postHistory.Comment, 
  postHistory.UserDisplayName
from 
  postHistory
where postHistory.PostHistoryTypeId is NULL;
select  
  postHistory.Id, 
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.UserId, 
  postHistory.Comment, 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  postHistory.Text, 
  postHistory.PostId, 
  postHistory.PostId, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.Id, 
  postHistory.CreationDate, 
  postHistory.PostId, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.ContentLicense, 
  count(*)
from 
  postHistory
    inner join postHistory
    on (postHistory.PostId is NULL)
where postHistory.CreationDate is NULL
limit 162;
select  
  users.DisplayName, 
  postHistory.PostId
from 
  postHistory
          inner join users
          on (postHistory.ContentLicense = users.DisplayName )
        inner join postHistory
        on (users.Location = users.Location)
      inner join postHistory
      on (users.DisplayName > postHistory.Comment)
    inner join postHistory
        inner join postLinks
        on (postHistory.PostHistoryTypeId = postLinks.Id )
      inner join badges
          inner join postLinks
          on (badges.Name >= badges.Name)
        inner join comments
          inner join posts
            inner join users
            on (posts.CreationDate = users.CreationDate )
          on (comments.CreationDate <= users.CreationDate)
        on (users.ProfileImageUrl < users.AccountId)
      on (badges.TagBased = badges.TagBased)
    on (badges.TagBased >= badges.TagBased)
where postLinks.CreationDate is NULL;
select  
  max(
    cast(cast(null as int2) as int2)), 
  users.Id
from 
  votes
    inner join users
    on (votes.CreationDate is not NULL)
where votes.UserId >= votes.UserId
limit 191;
select  
  comments.Id, 
  comments.ContentLicense, 
  comments.PostId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.PostId, 
  min(
    cast(cast(null as int2) as int2)), 
  comments.Text
from 
  comments
where comments.UserId is NULL
limit 163;
select  
  max(
    cast(73 as int4)), 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  avg(
    cast(cast(null as int2) as int2)), 
  postLinks.PostId, 
  postLinks.PostId
from 
  votes
    inner join postLinks
          inner join comments
          on (comments.UserDisplayName >= comments.Text)
        inner join postHistory
            inner join postLinks
              inner join postLinks
              on (postLinks.CreationDate >= postLinks.CreationDate)
            on (postLinks.CreationDate >= postLinks.CreationDate)
          inner join postLinks
            inner join posts
            on (posts.PostTypeId = postLinks.PostId)
          on (postLinks.CreationDate < postHistory.CreationDate)
        on (postLinks.CreationDate = postLinks.CreationDate)
      inner join votes
              inner join postHistory
                inner join users
                on (users.WebsiteUrl = users.DisplayName)
              on (votes.UserId = postHistory.PostHistoryTypeId)
            inner join postLinks
            on (postHistory.RevisionGUID > users.AboutMe)
          inner join postLinks
          on (votes.CreationDate >= users.CreationDate)
        inner join votes
          inner join comments
            inner join posts
            on (comments.Id = posts.Id )
          on (votes.CreationDate >= votes.CreationDate)
        on (postLinks.CreationDate > votes.CreationDate)
      on (comments.CreationDate >= users.CreationDate)
    on (postLinks.LinkTypeId is not NULL)
where postLinks.LinkTypeId is not NULL;
select  
  postHistory.PostId, 
  sum(
    cast(70 as int4)), 
  postHistory.PostId, 
  postHistory.Comment, 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.CreationDate > postHistory.CreationDate
limit 117;
select  
  max(
    cast(cast(null as float4) as float4)), 
  badges.Id, 
  badges.Name, 
  badges.UserId, 
  badges.Date
from 
  badges
where badges.Date is NULL
limit 90;
select  
  badges.TagBased, 
  sum(
    cast(cast(null as float8) as float8))
from 
  badges
    inner join badges
    on (badges.Date <= badges.Date)
where badges.Class is NULL;
select  
  postHistory.Id
from 
  postHistory
where postHistory.Text is not NULL
limit 91;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  postLinks.CreationDate
from 
  postLinks
where postLinks.PostId is not NULL
limit 31;
select  
  votes.CreationDate, 
  votes.PostId
from 
  votes
where votes.VoteTypeId is NULL
limit 111;
select  
  posts.Title, 
  postLinks.CreationDate, 
  posts.Body, 
  postLinks.RelatedPostId, 
  postLinks.Id
from 
  posts
    inner join users
      inner join postLinks
      on (users.CreationDate > postLinks.CreationDate)
    on (posts.CreationDate is not NULL)
where posts.CreationDate is not NULL;
select  
  votes.VoteTypeId
from 
  postHistory
      inner join votes
          inner join posts
          on (posts.OwnerDisplayName = posts.ContentLicense)
        inner join comments
            inner join badges
            on (comments.UserDisplayName = badges.Name )
          inner join votes
          on (votes.CreationDate < votes.CreationDate)
        on (badges.TagBased > badges.TagBased)
      on (postHistory.ContentLicense < posts.Body)
    inner join comments
    on (votes.Id is not NULL)
where votes.CreationDate >= votes.CreationDate
limit 148;
select  
  posts.OwnerUserId, 
  posts.OwnerUserId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  posts.AcceptedAnswerId, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.Title, 
  posts.AcceptedAnswerId, 
  posts.Tags, 
  posts.ParentId, 
  posts.AcceptedAnswerId
from 
  posts
where posts.Title <= posts.OwnerDisplayName;
select  
  postHistory.UserId, 
  postHistory.CreationDate, 
  min(
    cast(cast(null as int2) as int2))
from 
  postHistory
where postHistory.UserDisplayName is NULL
limit 118;
select  
  posts.ContentLicense, 
  badges.UserId, 
  badges.TagBased
from 
  posts
      inner join posts
      on (posts.AcceptedAnswerId >= posts.AcceptedAnswerId)
    inner join badges
    on (badges.Id is NULL)
where posts.Title < posts.Body
limit 103;
select  
  postLinks.LinkTypeId, 
  postHistory.RevisionGUID
from 
  comments
      inner join postHistory
            inner join postLinks
              inner join votes
              on (postLinks.Id > postLinks.PostId)
            on (postHistory.UserId = postLinks.Id )
          inner join badges
          on (badges.TagBased < badges.TagBased)
        inner join badges
        on (postLinks.CreationDate = postLinks.CreationDate)
      on (postHistory.RevisionGUID < postHistory.UserDisplayName)
    inner join votes
      inner join postHistory
      on (votes.CreationDate > votes.CreationDate)
    on (postLinks.LinkTypeId is NULL)
where postLinks.LinkTypeId is not NULL
limit 171;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  postHistory.Comment, 
  sum(
    cast(cast(null as float4) as float4))
from 
  postHistory
    inner join postHistory
    on (postHistory.UserDisplayName is not NULL)
where postHistory.PostHistoryTypeId >= postHistory.PostHistoryTypeId;
select  
  posts.Body, 
  postHistory.Text, 
  min(
    cast(cast(null as timetz) as timetz)), 
  sum(
    cast(61 as int4)), 
  postHistory.CreationDate, 
  badges.TagBased
from 
  postHistory
      inner join posts
      on (postHistory.UserId = postHistory.PostHistoryTypeId)
    inner join postHistory
        inner join users
          inner join postHistory
              inner join votes
                  inner join postLinks
                  on (votes.Id = postLinks.Id )
                inner join postHistory
                on (postHistory.RevisionGUID = postHistory.ContentLicense)
              on (postHistory.PostId = votes.Id )
            inner join users
              inner join badges
                inner join users
                on (badges.Date < badges.Date)
              on (badges.TagBased = badges.TagBased)
            on (postHistory.Text > users.WebsiteUrl)
          on (postHistory.Comment <= postHistory.ContentLicense)
        on (postHistory.PostHistoryTypeId >= postHistory.UserId)
      inner join badges
      on (badges.TagBased > badges.TagBased)
    on (badges.TagBased <= badges.TagBased)
where votes.UserId is NULL;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as tid) as tid)), 
  votes.VoteTypeId, 
  votes.Id, 
  votes.PostId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.PostId is NULL;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  users.Location
from 
  users
where users.Id is not NULL
limit 41;
select  
  votes.PostId, 
  comments.CreationDate
from 
  badges
      inner join comments
      on (comments.ContentLicense < comments.ContentLicense)
    inner join votes
        inner join users
          inner join users
          on (users.ProfileImageUrl <= users.AccountId)
        on (users.CreationDate < votes.CreationDate)
      inner join postLinks
        inner join postLinks
          inner join postLinks
          on (postLinks.PostId <= postLinks.PostId)
        on (postLinks.CreationDate = postLinks.CreationDate)
      on (users.WebsiteUrl >= users.WebsiteUrl)
    on (votes.CreationDate is NULL)
where users.ProfileImageUrl is NULL;
select  
  postHistory.Text, 
  postHistory.Text, 
  postHistory.UserId
from 
  postHistory
where postHistory.PostId is NULL;
select  
  postLinks.CreationDate, 
  postLinks.PostId, 
  avg(
    cast(postLinks.RelatedPostId as int8)), 
  postLinks.CreationDate, 
  postLinks.PostId
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 81;
select  
  votes.VoteTypeId, 
  comments.Text, 
  users.CreationDate, 
  postLinks.RelatedPostId, 
  votes.VoteTypeId, 
  comments.UserDisplayName, 
  users.AboutMe, 
  votes.Id, 
  comments.CreationDate, 
  comments.CreationDate, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  min(
    cast(users.AboutMe as text)), 
  postLinks.LinkTypeId, 
  comments.UserId, 
  users.ProfileImageUrl, 
  sum(
    cast(cast(null as money) as money)), 
  comments.Text, 
  users.AccountId, 
  comments.Id
from 
  votes
    inner join postLinks
      inner join users
        inner join comments
        on (users.Id > users.Id)
      on (comments.PostId < users.Id)
    on (postLinks.CreationDate is not NULL)
where users.AccountId > users.ProfileImageUrl
limit 101;
select  
  posts.PostTypeId, 
  posts.CreationDate, 
  posts.ContentLicense, 
  posts.OwnerDisplayName, 
  max(
    cast(posts.OwnerDisplayName as text)), 
  max(
    cast(cast(null as "time") as "time")), 
  posts.CreationDate, 
  posts.Tags, 
  posts.ContentLicense, 
  posts.ParentId, 
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  posts.OwnerDisplayName, 
  posts.OwnerUserId, 
  posts.Id, 
  posts.ContentLicense, 
  posts.AcceptedAnswerId, 
  posts.Title, 
  posts.CreationDate, 
  posts.OwnerUserId, 
  posts.OwnerDisplayName
from 
  posts
where posts.AcceptedAnswerId is NULL;
select  
  min(
    cast(cast(null as money) as money)), 
  users.AboutMe, 
  users.CreationDate
from 
  users
where users.WebsiteUrl is NULL
limit 27;
select  
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  min(
    cast(cast(null as text) as text)), 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  avg(
    cast(postLinks.RelatedPostId as int8)), 
  postLinks.PostId, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 87;
select  
  comments.UserDisplayName
from 
  comments
where comments.Text > comments.ContentLicense
limit 17;
select  
  posts.CreationDate, 
  comments.Id, 
  min(
    cast(posts.ParentId as int8)), 
  posts.CreationDate, 
  posts.Tags, 
  comments.CreationDate, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as int2) as int2))
from 
  comments
      inner join posts
      on (posts.Tags >= posts.Tags)
    inner join postHistory
    on (posts.OwnerUserId is NULL)
where comments.Id is not NULL;
select  
  postHistory.Comment, 
  postLinks.CreationDate, 
  badges.Date, 
  badges.Name, 
  badges.Name, 
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(17 as int4)), 
  votes.PostId, 
  votes.UserId, 
  votes.VoteTypeId
from 
  postHistory
    inner join comments
          inner join votes
          on (votes.CreationDate < comments.CreationDate)
        inner join votes
          inner join votes
            inner join votes
              inner join badges
              on (badges.Name > badges.Name)
            on (badges.Name < badges.Name)
          on (votes.CreationDate > votes.CreationDate)
        on (badges.TagBased <= badges.TagBased)
      inner join comments
            inner join badges
            on (comments.CreationDate < comments.CreationDate)
          inner join postLinks
          on (badges.TagBased >= badges.TagBased)
        inner join users
        on (users.AccountId = users.AccountId)
      on (users.AccountId <= users.AccountId)
    on (votes.CreationDate is not NULL)
where users.DisplayName > comments.UserDisplayName
limit 87;
select  
  votes.VoteTypeId, 
  max(
    cast(votes.PostId as int8)), 
  postHistory.Comment
from 
  votes
    inner join postHistory
    on (postHistory.RevisionGUID is not NULL)
where postHistory.CreationDate < postHistory.CreationDate
limit 20;
select  
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.UserId, 
  postHistory.Id, 
  postHistory.ContentLicense, 
  postHistory.Text, 
  postHistory.Text
from 
  postHistory
where postHistory.CreationDate >= postHistory.CreationDate
limit 120;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  postLinks.CreationDate
from 
  comments
      inner join votes
      on (comments.Id <= comments.Id)
    inner join comments
        inner join postHistory
          inner join postLinks
          on (postHistory.CreationDate <= postHistory.CreationDate)
        on (postHistory.PostId >= postLinks.LinkTypeId)
      inner join users
        inner join posts
          inner join posts
            inner join badges
            on (badges.TagBased < badges.TagBased)
          on (posts.AcceptedAnswerId = posts.Id )
        on (users.CreationDate = badges.Date )
      on (posts.CreationDate > badges.Date)
    on (votes.Id is not NULL)
where badges.Class is not NULL
limit 57;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  votes.CreationDate
from 
  votes
where votes.PostId is not NULL
limit 84;
select  
  postHistory.ContentLicense, 
  postHistory.UserDisplayName
from 
  postHistory
where postHistory.RevisionGUID is NULL
limit 175;
select  
  postHistory.PostId, 
  comments.UserDisplayName, 
  postHistory.RevisionGUID, 
  max(
    cast(cast(null as tid) as tid)), 
  max(
    cast(cast(null as "time") as "time"))
from 
  comments
    inner join postHistory
    on (comments.ContentLicense = postHistory.UserDisplayName )
where comments.ContentLicense > comments.UserDisplayName
limit 155;
select  
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  comments.UserDisplayName, 
  postLinks.RelatedPostId, 
  comments.ContentLicense, 
  comments.CreationDate, 
  avg(
    cast(cast(null as float8) as float8)), 
  postLinks.Id, 
  postLinks.PostId, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postLinks.Id, 
  postLinks.PostId
from 
  comments
    inner join postLinks
    on (comments.CreationDate = postLinks.CreationDate )
where comments.Id is not NULL
limit 98;
select  
  users.AboutMe, 
  users.Id, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl
from 
  users
where users.CreationDate is NULL
limit 20;
select  
  votes.VoteTypeId, 
  badges.Name
from 
  badges
    inner join votes
      inner join votes
      on (votes.CreationDate >= votes.CreationDate)
    on (votes.CreationDate is NULL)
where votes.CreationDate = badges.Date;
select  
  badges.Date, 
  postLinks.PostId, 
  posts.OwnerUserId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate
from 
  comments
      inner join badges
      on (comments.PostId = badges.Id )
    inner join postLinks
        inner join votes
            inner join badges
            on (badges.Name > badges.Name)
          inner join comments
          on (comments.Id <= votes.VoteTypeId)
        on (comments.ContentLicense < comments.Text)
      inner join posts
          inner join postLinks
            inner join votes
            on (postLinks.CreationDate <= votes.CreationDate)
          on (posts.Tags = posts.Tags)
        inner join postLinks
        on (postLinks.CreationDate < postLinks.CreationDate)
      on (badges.TagBased <= badges.TagBased)
    on (badges.Name = comments.ContentLicense )
where postLinks.CreationDate is NULL
limit 44;
select  
  postHistory.RevisionGUID, 
  postHistory.CreationDate, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.RevisionGUID is NULL;
select  
  postHistory.ContentLicense, 
  max(
    cast(cast(null as float8) as float8)), 
  postHistory.UserId, 
  postHistory.Comment
from 
  postHistory
where postHistory.Id is not NULL;
select  
  comments.Text
from 
  comments
where comments.PostId is not NULL
limit 85;
select  
  min(
    cast(cast(null as float8) as float8)), 
  badges.Name, 
  max(
    cast(badges.Name as text)), 
  badges.Class, 
  badges.UserId, 
  badges.Class, 
  badges.Date, 
  badges.Class, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  badges
where badges.UserId is NULL;
select  
  comments.Text, 
  max(
    cast(cast(null as inet) as inet)), 
  postLinks.CreationDate, 
  sum(
    cast(badges.Id as int8)), 
  posts.ContentLicense, 
  users.AccountId, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.Body, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.Tags, 
  postLinks.RelatedPostId, 
  votes.CreationDate, 
  posts.PostTypeId, 
  postLinks.Id, 
  badges.Name, 
  posts.OwnerDisplayName
from 
  users
      inner join postLinks
            inner join badges
                inner join postLinks
                on (badges.Name >= badges.Name)
              inner join posts
              on (postLinks.Id = posts.Id )
            on (postLinks.LinkTypeId = postLinks.Id )
          inner join comments
            inner join comments
            on (comments.Text = comments.ContentLicense )
          on (postLinks.Id > comments.UserId)
        inner join posts
            inner join posts
            on (posts.AcceptedAnswerId = posts.Id )
          inner join posts
                inner join posts
                on (posts.CreationDate < posts.CreationDate)
              inner join badges
              on (posts.Body <= posts.Title)
            inner join badges
            on (badges.Class <= posts.Id)
          on (posts.AcceptedAnswerId > posts.Id)
        on (posts.OwnerDisplayName > posts.OwnerDisplayName)
      on (badges.Date <= comments.CreationDate)
    inner join votes
    on (posts.Title is not NULL)
where badges.TagBased <= badges.TagBased;
select  
  postHistory.Id, 
  postHistory.PostHistoryTypeId, 
  postHistory.Comment, 
  postHistory.UserId, 
  postHistory.Text, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  postHistory
where postHistory.UserId is NULL;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  users.Id, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  posts.OwnerDisplayName
from 
  users
          inner join badges
          on (users.AccountId > users.AccountId)
        inner join posts
        on (users.CreationDate > badges.Date)
      inner join postLinks
      on (users.AccountId < users.ProfileImageUrl)
    inner join badges
        inner join comments
        on (badges.Name = comments.ContentLicense )
      inner join comments
      on (comments.ContentLicense = comments.ContentLicense )
    on (badges.UserId = comments.Id )
where badges.Name is not NULL
limit 149;
select  
  min(
    cast(cast(null as int2) as int2))
from 
  badges
where badges.Name = badges.Name
limit 149;
select  
  comments.ContentLicense
from 
  users
      inner join badges
      on (badges.TagBased <= badges.TagBased)
    inner join postLinks
        inner join comments
          inner join badges
          on (comments.CreationDate < badges.Date)
        on (badges.Name < badges.Name)
      inner join users
      on (badges.TagBased >= badges.TagBased)
    on (badges.TagBased is not NULL)
where users.CreationDate >= postLinks.CreationDate
limit 105;
select  
  postLinks.CreationDate, 
  postLinks.Id, 
  max(
    cast(cast(null as money) as money)), 
  votes.UserId, 
  votes.CreationDate, 
  postLinks.CreationDate, 
  votes.VoteTypeId, 
  badges.Date
from 
  badges
      inner join postLinks
        inner join postLinks
        on (postLinks.LinkTypeId > postLinks.PostId)
      on (postLinks.CreationDate >= badges.Date)
    inner join votes
    on (votes.CreationDate > postLinks.CreationDate)
where votes.PostId = badges.UserId
limit 98;
select  
  postLinks.Id, 
  badges.UserId, 
  postHistory.RevisionGUID, 
  max(
    cast(18 as int4)), 
  posts.ContentLicense, 
  comments.UserId, 
  users.WebsiteUrl, 
  postLinks.Id, 
  users.Id, 
  votes.Id, 
  postLinks.PostId, 
  votes.CreationDate
from 
  users
        inner join postHistory
          inner join users
            inner join votes
            on (users.CreationDate = votes.CreationDate )
          on (votes.PostId > postHistory.PostId)
        on (users.Id < postHistory.PostHistoryTypeId)
      inner join posts
          inner join badges
            inner join badges
            on (badges.Date = badges.Date)
          on (badges.TagBased <= badges.TagBased)
        inner join badges
        on (badges.TagBased <= badges.TagBased)
      on (badges.Id >= votes.UserId)
    inner join comments
        inner join posts
        on (posts.Title <= posts.Body)
      inner join users
        inner join postLinks
        on (postLinks.LinkTypeId = users.Id)
      on (comments.CreationDate < postLinks.CreationDate)
    on (users.CreationDate is NULL)
where users.AccountId is not NULL;
select  
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  posts
where posts.CreationDate <= posts.CreationDate;
select  
  users.AccountId, 
  postLinks.RelatedPostId, 
  badges.Id
from 
  badges
        inner join votes
        on (badges.Date >= badges.Date)
      inner join comments
        inner join postLinks
        on (postLinks.CreationDate > postLinks.CreationDate)
      on (badges.UserId = votes.UserId)
    inner join badges
        inner join users
          inner join postHistory
            inner join comments
            on (postHistory.CreationDate < postHistory.CreationDate)
          on (postHistory.UserId <= postHistory.UserId)
        on (badges.Id = postHistory.Id )
      inner join badges
          inner join comments
          on (badges.Name > comments.UserDisplayName)
        inner join postLinks
        on (badges.Date = postLinks.CreationDate )
      on (users.AboutMe < comments.UserDisplayName)
    on (comments.ContentLicense is NULL)
where postHistory.PostHistoryTypeId is not NULL;
select  
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  count(*), 
  postHistory.PostId, 
  postHistory.Comment
from 
  postHistory
where postHistory.PostHistoryTypeId is not NULL;
select  
  votes.VoteTypeId, 
  postLinks.CreationDate, 
  users.WebsiteUrl
from 
  posts
    inner join posts
        inner join users
          inner join postLinks
          on (users.CreationDate <= users.CreationDate)
        on (posts.ContentLicense = users.DisplayName )
      inner join postHistory
        inner join postHistory
          inner join postLinks
              inner join votes
              on (votes.CreationDate <= postLinks.CreationDate)
            inner join badges
            on (badges.Class >= votes.PostId)
          on (postHistory.Text < postHistory.RevisionGUID)
        on (badges.TagBased = badges.TagBased)
      on (users.ProfileImageUrl = users.ProfileImageUrl)
    on (users.AboutMe < posts.Tags)
where posts.AcceptedAnswerId is NULL;
select  
  min(
    cast(cast(null as timetz) as timetz))
from 
  badges
where badges.TagBased = badges.TagBased
limit 131;
select  
  votes.CreationDate, 
  comments.UserDisplayName, 
  comments.Id, 
  comments.PostId
from 
  comments
    inner join votes
      inner join comments
      on (comments.UserDisplayName > comments.UserDisplayName)
    on (comments.Text = comments.ContentLicense )
where comments.UserDisplayName = comments.ContentLicense
limit 150;
select  
  postLinks.Id, 
  votes.Id
from 
  postHistory
      inner join votes
            inner join postLinks
            on (postLinks.RelatedPostId <= postLinks.Id)
          inner join comments
            inner join postLinks
            on (comments.Id = postLinks.Id )
          on (comments.ContentLicense >= comments.UserDisplayName)
        inner join postLinks
          inner join postLinks
          on (postLinks.Id >= postLinks.LinkTypeId)
        on (comments.ContentLicense < comments.ContentLicense)
      on (postHistory.UserDisplayName = comments.ContentLicense )
    inner join users
      inner join badges
          inner join postHistory
              inner join votes
              on (postHistory.CreationDate >= postHistory.CreationDate)
            inner join posts
            on (postHistory.CreationDate <= postHistory.CreationDate)
          on (badges.TagBased = badges.TagBased)
        inner join postLinks
        on (badges.Id = posts.OwnerUserId)
      on (users.Id = posts.Id )
    on (postLinks.RelatedPostId is NULL)
where comments.Text <= badges.Name
limit 105;
select  
  badges.UserId, 
  badges.Class
from 
  badges
where badges.Name is NULL;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  count(*), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.Id
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 98;
select distinct 
  posts.ContentLicense, 
  posts.Title, 
  posts.OwnerUserId, 
  posts.ContentLicense, 
  posts.AcceptedAnswerId, 
  posts.OwnerDisplayName, 
  posts.OwnerUserId, 
  posts.OwnerUserId
from 
  posts
where posts.OwnerUserId is not NULL
limit 164;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  postHistory.RevisionGUID, 
  postHistory.UserId, 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(postHistory.PostId as int8)), 
  max(
    cast(cast(null as date) as date)), 
  postHistory.Id
from 
  postHistory
where postHistory.Id is NULL
limit 157;
select  
  postHistory.RevisionGUID, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.RevisionGUID < postHistory.Comment;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.PostId
from 
  postLinks
where postLinks.LinkTypeId is not NULL;
select  
  users.DisplayName, 
  users.DisplayName, 
  users.Id, 
  min(
    cast(cast(null as tid) as tid)), 
  users.AccountId, 
  users.DisplayName, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  users.AccountId, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.Location
from 
  users
where users.ProfileImageUrl is not NULL
limit 113;
select  
  posts.OwnerDisplayName, 
  posts.OwnerDisplayName, 
  posts.Title, 
  users.Location
from 
  posts
      inner join posts
      on (posts.ContentLicense = posts.OwnerDisplayName)
    inner join users
    on (users.DisplayName is NULL)
where users.CreationDate <= posts.CreationDate;
select  
  users.Id, 
  users.Location, 
  users.AboutMe, 
  users.ProfileImageUrl, 
  users.WebsiteUrl, 
  users.Id, 
  users.Location, 
  users.CreationDate
from 
  users
where users.DisplayName is NULL
limit 103;
select  
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId
from 
  postLinks
where postLinks.PostId is NULL
limit 107;
select  
  votes.VoteTypeId
from 
  badges
    inner join votes
    on (badges.Date is not NULL)
where badges.Class is NULL
limit 83;
select  
  posts.Id, 
  posts.Tags, 
  posts.ParentId, 
  posts.CreationDate, 
  posts.Id, 
  max(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.CreationDate, 
  posts.PostTypeId, 
  min(
    cast(posts.Id as int8))
from 
  posts
where posts.PostTypeId is not NULL;
select  
  votes.Id, 
  votes.CreationDate, 
  votes.Id
from 
  votes
where votes.CreationDate <= votes.CreationDate
limit 195;
select  
  votes.Id, 
  postHistory.PostHistoryTypeId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  votes.UserId, 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.PostId
from 
  votes
        inner join badges
            inner join postLinks
            on (badges.Name <= badges.Name)
          inner join postLinks
          on (badges.TagBased = badges.TagBased)
        on (votes.CreationDate <= votes.CreationDate)
      inner join votes
      on (votes.PostId = votes.Id )
    inner join postHistory
    on (votes.VoteTypeId is NULL)
where votes.Id is NULL
limit 90;
select  
  max(
    cast(cast(null as "time") as "time"))
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 107;
select  
  postHistory.UserId, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.Text
from 
  comments
        inner join votes
        on (comments.Text > comments.Text)
      inner join users
          inner join votes
          on (users.Id = votes.Id )
        inner join users
          inner join postHistory
          on (postHistory.RevisionGUID < postHistory.Text)
        on (users.AccountId >= users.ProfileImageUrl)
      on (votes.VoteTypeId = votes.Id )
    inner join postHistory
    on (comments.UserDisplayName >= users.Location)
where users.WebsiteUrl <= users.Location;
select  
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as "interval") as "interval")), 
  postHistory.Comment, 
  users.AboutMe, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as float4) as float4)), 
  comments.UserId
from 
  users
      inner join postHistory
          inner join postLinks
            inner join users
            on (postLinks.LinkTypeId > users.Id)
          on (users.AccountId > users.ProfileImageUrl)
        inner join comments
        on (comments.Text < postHistory.Text)
      on (users.ProfileImageUrl = users.AccountId )
    inner join postLinks
    on (postLinks.PostId is not NULL)
where postLinks.RelatedPostId is NULL;
select  
  users.Location, 
  avg(
    cast(users.AccountId as float8)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  posts.Title, 
  posts.Id, 
  users.Id, 
  users.CreationDate, 
  users.Id
from 
  users
    inner join posts
    on (posts.OwnerUserId is not NULL)
where users.Location is not NULL;
select  
  min(
    cast(cast(null as date) as date)), 
  posts.Body, 
  max(
    cast(posts.ParentId as int8)), 
  max(
    cast(badges.Date as "timestamp")), 
  users.DisplayName, 
  comments.UserId, 
  comments.UserDisplayName, 
  badges.Class, 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.PostId, 
  posts.Tags
from 
  users
            inner join postLinks
            on (users.AccountId < users.ProfileImageUrl)
          inner join badges
            inner join comments
            on (comments.ContentLicense = comments.Text)
          on (postLinks.Id = badges.Id )
        inner join posts
        on (users.ProfileImageUrl <= users.ProfileImageUrl)
      inner join badges
          inner join badges
            inner join posts
                  inner join postHistory
                  on (postHistory.CreationDate <= postHistory.CreationDate)
                inner join postHistory
                on (posts.AcceptedAnswerId = postHistory.UserId)
              inner join comments
              on (posts.CreationDate <= postHistory.CreationDate)
            on (postHistory.PostHistoryTypeId >= posts.PostTypeId)
          on (badges.TagBased <= badges.TagBased)
        inner join badges
          inner join users
          on (badges.TagBased > badges.TagBased)
        on (users.AccountId > users.AccountId)
      on (comments.CreationDate >= posts.CreationDate)
    inner join votes
    on (users.CreationDate = votes.CreationDate )
where postLinks.PostId is not NULL
limit 24;
select  
  users.Location, 
  max(
    cast(cast(null as oid) as oid))
from 
  users
    inner join posts
    on (posts.Tags is NULL)
where users.AccountId >= users.AccountId
limit 8;
select  
  badges.Date, 
  comments.UserId, 
  min(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as float8) as float8)), 
  badges.Date
from 
  badges
      inner join comments
      on (badges.Name = comments.ContentLicense )
    inner join postLinks
    on (comments.UserDisplayName is NULL)
where comments.CreationDate < postLinks.CreationDate;
select  
  posts.PostTypeId, 
  max(
    cast(posts.CreationDate as "timestamp")), 
  posts.Id, 
  posts.ContentLicense, 
  posts.Body, 
  posts.OwnerUserId, 
  posts.Tags, 
  max(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as tid) as tid)), 
  posts.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posts.Body, 
  posts.ParentId, 
  posts.ParentId, 
  min(
    cast(posts.OwnerUserId as int8)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posts.ParentId, 
  posts.AcceptedAnswerId, 
  posts.Tags, 
  posts.ContentLicense, 
  posts.Title
from 
  posts
where posts.CreationDate <= posts.CreationDate;
select  
  postHistory.Comment, 
  postHistory.ContentLicense, 
  postHistory.PostHistoryTypeId, 
  postHistory.Text, 
  min(
    cast(cast(null as int2) as int2)), 
  postHistory.Comment, 
  postHistory.PostId
from 
  postHistory
where postHistory.Id is not NULL
limit 90;
select distinct 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  sum(
    cast(cast(null as int2) as int2)), 
  postLinks.PostId, 
  postLinks.PostId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.Id
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 64;
select  
  users.Id, 
  users.AccountId, 
  max(
    cast(38 as int4)), 
  avg(
    cast(users.AccountId as float8)), 
  users.Location, 
  users.WebsiteUrl, 
  users.ProfileImageUrl, 
  min(
    cast(users.AboutMe as text)), 
  users.AboutMe, 
  users.CreationDate, 
  users.DisplayName, 
  users.Id, 
  users.DisplayName, 
  max(
    cast(cast(null as inet) as inet)), 
  max(
    cast(users.Location as text)), 
  users.Location, 
  users.CreationDate, 
  users.AccountId, 
  users.DisplayName, 
  users.AboutMe, 
  users.AboutMe
from 
  users
where users.Id <= users.Id
limit 96;
select  
  users.AccountId, 
  comments.ContentLicense, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  comments
    inner join users
    on (comments.UserId is NULL)
where users.Id is not NULL;
select  
  users.AboutMe, 
  users.AboutMe
from 
  users
      inner join badges
        inner join users
        on (users.CreationDate = users.CreationDate)
      on (badges.Date < badges.Date)
    inner join votes
    on (users.ProfileImageUrl is NULL)
where votes.UserId is NULL;
select  
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.PostId, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.LinkTypeId is not NULL;
select  
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  posts
    inner join postLinks
    on (posts.Tags is not NULL)
where postLinks.CreationDate > posts.CreationDate
limit 96;
select  
  badges.Id, 
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.TagBased > badges.TagBased;
select  
  max(
    cast(cast(null as int2) as int2)), 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as xid8) as xid8)), 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  min(
    cast(89 as int4)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id is NULL
limit 187;
select  
  badges.Id, 
  badges.Date, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  postLinks
    inner join badges
      inner join badges
      on (badges.Class <= badges.UserId)
    on (badges.Id <= badges.Id)
where postLinks.CreationDate >= postLinks.CreationDate;
select  
  badges.UserId, 
  badges.Class, 
  badges.TagBased, 
  badges.TagBased, 
  badges.UserId
from 
  badges
where badges.TagBased is NULL
limit 134;
select  
  comments.CreationDate, 
  badges.Id
from 
  badges
    inner join comments
    on (comments.UserId is not NULL)
where comments.CreationDate <= comments.CreationDate
limit 93;
select  
  votes.CreationDate, 
  badges.Date, 
  postLinks.RelatedPostId, 
  posts.Tags, 
  posts.Tags, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  votes.Id, 
  posts.OwnerDisplayName, 
  votes.CreationDate, 
  votes.Id, 
  votes.VoteTypeId, 
  posts.PostTypeId, 
  votes.CreationDate, 
  badges.Id, 
  votes.PostId
from 
  votes
        inner join votes
        on (votes.VoteTypeId > votes.VoteTypeId)
      inner join users
        inner join postLinks
            inner join votes
            on (postLinks.Id < postLinks.RelatedPostId)
          inner join posts
          on (postLinks.RelatedPostId <= postLinks.Id)
        on (posts.CreationDate > posts.CreationDate)
      on (votes.PostId >= posts.OwnerUserId)
    inner join badges
    on (votes.CreationDate = badges.Date )
where postLinks.LinkTypeId is not NULL
limit 193;
select  
  posts.OwnerDisplayName, 
  posts.Tags, 
  max(
    cast(cast(null as "time") as "time")), 
  posts.Id, 
  posts.PostTypeId, 
  posts.AcceptedAnswerId, 
  posts.Tags
from 
  posts
where posts.OwnerDisplayName is NULL;
select  
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as int2) as int2)), 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  sum(
    cast(cast(null as int2) as int2)), 
  postLinks.CreationDate, 
  sum(
    cast(17 as int4)), 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.CreationDate is NULL
limit 40;
select  
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl, 
  users.Id
from 
  users
where users.AccountId is NULL;
select  
  min(
    cast(votes.UserId as int8)), 
  votes.Id, 
  votes.Id, 
  sum(
    cast(cast(null as float4) as float4)), 
  votes.UserId, 
  min(
    cast(votes.PostId as int8)), 
  votes.VoteTypeId, 
  users.AccountId, 
  users.AboutMe, 
  users.Location, 
  max(
    cast(cast(null as float4) as float4)), 
  users.Location, 
  avg(
    cast(cast(null as int2) as int2)), 
  max(
    cast(users.ProfileImageUrl as float8)), 
  votes.UserId, 
  votes.UserId
from 
  users
    inner join votes
    on (users.Location is NULL)
where votes.PostId is not NULL
limit 65;
select  
  posts.CreationDate, 
  posts.Title, 
  posts.PostTypeId, 
  posts.ContentLicense, 
  posts.Body, 
  posts.ContentLicense
from 
  posts
where posts.OwnerUserId is NULL
limit 154;
select  
  votes.Id, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.PostId, 
  votes.UserId, 
  votes.Id, 
  votes.PostId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.UserId
from 
  votes
where votes.CreationDate is NULL;
select  
  posts.Body, 
  posts.OwnerUserId, 
  posts.Tags, 
  badges.Date, 
  users.Location, 
  posts.AcceptedAnswerId, 
  posts.OwnerDisplayName, 
  users.AccountId, 
  votes.Id, 
  users.AboutMe, 
  votes.Id, 
  votes.PostId, 
  badges.Class
from 
  posts
      inner join posts
        inner join votes
        on (posts.OwnerUserId <= votes.VoteTypeId)
      on (posts.Title >= posts.ContentLicense)
    inner join users
          inner join votes
          on (votes.CreationDate < users.CreationDate)
        inner join badges
        on (votes.VoteTypeId = badges.Id )
      inner join badges
          inner join posts
            inner join users
            on (posts.OwnerDisplayName = users.DisplayName )
          on (badges.TagBased > badges.TagBased)
        inner join badges
        on (users.AboutMe > badges.Name)
      on (badges.TagBased <= badges.TagBased)
    on (posts.Tags <= posts.Tags)
where users.ProfileImageUrl < users.ProfileImageUrl
limit 57;
select  
  votes.PostId, 
  votes.PostId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  posts.PostTypeId, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.Title, 
  min(
    cast(cast(null as oid) as oid))
from 
  votes
    inner join posts
    on (votes.CreationDate > votes.CreationDate)
where posts.PostTypeId <= posts.ParentId;
select  
  badges.Name, 
  users.WebsiteUrl, 
  users.Location
from 
  badges
    inner join users
    on (badges.Class = users.Id )
where users.Id is NULL;
select  
  posts.CreationDate, 
  posts.OwnerUserId, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  posts.Tags
from 
  posts
where posts.AcceptedAnswerId is NULL;
select  
  comments.PostId
from 
  comments
    inner join votes
      inner join postHistory
      on (votes.VoteTypeId = postHistory.Id )
    on (votes.VoteTypeId is NULL)
where postHistory.Text is NULL;
select  
  badges.Id, 
  badges.Class
from 
  badges
where badges.Id is NULL
limit 65;
select  
  postLinks.CreationDate, 
  max(
    cast(cast(null as oid) as oid)), 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postHistory.Id, 
  postHistory.PostId, 
  max(
    cast(cast(null as inet) as inet)), 
  postLinks.Id, 
  postLinks.Id
from 
  postHistory
    inner join postLinks
    on (postHistory.UserId is not NULL)
where postLinks.RelatedPostId is not NULL
limit 91;
select  
  comments.Text
from 
  comments
where comments.ContentLicense is NULL;
select  
  posts.OwnerUserId
from 
  postLinks
      inner join postLinks
      on (postLinks.LinkTypeId = postLinks.RelatedPostId)
    inner join posts
    on (postLinks.LinkTypeId = posts.Id )
where posts.Tags is NULL;
select  
  postHistory.ContentLicense
from 
  postHistory
where postHistory.PostHistoryTypeId is not NULL;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.CreationDate, 
  sum(
    cast(cast(null as int2) as int2)), 
  postHistory.PostHistoryTypeId, 
  postHistory.UserId, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  sum(
    cast(cast(null as int2) as int2)), 
  postHistory.CreationDate
from 
  postHistory
where postHistory.PostId is not NULL
limit 86;
select  
  comments.PostId, 
  badges.Class, 
  badges.Class, 
  min(
    cast(cast(null as tid) as tid)), 
  comments.UserId, 
  posts.Title, 
  max(
    cast(comments.CreationDate as "timestamp")), 
  posts.Id
from 
  posts
    inner join badges
      inner join badges
        inner join comments
        on (badges.Date = comments.CreationDate )
      on (badges.Date = badges.Date)
    on (comments.UserId >= posts.ParentId)
where badges.Class is NULL;
select  
  posts.PostTypeId, 
  badges.Date, 
  votes.UserId, 
  posts.Title
from 
  badges
          inner join posts
              inner join votes
              on (posts.CreationDate >= posts.CreationDate)
            inner join posts
              inner join votes
                inner join badges
                  inner join comments
                  on (badges.TagBased <= badges.TagBased)
                on (badges.Date <= badges.Date)
              on (posts.OwnerUserId >= votes.Id)
            on (comments.UserDisplayName <= comments.Text)
          on (posts.Body >= posts.Tags)
        inner join badges
        on (badges.TagBased > badges.TagBased)
      inner join posts
      on (comments.UserDisplayName < posts.Title)
    inner join posts
    on (votes.CreationDate is not NULL)
where votes.CreationDate <= posts.CreationDate
limit 36;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  users.Location, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl
from 
  users
where users.WebsiteUrl < users.WebsiteUrl
limit 82;
select  
  posts.Id, 
  posts.Id
from 
  posts
where posts.PostTypeId is NULL
limit 105;
select  
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as money) as money)), 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as oid) as oid)), 
  postLinks.Id, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.Id, 
  badges.Date
from 
  postLinks
    inner join badges
      inner join badges
      on (badges.TagBased < badges.TagBased)
    on (badges.Name is not NULL)
where badges.Date is NULL
limit 63;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  postLinks.CreationDate
from 
  postLinks
where postLinks.Id is NULL
limit 168;
select  
  users.DisplayName, 
  postHistory.PostId, 
  postLinks.LinkTypeId, 
  comments.Text, 
  comments.CreationDate, 
  postLinks.LinkTypeId, 
  comments.Text, 
  max(
    cast(cast(null as oid) as oid))
from 
  comments
      inner join posts
        inner join comments
            inner join users
            on (users.AccountId > users.ProfileImageUrl)
          inner join postLinks
            inner join comments
            on (postLinks.CreationDate < postLinks.CreationDate)
          on (comments.CreationDate = comments.CreationDate)
        on (users.ProfileImageUrl > users.AccountId)
      on (users.Location > posts.Body)
    inner join postHistory
        inner join postLinks
        on (postHistory.RevisionGUID < postHistory.RevisionGUID)
      inner join comments
      on (postHistory.RevisionGUID = comments.ContentLicense)
    on (comments.Id is not NULL)
where comments.Id > posts.AcceptedAnswerId
limit 81;
select  
  badges.Date, 
  postLinks.LinkTypeId, 
  comments.Id
from 
  comments
          inner join postHistory
          on (comments.ContentLicense = postHistory.UserDisplayName )
        inner join users
            inner join badges
            on (badges.TagBased >= badges.TagBased)
          inner join postHistory
            inner join badges
            on (badges.Date > postHistory.CreationDate)
          on (postHistory.RevisionGUID = badges.Name)
        on (postHistory.Id = postHistory.UserId)
      inner join posts
      on (badges.TagBased < badges.TagBased)
    inner join postLinks
      inner join posts
        inner join badges
        on (posts.Tags > posts.Body)
      on (posts.ParentId <= badges.Id)
    on (badges.Name is NULL)
where comments.CreationDate > posts.CreationDate
limit 137;
select  
  users.Id, 
  max(
    cast(users.Id as int8)), 
  users.Id, 
  sum(
    cast(cast(null as int2) as int2)), 
  users.AboutMe, 
  users.AboutMe, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.Location, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  users.AccountId, 
  min(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as inet) as inet)), 
  users.AboutMe, 
  users.DisplayName, 
  users.Location, 
  users.AboutMe, 
  users.CreationDate, 
  users.WebsiteUrl
from 
  users
where users.ProfileImageUrl is NULL
limit 129;
select  
  posts.AcceptedAnswerId, 
  posts.Title
from 
  posts
    inner join badges
    on (posts.PostTypeId < badges.Id)
where badges.Id is not NULL;
select  
  votes.Id
from 
  badges
    inner join comments
          inner join votes
          on (votes.Id <= votes.PostId)
        inner join badges
        on (votes.CreationDate <= badges.Date)
      inner join users
        inner join postLinks
          inner join postHistory
            inner join comments
            on (postHistory.RevisionGUID = comments.ContentLicense )
          on (comments.CreationDate > postHistory.CreationDate)
        on (users.CreationDate < postHistory.CreationDate)
      on (badges.TagBased = badges.TagBased)
    on (badges.TagBased > badges.TagBased)
where postLinks.RelatedPostId >= postHistory.UserId;
select  
  postHistory.Id
from 
  postHistory
where postHistory.UserId >= postHistory.PostHistoryTypeId
limit 59;
select  
  posts.AcceptedAnswerId, 
  posts.OwnerUserId, 
  postLinks.CreationDate, 
  posts.ContentLicense, 
  posts.CreationDate, 
  votes.UserId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postHistory.UserId, 
  postLinks.LinkTypeId, 
  posts.Body, 
  posts.Title, 
  postLinks.LinkTypeId
from 
  postLinks
        inner join postLinks
        on (postLinks.CreationDate <= postLinks.CreationDate)
      inner join postHistory
            inner join votes
            on (postHistory.ContentLicense >= postHistory.Comment)
          inner join posts
          on (postHistory.RevisionGUID <= postHistory.ContentLicense)
        inner join postLinks
        on (postLinks.CreationDate <= postHistory.CreationDate)
      on (votes.CreationDate = postHistory.CreationDate)
    inner join posts
    on (postLinks.CreationDate = posts.CreationDate )
where postHistory.ContentLicense > posts.Title
limit 121;
select  
  votes.PostId, 
  max(
    cast(badges.Date as "timestamp")), 
  postLinks.PostId, 
  badges.TagBased, 
  postLinks.RelatedPostId
from 
  badges
      inner join postLinks
        inner join badges
          inner join posts
                inner join comments
                on (posts.Title < posts.Body)
              inner join postHistory
              on (posts.CreationDate > comments.CreationDate)
            inner join votes
              inner join badges
              on (badges.TagBased <= badges.TagBased)
            on (badges.TagBased >= badges.TagBased)
          on (badges.TagBased > badges.TagBased)
        on (badges.TagBased = badges.TagBased)
      on (badges.TagBased <= badges.TagBased)
    inner join postLinks
    on (postLinks.PostId is NULL)
where postLinks.PostId is not NULL
limit 102;
select  
  users.DisplayName, 
  users.CreationDate, 
  users.AboutMe
from 
  users
where users.AboutMe is not NULL;
select  
  badges.Date, 
  avg(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId, 
  users.WebsiteUrl, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  badges.Name, 
  postLinks.CreationDate, 
  comments.Id, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  comments.Text, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.CreationDate, 
  badges.Id, 
  postLinks.RelatedPostId, 
  comments.Id
from 
  postLinks
        inner join postLinks
        on (postLinks.RelatedPostId = postLinks.RelatedPostId)
      inner join comments
        inner join users
          inner join postLinks
            inner join votes
              inner join badges
                inner join badges
                on (badges.TagBased < badges.TagBased)
              on (badges.Name >= badges.Name)
            on (badges.TagBased <= badges.TagBased)
          on (users.WebsiteUrl = badges.Name )
        on (comments.UserId = users.Id )
      on (badges.Name >= comments.UserDisplayName)
    inner join postLinks
    on (badges.Date >= votes.CreationDate)
where comments.PostId is not NULL;
select  
  votes.Id, 
  postLinks.PostId
from 
  users
    inner join postLinks
      inner join postHistory
        inner join votes
          inner join votes
            inner join postLinks
            on (postLinks.CreationDate = votes.CreationDate)
          on (votes.CreationDate > postLinks.CreationDate)
        on (votes.CreationDate = votes.CreationDate)
      on (postHistory.Comment <= postHistory.ContentLicense)
    on (votes.PostId is not NULL)
where postHistory.ContentLicense = postHistory.UserDisplayName;
select  
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.CreationDate is not NULL;
select  
  users.AboutMe, 
  postHistory.RevisionGUID, 
  postHistory.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  users.ProfileImageUrl, 
  users.CreationDate, 
  min(
    cast(users.ProfileImageUrl as float8)), 
  postHistory.UserId, 
  max(
    cast(cast(null as inet) as inet)), 
  users.Location, 
  users.CreationDate, 
  users.AccountId, 
  users.DisplayName, 
  users.DisplayName, 
  users.WebsiteUrl, 
  postHistory.ContentLicense, 
  users.DisplayName, 
  min(
    cast(cast(null as date) as date)), 
  users.ProfileImageUrl, 
  users.AccountId, 
  postHistory.CreationDate
from 
  postHistory
    inner join users
      inner join users
      on (users.AboutMe = users.DisplayName )
    on (users.Id < users.Id)
where users.ProfileImageUrl < users.ProfileImageUrl
limit 72;
select  
  posts.CreationDate, 
  posts.ParentId, 
  posts.OwnerUserId, 
  posts.CreationDate, 
  posts.Tags, 
  posts.ContentLicense, 
  posts.Body, 
  posts.ContentLicense, 
  posts.OwnerDisplayName, 
  posts.ContentLicense
from 
  posts
where posts.OwnerDisplayName is not NULL
limit 170;
select  
  comments.PostId, 
  comments.PostId, 
  users.DisplayName, 
  comments.Text, 
  comments.Text, 
  comments.Text, 
  comments.CreationDate, 
  badges.Class
from 
  badges
      inner join users
      on (users.Location = badges.Name)
    inner join comments
        inner join badges
        on (comments.PostId <= badges.Class)
      inner join comments
      on (comments.ContentLicense = comments.Text)
    on (comments.Text is not NULL)
where comments.PostId is not NULL;
select  
  posts.AcceptedAnswerId, 
  posts.CreationDate, 
  min(
    cast(cast(null as "time") as "time"))
from 
  users
        inner join users
        on (users.ProfileImageUrl <= users.AccountId)
      inner join postLinks
            inner join posts
              inner join postLinks
              on (posts.Tags = posts.Tags)
            on (posts.CreationDate <= postLinks.CreationDate)
          inner join users
              inner join posts
              on (users.CreationDate > posts.CreationDate)
            inner join votes
            on (posts.Title < posts.Title)
          on (users.ProfileImageUrl > users.ProfileImageUrl)
        inner join postHistory
        on (posts.CreationDate = postLinks.CreationDate)
      on (postHistory.PostHistoryTypeId > votes.PostId)
    inner join badges
          inner join postHistory
          on (badges.Class = postHistory.Id )
        inner join users
          inner join postLinks
          on (users.AccountId >= users.AccountId)
        on (users.ProfileImageUrl > users.AccountId)
      inner join posts
      on (postHistory.Id >= postLinks.Id)
    on (votes.Id is not NULL)
where users.ProfileImageUrl is not NULL;
select  
  postHistory.PostHistoryTypeId, 
  max(
    cast(cast(null as float4) as float4)), 
  postHistory.Comment, 
  max(
    cast(24 as int4))
from 
  postHistory
where postHistory.Text is NULL
limit 167;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  sum(
    cast(cast(null as money) as money)), 
  postLinks.RelatedPostId
from 
  postLinks
      inner join votes
            inner join posts
            on (posts.CreationDate = posts.CreationDate)
          inner join users
          on (votes.UserId = users.Id )
        inner join postLinks
        on (posts.Id > postLinks.Id)
      on (users.CreationDate < users.CreationDate)
    inner join votes
    on (posts.Tags is not NULL)
where postLinks.RelatedPostId is not NULL
limit 114;
select  
  votes.CreationDate, 
  votes.CreationDate, 
  min(
    cast(cast(null as float8) as float8)), 
  votes.VoteTypeId
from 
  votes
    inner join badges
    on (votes.VoteTypeId is NULL)
where badges.Name is NULL;
select  
  posts.PostTypeId, 
  posts.AcceptedAnswerId, 
  postLinks.LinkTypeId
from 
  posts
        inner join posts
          inner join badges
          on (posts.ParentId = badges.Id )
        on (posts.PostTypeId = badges.Id )
      inner join postLinks
      on (posts.AcceptedAnswerId < posts.Id)
    inner join users
    on (posts.ParentId = users.Id )
where badges.TagBased is not NULL
limit 17;
select  
  avg(
    cast(cast(null as int2) as int2))
from 
  badges
              inner join votes
              on (badges.Id >= badges.UserId)
            inner join postLinks
            on (badges.TagBased <= badges.TagBased)
          inner join votes
          on (badges.Name = badges.Name)
        inner join votes
        on (badges.Name > badges.Name)
      inner join badges
      on (postLinks.CreationDate >= votes.CreationDate)
    inner join comments
      inner join badges
          inner join badges
          on (badges.Date <= badges.Date)
        inner join comments
        on (badges.TagBased <= badges.TagBased)
      on (badges.TagBased = badges.TagBased)
    on (badges.TagBased >= badges.TagBased)
where badges.Class is not NULL;
select  
  badges.TagBased
from 
  badges
    inner join votes
        inner join postLinks
        on (postLinks.LinkTypeId <= votes.Id)
      inner join badges
      on (badges.Name <= badges.Name)
    on (badges.Name = badges.Name)
where votes.CreationDate is NULL;
select  
  comments.UserId, 
  max(
    cast(cast(null as "time") as "time")), 
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.UserDisplayName
from 
  comments
    inner join postLinks
    on (comments.Text is not NULL)
where comments.ContentLicense = comments.UserDisplayName;
select  
  users.DisplayName, 
  min(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.UserId, 
  users.AboutMe, 
  users.CreationDate, 
  badges.Id, 
  users.Id, 
  badges.UserId, 
  badges.UserId, 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.DisplayName
from 
  badges
    inner join users
    on (badges.TagBased < badges.TagBased)
where users.ProfileImageUrl = users.AccountId
limit 64;
select  
  comments.UserId
from 
  comments
where comments.CreationDate is not NULL;
select  
  votes.Id, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  postLinks.PostId, 
  users.WebsiteUrl, 
  votes.UserId, 
  sum(
    cast(cast(null as float4) as float4)), 
  votes.VoteTypeId
from 
  postLinks
    inner join comments
            inner join users
            on (users.DisplayName = users.AboutMe)
          inner join votes
          on (comments.PostId < comments.Id)
        inner join votes
        on (users.AccountId <= users.ProfileImageUrl)
      inner join votes
        inner join badges
        on (badges.Name < badges.Name)
      on (comments.UserId >= comments.UserId)
    on (postLinks.LinkTypeId is not NULL)
where votes.VoteTypeId is NULL
limit 54;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posts.AcceptedAnswerId, 
  posts.CreationDate, 
  posts.ParentId
from 
  users
    inner join posts
            inner join votes
            on (posts.Id = votes.Id )
          inner join badges
          on (posts.Id > votes.UserId)
        inner join comments
        on (posts.ContentLicense > posts.ContentLicense)
      inner join posts
      on (badges.TagBased <= badges.TagBased)
    on (users.DisplayName = comments.ContentLicense )
where comments.Id is NULL
limit 121;
select  
  users.DisplayName
from 
  users
      inner join comments
            inner join users
            on (comments.ContentLicense = users.DisplayName )
          inner join posts
          on (users.ProfileImageUrl < users.ProfileImageUrl)
        inner join users
          inner join postLinks
                inner join votes
                on (postLinks.PostId <= votes.VoteTypeId)
              inner join comments
              on (votes.PostId = postLinks.RelatedPostId)
            inner join postLinks
            on (comments.UserDisplayName <= comments.ContentLicense)
          on (users.AccountId <= users.AccountId)
        on (users.CreationDate = postLinks.CreationDate)
      on (postLinks.CreationDate < users.CreationDate)
    inner join votes
          inner join posts
          on (votes.CreationDate > votes.CreationDate)
        inner join posts
          inner join posts
          on (posts.AcceptedAnswerId <= posts.ParentId)
        on (votes.CreationDate <= posts.CreationDate)
      inner join postLinks
      on (posts.CreationDate >= posts.CreationDate)
    on (users.AccountId = users.AccountId)
where posts.Body is NULL;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  badges.TagBased, 
  postLinks.PostId, 
  min(
    cast(cast(null as date) as date)), 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  badges.UserId, 
  badges.TagBased
from 
  postLinks
    inner join badges
    on (postLinks.Id = badges.Id )
where badges.Class is not NULL
limit 156;
select  
  postHistory.PostHistoryTypeId, 
  comments.CreationDate, 
  postHistory.RevisionGUID, 
  comments.Id, 
  sum(
    cast(25 as int4))
from 
  comments
            inner join votes
            on (comments.CreationDate = votes.CreationDate )
          inner join users
            inner join badges
            on (badges.TagBased = badges.TagBased)
          on (users.AccountId <= users.ProfileImageUrl)
        inner join comments
          inner join votes
          on (comments.Text > comments.UserDisplayName)
        on (users.ProfileImageUrl <= users.ProfileImageUrl)
      inner join users
      on (comments.CreationDate = users.CreationDate )
    inner join postHistory
    on (users.AccountId >= users.ProfileImageUrl)
where votes.VoteTypeId is not NULL
limit 95;
select  
  posts.ContentLicense
from 
  posts
where posts.OwnerUserId is not NULL
limit 154;
select  
  votes.PostId
from 
  votes
where votes.CreationDate is NULL
limit 135;
select  
  max(
    cast(posts.Title as text)), 
  posts.Id, 
  posts.ContentLicense, 
  min(
    cast(cast(null as "time") as "time")), 
  posts.CreationDate, 
  posts.Tags, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.CreationDate, 
  posts.Tags, 
  posts.OwnerDisplayName, 
  posts.PostTypeId, 
  posts.Body, 
  posts.Body, 
  posts.ContentLicense, 
  posts.ParentId, 
  posts.Tags
from 
  posts
where posts.PostTypeId is not NULL
limit 101;
select  
  votes.PostId
from 
  votes
      inner join votes
        inner join votes
        on (votes.Id > votes.Id)
      on (votes.CreationDate = votes.CreationDate)
    inner join badges
      inner join users
        inner join postHistory
            inner join posts
            on (postHistory.ContentLicense = posts.OwnerDisplayName )
          inner join posts
          on (posts.CreationDate >= postHistory.CreationDate)
        on (users.ProfileImageUrl >= users.ProfileImageUrl)
      on (badges.Id = postHistory.Id )
    on (badges.TagBased = badges.TagBased)
where votes.CreationDate is NULL
limit 118;
select  
  postHistory.Comment, 
  postHistory.UserId, 
  postHistory.UserId, 
  postHistory.Text
from 
  postHistory
where postHistory.UserDisplayName is not NULL;
select  
  users.DisplayName, 
  votes.Id, 
  votes.CreationDate, 
  users.Id, 
  votes.PostId, 
  users.ProfileImageUrl
from 
  votes
    inner join users
      inner join postLinks
      on (postLinks.LinkTypeId >= postLinks.Id)
    on (votes.VoteTypeId is NULL)
where postLinks.CreationDate > votes.CreationDate
limit 94;
select  
  avg(
    cast(54 as int4))
from 
  users
where users.DisplayName is NULL
limit 54;
select  
  postHistory.UserDisplayName, 
  postHistory.CreationDate, 
  postHistory.Comment, 
  postHistory.ContentLicense, 
  comments.Id
from 
  comments
        inner join postHistory
            inner join badges
            on (postHistory.PostHistoryTypeId < postHistory.UserId)
          inner join postHistory
          on (badges.Class > postHistory.Id)
        on (comments.CreationDate > postHistory.CreationDate)
      inner join posts
      on (postHistory.ContentLicense = posts.OwnerDisplayName )
    inner join postHistory
    on (postHistory.CreationDate is NULL)
where badges.TagBased >= badges.TagBased
limit 131;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.Id
from 
  comments
      inner join votes
        inner join postLinks
        on (votes.CreationDate = postLinks.CreationDate)
      on (comments.UserId = postLinks.Id )
    inner join postLinks
    on (postLinks.RelatedPostId = postLinks.Id )
where postLinks.Id is NULL;
select  
  count(
    cast(postHistory.PostId as int8)), 
  badges.TagBased, 
  badges.Id, 
  postHistory.UserId, 
  votes.Id, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postHistory.PostId, 
  badges.Class
from 
  votes
        inner join badges
        on (votes.CreationDate < badges.Date)
      inner join votes
          inner join votes
              inner join users
              on (votes.Id = users.Id )
            inner join postHistory
            on (votes.CreationDate > users.CreationDate)
          on (users.AccountId >= users.ProfileImageUrl)
        inner join badges
            inner join postHistory
            on (badges.TagBased >= badges.TagBased)
          inner join votes
          on (postHistory.CreationDate = votes.CreationDate)
        on (users.ProfileImageUrl > users.ProfileImageUrl)
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    inner join users
    on (users.DisplayName <= badges.Name)
where users.AccountId < users.ProfileImageUrl
limit 51;
select distinct 
  users.AccountId, 
  posts.Id, 
  posts.Title
from 
  users
    inner join posts
    on (users.ProfileImageUrl > users.ProfileImageUrl)
where posts.OwnerUserId is NULL;
select  
  comments.PostId
from 
  users
    inner join badges
      inner join comments
          inner join comments
          on (comments.CreationDate <= comments.CreationDate)
        inner join users
        on (comments.ContentLicense = users.DisplayName )
      on (users.AccountId < users.AccountId)
    on (users.WebsiteUrl >= comments.ContentLicense)
where users.Location > users.WebsiteUrl
limit 142;
select  
  users.WebsiteUrl, 
  comments.UserId, 
  postHistory.PostHistoryTypeId, 
  postLinks.LinkTypeId
from 
  users
      inner join comments
          inner join postHistory
            inner join comments
            on (postHistory.UserId > postHistory.PostId)
          on (postHistory.CreationDate >= postHistory.CreationDate)
        inner join postLinks
        on (postHistory.UserDisplayName <= postHistory.ContentLicense)
      on (users.CreationDate = comments.CreationDate )
    inner join users
    on (comments.UserId = users.Id )
where postLinks.LinkTypeId is NULL
limit 91;
select  
  badges.UserId, 
  badges.UserId, 
  postHistory.Text
from 
  votes
      inner join comments
        inner join postLinks
            inner join badges
                inner join postHistory
                on (badges.TagBased > badges.TagBased)
              inner join users
              on (users.ProfileImageUrl > users.ProfileImageUrl)
            on (users.Location < users.Location)
          inner join comments
          on (postHistory.Comment = comments.ContentLicense )
        on (users.Location <= postHistory.Comment)
      on (badges.TagBased > badges.TagBased)
    inner join postHistory
        inner join votes
        on (postHistory.RevisionGUID > postHistory.Comment)
      inner join users
          inner join votes
          on (votes.VoteTypeId = votes.Id)
        inner join comments
            inner join posts
            on (posts.Title >= posts.Tags)
          inner join users
          on (users.AccountId <= users.ProfileImageUrl)
        on (comments.Id >= votes.VoteTypeId)
      on (users.CreationDate >= users.CreationDate)
    on (postHistory.PostHistoryTypeId is not NULL)
where votes.UserId is NULL
limit 93;
select  
  votes.UserId, 
  votes.Id, 
  badges.Id
from 
  votes
        inner join votes
        on (votes.Id >= votes.PostId)
      inner join votes
      on (votes.Id <= votes.VoteTypeId)
    inner join badges
    on (votes.VoteTypeId is not NULL)
where badges.Name > badges.Name
limit 71;
select  
  votes.CreationDate, 
  votes.UserId, 
  comments.Id
from 
  comments
    inner join votes
    on (votes.VoteTypeId is NULL)
where votes.UserId is NULL;
select  
  posts.Tags, 
  posts.AcceptedAnswerId, 
  posts.ParentId, 
  posts.OwnerDisplayName, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  posts.Title, 
  posts.Tags, 
  posts.ContentLicense, 
  posts.Id
from 
  posts
where posts.ParentId is NULL
limit 124;
select  
  comments.Text, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.PostId, 
  comments.ContentLicense, 
  count(
    cast(comments.UserDisplayName as text)), 
  comments.ContentLicense
from 
  comments
where comments.PostId is not NULL;
select  
  posts.AcceptedAnswerId, 
  posts.ContentLicense, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.Id
from 
  posts
where posts.Body > posts.ContentLicense;
select  
  comments.ContentLicense, 
  users.Location, 
  comments.Text, 
  comments.PostId, 
  posts.Title, 
  posts.PostTypeId, 
  comments.CreationDate, 
  posts.OwnerDisplayName, 
  posts.AcceptedAnswerId, 
  posts.Title, 
  users.AboutMe, 
  posts.OwnerDisplayName, 
  users.AccountId
from 
  comments
      inner join posts
        inner join users
          inner join users
          on (users.Id <= users.Id)
        on (users.DisplayName < users.Location)
      on (users.CreationDate <= posts.CreationDate)
    inner join badges
    on (posts.OwnerDisplayName is not NULL)
where users.CreationDate <= comments.CreationDate
limit 100;
select  
  posts.OwnerDisplayName, 
  votes.UserId
from 
  users
    inner join votes
        inner join votes
        on (votes.CreationDate < votes.CreationDate)
      inner join postHistory
        inner join posts
          inner join postHistory
          on (postHistory.CreationDate > postHistory.CreationDate)
        on (postHistory.PostId = postHistory.Id )
      on (votes.CreationDate = posts.CreationDate)
    on (postHistory.ContentLicense is not NULL)
where postHistory.ContentLicense = postHistory.RevisionGUID
limit 92;
select  
  posts.PostTypeId, 
  posts.Body, 
  comments.Id
from 
  posts
    inner join users
      inner join comments
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    on (comments.ContentLicense is not NULL)
where comments.Text is NULL;
select  
  comments.PostId, 
  postHistory.Id, 
  comments.Id, 
  comments.Text, 
  comments.UserDisplayName, 
  comments.UserId, 
  postLinks.CreationDate, 
  postHistory.PostHistoryTypeId, 
  postLinks.CreationDate, 
  postHistory.PostId, 
  min(
    cast(postHistory.Text as text))
from 
  postLinks
    inner join postHistory
      inner join comments
      on (postHistory.Text = comments.ContentLicense )
    on (comments.CreationDate is not NULL)
where postHistory.CreationDate is not NULL
limit 148;
select  
  comments.PostId, 
  comments.UserId, 
  comments.CreationDate, 
  comments.ContentLicense, 
  max(
    cast(comments.CreationDate as "timestamp")), 
  comments.Id
from 
  comments
where comments.UserDisplayName >= comments.Text;
select  
  badges.Date, 
  badges.TagBased, 
  comments.ContentLicense, 
  comments.ContentLicense, 
  badges.Name, 
  posts.CreationDate
from 
  comments
        inner join posts
          inner join posts
          on (posts.CreationDate <= posts.CreationDate)
        on (posts.OwnerDisplayName >= posts.Title)
      inner join users
          inner join users
          on (users.ProfileImageUrl = users.AccountId )
        inner join badges
            inner join comments
              inner join postLinks
              on (comments.UserId <= postLinks.Id)
            on (badges.Date > comments.CreationDate)
          inner join postLinks
            inner join users
              inner join badges
                inner join votes
                  inner join posts
                  on (posts.Title <= posts.OwnerDisplayName)
                on (votes.Id <= posts.ParentId)
              on (votes.Id <= votes.Id)
            on (postLinks.LinkTypeId = votes.Id )
          on (badges.TagBased >= badges.TagBased)
        on (postLinks.Id = votes.UserId)
      on (posts.Id = postLinks.Id )
    inner join posts
        inner join users
        on (posts.AcceptedAnswerId >= posts.PostTypeId)
      inner join postLinks
      on (posts.CreationDate = postLinks.CreationDate )
    on (badges.TagBased > badges.TagBased)
where postLinks.CreationDate is NULL
limit 137;
select  
  users.AboutMe, 
  max(
    cast(users.AccountId as float8)), 
  users.CreationDate
from 
  users
where users.CreationDate is not NULL
limit 116;
select  
  comments.Id
from 
  comments
where comments.Id is not NULL
limit 55;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.Id, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.Id, 
  votes.PostId, 
  count(
    cast(votes.CreationDate as "timestamp")), 
  votes.PostId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.PostId, 
  votes.CreationDate
from 
  votes
where votes.UserId is NULL
limit 81;
select  
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as tid) as tid)), 
  max(
    cast(cast(null as float8) as float8)), 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as int2) as int2)), 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.Id is NULL
limit 135;
select  
  posts.ContentLicense, 
  votes.Id, 
  badges.Date, 
  votes.UserId, 
  votes.Id, 
  badges.Date, 
  posts.OwnerUserId, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  votes.VoteTypeId
from 
  posts
      inner join badges
        inner join votes
        on (badges.Date = votes.CreationDate)
      on (badges.TagBased < badges.TagBased)
    inner join votes
    on (votes.Id = votes.Id )
where votes.PostId is NULL
limit 55;
select  
  postHistory.PostId, 
  postHistory.CreationDate
from 
  postHistory
where postHistory.PostHistoryTypeId is not NULL
limit 17;
select  
  min(
    cast(cast(null as inet) as inet)), 
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.CreationDate, 
  postHistory.PostId, 
  postHistory.PostId, 
  postHistory.Comment
from 
  postHistory
where postHistory.Comment is not NULL
limit 155;
select  
  users.DisplayName, 
  users.WebsiteUrl, 
  users.DisplayName, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.ProfileImageUrl, 
  users.WebsiteUrl, 
  users.Id, 
  users.DisplayName, 
  users.WebsiteUrl, 
  users.DisplayName, 
  min(
    cast(users.CreationDate as "timestamp")), 
  users.WebsiteUrl, 
  users.Id, 
  users.AccountId, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  users
where users.ProfileImageUrl is not NULL;
select  
  postHistory.PostId, 
  votes.CreationDate, 
  posts.PostTypeId
from 
  posts
      inner join votes
          inner join postHistory
              inner join votes
              on (postHistory.Comment = postHistory.RevisionGUID)
            inner join votes
            on (postHistory.Text >= postHistory.UserDisplayName)
          on (votes.VoteTypeId > votes.UserId)
        inner join posts
        on (votes.CreationDate <= posts.CreationDate)
      on (postHistory.RevisionGUID < postHistory.RevisionGUID)
    inner join postHistory
    on (votes.CreationDate is not NULL)
where votes.CreationDate is not NULL
limit 99;
select  
  votes.CreationDate, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.ContentLicense
from 
  postHistory
    inner join votes
    on (postHistory.Comment >= postHistory.Comment)
where votes.CreationDate >= votes.CreationDate
limit 61;
select  
  posts.Body, 
  badges.UserId, 
  postHistory.Text, 
  badges.UserId, 
  max(
    cast(cast(null as oid) as oid))
from 
  posts
      inner join postHistory
          inner join badges
          on (postHistory.Id <= badges.UserId)
        inner join users
          inner join postLinks
          on (users.Id = postLinks.Id )
        on (postLinks.PostId > postHistory.Id)
      on (posts.Tags = postHistory.UserDisplayName )
    inner join badges
    on (postHistory.UserDisplayName = badges.Name )
where badges.Name is NULL
limit 39;
select  
  postHistory.PostId, 
  sum(
    cast(cast(null as int2) as int2)), 
  postHistory.PostHistoryTypeId
from 
  postLinks
      inner join postHistory
      on (postHistory.Text > postHistory.Text)
    inner join postHistory
    on (postLinks.CreationDate = postHistory.CreationDate )
where postHistory.CreationDate < postHistory.CreationDate;
select  
  comments.Id
from 
  comments
where comments.CreationDate is NULL
limit 43;
select  
  postHistory.PostId
from 
  postHistory
where postHistory.UserDisplayName is NULL;
select  
  posts.OwnerDisplayName, 
  posts.OwnerUserId, 
  posts.Title, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  posts
where posts.CreationDate >= posts.CreationDate;
select  
  comments.Id, 
  badges.Date
from 
  postHistory
    inner join badges
      inner join comments
      on (comments.ContentLicense = comments.Text)
    on (postHistory.Id < badges.UserId)
where badges.Name is not NULL
limit 166;
select  
  users.Location, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.CreationDate, 
  users.AccountId, 
  users.Location
from 
  users
where users.CreationDate >= users.CreationDate
limit 87;
select  
  posts.Title, 
  posts.Body, 
  posts.OwnerDisplayName, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  avg(
    cast(cast(null as float8) as float8))
from 
  posts
where posts.Body is not NULL
limit 20;
select  
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  max(
    cast(postHistory.Comment as text)), 
  postHistory.UserDisplayName
from 
  postLinks
      inner join postLinks
          inner join postHistory
          on (postHistory.PostHistoryTypeId <= postHistory.PostHistoryTypeId)
        inner join badges
          inner join postLinks
          on (postLinks.Id < badges.Class)
        on (badges.Name = postHistory.UserDisplayName)
      on (badges.TagBased = badges.TagBased)
    inner join votes
    on (badges.Id = votes.Id )
where votes.Id is not NULL
limit 48;
select  
  votes.CreationDate, 
  votes.CreationDate, 
  votes.Id
from 
  votes
where votes.VoteTypeId is not NULL
limit 40;
select  
  posts.Id, 
  posts.AcceptedAnswerId
from 
  posts
where posts.PostTypeId is NULL;
select  
  posts.PostTypeId, 
  postLinks.PostId, 
  votes.UserId, 
  users.ProfileImageUrl
from 
  users
        inner join votes
          inner join badges
            inner join badges
            on (badges.UserId < badges.Class)
          on (badges.Name = badges.Name)
        on (users.Location >= users.AboutMe)
      inner join users
        inner join posts
        on (users.AccountId <= users.ProfileImageUrl)
      on (users.CreationDate >= posts.CreationDate)
    inner join postLinks
    on (badges.Id is not NULL)
where posts.ParentId is not NULL
limit 134;
select  
  avg(
    cast(66 as int4)), 
  users.WebsiteUrl, 
  postHistory.PostId, 
  postHistory.Text, 
  votes.CreationDate, 
  postHistory.Comment, 
  votes.VoteTypeId, 
  users.WebsiteUrl, 
  users.CreationDate, 
  users.Id
from 
  postHistory
    inner join votes
      inner join users
      on (votes.VoteTypeId = users.Id )
    on (users.Location <= users.WebsiteUrl)
where postHistory.ContentLicense is NULL;
select  
  postHistory.PostId, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.CreationDate, 
  postHistory.UserId
from 
  postHistory
where postHistory.Id is NULL;
select  
  votes.UserId, 
  votes.UserId
from 
  postHistory
    inner join votes
    on (postHistory.Id < postHistory.PostHistoryTypeId)
where postHistory.Comment = postHistory.ContentLicense
limit 69;
select  
  postHistory.Comment, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  postHistory.UserId, 
  postHistory.Id, 
  postHistory.ContentLicense
from 
  postHistory
where postHistory.Id is not NULL;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  badges.UserId, 
  comments.Id, 
  postLinks.RelatedPostId, 
  comments.Id, 
  sum(
    cast(66 as int4)), 
  comments.UserId
from 
  comments
    inner join postHistory
        inner join postLinks
          inner join votes
          on (votes.CreationDate > postLinks.CreationDate)
        on (postHistory.Id = votes.Id )
      inner join badges
        inner join comments
        on (badges.TagBased > badges.TagBased)
      on (badges.Name = postHistory.RevisionGUID)
    on (comments.ContentLicense is NULL)
where comments.ContentLicense < postHistory.Text
limit 121;
select  
  badges.Id, 
  max(
    cast(cast(null as "time") as "time")), 
  postHistory.PostHistoryTypeId, 
  postHistory.ContentLicense, 
  votes.VoteTypeId, 
  badges.Name
from 
  badges
      inner join postHistory
      on (badges.TagBased < badges.TagBased)
    inner join votes
      inner join votes
      on (votes.CreationDate >= votes.CreationDate)
    on (postHistory.PostHistoryTypeId is not NULL)
where postHistory.Comment is not NULL
limit 62;
select  
  postHistory.Text, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postHistory.UserId, 
  postHistory.PostHistoryTypeId, 
  postHistory.Text, 
  postHistory.ContentLicense, 
  postHistory.ContentLicense
from 
  postHistory
where postHistory.UserDisplayName is not NULL;
select  
  posts.ParentId, 
  max(
    cast(cast(null as date) as date)), 
  posts.OwnerDisplayName, 
  posts.OwnerUserId
from 
  posts
    inner join posts
    on (posts.OwnerDisplayName is not NULL)
where posts.CreationDate > posts.CreationDate;
select  
  postLinks.PostId
from 
  postLinks
where postLinks.PostId is NULL;
select  
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  postLinks.CreationDate
from 
  postLinks
    inner join comments
    on (postLinks.RelatedPostId is NULL)
where comments.CreationDate is NULL
limit 118;
select  
  votes.UserId, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  votes.VoteTypeId, 
  max(
    cast(cast(null as text) as text)), 
  votes.Id, 
  votes.UserId, 
  votes.PostId
from 
  votes
where votes.Id is not NULL
limit 66;
select  
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  badges
    inner join badges
      inner join postHistory
      on (badges.UserId = postHistory.Id )
    on (badges.Id = postHistory.Id )
where badges.Name >= postHistory.UserDisplayName
limit 85;
select  
  postHistory.Text, 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.UserId is NULL
limit 100;
select  
  postLinks.Id, 
  votes.Id, 
  badges.Date, 
  badges.Date
from 
  badges
    inner join users
      inner join posts
        inner join users
              inner join postLinks
              on (users.CreationDate <= users.CreationDate)
            inner join postLinks
              inner join votes
              on (postLinks.LinkTypeId = votes.Id )
            on (users.AccountId <= users.AccountId)
          inner join badges
          on (badges.TagBased >= badges.TagBased)
        on (posts.ContentLicense >= posts.ContentLicense)
      on (postLinks.LinkTypeId >= posts.OwnerUserId)
    on (badges.TagBased is not NULL)
where users.Location is NULL
limit 95;
select  
  votes.Id, 
  votes.PostId, 
  max(
    cast(cast(null as oid) as oid)), 
  votes.UserId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId
from 
  votes
where votes.VoteTypeId is not NULL
limit 154;
select  
  votes.PostId, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as date) as date)), 
  votes.PostId, 
  badges.Class, 
  postLinks.PostId, 
  votes.Id, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  comments.Id, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.OwnerDisplayName, 
  comments.Id, 
  votes.CreationDate, 
  votes.CreationDate, 
  postLinks.RelatedPostId, 
  votes.Id, 
  comments.ContentLicense, 
  postLinks.Id, 
  sum(
    cast(80 as int4)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  posts.CreationDate, 
  votes.PostId, 
  badges.Date, 
  votes.PostId, 
  postLinks.PostId
from 
  posts
      inner join badges
        inner join comments
            inner join postLinks
            on (comments.UserDisplayName < comments.ContentLicense)
          inner join postLinks
            inner join votes
            on (votes.UserId < votes.UserId)
          on (postLinks.PostId = postLinks.Id )
        on (comments.ContentLicense <= comments.ContentLicense)
      on (postLinks.PostId <= comments.PostId)
    inner join votes
    on (postLinks.LinkTypeId is NULL)
where postLinks.Id is not NULL
limit 103;
select  
  comments.PostId, 
  min(
    cast(cast(null as "time") as "time")), 
  comments.Text, 
  max(
    cast(comments.PostId as int8)), 
  comments.UserId, 
  comments.PostId, 
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.UserId
from 
  comments
where comments.UserDisplayName is not NULL;
select  
  postLinks.PostId, 
  posts.AcceptedAnswerId, 
  badges.Id
from 
  badges
      inner join comments
        inner join postLinks
        on (comments.UserId < postLinks.PostId)
      on (badges.Class = comments.Id )
    inner join posts
        inner join postLinks
        on (postLinks.CreationDate = postLinks.CreationDate)
      inner join badges
            inner join comments
            on (badges.TagBased <= badges.TagBased)
          inner join postLinks
          on (badges.Date = postLinks.CreationDate )
        inner join comments
        on (comments.CreationDate <= badges.Date)
      on (posts.PostTypeId >= postLinks.RelatedPostId)
    on (postLinks.RelatedPostId is not NULL)
where postLinks.CreationDate is not NULL;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.Id
from 
  postLinks
where postLinks.RelatedPostId is not NULL
limit 116;
select  
  votes.UserId, 
  comments.ContentLicense, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.UserId
from 
  comments
      inner join votes
      on (votes.CreationDate = comments.CreationDate)
    inner join comments
    on (comments.UserId = comments.Id )
where comments.ContentLicense is NULL;
select  
  comments.Text, 
  badges.Date, 
  votes.UserId, 
  comments.CreationDate
from 
  votes
    inner join badges
      inner join badges
        inner join posts
                  inner join postLinks
                  on (posts.Id = postLinks.Id )
                inner join badges
                on (posts.OwnerDisplayName = posts.Body)
              inner join votes
              on (posts.Title = posts.Title)
            inner join comments
            on (postLinks.LinkTypeId < postLinks.PostId)
          inner join comments
          on (comments.CreationDate = badges.Date)
        on (badges.Date = votes.CreationDate )
      on (badges.TagBased < badges.TagBased)
    on (votes.PostId is NULL)
where postLinks.CreationDate is not NULL
limit 51;
select  
  votes.UserId
from 
  votes
where votes.Id is NULL
limit 135;
select  
  postHistory.UserId, 
  postHistory.UserId, 
  votes.CreationDate, 
  users.DisplayName, 
  users.Id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postLinks.LinkTypeId, 
  users.Location, 
  votes.VoteTypeId, 
  postLinks.RelatedPostId, 
  votes.CreationDate
from 
  posts
        inner join comments
            inner join postHistory
            on (comments.PostId = postHistory.Id )
          inner join users
          on (comments.PostId >= users.Id)
        on (users.AboutMe < postHistory.UserDisplayName)
      inner join postLinks
        inner join badges
        on (badges.Class >= badges.Class)
      on (badges.TagBased >= badges.TagBased)
    inner join postLinks
      inner join votes
          inner join postHistory
              inner join votes
              on (votes.PostId < postHistory.Id)
            inner join votes
            on (postHistory.UserId > votes.VoteTypeId)
          on (postHistory.UserDisplayName > postHistory.ContentLicense)
        inner join votes
        on (postHistory.RevisionGUID >= postHistory.Text)
      on (postHistory.CreationDate = votes.CreationDate)
    on (users.AccountId is NULL)
where badges.TagBased > badges.TagBased
limit 135;
select  
  users.CreationDate, 
  users.CreationDate
from 
  users
          inner join users
          on (users.Location <= users.WebsiteUrl)
        inner join comments
        on (comments.Id = comments.UserId)
      inner join users
        inner join users
        on (users.AboutMe = users.Location)
      on (users.ProfileImageUrl >= users.AccountId)
    inner join users
    on (users.AccountId >= users.AccountId)
where users.ProfileImageUrl is NULL;
select  
  badges.Date, 
  posts.OwnerUserId, 
  badges.Class, 
  badges.TagBased, 
  posts.Title, 
  badges.UserId, 
  posts.Body, 
  postHistory.PostId, 
  badges.UserId
from 
  users
    inner join badges
        inner join votes
          inner join postLinks
              inner join postHistory
                inner join postHistory
                on (postHistory.Comment >= postHistory.ContentLicense)
              on (postHistory.ContentLicense <= postHistory.RevisionGUID)
            inner join posts
              inner join posts
                inner join badges
                on (posts.Id >= posts.Id)
              on (posts.PostTypeId <= posts.OwnerUserId)
            on (postLinks.PostId > posts.OwnerUserId)
          on (postHistory.ContentLicense >= posts.ContentLicense)
        on (votes.Id > postHistory.PostHistoryTypeId)
      inner join badges
      on (postLinks.RelatedPostId = posts.Id)
    on (badges.Date > badges.Date)
where votes.VoteTypeId <= postHistory.UserId
limit 99;
select  
  postLinks.RelatedPostId, 
  posts.ParentId, 
  max(
    cast(users.AccountId as float8)), 
  votes.UserId, 
  users.DisplayName, 
  users.AccountId, 
  users.DisplayName, 
  votes.CreationDate
from 
  postLinks
      inner join votes
        inner join votes
        on (votes.VoteTypeId > votes.VoteTypeId)
      on (postLinks.CreationDate <= votes.CreationDate)
    inner join votes
          inner join posts
            inner join postHistory
            on (postHistory.CreationDate = posts.CreationDate)
          on (posts.CreationDate >= postHistory.CreationDate)
        inner join postHistory
          inner join postLinks
          on (postHistory.RevisionGUID = postHistory.RevisionGUID)
        on (votes.CreationDate <= postHistory.CreationDate)
      inner join users
      on (posts.Id = users.Id )
    on (posts.Id < postLinks.LinkTypeId)
where votes.VoteTypeId is NULL
limit 158;
select  
  badges.Name, 
  users.WebsiteUrl, 
  users.AboutMe, 
  votes.Id, 
  users.AccountId, 
  users.ProfileImageUrl, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
    inner join badges
      inner join votes
      on (badges.Id < votes.VoteTypeId)
    on (users.Id = badges.Id )
where users.ProfileImageUrl = users.ProfileImageUrl
limit 94;
select  
  comments.UserDisplayName, 
  comments.Id, 
  comments.PostId, 
  comments.UserDisplayName, 
  comments.PostId, 
  max(
    cast(comments.CreationDate as "timestamp")), 
  comments.UserDisplayName, 
  min(
    cast(cast(null as money) as money)), 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.CreationDate, 
  comments.UserId, 
  comments.CreationDate, 
  max(
    cast(cast(null as oid) as oid)), 
  comments.Text
from 
  comments
where comments.Id is not NULL;
select  
  postLinks.CreationDate, 
  max(
    cast(98 as int4)), 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.LinkTypeId is not NULL;
select  
  badges.Class, 
  badges.Class, 
  badges.UserId, 
  badges.TagBased
from 
  badges
where badges.Class <= badges.Class
limit 146;
select  
  postHistory.PostId
from 
  postHistory
where postHistory.Text >= postHistory.RevisionGUID
limit 92;
select distinct 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  comments.ContentLicense, 
  min(
    cast(cast(null as money) as money)), 
  votes.PostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  badges.Name, 
  posts.ContentLicense, 
  badges.Date, 
  postLinks.Id, 
  max(
    cast(badges.Id as int8)), 
  badges.Name, 
  posts.CreationDate, 
  badges.Date, 
  comments.UserId, 
  posts.OwnerDisplayName, 
  posts.Body, 
  posts.Tags
from 
  posts
        inner join postLinks
            inner join votes
            on (postLinks.CreationDate = votes.CreationDate)
          inner join comments
          on (postLinks.CreationDate <= postLinks.CreationDate)
        on (postLinks.Id >= comments.UserId)
      inner join badges
        inner join postLinks
          inner join badges
          on (badges.Name = badges.Name)
        on (badges.Class = badges.Id)
      on (votes.UserId < votes.PostId)
    inner join postLinks
      inner join posts
        inner join comments
        on (posts.OwnerUserId < comments.UserId)
      on (postLinks.CreationDate = posts.CreationDate )
    on (comments.PostId is not NULL)
where badges.Date < comments.CreationDate
limit 91;
select  
  postHistory.Text, 
  postHistory.PostHistoryTypeId, 
  postHistory.Comment, 
  postHistory.UserId, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.CreationDate, 
  postHistory.PostId, 
  postHistory.CreationDate, 
  count(*), 
  max(
    cast(cast(null as xid8) as xid8)), 
  postHistory.CreationDate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postHistory.ContentLicense, 
  sum(
    cast(cast(null as money) as money)), 
  min(
    cast(postHistory.CreationDate as "timestamp"))
from 
  postHistory
where postHistory.PostHistoryTypeId is NULL
limit 70;
select  
  badges.TagBased, 
  users.CreationDate, 
  users.DisplayName, 
  users.WebsiteUrl
from 
  postHistory
    inner join badges
      inner join users
      on (users.ProfileImageUrl >= users.AccountId)
    on (postHistory.CreationDate = users.CreationDate )
where users.AboutMe is NULL
limit 179;
select  
  badges.TagBased, 
  badges.Name, 
  badges.Name, 
  badges.Id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  badges.TagBased, 
  badges.Date, 
  badges.Class, 
  badges.Name
from 
  badges
where badges.Id is not NULL
limit 114;
select  
  badges.Id, 
  badges.Date, 
  badges.UserId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.TagBased, 
  badges.TagBased
from 
  badges
where badges.Name <= badges.Name
limit 121;
select  
  comments.ContentLicense, 
  comments.CreationDate, 
  comments.Text
from 
  comments
where comments.UserId is NULL
limit 125;
select  
  badges.Date, 
  badges.Id, 
  badges.Id, 
  badges.Id, 
  badges.TagBased, 
  badges.Class, 
  badges.UserId, 
  badges.Name, 
  sum(
    cast(cast(null as money) as money)), 
  badges.Date, 
  badges.UserId, 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.Id
from 
  badges
where badges.Id <= badges.Id;
select  
  comments.Text
from 
  comments
where comments.CreationDate = comments.CreationDate
limit 85;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.Class, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  comments
      inner join badges
            inner join badges
            on (badges.UserId > badges.UserId)
          inner join badges
          on (badges.Date > badges.Date)
        inner join votes
            inner join postHistory
            on (votes.CreationDate > votes.CreationDate)
          inner join posts
            inner join postHistory
            on (postHistory.UserDisplayName < postHistory.Comment)
          on (posts.Body <= posts.Tags)
        on (badges.UserId >= postHistory.PostHistoryTypeId)
      on (posts.Body = postHistory.UserDisplayName)
    inner join postLinks
    on (badges.TagBased >= badges.TagBased)
where badges.TagBased = badges.TagBased
limit 122;
select  
  comments.PostId
from 
  badges
    inner join postHistory
        inner join comments
        on (postHistory.ContentLicense = postHistory.UserDisplayName)
      inner join badges
        inner join comments
        on (comments.CreationDate = badges.Date)
      on (postHistory.Text = comments.ContentLicense )
    on (badges.UserId is NULL)
where badges.TagBased is not NULL
limit 117;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.PostId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 70;
select  
  postHistory.Id, 
  postLinks.Id, 
  badges.TagBased, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  votes
          inner join badges
          on (badges.Name >= badges.Name)
        inner join users
        on (badges.UserId = users.Id )
      inner join postLinks
      on (users.AccountId < users.AccountId)
    inner join comments
        inner join postHistory
          inner join postLinks
          on (postHistory.Text > postHistory.ContentLicense)
        on (comments.ContentLicense = postHistory.UserDisplayName )
      inner join badges
        inner join votes
        on (badges.TagBased > badges.TagBased)
      on (badges.UserId = postHistory.Id)
    on (badges.Id is not NULL)
where postLinks.LinkTypeId is not NULL;
select  
  comments.Text, 
  comments.CreationDate, 
  comments.UserId
from 
  comments
where comments.UserDisplayName is NULL
limit 120;
select  
  votes.UserId, 
  votes.PostId, 
  votes.UserId, 
  votes.VoteTypeId
from 
  votes
where votes.CreationDate <= votes.CreationDate
limit 172;
select  
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.Text, 
  postHistory.UserId, 
  postHistory.PostHistoryTypeId, 
  postHistory.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.Comment, 
  min(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.UserId, 
  postHistory.UserId, 
  postHistory.UserId, 
  postHistory.Text, 
  max(
    cast(cast(null as inet) as inet)), 
  postHistory.UserId
from 
  postHistory
where postHistory.UserDisplayName is not NULL;
select  
  users.CreationDate, 
  comments.UserId, 
  avg(
    cast(cast(null as int2) as int2))
from 
  users
    inner join comments
      inner join badges
        inner join users
        on (badges.Class = users.Id )
      on (badges.Id >= comments.PostId)
    on (comments.ContentLicense <= users.Location)
where users.AccountId <= users.AccountId
limit 191;
select  
  postHistory.PostId, 
  votes.Id, 
  comments.ContentLicense, 
  votes.VoteTypeId, 
  comments.UserId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  sum(
    cast(cast(null as money) as money)), 
  postHistory.Id, 
  posts.Tags, 
  posts.AcceptedAnswerId, 
  posts.AcceptedAnswerId, 
  postLinks.Id, 
  users.AboutMe
from 
  posts
        inner join postLinks
        on (posts.CreationDate <= postLinks.CreationDate)
      inner join users
          inner join comments
          on (users.AccountId > users.ProfileImageUrl)
        inner join postHistory
            inner join postHistory
            on (postHistory.ContentLicense >= postHistory.ContentLicense)
          inner join posts
          on (postHistory.CreationDate = posts.CreationDate )
        on (comments.CreationDate = comments.CreationDate)
      on (postLinks.Id = users.Id )
    inner join postHistory
        inner join votes
          inner join votes
          on (votes.CreationDate >= votes.CreationDate)
        on (postHistory.PostHistoryTypeId <= postHistory.Id)
      inner join badges
      on (votes.Id = votes.VoteTypeId)
    on (posts.Tags is NULL)
where posts.Id > votes.PostId
limit 102;
select  
  comments.Id, 
  posts.Id, 
  avg(
    cast(49 as int4)), 
  posts.CreationDate, 
  comments.PostId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as int2) as int2)), 
  posts.PostTypeId, 
  posts.ParentId, 
  avg(
    cast(99 as int4)), 
  postLinks.Id, 
  badges.UserId, 
  postLinks.RelatedPostId, 
  comments.Text
from 
  badges
        inner join posts
        on (posts.ParentId < posts.ParentId)
      inner join badges
      on (badges.TagBased > badges.TagBased)
    inner join comments
          inner join postLinks
          on (comments.CreationDate >= postLinks.CreationDate)
        inner join comments
        on (comments.PostId = postLinks.LinkTypeId)
      inner join postLinks
      on (comments.Text = comments.UserDisplayName)
    on (postLinks.PostId is not NULL)
where comments.ContentLicense is not NULL;
select  
  users.DisplayName, 
  users.CreationDate, 
  max(
    cast(40 as int4)), 
  users.DisplayName, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  users
where users.AccountId is NULL
limit 97;
select  
  postLinks.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as "time") as "time"))
from 
  postLinks
where postLinks.CreationDate = postLinks.CreationDate;
select  
  postLinks.Id
from 
  posts
    inner join postLinks
        inner join postHistory
            inner join comments
            on (postHistory.RevisionGUID < postHistory.RevisionGUID)
          inner join badges
          on (postHistory.ContentLicense < comments.UserDisplayName)
        on (badges.TagBased > badges.TagBased)
      inner join postLinks
            inner join badges
              inner join comments
                inner join votes
                on (comments.CreationDate > votes.CreationDate)
              on (badges.TagBased = badges.TagBased)
            on (postLinks.PostId = votes.Id )
          inner join postLinks
          on (postLinks.RelatedPostId < postLinks.LinkTypeId)
        inner join postLinks
        on (badges.TagBased > badges.TagBased)
      on (badges.Id = badges.Id)
    on (posts.OwnerUserId is not NULL)
where postLinks.CreationDate is NULL
limit 58;
select  
  users.WebsiteUrl, 
  comments.CreationDate
from 
  users
    inner join posts
          inner join users
          on (users.CreationDate >= users.CreationDate)
        inner join comments
        on (posts.Title > posts.Tags)
      inner join posts
      on (comments.UserDisplayName < posts.Title)
    on (posts.Id is not NULL)
where users.ProfileImageUrl > users.ProfileImageUrl
limit 104;
select  
  users.DisplayName, 
  max(
    cast(users.ProfileImageUrl as float8))
from 
  users
where users.Id is not NULL
limit 163;
select  
  posts.OwnerUserId, 
  posts.ParentId, 
  posts.ContentLicense, 
  posts.ContentLicense, 
  posts.Id, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.AcceptedAnswerId
from 
  posts
where posts.CreationDate is NULL;
select  
  postLinks.CreationDate, 
  posts.CreationDate, 
  votes.UserId, 
  postLinks.RelatedPostId, 
  badges.Class, 
  votes.PostId, 
  votes.Id, 
  votes.PostId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.Title, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.UserId, 
  max(
    cast(cast(null as float4) as float4)), 
  badges.Date, 
  votes.CreationDate, 
  posts.Id, 
  votes.CreationDate, 
  votes.PostId, 
  votes.Id, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  badges.TagBased, 
  votes.CreationDate, 
  votes.CreationDate, 
  min(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as tid) as tid)), 
  posts.AcceptedAnswerId, 
  votes.UserId, 
  posts.ContentLicense, 
  badges.Class, 
  votes.UserId, 
  posts.ParentId, 
  badges.TagBased, 
  votes.CreationDate
from 
  postLinks
        inner join posts
        on (postLinks.CreationDate = posts.CreationDate )
      inner join votes
        inner join votes
        on (votes.Id = votes.Id )
      on (posts.PostTypeId = votes.Id )
    inner join badges
    on (postLinks.CreationDate is NULL)
where posts.PostTypeId is not NULL;
select  
  comments.UserDisplayName
from 
  comments
where comments.ContentLicense is NULL;
select  
  badges.Id
from 
  postHistory
    inner join badges
        inner join badges
        on (badges.TagBased <= badges.TagBased)
      inner join votes
        inner join users
        on (users.Id <= votes.UserId)
      on (badges.Name >= users.WebsiteUrl)
    on (votes.PostId is not NULL)
where postHistory.CreationDate is not NULL;
select  
  badges.Name, 
  count(*), 
  votes.Id, 
  votes.CreationDate, 
  badges.Id, 
  users.CreationDate, 
  badges.UserId, 
  votes.PostId, 
  votes.Id
from 
  users
        inner join badges
        on (users.DisplayName < badges.Name)
      inner join votes
      on (badges.TagBased >= badges.TagBased)
    inner join votes
      inner join badges
        inner join badges
        on (badges.Id >= badges.Id)
      on (badges.TagBased <= badges.TagBased)
    on (users.AboutMe = badges.Name )
where users.Id <= badges.Class;
select  
  users.AccountId, 
  users.AboutMe, 
  max(
    cast(cast(null as money) as money)), 
  min(
    cast(cast(null as oid) as oid)), 
  avg(
    cast(cast(null as float4) as float4)), 
  users.CreationDate, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  users.Id, 
  users.DisplayName, 
  users.AboutMe, 
  users.ProfileImageUrl, 
  users.Id, 
  max(
    cast(users.Id as int8)), 
  users.WebsiteUrl, 
  users.CreationDate, 
  users.AccountId, 
  users.AboutMe, 
  users.AboutMe, 
  users.CreationDate, 
  users.Id, 
  users.Id, 
  users.AboutMe, 
  min(
    cast(cast(null as money) as money)), 
  users.DisplayName
from 
  users
where users.CreationDate <= users.CreationDate
limit 85;
select  
  badges.Id, 
  badges.Id, 
  sum(
    cast(cast(null as money) as money)), 
  min(
    cast(cast(null as "time") as "time")), 
  badges.TagBased, 
  badges.Name, 
  badges.Class, 
  badges.Date
from 
  badges
where badges.TagBased < badges.TagBased;
select  
  users.AboutMe, 
  users.WebsiteUrl, 
  users.DisplayName
from 
  users
where users.Id is not NULL;
select  
  posts.OwnerUserId, 
  posts.Body, 
  posts.Body
from 
  posts
where posts.OwnerUserId is not NULL
limit 118;
select  
  votes.UserId, 
  count(*), 
  votes.UserId, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.UserId, 
  votes.Id, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  avg(
    cast(31 as int4)), 
  votes.Id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as float8) as float8)), 
  votes.CreationDate, 
  votes.CreationDate
from 
  votes
where votes.Id is NULL
limit 62;
select  
  postLinks.LinkTypeId, 
  comments.ContentLicense, 
  badges.Class, 
  comments.ContentLicense
from 
  badges
    inner join comments
        inner join postLinks
        on (postLinks.LinkTypeId >= comments.PostId)
      inner join postLinks
        inner join postLinks
          inner join badges
            inner join users
            on (badges.Class >= badges.UserId)
          on (badges.Class < badges.UserId)
        on (badges.Date < postLinks.CreationDate)
      on (postLinks.RelatedPostId = badges.Id )
    on (users.AboutMe < users.Location)
where comments.UserId is NULL;
select  
  votes.CreationDate, 
  comments.UserId, 
  comments.Id, 
  badges.Id
from 
  users
          inner join badges
          on (users.ProfileImageUrl <= users.ProfileImageUrl)
        inner join comments
        on (badges.TagBased = badges.TagBased)
      inner join votes
      on (badges.TagBased <= badges.TagBased)
    inner join posts
    on (posts.OwnerDisplayName is NULL)
where posts.PostTypeId = comments.PostId;
select  
  posts.Tags, 
  comments.UserId, 
  users.WebsiteUrl, 
  postLinks.Id, 
  users.ProfileImageUrl, 
  users.AboutMe, 
  postLinks.Id, 
  sum(
    cast(cast(null as float4) as float4)), 
  users.WebsiteUrl, 
  sum(
    cast(31 as int4)), 
  comments.UserId, 
  comments.ContentLicense, 
  comments.ContentLicense
from 
  users
        inner join posts
        on (posts.CreationDate >= posts.CreationDate)
      inner join comments
          inner join comments
          on (comments.CreationDate = comments.CreationDate)
        inner join users
        on (users.ProfileImageUrl < users.ProfileImageUrl)
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    inner join comments
        inner join posts
        on (comments.Text = posts.OwnerDisplayName )
      inner join comments
        inner join postLinks
        on (comments.CreationDate = postLinks.CreationDate)
      on (posts.CreationDate > comments.CreationDate)
    on (posts.Tags = comments.ContentLicense )
where posts.ParentId > postLinks.Id;
select  
  avg(
    cast(51 as int4)), 
  min(
    cast(cast(null as timetz) as timetz))
from 
  users
        inner join comments
        on (users.DisplayName > users.WebsiteUrl)
      inner join users
      on (users.ProfileImageUrl = users.AccountId )
    inner join votes
    on (votes.VoteTypeId is NULL)
where users.AccountId = users.AccountId;
select  
  votes.VoteTypeId, 
  postHistory.UserDisplayName
from 
  postLinks
        inner join postHistory
        on (postLinks.PostId < postLinks.PostId)
      inner join votes
              inner join users
              on (votes.PostId = users.Id )
            inner join comments
              inner join users
              on (users.ProfileImageUrl < users.ProfileImageUrl)
            on (users.CreationDate < votes.CreationDate)
          inner join votes
          on (votes.Id > votes.PostId)
        inner join badges
            inner join users
            on (users.CreationDate >= users.CreationDate)
          inner join votes
          on (users.WebsiteUrl >= users.DisplayName)
        on (users.CreationDate >= votes.CreationDate)
      on (votes.PostId < postHistory.PostHistoryTypeId)
    inner join comments
        inner join posts
          inner join postHistory
          on (posts.ContentLicense >= posts.Tags)
        on (comments.ContentLicense >= posts.OwnerDisplayName)
      inner join posts
            inner join postLinks
            on (posts.CreationDate < postLinks.CreationDate)
          inner join badges
              inner join votes
              on (votes.Id >= badges.Id)
            inner join votes
            on (votes.CreationDate >= votes.CreationDate)
          on (votes.CreationDate = postLinks.CreationDate)
        inner join postLinks
        on (votes.UserId < votes.Id)
      on (badges.TagBased > badges.TagBased)
    on (votes.VoteTypeId is NULL)
where votes.CreationDate <= postHistory.CreationDate
limit 124;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz))
from 
  badges
where badges.Name > badges.Name;
select  
  votes.CreationDate
from 
  postHistory
        inner join votes
        on (postHistory.Comment >= postHistory.UserDisplayName)
      inner join posts
      on (postHistory.UserDisplayName = posts.Tags)
    inner join posts
    on (postHistory.PostId > posts.PostTypeId)
where postHistory.Comment is not NULL;
select distinct 
  postLinks.CreationDate
from 
  posts
      inner join users
      on (users.WebsiteUrl < users.Location)
    inner join postLinks
      inner join postLinks
      on (postLinks.RelatedPostId > postLinks.Id)
    on (users.WebsiteUrl >= posts.Tags)
where posts.AcceptedAnswerId = postLinks.LinkTypeId
limit 132;
select  
  posts.PostTypeId, 
  posts.Body
from 
  postLinks
        inner join comments
        on (postLinks.Id < comments.UserId)
      inner join posts
      on (comments.PostId <= postLinks.Id)
    inner join posts
      inner join posts
      on (posts.Title = posts.Tags)
    on (posts.CreationDate >= comments.CreationDate)
where posts.CreationDate is NULL
limit 128;
select  
  sum(
    cast(users.AccountId as float8))
from 
  postLinks
    inner join comments
      inner join users
          inner join comments
          on (users.Location = comments.ContentLicense )
        inner join badges
        on (badges.Date <= badges.Date)
      on (users.AccountId < users.ProfileImageUrl)
    on (postLinks.Id = comments.Id )
where comments.Text is NULL
limit 163;
select  
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as inet) as inet)), 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as money) as money)), 
  postLinks.PostId
from 
  postLinks
where postLinks.LinkTypeId is NULL
limit 91;
select  
  postLinks.CreationDate
from 
  postLinks
where postLinks.PostId is not NULL
limit 161;
select  
  votes.VoteTypeId, 
  comments.CreationDate, 
  comments.PostId, 
  comments.UserId, 
  comments.ContentLicense, 
  min(
    cast(cast(null as date) as date)), 
  votes.VoteTypeId, 
  comments.ContentLicense
from 
  postHistory
      inner join votes
      on (postHistory.CreationDate > postHistory.CreationDate)
    inner join comments
    on (votes.CreationDate = postHistory.CreationDate)
where votes.PostId <= postHistory.UserId
limit 137;
select  
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.Name <= badges.Name;
select  
  votes.Id, 
  badges.Class
from 
  users
            inner join badges
            on (badges.Date < badges.Date)
          inner join postHistory
          on (badges.Date = postHistory.CreationDate )
        inner join votes
        on (users.Id <= badges.Class)
      inner join postLinks
        inner join users
        on (postLinks.LinkTypeId <= postLinks.PostId)
      on (votes.CreationDate = users.CreationDate)
    inner join badges
    on (users.CreationDate is not NULL)
where postLinks.Id = postHistory.UserId
limit 129;
select  
  postLinks.LinkTypeId, 
  postLinks.Id, 
  max(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.Id, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  postLinks
where postLinks.CreationDate is NULL
limit 132;
select  
  users.Location, 
  min(
    cast(cast(null as timetz) as timetz)), 
  avg(
    cast(cast(null as float4) as float4)), 
  users.Location, 
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.AccountId, 
  users.WebsiteUrl, 
  users.AccountId, 
  users.AccountId, 
  users.Id, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  users.CreationDate
from 
  users
where users.DisplayName is not NULL
limit 127;
select  
  users.Id, 
  max(
    cast(cast(null as oid) as oid)), 
  postLinks.CreationDate, 
  votes.Id, 
  votes.CreationDate, 
  votes.CreationDate, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  users.WebsiteUrl, 
  badges.Id, 
  postLinks.PostId, 
  max(
    cast(cast(null as money) as money)), 
  users.CreationDate, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  postLinks
      inner join comments
          inner join comments
          on (comments.CreationDate <= comments.CreationDate)
        inner join users
          inner join comments
                inner join users
                on (users.CreationDate < users.CreationDate)
              inner join badges
              on (users.Location = badges.Name )
            inner join postLinks
            on (badges.TagBased >= badges.TagBased)
          on (badges.Name > comments.Text)
        on (badges.Class >= comments.UserId)
      on (badges.TagBased <= badges.TagBased)
    inner join votes
    on (comments.PostId < votes.Id)
where postLinks.PostId is NULL;
select  
  postLinks.CreationDate, 
  users.ProfileImageUrl
from 
  postLinks
    inner join badges
          inner join users
          on (badges.Date <= users.CreationDate)
        inner join comments
        on (users.Id < badges.Id)
      inner join comments
      on (badges.TagBased >= badges.TagBased)
    on (comments.ContentLicense is NULL)
where comments.Text is not NULL;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as inet) as inet)), 
  users.CreationDate, 
  users.AccountId, 
  users.DisplayName, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  users
where users.WebsiteUrl >= users.Location
limit 71;
select  
  users.ProfileImageUrl, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.Location, 
  posts.Body, 
  users.DisplayName, 
  posts.ParentId, 
  users.ProfileImageUrl
from 
  users
    inner join posts
      inner join users
      on (posts.Body = users.DisplayName )
    on (users.DisplayName is NULL)
where users.AccountId <= users.ProfileImageUrl;
select distinct 
  users.AccountId
from 
  users
where users.AccountId <= users.AccountId
limit 120;
select  
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate is not NULL;
select  
  votes.CreationDate, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.VoteTypeId, 
  max(
    cast(cast(null as oid) as oid)), 
  votes.UserId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.UserId, 
  sum(
    cast(cast(null as int2) as int2))
from 
  votes
where votes.PostId is not NULL;
select  
  badges.UserId, 
  badges.Name, 
  badges.Date, 
  badges.UserId, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.TagBased, 
  badges.TagBased, 
  badges.Id, 
  badges.Date, 
  badges.Id, 
  min(
    cast(cast(null as float8) as float8)), 
  badges.Name, 
  badges.UserId, 
  badges.Name, 
  badges.Class, 
  badges.TagBased, 
  max(
    cast(59 as int4)), 
  badges.TagBased
from 
  badges
where badges.TagBased is not NULL
limit 29;
select  
  postHistory.ContentLicense, 
  votes.UserId
from 
  votes
    inner join postHistory
    on (postHistory.CreationDate <= postHistory.CreationDate)
where postHistory.ContentLicense is NULL
limit 83;
select  
  votes.CreationDate, 
  votes.PostId
from 
  votes
where votes.Id is not NULL
limit 108;
select  
  postHistory.UserId, 
  postHistory.UserDisplayName
from 
  postLinks
      inner join postHistory
      on (postHistory.RevisionGUID > postHistory.ContentLicense)
    inner join badges
    on (postHistory.PostHistoryTypeId is NULL)
where postHistory.Text <= postHistory.RevisionGUID
limit 145;
select  
  badges.Name
from 
  badges
where badges.TagBased is not NULL
limit 89;
select  
  postLinks.CreationDate, 
  posts.AcceptedAnswerId, 
  postLinks.PostId, 
  posts.ContentLicense, 
  posts.ContentLicense
from 
  posts
    inner join postLinks
    on (postLinks.Id is not NULL)
where posts.Title is not NULL
limit 107;
select  
  postLinks.PostId, 
  postLinks.CreationDate, 
  posts.Body, 
  postLinks.CreationDate, 
  avg(
    cast(postHistory.PostHistoryTypeId as int8)), 
  postHistory.Text, 
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
      inner join postLinks
          inner join posts
          on (posts.CreationDate < posts.CreationDate)
        inner join postHistory
        on (postHistory.Text > postHistory.ContentLicense)
      on (postLinks.CreationDate < postLinks.CreationDate)
    inner join votes
      inner join postHistory
      on (votes.VoteTypeId = postHistory.Id )
    on (postLinks.PostId is not NULL)
where postHistory.Text is NULL;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  votes.Id
from 
  postLinks
    inner join votes
        inner join badges
        on (badges.TagBased < badges.TagBased)
      inner join posts
      on (votes.CreationDate >= badges.Date)
    on (posts.Tags is not NULL)
where posts.OwnerUserId is not NULL
limit 92;
select  
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id is not NULL
limit 160;
select  
  postLinks.RelatedPostId, 
  posts.OwnerUserId
from 
  postLinks
    inner join votes
        inner join postHistory
          inner join posts
              inner join posts
                inner join postLinks
                on (posts.PostTypeId <= postLinks.RelatedPostId)
              on (posts.Id <= posts.AcceptedAnswerId)
            inner join posts
            on (posts.OwnerDisplayName > posts.OwnerDisplayName)
          on (postHistory.UserId = posts.Id )
        on (posts.PostTypeId > posts.Id)
      inner join users
          inner join postLinks
            inner join postLinks
            on (postLinks.LinkTypeId > postLinks.Id)
          on (users.Location <= users.AboutMe)
        inner join postLinks
        on (postLinks.CreationDate < postLinks.CreationDate)
      on (postLinks.CreationDate = postLinks.CreationDate )
    on (posts.ParentId >= posts.ParentId)
where posts.OwnerUserId is NULL
limit 149;
select  
  badges.Date, 
  max(
    cast(badges.Class as int8))
from 
  badges
where badges.Name < badges.Name
limit 113;
select  
  votes.CreationDate, 
  votes.PostId, 
  votes.Id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.Id, 
  votes.VoteTypeId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  votes
where votes.PostId is not NULL
limit 104;
select  
  max(
    cast(cast(null as oid) as oid))
from 
  posts
    inner join comments
    on (posts.OwnerUserId = comments.Id )
where posts.Id > posts.PostTypeId;
select  
  postHistory.UserId, 
  postHistory.Id, 
  postHistory.UserId
from 
  postHistory
where postHistory.ContentLicense is NULL
limit 125;
select  
  comments.UserId, 
  comments.UserDisplayName, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as "time") as "time")), 
  votes.CreationDate
from 
  postLinks
        inner join users
          inner join comments
          on (users.AccountId = users.ProfileImageUrl)
        on (postLinks.CreationDate < users.CreationDate)
      inner join postLinks
        inner join postLinks
        on (postLinks.RelatedPostId > postLinks.LinkTypeId)
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    inner join comments
          inner join postHistory
          on (postHistory.Id < postHistory.Id)
        inner join posts
            inner join postLinks
            on (postLinks.LinkTypeId < posts.ParentId)
          inner join votes
            inner join comments
            on (comments.UserDisplayName >= comments.ContentLicense)
          on (votes.CreationDate >= votes.CreationDate)
        on (postHistory.PostId = votes.Id )
      inner join badges
      on (votes.VoteTypeId > votes.UserId)
    on (postLinks.RelatedPostId is NULL)
where postLinks.CreationDate is not NULL
limit 90;
select  
  comments.UserDisplayName
from 
  comments
    inner join votes
        inner join users
        on (users.AccountId < users.ProfileImageUrl)
      inner join postLinks
              inner join posts
              on (postLinks.Id = posts.Id )
            inner join postHistory
            on (posts.PostTypeId <= postLinks.RelatedPostId)
          inner join badges
          on (badges.TagBased < badges.TagBased)
        inner join posts
        on (posts.Id > badges.Class)
      on (posts.ParentId >= posts.PostTypeId)
    on (posts.AcceptedAnswerId is NULL)
where postHistory.CreationDate = posts.CreationDate
limit 70;
select  
  postHistory.UserId, 
  postHistory.RevisionGUID, 
  postHistory.Id
from 
  postHistory
where postHistory.Text < postHistory.UserDisplayName;
select  
  posts.Title, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.PostTypeId, 
  posts.Body, 
  posts.OwnerDisplayName, 
  posts.Tags, 
  posts.Tags, 
  posts.Id, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.Tags
from 
  posts
where posts.Tags is not NULL
limit 50;
select  
  posts.Id, 
  badges.TagBased, 
  badges.TagBased
from 
  badges
    inner join badges
        inner join posts
        on (badges.TagBased >= badges.TagBased)
      inner join users
      on (posts.AcceptedAnswerId = users.Id )
    on (badges.UserId is not NULL)
where badges.Date is NULL
limit 136;
select  
  comments.UserId, 
  comments.UserDisplayName, 
  comments.CreationDate
from 
  comments
where comments.ContentLicense is not NULL;
select  
  posts.Body, 
  users.ProfileImageUrl, 
  posts.OwnerUserId
from 
  posts
    inner join users
      inner join postHistory
        inner join postHistory
        on (postHistory.PostHistoryTypeId <= postHistory.Id)
      on (postHistory.ContentLicense < postHistory.UserDisplayName)
    on (posts.OwnerUserId = users.Id )
where posts.Tags < posts.Body;
select  
  postHistory.PostId, 
  max(
    cast(cast(null as float8) as float8)), 
  postHistory.UserDisplayName, 
  max(
    cast(cast(null as inet) as inet)), 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as "interval") as "interval")), 
  postHistory.RevisionGUID, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.PostId, 
  postHistory.Text, 
  postHistory.CreationDate, 
  postHistory.ContentLicense, 
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.PostHistoryTypeId is NULL
limit 57;
select  
  users.DisplayName, 
  badges.Name, 
  posts.AcceptedAnswerId, 
  votes.VoteTypeId
from 
  votes
      inner join posts
        inner join postLinks
        on (posts.ContentLicense = posts.OwnerDisplayName)
      on (posts.AcceptedAnswerId > postLinks.LinkTypeId)
    inner join postHistory
      inner join users
          inner join users
          on (users.AboutMe = users.AboutMe)
        inner join badges
        on (badges.TagBased > badges.TagBased)
      on (users.Location > users.WebsiteUrl)
    on (posts.CreationDate >= votes.CreationDate)
where posts.OwnerDisplayName is NULL;
select  
  comments.ContentLicense, 
  postHistory.Id, 
  postHistory.UserId, 
  users.ProfileImageUrl
from 
  votes
        inner join comments
        on (comments.CreationDate = votes.CreationDate)
      inner join votes
          inner join users
          on (users.AccountId <= users.ProfileImageUrl)
        inner join comments
          inner join postHistory
          on (comments.CreationDate = postHistory.CreationDate)
        on (votes.CreationDate = postHistory.CreationDate )
      on (comments.ContentLicense = comments.ContentLicense )
    inner join postHistory
    on (postHistory.RevisionGUID = postHistory.UserDisplayName )
where votes.Id is NULL;
select  
  max(
    cast(cast(null as float4) as float4)), 
  postHistory.Comment, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postHistory.ContentLicense, 
  postHistory.Id
from 
  postHistory
where postHistory.CreationDate >= postHistory.CreationDate;
select  
  badges.UserId, 
  avg(
    cast(cast(null as int2) as int2)), 
  comments.UserId, 
  badges.TagBased, 
  users.DisplayName
from 
  comments
          inner join comments
          on (comments.CreationDate = comments.CreationDate)
        inner join posts
        on (posts.ParentId > comments.UserId)
      inner join users
      on (users.Location <= posts.Title)
    inner join badges
    on (users.ProfileImageUrl < users.AccountId)
where comments.UserDisplayName is NULL
limit 110;
select  
  postLinks.CreationDate, 
  comments.Id, 
  postHistory.ContentLicense, 
  max(
    cast(postHistory.Comment as text)), 
  postHistory.CreationDate, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postHistory.UserDisplayName
from 
  postHistory
    inner join postLinks
        inner join postLinks
        on (postLinks.LinkTypeId < postLinks.Id)
      inner join comments
      on (postLinks.RelatedPostId <= postLinks.Id)
    on (postHistory.ContentLicense = comments.ContentLicense )
where comments.Id < comments.UserId
limit 143;
select distinct 
  badges.UserId, 
  badges.Class
from 
  badges
where badges.Name is not NULL
limit 86;
select  
  posts.Tags, 
  min(
    cast(cast(null as "time") as "time")), 
  votes.VoteTypeId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.PostId
from 
  votes
      inner join posts
      on (votes.UserId = posts.Id )
    inner join badges
    on (posts.PostTypeId is not NULL)
where posts.Id is NULL
limit 82;
select  
  comments.CreationDate, 
  postHistory.Text, 
  postHistory.CreationDate
from 
  postHistory
    inner join comments
    on (postHistory.UserDisplayName is not NULL)
where postHistory.UserId = postHistory.Id
limit 57;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.RelatedPostId is not NULL;
select  
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  posts.OwnerDisplayName, 
  postHistory.PostId, 
  postHistory.CreationDate, 
  postHistory.PostHistoryTypeId
from 
  postHistory
    inner join posts
    on (posts.Tags is not NULL)
where posts.ParentId is not NULL
limit 21;
select  
  badges.Class, 
  badges.Class, 
  badges.Name, 
  badges.Date, 
  badges.Class, 
  badges.Name
from 
  badges
where badges.Date is NULL
limit 140;
select  
  postHistory.Id, 
  users.Location
from 
  postHistory
        inner join posts
        on (posts.Id >= postHistory.UserId)
      inner join votes
          inner join posts
            inner join posts
            on (posts.OwnerDisplayName <= posts.Body)
          on (posts.CreationDate < posts.CreationDate)
        inner join users
          inner join postLinks
              inner join users
              on (postLinks.PostId = users.Id )
            inner join posts
            on (users.WebsiteUrl < posts.ContentLicense)
          on (users.CreationDate = users.CreationDate)
        on (votes.CreationDate < posts.CreationDate)
      on (votes.UserId >= posts.AcceptedAnswerId)
    inner join users
              inner join postHistory
              on (users.Location <= users.Location)
            inner join posts
            on (users.WebsiteUrl = posts.OwnerDisplayName )
          inner join comments
          on (users.AccountId >= users.ProfileImageUrl)
        inner join posts
          inner join postHistory
          on (postHistory.CreationDate >= posts.CreationDate)
        on (postHistory.Text <= posts.Tags)
      inner join badges
          inner join users
          on (users.Id >= badges.Id)
        inner join users
        on (users.DisplayName > users.WebsiteUrl)
      on (users.CreationDate >= comments.CreationDate)
    on (postHistory.Comment is not NULL)
where badges.TagBased > badges.TagBased
limit 66;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.Id is NULL;
select  
  postHistory.CreationDate, 
  max(
    cast(cast(null as "time") as "time")), 
  postHistory.CreationDate
from 
  postHistory
where postHistory.UserDisplayName is NULL;
select distinct 
  users.WebsiteUrl, 
  postLinks.CreationDate, 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as inet) as inet)), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.LinkTypeId, 
  users.ProfileImageUrl
from 
  comments
                inner join postLinks
                  inner join postLinks
                  on (postLinks.CreationDate > postLinks.CreationDate)
                on (comments.ContentLicense = comments.UserDisplayName)
              inner join posts
              on (postLinks.CreationDate = posts.CreationDate)
            inner join votes
            on (postLinks.Id = votes.Id )
          inner join postHistory
          on (votes.CreationDate = votes.CreationDate)
        inner join badges
          inner join posts
            inner join postLinks
            on (posts.Id < posts.AcceptedAnswerId)
          on (posts.Title <= posts.Body)
        on (badges.TagBased >= badges.TagBased)
      inner join votes
        inner join postLinks
          inner join badges
            inner join users
            on (badges.Class < badges.Id)
          on (postLinks.Id >= postLinks.PostId)
        on (votes.UserId = badges.Id )
      on (comments.PostId = votes.Id )
    inner join postHistory
      inner join postLinks
      on (postHistory.PostHistoryTypeId <= postHistory.PostId)
    on (postLinks.LinkTypeId is not NULL)
where users.ProfileImageUrl < users.AccountId
limit 130;
select  
  comments.UserDisplayName, 
  posts.ParentId, 
  comments.ContentLicense, 
  comments.PostId, 
  posts.ParentId, 
  comments.UserDisplayName, 
  comments.UserId
from 
  comments
    inner join posts
    on (posts.Title is not NULL)
where posts.ParentId is not NULL;
select  
  posts.PostTypeId
from 
  postHistory
      inner join posts
            inner join users
            on (users.ProfileImageUrl < users.AccountId)
          inner join votes
          on (posts.AcceptedAnswerId >= posts.ParentId)
        inner join posts
        on (posts.Tags >= users.Location)
      on (postHistory.PostHistoryTypeId >= votes.Id)
    inner join postLinks
      inner join postHistory
      on (postLinks.Id = postHistory.Id )
    on (posts.Title is NULL)
where postLinks.Id is not NULL;
select  
  comments.UserDisplayName
from 
  comments
where comments.PostId is NULL
limit 22;
select  
  posts.Body, 
  posts.AcceptedAnswerId, 
  posts.CreationDate, 
  posts.OwnerUserId
from 
  posts
where posts.Body >= posts.OwnerDisplayName
limit 135;
select  
  avg(
    cast(51 as int4)), 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.Id
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 119;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.PostId, 
  max(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.CreationDate, 
  min(
    cast(postLinks.Id as int8)), 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  max(
    cast(postLinks.CreationDate as "timestamp")), 
  max(
    cast(74 as int4)), 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.Id, 
  max(
    cast(cast(null as xid8) as xid8)), 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.Id
from 
  postLinks
where postLinks.LinkTypeId is NULL;
select  
  users.Id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  users.WebsiteUrl, 
  postLinks.PostId, 
  sum(
    cast(postLinks.PostId as int8))
from 
  users
        inner join postLinks
        on (users.Id = postLinks.Id )
      inner join postHistory
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    inner join comments
    on (postHistory.CreationDate >= postLinks.CreationDate)
where postLinks.Id is not NULL
limit 94;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.UserId, 
  badges.Name, 
  badges.TagBased, 
  badges.UserId, 
  badges.Class
from 
  badges
where badges.Name is not NULL
limit 130;
select  
  posts.OwnerDisplayName
from 
  posts
where posts.ContentLicense is NULL;
select  
  postHistory.Text, 
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
        inner join votes
          inner join postHistory
            inner join badges
            on (badges.Name > postHistory.Comment)
          on (votes.PostId = postHistory.Id )
        on (comments.Text >= postHistory.Text)
      inner join users
      on (postHistory.CreationDate = comments.CreationDate)
    inner join comments
    on (users.CreationDate <= postHistory.CreationDate)
where badges.TagBased is NULL;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  votes
where votes.CreationDate = votes.CreationDate
limit 124;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.PostId, 
  postHistory.ContentLicense
from 
  postHistory
where postHistory.CreationDate <= postHistory.CreationDate
limit 54;
select  
  badges.Id, 
  badges.Id, 
  badges.TagBased, 
  badges.Name, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  badges
where badges.TagBased > badges.TagBased
limit 74;
select  
  users.Location, 
  badges.Id, 
  badges.Id, 
  badges.UserId, 
  badges.Id, 
  badges.Id, 
  users.Id, 
  badges.Id, 
  users.Id, 
  badges.UserId, 
  users.Id, 
  users.Location, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  users
    inner join badges
    on (users.Location = badges.Name)
where badges.TagBased <= badges.TagBased
limit 149;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  badges.Id, 
  badges.Date, 
  badges.Name, 
  badges.Name, 
  badges.UserId, 
  badges.UserId
from 
  badges
where badges.Class is not NULL
limit 85;
select  
  users.ProfileImageUrl, 
  count(
    cast(users.DisplayName as text))
from 
  users
where users.AboutMe is not NULL;
select  
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  users.WebsiteUrl, 
  postHistory.RevisionGUID, 
  postHistory.ContentLicense
from 
  postHistory
    inner join users
    on (users.DisplayName is NULL)
where users.AccountId >= users.AccountId
limit 109;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  postLinks
    inner join users
    on (postLinks.CreationDate is not NULL)
where postLinks.Id is NULL;
select  
  votes.CreationDate
from 
  votes
where votes.CreationDate is not NULL
limit 56;
select  
  badges.UserId, 
  postHistory.UserId, 
  postHistory.Id, 
  postLinks.LinkTypeId, 
  comments.Id, 
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
      inner join postHistory
      on (postLinks.LinkTypeId > postHistory.Id)
    inner join comments
            inner join badges
              inner join postHistory
              on (badges.TagBased <= badges.TagBased)
            on (comments.CreationDate = badges.Date )
          inner join comments
          on (comments.Id = badges.Id)
        inner join postLinks
        on (comments.PostId > comments.UserId)
      inner join votes
      on (postHistory.UserDisplayName < comments.Text)
    on (comments.UserId is not NULL)
where postHistory.Text <= comments.Text
limit 56;
select  
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  postLinks
where postLinks.Id = postLinks.RelatedPostId
limit 55;
select  
  users.WebsiteUrl, 
  users.CreationDate, 
  users.CreationDate
from 
  users
where users.AboutMe is not NULL;
select  
  comments.Id, 
  comments.Text, 
  comments.PostId, 
  comments.CreationDate
from 
  comments
where comments.UserDisplayName is NULL
limit 97;
select  
  avg(
    cast(78 as int4)), 
  max(
    cast(81 as int4)), 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as oid) as oid)), 
  postHistory.CreationDate, 
  postHistory.Comment, 
  postHistory.CreationDate
from 
  postHistory
where postHistory.CreationDate is not NULL
limit 120;
select  
  max(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  votes
where votes.PostId is NULL
limit 97;
select  
  votes.UserId, 
  votes.CreationDate, 
  min(
    cast(votes.VoteTypeId as int8)), 
  votes.PostId, 
  votes.UserId, 
  votes.PostId
from 
  votes
where votes.CreationDate is not NULL
limit 41;
select  
  badges.Class, 
  badges.Id
from 
  badges
where badges.Id is NULL;
select  
  comments.CreationDate, 
  comments.UserId, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
where comments.UserDisplayName = comments.UserDisplayName
limit 70;
select  
  users.WebsiteUrl, 
  min(
    cast(cast(null as "interval") as "interval")), 
  count(*), 
  users.Location, 
  users.Id
from 
  users
where users.Location is NULL
limit 58;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  min(
    cast(cast(null as xid8) as xid8)), 
  postHistory.PostHistoryTypeId
from 
  postHistory
where postHistory.Id is NULL;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  users.ProfileImageUrl, 
  users.AboutMe, 
  postHistory.PostId, 
  postHistory.Comment, 
  postHistory.Text, 
  users.AboutMe, 
  users.ProfileImageUrl, 
  postHistory.PostHistoryTypeId
from 
  badges
    inner join comments
          inner join postHistory
          on (comments.UserDisplayName > postHistory.Comment)
        inner join users
        on (postHistory.RevisionGUID >= postHistory.ContentLicense)
      inner join users
      on (comments.CreationDate = users.CreationDate )
    on (users.AboutMe is NULL)
where comments.UserId >= postHistory.PostId
limit 87;
select  
  postLinks.CreationDate
from 
  postLinks
where postLinks.CreationDate is NULL
limit 154;
select  
  users.DisplayName, 
  comments.Id, 
  users.AccountId
from 
  comments
    inner join users
    on (users.DisplayName is NULL)
where comments.UserDisplayName is not NULL
limit 67;
select  
  comments.ContentLicense
from 
  users
    inner join users
      inner join comments
      on (users.Location = comments.ContentLicense )
    on (comments.UserId is not NULL)
where comments.Text is not NULL
limit 81;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(cast(null as date) as date)), 
  users.Id, 
  postLinks.PostId, 
  votes.VoteTypeId, 
  postLinks.PostId
from 
  users
    inner join postLinks
      inner join votes
      on (postLinks.PostId <= postLinks.PostId)
    on (votes.CreationDate is not NULL)
where postLinks.LinkTypeId is NULL
limit 124;
select  
  posts.Title, 
  postLinks.Id, 
  badges.Name, 
  postHistory.UserDisplayName, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.Text, 
  posts.ParentId, 
  postLinks.PostId, 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  users
        inner join votes
        on (users.Location > users.Location)
      inner join badges
            inner join postHistory
            on (postHistory.ContentLicense <= postHistory.ContentLicense)
          inner join posts
          on (postHistory.PostHistoryTypeId = posts.PostTypeId)
        inner join postHistory
        on (posts.PostTypeId = postHistory.Id )
      on (postHistory.UserDisplayName > users.DisplayName)
    inner join postLinks
        inner join postLinks
        on (postLinks.LinkTypeId > postLinks.PostId)
      inner join posts
      on (posts.CreationDate > postLinks.CreationDate)
    on (votes.Id = posts.Id )
where postHistory.Comment < posts.Tags
limit 138;
select  
  votes.CreationDate
from 
  votes
where votes.CreationDate <= votes.CreationDate
limit 52;
select  
  users.CreationDate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.Tags, 
  comments.CreationDate
from 
  comments
      inner join posts
          inner join posts
          on (posts.OwnerDisplayName < posts.OwnerDisplayName)
        inner join users
        on (users.Location = users.Location)
      on (comments.CreationDate = comments.CreationDate)
    inner join users
    on (users.Id is not NULL)
where users.Id is NULL
limit 67;
select  
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  users.CreationDate, 
  max(
    cast(cast(null as oid) as oid)), 
  sum(
    cast(users.Id as int8)), 
  users.AboutMe, 
  users.CreationDate, 
  users.DisplayName, 
  users.AccountId, 
  users.DisplayName, 
  users.AccountId
from 
  users
where users.AboutMe is NULL;
select  
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId
from 
  badges
    inner join postLinks
    on (badges.UserId <= badges.Id)
where badges.Class is NULL;
select  
  postHistory.PostHistoryTypeId
from 
  comments
    inner join comments
          inner join comments
          on (comments.PostId = comments.PostId)
        inner join comments
        on (comments.UserId <= comments.PostId)
      inner join badges
            inner join postLinks
            on (badges.Class > postLinks.LinkTypeId)
          inner join postHistory
          on (badges.Date >= postHistory.CreationDate)
        inner join postLinks
        on (postHistory.RevisionGUID < postHistory.Text)
      on (comments.CreationDate <= postHistory.CreationDate)
    on (comments.UserDisplayName is NULL)
where badges.TagBased is NULL
limit 121;
select  
  badges.Name, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  badges
where badges.Name < badges.Name
limit 162;
select  
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id is not NULL;
select  
  badges.Class, 
  posts.Tags, 
  posts.Tags, 
  votes.PostId, 
  votes.Id, 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.UserId
from 
  users
        inner join votes
          inner join comments
          on (votes.VoteTypeId = votes.UserId)
        on (users.AboutMe = comments.ContentLicense )
      inner join posts
        inner join badges
        on (posts.Id = badges.Id )
      on (votes.PostId <= posts.ParentId)
    inner join posts
    on (votes.CreationDate is NULL)
where posts.OwnerUserId = votes.PostId
limit 109;
select  
  count(
    cast(postLinks.Id as int8))
from 
  postLinks
where postLinks.Id is NULL
limit 38;
select  
  comments.Text
from 
  users
        inner join comments
          inner join badges
          on (badges.TagBased = badges.TagBased)
        on (badges.Date >= badges.Date)
      inner join badges
          inner join users
          on (badges.TagBased <= badges.TagBased)
        inner join comments
            inner join postHistory
            on (comments.UserId = postHistory.UserId)
          inner join comments
              inner join posts
              on (comments.UserId < comments.PostId)
            inner join votes
            on (posts.OwnerDisplayName = posts.OwnerDisplayName)
          on (posts.CreationDate < comments.CreationDate)
        on (badges.TagBased < badges.TagBased)
      on (users.ProfileImageUrl < users.AccountId)
    inner join comments
    on (comments.UserDisplayName is NULL)
where postHistory.Id is not NULL
limit 160;
select  
  badges.Id, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  avg(
    cast(users.AccountId as float8)), 
  postHistory.ContentLicense, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postLinks.LinkTypeId, 
  postHistory.PostId, 
  users.ProfileImageUrl, 
  postHistory.Text, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  badges
      inner join postHistory
              inner join postLinks
                inner join votes
                on (postLinks.CreationDate >= postLinks.CreationDate)
              on (postLinks.Id = votes.PostId)
            inner join postLinks
            on (postHistory.UserDisplayName <= postHistory.Comment)
          inner join postHistory
          on (postLinks.PostId = postHistory.Id )
        inner join badges
          inner join postLinks
              inner join postHistory
              on (postHistory.RevisionGUID < postHistory.Text)
            inner join users
            on (users.WebsiteUrl > users.AboutMe)
          on (users.AccountId > users.ProfileImageUrl)
        on (badges.TagBased > badges.TagBased)
      on (users.ProfileImageUrl > users.AccountId)
    inner join users
      inner join posts
      on (users.WebsiteUrl <= posts.Tags)
    on (badges.Class is not NULL)
where users.ProfileImageUrl >= users.ProfileImageUrl
limit 120;
select distinct 
  max(
    cast(cast(null as tid) as tid)), 
  max(
    cast(78 as int4)), 
  postHistory.UserId, 
  postHistory.PostHistoryTypeId, 
  postHistory.Text, 
  badges.Date, 
  postHistory.UserDisplayName, 
  postHistory.Id
from 
  postHistory
    inner join badges
    on (postHistory.PostHistoryTypeId >= postHistory.Id)
where postHistory.ContentLicense is NULL
limit 37;
select  
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.PostId
from 
  postLinks
where postLinks.LinkTypeId is not NULL
limit 83;
select  
  posts.ParentId, 
  users.CreationDate
from 
  votes
      inner join users
      on (votes.Id = users.Id )
    inner join posts
    on (votes.Id is NULL)
where users.ProfileImageUrl < users.ProfileImageUrl
limit 82;
select  
  postLinks.Id, 
  posts.Title, 
  comments.UserId, 
  comments.Text, 
  sum(
    cast(cast(null as int2) as int2)), 
  comments.Id
from 
  postLinks
    inner join votes
      inner join badges
          inner join comments
            inner join postHistory
            on (comments.CreationDate >= postHistory.CreationDate)
          on (comments.Text = postHistory.Text)
        inner join postLinks
            inner join comments
                inner join posts
                on (posts.Tags < posts.Title)
              inner join badges
              on (badges.TagBased <= badges.TagBased)
            on (postLinks.LinkTypeId > comments.Id)
          inner join posts
          on (badges.TagBased < badges.TagBased)
        on (postHistory.ContentLicense <= posts.OwnerDisplayName)
      on (postHistory.UserDisplayName <= posts.Tags)
    on (posts.OwnerDisplayName >= postHistory.RevisionGUID)
where posts.ParentId is NULL
limit 99;
select  
  postLinks.RelatedPostId, 
  votes.CreationDate, 
  badges.TagBased, 
  postLinks.PostId
from 
  postLinks
    inner join postLinks
      inner join badges
          inner join postLinks
            inner join votes
            on (postLinks.LinkTypeId >= postLinks.PostId)
          on (votes.CreationDate >= postLinks.CreationDate)
        inner join badges
        on (badges.Name > badges.Name)
      on (postLinks.LinkTypeId = votes.Id )
    on (votes.CreationDate is not NULL)
where badges.Date = votes.CreationDate;
select  
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 100;
select  
  badges.Id
from 
  badges
where badges.Class is NULL;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.Id
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 75;
select  
  min(
    cast(cast(null as oid) as oid)), 
  comments.CreationDate, 
  votes.UserId, 
  votes.UserId, 
  comments.UserDisplayName, 
  comments.Text
from 
  badges
        inner join votes
        on (badges.Id = votes.Id )
      inner join postHistory
      on (postHistory.ContentLicense = postHistory.ContentLicense)
    inner join comments
      inner join votes
      on (votes.Id >= comments.PostId)
    on (postHistory.PostId >= votes.UserId)
where votes.Id <= votes.UserId
limit 79;
select  
  comments.UserId, 
  votes.VoteTypeId
from 
  votes
    inner join votes
      inner join comments
        inner join postLinks
        on (comments.ContentLicense > comments.ContentLicense)
      on (comments.ContentLicense >= comments.UserDisplayName)
    on (comments.UserId is not NULL)
where votes.Id is NULL;
select  
  badges.UserId, 
  badges.UserId, 
  badges.UserId, 
  badges.TagBased, 
  users.Location, 
  badges.Name
from 
  users
    inner join badges
    on (users.CreationDate > users.CreationDate)
where badges.Date is not NULL
limit 86;
select  
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  postLinks
where postLinks.Id is NULL;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  badges.Id, 
  postLinks.LinkTypeId, 
  posts.ContentLicense, 
  badges.Class, 
  users.ProfileImageUrl
from 
  votes
      inner join badges
        inner join postLinks
        on (badges.UserId < badges.UserId)
      on (votes.PostId <= badges.Id)
    inner join users
      inner join posts
        inner join badges
        on (badges.Date > posts.CreationDate)
      on (badges.Date > badges.Date)
    on (postLinks.LinkTypeId is NULL)
where votes.VoteTypeId is NULL
limit 70;
select  
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.DisplayName
from 
  users
where users.WebsiteUrl >= users.Location;
select  
  avg(
    cast(comments.PostId as int8)), 
  posts.AcceptedAnswerId, 
  sum(
    cast(cast(null as money) as money)), 
  count(
    cast(users.AboutMe as text)), 
  users.WebsiteUrl, 
  comments.ContentLicense, 
  users.WebsiteUrl, 
  posts.PostTypeId, 
  users.Id, 
  votes.PostId, 
  max(
    cast(cast(null as money) as money)), 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  votes
      inner join posts
        inner join users
        on (users.AccountId = users.AccountId)
      on (votes.CreationDate = votes.CreationDate)
    inner join comments
    on (comments.UserId is not NULL)
where users.Id >= comments.PostId
limit 110;
select  
  comments.Id
from 
  comments
where comments.PostId < comments.Id
limit 32;
select  
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.Id
from 
  users
where users.WebsiteUrl is not NULL
limit 105;
select  
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.Comment, 
  postHistory.Text, 
  postHistory.PostHistoryTypeId, 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.CreationDate, 
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  postHistory.Text
from 
  postHistory
where postHistory.UserId is not NULL
limit 98;
select  
  votes.PostId
from 
  votes
where votes.Id > votes.UserId;
select  
  comments.ContentLicense, 
  postLinks.PostId, 
  users.Location, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.Id
from 
  users
      inner join comments
      on (comments.PostId <= comments.Id)
    inner join postLinks
    on (postLinks.Id is not NULL)
where comments.CreationDate is NULL;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.Id, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.PostId, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postHistory.CreationDate, 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as "interval") as "interval")), 
  postHistory.Text
from 
  postHistory
where postHistory.Id > postHistory.PostHistoryTypeId
limit 72;
select  
  votes.CreationDate, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.UserId, 
  sum(
    cast(77 as int4))
from 
  votes
where votes.PostId is NULL;
select  
  users.CreationDate, 
  max(
    cast(cast(null as "time") as "time")), 
  users.AboutMe, 
  users.AboutMe, 
  users.WebsiteUrl, 
  users.AccountId, 
  users.Location, 
  users.CreationDate, 
  sum(
    cast(cast(null as int2) as int2)), 
  users.Id, 
  users.Location, 
  users.Id, 
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  users.DisplayName, 
  users.WebsiteUrl
from 
  users
where users.DisplayName is NULL;
select  
  users.ProfileImageUrl, 
  users.Id, 
  users.DisplayName, 
  users.DisplayName, 
  users.AccountId, 
  users.Id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  count(*), 
  users.Location, 
  count(*), 
  users.Location, 
  users.AccountId
from 
  users
where users.Location is NULL
limit 87;
select  
  min(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is not NULL;
select  
  badges.TagBased, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  votes.VoteTypeId, 
  postLinks.LinkTypeId, 
  min(
    cast(postHistory.Comment as text)), 
  votes.Id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.PostId
from 
  postHistory
        inner join postLinks
        on (postHistory.CreationDate > postLinks.CreationDate)
      inner join users
      on (postLinks.RelatedPostId = postLinks.RelatedPostId)
    inner join votes
        inner join postLinks
        on (postLinks.CreationDate >= votes.CreationDate)
      inner join badges
      on (postLinks.RelatedPostId >= votes.VoteTypeId)
    on (votes.VoteTypeId is not NULL)
where users.WebsiteUrl is not NULL;
select  
  votes.PostId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.PostId, 
  min(
    cast(votes.CreationDate as "timestamp")), 
  votes.UserId, 
  votes.Id
from 
  votes
where votes.VoteTypeId is NULL
limit 136;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postHistory.Id
from 
  posts
        inner join comments
          inner join postHistory
            inner join posts
              inner join postHistory
              on (posts.Body = postHistory.UserDisplayName )
            on (postHistory.RevisionGUID = posts.OwnerDisplayName )
          on (postHistory.CreationDate <= postHistory.CreationDate)
        on (postHistory.RevisionGUID = postHistory.Text)
      inner join badges
      on (posts.PostTypeId > postHistory.PostId)
    inner join users
    on (postHistory.ContentLicense = users.DisplayName )
where badges.TagBased >= badges.TagBased
limit 142;
select  
  votes.VoteTypeId, 
  votes.CreationDate, 
  max(
    cast(cast(null as float8) as float8))
from 
  votes
where votes.Id is NULL;
select  
  min(
    cast(cast(null as float4) as float4)), 
  postHistory.CreationDate, 
  comments.UserId
from 
  postLinks
    inner join comments
      inner join votes
        inner join postHistory
        on (postHistory.CreationDate <= postHistory.CreationDate)
      on (postHistory.PostId <= comments.PostId)
    on (postLinks.CreationDate = votes.CreationDate )
where comments.CreationDate is NULL;
select  
  postLinks.CreationDate, 
  sum(
    cast(posts.PostTypeId as int8)), 
  votes.VoteTypeId, 
  votes.Id, 
  postLinks.PostId, 
  votes.Id
from 
  posts
                inner join postLinks
                on (postLinks.Id > postLinks.Id)
              inner join votes
              on (posts.Title = posts.Title)
            inner join votes
              inner join badges
              on (badges.Date <= badges.Date)
            on (badges.TagBased >= badges.TagBased)
          inner join votes
            inner join postHistory
            on (votes.Id = votes.UserId)
          on (postHistory.UserDisplayName <= postHistory.UserDisplayName)
        inner join badges
            inner join postLinks
            on (badges.Name < badges.Name)
          inner join votes
          on (badges.Name <= badges.Name)
        on (postLinks.PostId <= postHistory.UserId)
      inner join posts
        inner join postHistory
        on (postHistory.PostHistoryTypeId > postHistory.UserId)
      on (postHistory.PostId <= votes.VoteTypeId)
    inner join postHistory
    on (posts.AcceptedAnswerId is not NULL)
where postHistory.CreationDate is NULL;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.PostId is not NULL;
select  
  postLinks.PostId, 
  min(
    cast(cast(null as int2) as int2)), 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.CreationDate is not NULL;
select  
  min(
    cast(cast(null as tid) as tid)), 
  sum(
    cast(postLinks.PostId as int8)), 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.LinkTypeId > postLinks.LinkTypeId
limit 110;
select  
  votes.VoteTypeId
from 
  votes
where votes.CreationDate is not NULL
limit 88;
select distinct 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.UserDisplayName, 
  users.DisplayName, 
  count(*), 
  comments.UserDisplayName, 
  comments.PostId, 
  users.Id, 
  max(
    cast(users.WebsiteUrl as text)), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  users.Location
from 
  users
    inner join comments
    on (users.AboutMe = comments.ContentLicense )
where comments.UserDisplayName is not NULL
limit 76;
select  
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.LinkTypeId is NULL
limit 183;
select  
  postHistory.UserDisplayName, 
  postLinks.PostId, 
  users.AboutMe, 
  posts.OwnerUserId, 
  comments.CreationDate
from 
  comments
      inner join postLinks
      on (comments.CreationDate <= comments.CreationDate)
    inner join posts
            inner join comments
            on (comments.CreationDate = posts.CreationDate)
          inner join users
          on (users.Id = comments.UserId)
        inner join posts
        on (posts.OwnerUserId >= comments.PostId)
      inner join posts
            inner join posts
            on (posts.PostTypeId < posts.ParentId)
          inner join users
          on (posts.CreationDate <= posts.CreationDate)
        inner join postHistory
            inner join comments
            on (comments.UserDisplayName = comments.ContentLicense)
          inner join votes
          on (comments.UserDisplayName <= postHistory.ContentLicense)
        on (users.WebsiteUrl > posts.ContentLicense)
      on (postHistory.PostId > posts.AcceptedAnswerId)
    on (posts.ParentId is NULL)
where votes.Id is NULL
limit 139;
select  
  postHistory.Comment, 
  postHistory.Text, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  postHistory
where postHistory.PostId is NULL
limit 105;
select  
  posts.AcceptedAnswerId, 
  posts.AcceptedAnswerId, 
  posts.AcceptedAnswerId, 
  posts.OwnerDisplayName, 
  posts.ContentLicense, 
  posts.Id, 
  posts.ParentId, 
  posts.Id, 
  posts.CreationDate
from 
  posts
where posts.ContentLicense is NULL
limit 67;
select  
  comments.Text, 
  max(
    cast(54 as int4)), 
  postLinks.RelatedPostId, 
  comments.Text, 
  comments.Id, 
  comments.UserId, 
  users.WebsiteUrl, 
  comments.UserDisplayName, 
  postLinks.PostId, 
  posts.PostTypeId, 
  comments.CreationDate, 
  users.CreationDate, 
  postLinks.PostId, 
  comments.PostId, 
  users.WebsiteUrl, 
  comments.Id, 
  max(
    cast(cast(null as inet) as inet)), 
  count(*), 
  comments.CreationDate, 
  users.WebsiteUrl, 
  users.AccountId, 
  comments.PostId, 
  comments.UserId, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  comments
      inner join postLinks
        inner join users
          inner join posts
          on (users.CreationDate = posts.CreationDate )
        on (posts.CreationDate >= posts.CreationDate)
      on (users.AccountId >= users.ProfileImageUrl)
    inner join comments
    on (users.Id = comments.Id )
where users.Id is NULL
limit 117;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.ContentLicense, 
  postHistory.Comment, 
  postHistory.PostHistoryTypeId, 
  users.WebsiteUrl, 
  users.Id, 
  postHistory.CreationDate, 
  postHistory.Text, 
  postHistory.PostHistoryTypeId, 
  users.CreationDate
from 
  postHistory
        inner join users
        on (postHistory.PostHistoryTypeId < postHistory.UserId)
      inner join postLinks
      on (postLinks.PostId > postLinks.Id)
    inner join postHistory
    on (users.AccountId <= users.ProfileImageUrl)
where postLinks.Id is NULL
limit 151;
select  
  postHistory.CreationDate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.LinkTypeId, 
  badges.UserId, 
  badges.TagBased, 
  votes.PostId, 
  badges.UserId, 
  badges.TagBased, 
  max(
    cast(cast(null as money) as money)), 
  comments.PostId, 
  comments.Id, 
  postLinks.CreationDate, 
  badges.Date, 
  postLinks.LinkTypeId, 
  comments.UserId, 
  postHistory.PostHistoryTypeId, 
  badges.UserId, 
  comments.PostId, 
  badges.TagBased, 
  postLinks.PostId, 
  postHistory.Id, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  avg(
    cast(postLinks.LinkTypeId as int8)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(badges.Id as int8)), 
  postLinks.LinkTypeId
from 
  votes
    inner join comments
          inner join badges
              inner join postHistory
              on (badges.Date <= postHistory.CreationDate)
            inner join comments
              inner join postLinks
              on (postLinks.PostId >= postLinks.LinkTypeId)
            on (postLinks.CreationDate < comments.CreationDate)
          on (postHistory.CreationDate = badges.Date)
        inner join badges
        on (postHistory.UserDisplayName < badges.Name)
      inner join postLinks
      on (comments.Id <= badges.Id)
    on (badges.Id is NULL)
where postHistory.UserDisplayName is not NULL
limit 83;
select  
  postHistory.PostId, 
  postHistory.UserDisplayName, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  postHistory.Id, 
  postHistory.Comment, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as timetz) as timetz))
from 
  postHistory
where postHistory.Comment is NULL
limit 90;
select  
  max(
    cast(cast(null as money) as money)), 
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  posts.Body, 
  posts.CreationDate, 
  posts.CreationDate, 
  posts.CreationDate, 
  posts.PostTypeId, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.Id, 
  posts.PostTypeId, 
  posts.OwnerUserId, 
  min(
    cast(posts.OwnerUserId as int8)), 
  posts.ParentId, 
  posts.Tags, 
  posts.Body, 
  posts.PostTypeId, 
  posts.OwnerDisplayName, 
  posts.CreationDate, 
  posts.Id, 
  posts.ContentLicense, 
  posts.PostTypeId, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posts.OwnerDisplayName
from 
  posts
where posts.OwnerDisplayName >= posts.OwnerDisplayName
limit 37;
select  
  postHistory.ContentLicense
from 
  postHistory
where postHistory.Comment is not NULL;
select  
  posts.ContentLicense, 
  min(
    cast(cast(null as "time") as "time")), 
  posts.Title, 
  posts.Title, 
  count(*), 
  posts.OwnerDisplayName, 
  posts.PostTypeId, 
  posts.ContentLicense, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.CreationDate
from 
  posts
where posts.Id is not NULL
limit 147;
select  
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.PostId, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.UserDisplayName
from 
  comments
where comments.PostId is not NULL
limit 90;
select distinct 
  comments.CreationDate
from 
  comments
      inner join postHistory
      on (postHistory.CreationDate < comments.CreationDate)
    inner join comments
    on (comments.PostId = comments.PostId)
where comments.Id is NULL
limit 184;
select  
  badges.Id, 
  users.AccountId
from 
  users
    inner join badges
    on (users.CreationDate > badges.Date)
where badges.Name is NULL;
select  
  users.Id, 
  users.DisplayName, 
  users.AboutMe, 
  users.WebsiteUrl, 
  users.AboutMe, 
  users.AboutMe, 
  users.ProfileImageUrl, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  users
where users.Id >= users.Id;
select  
  postHistory.CreationDate
from 
  postHistory
where postHistory.Id is not NULL
limit 67;
select  
  users.Location, 
  users.ProfileImageUrl
from 
  users
where users.CreationDate > users.CreationDate;
select  
  comments.UserDisplayName
from 
  comments
where comments.Id is not NULL
limit 131;
select  
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  posts.OwnerUserId, 
  posts.AcceptedAnswerId, 
  postHistory.RevisionGUID, 
  posts.Id, 
  postHistory.RevisionGUID, 
  posts.CreationDate, 
  postLinks.PostId, 
  postHistory.RevisionGUID, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postLinks.CreationDate, 
  postHistory.ContentLicense, 
  max(
    cast(users.ProfileImageUrl as float8)), 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as float4) as float4)), 
  posts.ContentLicense, 
  postHistory.PostId
from 
  users
      inner join posts
        inner join posts
          inner join postHistory
          on (postHistory.PostHistoryTypeId <= posts.ParentId)
        on (postHistory.CreationDate >= posts.CreationDate)
      on (postHistory.Id = postHistory.PostId)
    inner join postLinks
    on (users.Id is NULL)
where users.ProfileImageUrl <= users.ProfileImageUrl
limit 33;
select  
  sum(
    cast(postHistory.UserId as int8))
from 
  postHistory
where postHistory.CreationDate > postHistory.CreationDate
limit 167;
select  
  posts.Title, 
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(21 as int4)), 
  posts.AcceptedAnswerId
from 
  posts
where posts.CreationDate >= posts.CreationDate
limit 88;
select  
  postHistory.ContentLicense, 
  postHistory.ContentLicense, 
  comments.Text, 
  min(
    cast(cast(null as int2) as int2))
from 
  comments
    inner join postHistory
    on (comments.Text is not NULL)
where comments.UserDisplayName = postHistory.Text;
select  
  users.Location, 
  users.AboutMe, 
  posts.ContentLicense
from 
  users
      inner join votes
          inner join posts
          on (posts.Id > posts.ParentId)
        inner join postLinks
          inner join postLinks
          on (postLinks.RelatedPostId = postLinks.Id )
        on (postLinks.Id = posts.OwnerUserId)
      on (postLinks.CreationDate < postLinks.CreationDate)
    inner join postHistory
    on (postLinks.Id is NULL)
where postLinks.RelatedPostId is NULL;
select  
  comments.PostId, 
  comments.UserDisplayName
from 
  comments
where comments.PostId is NULL
limit 75;
select  
  votes.PostId, 
  votes.PostId, 
  votes.Id
from 
  votes
where votes.UserId is NULL
limit 44;
select  
  postLinks.CreationDate, 
  postHistory.ContentLicense, 
  postHistory.CreationDate, 
  postHistory.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.UserId, 
  postHistory.Text, 
  postLinks.CreationDate, 
  postLinks.Id, 
  max(
    cast(postLinks.PostId as int8)), 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postHistory.UserDisplayName
from 
  postHistory
    inner join postLinks
    on (postLinks.CreationDate is NULL)
where postLinks.RelatedPostId is not NULL
limit 124;
select  
  votes.Id, 
  comments.Id, 
  posts.Body, 
  votes.Id, 
  postHistory.ContentLicense
from 
  postHistory
      inner join badges
      on (badges.Date >= postHistory.CreationDate)
    inner join comments
      inner join votes
        inner join posts
        on (votes.CreationDate <= votes.CreationDate)
      on (comments.UserDisplayName < comments.ContentLicense)
    on (badges.Class is NULL)
where posts.PostTypeId is NULL
limit 78;
select  
  postLinks.Id, 
  sum(
    cast(98 as int4)), 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  min(
    cast(posts.OwnerUserId as int8))
from 
  posts
    inner join postLinks
    on (posts.AcceptedAnswerId >= postLinks.RelatedPostId)
where posts.OwnerUserId >= postLinks.PostId;
select  
  badges.UserId
from 
  badges
where badges.Id < badges.Class;
select  
  min(
    cast(cast(null as oid) as oid)), 
  badges.TagBased, 
  badges.Name, 
  badges.Id, 
  badges.Name, 
  badges.Id, 
  badges.Id, 
  badges.Name, 
  badges.TagBased
from 
  badges
where badges.Name is not NULL
limit 100;
select  
  users.CreationDate, 
  users.AboutMe
from 
  users
where users.Location is NULL
limit 67;
select  
  comments.UserId, 
  users.Location
from 
  comments
    inner join postLinks
      inner join users
      on (postLinks.CreationDate <= users.CreationDate)
    on (users.WebsiteUrl is NULL)
where comments.ContentLicense >= comments.Text
limit 76;
select  
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id is not NULL
limit 180;
select  
  comments.Text, 
  posts.Body, 
  badges.UserId, 
  badges.Date, 
  posts.OwnerUserId, 
  comments.CreationDate, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  badges
    inner join posts
        inner join votes
          inner join posts
          on (posts.Title < posts.Body)
        on (votes.VoteTypeId >= votes.VoteTypeId)
      inner join comments
        inner join users
        on (comments.CreationDate >= users.CreationDate)
      on (users.ProfileImageUrl = users.ProfileImageUrl)
    on (badges.Date = comments.CreationDate )
where users.Id is not NULL
limit 51;
select  
  badges.Class, 
  badges.Name, 
  badges.Date
from 
  badges
where badges.UserId is not NULL
limit 94;
select  
  comments.Text, 
  postHistory.CreationDate, 
  comments.CreationDate, 
  posts.OwnerUserId, 
  postHistory.UserId, 
  posts.Title, 
  max(
    cast(cast(null as int2) as int2))
from 
  postHistory
      inner join comments
          inner join postHistory
            inner join posts
            on (postHistory.PostId >= posts.ParentId)
          on (postHistory.UserDisplayName = postHistory.RevisionGUID)
        inner join postHistory
        on (comments.Id > postHistory.PostHistoryTypeId)
      on (postHistory.PostId >= postHistory.UserId)
    inner join posts
    on (comments.UserId is NULL)
where postHistory.UserId is not NULL
limit 79;
select  
  users.AboutMe, 
  users.Location, 
  users.DisplayName
from 
  users
where users.ProfileImageUrl is NULL;
select  
  postLinks.RelatedPostId, 
  avg(
    cast(postLinks.Id as int8)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 87;
select  
  votes.UserId, 
  max(
    cast(badges.Date as "timestamp")), 
  badges.Name, 
  badges.Id, 
  votes.CreationDate, 
  badges.Date, 
  badges.Date, 
  badges.Id, 
  votes.Id, 
  badges.Class, 
  badges.Id, 
  votes.CreationDate
from 
  badges
    inner join votes
    on (badges.Date < badges.Date)
where badges.Date is NULL
limit 162;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is NULL;
select  
  postHistory.PostId, 
  max(
    cast(cast(null as money) as money)), 
  posts.OwnerDisplayName, 
  badges.Date, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.UserId, 
  badges.Name
from 
  badges
    inner join postHistory
      inner join postHistory
        inner join posts
        on (postHistory.ContentLicense < posts.Tags)
      on (postHistory.CreationDate = postHistory.CreationDate)
    on (postHistory.PostHistoryTypeId is not NULL)
where posts.Tags <= posts.ContentLicense;
select  
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  postLinks
      inner join users
      on (users.Location = users.AboutMe)
    inner join comments
    on (users.AccountId is NULL)
where users.CreationDate is NULL;
select  
  users.DisplayName, 
  postLinks.Id, 
  users.Id, 
  users.ProfileImageUrl, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  users.DisplayName, 
  max(
    cast(cast(null as float4) as float4)), 
  avg(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  users.ProfileImageUrl
from 
  postLinks
    inner join users
    on (postLinks.PostId is not NULL)
where users.Location is not NULL
limit 161;
select  
  posts.Tags, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postLinks.Id, 
  comments.UserId, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.Text, 
  comments.ContentLicense
from 
  comments
        inner join postHistory
        on (comments.ContentLicense <= postHistory.ContentLicense)
      inner join users
        inner join posts
            inner join posts
            on (posts.Title > posts.OwnerDisplayName)
          inner join postLinks
              inner join badges
              on (postLinks.PostId = badges.Id )
            inner join comments
            on (comments.ContentLicense >= comments.UserDisplayName)
          on (posts.AcceptedAnswerId > posts.ParentId)
        on (postLinks.RelatedPostId = postLinks.LinkTypeId)
      on (comments.UserDisplayName = users.DisplayName )
    inner join postLinks
    on (postHistory.UserId is NULL)
where postHistory.UserDisplayName >= comments.Text
limit 68;
select  
  users.Id, 
  users.AccountId, 
  users.CreationDate, 
  count(*), 
  users.AboutMe, 
  users.AccountId
from 
  users
where users.CreationDate >= users.CreationDate
limit 94;
select  
  posts.Id, 
  posts.ContentLicense, 
  posts.Title, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.Tags, 
  posts.PostTypeId
from 
  posts
where posts.ParentId = posts.OwnerUserId
limit 69;
select  
  badges.Class, 
  badges.Id
from 
  badges
where badges.Name > badges.Name
limit 80;
select  
  posts.Title, 
  posts.OwnerDisplayName, 
  posts.Title, 
  posts.Tags, 
  posts.OwnerUserId, 
  posts.ContentLicense, 
  posts.Body, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.OwnerDisplayName, 
  comments.Text, 
  max(
    cast(cast(null as int2) as int2)), 
  comments.UserId, 
  max(
    cast(cast(null as date) as date)), 
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  posts.ParentId, 
  comments.ContentLicense, 
  comments.Text, 
  comments.Id
from 
  comments
      inner join posts
      on (posts.ParentId >= posts.AcceptedAnswerId)
    inner join posts
    on (posts.ContentLicense is not NULL)
where posts.CreationDate is not NULL
limit 65;
select  
  count(*), 
  posts.OwnerUserId, 
  posts.Body, 
  posts.Id, 
  posts.ContentLicense, 
  posts.Title, 
  posts.ParentId, 
  min(
    cast(86 as int4)), 
  posts.AcceptedAnswerId, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.ContentLicense, 
  posts.OwnerUserId, 
  posts.CreationDate, 
  posts.PostTypeId, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.OwnerDisplayName
from 
  posts
where posts.Body is NULL
limit 56;
select  
  comments.Text, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.ContentLicense, 
  comments.UserId, 
  comments.CreationDate, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  comments
where comments.Text = comments.ContentLicense;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  badges.UserId, 
  comments.ContentLicense, 
  postLinks.RelatedPostId, 
  posts.ContentLicense, 
  postHistory.PostId, 
  postLinks.Id, 
  posts.CreationDate, 
  users.AboutMe, 
  badges.Date, 
  postHistory.RevisionGUID
from 
  postLinks
          inner join posts
              inner join badges
              on (posts.Body > posts.Title)
            inner join comments
            on (badges.TagBased <= badges.TagBased)
          on (posts.ContentLicense = posts.ContentLicense)
        inner join postLinks
        on (comments.CreationDate < badges.Date)
      inner join postHistory
      on (posts.ContentLicense > posts.Title)
    inner join users
    on (comments.PostId is NULL)
where posts.Body is not NULL
limit 43;
select  
  comments.CreationDate, 
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  comments.UserDisplayName, 
  posts.Body, 
  min(
    cast(cast(null as inet) as inet)), 
  users.Location, 
  posts.Title, 
  postLinks.LinkTypeId, 
  posts.AcceptedAnswerId, 
  comments.UserDisplayName, 
  comments.UserId, 
  max(
    cast(cast(null as money) as money)), 
  comments.ContentLicense, 
  votes.CreationDate, 
  posts.CreationDate, 
  posts.Body
from 
  posts
      inner join posts
        inner join comments
          inner join comments
          on (comments.UserDisplayName > comments.UserDisplayName)
        on (comments.PostId >= comments.PostId)
      on (posts.Id = posts.AcceptedAnswerId)
    inner join users
      inner join posts
        inner join postLinks
              inner join postHistory
              on (postLinks.PostId >= postLinks.LinkTypeId)
            inner join users
            on (postHistory.Comment = postHistory.RevisionGUID)
          inner join votes
          on (users.DisplayName <= postHistory.Comment)
        on (users.AccountId = users.ProfileImageUrl)
      on (posts.AcceptedAnswerId <= posts.AcceptedAnswerId)
    on (posts.Tags < posts.Body)
where posts.Title is not NULL;
select  
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.PostId, 
  min(
    cast(postLinks.LinkTypeId as int8))
from 
  postLinks
where postLinks.Id <= postLinks.Id;
select  
  postHistory.UserId, 
  postHistory.UserDisplayName, 
  min(
    cast(cast(null as date) as date)), 
  postHistory.Text, 
  postHistory.UserId, 
  postHistory.Text, 
  postHistory.PostId, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.Comment, 
  postHistory.RevisionGUID, 
  postHistory.Id, 
  postHistory.Comment
from 
  postHistory
where postHistory.ContentLicense is not NULL;
select  
  badges.Name
from 
  badges
        inner join users
        on (users.CreationDate < users.CreationDate)
      inner join comments
        inner join votes
          inner join comments
          on (comments.UserDisplayName < comments.Text)
        on (comments.UserId = votes.Id )
      on (users.AccountId >= users.ProfileImageUrl)
    inner join comments
    on (comments.ContentLicense is not NULL)
where users.Id is NULL
limit 161;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as money) as money)), 
  users.AccountId, 
  users.AccountId, 
  users.Id, 
  users.AboutMe, 
  users.Id, 
  users.Id, 
  users.AboutMe, 
  users.Location, 
  users.AccountId, 
  users.AboutMe
from 
  users
where users.AccountId = users.AccountId
limit 112;
select distinct 
  count(*), 
  posts.ParentId, 
  avg(
    cast(cast(null as int2) as int2)), 
  badges.Name, 
  badges.TagBased, 
  badges.Name, 
  votes.Id, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  postHistory
        inner join comments
          inner join badges
            inner join badges
              inner join votes
              on (badges.Class < badges.UserId)
            on (badges.UserId >= votes.UserId)
          on (comments.CreationDate > comments.CreationDate)
        on (postHistory.ContentLicense < badges.Name)
      inner join badges
                inner join comments
                on (badges.Id < comments.Id)
              inner join comments
              on (comments.ContentLicense <= comments.Text)
            inner join postLinks
            on (postLinks.CreationDate < postLinks.CreationDate)
          inner join posts
            inner join postLinks
            on (postLinks.CreationDate = postLinks.CreationDate)
          on (badges.TagBased >= badges.TagBased)
        inner join postLinks
        on (comments.CreationDate >= postLinks.CreationDate)
      on (comments.PostId = comments.Id )
    inner join posts
      inner join posts
            inner join comments
            on (comments.Text >= posts.ContentLicense)
          inner join badges
            inner join posts
            on (posts.Body > posts.Title)
          on (badges.TagBased < badges.TagBased)
        inner join votes
        on (comments.PostId = votes.Id )
      on (badges.Class > comments.PostId)
    on (comments.Text = comments.ContentLicense )
where posts.AcceptedAnswerId is not NULL
limit 87;
select  
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  sum(
    cast(cast(null as float4) as float4))
from 
  postLinks
where postLinks.LinkTypeId is NULL;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  comments.UserDisplayName, 
  comments.Text, 
  postLinks.LinkTypeId
from 
  comments
    inner join postLinks
    on (comments.CreationDate >= comments.CreationDate)
where comments.Text = comments.UserDisplayName;
select  
  badges.UserId, 
  badges.Name, 
  min(
    cast(cast(null as date) as date)), 
  badges.Class, 
  posts.ContentLicense, 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.Class, 
  badges.Id, 
  badges.Name
from 
  postLinks
      inner join postHistory
          inner join postHistory
            inner join badges
            on (badges.Date <= postHistory.CreationDate)
          on (postHistory.Text = badges.Name )
        inner join votes
          inner join badges
          on (votes.VoteTypeId = badges.Id )
        on (badges.TagBased < badges.TagBased)
      on (badges.Date < badges.Date)
    inner join badges
        inner join badges
          inner join badges
          on (badges.Name <= badges.Name)
        on (badges.TagBased >= badges.TagBased)
      inner join posts
      on (badges.Class = posts.Id )
    on (badges.TagBased = badges.TagBased )
where badges.Class is NULL
limit 89;
select  
  users.Id, 
  users.Location, 
  users.WebsiteUrl, 
  users.Location
from 
  users
where users.Id is NULL
limit 136;
select  
  posts.OwnerDisplayName, 
  posts.ContentLicense, 
  posts.Id, 
  posts.Tags, 
  posts.ParentId, 
  posts.Tags, 
  posts.Tags, 
  posts.AcceptedAnswerId, 
  posts.ContentLicense
from 
  posts
where posts.CreationDate <= posts.CreationDate;
select  
  postLinks.LinkTypeId, 
  postLinks.Id, 
  max(
    cast(cast(null as tid) as tid)), 
  postLinks.LinkTypeId
from 
  comments
    inner join postLinks
      inner join postHistory
        inner join postLinks
        on (postHistory.PostId = postLinks.Id )
      on (postLinks.CreationDate >= postLinks.CreationDate)
    on (postLinks.LinkTypeId = postHistory.UserId)
where postLinks.RelatedPostId is NULL
limit 72;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  votes.VoteTypeId
from 
  votes
where votes.Id is not NULL
limit 67;
select  
  postLinks.Id, 
  postHistory.Text
from 
  postLinks
      inner join votes
      on (postLinks.Id = postLinks.PostId)
    inner join badges
      inner join postHistory
      on (badges.TagBased <= badges.TagBased)
    on (badges.TagBased >= badges.TagBased)
where postHistory.CreationDate is not NULL
limit 50;
select  
  users.WebsiteUrl, 
  users.CreationDate, 
  users.DisplayName, 
  users.WebsiteUrl, 
  users.AccountId
from 
  users
where users.Location is not NULL
limit 94;
select  
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.CreationDate, 
  comments.ContentLicense, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.UserDisplayName, 
  comments.Text, 
  comments.CreationDate
from 
  comments
where comments.Text is NULL;
select  
  comments.ContentLicense, 
  comments.ContentLicense, 
  comments.CreationDate
from 
  comments
where comments.CreationDate is NULL;
select  
  users.WebsiteUrl, 
  comments.Text, 
  comments.Text, 
  users.AboutMe, 
  min(
    cast(cast(null as "time") as "time")), 
  users.Id, 
  max(
    cast(cast(null as tid) as tid))
from 
  comments
    inner join users
    on (users.AboutMe is not NULL)
where comments.PostId < comments.Id;
select  
  users.CreationDate, 
  comments.UserId
from 
  comments
    inner join users
    on (comments.CreationDate is not NULL)
where comments.Id is not NULL
limit 99;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  badges.UserId, 
  badges.Name, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.Id, 
  badges.Date, 
  badges.Date, 
  badges.UserId, 
  badges.Id, 
  badges.Class, 
  badges.Name, 
  badges.Class, 
  badges.Name, 
  badges.Class, 
  badges.Date, 
  badges.TagBased, 
  badges.Name, 
  badges.Id, 
  badges.Name, 
  badges.Date, 
  badges.Class, 
  badges.Name
from 
  badges
where badges.TagBased is NULL;
select  
  posts.ContentLicense, 
  posts.Id, 
  posts.Body
from 
  posts
where posts.ContentLicense is not NULL
limit 114;
select  
  posts.OwnerUserId, 
  min(
    cast(cast(null as date) as date)), 
  posts.AcceptedAnswerId, 
  users.AccountId, 
  comments.Text, 
  comments.CreationDate, 
  sum(
    cast(posts.Id as int8))
from 
  users
      inner join badges
      on (users.AccountId < users.AccountId)
    inner join posts
        inner join users
          inner join posts
          on (users.CreationDate = posts.CreationDate )
        on (posts.CreationDate <= posts.CreationDate)
      inner join comments
          inner join comments
          on (comments.Id >= comments.Id)
        inner join posts
        on (posts.CreationDate = comments.CreationDate)
      on (posts.CreationDate <= posts.CreationDate)
    on (badges.Name = posts.OwnerDisplayName )
where comments.PostId is NULL;
select  
  min(
    cast(cast(null as inet) as inet)), 
  postHistory.Comment, 
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.LinkTypeId, 
  postLinks.PostId
from 
  postLinks
    inner join postHistory
    on (postHistory.ContentLicense is not NULL)
where postHistory.ContentLicense is not NULL
limit 161;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  postLinks.Id, 
  votes.VoteTypeId, 
  postHistory.Text, 
  votes.UserId, 
  count(
    cast(postHistory.Text as text)), 
  users.Id
from 
  votes
      inner join postLinks
      on (votes.UserId = postLinks.Id )
    inner join postLinks
        inner join users
        on (postLinks.RelatedPostId = users.Id )
      inner join users
          inner join postHistory
          on (users.AccountId < users.AccountId)
        inner join votes
        on (postHistory.CreationDate >= postHistory.CreationDate)
      on (postHistory.CreationDate < users.CreationDate)
    on (votes.UserId = postHistory.Id )
where users.WebsiteUrl is not NULL
limit 145;
select  
  comments.UserId, 
  comments.CreationDate, 
  max(
    cast(cast(null as float8) as float8)), 
  comments.PostId, 
  comments.UserId
from 
  comments
where comments.UserId is not NULL
limit 170;
select  
  users.ProfileImageUrl
from 
  users
where users.ProfileImageUrl is not NULL
limit 23;
select  
  postHistory.PostHistoryTypeId, 
  postHistory.PostHistoryTypeId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  users.Location
from 
  users
    inner join postHistory
    on (users.CreationDate = postHistory.CreationDate )
where users.AccountId is not NULL;
select  
  badges.TagBased
from 
  badges
where badges.Id < badges.UserId
limit 175;
select  
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  sum(
    cast(cast(null as float4) as float4)), 
  users.Location, 
  users.AccountId
from 
  users
where users.DisplayName >= users.AboutMe;
select  
  comments.UserDisplayName, 
  comments.Id, 
  votes.PostId
from 
  comments
      inner join comments
          inner join comments
          on (comments.CreationDate <= comments.CreationDate)
        inner join badges
          inner join postLinks
            inner join postHistory
            on (postLinks.CreationDate < postHistory.CreationDate)
          on (postLinks.CreationDate > badges.Date)
        on (comments.Id = badges.Id )
      on (comments.Text > postHistory.Text)
    inner join votes
    on (comments.ContentLicense is not NULL)
where postLinks.RelatedPostId is not NULL
limit 132;
select  
  max(
    cast(cast(null as float4) as float4))
from 
  postHistory
        inner join votes
            inner join postHistory
            on (postHistory.CreationDate >= postHistory.CreationDate)
          inner join votes
          on (votes.CreationDate <= votes.CreationDate)
        on (postHistory.CreationDate < votes.CreationDate)
      inner join postHistory
          inner join postHistory
            inner join postHistory
                inner join users
                on (postHistory.RevisionGUID <= users.Location)
              inner join votes
              on (votes.CreationDate <= postHistory.CreationDate)
            on (postHistory.UserId > votes.UserId)
          on (postHistory.PostHistoryTypeId = votes.Id )
        inner join posts
        on (users.CreationDate > users.CreationDate)
      on (votes.UserId > posts.PostTypeId)
    inner join postLinks
        inner join users
        on (postLinks.PostId < postLinks.LinkTypeId)
      inner join postHistory
      on (users.CreationDate = postHistory.CreationDate )
    on (users.CreationDate = users.CreationDate )
where postHistory.CreationDate = postLinks.CreationDate
limit 180;
select  
  badges.Name, 
  sum(
    cast(97 as int4)), 
  posts.OwnerDisplayName, 
  badges.Name
from 
  posts
      inner join posts
      on (posts.CreationDate >= posts.CreationDate)
    inner join badges
    on (posts.AcceptedAnswerId is NULL)
where posts.ContentLicense = posts.OwnerDisplayName
limit 55;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  users.Id, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  max(
    cast(58 as int4)), 
  min(
    cast(users.WebsiteUrl as text))
from 
  users
where users.AboutMe is NULL;
select  
  postHistory.Id, 
  postHistory.Comment, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.PostHistoryTypeId is not NULL
limit 103;
select  
  comments.Id, 
  votes.Id, 
  users.CreationDate, 
  posts.ContentLicense, 
  comments.UserDisplayName, 
  postLinks.RelatedPostId, 
  votes.CreationDate, 
  users.AboutMe, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  avg(
    cast(users.ProfileImageUrl as float8)), 
  users.DisplayName, 
  comments.UserId, 
  badges.Class
from 
  posts
              inner join posts
              on (posts.Title > posts.Tags)
            inner join users
              inner join comments
              on (users.AboutMe = comments.ContentLicense )
            on (users.ProfileImageUrl > users.ProfileImageUrl)
          inner join postLinks
          on (users.CreationDate = postLinks.CreationDate )
        inner join comments
            inner join postHistory
            on (postHistory.RevisionGUID = postHistory.ContentLicense)
          inner join users
            inner join badges
            on (badges.TagBased < badges.TagBased)
          on (comments.CreationDate = badges.Date )
        on (comments.CreationDate = postHistory.CreationDate )
      inner join votes
          inner join postLinks
          on (votes.PostId <= postLinks.RelatedPostId)
        inner join badges
        on (badges.Class > postLinks.RelatedPostId)
      on (users.AccountId < users.ProfileImageUrl)
    inner join comments
    on (users.AccountId is not NULL)
where votes.CreationDate is NULL;
select  
  users.AboutMe, 
  users.ProfileImageUrl
from 
  users
where users.DisplayName is not NULL
limit 130;
select  
  postHistory.Id, 
  postHistory.ContentLicense, 
  postHistory.PostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postHistory.CreationDate, 
  postLinks.Id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postHistory.Id, 
  postHistory.ContentLicense, 
  postLinks.Id, 
  postHistory.Text
from 
  postLinks
    inner join postHistory
    on (postLinks.Id is NULL)
where postLinks.CreationDate is not NULL
limit 168;
select  
  users.DisplayName, 
  votes.PostId, 
  postLinks.PostId, 
  postHistory.Comment, 
  comments.Id
from 
  badges
      inner join postHistory
      on (badges.UserId = postHistory.Id )
    inner join badges
      inner join postHistory
          inner join votes
          on (postHistory.UserDisplayName <= postHistory.UserDisplayName)
        inner join postLinks
                inner join users
                on (users.ProfileImageUrl >= users.ProfileImageUrl)
              inner join comments
              on (users.Location < users.DisplayName)
            inner join badges
            on (users.DisplayName = badges.Name )
          inner join comments
          on (badges.Name = comments.ContentLicense )
        on (postHistory.CreationDate = users.CreationDate)
      on (comments.ContentLicense >= postHistory.UserDisplayName)
    on (badges.TagBased >= badges.TagBased)
where badges.Id is not NULL
limit 178;
select  
  users.ProfileImageUrl, 
  users.AccountId
from 
  postHistory
      inner join users
      on (postHistory.RevisionGUID = users.DisplayName )
    inner join badges
      inner join comments
      on (badges.UserId = badges.UserId)
    on (postHistory.CreationDate = badges.Date )
where comments.Text is NULL;
select  
  users.AboutMe, 
  posts.ContentLicense, 
  posts.PostTypeId, 
  posts.Tags, 
  comments.UserId, 
  votes.PostId, 
  max(
    cast(cast(null as tid) as tid)), 
  badges.Name, 
  votes.Id, 
  users.AccountId, 
  comments.Id, 
  max(
    cast(cast(null as int2) as int2)), 
  comments.ContentLicense, 
  comments.Id, 
  comments.UserId, 
  comments.ContentLicense
from 
  users
        inner join badges
          inner join posts
            inner join comments
              inner join comments
              on (comments.CreationDate = comments.CreationDate)
            on (comments.PostId < posts.PostTypeId)
          on (badges.TagBased = badges.TagBased)
        on (users.WebsiteUrl = posts.OwnerDisplayName )
      inner join votes
      on (votes.UserId < posts.AcceptedAnswerId)
    inner join posts
    on (comments.Text = badges.Name)
where users.ProfileImageUrl is not NULL;
select  
  postHistory.Id, 
  users.CreationDate, 
  votes.UserId, 
  postLinks.RelatedPostId, 
  users.AboutMe, 
  votes.UserId
from 
  votes
    inner join postHistory
            inner join votes
              inner join votes
                inner join postLinks
                on (votes.CreationDate = postLinks.CreationDate)
              on (votes.PostId = postLinks.Id )
            on (postHistory.UserId = votes.Id )
          inner join postHistory
          on (postHistory.Comment > postHistory.Text)
        inner join postHistory
        on (postHistory.Text >= postHistory.RevisionGUID)
      inner join users
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    on (users.DisplayName is NULL)
where users.ProfileImageUrl <= users.ProfileImageUrl;
select  
  posts.Tags, 
  posts.Id, 
  posts.Body, 
  max(
    cast(cast(null as float4) as float4)), 
  posts.Body, 
  posts.CreationDate, 
  posts.OwnerDisplayName, 
  posts.PostTypeId, 
  posts.Tags, 
  posts.AcceptedAnswerId, 
  posts.Body, 
  posts.CreationDate, 
  posts.ContentLicense, 
  posts.ParentId, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  posts.PostTypeId, 
  posts.PostTypeId, 
  min(
    cast(posts.CreationDate as "timestamp"))
from 
  posts
where posts.PostTypeId is not NULL
limit 95;
select  
  min(
    cast(cast(null as float4) as float4)), 
  votes.Id, 
  votes.PostId, 
  sum(
    cast(85 as int4)), 
  count(
    cast(votes.UserId as int8))
from 
  votes
where votes.PostId <= votes.Id
limit 13;
select  
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  sum(
    cast(cast(null as int2) as int2)), 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  sum(
    cast(cast(null as int2) as int2)), 
  postLinks.PostId
from 
  postLinks
where postLinks.CreationDate > postLinks.CreationDate
limit 114;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz))
from 
  postHistory
    inner join postLinks
      inner join posts
      on (posts.OwnerUserId >= posts.PostTypeId)
    on (postLinks.Id is NULL)
where postLinks.RelatedPostId is not NULL;
select  
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as int2) as int2)), 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.PostId is not NULL
limit 41;
select  
  postHistory.UserId, 
  badges.Date, 
  badges.TagBased, 
  postLinks.RelatedPostId, 
  posts.Tags, 
  posts.PostTypeId, 
  postHistory.ContentLicense, 
  comments.Text, 
  comments.PostId, 
  sum(
    cast(users.AccountId as float8)), 
  users.AccountId, 
  badges.Date, 
  posts.Tags
from 
  postLinks
        inner join comments
            inner join badges
              inner join users
              on (users.WebsiteUrl >= users.AboutMe)
            on (badges.TagBased = badges.TagBased)
          inner join postHistory
            inner join badges
            on (postHistory.Comment = postHistory.UserDisplayName)
          on (postHistory.CreationDate = postHistory.CreationDate)
        on (users.AccountId = users.ProfileImageUrl)
      inner join posts
          inner join users
          on (posts.AcceptedAnswerId < users.Id)
        inner join users
        on (users.AccountId < users.AccountId)
      on (users.Id = posts.AcceptedAnswerId)
    inner join posts
      inner join postHistory
      on (postHistory.ContentLicense = postHistory.UserDisplayName)
    on (comments.ContentLicense is NULL)
where badges.TagBased is not NULL;
select  
  users.Id, 
  min(
    cast(cast(null as tid) as tid)), 
  users.ProfileImageUrl, 
  users.Id, 
  min(
    cast(users.CreationDate as "timestamp"))
from 
  users
where users.WebsiteUrl is NULL;
select  
  postHistory.UserId, 
  posts.ParentId, 
  comments.Text, 
  posts.OwnerUserId
from 
  users
      inner join comments
      on (users.DisplayName = users.Location)
    inner join posts
          inner join postHistory
          on (postHistory.Id > postHistory.PostHistoryTypeId)
        inner join badges
          inner join users
          on (badges.Id = users.Id )
        on (posts.Id = badges.Id )
      inner join posts
      on (posts.Tags <= users.DisplayName)
    on (posts.OwnerUserId is NULL)
where users.CreationDate <= comments.CreationDate
limit 108;
select  
  votes.PostId, 
  votes.CreationDate, 
  votes.Id, 
  votes.PostId, 
  votes.Id, 
  votes.VoteTypeId
from 
  votes
where votes.UserId is not NULL
limit 110;
select  
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.Id is not NULL
limit 67;
select  
  comments.ContentLicense, 
  comments.Text, 
  comments.Id, 
  comments.ContentLicense
from 
  comments
where comments.UserId is NULL
limit 113;
select  
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.RevisionGUID, 
  postHistory.CreationDate, 
  postHistory.Comment, 
  postHistory.CreationDate, 
  postHistory.RevisionGUID, 
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.ContentLicense, 
  postHistory.RevisionGUID, 
  postHistory.Text, 
  postHistory.PostId, 
  postHistory.Text, 
  avg(
    cast(postHistory.PostId as int8)), 
  postHistory.UserId
from 
  postHistory
where postHistory.UserId is not NULL;
select  
  votes.UserId, 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.PostId, 
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.PostId >= votes.Id
limit 25;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate, 
  postLinks.Id
from 
  postLinks
where postLinks.LinkTypeId is NULL;
select  
  badges.Class, 
  votes.PostId, 
  votes.PostId, 
  users.Location, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.PostTypeId
from 
  badges
          inner join comments
          on (badges.TagBased >= badges.TagBased)
        inner join postHistory
          inner join posts
            inner join votes
            on (votes.Id > posts.AcceptedAnswerId)
          on (posts.Id <= posts.ParentId)
        on (badges.TagBased >= badges.TagBased)
      inner join users
      on (posts.CreationDate >= postHistory.CreationDate)
    inner join comments
        inner join users
        on (comments.ContentLicense = users.DisplayName )
      inner join postLinks
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    on (badges.TagBased <= badges.TagBased)
where comments.UserDisplayName is NULL
limit 91;
select  
  max(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as money) as money)), 
  badges.UserId
from 
  badges
    inner join votes
    on (votes.Id is NULL)
where badges.Class is NULL
limit 179;
select  
  users.Location
from 
  users
where users.Id >= users.Id
limit 155;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  postHistory.Id, 
  max(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  postHistory.Comment, 
  postHistory.RevisionGUID, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.UserId, 
  postHistory.Text
from 
  postHistory
where postHistory.PostHistoryTypeId = postHistory.PostId
limit 187;
select  
  max(
    cast(votes.UserId as int8)), 
  badges.TagBased, 
  votes.PostId, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.PostId, 
  votes.Id, 
  badges.UserId
from 
  badges
    inner join votes
    on (votes.PostId is NULL)
where votes.CreationDate = badges.Date
limit 111;
select  
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.Text, 
  comments.ContentLicense, 
  comments.Text, 
  comments.UserDisplayName, 
  comments.UserId, 
  comments.ContentLicense, 
  max(
    cast(comments.UserDisplayName as text)), 
  comments.Text, 
  comments.PostId, 
  comments.PostId, 
  comments.Id, 
  comments.PostId, 
  comments.UserId, 
  min(
    cast(comments.CreationDate as "timestamp"))
from 
  comments
where comments.Text is NULL;
select  
  badges.Name, 
  badges.Class, 
  badges.UserId, 
  badges.Class, 
  badges.TagBased, 
  badges.Name, 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.TagBased
from 
  badges
where badges.Name is NULL
limit 86;
select  
  comments.Text, 
  comments.Id, 
  comments.Text, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.CreationDate, 
  comments.Id
from 
  comments
where comments.CreationDate <= comments.CreationDate;
select  
  postHistory.CreationDate, 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  min(
    cast(56 as int4)), 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  min(
    cast(postHistory.Comment as text)), 
  postHistory.CreationDate
from 
  postHistory
where postHistory.CreationDate >= postHistory.CreationDate
limit 84;
select  
  postLinks.RelatedPostId, 
  postLinks.Id
from 
  postLinks
where postLinks.PostId is NULL;
select  
  comments.CreationDate, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.Text, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.Id, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.Id, 
  comments.UserDisplayName, 
  min(
    cast(cast(null as int2) as int2)), 
  comments.CreationDate, 
  comments.CreationDate, 
  comments.CreationDate, 
  count(
    cast(comments.CreationDate as "timestamp")), 
  posts.Tags, 
  comments.Text, 
  comments.UserDisplayName, 
  posts.CreationDate, 
  comments.Id, 
  posts.ContentLicense
from 
  comments
        inner join posts
        on (comments.Text = posts.OwnerDisplayName )
      inner join comments
      on (posts.PostTypeId = posts.ParentId)
    inner join comments
    on (comments.UserId = comments.Id )
where comments.Id is not NULL
limit 101;
select  
  users.WebsiteUrl
from 
  users
where users.AboutMe is NULL;
select  
  users.ProfileImageUrl, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl
from 
  postHistory
    inner join users
    on (postHistory.UserId = users.Id )
where postHistory.PostHistoryTypeId is NULL;
select  
  max(
    cast(cast(null as float8) as float8))
from 
  votes
where votes.Id <= votes.UserId
limit 60;
select  
  postHistory.ContentLicense
from 
  postHistory
              inner join posts
              on (posts.CreationDate = posts.CreationDate)
            inner join postLinks
              inner join comments
                inner join users
                on (users.CreationDate < users.CreationDate)
              on (users.AccountId = users.ProfileImageUrl)
            on (comments.ContentLicense = postHistory.UserDisplayName)
          inner join votes
            inner join postLinks
            on (postLinks.Id = votes.UserId)
          on (users.ProfileImageUrl = users.ProfileImageUrl)
        inner join postHistory
        on (postHistory.Id >= postHistory.Id)
      inner join posts
      on (postHistory.CreationDate = postLinks.CreationDate)
    inner join postHistory
    on (posts.OwnerDisplayName is NULL)
where users.ProfileImageUrl <= users.AccountId
limit 61;
select  
  postLinks.PostId
from 
  postLinks
      inner join users
      on (users.ProfileImageUrl > users.AccountId)
    inner join users
        inner join posts
        on (users.Location = posts.OwnerDisplayName )
      inner join users
      on (posts.OwnerDisplayName = users.DisplayName )
    on (posts.PostTypeId is not NULL)
where posts.Tags is NULL
limit 75;
select  
  votes.UserId, 
  comments.PostId, 
  comments.ContentLicense, 
  posts.CreationDate, 
  sum(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  posts
    inner join votes
      inner join comments
      on (comments.CreationDate = votes.CreationDate)
    on (votes.VoteTypeId is not NULL)
where comments.UserId is NULL
limit 95;
select  
  badges.TagBased
from 
  users
      inner join postHistory
        inner join posts
        on (posts.AcceptedAnswerId > posts.Id)
      on (postHistory.Comment = users.WebsiteUrl)
    inner join users
          inner join postHistory
          on (postHistory.RevisionGUID > postHistory.Comment)
        inner join badges
          inner join votes
          on (badges.Date = votes.CreationDate )
        on (postHistory.CreationDate >= badges.Date)
      inner join postHistory
      on (users.AccountId < users.AccountId)
    on (posts.OwnerDisplayName is NULL)
where postHistory.Comment is NULL
limit 83;
select  
  posts.Tags, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.CreationDate, 
  posts.Title, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  posts
where posts.ParentId is not NULL;
select  
  users.ProfileImageUrl, 
  users.CreationDate, 
  users.Location, 
  users.Id, 
  users.Location, 
  users.DisplayName
from 
  users
where users.WebsiteUrl is NULL
limit 135;
select  
  comments.UserId, 
  postLinks.RelatedPostId, 
  comments.ContentLicense, 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  sum(
    cast(90 as int4)), 
  comments.Id, 
  comments.UserDisplayName, 
  comments.Text
from 
  comments
    inner join postLinks
      inner join comments
      on (comments.Text > comments.UserDisplayName)
    on (comments.CreationDate = comments.CreationDate)
where comments.CreationDate = comments.CreationDate
limit 112;
select  
  posts.OwnerUserId, 
  posts.Id, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(posts.Body as text)), 
  sum(
    cast(cast(null as float4) as float4)), 
  posts.ParentId, 
  posts.Id, 
  posts.Body, 
  posts.OwnerDisplayName, 
  posts.ParentId
from 
  posts
where posts.Tags is not NULL;
select  
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  avg(
    cast(cast(null as float8) as float8)), 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id is not NULL
limit 101;
select  
  posts.ParentId, 
  posts.AcceptedAnswerId, 
  postHistory.ContentLicense, 
  posts.Body, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.PostTypeId, 
  posts.OwnerUserId, 
  posts.PostTypeId, 
  posts.ContentLicense, 
  posts.Title, 
  posts.AcceptedAnswerId, 
  postHistory.PostId
from 
  postHistory
    inner join posts
      inner join posts
      on (posts.CreationDate <= posts.CreationDate)
    on (postHistory.RevisionGUID is NULL)
where posts.ContentLicense is not NULL;
select  
  posts.AcceptedAnswerId
from 
  posts
where posts.Body is NULL;
select  
  postLinks.PostId, 
  avg(
    cast(badges.Id as int8)), 
  badges.Id, 
  users.Location, 
  badges.Date, 
  users.AccountId, 
  users.Location, 
  badges.UserId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as tid) as tid)), 
  badges.Class, 
  badges.Name, 
  postLinks.CreationDate, 
  badges.Date, 
  min(
    cast(cast(null as date) as date)), 
  users.CreationDate, 
  badges.Name, 
  users.Location, 
  postLinks.LinkTypeId, 
  badges.Class, 
  users.CreationDate, 
  badges.Id
from 
  badges
      inner join badges
      on (badges.TagBased < badges.TagBased)
    inner join postLinks
      inner join users
      on (postLinks.CreationDate <= users.CreationDate)
    on (postLinks.PostId is NULL)
where postLinks.PostId < badges.Id
limit 54;
select  
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  posts.ContentLicense, 
  posts.Body, 
  posts.ContentLicense, 
  posts.Body, 
  posts.CreationDate, 
  posts.ContentLicense, 
  posts.OwnerUserId, 
  max(
    cast(cast(null as date) as date)), 
  posts.ParentId, 
  posts.AcceptedAnswerId, 
  posts.ContentLicense, 
  posts.PostTypeId, 
  posts.AcceptedAnswerId, 
  posts.ParentId
from 
  posts
where posts.OwnerDisplayName is not NULL
limit 65;
select  
  posts.Body, 
  posts.Tags, 
  posts.Id, 
  posts.Id, 
  posts.OwnerUserId, 
  posts.OwnerUserId, 
  posts.ContentLicense, 
  posts.CreationDate, 
  count(*), 
  posts.AcceptedAnswerId, 
  posts.ParentId, 
  posts.Body, 
  posts.Title, 
  posts.ContentLicense, 
  posts.Title, 
  posts.Tags, 
  posts.CreationDate, 
  posts.Id, 
  min(
    cast(posts.CreationDate as "timestamp")), 
  posts.ContentLicense, 
  posts.AcceptedAnswerId, 
  posts.Title
from 
  posts
where posts.Title is NULL
limit 166;
select  
  comments.UserId, 
  max(
    cast(cast(null as money) as money))
from 
  comments
    inner join posts
    on (comments.Id is not NULL)
where comments.UserDisplayName is NULL
limit 129;
select  
  votes.Id
from 
  votes
    inner join badges
    on (badges.Class is not NULL)
where votes.UserId is not NULL
limit 61;
select  
  comments.Id, 
  badges.Class, 
  comments.PostId, 
  badges.Date, 
  badges.Date, 
  posts.Id, 
  badges.UserId, 
  posts.PostTypeId, 
  posts.PostTypeId, 
  posts.Body, 
  badges.Name, 
  posts.PostTypeId, 
  votes.Id, 
  posts.AcceptedAnswerId, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.TagBased, 
  badges.TagBased, 
  posts.Title, 
  max(
    cast(cast(null as timetz) as timetz)), 
  badges.Name, 
  comments.PostId, 
  badges.Name
from 
  badges
    inner join comments
          inner join posts
            inner join votes
              inner join badges
              on (votes.CreationDate >= votes.CreationDate)
            on (posts.PostTypeId = votes.Id )
          on (comments.CreationDate = votes.CreationDate)
        inner join users
        on (users.DisplayName <= posts.Body)
      inner join posts
      on (comments.ContentLicense = posts.OwnerDisplayName )
    on (comments.Text is not NULL)
where votes.CreationDate is not NULL
limit 75;
select  
  votes.UserId, 
  count(
    cast(postLinks.Id as int8)), 
  postLinks.CreationDate, 
  users.Id, 
  votes.CreationDate, 
  votes.VoteTypeId, 
  comments.PostId, 
  min(
    cast(cast(null as int2) as int2)), 
  votes.PostId, 
  votes.VoteTypeId, 
  postHistory.Text, 
  comments.UserId, 
  posts.PostTypeId, 
  min(
    cast(cast(null as int2) as int2)), 
  postLinks.LinkTypeId, 
  postHistory.Id
from 
  comments
      inner join posts
        inner join users
        on (posts.CreationDate >= posts.CreationDate)
      on (posts.Body < posts.Body)
    inner join users
          inner join comments
              inner join votes
              on (comments.Id = votes.Id )
            inner join votes
            on (votes.PostId = votes.Id )
          on (comments.UserDisplayName <= users.DisplayName)
        inner join users
          inner join badges
            inner join postLinks
            on (postLinks.Id < badges.Id)
          on (badges.UserId > postLinks.LinkTypeId)
        on (comments.CreationDate >= badges.Date)
      inner join postLinks
            inner join votes
            on (postLinks.CreationDate = postLinks.CreationDate)
          inner join postLinks
            inner join votes
            on (votes.CreationDate >= votes.CreationDate)
          on (votes.VoteTypeId > votes.PostId)
        inner join votes
          inner join users
            inner join postHistory
            on (users.WebsiteUrl = postHistory.Text)
          on (votes.CreationDate >= votes.CreationDate)
        on (postHistory.UserDisplayName < postHistory.UserDisplayName)
      on (badges.TagBased <= badges.TagBased)
    on (posts.PostTypeId is NULL)
where users.AboutMe is NULL
limit 55;
select  
  votes.CreationDate, 
  users.WebsiteUrl
from 
  users
    inner join votes
    on (users.ProfileImageUrl is NULL)
where users.CreationDate is NULL
limit 100;
select  
  votes.CreationDate
from 
  votes
        inner join badges
        on (votes.CreationDate < badges.Date)
      inner join badges
      on (votes.CreationDate > badges.Date)
    inner join posts
    on (posts.ContentLicense > posts.OwnerDisplayName)
where votes.CreationDate > badges.Date;
select  
  users.CreationDate
from 
  users
where users.DisplayName > users.Location
limit 122;
select  
  posts.PostTypeId, 
  posts.Tags
from 
  posts
    inner join votes
    on (posts.Body is not NULL)
where votes.Id is NULL
limit 108;
select  
  posts.Title, 
  postLinks.PostId, 
  badges.Date, 
  badges.Class, 
  posts.ContentLicense, 
  max(
    cast(71 as int4)), 
  posts.Title
from 
  badges
      inner join posts
        inner join postLinks
        on (posts.CreationDate = postLinks.CreationDate )
      on (badges.TagBased >= badges.TagBased)
    inner join posts
    on (postLinks.Id is not NULL)
where posts.OwnerDisplayName > posts.Title
limit 117;
select  
  postHistory.Comment
from 
  postHistory
where postHistory.RevisionGUID is NULL
limit 97;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  badges.Name, 
  badges.UserId, 
  badges.Class, 
  badges.Date, 
  votes.UserId, 
  badges.Date, 
  votes.UserId, 
  badges.TagBased, 
  votes.VoteTypeId, 
  badges.UserId, 
  votes.CreationDate
from 
  votes
      inner join badges
      on (badges.TagBased <= badges.TagBased)
    inner join badges
    on (badges.Date is NULL)
where badges.Class is NULL;
select  
  badges.Date
from 
  badges
where badges.Class is not NULL
limit 114;
select  
  avg(
    cast(cast(null as float8) as float8))
from 
  votes
where votes.UserId is NULL
limit 43;
select  
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.Id = postLinks.Id
limit 78;
select  
  badges.Id, 
  badges.TagBased
from 
  badges
where badges.Name = badges.Name
limit 24;
select  
  max(
    cast(cast(null as float4) as float4))
from 
  badges
      inner join comments
        inner join votes
        on (votes.UserId >= comments.PostId)
      on (badges.TagBased > badges.TagBased)
    inner join votes
      inner join votes
        inner join badges
          inner join badges
          on (badges.TagBased > badges.TagBased)
        on (votes.UserId = badges.Id )
      on (votes.VoteTypeId <= votes.PostId)
    on (badges.Date is NULL)
where votes.VoteTypeId is NULL
limit 79;
select  
  badges.Id, 
  badges.Name, 
  comments.CreationDate, 
  badges.Name, 
  comments.UserId, 
  badges.Class
from 
  badges
      inner join comments
      on (badges.Date <= comments.CreationDate)
    inner join comments
    on (comments.CreationDate is NULL)
where comments.PostId is NULL;
select  
  badges.Class, 
  badges.Date
from 
  badges
where badges.Class is not NULL
limit 41;
select  
  min(
    cast(cast(null as "interval") as "interval"))
from 
  users
      inner join posts
      on (users.AccountId > users.AccountId)
    inner join postLinks
            inner join badges
            on (postLinks.Id = badges.Id )
          inner join postHistory
          on (postHistory.CreationDate <= postLinks.CreationDate)
        inner join votes
          inner join postHistory
          on (postHistory.RevisionGUID > postHistory.Comment)
        on (postHistory.Comment = postHistory.Text)
      inner join postHistory
          inner join users
          on (postHistory.Text = users.DisplayName )
        inner join posts
        on (posts.CreationDate > posts.CreationDate)
      on (posts.PostTypeId < postHistory.PostHistoryTypeId)
    on (users.ProfileImageUrl = users.AccountId)
where badges.TagBased = badges.TagBased
limit 143;
select  
  posts.Tags, 
  posts.ParentId, 
  count(
    cast(posts.PostTypeId as int8))
from 
  posts
where posts.Id is not NULL
limit 65;
select  
  badges.Class
from 
  votes
      inner join badges
            inner join postLinks
            on (badges.TagBased <= badges.TagBased)
          inner join badges
          on (badges.TagBased <= badges.TagBased)
        inner join posts
          inner join posts
            inner join posts
            on (posts.CreationDate > posts.CreationDate)
          on (posts.ParentId >= posts.PostTypeId)
        on (posts.CreationDate = badges.Date)
      on (votes.Id = posts.Id )
    inner join badges
    on (posts.OwnerDisplayName is NULL)
where votes.VoteTypeId is NULL;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId
from 
  postLinks
    inner join postLinks
    on (postLinks.RelatedPostId is not NULL)
where postLinks.LinkTypeId is NULL
limit 103;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  comments.ContentLicense, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  comments.PostId, 
  comments.PostId, 
  comments.Text, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  comments.UserId, 
  comments.Text, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  comments.ContentLicense
from 
  comments
where comments.PostId is NULL
limit 132;
select distinct 
  users.Id, 
  users.DisplayName, 
  users.Location, 
  users.AboutMe, 
  users.CreationDate
from 
  users
where users.DisplayName is not NULL
limit 157;
select  
  votes.PostId, 
  votes.UserId, 
  postHistory.UserId, 
  postHistory.Id
from 
  postHistory
      inner join votes
            inner join postLinks
            on (votes.VoteTypeId >= votes.Id)
          inner join users
          on (votes.UserId < users.Id)
        inner join votes
        on (users.DisplayName >= users.DisplayName)
      on (votes.UserId < votes.PostId)
    inner join comments
        inner join votes
          inner join postHistory
            inner join votes
              inner join postHistory
                inner join badges
                on (postHistory.Comment <= postHistory.Text)
              on (postHistory.Comment > postHistory.RevisionGUID)
            on (postHistory.Text > postHistory.Comment)
          on (postHistory.Id < votes.Id)
        on (votes.UserId > postHistory.Id)
      inner join posts
        inner join users
          inner join posts
          on (posts.OwnerUserId <= posts.Id)
        on (users.AccountId <= users.ProfileImageUrl)
      on (postHistory.ContentLicense = posts.OwnerDisplayName )
    on (posts.ParentId is not NULL)
where badges.UserId is not NULL
limit 72;
select  
  postHistory.Text, 
  postHistory.Comment, 
  posts.Id, 
  users.ProfileImageUrl
from 
  comments
      inner join posts
        inner join posts
          inner join users
          on (users.CreationDate >= users.CreationDate)
        on (posts.Tags > posts.ContentLicense)
      on (posts.CreationDate = posts.CreationDate)
    inner join postHistory
    on (postHistory.UserDisplayName is not NULL)
where posts.Tags is NULL
limit 90;
select  
  votes.PostId
from 
  votes
where votes.UserId > votes.UserId
limit 183;
select  
  postHistory.CreationDate, 
  max(
    cast(cast(null as "time") as "time")), 
  postHistory.UserDisplayName, 
  max(
    cast(cast(null as date) as date)), 
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  postHistory.UserDisplayName, 
  postHistory.PostHistoryTypeId, 
  postHistory.PostId
from 
  postHistory
where postHistory.Text is NULL;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  users.ProfileImageUrl, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  users.ProfileImageUrl
from 
  users
    inner join posts
    on (posts.PostTypeId is not NULL)
where users.AboutMe <= users.Location;
select  
  votes.UserId, 
  max(
    cast(cast(null as text) as text)), 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.VoteTypeId
from 
  votes
where votes.Id is not NULL;
select  
  avg(
    cast(76 as int4))
from 
  votes
    inner join posts
    on (posts.OwnerDisplayName is not NULL)
where votes.UserId is NULL
limit 45;
select  
  max(
    cast(cast(null as float8) as float8)), 
  comments.CreationDate, 
  min(
    cast(cast(null as tid) as tid)), 
  badges.Id, 
  comments.PostId, 
  postLinks.PostId, 
  comments.Text, 
  badges.UserId, 
  min(
    cast(cast(null as oid) as oid)), 
  postLinks.LinkTypeId, 
  badges.TagBased, 
  postLinks.Id, 
  badges.UserId, 
  postLinks.PostId, 
  badges.Name, 
  badges.TagBased, 
  badges.TagBased, 
  badges.TagBased, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  sum(
    cast(cast(null as int2) as int2)), 
  badges.Id, 
  min(
    cast(cast(null as float8) as float8)), 
  votes.PostId, 
  comments.PostId, 
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as oid) as oid)), 
  postLinks.RelatedPostId, 
  badges.UserId, 
  badges.TagBased, 
  sum(
    cast(cast(null as money) as money)), 
  badges.TagBased, 
  votes.UserId, 
  comments.UserId, 
  comments.ContentLicense, 
  votes.PostId, 
  badges.TagBased, 
  votes.PostId, 
  postLinks.PostId, 
  badges.UserId
from 
  postLinks
      inner join votes
      on (postLinks.CreationDate = votes.CreationDate )
    inner join badges
      inner join badges
        inner join comments
        on (comments.CreationDate < comments.CreationDate)
      on (badges.TagBased = badges.TagBased )
    on (comments.UserId <= votes.Id)
where comments.Id is NULL
limit 107;
select  
  postLinks.PostId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.PostId is NULL;
select  
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  comments.Id
from 
  postHistory
    inner join comments
    on (comments.Text is NULL)
where comments.Text is not NULL;
select  
  posts.OwnerDisplayName, 
  posts.ParentId, 
  avg(
    cast(posts.PostTypeId as int8))
from 
  posts
where posts.ParentId = posts.OwnerUserId
limit 116;
select  
  users.DisplayName, 
  users.AccountId, 
  users.CreationDate
from 
  users
where users.DisplayName >= users.DisplayName
limit 65;
select  
  postLinks.Id
from 
  postLinks
          inner join postHistory
          on (postLinks.RelatedPostId = postLinks.Id)
        inner join users
        on (postHistory.CreationDate > postHistory.CreationDate)
      inner join badges
      on (users.WebsiteUrl > postHistory.UserDisplayName)
    inner join postLinks
                inner join votes
                on (postLinks.PostId > postLinks.LinkTypeId)
              inner join posts
                inner join posts
                on (posts.ContentLicense = posts.OwnerDisplayName )
              on (votes.Id = posts.Id )
            inner join postLinks
            on (postLinks.CreationDate >= posts.CreationDate)
          inner join badges
          on (posts.Title > posts.OwnerDisplayName)
        inner join badges
          inner join votes
          on (votes.CreationDate > votes.CreationDate)
        on (posts.OwnerDisplayName = posts.Tags)
      inner join users
      on (badges.TagBased = badges.TagBased)
    on (users.ProfileImageUrl > users.ProfileImageUrl)
where badges.TagBased is NULL;
select  
  comments.CreationDate, 
  comments.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  comments.UserId
from 
  postHistory
        inner join users
        on (postHistory.CreationDate >= users.CreationDate)
      inner join comments
        inner join comments
          inner join posts
          on (posts.Body = comments.ContentLicense)
        on (comments.Id = comments.PostId)
      on (posts.Id >= posts.AcceptedAnswerId)
    inner join posts
        inner join postLinks
          inner join postLinks
          on (postLinks.CreationDate < postLinks.CreationDate)
        on (posts.Title <= posts.OwnerDisplayName)
      inner join badges
      on (badges.TagBased >= badges.TagBased)
    on (badges.Date is NULL)
where posts.CreationDate >= postLinks.CreationDate
limit 61;
select  
  badges.Class, 
  sum(
    cast(users.Id as int8))
from 
  badges
    inner join comments
        inner join users
        on (users.AccountId < users.ProfileImageUrl)
      inner join badges
        inner join postLinks
          inner join postHistory
          on (postHistory.RevisionGUID = postHistory.Comment)
        on (postLinks.CreationDate <= postHistory.CreationDate)
      on (postLinks.Id > postLinks.RelatedPostId)
    on (comments.PostId is NULL)
where comments.UserDisplayName is not NULL;
select  
  users.CreationDate, 
  users.Id
from 
  users
    inner join users
    on (users.CreationDate is not NULL)
where users.WebsiteUrl is NULL;
select  
  postHistory.Comment, 
  postHistory.UserDisplayName, 
  postHistory.ContentLicense, 
  max(
    cast(cast(null as "time") as "time")), 
  postHistory.Text
from 
  postHistory
where postHistory.PostId is not NULL
limit 149;
select  
  posts.OwnerUserId, 
  posts.Id, 
  count(
    cast(posts.Title as text)), 
  posts.Title, 
  posts.Body, 
  posts.AcceptedAnswerId, 
  posts.PostTypeId
from 
  posts
where posts.OwnerDisplayName is not NULL
limit 117;
select  
  users.AboutMe, 
  users.AccountId, 
  comments.UserId, 
  comments.ContentLicense, 
  comments.UserId, 
  posts.ParentId, 
  users.DisplayName, 
  min(
    cast(39 as int4)), 
  posts.Tags, 
  users.CreationDate
from 
  comments
      inner join comments
        inner join users
        on (comments.ContentLicense > users.DisplayName)
      on (comments.PostId <= comments.Id)
    inner join users
      inner join posts
      on (users.WebsiteUrl = posts.OwnerDisplayName )
    on (comments.CreationDate = users.CreationDate )
where users.WebsiteUrl is not NULL
limit 92;
select  
  badges.Name, 
  comments.UserId, 
  votes.PostId, 
  votes.UserId, 
  comments.Text, 
  posts.AcceptedAnswerId, 
  comments.CreationDate, 
  comments.Text, 
  posts.OwnerDisplayName
from 
  posts
    inner join comments
      inner join badges
        inner join votes
        on (votes.UserId = badges.Class)
      on (badges.Date >= comments.CreationDate)
    on (votes.CreationDate is NULL)
where comments.UserDisplayName > posts.Title
limit 107;
select  
  users.Location, 
  users.AboutMe, 
  users.AboutMe
from 
  users
where users.Location is not NULL
limit 88;
select  
  min(
    cast(cast(null as float4) as float4)), 
  postHistory.UserId, 
  postHistory.UserDisplayName, 
  posts.ContentLicense, 
  comments.Text, 
  postHistory.PostId, 
  badges.Class, 
  comments.ContentLicense, 
  posts.Title, 
  badges.Id, 
  min(
    cast(cast(null as timetz) as timetz)), 
  comments.Id, 
  postHistory.CreationDate, 
  badges.Name, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as money) as money)), 
  comments.ContentLicense, 
  comments.Text, 
  postHistory.UserId, 
  postHistory.PostId, 
  comments.UserId, 
  postHistory.CreationDate, 
  badges.Name, 
  postHistory.ContentLicense, 
  postLinks.LinkTypeId, 
  min(
    cast(92 as int4)), 
  comments.CreationDate, 
  postHistory.UserDisplayName, 
  sum(
    cast(58 as int4)), 
  avg(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
    inner join postHistory
      inner join postHistory
            inner join postLinks
            on (postHistory.UserId = postLinks.Id )
          inner join posts
            inner join badges
              inner join comments
              on (badges.Class > badges.Id)
            on (comments.UserDisplayName <= posts.ContentLicense)
          on (postLinks.LinkTypeId >= badges.UserId)
        inner join comments
        on (badges.TagBased > badges.TagBased)
      on (posts.CreationDate = postHistory.CreationDate)
    on (users.AboutMe = comments.ContentLicense )
where users.Id is NULL
limit 43;
select  
  min(
    cast(42 as int4)), 
  users.Location, 
  users.ProfileImageUrl, 
  users.AccountId, 
  users.CreationDate, 
  users.AboutMe, 
  users.WebsiteUrl, 
  users.Location, 
  users.Id, 
  postHistory.RevisionGUID
from 
  users
      inner join postHistory
      on (users.CreationDate = postHistory.CreationDate )
    inner join users
    on (postHistory.Text is not NULL)
where postHistory.PostHistoryTypeId >= postHistory.PostHistoryTypeId
limit 79;
select  
  users.CreationDate, 
  postLinks.RelatedPostId, 
  votes.VoteTypeId, 
  comments.CreationDate, 
  votes.UserId, 
  sum(
    cast(cast(null as money) as money)), 
  users.ProfileImageUrl, 
  posts.CreationDate, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.UserId, 
  users.AboutMe, 
  votes.PostId, 
  sum(
    cast(cast(null as money) as money))
from 
  users
        inner join votes
                inner join postHistory
                on (votes.PostId >= postHistory.PostId)
              inner join votes
              on (postHistory.CreationDate > votes.CreationDate)
            inner join postLinks
            on (postHistory.RevisionGUID > postHistory.UserDisplayName)
          inner join comments
            inner join users
              inner join votes
              on (users.AccountId < users.ProfileImageUrl)
            on (users.DisplayName > users.WebsiteUrl)
          on (users.AccountId <= users.AccountId)
        on (votes.CreationDate < users.CreationDate)
      inner join users
      on (postHistory.UserDisplayName <= users.DisplayName)
    inner join postLinks
      inner join posts
        inner join postLinks
        on (posts.CreationDate >= posts.CreationDate)
      on (posts.Body <= posts.OwnerDisplayName)
    on (postLinks.PostId = postLinks.Id )
where users.ProfileImageUrl is not NULL
limit 54;
select  
  posts.Title, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.Id, 
  posts.ContentLicense, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posts.Title
from 
  postLinks
    inner join posts
    on (postLinks.CreationDate is not NULL)
where posts.CreationDate is not NULL
limit 86;
select  
  posts.ParentId, 
  posts.ContentLicense
from 
  posts
where posts.CreationDate is NULL
limit 139;
select  
  posts.AcceptedAnswerId, 
  votes.PostId, 
  postHistory.PostId
from 
  votes
      inner join postLinks
              inner join posts
              on (posts.Tags <= posts.OwnerDisplayName)
            inner join posts
              inner join postHistory
              on (posts.CreationDate = postHistory.CreationDate)
            on (postHistory.UserId < postLinks.RelatedPostId)
          inner join posts
              inner join postHistory
              on (posts.AcceptedAnswerId >= postHistory.Id)
            inner join badges
            on (postHistory.UserId = badges.Id )
          on (badges.TagBased < badges.TagBased)
        inner join votes
        on (votes.VoteTypeId = posts.PostTypeId)
      on (postHistory.RevisionGUID > postHistory.UserDisplayName)
    inner join votes
    on (votes.PostId is not NULL)
where votes.CreationDate <= posts.CreationDate
limit 81;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  badges.Name
from 
  users
      inner join comments
      on (users.Location <= users.AboutMe)
    inner join badges
    on (users.Id < badges.Id)
where users.AccountId is NULL;
select  
  posts.ParentId
from 
  posts
    inner join postLinks
    on (posts.OwnerUserId >= posts.PostTypeId)
where postLinks.Id is not NULL
limit 159;
select  
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.LinkTypeId is NULL
limit 141;
select  
  posts.AcceptedAnswerId, 
  posts.ParentId, 
  postLinks.PostId
from 
  posts
        inner join badges
              inner join badges
              on (badges.Name = badges.Name)
            inner join posts
            on (posts.ContentLicense > posts.Body)
          inner join users
          on (posts.AcceptedAnswerId > badges.UserId)
        on (posts.Tags = badges.Name )
      inner join badges
        inner join postLinks
        on (badges.Date = postLinks.CreationDate )
      on (posts.ContentLicense > users.WebsiteUrl)
    inner join posts
    on (posts.Title is NULL)
where users.CreationDate = users.CreationDate
limit 123;
select  
  min(
    cast(cast(null as float8) as float8)), 
  postLinks.CreationDate
from 
  postLinks
where postLinks.LinkTypeId = postLinks.RelatedPostId
limit 55;
select  
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.Id is not NULL
limit 42;
select  
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 72;
select  
  badges.Class, 
  badges.Id
from 
  badges
where badges.UserId >= badges.Id;
select  
  postLinks.Id, 
  postHistory.RevisionGUID, 
  votes.VoteTypeId, 
  votes.UserId, 
  votes.CreationDate, 
  postHistory.Comment, 
  postHistory.Id
from 
  posts
      inner join votes
      on (posts.CreationDate > posts.CreationDate)
    inner join postHistory
        inner join postHistory
        on (postHistory.CreationDate <= postHistory.CreationDate)
      inner join votes
            inner join postLinks
            on (votes.Id = postLinks.Id )
          inner join postHistory
            inner join badges
            on (postHistory.UserId <= postHistory.PostHistoryTypeId)
          on (postLinks.LinkTypeId <= badges.Class)
        inner join comments
          inner join badges
              inner join posts
              on (posts.Title < posts.ContentLicense)
            inner join users
            on (users.Id <= posts.AcceptedAnswerId)
          on (badges.TagBased <= badges.TagBased)
        on (badges.TagBased = badges.TagBased)
      on (postHistory.UserId <= badges.UserId)
    on (badges.Id is NULL)
where badges.TagBased <= badges.TagBased
limit 105;
select  
  postLinks.CreationDate, 
  min(
    cast(postLinks.RelatedPostId as int8)), 
  comments.CreationDate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  users.ProfileImageUrl
from 
  comments
        inner join users
        on (users.CreationDate < users.CreationDate)
      inner join postLinks
        inner join postLinks
        on (postLinks.Id > postLinks.RelatedPostId)
      on (users.DisplayName <= comments.UserDisplayName)
    inner join users
      inner join users
      on (users.CreationDate = users.CreationDate)
    on (postLinks.Id is NULL)
where users.AboutMe is not NULL
limit 161;
select  
  users.AccountId, 
  users.CreationDate, 
  users.CreationDate, 
  users.AccountId, 
  users.ProfileImageUrl, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.AccountId, 
  users.AccountId, 
  users.Location, 
  users.CreationDate, 
  users.DisplayName, 
  users.AboutMe, 
  avg(
    cast(cast(null as float4) as float4)), 
  users.CreationDate, 
  users.AboutMe, 
  users.Location, 
  users.DisplayName, 
  users.DisplayName, 
  users.Id, 
  max(
    cast(cast(null as int2) as int2)), 
  users.Location, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  users.AboutMe, 
  users.DisplayName, 
  users.Location, 
  users.Id, 
  users.CreationDate, 
  users.AccountId, 
  users.AccountId
from 
  users
where users.ProfileImageUrl is NULL
limit 117;
select  
  badges.Id, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  sum(
    cast(cast(null as float8) as float8)), 
  badges.UserId, 
  badges.Date
from 
  badges
where badges.Name is not NULL;
select  
  users.Location, 
  users.Id, 
  postHistory.PostHistoryTypeId, 
  postHistory.CreationDate, 
  postHistory.PostHistoryTypeId, 
  postHistory.CreationDate, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as inet) as inet)), 
  postHistory.UserDisplayName, 
  sum(
    cast(75 as int4)), 
  max(
    cast(cast(null as inet) as inet)), 
  users.DisplayName, 
  postHistory.ContentLicense, 
  users.Id, 
  postHistory.UserDisplayName
from 
  postHistory
    inner join users
    on (postHistory.PostHistoryTypeId is not NULL)
where users.Id is not NULL
limit 164;
select  
  comments.Id, 
  postLinks.PostId
from 
  postLinks
    inner join comments
    on (comments.ContentLicense is not NULL)
where comments.PostId is not NULL
limit 77;
select  
  badges.UserId, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postLinks.RelatedPostId
from 
  postLinks
    inner join users
      inner join badges
        inner join comments
        on (badges.Date <= badges.Date)
      on (users.AboutMe = badges.Name )
    on (badges.TagBased = badges.TagBased)
where badges.TagBased < badges.TagBased
limit 119;
select  
  users.CreationDate, 
  sum(
    cast(posts.OwnerUserId as int8))
from 
  votes
            inner join posts
              inner join posts
              on (posts.Title = posts.OwnerDisplayName )
            on (posts.Tags = posts.ContentLicense)
          inner join comments
          on (comments.UserId = posts.ParentId)
        inner join users
        on (votes.UserId = users.Id )
      inner join posts
      on (posts.AcceptedAnswerId > comments.UserId)
    inner join votes
    on (posts.OwnerUserId is NULL)
where votes.PostId is NULL
limit 11;
select  
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  max(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  sum(
    cast(postLinks.RelatedPostId as int8))
from 
  postLinks
where postLinks.Id is NULL
limit 162;
select  
  posts.OwnerUserId
from 
  badges
          inner join badges
              inner join postHistory
                inner join postHistory
                on (postHistory.CreationDate < postHistory.CreationDate)
              on (badges.Date < badges.Date)
            inner join posts
            on (postHistory.Comment = posts.OwnerDisplayName )
          on (badges.TagBased = badges.TagBased)
        inner join posts
          inner join votes
          on (posts.Title >= posts.ContentLicense)
        on (posts.CreationDate >= postHistory.CreationDate)
      inner join comments
        inner join users
        on (users.AccountId >= users.AccountId)
      on (postHistory.RevisionGUID <= postHistory.RevisionGUID)
    inner join badges
    on (postHistory.Text is NULL)
where posts.OwnerUserId is NULL;
select  
  badges.UserId, 
  postLinks.PostId, 
  votes.VoteTypeId
from 
  votes
        inner join votes
            inner join votes
            on (votes.CreationDate = votes.CreationDate)
          inner join postHistory
            inner join badges
              inner join postLinks
              on (badges.Class = badges.Id)
            on (postLinks.CreationDate > badges.Date)
          on (postHistory.Comment > postHistory.ContentLicense)
        on (postHistory.PostId <= votes.Id)
      inner join posts
          inner join comments
            inner join comments
            on (comments.CreationDate < comments.CreationDate)
          on (comments.CreationDate > comments.CreationDate)
        inner join badges
        on (posts.Id = comments.UserId)
      on (postHistory.UserDisplayName < comments.ContentLicense)
    inner join badges
        inner join users
          inner join votes
          on (users.CreationDate < users.CreationDate)
        on (users.AboutMe < users.Location)
      inner join badges
      on (badges.Name <= users.AboutMe)
    on (users.ProfileImageUrl = users.ProfileImageUrl)
where votes.CreationDate is not NULL;
select  
  badges.Name, 
  postHistory.RevisionGUID, 
  postHistory.UserId, 
  users.WebsiteUrl, 
  postHistory.Comment
from 
  users
      inner join postHistory
        inner join badges
        on (postHistory.CreationDate = badges.Date )
      on (badges.UserId >= users.Id)
    inner join postHistory
    on (postHistory.UserDisplayName is NULL)
where postHistory.PostHistoryTypeId < postHistory.UserId;
select  
  posts.ParentId, 
  posts.PostTypeId, 
  posts.CreationDate, 
  posts.ContentLicense, 
  posts.OwnerUserId, 
  posts.CreationDate, 
  posts.ContentLicense
from 
  posts
where posts.PostTypeId is not NULL
limit 112;
select  
  votes.Id, 
  votes.Id, 
  votes.VoteTypeId, 
  votes.Id, 
  votes.CreationDate
from 
  votes
where votes.VoteTypeId is NULL
limit 64;
select  
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.UserId is not NULL
limit 30;
select  
  comments.Text
from 
  posts
          inner join comments
          on (comments.PostId < comments.UserId)
        inner join postLinks
            inner join postHistory
            on (postLinks.Id > postHistory.PostId)
          inner join postLinks
          on (postHistory.Comment = postHistory.UserDisplayName)
        on (posts.Title = comments.UserDisplayName)
      inner join postLinks
        inner join postLinks
          inner join postHistory
          on (postHistory.CreationDate < postHistory.CreationDate)
        on (postHistory.Text > postHistory.Comment)
      on (postHistory.UserDisplayName = comments.Text)
    inner join users
    on (comments.UserId = users.Id )
where postLinks.CreationDate is NULL
limit 135;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.Class, 
  comments.Text, 
  comments.CreationDate, 
  comments.CreationDate, 
  comments.PostId, 
  badges.Id, 
  comments.PostId
from 
  comments
    inner join badges
    on (badges.Name >= badges.Name)
where badges.Date is not NULL
limit 90;
select  
  users.WebsiteUrl, 
  users.WebsiteUrl, 
  min(
    cast(cast(null as inet) as inet)), 
  users.ProfileImageUrl, 
  postHistory.Id, 
  postHistory.UserDisplayName, 
  min(
    cast(cast(null as money) as money)), 
  posts.AcceptedAnswerId
from 
  votes
          inner join posts
          on (posts.CreationDate < votes.CreationDate)
        inner join users
        on (posts.ContentLicense >= users.WebsiteUrl)
      inner join postHistory
        inner join users
        on (users.CreationDate <= users.CreationDate)
      on (postHistory.UserId < posts.Id)
    inner join badges
        inner join posts
        on (badges.UserId = posts.Id )
      inner join users
          inner join postHistory
            inner join postLinks
            on (postLinks.PostId >= postLinks.PostId)
          on (postLinks.LinkTypeId <= postHistory.UserId)
        inner join posts
        on (posts.Title > postHistory.UserDisplayName)
      on (posts.ContentLicense < posts.ContentLicense)
    on (users.Id is NULL)
where posts.Title = posts.Tags
limit 70;
select  
  postLinks.PostId
from 
  posts
        inner join comments
        on (posts.AcceptedAnswerId > posts.AcceptedAnswerId)
      inner join postLinks
        inner join votes
            inner join badges
              inner join comments
              on (badges.TagBased = badges.TagBased)
            on (votes.UserId = badges.Id )
          inner join posts
          on (comments.PostId > comments.Id)
        on (posts.CreationDate >= votes.CreationDate)
      on (postLinks.PostId = comments.PostId)
    inner join votes
      inner join postLinks
        inner join posts
        on (postLinks.PostId = posts.Id )
      on (posts.OwnerDisplayName >= posts.OwnerDisplayName)
    on (badges.Date is NULL)
where votes.UserId is NULL;
select  
  max(
    cast(cast(null as tid) as tid))
from 
  postHistory
where postHistory.RevisionGUID is NULL;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 83;
select  
  posts.ContentLicense, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.ContentLicense
from 
  posts
where posts.Title is NULL
limit 135;
select  
  posts.AcceptedAnswerId, 
  badges.Name, 
  badges.Class, 
  posts.OwnerDisplayName, 
  users.AboutMe, 
  posts.OwnerDisplayName, 
  badges.Id, 
  postHistory.Comment, 
  users.AccountId, 
  users.Id, 
  posts.PostTypeId, 
  posts.Body
from 
  posts
            inner join badges
              inner join badges
              on (badges.Date <= badges.Date)
            on (posts.ParentId <= badges.Class)
          inner join posts
          on (badges.Name = posts.OwnerDisplayName )
        inner join badges
        on (posts.Tags = posts.OwnerDisplayName)
      inner join posts
      on (badges.TagBased = badges.TagBased)
    inner join users
      inner join postHistory
        inner join votes
        on (postHistory.Text = postHistory.ContentLicense)
      on (votes.Id <= postHistory.PostHistoryTypeId)
    on (badges.Name = users.Location)
where posts.Body is not NULL
limit 144;
select  
  votes.CreationDate, 
  votes.VoteTypeId, 
  posts.Tags, 
  min(
    cast(cast(null as date) as date)), 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.Body, 
  posts.CreationDate, 
  posts.ContentLicense
from 
  posts
        inner join votes
        on (posts.PostTypeId = votes.Id )
      inner join posts
      on (posts.ParentId >= posts.Id)
    inner join votes
    on (votes.VoteTypeId is not NULL)
where votes.UserId <= votes.UserId
limit 14;
select  
  posts.Tags, 
  posts.Title, 
  posts.Id
from 
  posts
where posts.ContentLicense is NULL
limit 152;
select  
  votes.CreationDate, 
  comments.ContentLicense, 
  votes.PostId, 
  comments.UserDisplayName, 
  comments.ContentLicense, 
  votes.PostId, 
  comments.ContentLicense, 
  votes.CreationDate, 
  votes.PostId
from 
  votes
    inner join comments
        inner join comments
        on (comments.CreationDate < comments.CreationDate)
      inner join votes
      on (comments.CreationDate < votes.CreationDate)
    on (comments.Id is NULL)
where votes.VoteTypeId is NULL
limit 73;
select  
  users.CreationDate, 
  badges.TagBased, 
  posts.Body, 
  users.AboutMe, 
  postLinks.Id, 
  badges.Class
from 
  badges
                inner join users
                on (badges.TagBased >= badges.TagBased)
              inner join posts
              on (users.AboutMe < users.WebsiteUrl)
            inner join badges
            on (badges.TagBased > badges.TagBased)
          inner join postHistory
            inner join users
            on (users.ProfileImageUrl = users.AccountId)
          on (posts.Tags <= posts.Tags)
        inner join posts
        on (postHistory.Comment < posts.Tags)
      inner join postLinks
      on (badges.Class = posts.AcceptedAnswerId)
    inner join users
    on (posts.ContentLicense >= posts.Tags)
where users.ProfileImageUrl > users.AccountId
limit 91;
select  
  badges.Date, 
  badges.Date, 
  badges.UserId, 
  badges.Date, 
  badges.Date, 
  badges.TagBased, 
  badges.Class
from 
  badges
where badges.Id is not NULL
limit 107;
select  
  postLinks.PostId, 
  comments.UserId, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.Id, 
  postLinks.CreationDate
from 
  comments
      inner join users
        inner join postLinks
          inner join postLinks
              inner join votes
              on (postLinks.LinkTypeId > postLinks.RelatedPostId)
            inner join posts
            on (posts.Title > posts.Title)
          on (posts.Title = posts.OwnerDisplayName)
        on (posts.OwnerUserId = posts.OwnerUserId)
      on (votes.VoteTypeId = postLinks.LinkTypeId)
    inner join badges
    on (postLinks.PostId is NULL)
where postLinks.RelatedPostId < badges.Class
limit 47;
select  
  comments.UserId, 
  votes.Id, 
  postLinks.LinkTypeId, 
  posts.Title
from 
  postLinks
        inner join votes
          inner join posts
            inner join comments
            on (posts.OwnerUserId < comments.UserId)
          on (posts.ParentId <= votes.PostId)
        on (votes.Id >= comments.PostId)
      inner join postHistory
        inner join users
        on (users.AccountId > users.AccountId)
      on (users.Id <= users.Id)
    inner join postLinks
    on (votes.VoteTypeId is not NULL)
where comments.ContentLicense is NULL;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  postLinks.CreationDate, 
  postLinks.PostId, 
  min(
    cast(cast(null as "time") as "time")), 
  postLinks.PostId, 
  postLinks.PostId, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as float8) as float8)), 
  postLinks.PostId, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 139;
select  
  sum(
    cast(postLinks.Id as int8)), 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.Id, 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.PostId
from 
  postLinks
where postLinks.CreationDate < postLinks.CreationDate;
select  
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.PostId, 
  postLinks.Id
from 
  postLinks
where postLinks.Id is not NULL
limit 124;
select  
  badges.Id, 
  badges.Date
from 
  badges
    inner join users
    on (badges.Date is NULL)
where badges.Class is not NULL;
select  
  posts.Title, 
  posts.Body, 
  max(
    cast(32 as int4)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.OwnerDisplayName, 
  posts.Tags, 
  min(
    cast(posts.CreationDate as "timestamp")), 
  posts.Body, 
  posts.Title, 
  posts.AcceptedAnswerId, 
  min(
    cast(posts.Tags as text)), 
  posts.OwnerDisplayName, 
  posts.Title, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.Tags, 
  posts.Tags
from 
  posts
where posts.PostTypeId is not NULL
limit 86;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.ContentLicense, 
  comments.ContentLicense, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  comments.PostId
from 
  comments
      inner join comments
      on (comments.Text >= comments.Text)
    inner join badges
      inner join postLinks
      on (postLinks.CreationDate >= postLinks.CreationDate)
    on (badges.Date >= badges.Date)
where postLinks.RelatedPostId is NULL
limit 156;
select  
  postHistory.ContentLicense, 
  postHistory.Comment, 
  postHistory.Comment, 
  postHistory.UserId, 
  sum(
    cast(cast(null as money) as money)), 
  postHistory.PostId
from 
  postHistory
where postHistory.Text is NULL
limit 85;
select  
  badges.UserId, 
  posts.ParentId, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  badges.Date
from 
  votes
    inner join postLinks
      inner join badges
            inner join badges
              inner join badges
              on (badges.Date <= badges.Date)
            on (badges.TagBased < badges.TagBased)
          inner join badges
          on (badges.UserId = badges.Id )
        inner join badges
            inner join posts
            on (badges.TagBased >= badges.TagBased)
          inner join postHistory
          on (posts.Body = postHistory.UserDisplayName )
        on (posts.Body > posts.OwnerDisplayName)
      on (postLinks.LinkTypeId = badges.Id )
    on (badges.Class is NULL)
where postHistory.PostHistoryTypeId is not NULL;
select  
  postHistory.RevisionGUID, 
  badges.TagBased, 
  votes.VoteTypeId
from 
  votes
    inner join badges
      inner join postHistory
      on (postHistory.CreationDate = postHistory.CreationDate)
    on (votes.UserId = badges.Id )
where postHistory.PostHistoryTypeId is NULL
limit 72;
select  
  min(
    cast(cast(null as tid) as tid)), 
  users.ProfileImageUrl, 
  users.WebsiteUrl
from 
  badges
    inner join postLinks
      inner join badges
            inner join users
            on (users.AboutMe <= badges.Name)
          inner join users
          on (users.CreationDate > users.CreationDate)
        inner join users
          inner join posts
          on (posts.CreationDate >= users.CreationDate)
        on (badges.Class < posts.OwnerUserId)
      on (posts.Body <= posts.ContentLicense)
    on (posts.Id is not NULL)
where users.ProfileImageUrl is not NULL;
select  
  comments.UserId
from 
  comments
    inner join postLinks
        inner join postHistory
        on (postHistory.PostHistoryTypeId >= postHistory.Id)
      inner join users
        inner join posts
        on (users.Id >= posts.AcceptedAnswerId)
      on (postHistory.UserDisplayName = users.DisplayName )
    on (postHistory.RevisionGUID is not NULL)
where posts.ParentId is not NULL;
select  
  comments.PostId, 
  votes.Id, 
  votes.CreationDate, 
  comments.UserDisplayName, 
  votes.PostId, 
  votes.VoteTypeId, 
  votes.VoteTypeId, 
  comments.ContentLicense
from 
  votes
    inner join votes
      inner join comments
      on (votes.CreationDate = comments.CreationDate)
    on (comments.Text > comments.Text)
where comments.PostId >= comments.UserId;
select  
  comments.PostId, 
  comments.UserDisplayName, 
  comments.Id, 
  comments.UserId, 
  comments.Id, 
  comments.ContentLicense, 
  comments.UserId, 
  comments.ContentLicense, 
  comments.UserDisplayName
from 
  comments
where comments.PostId is not NULL;
select  
  postHistory.PostHistoryTypeId, 
  comments.Text, 
  comments.UserDisplayName, 
  comments.Text, 
  comments.Text, 
  comments.ContentLicense, 
  comments.Text, 
  comments.CreationDate, 
  postHistory.UserDisplayName, 
  postHistory.RevisionGUID, 
  comments.CreationDate, 
  postHistory.PostId, 
  postHistory.Id, 
  postHistory.UserId, 
  postHistory.Id, 
  comments.Id, 
  max(
    cast(cast(null as date) as date)), 
  postHistory.Text, 
  comments.ContentLicense, 
  postHistory.Text, 
  postHistory.Id
from 
  comments
      inner join postHistory
      on (comments.Id > postHistory.PostHistoryTypeId)
    inner join postHistory
    on (comments.UserDisplayName >= postHistory.Text)
where comments.PostId is NULL
limit 115;
select  
  postLinks.Id, 
  min(
    cast(cast(null as date) as date)), 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postHistory.UserId, 
  users.Location, 
  postLinks.Id, 
  users.AccountId, 
  postHistory.CreationDate, 
  postLinks.CreationDate, 
  postHistory.ContentLicense, 
  users.WebsiteUrl, 
  postLinks.CreationDate, 
  users.ProfileImageUrl, 
  avg(
    cast(cast(null as float4) as float4))
from 
  users
    inner join users
      inner join postLinks
        inner join postHistory
            inner join postLinks
            on (postHistory.Text < postHistory.Text)
          inner join postLinks
          on (postHistory.Comment > postHistory.RevisionGUID)
        on (postHistory.CreationDate <= postLinks.CreationDate)
      on (users.Id = postLinks.Id )
    on (postHistory.Comment is not NULL)
where users.CreationDate is not NULL
limit 120;
select  
  users.CreationDate, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl, 
  users.Id, 
  users.Location, 
  users.DisplayName, 
  users.DisplayName, 
  max(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as timestamptz) as timestamptz)), 
  users.Location, 
  users.Id, 
  users.WebsiteUrl, 
  users.Location, 
  users.Location, 
  users.ProfileImageUrl, 
  users.WebsiteUrl, 
  users.AboutMe, 
  users.WebsiteUrl
from 
  users
where users.WebsiteUrl is NULL;
select distinct 
  max(
    cast(cast(null as date) as date)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  posts.PostTypeId, 
  posts.ParentId, 
  posts.AcceptedAnswerId, 
  posts.Title, 
  posts.ParentId, 
  posts.OwnerUserId, 
  posts.Title, 
  sum(
    cast(cast(null as float4) as float4)), 
  posts.ParentId
from 
  posts
where posts.Title is not NULL
limit 36;
select  
  posts.Id, 
  postHistory.PostHistoryTypeId, 
  posts.Body, 
  comments.UserDisplayName, 
  posts.OwnerUserId, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.Id
from 
  postHistory
      inner join comments
      on (postHistory.PostId < postHistory.UserId)
    inner join votes
      inner join posts
      on (votes.CreationDate = votes.CreationDate)
    on (comments.Text is NULL)
where posts.Body is not NULL
limit 116;
select  
  min(
    cast(cast(null as inet) as inet)), 
  posts.PostTypeId, 
  posts.CreationDate, 
  badges.Date, 
  votes.UserId, 
  users.Location, 
  postHistory.UserDisplayName, 
  votes.VoteTypeId, 
  posts.Tags, 
  votes.CreationDate, 
  users.Id, 
  postLinks.LinkTypeId
from 
  postLinks
              inner join badges
              on (badges.UserId < postLinks.PostId)
            inner join posts
              inner join postHistory
              on (posts.Body < posts.Title)
            on (postHistory.ContentLicense < postHistory.ContentLicense)
          inner join votes
            inner join posts
            on (votes.PostId = posts.Id )
          on (badges.TagBased > badges.TagBased)
        inner join votes
        on (posts.OwnerDisplayName >= posts.Tags)
      inner join users
      on (badges.TagBased <= badges.TagBased)
    inner join badges
    on (postHistory.UserDisplayName >= posts.Title)
where badges.TagBased is NULL
limit 87;
select  
  votes.UserId, 
  posts.Tags, 
  users.AboutMe, 
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  votes
          inner join users
            inner join votes
                inner join votes
                on (votes.CreationDate = votes.CreationDate )
              inner join postLinks
              on (postLinks.CreationDate < votes.CreationDate)
            on (users.DisplayName > users.Location)
          on (votes.UserId = votes.Id )
        inner join comments
        on (votes.Id > comments.Id)
      inner join posts
        inner join votes
            inner join badges
            on (badges.TagBased >= badges.TagBased)
          inner join badges
          on (votes.VoteTypeId < votes.Id)
        on (badges.TagBased > badges.TagBased)
      on (badges.TagBased >= badges.TagBased)
    inner join posts
    on (posts.Body is not NULL)
where comments.UserId is not NULL;
select  
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  postHistory
    inner join postHistory
      inner join posts
      on (postHistory.UserId >= postHistory.UserId)
    on (posts.ContentLicense is not NULL)
where postHistory.ContentLicense is not NULL
limit 92;
select  
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  users.AboutMe, 
  postLinks.Id, 
  badges.Name, 
  comments.Text
from 
  postLinks
    inner join users
        inner join badges
        on (badges.UserId >= users.Id)
      inner join comments
      on (badges.TagBased >= badges.TagBased)
    on (postLinks.Id = users.Id )
where comments.UserDisplayName is NULL
limit 20;
select  
  min(
    cast(cast(null as float8) as float8)), 
  votes.Id
from 
  votes
where votes.UserId is not NULL;
select  
  sum(
    cast(cast(null as money) as money)), 
  comments.ContentLicense, 
  postLinks.RelatedPostId, 
  max(
    cast(users.ProfileImageUrl as float8)), 
  postLinks.CreationDate, 
  users.CreationDate, 
  postLinks.Id, 
  comments.PostId, 
  comments.CreationDate, 
  badges.TagBased, 
  users.AccountId
from 
  badges
        inner join postLinks
            inner join comments
            on (comments.Text < comments.UserDisplayName)
          inner join comments
          on (postLinks.CreationDate > comments.CreationDate)
        on (comments.CreationDate <= comments.CreationDate)
      inner join users
        inner join postLinks
        on (users.DisplayName > users.WebsiteUrl)
      on (badges.TagBased > badges.TagBased)
    inner join votes
    on (badges.Name is NULL)
where comments.UserId is NULL
limit 163;
select  
  max(
    cast(cast(null as money) as money)), 
  comments.UserId, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  comments.CreationDate, 
  comments.PostId, 
  comments.CreationDate, 
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.UserId, 
  comments.UserId, 
  comments.ContentLicense, 
  comments.Id
from 
  comments
where comments.ContentLicense is not NULL;
select  
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postHistory.Text, 
  badges.Id, 
  postHistory.Comment, 
  badges.Date, 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postHistory.UserId, 
  badges.Name, 
  postLinks.PostId, 
  postHistory.PostId, 
  postLinks.RelatedPostId, 
  postHistory.UserId, 
  postLinks.Id, 
  badges.TagBased, 
  badges.TagBased, 
  min(
    cast(cast(null as money) as money)), 
  badges.Name, 
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  badges.Id
from 
  postHistory
      inner join postHistory
        inner join postLinks
          inner join postLinks
          on (postLinks.Id = postLinks.RelatedPostId)
        on (postHistory.UserDisplayName >= postHistory.ContentLicense)
      on (postHistory.ContentLicense >= postHistory.UserDisplayName)
    inner join badges
      inner join postHistory
      on (badges.TagBased <= badges.TagBased)
    on (postHistory.Comment = postHistory.UserDisplayName )
where postLinks.CreationDate is not NULL
limit 138;
select  
  min(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as inet) as inet)), 
  comments.CreationDate, 
  comments.Id, 
  comments.PostId
from 
  users
      inner join comments
      on (users.WebsiteUrl > comments.UserDisplayName)
    inner join comments
    on (users.WebsiteUrl = comments.ContentLicense )
where comments.Id >= comments.Id
limit 73;
select  
  posts.OwnerDisplayName, 
  comments.PostId, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.Title
from 
  posts
          inner join badges
            inner join postHistory
            on (postHistory.CreationDate >= postHistory.CreationDate)
          on (postHistory.Text >= posts.ContentLicense)
        inner join comments
        on (badges.UserId > postHistory.PostId)
      inner join badges
        inner join badges
          inner join votes
            inner join votes
            on (votes.Id = votes.PostId)
          on (badges.Class = votes.Id )
        on (badges.Date = badges.Date)
      on (badges.Id = badges.Id )
    inner join badges
        inner join comments
          inner join badges
          on (badges.TagBased >= badges.TagBased)
        on (badges.Id < comments.PostId)
      inner join users
          inner join badges
          on (users.Id > badges.Id)
        inner join comments
          inner join posts
          on (posts.OwnerUserId >= comments.PostId)
        on (users.WebsiteUrl = posts.Tags)
      on (badges.Date < comments.CreationDate)
    on (comments.PostId = badges.Id )
where votes.PostId is not NULL
limit 126;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.Id, 
  postLinks.Id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  postLinks.RelatedPostId, 
  postLinks.Id, 
  postLinks.Id, 
  sum(
    cast(94 as int4)), 
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.RelatedPostId is NULL
limit 176;
select  
  users.AboutMe, 
  users.DisplayName, 
  users.WebsiteUrl, 
  min(
    cast(cast(null as tid) as tid)), 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl
from 
  users
where users.Id is not NULL
limit 129;
select  
  postHistory.Comment, 
  posts.PostTypeId
from 
  posts
        inner join comments
        on (posts.CreationDate = comments.CreationDate)
      inner join postHistory
      on (postHistory.CreationDate > posts.CreationDate)
    inner join postHistory
    on (postHistory.RevisionGUID is NULL)
where comments.UserId is not NULL
limit 58;
select  
  comments.Id, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(comments.PostId as int8)), 
  comments.Text, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.PostId, 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.PostId, 
  max(
    cast(comments.CreationDate as "timestamp")), 
  comments.ContentLicense, 
  min(
    cast(88 as int4)), 
  comments.PostId, 
  comments.UserId, 
  comments.Text
from 
  comments
where comments.UserId is not NULL;
select  
  users.CreationDate, 
  users.Location
from 
  users
where users.AccountId is NULL
limit 110;
select  
  avg(
    cast(comments.PostId as int8)), 
  badges.UserId, 
  max(
    cast(cast(null as date) as date)), 
  comments.Text
from 
  postHistory
        inner join comments
        on (comments.UserId >= postHistory.Id)
      inner join badges
      on (comments.Text = comments.Text)
    inner join posts
      inner join users
      on (posts.ParentId < posts.AcceptedAnswerId)
    on (users.AccountId > users.AccountId)
where badges.TagBased <= badges.TagBased
limit 116;
select  
  postHistory.UserId, 
  postHistory.PostHistoryTypeId, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  postHistory.Text, 
  postHistory.RevisionGUID, 
  postHistory.Text
from 
  postHistory
where postHistory.CreationDate >= postHistory.CreationDate
limit 123;
select  
  comments.CreationDate, 
  comments.CreationDate
from 
  comments
where comments.Id is NULL;
select  
  users.WebsiteUrl, 
  min(
    cast(cast(null as "time") as "time"))
from 
  users
where users.ProfileImageUrl is not NULL
limit 110;
select  
  posts.PostTypeId, 
  posts.Id, 
  comments.Text
from 
  postLinks
    inner join postLinks
              inner join posts
              on (postLinks.CreationDate = posts.CreationDate )
            inner join postHistory
              inner join badges
              on (postHistory.UserId = badges.Id )
            on (badges.TagBased > badges.TagBased)
          inner join comments
          on (comments.CreationDate >= comments.CreationDate)
        inner join votes
          inner join posts
                inner join comments
                on (posts.AcceptedAnswerId = comments.Id )
              inner join users
              on (users.AccountId < users.ProfileImageUrl)
            inner join postLinks
            on (users.AccountId >= users.AccountId)
          on (postLinks.Id > posts.Id)
        on (users.AccountId <= users.AccountId)
      inner join posts
      on (votes.UserId = posts.Id )
    on (posts.Title is not NULL)
where posts.OwnerUserId is NULL;
select  
  comments.Id, 
  min(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  postHistory
    inner join comments
    on (comments.PostId is not NULL)
where comments.Text is not NULL
limit 151;
select  
  comments.PostId, 
  comments.UserDisplayName
from 
  comments
where comments.CreationDate <= comments.CreationDate
limit 80;
select  
  comments.CreationDate, 
  users.Id, 
  min(
    cast(cast(null as date) as date)), 
  users.DisplayName, 
  comments.UserDisplayName
from 
  postHistory
    inner join comments
      inner join users
      on (users.CreationDate > comments.CreationDate)
    on (postHistory.UserId = users.Id )
where postHistory.UserId <= comments.Id
limit 91;
select  
  postLinks.PostId, 
  users.Id
from 
  posts
          inner join users
          on (users.Id = posts.PostTypeId)
        inner join postLinks
          inner join badges
          on (badges.TagBased = badges.TagBased)
        on (badges.TagBased <= badges.TagBased)
      inner join posts
        inner join postHistory
              inner join users
              on (users.ProfileImageUrl > users.ProfileImageUrl)
            inner join comments
              inner join badges
              on (comments.ContentLicense = comments.Text)
            on (users.AboutMe = comments.ContentLicense )
          inner join postHistory
          on (users.ProfileImageUrl <= users.AccountId)
        on (badges.TagBased = badges.TagBased)
      on (badges.TagBased <= badges.TagBased)
    inner join postLinks
      inner join users
        inner join postHistory
        on (users.CreationDate <= postHistory.CreationDate)
      on (postLinks.Id < postLinks.Id)
    on (users.DisplayName is NULL)
where users.AccountId > users.AccountId
limit 152;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  votes.VoteTypeId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId
from 
  votes
where votes.CreationDate is not NULL
limit 99;
select  
  votes.CreationDate, 
  votes.Id
from 
  votes
where votes.VoteTypeId is NULL
limit 111;
select  
  comments.Text, 
  comments.CreationDate, 
  comments.UserDisplayName, 
  comments.Id, 
  comments.UserDisplayName, 
  comments.Text, 
  comments.UserId, 
  comments.UserDisplayName, 
  comments.UserDisplayName, 
  min(
    cast(20 as int4)), 
  comments.ContentLicense
from 
  comments
where comments.CreationDate is NULL;
select  
  comments.ContentLicense, 
  comments.PostId, 
  comments.Text, 
  sum(
    cast(66 as int4)), 
  comments.ContentLicense, 
  max(
    cast(cast(null as "time") as "time")), 
  comments.CreationDate
from 
  comments
where comments.UserId is not NULL;
select  
  badges.Id, 
  badges.TagBased, 
  min(
    cast(cast(null as date) as date)), 
  badges.TagBased, 
  badges.TagBased, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  badges.Class
from 
  badges
where badges.Name is NULL;
select  
  max(
    cast(cast(null as timestamptz) as timestamptz)), 
  postHistory.CreationDate, 
  postHistory.ContentLicense, 
  max(
    cast(postHistory.Comment as text)), 
  postHistory.Comment
from 
  postHistory
where postHistory.CreationDate is not NULL
limit 136;
select  
  comments.UserId, 
  avg(
    cast(cast(null as int2) as int2)), 
  users.DisplayName, 
  badges.Name, 
  posts.AcceptedAnswerId, 
  posts.Title, 
  comments.PostId, 
  min(
    cast(cast(null as date) as date)), 
  sum(
    cast(70 as int4)), 
  votes.CreationDate, 
  badges.Class, 
  postHistory.Id, 
  badges.Name, 
  users.CreationDate, 
  postLinks.RelatedPostId, 
  badges.UserId, 
  badges.Name, 
  posts.Id, 
  users.DisplayName, 
  users.WebsiteUrl, 
  min(
    cast(cast(null as "time") as "time")), 
  comments.UserDisplayName
from 
  comments
        inner join badges
        on (comments.Text = comments.ContentLicense)
      inner join postHistory
        inner join badges
            inner join postLinks
            on (postLinks.CreationDate <= badges.Date)
          inner join badges
          on (postLinks.CreationDate > badges.Date)
        on (postHistory.UserId = badges.UserId)
      on (badges.TagBased < badges.TagBased)
    inner join comments
      inner join votes
        inner join posts
            inner join postHistory
            on (postHistory.CreationDate >= posts.CreationDate)
          inner join users
          on (users.ProfileImageUrl = users.ProfileImageUrl)
        on (posts.Tags >= users.AboutMe)
      on (users.DisplayName < users.DisplayName)
    on (postHistory.Text is not NULL)
where badges.Class is NULL
limit 127;
select  
  posts.ContentLicense, 
  posts.ContentLicense, 
  posts.Id, 
  posts.OwnerDisplayName, 
  posts.Body, 
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posts.OwnerUserId
from 
  posts
where posts.Tags is not NULL
limit 60;
select  
  max(
    cast(cast(null as money) as money)), 
  min(
    cast(badges.Name as text))
from 
  badges
where badges.TagBased is not NULL;
select  
  max(
    cast(cast(null as "interval") as "interval"))
from 
  users
where users.CreationDate > users.CreationDate
limit 99;
select  
  badges.Id, 
  badges.Name
from 
  badges
where badges.Class is not NULL
limit 153;
select  
  postHistory.UserId, 
  min(
    cast(cast(null as date) as date))
from 
  postHistory
where postHistory.RevisionGUID < postHistory.UserDisplayName
limit 119;
select  
  posts.ContentLicense
from 
  comments
            inner join postLinks
              inner join comments
              on (postLinks.CreationDate = comments.CreationDate)
            on (comments.Id = comments.PostId)
          inner join users
            inner join postHistory
            on (users.CreationDate > users.CreationDate)
          on (postHistory.UserDisplayName = comments.UserDisplayName)
        inner join comments
        on (users.ProfileImageUrl < users.ProfileImageUrl)
      inner join votes
      on (comments.UserId = votes.Id )
    inner join badges
          inner join users
          on (users.CreationDate >= users.CreationDate)
        inner join comments
        on (users.Location > users.Location)
      inner join posts
      on (users.ProfileImageUrl < users.ProfileImageUrl)
    on (postHistory.Comment is NULL)
where postHistory.UserDisplayName is not NULL
limit 141;
select  
  postHistory.Comment, 
  comments.ContentLicense, 
  postHistory.Text, 
  posts.CreationDate, 
  votes.UserId, 
  postHistory.Id, 
  postLinks.Id, 
  postHistory.PostId
from 
  users
        inner join badges
        on (users.AboutMe < users.AboutMe)
      inner join posts
        inner join comments
        on (comments.CreationDate < posts.CreationDate)
      on (comments.Id > badges.Id)
    inner join postHistory
        inner join posts
                inner join votes
                on (posts.Body = posts.OwnerDisplayName)
              inner join postHistory
              on (votes.Id = votes.PostId)
            inner join postLinks
            on (posts.CreationDate >= posts.CreationDate)
          inner join postLinks
            inner join votes
              inner join postLinks
                inner join comments
                  inner join posts
                  on (posts.PostTypeId >= posts.PostTypeId)
                on (postLinks.PostId = posts.Id )
              on (posts.Tags > posts.OwnerDisplayName)
            on (postLinks.CreationDate >= posts.CreationDate)
          on (postHistory.CreationDate = postHistory.CreationDate)
        on (postHistory.UserDisplayName = posts.OwnerDisplayName )
      inner join postLinks
      on (postLinks.CreationDate >= postLinks.CreationDate)
    on (users.Id = votes.Id )
where comments.PostId is not NULL;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postHistory.Text, 
  badges.Date, 
  badges.Name, 
  badges.UserId, 
  badges.Id, 
  min(
    cast(badges.Class as int8)), 
  users.Location, 
  votes.Id, 
  votes.PostId, 
  postHistory.CreationDate, 
  posts.CreationDate, 
  votes.Id, 
  max(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(postHistory.UserDisplayName as text))
from 
  comments
        inner join postHistory
        on (postHistory.UserDisplayName < comments.ContentLicense)
      inner join badges
          inner join votes
          on (badges.Class = votes.Id )
        inner join badges
        on (votes.CreationDate = badges.Date )
      on (badges.Date <= votes.CreationDate)
    inner join postLinks
        inner join posts
        on (posts.Id < postLinks.RelatedPostId)
      inner join users
          inner join users
          on (users.CreationDate > users.CreationDate)
        inner join votes
        on (users.WebsiteUrl > users.WebsiteUrl)
      on (users.WebsiteUrl < users.DisplayName)
    on (users.AccountId <= users.ProfileImageUrl)
where postHistory.UserId <= badges.Class;
select  
  min(
    cast(cast(null as int2) as int2)), 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  min(
    cast(cast(null as oid) as oid)), 
  postLinks.LinkTypeId, 
  sum(
    cast(postLinks.Id as int8)), 
  sum(
    cast(cast(null as int2) as int2)), 
  max(
    cast(postLinks.LinkTypeId as int8)), 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.LinkTypeId, 
  postLinks.Id, 
  postLinks.Id
from 
  postLinks
where postLinks.LinkTypeId is NULL;
select  
  postHistory.RevisionGUID, 
  postHistory.PostHistoryTypeId, 
  max(
    cast(cast(null as float8) as float8)), 
  postHistory.PostId
from 
  postHistory
where postHistory.CreationDate is not NULL;
select  
  badges.UserId, 
  min(
    cast(cast(null as timetz) as timetz)), 
  users.Location, 
  badges.Class, 
  badges.Name, 
  badges.TagBased, 
  badges.Class, 
  users.AccountId, 
  min(
    cast(cast(null as date) as date)), 
  badges.UserId, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  badges.Id, 
  min(
    cast(users.AccountId as float8)), 
  badges.Date, 
  badges.Class, 
  badges.Class, 
  avg(
    cast(31 as int4)), 
  badges.Class, 
  users.WebsiteUrl, 
  badges.Id, 
  badges.TagBased, 
  sum(
    cast(cast(null as int2) as int2))
from 
  users
    inner join badges
    on (badges.Class is not NULL)
where users.ProfileImageUrl is not NULL;
select  
  users.CreationDate, 
  users.DisplayName, 
  users.DisplayName, 
  users.CreationDate, 
  min(
    cast(users.CreationDate as "timestamp")), 
  users.Id, 
  users.DisplayName, 
  users.WebsiteUrl, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  users.WebsiteUrl, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.CreationDate, 
  users.WebsiteUrl, 
  users.AboutMe, 
  users.WebsiteUrl
from 
  users
where users.Id is NULL
limit 56;
select  
  badges.TagBased, 
  badges.Date, 
  badges.UserId, 
  badges.TagBased, 
  badges.Date, 
  badges.Date, 
  badges.TagBased, 
  badges.UserId, 
  badges.Id, 
  badges.UserId, 
  sum(
    cast(cast(null as money) as money)), 
  badges.UserId
from 
  badges
where badges.TagBased is not NULL
limit 44;
select  
  users.CreationDate
from 
  users
where users.DisplayName is not NULL
limit 132;
select  
  votes.VoteTypeId, 
  votes.UserId, 
  postLinks.LinkTypeId, 
  votes.Id
from 
  badges
      inner join votes
      on (votes.CreationDate = votes.CreationDate)
    inner join postLinks
    on (postLinks.Id = badges.Class)
where postLinks.LinkTypeId is NULL
limit 102;
select  
  postLinks.CreationDate, 
  postLinks.LinkTypeId, 
  min(
    cast(postLinks.LinkTypeId as int8)), 
  max(
    cast(cast(null as date) as date)), 
  min(
    cast(postLinks.Id as int8)), 
  postLinks.CreationDate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postLinks.CreationDate, 
  postLinks.CreationDate, 
  avg(
    cast(cast(null as float4) as float4)), 
  postLinks.LinkTypeId, 
  postLinks.CreationDate, 
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(71 as int4)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postLinks.CreationDate, 
  min(
    cast(postLinks.LinkTypeId as int8)), 
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  postLinks
where postLinks.Id is not NULL
limit 179;
select  
  badges.UserId, 
  avg(
    cast(users.ProfileImageUrl as float8)), 
  comments.PostId, 
  postLinks.PostId
from 
  comments
        inner join posts
        on (comments.UserId <= posts.ParentId)
      inner join badges
        inner join postLinks
          inner join comments
            inner join postHistory
            on (comments.PostId = postHistory.Id )
          on (postHistory.CreationDate <= postHistory.CreationDate)
        on (badges.UserId = postLinks.Id )
      on (badges.Date >= postHistory.CreationDate)
    inner join users
      inner join comments
        inner join postHistory
        on (comments.CreationDate >= postHistory.CreationDate)
      on (users.ProfileImageUrl = users.ProfileImageUrl)
    on (badges.TagBased < badges.TagBased)
where users.AccountId > users.ProfileImageUrl
limit 150;
select  
  postLinks.RelatedPostId
from 
  postHistory
    inner join postLinks
    on (postLinks.CreationDate <= postHistory.CreationDate)
where postLinks.LinkTypeId is not NULL
limit 37;
select  
  badges.Class, 
  badges.Class, 
  badges.Date, 
  badges.Date, 
  badges.TagBased
from 
  badges
where badges.Class is NULL
limit 105;
select  
  comments.PostId, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.CreationDate, 
  comments.PostId
from 
  comments
where comments.Id is NULL
limit 61;
select distinct 
  postHistory.Id, 
  postHistory.Id, 
  votes.Id, 
  users.Location, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as timetz) as timetz)), 
  postHistory.CreationDate
from 
  postHistory
              inner join badges
              on (postHistory.CreationDate < badges.Date)
            inner join postHistory
              inner join users
              on (postHistory.PostId >= postHistory.UserId)
            on (badges.TagBased < badges.TagBased)
          inner join badges
          on (users.AccountId >= users.AccountId)
        inner join users
        on (users.Id > postHistory.Id)
      inner join postHistory
      on (postHistory.CreationDate = postHistory.CreationDate )
    inner join votes
      inner join postLinks
      on (votes.CreationDate = postLinks.CreationDate )
    on (postHistory.UserId > badges.Class)
where users.ProfileImageUrl < users.AccountId;
select  
  posts.ParentId, 
  posts.Title, 
  posts.ParentId, 
  posts.OwnerUserId, 
  max(
    cast(cast(null as "time") as "time")), 
  posts.Id, 
  posts.CreationDate, 
  posts.Id, 
  posts.OwnerUserId, 
  posts.OwnerUserId, 
  posts.OwnerDisplayName, 
  posts.PostTypeId, 
  posts.ContentLicense, 
  posts.PostTypeId, 
  posts.Title, 
  posts.AcceptedAnswerId, 
  posts.CreationDate, 
  posts.Title, 
  posts.Id, 
  posts.Body, 
  posts.Body, 
  posts.OwnerUserId, 
  posts.PostTypeId
from 
  posts
where posts.Body is not NULL;
select  
  avg(
    cast(postHistory.PostId as int8))
from 
  postHistory
        inner join comments
          inner join postLinks
          on (comments.CreationDate = postLinks.CreationDate)
        on (postHistory.CreationDate > postLinks.CreationDate)
      inner join users
      on (postLinks.Id = users.Id )
    inner join postLinks
      inner join postHistory
      on (postLinks.CreationDate = postHistory.CreationDate)
    on (postLinks.CreationDate is NULL)
where comments.Id = postLinks.LinkTypeId;
select  
  votes.UserId
from 
  postHistory
        inner join posts
            inner join posts
            on (posts.CreationDate >= posts.CreationDate)
          inner join votes
            inner join users
            on (votes.Id = users.Id )
          on (votes.CreationDate < users.CreationDate)
        on (postHistory.UserId = posts.Id )
      inner join postHistory
      on (posts.PostTypeId > postHistory.Id)
    inner join users
        inner join postHistory
          inner join postHistory
          on (postHistory.Text > postHistory.ContentLicense)
        on (users.DisplayName >= postHistory.UserDisplayName)
      inner join postLinks
      on (postHistory.UserId <= postHistory.PostId)
    on (postHistory.ContentLicense is NULL)
where posts.PostTypeId is not NULL;
select  
  postLinks.PostId
from 
  comments
    inner join postLinks
    on (comments.PostId = postLinks.Id )
where comments.ContentLicense <= comments.ContentLicense;
select  
  posts.Id, 
  posts.Tags, 
  max(
    cast(posts.ParentId as int8))
from 
  posts
where posts.ParentId is not NULL
limit 112;
select  
  comments.UserId, 
  postLinks.PostId
from 
  postLinks
        inner join users
        on (postLinks.Id >= postLinks.LinkTypeId)
      inner join comments
      on (users.ProfileImageUrl >= users.AccountId)
    inner join postLinks
      inner join postHistory
        inner join postLinks
          inner join users
          on (postLinks.LinkTypeId <= users.Id)
        on (postHistory.Comment = users.DisplayName )
      on (users.CreationDate > postHistory.CreationDate)
    on (users.CreationDate is NULL)
where users.CreationDate = postLinks.CreationDate;
select  
  postLinks.RelatedPostId, 
  postLinks.LinkTypeId, 
  users.Id
from 
  postLinks
      inner join users
        inner join postLinks
        on (users.CreationDate = users.CreationDate)
      on (postLinks.PostId = postLinks.PostId)
    inner join posts
    on (postLinks.LinkTypeId is not NULL)
where postLinks.RelatedPostId is not NULL
limit 75;
select  
  users.WebsiteUrl, 
  users.ProfileImageUrl, 
  users.ProfileImageUrl, 
  users.CreationDate, 
  comments.Id
from 
  postHistory
          inner join users
          on (postHistory.ContentLicense = users.DisplayName )
        inner join postLinks
          inner join users
          on (users.AccountId > users.AccountId)
        on (users.Id = postLinks.Id )
      inner join posts
          inner join votes
          on (votes.CreationDate = posts.CreationDate)
        inner join votes
          inner join comments
            inner join posts
            on (comments.UserDisplayName = posts.OwnerDisplayName )
          on (votes.UserId < comments.PostId)
        on (votes.UserId < posts.AcceptedAnswerId)
      on (users.CreationDate <= votes.CreationDate)
    inner join votes
    on (users.CreationDate is not NULL)
where votes.CreationDate is NULL
limit 107;
select  
  comments.UserId
from 
  comments
where comments.CreationDate is NULL
limit 85;
select  
  postHistory.UserId, 
  votes.UserId, 
  max(
    cast(cast(null as float4) as float4))
from 
  badges
    inner join badges
      inner join votes
              inner join postHistory
              on (votes.Id < postHistory.PostId)
            inner join comments
            on (postHistory.Comment >= postHistory.Comment)
          inner join comments
            inner join postHistory
              inner join votes
              on (postHistory.CreationDate = votes.CreationDate )
            on (comments.CreationDate < comments.CreationDate)
          on (comments.CreationDate >= votes.CreationDate)
        inner join badges
        on (postHistory.ContentLicense = badges.Name )
      on (badges.UserId = votes.Id )
    on (comments.Id is NULL)
where comments.ContentLicense >= comments.Text
limit 23;
select  
  users.DisplayName, 
  users.WebsiteUrl, 
  postLinks.CreationDate
from 
  posts
    inner join postLinks
            inner join votes
              inner join users
              on (users.CreationDate = votes.CreationDate)
            on (users.CreationDate >= postLinks.CreationDate)
          inner join comments
          on (users.AccountId = users.AccountId)
        inner join votes
            inner join users
            on (users.ProfileImageUrl > users.AccountId)
          inner join postLinks
          on (users.CreationDate <= postLinks.CreationDate)
        on (users.AboutMe <= users.WebsiteUrl)
      inner join comments
      on (users.ProfileImageUrl > users.ProfileImageUrl)
    on (posts.Title = comments.ContentLicense )
where votes.UserId is not NULL;
select  
  posts.OwnerUserId, 
  postLinks.PostId, 
  votes.CreationDate, 
  votes.PostId, 
  posts.Title, 
  votes.Id, 
  votes.UserId, 
  votes.VoteTypeId, 
  postLinks.Id, 
  comments.Text, 
  votes.Id, 
  comments.CreationDate, 
  posts.PostTypeId, 
  posts.OwnerDisplayName
from 
  postLinks
        inner join votes
        on (votes.VoteTypeId <= votes.Id)
      inner join comments
        inner join votes
        on (comments.CreationDate <= comments.CreationDate)
      on (votes.CreationDate = votes.CreationDate )
    inner join postHistory
      inner join posts
          inner join posts
          on (posts.Title = posts.OwnerDisplayName)
        inner join posts
        on (posts.AcceptedAnswerId = posts.Id )
      on (postHistory.CreationDate > posts.CreationDate)
    on (posts.Title is not NULL)
where posts.AcceptedAnswerId < posts.OwnerUserId
limit 139;
select  
  badges.Date, 
  votes.PostId, 
  badges.Name, 
  votes.VoteTypeId, 
  badges.TagBased, 
  badges.UserId
from 
  badges
    inner join votes
      inner join badges
      on (badges.TagBased = badges.TagBased)
    on (badges.UserId is NULL)
where badges.UserId is NULL
limit 174;
select  
  postHistory.Id, 
  postHistory.Id
from 
  postHistory
where postHistory.Id is NULL
limit 90;
select  
  badges.UserId, 
  badges.Class, 
  min(
    cast(cast(null as tid) as tid)), 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.Name, 
  badges.Date, 
  badges.Date, 
  badges.Id, 
  badges.TagBased, 
  badges.Date, 
  max(
    cast(cast(null as timetz) as timetz)), 
  max(
    cast(cast(null as tid) as tid)), 
  badges.Id, 
  badges.Id, 
  badges.TagBased, 
  badges.Name, 
  badges.UserId, 
  badges.Id, 
  badges.Class, 
  badges.UserId, 
  badges.TagBased
from 
  badges
where badges.TagBased > badges.TagBased
limit 100;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  posts.ParentId, 
  comments.UserDisplayName, 
  votes.VoteTypeId, 
  postLinks.CreationDate, 
  comments.UserDisplayName, 
  postHistory.ContentLicense, 
  comments.UserDisplayName, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postLinks.LinkTypeId, 
  comments.ContentLicense, 
  postLinks.RelatedPostId
from 
  votes
        inner join badges
          inner join comments
            inner join posts
            on (comments.CreationDate < posts.CreationDate)
          on (badges.UserId = posts.Id )
        on (comments.ContentLicense < posts.OwnerDisplayName)
      inner join postHistory
                  inner join badges
                  on (postHistory.Id <= postHistory.Id)
                inner join comments
                on (badges.Date <= comments.CreationDate)
              inner join postHistory
              on (comments.CreationDate < postHistory.CreationDate)
            inner join comments
                inner join comments
                on (comments.CreationDate >= comments.CreationDate)
              inner join posts
                inner join comments
                on (posts.PostTypeId = posts.OwnerUserId)
              on (comments.UserId < comments.Id)
            on (badges.TagBased >= badges.TagBased)
          inner join users
          on (users.AccountId > users.ProfileImageUrl)
        inner join comments
            inner join badges
            on (comments.Text > comments.UserDisplayName)
          inner join postLinks
          on (comments.CreationDate > postLinks.CreationDate)
        on (users.ProfileImageUrl > users.AccountId)
      on (users.ProfileImageUrl >= users.ProfileImageUrl)
    inner join postLinks
      inner join posts
      on (postLinks.CreationDate >= postLinks.CreationDate)
    on (badges.Name < comments.ContentLicense)
where badges.TagBased <= badges.TagBased
limit 40;
select  
  comments.ContentLicense, 
  sum(
    cast(35 as int4))
from 
  comments
where comments.ContentLicense is NULL
limit 120;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.CreationDate, 
  votes.CreationDate, 
  min(
    cast(cast(null as float4) as float4))
from 
  votes
where votes.Id is NULL
limit 78;
select  
  postLinks.PostId, 
  postLinks.PostId, 
  max(
    cast(postLinks.CreationDate as "timestamp")), 
  postLinks.LinkTypeId, 
  postLinks.LinkTypeId, 
  postLinks.RelatedPostId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.CreationDate is not NULL
limit 158;
select  
  posts.OwnerDisplayName, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as money) as money)), 
  postLinks.LinkTypeId, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posts.OwnerDisplayName
from 
  postLinks
    inner join comments
          inner join postHistory
            inner join votes
            on (votes.Id >= votes.VoteTypeId)
          on (comments.CreationDate = votes.CreationDate )
        inner join posts
        on (comments.Text = postHistory.ContentLicense)
      inner join posts
      on (votes.Id = posts.ParentId)
    on (votes.PostId is not NULL)
where votes.CreationDate is not NULL;
select  
  votes.Id
from 
  votes
where votes.CreationDate is NULL
limit 82;
select  
  postHistory.UserDisplayName, 
  badges.Name, 
  badges.Class, 
  badges.TagBased, 
  badges.Date
from 
  postHistory
    inner join badges
    on (badges.TagBased = badges.TagBased)
where badges.TagBased is not NULL
limit 84;
select  
  avg(
    cast(70 as int4)), 
  badges.Id, 
  badges.Name
from 
  badges
where badges.Id is not NULL
limit 99;
select  
  posts.AcceptedAnswerId, 
  posts.Body, 
  min(
    cast(cast(null as money) as money)), 
  postLinks.Id, 
  postLinks.RelatedPostId
from 
  postLinks
    inner join posts
    on (postLinks.LinkTypeId is NULL)
where posts.Body is not NULL
limit 113;
select  
  votes.CreationDate, 
  votes.PostId
from 
  votes
where votes.VoteTypeId is NULL
limit 162;
select  
  users.ProfileImageUrl, 
  votes.VoteTypeId, 
  votes.PostId, 
  users.AboutMe
from 
  votes
    inner join users
    on (users.Id <= votes.VoteTypeId)
where users.AccountId is NULL
limit 134;
select  
  votes.PostId, 
  votes.UserId, 
  votes.UserId, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  votes.CreationDate, 
  votes.UserId, 
  votes.UserId, 
  votes.PostId, 
  votes.Id, 
  votes.UserId, 
  votes.CreationDate
from 
  votes
where votes.CreationDate is not NULL;
select  
  votes.CreationDate, 
  votes.CreationDate, 
  votes.CreationDate, 
  votes.Id, 
  votes.PostId, 
  sum(
    cast(cast(null as money) as money)), 
  votes.PostId, 
  votes.PostId
from 
  votes
where votes.Id is not NULL;
select  
  badges.Name, 
  badges.Name, 
  badges.Class, 
  min(
    cast(cast(null as float8) as float8))
from 
  badges
where badges.Id <= badges.Id
limit 65;
select  
  postHistory.CreationDate, 
  postLinks.Id, 
  postLinks.Id, 
  postLinks.RelatedPostId
from 
  postHistory
    inner join postLinks
          inner join posts
          on (postLinks.PostId = posts.Id )
        inner join comments
        on (comments.ContentLicense = posts.OwnerDisplayName)
      inner join postLinks
        inner join comments
        on (postLinks.PostId <= postLinks.PostId)
      on (postLinks.PostId = postLinks.Id )
    on (postHistory.UserDisplayName = posts.OwnerDisplayName )
where comments.Text is not NULL;
select  
  posts.OwnerUserId, 
  posts.CreationDate, 
  posts.Id, 
  posts.Id, 
  posts.CreationDate, 
  posts.OwnerUserId
from 
  posts
where posts.OwnerDisplayName is NULL
limit 122;
select  
  min(
    cast(postHistory.Text as text)), 
  postHistory.PostHistoryTypeId, 
  postHistory.ContentLicense, 
  postHistory.CreationDate, 
  postHistory.Comment, 
  postHistory.RevisionGUID
from 
  postHistory
where postHistory.RevisionGUID > postHistory.ContentLicense
limit 101;
select  
  postLinks.LinkTypeId, 
  postLinks.PostId, 
  postLinks.PostId, 
  postLinks.Id, 
  postLinks.RelatedPostId, 
  postLinks.CreationDate
from 
  postLinks
where postLinks.Id is not NULL
limit 64;
select  
  postLinks.RelatedPostId, 
  postLinks.RelatedPostId, 
  votes.VoteTypeId, 
  postLinks.LinkTypeId, 
  comments.CreationDate
from 
  users
            inner join badges
            on (badges.Class < badges.Id)
          inner join votes
            inner join comments
            on (comments.UserId <= votes.Id)
          on (users.DisplayName > users.AboutMe)
        inner join posts
          inner join votes
            inner join postLinks
            on (postLinks.RelatedPostId <= postLinks.Id)
          on (votes.Id < votes.Id)
        on (comments.UserDisplayName <= badges.Name)
      inner join postLinks
            inner join votes
              inner join postLinks
                inner join posts
                on (posts.Id > posts.AcceptedAnswerId)
              on (postLinks.CreationDate = postLinks.CreationDate)
            on (posts.Body = posts.Title)
          inner join users
            inner join postLinks
            on (users.ProfileImageUrl > users.ProfileImageUrl)
          on (posts.OwnerDisplayName < posts.ContentLicense)
        inner join users
        on (posts.ParentId > posts.Id)
      on (users.DisplayName <= users.DisplayName)
    inner join users
        inner join postHistory
          inner join comments
            inner join comments
            on (comments.CreationDate = comments.CreationDate )
          on (comments.UserId > postHistory.Id)
        on (postHistory.Text = users.Location)
      inner join votes
      on (postHistory.Id < users.Id)
    on (badges.Id is not NULL)
where comments.UserId is not NULL
limit 63;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  comments.UserDisplayName, 
  max(
    cast(postHistory.UserId as int8)), 
  postHistory.Comment
from 
  badges
      inner join postHistory
        inner join comments
        on (postHistory.Text >= postHistory.Comment)
      on (badges.TagBased < badges.TagBased)
    inner join postHistory
        inner join users
        on (users.AccountId = users.AccountId)
      inner join comments
      on (postHistory.Text = comments.ContentLicense )
    on (users.Location is not NULL)
where badges.TagBased > badges.TagBased
limit 127;
select  
  postLinks.LinkTypeId
from 
  postLinks
where postLinks.Id > postLinks.Id
limit 74;
select  
  users.Id, 
  votes.CreationDate, 
  users.DisplayName, 
  users.ProfileImageUrl, 
  votes.PostId, 
  users.Location, 
  users.AboutMe, 
  users.Location, 
  votes.VoteTypeId, 
  users.AccountId, 
  users.DisplayName
from 
  votes
    inner join users
    on (votes.VoteTypeId is not NULL)
where users.AccountId < users.AccountId
limit 149;
select  
  postHistory.Id, 
  votes.Id, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  votes.Id, 
  postHistory.UserId, 
  min(
    cast(cast(null as oid) as oid)), 
  postHistory.PostId
from 
  postHistory
          inner join votes
          on (postHistory.Comment = postHistory.ContentLicense)
        inner join postHistory
        on (postHistory.RevisionGUID >= postHistory.Text)
      inner join posts
      on (posts.OwnerUserId <= votes.VoteTypeId)
    inner join postHistory
    on (postHistory.UserId = postHistory.Id )
where votes.UserId is not NULL
limit 74;
select  
  postHistory.Id, 
  posts.ParentId, 
  min(
    cast(cast(null as int2) as int2)), 
  posts.PostTypeId, 
  postHistory.UserDisplayName
from 
  posts
    inner join postHistory
        inner join votes
            inner join badges
            on (votes.VoteTypeId = badges.Id )
          inner join postHistory
              inner join users
              on (users.Location >= postHistory.Comment)
            inner join posts
              inner join comments
                inner join postLinks
                on (comments.PostId = postLinks.Id )
              on (posts.CreationDate <= postLinks.CreationDate)
            on (postHistory.CreationDate >= postLinks.CreationDate)
          on (badges.TagBased > badges.TagBased)
        on (badges.TagBased = badges.TagBased)
      inner join posts
      on (comments.UserDisplayName < badges.Name)
    on (posts.AcceptedAnswerId = posts.Id )
where posts.PostTypeId = posts.Id
limit 67;
select  
  badges.Name, 
  badges.Date, 
  badges.Id, 
  badges.Id, 
  badges.Class, 
  badges.Class, 
  badges.Date
from 
  badges
where badges.Id is NULL
limit 81;
select  
  comments.ContentLicense, 
  comments.Text, 
  min(
    cast(comments.Id as int8))
from 
  comments
where comments.Id is not NULL
limit 71;
select  
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  comments
    inner join badges
      inner join badges
        inner join postLinks
            inner join comments
            on (comments.UserDisplayName >= comments.ContentLicense)
          inner join comments
          on (postLinks.CreationDate = comments.CreationDate )
        on (badges.Name <= comments.Text)
      on (badges.Name > badges.Name)
    on (comments.Id = postLinks.Id )
where comments.Text is not NULL
limit 125;
select  
  postLinks.PostId, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  postLinks.LinkTypeId, 
  votes.CreationDate, 
  votes.PostId, 
  max(
    cast(cast(null as float4) as float4)), 
  postLinks.PostId
from 
  postLinks
      inner join postLinks
      on (postLinks.CreationDate < postLinks.CreationDate)
    inner join votes
        inner join badges
          inner join votes
          on (badges.Name >= badges.Name)
        on (votes.CreationDate >= badges.Date)
      inner join postLinks
      on (badges.TagBased = badges.TagBased)
    on (badges.TagBased <= badges.TagBased)
where badges.TagBased = badges.TagBased
limit 153;
select  
  postHistory.Comment, 
  users.AccountId, 
  comments.Text, 
  postHistory.Comment, 
  users.AccountId, 
  users.Id, 
  postHistory.Id, 
  postHistory.Id
from 
  postHistory
    inner join badges
        inner join users
        on (badges.Class >= badges.Class)
      inner join comments
      on (users.ProfileImageUrl <= users.AccountId)
    on (postHistory.CreationDate = badges.Date )
where users.CreationDate is NULL
limit 108;
