select  
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.id is NULL
limit 144;
select  
  users.upvotes, 
  min(
    cast(cast(null as timetz) as timetz)), 
  users.reputation, 
  users.views
from 
  users
where users.views is NULL
limit 84;
select  
  comments.postid, 
  comments.score, 
  votes.creationdate, 
  votes.postid, 
  comments.id, 
  users.websiteurl
from 
  comments
    left join posthistory
          inner join badges
          on (posthistory.posthistorytypeid <= posthistory.postid)
        inner join users
        on (posthistory.userid < posthistory.postid)
      inner join users
        inner join votes
        on (users.creationdate = users.lastaccessdate)
      on (posthistory.creationdate <= users.creationdate)
    on (comments.text = badges.class )
where votes.userid is not NULL;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  badges.name
from 
  badges
    inner join posthistory
    on (posthistory.posthistorytypeid is not NULL)
where posthistory.comment is NULL;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  votes.postid, 
  votes.postid, 
  votes.userid, 
  avg(
    cast(27 as int4)), 
  votes.creationdate, 
  votes.postid, 
  sum(
    cast(cast(null as float4) as float4)), 
  votes.creationdate, 
  votes.bountyamount, 
  votes.userid, 
  count(*), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.id, 
  votes.postid, 
  votes.bountyamount
from 
  votes
where votes.userid is not NULL;
select  
  posthistory.revisionguid
from 
  posthistory
    inner join posts
      inner join posthistory
      on (posts.tags < posthistory.userdisplayname)
    on (posthistory.revisionguid is not NULL)
where posts.lasteditordisplayname > posthistory.userdisplayname
limit 122;
select  
  votes.creationdate, 
  votes.id, 
  votes.userid, 
  votes.bountyamount
from 
  votes
where votes.postid is not NULL
limit 117;
select  
  badges.tagbased, 
  users.aboutme, 
  votes.postid, 
  posts.answercount, 
  postlinks.id, 
  badges.date
from 
  users
        inner join votes
          inner join users
            right join posts
            on (posts.ownerdisplayname > users.aboutme)
          on (posts.parentid < posts.owneruserid)
        on (posts.closeddate > posts.lasteditdate)
      left join votes
        inner join badges
        on (badges.date > badges.date)
      on (users.accountid < badges.id)
    inner join votes
      inner join postlinks
      on (votes.id = postlinks.id )
    on (users.creationdate < users.lastaccessdate)
where badges.class is NULL
limit 113;
select  
  comments.postid, 
  badges.tagbased, 
  comments.userid, 
  comments.userdisplayname
from 
  users
      right join comments
      on (users.upvotes = users.reputation)
    inner join badges
    on (comments.userdisplayname <= users.profileimageurl)
where users.displayname is NULL
limit 140;
select  
  max(
    cast(cast(null as float8) as float8)), 
  votes.userid, 
  votes.userid, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.userid, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.bountyamount
from 
  votes
where votes.bountyamount is not NULL
limit 80;
select  
  posts.id, 
  posthistory.contentlicense, 
  sum(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as timetz) as timetz)), 
  posthistory.id, 
  posts.answercount, 
  posthistory.posthistorytypeid, 
  posthistory.userdisplayname, 
  posts.owneruserid, 
  posts.contentlicense
from 
  posts
      left join posthistory
      on (posts.contentlicense >= posthistory.text)
    left join posts
    on (posthistory.id = posts.score)
where posts.body is NULL
limit 67;
select  
  posts.owneruserid, 
  posts.title, 
  posts.lastactivitydate, 
  posts.communityowneddate, 
  posts.title, 
  min(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.id
from 
  posts
where posts.lasteditordisplayname is not NULL;
select  
  votes.creationdate, 
  votes.postid, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.bountyamount
from 
  votes
where votes.votetypeid is NULL
limit 72;
select  
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
        right join votes
        on (comments.id >= comments.id)
      inner join users
            inner join posthistory
            on (users.aboutme >= users.aboutme)
          left join users
            inner join badges
            on (users.displayname < badges.tagbased)
          on (posthistory.id >= users.upvotes)
        inner join users
        on (users.reputation = users.id )
      on (votes.id = posthistory.id )
    inner join comments
      left join users
        inner join badges
          left join badges
          on (badges.date <= badges.date)
        on (users.lastaccessdate > badges.date)
      on (comments.postid >= users.upvotes)
    on (votes.userid is not NULL)
where users.views = users.reputation;
select  
  comments.score, 
  comments.id, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.text, 
  comments.creationdate, 
  comments.score, 
  comments.userdisplayname, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.text, 
  comments.text, 
  comments.creationdate, 
  comments.id, 
  comments.score, 
  comments.score, 
  comments.postid, 
  comments.text, 
  comments.score, 
  min(
    cast(cast(null as float8) as float8)), 
  comments.postid, 
  comments.text, 
  comments.userdisplayname, 
  comments.userid, 
  comments.text, 
  comments.id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.userid, 
  comments.text, 
  comments.text, 
  comments.text, 
  comments.id, 
  comments.text, 
  sum(
    cast(cast(null as float8) as float8)), 
  comments.userdisplayname, 
  comments.id, 
  comments.text, 
  comments.postid
from 
  comments
where comments.creationdate <= comments.creationdate;
select  
  posts.body, 
  posts.lastactivitydate, 
  posts.score, 
  count(
    cast(posts.parentid as int8)), 
  posts.creationdate, 
  posts.ownerdisplayname
from 
  posts
where posts.body is NULL
limit 140;
select  
  badges.userid, 
  badges.userid
from 
  badges
where badges.date > badges.date
limit 21;
select  
  postlinks.creationdate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  comments.userid, 
  postlinks.linktypeid, 
  max(
    cast(15 as int4)), 
  postlinks.relatedpostid
from 
  postlinks
    left join comments
    on (comments.postid is not NULL)
where comments.text < comments.userdisplayname
limit 125;
select  
  postlinks.postid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
where postlinks.relatedpostid > postlinks.postid;
select  
  posts.lasteditoruserid, 
  posts.commentcount
from 
  posts
where posts.viewcount is not NULL
limit 186;
select  
  postlinks.postid, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.closeddate
from 
  badges
        right join badges
            right join posts
            on (posts.ownerdisplayname < badges.name)
          inner join postlinks
          on (posts.posttypeid < posts.score)
        on (posts.lastactivitydate > postlinks.creationdate)
      inner join posts
        left join comments
          inner join users
            inner join postlinks
            on (postlinks.linktypeid <= users.upvotes)
          on (users.id > users.upvotes)
        on (posts.creationdate < comments.creationdate)
      on (posts.title >= posts.title)
    inner join comments
      inner join badges
        inner join badges
        on (badges.date >= badges.date)
      on (comments.text >= comments.text)
    on (badges.date is not NULL)
where comments.userid is not NULL
limit 36;
select  
  posthistory.contentlicense, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  postlinks.relatedpostid
from 
  postlinks
      inner join posthistory
        inner join comments
          inner join posthistory
          on (posthistory.creationdate > posthistory.creationdate)
        on (posthistory.creationdate >= posthistory.creationdate)
      on (postlinks.postid = posthistory.id )
    inner join comments
    on (posthistory.creationdate is not NULL)
where comments.userdisplayname < posthistory.comment
limit 50;
select  
  posts.viewcount, 
  min(
    cast(cast(null as tid) as tid)), 
  postlinks.postid, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.relatedpostid, 
  posts.closeddate, 
  badges.id
from 
  posts
            right join posts
            on (posts.owneruserid > posts.id)
          right join postlinks
          on (posts.favoritecount = postlinks.id )
        right join postlinks
        on (postlinks.linktypeid >= posts.owneruserid)
      inner join badges
      on (posts.closeddate < posts.creationdate)
    inner join posts
      left join users
      on (posts.viewcount < posts.id)
    on (posts.lasteditordisplayname >= users.websiteurl)
where postlinks.postid is not NULL
limit 67;
select  
  posthistory.revisionguid, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  votes
    inner join posthistory
        right join badges
          inner join votes
          on (votes.creationdate <= votes.creationdate)
        on (badges.date >= badges.date)
      inner join posts
      on (posthistory.postid <= posts.acceptedanswerid)
    on (votes.creationdate is NULL)
where posts.viewcount > posts.id;
select distinct 
  max(
    cast(cast(null as timetz) as timetz))
from 
  votes
where votes.id is not NULL
limit 166;
select  
  comments.score, 
  posthistory.posthistorytypeid, 
  posthistory.posthistorytypeid, 
  postlinks.relatedpostid, 
  posts.posttypeid, 
  votes.bountyamount, 
  postlinks.creationdate
from 
  postlinks
    inner join comments
        right join posts
            inner join postlinks
            on (posts.viewcount = postlinks.id )
          right join posthistory
            left join votes
            on (posthistory.text <= posthistory.text)
          on (votes.creationdate < votes.creationdate)
        on (posts.viewcount > posthistory.postid)
      left join votes
      on (posthistory.contentlicense >= posts.body)
    on (posthistory.userdisplayname > posthistory.comment)
where comments.text < posthistory.text
limit 108;
select  
  posts.lastactivitydate, 
  posts.body, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  posts
where posts.commentcount is NULL
limit 82;
select  
  posts.favoritecount, 
  posts.lastactivitydate, 
  posts.communityowneddate, 
  posts.contentlicense, 
  votes.id, 
  posts.closeddate, 
  votes.creationdate, 
  votes.creationdate, 
  votes.votetypeid
from 
  posts
    inner join votes
      right join posts
      on (posts.creationdate = posts.closeddate)
    on (votes.creationdate is not NULL)
where posts.tags is not NULL
limit 91;
select  
  min(
    cast(cast(null as inet) as inet))
from 
  comments
where comments.userdisplayname is NULL
limit 43;
select  
  posthistory.contentlicense, 
  posthistory.postid, 
  posthistory.userid, 
  posthistory.userdisplayname, 
  posthistory.revisionguid, 
  posthistory.id, 
  posthistory.contentlicense, 
  max(
    cast(cast(null as tid) as tid))
from 
  posthistory
where posthistory.userdisplayname is NULL
limit 20;
select distinct 
  comments.postid, 
  comments.text
from 
  comments
where comments.creationdate is NULL
limit 86;
select  
  comments.text
from 
  users
            right join badges
            on (users.creationdate >= users.lastaccessdate)
          left join comments
            right join users
            on (comments.creationdate = users.creationdate )
          on (badges.class = comments.userdisplayname )
        right join votes
        on (comments.postid = votes.id )
      inner join badges
        right join comments
          left join postlinks
          on (comments.text >= comments.text)
        on (comments.userdisplayname > badges.name)
      on (comments.userdisplayname <= users.displayname)
    inner join posthistory
    on (users.reputation = posthistory.id )
where badges.class is NULL
limit 60;
select  
  comments.score, 
  posthistory.id, 
  posthistory.id
from 
  posthistory
    inner join comments
    on (posthistory.postid = comments.id )
where posthistory.creationdate is not NULL
limit 113;
select  
  votes.userid
from 
  posthistory
    left join votes
      left join users
        right join badges
        on (badges.date >= users.creationdate)
      on (users.creationdate >= users.creationdate)
    on (badges.id is NULL)
where users.lastaccessdate is NULL
limit 55;
select  
  badges.date, 
  badges.class, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.tagbased, 
  badges.tagbased, 
  min(
    cast(cast(null as "time") as "time"))
from 
  badges
where badges.tagbased is not NULL
limit 85;
select  
  postlinks.relatedpostid
from 
  postlinks
    inner join posthistory
      left join comments
      on (posthistory.userid = comments.id )
    on (posthistory.revisionguid is not NULL)
where postlinks.postid is NULL
limit 104;
select  
  users.websiteurl, 
  users.id, 
  users.reputation, 
  users.aboutme, 
  users.downvotes, 
  users.downvotes, 
  users.profileimageurl, 
  users.websiteurl, 
  users.id, 
  users.id, 
  users.lastaccessdate, 
  users.reputation
from 
  users
where users.views = users.accountid
limit 136;
select  
  count(
    cast(posthistory.text as text))
from 
  posthistory
      inner join posthistory
          inner join votes
          on (posthistory.postid <= votes.postid)
        inner join users
          inner join users
          on (users.creationdate < users.creationdate)
        on (users.accountid <= posthistory.posthistorytypeid)
      on (users.lastaccessdate < users.lastaccessdate)
    inner join comments
      inner join postlinks
      on (postlinks.id < comments.userid)
    on (users.views is not NULL)
where users.creationdate is NULL
limit 160;
select  
  comments.score, 
  sum(
    cast(90 as int4)), 
  comments.score, 
  comments.userdisplayname
from 
  comments
where comments.id is NULL;
select  
  postlinks.postid, 
  posts.id
from 
  votes
          right join posts
            left join users
            on (posts.contentlicense <= users.location)
          on (votes.creationdate = posts.creationdate )
        right join votes
            inner join badges
            on (votes.postid = votes.bountyamount)
          inner join postlinks
            inner join posts
            on (posts.communityowneddate = posts.closeddate)
          on (posts.viewcount < votes.votetypeid)
        on (votes.id <= posts.id)
      left join posthistory
      on (votes.creationdate = posts.closeddate)
    inner join comments
    on (votes.userid is not NULL)
where posts.body is NULL
limit 156;
select  
  votes.creationdate, 
  votes.creationdate, 
  votes.postid, 
  votes.postid, 
  users.lastaccessdate, 
  users.reputation
from 
  votes
    inner join posts
      left join users
      on (users.views > posts.answercount)
    on (users.upvotes is NULL)
where posts.commentcount is not NULL
limit 63;
select  
  posthistory.creationdate, 
  avg(
    cast(badges.id as int8)), 
  comments.userid, 
  comments.userid
from 
  badges
      left join comments
          inner join votes
          on (comments.postid < votes.postid)
        inner join posts
        on (votes.id = posts.favoritecount)
      on (badges.tagbased = posts.ownerdisplayname )
    right join comments
        inner join postlinks
          inner join posthistory
          on (postlinks.creationdate > postlinks.creationdate)
        on (comments.creationdate < posthistory.creationdate)
      left join postlinks
        right join posthistory
          inner join postlinks
          on (postlinks.creationdate <= posthistory.creationdate)
        on (postlinks.id > postlinks.postid)
      on (postlinks.postid >= postlinks.relatedpostid)
    on (badges.id = posthistory.id )
where votes.id is NULL
limit 111;
select  
  postlinks.id, 
  max(
    cast(cast(null as oid) as oid)), 
  postlinks.relatedpostid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.linktypeid is NULL
limit 36;
select  
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.id is NULL
limit 136;
select  
  postlinks.id, 
  postlinks.postid, 
  avg(
    cast(88 as int4)), 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.creationdate
from 
  postlinks
where postlinks.linktypeid is not NULL;
select  
  badges.tagbased, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  badges.name, 
  postlinks.postid
from 
  postlinks
    inner join badges
    on (postlinks.relatedpostid = badges.id )
where postlinks.linktypeid is not NULL
limit 112;
select  
  postlinks.id
from 
  votes
      right join posthistory
      on (votes.creationdate > posthistory.creationdate)
    right join votes
      inner join comments
              left join users
              on (comments.userid = users.id )
            inner join postlinks
              right join votes
              on (votes.id <= postlinks.postid)
            on (votes.userid > votes.votetypeid)
          inner join badges
          on (postlinks.creationdate >= users.lastaccessdate)
        inner join postlinks
          inner join badges
            right join comments
            on (badges.userid = comments.id )
          on (comments.score > comments.userid)
        on (users.reputation = postlinks.linktypeid)
      on (users.creationdate > users.creationdate)
    on (postlinks.linktypeid is NULL)
where postlinks.creationdate is not NULL;
select  
  comments.userdisplayname, 
  comments.text, 
  postlinks.relatedpostid
from 
  comments
    inner join postlinks
    on (postlinks.id <= postlinks.postid)
where comments.text is not NULL
limit 73;
select  
  min(
    cast(cast(null as "time") as "time")), 
  users.views, 
  users.aboutme
from 
  users
where users.creationdate is not NULL;
select  
  posthistory.comment, 
  posthistory.id, 
  posthistory.creationdate, 
  posthistory.userid, 
  max(
    cast(posthistory.text as text)), 
  posthistory.userdisplayname, 
  posthistory.id, 
  posthistory.creationdate, 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  max(
    cast(cast(null as money) as money)), 
  posthistory.userdisplayname, 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.creationdate is not NULL
limit 102;
select  
  votes.userid, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  votes
where votes.creationdate >= votes.creationdate;
select  
  min(
    cast(cast(null as oid) as oid)), 
  users.location, 
  postlinks.postid
from 
  posthistory
        inner join posts
        on (posthistory.revisionguid < posts.tags)
      inner join postlinks
          right join badges
            left join comments
            on (badges.tagbased = comments.userdisplayname )
          on (postlinks.linktypeid = badges.id )
        right join comments
        on (postlinks.creationdate <= comments.creationdate)
      on (posts.communityowneddate < posts.lasteditdate)
    inner join postlinks
        inner join votes
        on (postlinks.id > votes.userid)
      left join comments
          inner join postlinks
          on (comments.userdisplayname > comments.text)
        inner join users
        on (users.lastaccessdate >= comments.creationdate)
      on (users.profileimageurl = comments.text)
    on (posthistory.userdisplayname < badges.name)
where postlinks.postid is NULL;
select  
  comments.postid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  comments.creationdate, 
  comments.userdisplayname
from 
  comments
where comments.userid = comments.userid
limit 85;
select  
  avg(
    cast(postlinks.id as int8)), 
  max(
    cast(52 as int4)), 
  postlinks.id, 
  postlinks.id, 
  postlinks.id
from 
  postlinks
where postlinks.postid is not NULL
limit 55;
select  
  votes.creationdate, 
  votes.id, 
  votes.postid, 
  votes.postid
from 
  votes
where votes.id is NULL
limit 72;
select  
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.relatedpostid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.id is NULL
limit 158;
select  
  votes.bountyamount, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as int2) as int2)), 
  votes.creationdate
from 
  votes
where votes.bountyamount is NULL
limit 121;
select  
  comments.creationdate, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.score, 
  comments.postid, 
  comments.postid, 
  comments.postid, 
  comments.creationdate, 
  comments.postid, 
  comments.userdisplayname, 
  comments.score, 
  comments.text, 
  comments.score, 
  comments.postid, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.postid, 
  comments.id, 
  comments.userdisplayname, 
  comments.score, 
  max(
    cast(cast(null as oid) as oid))
from 
  comments
where comments.creationdate = comments.creationdate
limit 80;
select  
  posthistory.comment, 
  posthistory.revisionguid, 
  posthistory.comment, 
  posthistory.revisionguid, 
  posthistory.comment, 
  min(
    cast(17 as int4)), 
  posthistory.userdisplayname, 
  min(
    cast(cast(null as money) as money)), 
  posthistory.text, 
  posthistory.postid, 
  posthistory.revisionguid, 
  posthistory.creationdate, 
  posthistory.posthistorytypeid, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  posthistory
where posthistory.comment is NULL
limit 153;
select  
  comments.id, 
  min(
    cast(cast(null as date) as date)), 
  badges.class, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.postid, 
  comments.id, 
  badges.tagbased, 
  comments.text, 
  count(*)
from 
  badges
    left join comments
    on (badges.id = comments.id )
where badges.name < comments.userdisplayname;
select  
  postlinks.id, 
  badges.id, 
  badges.userid, 
  sum(
    cast(78 as int4)), 
  comments.userdisplayname, 
  users.downvotes, 
  badges.date, 
  postlinks.creationdate, 
  badges.userid, 
  comments.text, 
  comments.postid, 
  comments.userdisplayname, 
  postlinks.creationdate, 
  badges.class, 
  postlinks.creationdate, 
  badges.name
from 
  users
      inner join badges
      on (users.lastaccessdate <= users.lastaccessdate)
    inner join postlinks
        inner join comments
        on (comments.userdisplayname > comments.text)
      inner join badges
      on (comments.text > badges.class)
    on (badges.tagbased is not NULL)
where badges.class <= users.location;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(31 as int4)), 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate is NULL;
select  
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate < postlinks.creationdate
limit 101;
select  
  postlinks.creationdate
from 
  postlinks
where postlinks.relatedpostid > postlinks.linktypeid
limit 88;
select  
  comments.score, 
  comments.userid, 
  comments.score, 
  comments.postid
from 
  comments
where comments.creationdate is not NULL
limit 117;
select  
  postlinks.postid
from 
  postlinks
      inner join votes
      on (votes.creationdate = votes.creationdate)
    left join posts
              left join posts
              on (posts.contentlicense = posts.lasteditordisplayname)
            inner join posthistory
              right join postlinks
              on (posthistory.contentlicense < posthistory.comment)
            on (posts.id <= posts.owneruserid)
          right join badges
          on (posts.communityowneddate >= posts.communityowneddate)
        inner join votes
        on (posthistory.creationdate <= posts.lasteditdate)
      right join postlinks
        left join postlinks
            left join votes
              inner join badges
              on (badges.tagbased < badges.class)
            on (postlinks.postid = votes.id )
          inner join posthistory
          on (postlinks.creationdate = posthistory.creationdate)
        on (postlinks.relatedpostid = badges.id )
      on (posts.favoritecount >= postlinks.linktypeid)
    on (posts.creationdate is NULL)
where votes.postid is NULL;
select  
  users.websiteurl
from 
  postlinks
    inner join votes
      inner join users
      on (users.websiteurl > users.websiteurl)
    on (users.lastaccessdate < postlinks.creationdate)
where votes.postid is not NULL
limit 122;
select  
  comments.userid, 
  comments.id, 
  comments.text, 
  comments.userid, 
  comments.postid
from 
  comments
where comments.creationdate is NULL
limit 76;
select  
  posts.lasteditdate, 
  posthistory.creationdate, 
  postlinks.relatedpostid
from 
  votes
      right join posthistory
        inner join users
            inner join badges
              inner join posts
              on (badges.class = badges.tagbased)
            on (posts.lasteditdate <= badges.date)
          right join comments
          on (posts.lastactivitydate < posts.lastactivitydate)
        on (users.reputation > posthistory.posthistorytypeid)
      on (votes.bountyamount = posthistory.id )
    right join posts
      inner join badges
          inner join posthistory
            left join posts
            on (posts.lasteditdate < posts.lasteditdate)
          on (posts.lasteditdate < badges.date)
        inner join postlinks
        on (badges.class < posthistory.contentlicense)
      on (posts.creationdate = badges.date )
    on (badges.class = posts.ownerdisplayname )
where postlinks.relatedpostid is NULL;
select  
  posthistory.userid, 
  postlinks.linktypeid
from 
  postlinks
    inner join posthistory
    on (posthistory.revisionguid is NULL)
where postlinks.linktypeid is NULL;
select  
  users.upvotes, 
  users.displayname, 
  postlinks.linktypeid, 
  users.creationdate, 
  users.accountid, 
  postlinks.postid
from 
  postlinks
    right join users
    on (users.views is not NULL)
where postlinks.id is NULL
limit 73;
select  
  max(
    cast(cast(null as date) as date)), 
  posthistory.userdisplayname, 
  posthistory.text, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.postid >= posthistory.userid;
select  
  badges.tagbased, 
  badges.class, 
  badges.id, 
  posthistory.contentlicense, 
  comments.score, 
  comments.text, 
  posthistory.text
from 
  badges
    left join badges
      inner join posthistory
        inner join comments
        on (comments.creationdate = posthistory.creationdate)
      on (comments.postid < posthistory.postid)
    on (posthistory.revisionguid is not NULL)
where badges.tagbased is NULL;
select  
  users.reputation, 
  users.downvotes, 
  users.id, 
  users.creationdate
from 
  users
where users.displayname is NULL
limit 159;
select  
  users.location, 
  max(
    cast(13 as int4)), 
  posts.communityowneddate
from 
  users
    inner join posts
    on (posts.tags is not NULL)
where posts.lasteditdate is not NULL
limit 148;
select  
  posthistory.postid, 
  comments.id, 
  count(
    cast(users.websiteurl as text))
from 
  posthistory
      right join users
      on (posthistory.creationdate = users.creationdate )
    inner join comments
    on (posthistory.comment is NULL)
where users.websiteurl is not NULL;
select  
  max(
    cast(cast(null as float4) as float4)), 
  comments.userdisplayname, 
  comments.text, 
  comments.userdisplayname, 
  posthistory.postid, 
  comments.text, 
  comments.userdisplayname, 
  posthistory.postid, 
  comments.score
from 
  comments
    inner join posthistory
    on (posthistory.postid > comments.postid)
where comments.userid > comments.userid;
select  
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 92;
select  
  avg(
    cast(45 as int4)), 
  badges.class, 
  badges.date, 
  badges.id, 
  badges.name, 
  badges.tagbased, 
  badges.id, 
  badges.tagbased, 
  badges.userid, 
  badges.date, 
  badges.userid, 
  badges.date, 
  badges.id, 
  badges.date, 
  badges.class, 
  badges.userid, 
  badges.class, 
  sum(
    cast(cast(null as int2) as int2))
from 
  badges
where badges.date is not NULL
limit 80;
select  
  users.reputation, 
  users.accountid
from 
  users
where users.creationdate is NULL
limit 148;
select  
  posts.posttypeid, 
  posts.creationdate, 
  posthistory.userdisplayname, 
  posts.ownerdisplayname, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  comments.userdisplayname, 
  posthistory.revisionguid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.date, 
  postlinks.id, 
  posts.answercount, 
  posts.answercount, 
  postlinks.creationdate
from 
  posthistory
        left join posts
        on (posts.lasteditdate < posts.communityowneddate)
      left join postlinks
          inner join comments
          on (comments.score > postlinks.postid)
        inner join postlinks
          inner join postlinks
          on (postlinks.creationdate > postlinks.creationdate)
        on (postlinks.postid = postlinks.id )
      on (comments.userdisplayname = posts.tags)
    right join comments
            left join posts
            on (posts.owneruserid < posts.acceptedanswerid)
          inner join badges
          on (posts.closeddate = badges.date)
        right join postlinks
            inner join votes
            on (postlinks.id = votes.id )
          inner join posthistory
            inner join badges
              left join posts
              on (posts.owneruserid > posts.viewcount)
            on (badges.tagbased > posts.contentlicense)
          on (posts.lasteditordisplayname < posts.lasteditordisplayname)
        on (posts.viewcount = posts.id )
      right join posts
      on (posts.lasteditoruserid <= posts.posttypeid)
    on (posts.tags is NULL)
where badges.tagbased is not NULL
limit 158;
select  
  badges.tagbased, 
  badges.name, 
  badges.name, 
  badges.tagbased, 
  badges.date
from 
  badges
where badges.name is not NULL;
select  
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.id
from 
  postlinks
where postlinks.postid is NULL
limit 83;
select  
  votes.userid, 
  min(
    cast(cast(null as money) as money)), 
  votes.creationdate, 
  votes.userid, 
  votes.id, 
  votes.id
from 
  votes
where votes.votetypeid < votes.votetypeid
limit 107;
select  
  min(
    cast(cast(null as int2) as int2)), 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.score
from 
  users
    inner join badges
        right join comments
        on (comments.score >= comments.postid)
      inner join comments
        inner join badges
          inner join users
            inner join badges
            on (users.reputation = users.accountid)
          on (badges.date < badges.date)
        on (badges.tagbased <= badges.name)
      on (users.lastaccessdate = users.lastaccessdate)
    on (users.displayname = comments.userdisplayname )
where comments.creationdate is not NULL
limit 147;
select  
  comments.userdisplayname
from 
  posts
    inner join badges
        inner join badges
        on (badges.tagbased >= badges.tagbased)
      right join votes
        right join comments
          left join votes
          on (comments.text = comments.text)
        on (comments.score > votes.id)
      on (votes.id < votes.userid)
    on (posts.lasteditdate = votes.creationdate )
where badges.class is not NULL;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  posthistory.posthistorytypeid
from 
  comments
    right join comments
        right join posthistory
        on (comments.score = posthistory.id )
      inner join posts
      on (comments.userdisplayname = posts.ownerdisplayname )
    on (comments.score is NULL)
where comments.text is not NULL
limit 168;
select  
  comments.userdisplayname, 
  comments.postid, 
  sum(
    cast(cast(null as float8) as float8))
from 
  users
    inner join comments
    on (comments.text is not NULL)
where users.displayname is NULL
limit 129;
select  
  users.downvotes, 
  min(
    cast(users.reputation as int8)), 
  users.upvotes, 
  users.location, 
  users.aboutme, 
  users.lastaccessdate, 
  max(
    cast(cast(null as oid) as oid)), 
  users.displayname, 
  users.upvotes
from 
  users
where users.id is not NULL
limit 110;
select  
  posts.communityowneddate, 
  postlinks.relatedpostid, 
  comments.postid, 
  posts.favoritecount, 
  posts.ownerdisplayname, 
  posthistory.postid, 
  min(
    cast(cast(null as float8) as float8)), 
  posts.lasteditordisplayname, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.lasteditoruserid, 
  posts.title, 
  comments.userdisplayname, 
  posts.creationdate, 
  posts.owneruserid, 
  badges.name
from 
  posts
          right join postlinks
          on (postlinks.creationdate > postlinks.creationdate)
        right join badges
        on (posts.commentcount = badges.id )
      left join postlinks
          right join comments
            left join posts
            on (posts.owneruserid <= posts.answercount)
          on (posts.lastactivitydate <= posts.communityowneddate)
        right join posthistory
        on (comments.postid > posts.favoritecount)
      on (posts.lastactivitydate >= comments.creationdate)
    inner join postlinks
      inner join posts
      on (posts.closeddate > posts.closeddate)
    on (posts.lasteditoruserid = postlinks.id )
where posts.posttypeid is not NULL
limit 95;
select  
  users.creationdate, 
  users.location
from 
  users
where users.creationdate <= users.lastaccessdate;
select  
  postlinks.creationdate, 
  postlinks.id, 
  max(
    cast(cast(null as oid) as oid)), 
  postlinks.id, 
  max(
    cast(cast(null as date) as date)), 
  postlinks.creationdate, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.linktypeid is NULL
limit 87;
select  
  users.reputation, 
  users.websiteurl, 
  users.id, 
  users.views, 
  users.downvotes, 
  users.views, 
  max(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as tid) as tid)), 
  users.displayname, 
  users.id, 
  users.profileimageurl, 
  users.creationdate, 
  sum(
    cast(cast(null as float4) as float4)), 
  users.id, 
  users.websiteurl, 
  users.views
from 
  users
where users.creationdate >= users.lastaccessdate;
select  
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  posts
    left join votes
    on (posts.lasteditoruserid = votes.id )
where posts.body is NULL;
select  
  posts.owneruserid, 
  posts.id, 
  posts.contentlicense, 
  posts.body, 
  posts.viewcount, 
  posts.owneruserid
from 
  posts
where posts.commentcount is not NULL
limit 65;
select  
  posts.lasteditoruserid
from 
  posts
where posts.lasteditdate = posts.closeddate
limit 73;
select  
  comments.userdisplayname, 
  comments.userid, 
  comments.text
from 
  comments
    inner join comments
    on (comments.creationdate >= comments.creationdate)
where comments.text is not NULL;
select  
  postlinks.postid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.postid
from 
  postlinks
where postlinks.id is NULL
limit 79;
select  
  posts.score
from 
  posts
where posts.title is NULL
limit 69;
select  
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
where postlinks.id >= postlinks.postid
limit 158;
select  
  votes.bountyamount, 
  badges.id, 
  badges.class, 
  badges.tagbased, 
  votes.votetypeid, 
  badges.date, 
  badges.userid, 
  votes.postid, 
  comments.creationdate
from 
  votes
          right join badges
            right join users
            on (users.creationdate >= users.creationdate)
          on (votes.userid = badges.id )
        right join badges
          inner join postlinks
            right join posthistory
            on (posthistory.revisionguid >= posthistory.contentlicense)
          on (badges.id > posthistory.posthistorytypeid)
        on (badges.id < votes.bountyamount)
      left join posts
        inner join comments
        on (posts.lasteditoruserid >= posts.answercount)
      on (posts.closeddate < comments.creationdate)
    inner join votes
        right join users
            inner join votes
            on (users.websiteurl = users.location)
          right join badges
          on (users.displayname <= users.displayname)
        on (users.downvotes < badges.userid)
      inner join comments
      on (badges.date > votes.creationdate)
    on (users.location = badges.class )
where comments.userdisplayname is NULL
limit 114;
select  
  users.aboutme, 
  users.profileimageurl, 
  users.id, 
  comments.userid, 
  users.id, 
  users.reputation
from 
  comments
    left join users
    on (users.reputation = users.upvotes)
where users.websiteurl is not NULL
limit 160;
select  
  votes.id
from 
  posthistory
      left join comments
        inner join votes
        on (votes.postid <= votes.id)
      on (comments.id >= posthistory.id)
    right join votes
    on (comments.id is not NULL)
where posthistory.contentlicense is not NULL
limit 155;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  max(
    cast(28 as int4)), 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate is not NULL
limit 33;
select  
  badges.tagbased
from 
  postlinks
            left join postlinks
            on (postlinks.relatedpostid = postlinks.id )
          right join postlinks
          on (postlinks.relatedpostid = postlinks.id )
        left join users
            inner join postlinks
            on (users.lastaccessdate = postlinks.creationdate )
          left join badges
          on (users.downvotes >= postlinks.postid)
        on (users.displayname < users.profileimageurl)
      inner join badges
      on (badges.date >= postlinks.creationdate)
    right join postlinks
      right join users
      on (users.lastaccessdate <= users.creationdate)
    on (postlinks.relatedpostid = users.id )
where postlinks.postid is not NULL;
select  
  badges.name, 
  max(
    cast(badges.name as text)), 
  max(
    cast(37 as int4))
from 
  posts
        inner join badges
        on (posts.communityowneddate >= posts.lastactivitydate)
      right join badges
        right join postlinks
        on (badges.date <= badges.date)
      on (posts.title >= badges.tagbased)
    inner join postlinks
      inner join comments
            left join badges
              left join comments
              on (comments.creationdate < comments.creationdate)
            on (badges.name < comments.text)
          right join users
            right join comments
              right join badges
              on (badges.date = badges.date)
            on (users.creationdate = comments.creationdate )
          on (comments.id <= users.reputation)
        inner join comments
        on (comments.text = users.websiteurl)
      on (comments.creationdate > users.lastaccessdate)
    on (posts.lasteditdate is not NULL)
where postlinks.creationdate = posts.communityowneddate;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  votes
where votes.creationdate is not NULL
limit 121;
select  
  posts.title
from 
  posts
where posts.score is NULL
limit 102;
select  
  min(
    cast(comments.score as int8)), 
  comments.text, 
  comments.postid, 
  comments.score, 
  comments.postid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.postid, 
  min(
    cast(comments.id as int8))
from 
  comments
where comments.id is NULL
limit 85;
select  
  users.profileimageurl, 
  min(
    cast(users.creationdate as timestamptz)), 
  users.reputation
from 
  users
where users.accountid < users.upvotes
limit 71;
select  
  comments.score, 
  comments.score
from 
  posts
        inner join users
        on (posts.creationdate <= users.lastaccessdate)
      right join votes
      on (users.accountid <= posts.answercount)
    inner join comments
          right join comments
          on (comments.userdisplayname < comments.userdisplayname)
        inner join users
          inner join votes
              right join comments
              on (comments.id > comments.id)
            inner join votes
              inner join votes
              on (votes.votetypeid >= votes.id)
            on (votes.userid <= votes.userid)
          on (votes.creationdate < votes.creationdate)
        on (users.websiteurl <= comments.userdisplayname)
      inner join users
            right join users
            on (users.profileimageurl > users.websiteurl)
          left join posthistory
            inner join postlinks
            on (posthistory.creationdate < posthistory.creationdate)
          on (users.downvotes = postlinks.id )
        inner join posts
        on (posts.lasteditordisplayname >= posts.lasteditordisplayname)
      on (posthistory.text <= users.websiteurl)
    on (votes.userid = posthistory.id )
where posts.owneruserid > users.reputation
limit 187;
select  
  votes.bountyamount, 
  users.websiteurl, 
  users.profileimageurl, 
  postlinks.relatedpostid
from 
  postlinks
    left join users
      left join votes
      on (users.aboutme > users.profileimageurl)
    on (users.aboutme >= users.location)
where users.creationdate is NULL
limit 60;
select  
  badges.date, 
  badges.userid, 
  badges.id
from 
  badges
where badges.date is NULL
limit 89;
select  
  comments.userdisplayname, 
  count(
    cast(comments.creationdate as timestamptz)), 
  badges.date, 
  badges.name, 
  badges.id, 
  avg(
    cast(cast(null as int2) as int2)), 
  badges.class, 
  badges.userid, 
  badges.tagbased, 
  comments.text, 
  comments.userid, 
  badges.name, 
  comments.score, 
  badges.tagbased
from 
  comments
    inner join badges
    on (comments.id < badges.userid)
where badges.id <= badges.userid;
select  
  comments.userdisplayname, 
  comments.creationdate
from 
  votes
    inner join comments
        right join comments
        on (comments.userid = comments.id )
      left join users
      on (users.creationdate <= users.creationdate)
    on (votes.userid = comments.id )
where votes.userid is NULL
limit 108;
select  
  posthistory.revisionguid, 
  badges.id, 
  badges.tagbased, 
  posthistory.comment, 
  badges.tagbased, 
  posts.contentlicense
from 
  votes
        right join postlinks
          inner join posts
          on (posts.lastactivitydate >= posts.closeddate)
        on (posts.contentlicense > posts.lasteditordisplayname)
      right join users
        left join badges
            inner join posthistory
            on (badges.id = posthistory.posthistorytypeid)
          inner join posthistory
          on (badges.date > posthistory.creationdate)
        on (posthistory.creationdate = posthistory.creationdate)
      on (users.aboutme = posthistory.comment)
    inner join badges
    on (posthistory.comment = posthistory.contentlicense)
where users.downvotes < badges.id
limit 153;
select  
  comments.creationdate, 
  comments.postid, 
  users.location, 
  users.lastaccessdate, 
  comments.score, 
  users.location, 
  users.creationdate
from 
  comments
    right join users
    on (users.creationdate is not NULL)
where comments.creationdate is not NULL;
select  
  posthistory.posthistorytypeid, 
  comments.postid, 
  posthistory.contentlicense
from 
  posthistory
    inner join comments
    on (posthistory.comment = posthistory.comment)
where comments.id <= posthistory.id
limit 24;
select  
  posts.score, 
  badges.class, 
  min(
    cast(cast(null as float4) as float4)), 
  badges.name, 
  badges.name, 
  posts.parentid
from 
  postlinks
    inner join badges
            right join votes
            on (badges.userid = votes.id )
          left join posthistory
            inner join badges
            on (posthistory.creationdate = badges.date)
          on (votes.votetypeid = posthistory.id )
        left join posts
        on (posts.body > posthistory.text)
      left join postlinks
        left join users
          inner join postlinks
          on (postlinks.postid < postlinks.postid)
        on (postlinks.relatedpostid = postlinks.id )
      on (votes.postid = postlinks.id )
    on (badges.tagbased is NULL)
where badges.class is not NULL
limit 145;
select  
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 144;
select  
  posts.title, 
  max(
    cast(cast(null as tid) as tid)), 
  postlinks.postid, 
  posts.parentid, 
  postlinks.linktypeid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  sum(
    cast(cast(null as float8) as float8))
from 
  posts
      left join votes
          inner join postlinks
            inner join posts
            on (postlinks.creationdate = posts.creationdate )
          on (posts.creationdate = posts.communityowneddate)
        inner join badges
          right join users
          on (badges.name >= users.websiteurl)
        on (posts.body = badges.class )
      on (posts.parentid <= posts.parentid)
    inner join posthistory
    on (votes.userid is NULL)
where users.lastaccessdate is NULL;
select  
  votes.postid, 
  votes.bountyamount, 
  votes.id, 
  avg(
    cast(cast(null as float8) as float8)), 
  votes.creationdate, 
  votes.bountyamount, 
  votes.userid, 
  votes.bountyamount, 
  votes.votetypeid
from 
  votes
where votes.votetypeid is not NULL
limit 115;
select  
  max(
    cast(posthistory.creationdate as timestamptz)), 
  min(
    cast(cast(null as int2) as int2)), 
  posthistory.id, 
  posthistory.revisionguid, 
  min(
    cast(cast(null as date) as date))
from 
  posthistory
where posthistory.userdisplayname is not NULL
limit 65;
select  
  posts.lastactivitydate, 
  posts.lasteditdate, 
  min(
    cast(cast(null as float8) as float8)), 
  posts.score, 
  max(
    cast(cast(null as xid8) as xid8)), 
  posts.tags, 
  posts.lastactivitydate, 
  posts.lasteditdate, 
  posts.acceptedanswerid, 
  min(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as "time") as "time")), 
  posts.lasteditdate, 
  posts.score, 
  posts.commentcount
from 
  posts
where posts.ownerdisplayname is not NULL
limit 108;
select  
  max(
    cast(badges.class as text)), 
  posthistory.id, 
  posts.id, 
  posthistory.posthistorytypeid, 
  users.displayname, 
  badges.tagbased, 
  sum(
    cast(cast(null as float8) as float8)), 
  posts.owneruserid, 
  posthistory.contentlicense, 
  users.profileimageurl, 
  posts.posttypeid, 
  posts.id
from 
  posthistory
        inner join badges
          inner join users
          on (badges.date <= users.lastaccessdate)
        on (posthistory.revisionguid = users.displayname )
      right join postlinks
          inner join users
          on (users.aboutme < users.profileimageurl)
        inner join posthistory
          inner join posts
            inner join posthistory
            on (posthistory.contentlicense < posts.body)
          on (posthistory.revisionguid < posts.tags)
        on (posts.id <= posthistory.userid)
      on (postlinks.postid = users.id)
    right join posthistory
          right join postlinks
          on (posthistory.userid >= postlinks.relatedpostid)
        right join badges
          inner join badges
              inner join posts
              on (badges.userid >= posts.lasteditoruserid)
            inner join postlinks
            on (posts.creationdate > postlinks.creationdate)
          on (posts.acceptedanswerid > posts.favoritecount)
        on (posts.lastactivitydate < postlinks.creationdate)
      inner join users
      on (badges.class = posthistory.text)
    on (postlinks.postid = users.id )
where users.reputation < posts.owneruserid;
select  
  min(
    cast(cast(null as text) as text)), 
  votes.postid, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.creationdate
from 
  votes
where votes.bountyamount is not NULL;
select  
  sum(
    cast(cast(null as money) as money)), 
  min(
    cast(cast(null as inet) as inet)), 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.id, 
  min(
    cast(cast(null as float4) as float4))
from 
  postlinks
where postlinks.id is not NULL
limit 170;
select  
  posthistory.comment, 
  posthistory.id, 
  avg(
    cast(36 as int4)), 
  posthistory.comment, 
  posthistory.postid, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posthistory.contentlicense
from 
  posthistory
where posthistory.revisionguid is NULL
limit 102;
select  
  comments.userdisplayname, 
  comments.score, 
  comments.text, 
  comments.postid, 
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as tid) as tid))
from 
  comments
where comments.userid is NULL
limit 192;
select  
  postlinks.id, 
  votes.postid, 
  min(
    cast(cast(null as money) as money)), 
  postlinks.linktypeid, 
  postlinks.postid, 
  sum(
    cast(votes.bountyamount as int8)), 
  postlinks.creationdate, 
  avg(
    cast(cast(null as float8) as float8))
from 
  votes
    inner join postlinks
    on (votes.userid is not NULL)
where votes.bountyamount is not NULL
limit 155;
select  
  posthistory.id
from 
  posthistory
where posthistory.postid is NULL
limit 71;
select  
  votes.postid, 
  posts.owneruserid, 
  min(
    cast(posthistory.id as int8)), 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.id, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.score, 
  badges.id, 
  posthistory.postid, 
  comments.text, 
  posthistory.userdisplayname, 
  badges.tagbased, 
  postlinks.linktypeid, 
  comments.id
from 
  comments
    right join posts
            right join votes
              right join postlinks
                inner join posts
                on (posts.ownerdisplayname < posts.contentlicense)
              on (votes.postid = posts.id )
            on (posts.body = posts.body)
          inner join users
          on (users.views < posts.commentcount)
        right join comments
            inner join votes
            on (comments.score <= comments.score)
          inner join posthistory
          on (posthistory.id <= posthistory.id)
        on (votes.bountyamount > votes.userid)
      inner join badges
        inner join posthistory
          left join posts
          on (posts.ownerdisplayname < posts.tags)
        on (posts.title < posthistory.userdisplayname)
      on (posts.id < votes.id)
    on (votes.votetypeid is NULL)
where votes.postid is NULL
limit 198;
select  
  users.websiteurl, 
  users.profileimageurl, 
  users.location, 
  users.creationdate, 
  users.reputation, 
  users.downvotes, 
  users.views, 
  users.downvotes, 
  users.displayname, 
  users.downvotes, 
  users.accountid, 
  users.aboutme
from 
  users
where users.creationdate is NULL
limit 83;
select  
  posts.lasteditdate, 
  comments.creationdate, 
  comments.text, 
  posts.communityowneddate, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  min(
    cast(cast(null as date) as date)), 
  posts.owneruserid, 
  comments.userdisplayname, 
  posts.lasteditordisplayname, 
  posts.lastactivitydate, 
  posts.lastactivitydate, 
  comments.id, 
  comments.id, 
  comments.id
from 
  posts
    left join comments
      inner join comments
      on (comments.creationdate = comments.creationdate)
    on (comments.postid = comments.postid)
where comments.text >= comments.userdisplayname
limit 101;
select  
  posthistory.revisionguid, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.postid is not NULL
limit 32;
select  
  badges.class, 
  badges.id, 
  badges.tagbased, 
  badges.tagbased, 
  badges.id, 
  badges.name, 
  badges.tagbased, 
  badges.date, 
  badges.id, 
  badges.id, 
  count(*)
from 
  badges
where badges.date is not NULL
limit 117;
select  
  min(
    cast(postlinks.creationdate as timestamptz)), 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.id is not NULL
limit 139;
select  
  sum(
    cast(cast(null as float8) as float8))
from 
  posthistory
          left join posts
            inner join users
            on (posts.owneruserid = users.id )
          on (posts.communityowneddate >= posts.lastactivitydate)
        inner join posthistory
        on (posthistory.revisionguid < users.profileimageurl)
      left join comments
      on (posts.score = users.accountid)
    inner join posts
        left join postlinks
            inner join votes
            on (postlinks.postid = votes.id )
          right join votes
          on (votes.postid > votes.bountyamount)
        on (posts.lasteditoruserid >= votes.id)
      left join postlinks
      on (posts.lastactivitydate >= posts.creationdate)
    on (posts.answercount < postlinks.postid)
where posthistory.contentlicense >= posts.contentlicense
limit 105;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  posthistory.comment, 
  posthistory.postid, 
  posthistory.postid, 
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.comment
from 
  posthistory
where posthistory.creationdate is NULL
limit 53;
select  
  postlinks.id
from 
  users
    inner join posthistory
      right join postlinks
      on (posthistory.contentlicense > posthistory.revisionguid)
    on (users.profileimageurl = posthistory.userdisplayname )
where postlinks.id is not NULL
limit 141;
select  
  postlinks.linktypeid
from 
  postlinks
    inner join postlinks
          right join comments
          on (postlinks.creationdate >= postlinks.creationdate)
        inner join comments
        on (comments.creationdate < comments.creationdate)
      inner join users
      on (postlinks.id = users.id)
    on (comments.id is NULL)
where users.profileimageurl is not NULL
limit 72;
select  
  posthistory.userid, 
  votes.postid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  posts.body, 
  votes.userid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  max(
    cast(postlinks.postid as int8)), 
  posthistory.userid, 
  posts.commentcount, 
  posthistory.creationdate, 
  postlinks.id, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  votes.userid, 
  avg(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.linktypeid, 
  postlinks.linktypeid
from 
  postlinks
        left join votes
        on (postlinks.creationdate > postlinks.creationdate)
      right join postlinks
          inner join posthistory
          on (posthistory.posthistorytypeid >= postlinks.linktypeid)
        inner join posts
        on (postlinks.linktypeid >= posts.acceptedanswerid)
      on (posthistory.contentlicense = posthistory.userdisplayname)
    left join postlinks
    on (postlinks.postid <= postlinks.id)
where postlinks.relatedpostid is not NULL
limit 133;
select  
  votes.votetypeid, 
  posts.contentlicense
from 
  badges
        inner join votes
        on (votes.votetypeid = votes.votetypeid)
      right join posts
        right join posts
        on (posts.viewcount < posts.posttypeid)
      on (posts.communityowneddate < posts.communityowneddate)
    inner join postlinks
    on (badges.class is not NULL)
where posts.tags > posts.body
limit 118;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as date) as date)), 
  posts.owneruserid, 
  sum(
    cast(cast(null as int2) as int2)), 
  posts.lasteditordisplayname
from 
  posts
    right join postlinks
    on (postlinks.linktypeid > posts.parentid)
where posts.lasteditdate is NULL
limit 74;
select  
  posthistory.text, 
  posthistory.postid, 
  posthistory.comment
from 
  posthistory
where posthistory.postid is NULL
limit 78;
select  
  posts.creationdate, 
  posts.posttypeid, 
  posts.acceptedanswerid, 
  posts.ownerdisplayname, 
  posts.score, 
  posts.contentlicense, 
  posts.acceptedanswerid, 
  posts.tags, 
  posts.lasteditordisplayname, 
  posts.lasteditordisplayname, 
  posts.creationdate, 
  posts.answercount, 
  posts.tags, 
  posts.commentcount, 
  posts.ownerdisplayname
from 
  posts
where posts.closeddate is not NULL
limit 162;
select  
  posts.id, 
  posts.parentid, 
  postlinks.postid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postlinks.creationdate
from 
  posts
    inner join postlinks
        inner join badges
        on (badges.name <= badges.tagbased)
      inner join comments
      on (badges.id = comments.id )
    on (postlinks.creationdate is NULL)
where posts.communityowneddate = posts.creationdate
limit 186;
select  
  posts.lasteditdate, 
  posts.ownerdisplayname, 
  posts.title, 
  avg(
    cast(cast(null as int2) as int2)), 
  posts.viewcount, 
  posts.answercount
from 
  posts
where posts.contentlicense is not NULL
limit 59;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  badges
where badges.date is NULL
limit 96;
select  
  comments.text
from 
  comments
    inner join posts
        inner join comments
        on (posts.communityowneddate >= posts.communityowneddate)
      inner join posts
            left join comments
            on (posts.owneruserid >= comments.id)
          right join postlinks
              inner join comments
              on (postlinks.postid > postlinks.linktypeid)
            left join posthistory
            on (postlinks.relatedpostid = posthistory.id)
          on (comments.postid > posts.favoritecount)
        inner join posthistory
        on (postlinks.creationdate = posts.communityowneddate)
      on (posts.lasteditordisplayname = comments.userdisplayname )
    on (posts.creationdate <= posthistory.creationdate)
where posthistory.postid is not NULL;
select  
  votes.creationdate, 
  users.lastaccessdate, 
  votes.bountyamount
from 
  votes
    right join users
    on (votes.creationdate is not NULL)
where votes.id is not NULL
limit 132;
select  
  posts.tags, 
  min(
    cast(cast(null as tid) as tid)), 
  posts.tags, 
  posts.owneruserid, 
  posts.posttypeid, 
  posts.creationdate
from 
  posts
    right join posts
    on (posts.title is not NULL)
where posts.posttypeid is NULL;
select  
  comments.score, 
  count(
    cast(users.profileimageurl as text)), 
  users.lastaccessdate, 
  comments.score, 
  postlinks.linktypeid, 
  comments.score, 
  users.reputation, 
  comments.userdisplayname, 
  users.websiteurl, 
  postlinks.relatedpostid, 
  badges.tagbased, 
  comments.postid, 
  users.accountid, 
  users.location, 
  badges.tagbased, 
  badges.id, 
  badges.userid, 
  badges.tagbased, 
  users.upvotes, 
  min(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  users
          inner join users
              left join badges
              on (badges.tagbased <= users.websiteurl)
            inner join badges
            on (users.lastaccessdate < badges.date)
          on (users.lastaccessdate < users.lastaccessdate)
        inner join comments
        on (users.downvotes = comments.id )
      inner join comments
      on (comments.postid = users.id)
    left join postlinks
    on (comments.creationdate < postlinks.creationdate)
where badges.id is NULL
limit 146;
select  
  votes.bountyamount, 
  max(
    cast(cast(null as inet) as inet)), 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.bountyamount, 
  votes.id, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.postid, 
  votes.votetypeid, 
  max(
    cast(cast(null as float4) as float4)), 
  votes.bountyamount, 
  votes.userid, 
  votes.creationdate, 
  votes.userid, 
  votes.votetypeid, 
  votes.id, 
  avg(
    cast(cast(null as float8) as float8)), 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.creationdate, 
  votes.userid, 
  votes.bountyamount
from 
  votes
where votes.userid > votes.userid
limit 151;
select  
  badges.class, 
  max(
    cast(cast(null as tid) as tid)), 
  badges.name, 
  badges.date, 
  badges.name, 
  badges.class
from 
  badges
where badges.tagbased is not NULL
limit 64;
select  
  postlinks.creationdate
from 
  postlinks
where postlinks.id is NULL;
select  
  votes.postid
from 
  votes
where votes.userid > votes.id
limit 144;
select  
  comments.userdisplayname, 
  comments.score, 
  comments.creationdate, 
  comments.postid, 
  comments.userdisplayname, 
  comments.score, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(cast(null as money) as money)), 
  comments.userdisplayname, 
  comments.userid, 
  comments.score, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.userid, 
  comments.text
from 
  comments
where comments.creationdate = comments.creationdate;
select  
  posts.acceptedanswerid, 
  votes.creationdate, 
  votes.creationdate, 
  posthistory.userid
from 
  posts
            left join users
              inner join posthistory
              on (posthistory.creationdate >= posthistory.creationdate)
            on (posts.score = posthistory.postid)
          left join votes
          on (posthistory.id < posts.favoritecount)
        right join votes
        on (users.lastaccessdate = posts.closeddate)
      left join badges
        inner join posthistory
        on (badges.name = posthistory.userdisplayname )
      on (posthistory.creationdate > posthistory.creationdate)
    right join postlinks
        inner join votes
            inner join posthistory
                inner join postlinks
                on (posthistory.posthistorytypeid = postlinks.id )
              inner join comments
                  left join users
                  on (users.id = users.upvotes)
                right join users
                  right join votes
                  on (votes.creationdate <= users.lastaccessdate)
                on (users.accountid >= comments.id)
              on (votes.creationdate >= comments.creationdate)
            on (users.aboutme < posthistory.text)
          right join badges
          on (badges.name <= posthistory.comment)
        on (postlinks.creationdate = comments.creationdate )
      left join votes
          left join postlinks
          on (votes.creationdate > postlinks.creationdate)
        right join votes
        on (votes.creationdate <= votes.creationdate)
      on (users.id = votes.id )
    on (badges.userid is not NULL)
where votes.userid is NULL
limit 70;
select  
  comments.postid, 
  comments.id, 
  comments.text, 
  comments.score, 
  comments.text, 
  comments.score, 
  comments.creationdate, 
  max(
    cast(comments.userid as int8)), 
  comments.creationdate, 
  comments.creationdate, 
  comments.userdisplayname
from 
  comments
where comments.text is not NULL
limit 119;
select  
  postlinks.linktypeid
from 
  postlinks
    left join postlinks
      inner join badges
      on (postlinks.creationdate > badges.date)
    on (postlinks.linktypeid is not NULL)
where badges.date < postlinks.creationdate
limit 155;
select  
  posthistory.id, 
  posts.favoritecount, 
  posthistory.posthistorytypeid, 
  posthistory.postid
from 
  posthistory
      inner join posts
        left join badges
            inner join badges
            on (badges.name = badges.tagbased)
          right join posts
          on (posts.ownerdisplayname >= badges.class)
        on (posts.owneruserid < badges.id)
      on (posthistory.text = badges.class )
    right join posthistory
    on (posts.body <= posts.ownerdisplayname)
where badges.name is NULL
limit 192;
select  
  posts.acceptedanswerid, 
  posthistory.comment, 
  votes.creationdate, 
  posthistory.userid, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.title
from 
  badges
        left join posthistory
              inner join postlinks
              on (posthistory.text >= posthistory.revisionguid)
            inner join posts
              left join posts
              on (posts.contentlicense >= posts.body)
            on (posts.parentid >= posts.favoritecount)
          left join votes
          on (posts.title < posthistory.comment)
        on (posts.closeddate > votes.creationdate)
      inner join posthistory
          right join posts
          on (posts.lasteditoruserid < posts.owneruserid)
        inner join posts
        on (posts.posttypeid = posts.id )
      on (posts.parentid < posts.viewcount)
    inner join votes
    on (posts.posttypeid = votes.id )
where votes.id is not NULL
limit 67;
select  
  min(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as int2) as int2)), 
  votes.id, 
  votes.postid, 
  votes.votetypeid
from 
  votes
where votes.votetypeid is not NULL;
select  
  postlinks.postid, 
  votes.userid, 
  postlinks.postid, 
  votes.bountyamount
from 
  postlinks
    inner join votes
      inner join postlinks
        left join votes
        on (postlinks.creationdate = postlinks.creationdate)
      on (votes.creationdate = votes.creationdate )
    on (votes.id is not NULL)
where votes.userid is NULL;
select  
  posthistory.userdisplayname, 
  posthistory.userid, 
  posthistory.contentlicense, 
  avg(
    cast(cast(null as float8) as float8))
from 
  posthistory
where posthistory.creationdate is NULL
limit 84;
select  
  votes.votetypeid, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.id, 
  votes.votetypeid
from 
  votes
where votes.postid is NULL;
select  
  badges.userid, 
  badges.name
from 
  badges
where badges.tagbased is NULL
limit 44;
select  
  posts.creationdate, 
  posts.ownerdisplayname, 
  min(
    cast(cast(null as oid) as oid))
from 
  posts
where posts.viewcount is NULL
limit 100;
select  
  votes.bountyamount, 
  votes.id
from 
  votes
where votes.votetypeid < votes.bountyamount
limit 131;
select  
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  postlinks
where postlinks.creationdate is not NULL;
select  
  votes.userid, 
  votes.postid
from 
  votes
where votes.creationdate is NULL
limit 113;
select  
  votes.userid, 
  votes.id
from 
  comments
        right join posts
          inner join votes
          on (votes.votetypeid = posts.acceptedanswerid)
        on (posts.communityowneddate < comments.creationdate)
      inner join badges
      on (posts.contentlicense < badges.class)
    inner join users
    on (users.downvotes is not NULL)
where posts.viewcount = comments.score;
select  
  badges.id, 
  badges.date, 
  badges.class, 
  badges.class, 
  badges.date, 
  badges.userid, 
  badges.name, 
  badges.userid, 
  badges.name
from 
  badges
where badges.date is not NULL
limit 52;
select  
  sum(
    cast(postlinks.id as int8))
from 
  postlinks
where postlinks.creationdate <= postlinks.creationdate
limit 177;
select  
  posts.title
from 
  votes
    inner join posts
    on (votes.postid = posts.id )
where posts.ownerdisplayname >= posts.contentlicense
limit 132;
select  
  votes.votetypeid, 
  votes.bountyamount, 
  votes.userid
from 
  votes
where votes.creationdate is not NULL;
select  
  users.id, 
  users.views, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.id, 
  users.profileimageurl, 
  count(
    cast(votes.bountyamount as int8)), 
  votes.bountyamount, 
  users.lastaccessdate, 
  users.lastaccessdate, 
  users.upvotes, 
  votes.bountyamount, 
  votes.bountyamount, 
  votes.id, 
  votes.bountyamount, 
  votes.bountyamount, 
  users.id, 
  users.creationdate
from 
  votes
    right join users
    on (users.location is NULL)
where votes.postid is NULL
limit 41;
select  
  comments.creationdate, 
  posthistory.postid
from 
  posthistory
    left join comments
    on (comments.id <= posthistory.id)
where posthistory.text is not NULL
limit 90;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.class, 
  badges.tagbased
from 
  badges
    inner join comments
    on (badges.tagbased is not NULL)
where comments.userdisplayname is NULL;
select  
  postlinks.postid, 
  postlinks.linktypeid, 
  posthistory.posthistorytypeid, 
  postlinks.creationdate
from 
  comments
        right join postlinks
        on (comments.text = comments.text)
      inner join postlinks
      on (comments.id = comments.score)
    left join posthistory
        inner join posthistory
        on (posthistory.userid = posthistory.postid)
      right join users
        inner join posthistory
        on (users.displayname >= posthistory.comment)
      on (posthistory.userdisplayname = posthistory.text)
    on (posthistory.userid is NULL)
where postlinks.creationdate < posthistory.creationdate;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  posts.communityowneddate, 
  posts.body, 
  posts.creationdate, 
  comments.text, 
  postlinks.id, 
  max(
    cast(posts.score as int8)), 
  max(
    cast(cast(null as float8) as float8)), 
  comments.creationdate
from 
  postlinks
    right join comments
      right join posts
      on (posts.tags >= posts.ownerdisplayname)
    on (postlinks.id is not NULL)
where posts.communityowneddate < posts.lastactivitydate
limit 105;
select  
  posthistory.text, 
  badges.class, 
  posthistory.text, 
  votes.bountyamount
from 
  votes
          left join badges
          on (badges.date <= badges.date)
        left join votes
        on (badges.name >= badges.name)
      left join postlinks
        inner join postlinks
        on (postlinks.creationdate < postlinks.creationdate)
      on (badges.date = badges.date)
    inner join posthistory
      inner join posthistory
      on (posthistory.id < posthistory.posthistorytypeid)
    on (votes.postid is NULL)
where badges.tagbased is not NULL
limit 163;
select  
  votes.userid, 
  votes.id
from 
  votes
where votes.creationdate < votes.creationdate
limit 119;
select  
  postlinks.creationdate, 
  badges.class, 
  max(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.reputation
from 
  posts
    inner join users
      left join badges
          right join votes
          on (votes.votetypeid = votes.votetypeid)
        inner join badges
                  left join badges
                  on (badges.class < badges.tagbased)
                left join posts
                on (badges.class = posts.ownerdisplayname )
              inner join postlinks
              on (posts.answercount = postlinks.id )
            left join badges
                inner join votes
                on (badges.date <= votes.creationdate)
              right join users
              on (badges.date < users.lastaccessdate)
            on (badges.date = users.creationdate )
          left join posts
          on (posts.lastactivitydate >= posts.lasteditdate)
        on (badges.class >= users.websiteurl)
      on (posts.contentlicense >= badges.class)
    on (badges.class is NULL)
where users.websiteurl is NULL
limit 98;
select  
  comments.creationdate, 
  comments.text, 
  comments.postid, 
  comments.userid, 
  min(
    cast(cast(null as tid) as tid)), 
  comments.score, 
  sum(
    cast(comments.userid as int8)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.userdisplayname
from 
  comments
where comments.score is NULL;
select  
  votes.bountyamount, 
  votes.votetypeid, 
  votes.postid, 
  votes.bountyamount, 
  posthistory.userid, 
  votes.postid, 
  posthistory.userid, 
  votes.votetypeid, 
  votes.postid, 
  votes.bountyamount, 
  votes.id
from 
  votes
      right join posthistory
      on (votes.creationdate < posthistory.creationdate)
    right join votes
    on (votes.id = votes.id )
where votes.votetypeid is NULL
limit 95;
select  
  posts.lastactivitydate, 
  posts.tags, 
  posts.owneruserid, 
  posts.favoritecount, 
  posts.title, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.creationdate, 
  posts.closeddate, 
  posts.score
from 
  posts
where posts.posttypeid is NULL
limit 159;
select  
  postlinks.relatedpostid, 
  comments.creationdate, 
  avg(
    cast(cast(null as float8) as float8))
from 
  postlinks
          inner join posts
            inner join votes
            on (votes.creationdate > posts.lasteditdate)
          on (postlinks.postid = posts.id )
        inner join comments
          right join postlinks
          on (postlinks.id = postlinks.id)
        on (posts.viewcount > posts.favoritecount)
      left join comments
        right join badges
            inner join votes
            on (badges.name > badges.tagbased)
          left join posthistory
            right join posthistory
            on (posthistory.id < posthistory.id)
          on (votes.bountyamount >= votes.votetypeid)
        on (votes.bountyamount <= badges.userid)
      on (postlinks.creationdate >= posts.communityowneddate)
    right join posthistory
    on (comments.score is not NULL)
where votes.bountyamount is NULL
limit 178;
select  
  users.upvotes, 
  comments.creationdate, 
  comments.creationdate, 
  users.id, 
  comments.userid, 
  users.aboutme, 
  users.location, 
  comments.userid, 
  comments.score, 
  users.reputation
from 
  comments
    inner join users
    on (users.id is not NULL)
where comments.userid is not NULL;
select  
  min(
    cast(badges.tagbased as text)), 
  votes.userid, 
  votes.votetypeid, 
  posts.acceptedanswerid, 
  comments.score, 
  sum(
    cast(comments.id as int8)), 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  badges
      inner join votes
        left join comments
        on (comments.creationdate > votes.creationdate)
      on (badges.name = comments.userdisplayname )
    left join posts
    on (comments.userdisplayname is NULL)
where comments.userdisplayname is not NULL
limit 58;
select  
  badges.class, 
  badges.class, 
  max(
    cast(46 as int4)), 
  badges.class, 
  badges.name, 
  min(
    cast(badges.userid as int8)), 
  badges.date
from 
  badges
where badges.date = badges.date
limit 28;
select  
  posthistory.posthistorytypeid, 
  votes.id, 
  posthistory.text, 
  votes.userid, 
  votes.postid, 
  votes.userid, 
  posts.viewcount, 
  votes.userid, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  votes.userid
from 
  votes
    right join posts
        inner join votes
        on (posts.lasteditoruserid = votes.id )
      right join posthistory
        inner join votes
        on (posthistory.revisionguid > posthistory.userdisplayname)
      on (posts.lasteditdate >= posts.lastactivitydate)
    on (votes.bountyamount is NULL)
where posts.commentcount is NULL
limit 79;
select  
  posts.communityowneddate, 
  users.location, 
  posts.lasteditordisplayname, 
  users.lastaccessdate, 
  posthistory.contentlicense, 
  posthistory.contentlicense, 
  posthistory.posthistorytypeid
from 
  users
          left join posthistory
          on (users.accountid < users.accountid)
        right join posts
        on (posts.body = posts.ownerdisplayname)
      left join postlinks
      on (users.accountid = postlinks.id )
    inner join posts
      inner join users
      on (posts.id <= posts.score)
    on (posthistory.comment is not NULL)
where postlinks.creationdate < posts.communityowneddate
limit 63;
select  
  posts.id, 
  posts.lastactivitydate, 
  users.aboutme, 
  badges.name, 
  users.aboutme
from 
  comments
    right join badges
        inner join users
          right join posts
          on (posts.lasteditoruserid >= posts.id)
        on (posts.posttypeid = users.downvotes)
      inner join comments
        inner join users
        on (users.lastaccessdate >= users.creationdate)
      on (comments.text > users.profileimageurl)
    on (posts.contentlicense is NULL)
where posts.title is NULL
limit 115;
select  
  posts.title, 
  posts.lasteditordisplayname, 
  min(
    cast(90 as int4)), 
  posts.tags, 
  posts.lasteditordisplayname, 
  posts.ownerdisplayname, 
  posts.lastactivitydate, 
  posts.lastactivitydate, 
  posts.answercount, 
  posts.ownerdisplayname, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.ownerdisplayname, 
  posts.body, 
  posts.lasteditordisplayname, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.title, 
  posts.id, 
  posts.tags, 
  posts.favoritecount, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posts.title
from 
  posts
where posts.creationdate is NULL
limit 157;
select  
  posts.score, 
  posts.parentid, 
  postlinks.relatedpostid
from 
  postlinks
    inner join posts
    on (posts.ownerdisplayname is NULL)
where posts.lasteditdate is NULL
limit 91;
select  
  users.aboutme, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  users
where users.creationdate <= users.creationdate;
select  
  posts.title, 
  postlinks.id, 
  max(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as int2) as int2))
from 
  postlinks
    inner join posts
      left join users
      on (posts.creationdate = posts.lasteditdate)
    on (posts.contentlicense is not NULL)
where users.creationdate = postlinks.creationdate;
select  
  posts.favoritecount, 
  posts.score, 
  posts.lasteditdate, 
  posts.lasteditdate, 
  posts.lastactivitydate, 
  min(
    cast(cast(null as "time") as "time"))
from 
  posts
where posts.owneruserid is NULL
limit 131;
select  
  postlinks.linktypeid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.id is NULL
limit 55;
select  
  votes.creationdate, 
  votes.postid
from 
  votes
    right join posthistory
    on (votes.userid is NULL)
where posthistory.creationdate is not NULL;
select  
  posts.title, 
  posts.contentlicense, 
  posts.contentlicense, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posts.commentcount, 
  posts.viewcount, 
  posts.parentid, 
  posts.posttypeid, 
  posts.commentcount, 
  min(
    cast(cast(null as float4) as float4)), 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posts.creationdate, 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.communityowneddate, 
  posts.viewcount, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.lasteditdate, 
  posts.contentlicense, 
  posts.title, 
  posts.creationdate, 
  posts.communityowneddate
from 
  posts
where posts.lasteditoruserid = posts.owneruserid
limit 156;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  votes.postid, 
  votes.bountyamount
from 
  votes
where votes.bountyamount is not NULL;
select  
  votes.userid
from 
  badges
    inner join postlinks
      inner join posthistory
        inner join votes
        on (posthistory.text > posthistory.text)
      on (posthistory.creationdate <= votes.creationdate)
    on (badges.userid = posthistory.id )
where postlinks.linktypeid is NULL
limit 177;
select  
  posts.tags, 
  posts.parentid
from 
  posts
where posts.commentcount >= posts.lasteditoruserid
limit 51;
select  
  votes.bountyamount
from 
  votes
where votes.userid is NULL
limit 53;
select  
  users.aboutme
from 
  postlinks
    inner join users
    on (postlinks.id is not NULL)
where users.upvotes is NULL
limit 132;
select  
  badges.name, 
  badges.id, 
  badges.tagbased, 
  badges.class, 
  badges.tagbased, 
  badges.name, 
  badges.tagbased, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.id, 
  badges.id, 
  badges.class, 
  badges.date, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  badges.tagbased, 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.userid, 
  badges.date, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  badges.userid
from 
  badges
where badges.id <= badges.id
limit 94;
select  
  users.id, 
  votes.postid
from 
  votes
      inner join comments
        inner join users
        on (users.creationdate > comments.creationdate)
      on (votes.bountyamount > comments.id)
    right join posts
      inner join postlinks
      on (posts.body <= posts.contentlicense)
    on (comments.text is NULL)
where postlinks.postid is not NULL
limit 94;
select  
  badges.userid
from 
  badges
where badges.class is not NULL;
select  
  posthistory.postid, 
  votes.bountyamount, 
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.id, 
  votes.postid, 
  posthistory.id, 
  votes.votetypeid
from 
  votes
    inner join posthistory
    on (posthistory.creationdate <= posthistory.creationdate)
where votes.votetypeid <= votes.id
limit 61;
select  
  posthistory.userdisplayname, 
  posthistory.contentlicense, 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  posthistory.userid, 
  sum(
    cast(cast(null as int2) as int2)), 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.creationdate, 
  posthistory.creationdate, 
  posthistory.postid, 
  posthistory.comment, 
  posthistory.id, 
  posthistory.comment
from 
  posthistory
where posthistory.userid > posthistory.id;
select  
  posthistory.text, 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  posthistory.text
from 
  posthistory
where posthistory.comment is NULL;
select  
  posts.closeddate
from 
  posts
where posts.owneruserid is NULL
limit 146;
select  
  max(
    cast(cast(null as int2) as int2))
from 
  posts
where posts.answercount is not NULL
limit 73;
select  
  votes.postid, 
  comments.id, 
  comments.id
from 
  posts
          left join posts
            right join posthistory
            on (posts.owneruserid > posts.score)
          on (posts.contentlicense < posthistory.revisionguid)
        inner join comments
        on (posts.acceptedanswerid < posts.owneruserid)
      left join comments
      on (comments.id = comments.id )
    right join votes
        inner join votes
        on (votes.userid >= votes.votetypeid)
      left join votes
          inner join badges
          on (votes.userid = badges.id )
        inner join badges
        on (badges.tagbased >= badges.class)
      on (votes.votetypeid = badges.id )
    on (posthistory.creationdate = badges.date )
where comments.userdisplayname is NULL;
select  
  avg(
    cast(81 as int4)), 
  comments.creationdate, 
  comments.text, 
  comments.userid, 
  comments.score, 
  posthistory.userid, 
  posthistory.comment, 
  comments.text, 
  posthistory.posthistorytypeid, 
  posthistory.comment
from 
  posthistory
    inner join comments
    on (comments.text is not NULL)
where posthistory.contentlicense is NULL;
select  
  badges.name, 
  votes.votetypeid, 
  votes.postid, 
  votes.postid
from 
  votes
            left join comments
            on (votes.creationdate <= votes.creationdate)
          right join posts
          on (comments.score = posts.favoritecount)
        right join comments
        on (comments.text < comments.text)
      left join badges
      on (comments.creationdate > votes.creationdate)
    inner join votes
        inner join postlinks
          inner join badges
          on (postlinks.relatedpostid = badges.id )
        on (postlinks.postid >= votes.bountyamount)
      inner join posts
      on (posts.lasteditdate > votes.creationdate)
    on (postlinks.id is NULL)
where postlinks.linktypeid > badges.userid
limit 25;
select  
  postlinks.id, 
  badges.id, 
  posts.title, 
  posts.id, 
  badges.class, 
  badges.date, 
  posts.title, 
  badges.name
from 
  postlinks
    inner join posts
      right join posts
        inner join badges
        on (posts.lasteditoruserid >= posts.posttypeid)
      on (posts.lastactivitydate = posts.closeddate)
    on (posts.lasteditoruserid is not NULL)
where posts.owneruserid is NULL
limit 115;
select  
  posthistory.revisionguid, 
  badges.class, 
  badges.name, 
  posthistory.userid, 
  max(
    cast(cast(null as date) as date))
from 
  users
      inner join posthistory
        inner join posthistory
        on (posthistory.id = posthistory.id )
      on (users.displayname = posthistory.userdisplayname )
    inner join badges
    on (posthistory.creationdate is not NULL)
where posthistory.posthistorytypeid is not NULL
limit 168;
select  
  badges.id, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  badges.userid, 
  votes.creationdate
from 
  badges
        inner join comments
        on (badges.date = comments.creationdate)
      inner join votes
        inner join users
        on (users.creationdate > votes.creationdate)
      on (votes.creationdate > badges.date)
    right join votes
      inner join users
      on (users.creationdate = votes.creationdate)
    on (users.creationdate is not NULL)
where badges.id is NULL;
select  
  comments.creationdate, 
  comments.creationdate, 
  max(
    cast(cast(null as int2) as int2)), 
  comments.text, 
  comments.postid, 
  comments.text, 
  comments.userid, 
  comments.text
from 
  comments
where comments.score is not NULL
limit 186;
select  
  badges.tagbased, 
  badges.userid, 
  min(
    cast(cast(null as inet) as inet)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  badges.tagbased, 
  badges.tagbased, 
  badges.name, 
  badges.class, 
  badges.name
from 
  badges
where badges.tagbased is not NULL
limit 138;
select  
  min(
    cast(posthistory.text as text)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.owneruserid, 
  posts.body, 
  posthistory.text, 
  posts.viewcount, 
  posts.creationdate, 
  max(
    cast(cast(null as "interval") as "interval")), 
  postlinks.creationdate, 
  posthistory.userid, 
  comments.userid, 
  postlinks.relatedpostid, 
  posts.ownerdisplayname, 
  max(
    cast(posthistory.contentlicense as text)), 
  comments.score, 
  posts.parentid, 
  postlinks.postid, 
  max(
    cast(cast(null as float4) as float4))
from 
  posts
            left join posts
            on (posts.body = posts.ownerdisplayname )
          inner join comments
          on (posts.communityowneddate = posts.creationdate)
        left join posthistory
          inner join posthistory
          on (posthistory.userid = posthistory.userid)
        on (posts.id > comments.postid)
      right join posts
        left join comments
        on (posts.acceptedanswerid < posts.owneruserid)
      on (posts.lastactivitydate < comments.creationdate)
    inner join postlinks
    on (posts.creationdate = posts.creationdate)
where posts.contentlicense is not NULL;
select  
  comments.score, 
  comments.id, 
  comments.userid, 
  comments.text, 
  comments.userid, 
  comments.userdisplayname
from 
  comments
where comments.score is not NULL
limit 148;
select  
  badges.class
from 
  badges
where badges.name is not NULL;
select  
  postlinks.creationdate, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.posttypeid, 
  badges.name, 
  postlinks.postid, 
  posts.closeddate, 
  postlinks.postid, 
  posts.answercount, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.answercount
from 
  badges
    inner join postlinks
          inner join posts
          on (posts.ownerdisplayname > posts.body)
        inner join posts
        on (postlinks.id = posts.id )
      inner join posthistory
      on (posts.lasteditordisplayname = posts.body)
    on (badges.class = posts.ownerdisplayname )
where posts.communityowneddate is not NULL;
select  
  sum(
    cast(cast(null as float8) as float8))
from 
  votes
    inner join badges
          left join postlinks
          on (badges.class < badges.class)
        inner join users
        on (users.creationdate <= postlinks.creationdate)
      inner join posthistory
        inner join votes
            right join posthistory
            on (votes.userid <= votes.userid)
          inner join badges
          on (badges.userid >= posthistory.userid)
        on (badges.id < posthistory.id)
      on (posthistory.creationdate = users.lastaccessdate)
    on (posthistory.postid >= votes.id)
where postlinks.relatedpostid is NULL
limit 110;
select  
  comments.userid, 
  comments.userdisplayname
from 
  comments
where comments.id <= comments.id;
select  
  users.location
from 
  users
where users.lastaccessdate < users.lastaccessdate;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.id, 
  comments.score
from 
  comments
where comments.creationdate is NULL;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.id, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.id
from 
  postlinks
where postlinks.id is NULL
limit 22;
select  
  posts.acceptedanswerid, 
  posts.score, 
  posts.viewcount, 
  posts.acceptedanswerid, 
  sum(
    cast(9 as int4)), 
  max(
    cast(cast(null as float8) as float8)), 
  posts.communityowneddate
from 
  posts
    inner join votes
    on (votes.id is not NULL)
where posts.lasteditordisplayname is NULL
limit 105;
select  
  badges.userid
from 
  badges
where badges.date is NULL;
select  
  users.downvotes, 
  users.lastaccessdate, 
  users.id, 
  users.aboutme, 
  users.displayname, 
  users.reputation, 
  users.views, 
  min(
    cast(users.upvotes as int8)), 
  users.views, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  users
where users.downvotes is not NULL
limit 139;
select  
  postlinks.creationdate, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.id is NULL
limit 43;
select  
  posts.answercount, 
  posts.lasteditoruserid, 
  posts.contentlicense, 
  posts.acceptedanswerid, 
  posts.acceptedanswerid, 
  posts.lasteditordisplayname, 
  posts.lasteditdate, 
  posts.tags, 
  posts.posttypeid, 
  min(
    cast(posts.contentlicense as text)), 
  posts.commentcount, 
  posts.creationdate, 
  posts.lasteditdate, 
  posts.ownerdisplayname, 
  posts.contentlicense
from 
  posts
where posts.lasteditoruserid is NULL
limit 72;
select  
  comments.creationdate, 
  comments.score, 
  comments.userid, 
  comments.postid, 
  badges.name, 
  badges.name, 
  min(
    cast(cast(null as tid) as tid)), 
  comments.userid
from 
  comments
    inner join badges
    on (comments.text is not NULL)
where badges.tagbased is not NULL;
select  
  badges.date, 
  postlinks.postid, 
  postlinks.postid, 
  users.id
from 
  postlinks
            left join posthistory
            on (postlinks.relatedpostid >= postlinks.postid)
          inner join badges
          on (badges.date > posthistory.creationdate)
        inner join users
          left join postlinks
          on (users.lastaccessdate <= postlinks.creationdate)
        on (posthistory.creationdate < posthistory.creationdate)
      right join postlinks
        inner join postlinks
        on (postlinks.id >= postlinks.id)
      on (postlinks.relatedpostid > postlinks.linktypeid)
    left join comments
    on (postlinks.creationdate <= users.lastaccessdate)
where postlinks.relatedpostid is NULL
limit 83;
select  
  users.views, 
  users.displayname
from 
  users
where users.profileimageurl is NULL
limit 97;
select  
  users.creationdate, 
  users.accountid, 
  users.lastaccessdate, 
  users.views, 
  users.displayname, 
  users.lastaccessdate, 
  users.websiteurl, 
  users.reputation, 
  users.creationdate, 
  users.profileimageurl, 
  users.lastaccessdate, 
  users.location, 
  users.lastaccessdate, 
  users.creationdate, 
  users.profileimageurl, 
  users.creationdate
from 
  users
where users.creationdate >= users.creationdate
limit 143;
select  
  postlinks.id, 
  posthistory.revisionguid, 
  badges.name
from 
  badges
        inner join badges
        on (badges.date <= badges.date)
      inner join posthistory
          left join posts
            right join postlinks
            on (posts.parentid > postlinks.relatedpostid)
          on (posts.owneruserid < posts.favoritecount)
        inner join postlinks
        on (posthistory.userid <= posts.score)
      on (badges.userid = postlinks.id )
    left join postlinks
    on (badges.userid is NULL)
where postlinks.linktypeid is not NULL
limit 30;
select  
  badges.class, 
  badges.name, 
  min(
    cast(cast(null as float8) as float8)), 
  max(
    cast(badges.date as timestamptz)), 
  sum(
    cast(cast(null as float4) as float4))
from 
  badges
where badges.date >= badges.date;
select  
  users.id, 
  count(
    cast(users.creationdate as timestamptz)), 
  comments.id, 
  users.websiteurl, 
  votes.id, 
  comments.creationdate, 
  votes.bountyamount, 
  count(*), 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  users
      inner join votes
        left join users
        on (users.downvotes < votes.bountyamount)
      on (users.reputation = votes.id )
    inner join comments
    on (users.creationdate is NULL)
where comments.userdisplayname <= users.location
limit 95;
select  
  votes.postid, 
  avg(
    cast(cast(null as float4) as float4))
from 
  votes
where votes.creationdate is not NULL
limit 39;
select  
  max(
    cast(cast(null as text) as text)), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  avg(
    cast(postlinks.id as int8)), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postlinks.linktypeid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  postlinks.id, 
  postlinks.creationdate, 
  avg(
    cast(postlinks.relatedpostid as int8)), 
  postlinks.creationdate
from 
  postlinks
where postlinks.postid is not NULL;
select  
  posthistory.creationdate, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.creationdate > posthistory.creationdate;
select  
  posthistory.creationdate
from 
  posthistory
where posthistory.postid < posthistory.userid;
select  
  users.lastaccessdate
from 
  comments
        right join comments
        on (comments.creationdate > comments.creationdate)
      right join users
      on (comments.userdisplayname = users.displayname )
    inner join posthistory
      inner join votes
          right join postlinks
          on (postlinks.linktypeid > votes.votetypeid)
        left join votes
        on (votes.postid < postlinks.postid)
      on (posthistory.creationdate < votes.creationdate)
    on (comments.postid is not NULL)
where votes.bountyamount is not NULL
limit 96;
select  
  users.views, 
  users.downvotes, 
  users.aboutme
from 
  comments
      inner join users
        inner join comments
            inner join badges
            on (comments.creationdate >= comments.creationdate)
          inner join posts
            left join badges
            on (posts.lastactivitydate < posts.closeddate)
          on (comments.id > posts.owneruserid)
        on (comments.postid < posts.favoritecount)
      on (comments.creationdate >= posts.creationdate)
    inner join users
    on (badges.date = users.creationdate )
where posts.answercount is NULL
limit 99;
select  
  comments.creationdate
from 
  comments
where comments.userid is NULL
limit 171;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.postid, 
  posthistory.id, 
  badges.id, 
  badges.tagbased, 
  votes.userid
from 
  posthistory
      inner join users
          right join votes
          on (users.views < votes.id)
        inner join users
          left join votes
          on (users.upvotes = votes.id )
        on (votes.creationdate <= votes.creationdate)
      on (users.views >= users.views)
    left join badges
          inner join votes
          on (badges.date > votes.creationdate)
        left join posthistory
        on (badges.name >= badges.class)
      inner join comments
      on (votes.creationdate <= badges.date)
    on (votes.id is not NULL)
where comments.creationdate <= users.creationdate
limit 63;
select  
  badges.userid, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  badges.id
from 
  badges
    left join posthistory
    on (badges.id is not NULL)
where posthistory.userid is NULL
limit 79;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  count(*), 
  comments.text, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  comments
where comments.id is not NULL
limit 132;
select  
  postlinks.id, 
  postlinks.id, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(postlinks.id as int8)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.postid > postlinks.linktypeid
limit 124;
select  
  comments.postid, 
  comments.userid, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.userid, 
  comments.postid, 
  comments.userdisplayname
from 
  comments
where comments.creationdate = comments.creationdate
limit 82;
select  
  max(
    cast(cast(null as int2) as int2))
from 
  users
      inner join users
        left join comments
            inner join comments
            on (comments.userid >= comments.postid)
          left join votes
            left join votes
            on (votes.userid < votes.id)
          on (comments.userid >= comments.score)
        on (comments.postid > votes.id)
      on (users.displayname = comments.userdisplayname)
    inner join votes
    on (comments.userdisplayname is NULL)
where users.websiteurl is not NULL;
select  
  posts.parentid, 
  posts.acceptedanswerid, 
  posts.tags, 
  users.views, 
  users.upvotes, 
  posts.score, 
  posts.contentlicense, 
  min(
    cast(cast(null as money) as money)), 
  users.websiteurl, 
  users.downvotes, 
  users.upvotes, 
  users.views, 
  posts.commentcount, 
  posts.score, 
  users.downvotes, 
  users.views, 
  posts.acceptedanswerid, 
  min(
    cast(cast(null as inet) as inet)), 
  sum(
    cast(cast(null as float4) as float4)), 
  users.downvotes, 
  posts.parentid, 
  posts.communityowneddate, 
  posts.score, 
  users.views, 
  posts.lasteditoruserid, 
  posts.answercount, 
  posts.viewcount, 
  users.aboutme, 
  posts.favoritecount, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  users
    right join posts
    on (users.displayname = posts.ownerdisplayname )
where posts.tags > users.aboutme
limit 148;
select  
  postlinks.postid, 
  postlinks.id
from 
  postlinks
where postlinks.id is not NULL;
select  
  votes.votetypeid, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  votes.bountyamount, 
  max(
    cast(cast(null as inet) as inet))
from 
  votes
where votes.creationdate is not NULL;
select  
  posts.answercount, 
  comments.score, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.id, 
  votes.votetypeid, 
  posts.id, 
  posts.communityowneddate, 
  max(
    cast(cast(null as "interval") as "interval")), 
  comments.text, 
  votes.postid, 
  votes.bountyamount, 
  comments.creationdate, 
  votes.bountyamount, 
  max(
    cast(cast(null as oid) as oid)), 
  comments.creationdate, 
  votes.postid
from 
  votes
      inner join posts
      on (votes.postid = posts.id )
    inner join comments
    on (posts.body < comments.userdisplayname)
where posts.communityowneddate > votes.creationdate
limit 129;
select  
  comments.text, 
  comments.postid, 
  comments.postid, 
  comments.postid, 
  comments.text, 
  comments.userid, 
  comments.text, 
  comments.id, 
  comments.id, 
  min(
    cast(cast(null as money) as money)), 
  comments.id, 
  comments.userid
from 
  comments
where comments.score is NULL;
select  
  users.location
from 
  users
      left join badges
      on (users.location < users.aboutme)
    inner join votes
      inner join users
      on (votes.votetypeid = users.id )
    on (votes.postid is not NULL)
where users.aboutme is not NULL;
select  
  users.aboutme, 
  users.aboutme, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.accountid, 
  users.accountid, 
  users.profileimageurl, 
  users.lastaccessdate
from 
  users
where users.upvotes is NULL
limit 133;
select  
  posthistory.userid, 
  badges.date
from 
  badges
    inner join posthistory
    on (posthistory.userid is NULL)
where badges.tagbased is not NULL
limit 100;
select  
  comments.text, 
  comments.userid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.text
from 
  comments
where comments.id is NULL
limit 153;
select  
  badges.userid, 
  badges.userid, 
  badges.date, 
  badges.id, 
  postlinks.postid, 
  min(
    cast(52 as int4)), 
  badges.date, 
  badges.id
from 
  posthistory
          left join postlinks
          on (posthistory.postid >= posthistory.id)
        left join posthistory
        on (posthistory.creationdate <= posthistory.creationdate)
      left join badges
          right join posts
          on (posts.title < posts.tags)
        inner join postlinks
          right join badges
            left join badges
            on (badges.tagbased = badges.class )
          on (badges.date >= postlinks.creationdate)
        on (badges.class > badges.class)
      on (posthistory.revisionguid = badges.class )
    inner join postlinks
    on (posthistory.contentlicense is not NULL)
where postlinks.id is not NULL
limit 52;
select  
  badges.class, 
  posts.title, 
  posthistory.revisionguid, 
  sum(
    cast(40 as int4))
from 
  posthistory
    inner join comments
        left join users
        on (users.location < users.profileimageurl)
      left join badges
          right join badges
              right join comments
              on (badges.class = badges.class)
            left join badges
            on (comments.postid <= badges.userid)
          on (badges.name <= badges.name)
        inner join posts
          right join comments
          on (comments.userid <= posts.id)
        on (badges.id > posts.score)
      on (comments.postid = comments.id )
    on (badges.name is NULL)
where posts.commentcount <= posts.commentcount;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  users.websiteurl
from 
  postlinks
        inner join postlinks
        on (postlinks.creationdate >= postlinks.creationdate)
      inner join comments
        inner join users
            inner join posthistory
              left join users
                right join postlinks
                  inner join comments
                  on (comments.postid < comments.userid)
                on (users.location > comments.text)
              on (users.lastaccessdate <= users.lastaccessdate)
            on (users.displayname <= posthistory.revisionguid)
          right join posthistory
          on (users.views < comments.id)
        on (users.aboutme <= posthistory.text)
      on (postlinks.id = users.id )
    inner join postlinks
              inner join comments
              on (comments.creationdate < comments.creationdate)
            inner join comments
                right join users
                on (users.websiteurl >= comments.text)
              inner join postlinks
              on (users.creationdate <= postlinks.creationdate)
            on (postlinks.creationdate <= postlinks.creationdate)
          right join votes
          on (comments.creationdate <= postlinks.creationdate)
        inner join badges
          inner join users
          on (badges.date = users.creationdate )
        on (users.accountid <= comments.postid)
      inner join posts
      on (users.downvotes < comments.score)
    on (postlinks.creationdate <= comments.creationdate)
where users.accountid > comments.postid;
select distinct 
  posts.contentlicense, 
  posts.favoritecount, 
  badges.date, 
  posts.lasteditoruserid, 
  posts.creationdate, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as int2) as int2)), 
  badges.id, 
  badges.class, 
  posts.posttypeid, 
  badges.userid, 
  count(
    cast(badges.class as text)), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.lasteditordisplayname
from 
  posts
    right join badges
    on (posts.ownerdisplayname = posts.title)
where badges.class < posts.body
limit 146;
select  
  users.websiteurl, 
  users.id, 
  users.id, 
  users.location, 
  users.location, 
  users.websiteurl, 
  users.downvotes, 
  users.accountid
from 
  users
where users.creationdate is not NULL
limit 67;
select  
  posts.contentlicense, 
  posts.score, 
  posts.closeddate, 
  posts.communityowneddate, 
  posts.lasteditdate
from 
  posts
where posts.body is not NULL
limit 55;
select  
  badges.date, 
  max(
    cast(badges.class as text)), 
  min(
    cast(cast(null as int2) as int2))
from 
  postlinks
    left join postlinks
        right join badges
        on (postlinks.relatedpostid < postlinks.id)
      inner join users
      on (users.aboutme > users.websiteurl)
    on (postlinks.postid is not NULL)
where postlinks.id is NULL
limit 142;
select distinct 
  comments.text
from 
  comments
where comments.userdisplayname is NULL
limit 93;
select  
  comments.userdisplayname, 
  votes.votetypeid, 
  badges.date, 
  badges.name, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  votes
      inner join badges
              right join users
                inner join comments
                on (users.location > comments.text)
              on (users.location >= users.websiteurl)
            left join votes
            on (users.views = votes.id )
          inner join postlinks
          on (users.lastaccessdate >= users.creationdate)
        left join posts
            inner join users
            on (posts.commentcount <= posts.lasteditoruserid)
          left join comments
            right join votes
              right join votes
              on (votes.creationdate = votes.creationdate)
            on (comments.creationdate < votes.creationdate)
          on (votes.creationdate >= posts.lastactivitydate)
        on (votes.creationdate < users.lastaccessdate)
      on (votes.id = users.accountid)
    inner join comments
      inner join posts
      on (comments.text = posts.ownerdisplayname )
    on (votes.creationdate is not NULL)
where votes.bountyamount is NULL;
select  
  posts.title, 
  min(
    cast(cast(null as float8) as float8)), 
  posts.creationdate, 
  posts.contentlicense, 
  posts.answercount, 
  posts.posttypeid, 
  posts.title, 
  posts.creationdate, 
  posts.title, 
  posts.lasteditordisplayname, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  posts
where posts.acceptedanswerid is not NULL
limit 148;
select  
  posts.lastactivitydate, 
  posts.owneruserid, 
  posts.lasteditdate, 
  posts.lastactivitydate
from 
  posts
where posts.tags is not NULL
limit 126;
select  
  posthistory.text, 
  posthistory.text
from 
  posthistory
where posthistory.posthistorytypeid is not NULL;
select  
  posts.acceptedanswerid, 
  posts.lastactivitydate, 
  posts.commentcount
from 
  posts
where posts.title > posts.ownerdisplayname
limit 135;
select  
  votes.userid, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.creationdate, 
  votes.userid, 
  votes.creationdate, 
  votes.userid, 
  votes.postid, 
  votes.bountyamount, 
  votes.bountyamount, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  votes
where votes.votetypeid = votes.id;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.body, 
  posts.parentid
from 
  posts
        left join comments
              inner join users
              on (comments.userdisplayname = users.displayname )
            inner join posthistory
            on (posthistory.contentlicense = users.displayname)
          inner join comments
          on (comments.creationdate > comments.creationdate)
        on (posts.title = comments.userdisplayname )
      right join posthistory
      on (posts.lasteditordisplayname = posthistory.userdisplayname )
    right join votes
    on (comments.text is not NULL)
where posts.lastactivitydate >= users.lastaccessdate
limit 129;
select  
  users.profileimageurl, 
  users.aboutme, 
  badges.class, 
  badges.date, 
  postlinks.postid, 
  users.creationdate, 
  badges.id, 
  votes.postid, 
  min(
    cast(cast(null as float8) as float8)), 
  posthistory.creationdate
from 
  users
        left join badges
                left join postlinks
                on (badges.name <= badges.tagbased)
              inner join users
              on (badges.name >= badges.name)
            right join users
            on (postlinks.linktypeid >= users.reputation)
          right join posthistory
          on (users.upvotes = posthistory.id )
        on (badges.tagbased > users.aboutme)
      inner join posthistory
      on (users.websiteurl = posthistory.userdisplayname )
    inner join votes
      right join postlinks
            right join posthistory
            on (posthistory.userid >= posthistory.userid)
          inner join badges
          on (posthistory.text = badges.class )
        left join posthistory
        on (posthistory.userdisplayname < posthistory.comment)
      on (posthistory.creationdate > posthistory.creationdate)
    on (posthistory.postid = postlinks.id )
where badges.date is not NULL
limit 185;
select  
  badges.date, 
  badges.tagbased, 
  badges.tagbased, 
  badges.class, 
  badges.name, 
  badges.userid, 
  max(
    cast(cast(null as float4) as float4)), 
  badges.class, 
  badges.name, 
  badges.date, 
  badges.id, 
  badges.class, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as float8) as float8)), 
  badges.name, 
  badges.userid, 
  badges.name
from 
  badges
where badges.id is NULL
limit 130;
select  
  posthistory.creationdate, 
  max(
    cast(cast(null as money) as money)), 
  posthistory.userid
from 
  posthistory
where posthistory.contentlicense < posthistory.userdisplayname;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as xid8) as xid8)), 
  votes.id, 
  votes.creationdate, 
  votes.votetypeid
from 
  votes
where votes.creationdate is not NULL
limit 100;
select  
  votes.votetypeid, 
  max(
    cast(99 as int4))
from 
  votes
where votes.userid is NULL;
select  
  posthistory.posthistorytypeid, 
  postlinks.linktypeid, 
  postlinks.postid, 
  badges.userid, 
  posthistory.posthistorytypeid, 
  votes.bountyamount, 
  votes.bountyamount, 
  badges.userid, 
  votes.id, 
  comments.userid, 
  votes.id, 
  posthistory.comment, 
  postlinks.postid, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  votes.bountyamount, 
  votes.creationdate, 
  sum(
    cast(24 as int4))
from 
  posthistory
                inner join postlinks
                on (posthistory.creationdate > postlinks.creationdate)
              inner join votes
              on (posthistory.id = votes.id )
            right join votes
                inner join posts
                on (votes.creationdate >= posts.lastactivitydate)
              right join votes
              on (votes.creationdate = posts.lasteditdate)
            on (posthistory.id = votes.id)
          right join badges
          on (posts.ownerdisplayname = badges.tagbased)
        inner join comments
        on (votes.votetypeid = comments.id )
      inner join postlinks
      on (votes.bountyamount = postlinks.id )
    inner join posthistory
    on (posthistory.creationdate is not NULL)
where comments.text is not NULL
limit 108;
select  
  posts.body, 
  votes.userid, 
  posts.creationdate, 
  votes.bountyamount, 
  posts.title, 
  posts.answercount, 
  avg(
    cast(4 as int4)), 
  votes.userid, 
  votes.votetypeid
from 
  posts
    inner join votes
    on (posts.score = votes.id )
where posts.closeddate <= posts.communityowneddate
limit 29;
select  
  count(*), 
  posthistory.comment, 
  posthistory.creationdate, 
  posthistory.userdisplayname, 
  comments.userid, 
  comments.text
from 
  posthistory
    right join comments
    on (posthistory.revisionguid <= posthistory.comment)
where posthistory.comment <= posthistory.comment;
select  
  badges.userid, 
  badges.tagbased, 
  comments.postid, 
  min(
    cast(cast(null as "time") as "time"))
from 
  badges
    left join comments
    on (badges.userid = comments.id )
where badges.class is not NULL;
select  
  comments.text
from 
  comments
where comments.userdisplayname = comments.userdisplayname
limit 37;
select  
  votes.bountyamount, 
  votes.id, 
  votes.postid, 
  users.websiteurl, 
  votes.postid, 
  users.creationdate, 
  votes.votetypeid, 
  users.reputation, 
  badges.class, 
  max(
    cast(cast(null as timetz) as timetz)), 
  badges.class, 
  votes.postid, 
  users.websiteurl, 
  votes.creationdate, 
  sum(
    cast(cast(null as money) as money)), 
  badges.userid, 
  votes.userid, 
  badges.userid
from 
  badges
      right join votes
          left join users
          on (users.creationdate >= votes.creationdate)
        left join badges
        on (users.upvotes = users.downvotes)
      on (users.downvotes <= votes.votetypeid)
    right join votes
    on (votes.creationdate is not NULL)
where badges.id is NULL
limit 149;
select  
  postlinks.postid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  sum(
    cast(postlinks.relatedpostid as int8))
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  posts.ownerdisplayname
from 
  posts
where posts.lasteditoruserid = posts.parentid
limit 147;
select  
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate is NULL
limit 64;
select  
  users.reputation, 
  posts.lasteditdate, 
  max(
    cast(cast(null as float4) as float4)), 
  users.downvotes, 
  posthistory.text, 
  badges.name, 
  posts.viewcount, 
  posts.communityowneddate, 
  posts.communityowneddate, 
  posts.viewcount, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  users
    right join postlinks
      right join users
              inner join votes
              on (users.lastaccessdate <= users.lastaccessdate)
            left join posts
            on (votes.creationdate <= posts.lasteditdate)
          inner join posts
            inner join badges
            on (posts.creationdate > posts.closeddate)
          on (posts.id > badges.id)
        inner join posts
              inner join users
              on (posts.lastactivitydate = users.creationdate )
            left join badges
            on (badges.date <= posts.lastactivitydate)
          inner join posthistory
          on (users.downvotes < posts.acceptedanswerid)
        on (posts.contentlicense < posthistory.userdisplayname)
      on (badges.class >= badges.tagbased)
    on (users.profileimageurl = badges.class )
where users.websiteurl >= posthistory.text
limit 96;
select  
  posts.acceptedanswerid, 
  posthistory.creationdate, 
  posthistory.id, 
  posts.communityowneddate, 
  posts.ownerdisplayname
from 
  posthistory
      right join posts
          right join votes
          on (posts.id <= posts.parentid)
        inner join posthistory
        on (posts.id = posthistory.id )
      on (posthistory.userid > posts.score)
    left join posts
    on (posts.lasteditdate <= posts.lastactivitydate)
where posts.id is NULL
limit 28;
select  
  badges.class, 
  badges.tagbased, 
  min(
    cast(badges.class as text))
from 
  postlinks
    left join votes
      inner join badges
      on (votes.postid < votes.id)
    on (postlinks.id = badges.id )
where votes.creationdate > badges.date
limit 135;
select distinct 
  posthistory.posthistorytypeid, 
  posthistory.comment, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.postid is not NULL;
select  
  users.upvotes
from 
  users
where users.websiteurl = users.aboutme
limit 144;
select  
  badges.tagbased, 
  badges.date, 
  badges.id, 
  min(
    cast(cast(null as oid) as oid)), 
  badges.name, 
  badges.date
from 
  badges
where badges.class is not NULL;
select  
  badges.name, 
  badges.date, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.id, 
  badges.date, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  badges
where badges.userid is NULL
limit 58;
select  
  users.profileimageurl, 
  users.downvotes, 
  users.reputation, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  users.creationdate, 
  max(
    cast(cast(null as int2) as int2)), 
  users.location, 
  users.downvotes
from 
  users
where users.lastaccessdate < users.creationdate
limit 148;
select  
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.id
from 
  comments
where comments.id is NULL
limit 161;
select  
  posts.lastactivitydate, 
  posts.lasteditdate, 
  posts.owneruserid, 
  posts.contentlicense, 
  posts.score, 
  posts.title, 
  posts.tags, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  posts.contentlicense, 
  posts.lastactivitydate, 
  avg(
    cast(cast(null as int2) as int2))
from 
  posts
where posts.acceptedanswerid is NULL
limit 95;
select  
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  posthistory.posthistorytypeid, 
  posthistory.comment, 
  posthistory.revisionguid
from 
  posthistory
where posthistory.revisionguid is NULL;
select  
  users.aboutme, 
  users.id, 
  users.creationdate, 
  users.aboutme, 
  users.location, 
  users.profileimageurl
from 
  users
where users.creationdate is NULL
limit 154;
select  
  users.upvotes, 
  users.websiteurl, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  users.aboutme, 
  users.downvotes, 
  users.downvotes, 
  users.id
from 
  users
where users.websiteurl <= users.profileimageurl
limit 73;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  badges.name, 
  posts.contentlicense, 
  users.profileimageurl
from 
  badges
      right join postlinks
          left join posts
          on (posts.ownerdisplayname >= posts.contentlicense)
        right join users
            inner join users
            on (users.accountid <= users.accountid)
          inner join votes
          on (users.views <= users.reputation)
        on (posts.lastactivitydate > posts.creationdate)
      on (users.websiteurl < posts.title)
    left join users
    on (badges.userid is NULL)
where badges.class is NULL;
select  
  posthistory.comment, 
  badges.userid, 
  posthistory.id, 
  badges.id, 
  min(
    cast(cast(null as oid) as oid)), 
  postlinks.postid, 
  postlinks.linktypeid, 
  max(
    cast(posthistory.userid as int8)), 
  posthistory.text, 
  badges.userid, 
  badges.date, 
  sum(
    cast(cast(null as float4) as float4)), 
  posthistory.text, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.contentlicense
from 
  badges
        left join posthistory
          left join posthistory
          on (posthistory.text >= posthistory.contentlicense)
        on (posthistory.text < posthistory.userdisplayname)
      right join posthistory
      on (posthistory.creationdate = posthistory.creationdate )
    right join postlinks
    on (posthistory.posthistorytypeid = postlinks.id )
where posthistory.comment is NULL
limit 148;
select  
  min(
    cast(posts.contentlicense as text)), 
  users.lastaccessdate, 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  postlinks
      left join users
            right join posthistory
            on (posthistory.userdisplayname >= users.displayname)
          right join votes
            left join votes
            on (votes.creationdate > votes.creationdate)
          on (users.upvotes > posthistory.postid)
        left join users
          left join posts
          on (posts.lasteditordisplayname >= users.aboutme)
        on (users.views = posts.id )
      on (votes.creationdate > posts.lastactivitydate)
    inner join comments
        inner join posts
          left join posthistory
          on (posthistory.creationdate <= posthistory.creationdate)
        on (posts.lasteditdate = posts.communityowneddate)
      right join posts
        left join posts
        on (posts.contentlicense <= posts.body)
      on (posts.communityowneddate > posts.creationdate)
    on (posts.commentcount is NULL)
where posts.answercount is not NULL
limit 52;
select  
  posts.ownerdisplayname, 
  badges.id, 
  badges.userid, 
  posts.favoritecount, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.id, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.acceptedanswerid, 
  badges.id, 
  comments.userid
from 
  badges
        inner join comments
          right join postlinks
          on (comments.score > comments.score)
        on (postlinks.relatedpostid <= postlinks.postid)
      inner join posts
      on (comments.id >= badges.id)
    right join badges
    on (posts.closeddate is NULL)
where badges.name is not NULL
limit 87;
select  
  comments.text, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.creationdate, 
  comments.userdisplayname
from 
  comments
    inner join comments
    on (comments.creationdate = comments.creationdate)
where comments.userdisplayname < comments.userdisplayname
limit 131;
select  
  postlinks.id, 
  comments.postid
from 
  posts
      inner join comments
        inner join postlinks
        on (comments.score <= comments.score)
      on (comments.creationdate >= posts.closeddate)
    inner join posthistory
    on (posts.communityowneddate is not NULL)
where posthistory.contentlicense is NULL;
select  
  posts.acceptedanswerid, 
  votes.id, 
  postlinks.id, 
  posts.id, 
  votes.postid, 
  votes.creationdate, 
  posts.viewcount, 
  postlinks.linktypeid, 
  avg(
    cast(100 as int4))
from 
  votes
      inner join votes
        inner join posthistory
          right join votes
            right join postlinks
              left join posts
              on (posts.lasteditordisplayname <= posts.lasteditordisplayname)
            on (postlinks.creationdate <= posts.communityowneddate)
          on (posthistory.postid = posts.id )
        on (votes.postid = posts.viewcount)
      on (votes.votetypeid = posts.id )
    inner join comments
    on (posthistory.contentlicense is not NULL)
where postlinks.creationdate is not NULL
limit 63;
select  
  posthistory.creationdate, 
  badges.userid, 
  posts.lastactivitydate, 
  posthistory.text, 
  posthistory.posthistorytypeid, 
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posthistory.posthistorytypeid, 
  postlinks.id, 
  badges.date, 
  posts.acceptedanswerid, 
  users.reputation, 
  badges.userid, 
  users.aboutme, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  posts.score, 
  posts.lasteditdate, 
  badges.name, 
  posts.answercount, 
  users.lastaccessdate, 
  users.lastaccessdate, 
  postlinks.linktypeid, 
  posts.id, 
  max(
    cast(14 as int4)), 
  posthistory.userid, 
  min(
    cast(cast(null as date) as date)), 
  min(
    cast(cast(null as money) as money)), 
  badges.userid, 
  posthistory.contentlicense, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  avg(
    cast(posts.commentcount as int8)), 
  max(
    cast(cast(null as float4) as float4)), 
  posts.score, 
  posthistory.userid, 
  posts.lastactivitydate, 
  posts.viewcount, 
  avg(
    cast(69 as int4)), 
  posts.closeddate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(users.creationdate as timestamptz))
from 
  posthistory
        left join posts
          inner join users
          on (posts.contentlicense <= users.websiteurl)
        on (posts.posttypeid >= posts.score)
      inner join posts
        inner join postlinks
        on (posts.communityowneddate < postlinks.creationdate)
      on (posts.lastactivitydate > posts.communityowneddate)
    inner join badges
    on (postlinks.relatedpostid is not NULL)
where users.displayname is NULL
limit 90;
select  
  posthistory.text, 
  posthistory.text, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.creationdate is NULL
limit 149;
select  
  comments.postid, 
  comments.score
from 
  comments
where comments.postid is NULL
limit 91;
select  
  avg(
    cast(74 as int4)), 
  badges.tagbased, 
  badges.userid, 
  badges.userid
from 
  badges
where badges.tagbased is not NULL
limit 89;
select  
  votes.votetypeid, 
  votes.userid
from 
  posts
      right join votes
      on (posts.closeddate > posts.lastactivitydate)
    right join votes
    on (votes.id = votes.id )
where posts.acceptedanswerid > votes.userid
limit 81;
select  
  badges.userid, 
  badges.date
from 
  badges
where badges.class >= badges.class;
select  
  comments.userid, 
  comments.text
from 
  comments
where comments.id is not NULL;
select  
  users.profileimageurl, 
  postlinks.relatedpostid, 
  votes.id, 
  min(
    cast(posthistory.userdisplayname as text)), 
  votes.creationdate, 
  badges.date, 
  users.aboutme, 
  users.reputation, 
  comments.userdisplayname
from 
  votes
      right join users
          left join users
          on (users.websiteurl > users.profileimageurl)
        left join posthistory
            inner join comments
              inner join badges
              on (badges.tagbased = comments.userdisplayname)
            on (posthistory.userid < posthistory.id)
          inner join comments
              left join votes
              on (votes.creationdate > comments.creationdate)
            inner join posts
            on (posts.tags <= posts.contentlicense)
          on (comments.userdisplayname < posts.ownerdisplayname)
        on (badges.class > posthistory.contentlicense)
      on (votes.id = users.id )
    right join postlinks
    on (votes.creationdate is not NULL)
where badges.class < posts.contentlicense
limit 79;
select  
  votes.creationdate, 
  postlinks.postid, 
  votes.creationdate, 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
    right join votes
        right join users
        on (users.location = users.aboutme)
      right join posthistory
        right join posthistory
          inner join users
          on (posthistory.creationdate < users.lastaccessdate)
        on (posthistory.postid = users.views)
      on (users.creationdate < posthistory.creationdate)
    on (users.displayname is NULL)
where posthistory.userid is NULL
limit 83;
select  
  postlinks.creationdate
from 
  postlinks
where postlinks.relatedpostid is NULL;
select  
  postlinks.linktypeid, 
  users.websiteurl, 
  posthistory.userdisplayname, 
  posthistory.posthistorytypeid
from 
  postlinks
            inner join posthistory
            on (posthistory.text >= posthistory.userdisplayname)
          inner join badges
            inner join postlinks
            on (badges.name < badges.tagbased)
          on (badges.name <= posthistory.revisionguid)
        inner join posthistory
          left join users
          on (users.views <= posthistory.postid)
        on (postlinks.creationdate < users.lastaccessdate)
      inner join comments
      on (users.accountid < postlinks.postid)
    inner join postlinks
    on (users.upvotes is NULL)
where badges.date <= posthistory.creationdate
limit 85;
select  
  users.downvotes, 
  users.lastaccessdate, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.location
from 
  users
where users.accountid is not NULL
limit 100;
select  
  users.lastaccessdate
from 
  postlinks
    right join users
    on (postlinks.postid is NULL)
where postlinks.id is not NULL
limit 82;
select  
  badges.class, 
  badges.id, 
  badges.id
from 
  badges
    inner join badges
    on (badges.id = badges.id )
where badges.name is NULL
limit 78;
select  
  posts.parentid, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as date) as date)), 
  posthistory.userid, 
  sum(
    cast(16 as int4)), 
  votes.bountyamount, 
  votes.votetypeid, 
  posts.commentcount, 
  posts.viewcount, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  comments.postid, 
  avg(
    cast(cast(null as int2) as int2)), 
  posts.creationdate, 
  posts.lasteditordisplayname, 
  postlinks.postid, 
  votes.id, 
  postlinks.postid
from 
  postlinks
          left join votes
          on (postlinks.relatedpostid = votes.id )
        inner join posts
          inner join postlinks
          on (postlinks.id <= posts.answercount)
        on (posts.body >= posts.body)
      inner join posts
        inner join comments
              left join postlinks
                inner join posts
                on (postlinks.id > posts.id)
              on (comments.userid <= posts.owneruserid)
            inner join votes
            on (postlinks.linktypeid = votes.id )
          inner join comments
          on (votes.postid > comments.userid)
        on (posts.parentid >= comments.userid)
      on (posts.creationdate = posts.creationdate)
    inner join posthistory
        right join votes
        on (posthistory.userdisplayname < posthistory.userdisplayname)
      right join votes
      on (votes.creationdate = votes.creationdate )
    on (postlinks.creationdate is NULL)
where votes.id is NULL;
select  
  posts.contentlicense
from 
  posts
where posts.acceptedanswerid is NULL
limit 93;
select  
  users.displayname, 
  min(
    cast(cast(null as tid) as tid))
from 
  users
where users.downvotes > users.downvotes
limit 114;
select  
  users.reputation, 
  users.id, 
  users.accountid
from 
  users
where users.creationdate is NULL
limit 121;
select  
  badges.tagbased, 
  badges.name, 
  badges.class, 
  comments.userid, 
  comments.postid, 
  badges.class, 
  badges.tagbased, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.userdisplayname, 
  comments.creationdate, 
  comments.score, 
  comments.creationdate, 
  badges.tagbased, 
  badges.class
from 
  badges
    right join comments
    on (comments.creationdate is NULL)
where badges.tagbased is not NULL
limit 150;
select  
  max(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as float8) as float8)), 
  posthistory.id, 
  min(
    cast(cast(null as float8) as float8))
from 
  comments
      inner join posthistory
        left join votes
        on (votes.bountyamount > votes.postid)
      on (comments.creationdate = posthistory.creationdate )
    right join votes
      right join postlinks
        right join comments
        on (comments.text < comments.userdisplayname)
      on (postlinks.creationdate <= votes.creationdate)
    on (posthistory.id is not NULL)
where comments.id is not NULL
limit 136;
select  
  posthistory.comment, 
  votes.bountyamount, 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  users
    inner join comments
      left join votes
          left join posthistory
          on (posthistory.userid >= posthistory.postid)
        inner join votes
        on (votes.id < posthistory.postid)
      on (comments.creationdate < comments.creationdate)
    on (votes.postid is NULL)
where comments.id is not NULL
limit 101;
select  
  postlinks.relatedpostid, 
  count(
    cast(badges.date as timestamptz)), 
  postlinks.creationdate, 
  badges.userid
from 
  badges
    right join postlinks
    on (badges.userid is NULL)
where badges.userid is NULL
limit 51;
select  
  users.profileimageurl, 
  users.displayname
from 
  badges
    right join users
    on (users.creationdate is not NULL)
where users.creationdate is not NULL;
select  
  max(
    cast(postlinks.creationdate as timestamptz)), 
  posthistory.id, 
  posthistory.comment, 
  posts.title, 
  votes.creationdate, 
  votes.userid, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.userid
from 
  postlinks
      inner join postlinks
            right join postlinks
              right join badges
              on (badges.class >= badges.name)
            on (badges.name < badges.name)
          inner join users
            left join users
              right join votes
                inner join votes
                on (votes.creationdate = votes.creationdate)
              on (users.creationdate = votes.creationdate )
            on (users.downvotes < votes.id)
          on (users.creationdate >= users.creationdate)
        inner join postlinks
            left join comments
              right join comments
              on (comments.score <= comments.id)
            on (comments.text >= comments.text)
          left join posthistory
              inner join postlinks
                inner join posts
                on (posts.posttypeid < posts.favoritecount)
              on (posts.score >= posthistory.postid)
            left join users
            on (posthistory.text = users.displayname )
          on (users.creationdate <= posts.communityowneddate)
        on (posts.communityowneddate = users.creationdate)
      on (users.views > comments.id)
    inner join comments
    on (comments.postid is not NULL)
where comments.creationdate > votes.creationdate
limit 79;
select  
  avg(
    cast(84 as int4))
from 
  posthistory
where posthistory.id is not NULL
limit 112;
select  
  avg(
    cast(84 as int4)), 
  badges.id, 
  min(
    cast(cast(null as float8) as float8)), 
  posthistory.comment, 
  badges.userid, 
  badges.userid, 
  comments.score, 
  comments.postid, 
  posthistory.text, 
  postlinks.postid, 
  badges.userid
from 
  postlinks
    right join badges
          inner join comments
          on (comments.creationdate < badges.date)
        left join badges
          right join posthistory
          on (badges.date > posthistory.creationdate)
        on (badges.date >= badges.date)
      inner join posthistory
      on (badges.id = comments.userid)
    on (posthistory.creationdate < badges.date)
where badges.name is not NULL
limit 122;
select  
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.id, 
  max(
    cast(cast(null as float8) as float8)), 
  postlinks.id, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.creationdate is not NULL;
select  
  posts.lasteditoruserid, 
  posts.closeddate
from 
  posts
where posts.score = posts.commentcount
limit 186;
select  
  badges.class, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.userdisplayname
from 
  users
      left join votes
          left join users
            right join comments
                left join posts
                on (posts.lasteditordisplayname = posts.ownerdisplayname)
              right join comments
              on (posts.creationdate <= posts.communityowneddate)
            on (users.accountid > comments.userid)
          on (posts.lastactivitydate <= posts.lasteditdate)
        left join votes
          inner join badges
          on (badges.name <= badges.class)
        on (posts.acceptedanswerid < posts.favoritecount)
      on (votes.votetypeid = users.id)
    left join posthistory
    on (posthistory.userdisplayname is NULL)
where users.creationdate is NULL
limit 86;
select  
  comments.creationdate, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  comments
where comments.text <= comments.text
limit 47;
select  
  posthistory.contentlicense, 
  badges.class, 
  badges.tagbased
from 
  users
        inner join postlinks
            left join badges
              inner join posthistory
                inner join badges
                on (posthistory.userdisplayname > badges.tagbased)
              on (posthistory.id = posthistory.posthistorytypeid)
            on (badges.date <= badges.date)
          inner join postlinks
          on (postlinks.creationdate <= posthistory.creationdate)
        on (badges.class < posthistory.userdisplayname)
      left join posts
      on (postlinks.linktypeid = posts.id )
    left join badges
    on (users.profileimageurl <= badges.tagbased)
where badges.class is not NULL
limit 182;
select  
  postlinks.postid, 
  min(
    cast(cast(null as float8) as float8)), 
  posthistory.revisionguid
from 
  postlinks
    left join postlinks
      right join postlinks
        inner join posthistory
        on (postlinks.postid < posthistory.posthistorytypeid)
      on (posthistory.creationdate <= postlinks.creationdate)
    on (postlinks.creationdate = postlinks.creationdate)
where postlinks.creationdate is not NULL
limit 102;
select  
  votes.creationdate, 
  votes.userid
from 
  votes
where votes.votetypeid is NULL
limit 181;
select  
  posts.body
from 
  postlinks
        left join comments
        on (postlinks.linktypeid = postlinks.id)
      inner join posts
          inner join posthistory
            right join comments
              right join postlinks
              on (comments.userdisplayname <= comments.userdisplayname)
            on (posthistory.comment > posthistory.userdisplayname)
          on (posts.title > posthistory.contentlicense)
        inner join posthistory
        on (posts.id < posts.acceptedanswerid)
      on (posthistory.creationdate > posts.lasteditdate)
    left join badges
    on (posthistory.contentlicense <= posthistory.contentlicense)
where postlinks.relatedpostid is not NULL;
select  
  comments.id, 
  min(
    cast(votes.creationdate as timestamptz)), 
  min(
    cast(cast(null as oid) as oid)), 
  comments.userid, 
  votes.votetypeid, 
  comments.userid, 
  votes.id, 
  count(*), 
  votes.id, 
  votes.id, 
  votes.creationdate
from 
  comments
    inner join votes
    on (comments.userid = votes.id )
where votes.bountyamount is not NULL
limit 100;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  posthistory.posthistorytypeid, 
  postlinks.relatedpostid
from 
  votes
    right join postlinks
      inner join posts
        right join posthistory
            right join users
              inner join postlinks
              on (postlinks.linktypeid > postlinks.linktypeid)
            on (posthistory.creationdate <= users.lastaccessdate)
          inner join postlinks
          on (users.id = postlinks.id )
        on (postlinks.creationdate >= posts.lasteditdate)
      on (posthistory.posthistorytypeid > posts.score)
    on (postlinks.postid is NULL)
where posts.contentlicense is not NULL
limit 128;
select  
  users.id, 
  postlinks.linktypeid, 
  votes.creationdate, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.tags, 
  users.location, 
  users.lastaccessdate, 
  postlinks.relatedpostid, 
  users.views
from 
  users
          left join comments
            right join posts
            on (posts.answercount >= posts.acceptedanswerid)
          on (users.websiteurl <= users.location)
        right join votes
        on (posts.contentlicense >= users.profileimageurl)
      left join badges
          inner join postlinks
            inner join postlinks
            on (postlinks.creationdate > postlinks.creationdate)
          on (badges.name < badges.name)
        left join postlinks
        on (postlinks.linktypeid = postlinks.linktypeid)
      on (users.profileimageurl >= users.websiteurl)
    right join users
    on (posts.score is not NULL)
where comments.text is NULL;
select  
  comments.creationdate, 
  comments.userdisplayname
from 
  comments
where comments.postid is not NULL;
select  
  max(
    cast(posts.viewcount as int8)), 
  posts.title, 
  posts.lasteditoruserid, 
  posts.closeddate
from 
  posts
where posts.acceptedanswerid is NULL
limit 29;
select  
  posts.contentlicense
from 
  posts
where posts.score is NULL
limit 116;
select  
  users.location, 
  users.accountid, 
  max(
    cast(cast(null as tid) as tid)), 
  max(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as float4) as float4)), 
  users.downvotes, 
  users.accountid, 
  min(
    cast(cast(null as int2) as int2)), 
  users.id, 
  users.location, 
  users.accountid, 
  users.id, 
  users.displayname, 
  users.views, 
  users.profileimageurl, 
  users.upvotes, 
  users.views, 
  users.displayname, 
  users.downvotes, 
  min(
    cast(cast(null as inet) as inet)), 
  users.reputation
from 
  users
where users.views is NULL
limit 84;
select  
  users.profileimageurl, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  postlinks.creationdate
from 
  users
          inner join postlinks
          on (postlinks.creationdate > users.lastaccessdate)
        left join posts
        on (users.websiteurl >= users.location)
      left join posts
        inner join users
        on (posts.lasteditdate > posts.closeddate)
      on (posts.answercount > posts.answercount)
    right join users
      left join comments
      on (users.location < users.displayname)
    on (postlinks.relatedpostid is NULL)
where users.views < users.downvotes;
select  
  votes.bountyamount, 
  posts.title, 
  votes.votetypeid
from 
  posts
    left join users
        left join votes
        on (users.creationdate = votes.creationdate )
      left join users
      on (users.aboutme = users.websiteurl)
    on (users.displayname >= posts.body)
where posts.tags is not NULL
limit 158;
select  
  votes.creationdate, 
  votes.postid
from 
  votes
      left join badges
        inner join comments
        on (comments.id <= comments.score)
      on (comments.userid >= badges.id)
    inner join comments
      right join badges
        inner join votes
        on (badges.date > votes.creationdate)
      on (badges.tagbased >= comments.userdisplayname)
    on (badges.date is not NULL)
where votes.bountyamount is not NULL;
select  
  users.lastaccessdate, 
  comments.id, 
  posthistory.creationdate, 
  comments.userdisplayname, 
  votes.creationdate
from 
  postlinks
      inner join votes
            inner join posthistory
            on (votes.userid >= votes.bountyamount)
          inner join badges
          on (posthistory.creationdate >= votes.creationdate)
        inner join posts
          inner join posthistory
            right join comments
            on (comments.text > posthistory.comment)
          on (posts.communityowneddate = comments.creationdate )
        on (votes.bountyamount = posthistory.id )
      on (postlinks.postid < posthistory.id)
    inner join users
      right join postlinks
            left join badges
              inner join comments
              on (comments.creationdate < badges.date)
            on (comments.userdisplayname = badges.tagbased)
          inner join postlinks
          on (comments.userdisplayname > badges.name)
        right join posts
        on (comments.creationdate = posts.creationdate )
      on (postlinks.creationdate < postlinks.creationdate)
    on (posts.viewcount is not NULL)
where comments.postid is not NULL
limit 57;
select  
  posthistory.contentlicense
from 
  postlinks
    left join posthistory
      right join comments
        left join posthistory
        on (comments.text <= comments.userdisplayname)
      on (posthistory.postid < comments.score)
    on (comments.id is not NULL)
where comments.userid is not NULL
limit 26;
select  
  votes.id, 
  votes.creationdate, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  votes
    right join comments
    on (votes.creationdate = comments.creationdate )
where votes.bountyamount is NULL;
select  
  users.location, 
  users.location, 
  users.views
from 
  users
where users.profileimageurl is NULL
limit 118;
select  
  users.websiteurl, 
  votes.postid, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.views, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.userdisplayname, 
  votes.bountyamount, 
  users.aboutme, 
  posts.favoritecount
from 
  postlinks
      right join posthistory
          left join posthistory
          on (posthistory.creationdate >= posthistory.creationdate)
        left join posts
          inner join users
            right join votes
              inner join postlinks
                left join users
                on (postlinks.linktypeid = users.id )
              on (users.location <= users.location)
            on (users.profileimageurl = users.aboutme)
          on (votes.creationdate > postlinks.creationdate)
        on (users.aboutme >= users.displayname)
      on (postlinks.creationdate = posthistory.creationdate )
    right join users
    on (votes.postid is not NULL)
where postlinks.relatedpostid >= posts.id
limit 185;
select  
  posts.contentlicense, 
  posts.title, 
  min(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  posts.lasteditordisplayname, 
  posts.commentcount, 
  posts.ownerdisplayname, 
  posts.acceptedanswerid
from 
  posts
where posts.answercount is not NULL;
select  
  users.downvotes, 
  badges.userid
from 
  users
    left join badges
    on (users.downvotes > badges.id)
where users.websiteurl is NULL;
select  
  comments.score, 
  comments.postid, 
  comments.text
from 
  comments
where comments.userid <= comments.score
limit 37;
select  
  max(
    cast(cast(null as oid) as oid)), 
  badges.userid, 
  votes.userid, 
  comments.userid, 
  users.views, 
  max(
    cast(cast(null as "interval") as "interval")), 
  comments.text, 
  badges.class, 
  votes.id, 
  comments.creationdate, 
  votes.id, 
  users.displayname, 
  votes.userid, 
  votes.creationdate, 
  votes.postid
from 
  users
    inner join votes
        right join comments
        on (comments.creationdate > comments.creationdate)
      inner join badges
        inner join votes
        on (votes.postid < votes.votetypeid)
      on (badges.date >= votes.creationdate)
    on (comments.postid = comments.postid)
where badges.userid is NULL
limit 75;
select  
  users.websiteurl, 
  users.downvotes
from 
  users
    left join postlinks
    on (postlinks.relatedpostid is not NULL)
where postlinks.linktypeid is not NULL
limit 116;
select  
  badges.class, 
  badges.id, 
  min(
    cast(cast(null as tid) as tid)), 
  badges.name
from 
  badges
where badges.date is not NULL
limit 82;
select  
  posts.tags, 
  posts.viewcount, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  posts
    inner join votes
    on (posts.closeddate = votes.creationdate )
where posts.title is NULL
limit 30;
select  
  comments.id, 
  comments.text, 
  comments.creationdate, 
  avg(
    cast(cast(null as float8) as float8)), 
  comments.text, 
  comments.userdisplayname, 
  comments.userid, 
  comments.text, 
  comments.id, 
  comments.text, 
  comments.text, 
  comments.text, 
  comments.id, 
  min(
    cast(comments.text as text)), 
  comments.creationdate, 
  comments.text, 
  comments.userid, 
  comments.userdisplayname, 
  comments.postid, 
  comments.postid, 
  comments.id, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.userdisplayname, 
  max(
    cast(cast(null as tid) as tid)), 
  comments.score, 
  comments.score, 
  comments.postid, 
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as date) as date))
from 
  comments
where comments.id is not NULL
limit 124;
select  
  badges.class
from 
  postlinks
      right join posts
      on (postlinks.linktypeid = posts.id )
    left join badges
        inner join postlinks
          left join votes
          on (postlinks.linktypeid <= postlinks.postid)
        on (badges.userid = postlinks.id )
      left join posthistory
        inner join posts
          inner join posts
          on (posts.contentlicense >= posts.title)
        on (posthistory.text >= posthistory.userdisplayname)
      on (badges.tagbased = posts.ownerdisplayname )
    on (posthistory.comment is not NULL)
where posthistory.userid is not NULL
limit 85;
select  
  posthistory.postid
from 
  posthistory
        inner join posthistory
        on (posthistory.text = posthistory.userdisplayname )
      left join users
      on (posthistory.text = users.displayname )
    inner join comments
      left join posthistory
      on (posthistory.creationdate <= posthistory.creationdate)
    on (posthistory.postid is NULL)
where posthistory.contentlicense is NULL
limit 67;
select  
  max(
    cast(cast(null as text) as text)), 
  votes.id
from 
  votes
where votes.postid is not NULL
limit 35;
select  
  postlinks.linktypeid, 
  max(
    cast(comments.userid as int8)), 
  posts.lasteditoruserid, 
  posts.lastactivitydate, 
  comments.userid, 
  users.accountid, 
  posts.owneruserid, 
  comments.id, 
  comments.score, 
  users.creationdate
from 
  posthistory
      inner join comments
        right join users
              inner join comments
              on (comments.userdisplayname >= users.displayname)
            right join votes
              left join posts
              on (posts.answercount <= votes.userid)
            on (comments.creationdate >= posts.lasteditdate)
          right join postlinks
          on (votes.votetypeid <= users.reputation)
        on (posts.communityowneddate >= posts.creationdate)
      on (comments.id >= posts.viewcount)
    inner join comments
    on (users.aboutme = comments.userdisplayname )
where postlinks.postid is NULL
limit 133;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posts.lasteditoruserid
from 
  users
      right join posts
      on (users.aboutme = posts.ownerdisplayname )
    inner join badges
      inner join postlinks
      on (badges.date >= badges.date)
    on (users.location is NULL)
where badges.tagbased is NULL;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  votes
where votes.postid is NULL
limit 64;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  posthistory.text
from 
  posthistory
where posthistory.revisionguid < posthistory.userdisplayname
limit 24;
select  
  postlinks.postid, 
  badges.name
from 
  badges
    right join badges
      left join postlinks
      on (postlinks.relatedpostid > badges.id)
    on (badges.date is NULL)
where badges.id is not NULL
limit 58;
select  
  postlinks.postid, 
  postlinks.linktypeid, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.creationdate
from 
  postlinks
where postlinks.id is not NULL
limit 163;
select  
  badges.date
from 
  badges
where badges.class >= badges.tagbased
limit 109;
select  
  users.lastaccessdate, 
  users.websiteurl, 
  users.profileimageurl, 
  users.aboutme, 
  users.lastaccessdate, 
  users.creationdate, 
  users.lastaccessdate, 
  users.id, 
  min(
    cast(cast(null as float8) as float8)), 
  users.aboutme
from 
  users
where users.views is not NULL
limit 33;
select  
  posts.viewcount, 
  sum(
    cast(posts.posttypeid as int8)), 
  posts.closeddate, 
  posts.contentlicense, 
  posts.id, 
  posts.communityowneddate
from 
  posts
where posts.commentcount = posts.commentcount
limit 10;
select  
  votes.creationdate, 
  votes.userid, 
  count(
    cast(votes.creationdate as timestamptz)), 
  votes.bountyamount
from 
  votes
where votes.creationdate is NULL;
select  
  badges.userid, 
  posts.favoritecount
from 
  votes
          inner join posts
            inner join votes
            on (posts.parentid <= votes.votetypeid)
          on (posts.contentlicense > posts.tags)
        left join posts
        on (posts.closeddate < posts.lastactivitydate)
      right join badges
      on (posts.lasteditdate > posts.creationdate)
    inner join users
    on (votes.bountyamount is not NULL)
where posts.lastactivitydate is NULL
limit 42;
select  
  posts.ownerdisplayname, 
  min(
    cast(cast(null as date) as date)), 
  votes.id, 
  max(
    cast(cast(null as float8) as float8)), 
  badges.name, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.viewcount
from 
  posts
    inner join votes
          right join badges
          on (badges.name >= badges.class)
        left join posts
            right join votes
            on (posts.closeddate = posts.lastactivitydate)
          inner join posthistory
          on (posthistory.revisionguid >= posts.tags)
        on (posthistory.comment <= posts.tags)
      inner join postlinks
        left join users
        on (postlinks.postid = users.id )
      on (users.lastaccessdate = badges.date)
    on (users.creationdate <= postlinks.creationdate)
where votes.bountyamount is NULL
limit 57;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  posthistory.comment, 
  posthistory.postid, 
  posthistory.userdisplayname, 
  max(
    cast(cast(null as float4) as float4)), 
  max(
    cast(32 as int4)), 
  sum(
    cast(cast(null as float8) as float8)), 
  posthistory.id, 
  posthistory.comment, 
  posthistory.posthistorytypeid, 
  posthistory.contentlicense, 
  posthistory.contentlicense, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.contentlicense is not NULL
limit 185;
select  
  comments.id, 
  comments.userdisplayname, 
  comments.id, 
  comments.postid, 
  comments.score, 
  comments.userdisplayname, 
  comments.id, 
  comments.score, 
  comments.score, 
  comments.id, 
  comments.text, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  comments.text, 
  comments.userdisplayname, 
  comments.userdisplayname
from 
  comments
where comments.score is not NULL;
select  
  comments.userid, 
  comments.userid, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
    inner join badges
    on (comments.userdisplayname = badges.class )
where badges.userid is NULL;
select  
  max(
    cast(cast(null as int2) as int2)), 
  postlinks.creationdate, 
  posthistory.comment, 
  posthistory.revisionguid, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  sum(
    cast(comments.score as int8)), 
  max(
    cast(cast(null as float4) as float4)), 
  postlinks.relatedpostid, 
  posthistory.comment
from 
  postlinks
    inner join comments
        right join comments
        on (comments.userdisplayname <= comments.text)
      right join comments
        inner join posthistory
            right join postlinks
            on (posthistory.postid = postlinks.postid)
          left join posthistory
          on (posthistory.creationdate <= postlinks.creationdate)
        on (posthistory.posthistorytypeid > posthistory.userid)
      on (comments.userdisplayname = comments.userdisplayname )
    on (comments.userdisplayname is not NULL)
where comments.postid is not NULL
limit 183;
select  
  avg(
    cast(postlinks.relatedpostid as int8)), 
  posthistory.postid, 
  posthistory.userdisplayname, 
  posts.title, 
  posthistory.text
from 
  comments
        inner join posts
            right join postlinks
            on (posts.acceptedanswerid = postlinks.id)
          inner join votes
          on (posts.communityowneddate = votes.creationdate )
        on (posts.closeddate <= comments.creationdate)
      inner join posthistory
        right join posthistory
        on (posthistory.posthistorytypeid < posthistory.postid)
      on (posts.creationdate = posts.lasteditdate)
    left join comments
    on (comments.userdisplayname = posthistory.revisionguid)
where comments.userdisplayname is not NULL;
select  
  count(
    cast(users.reputation as int8))
from 
  users
where users.aboutme is not NULL
limit 130;
select  
  posthistory.id, 
  posthistory.id, 
  posthistory.id, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.text, 
  posthistory.contentlicense, 
  posthistory.creationdate, 
  posthistory.creationdate, 
  posthistory.id, 
  posthistory.comment, 
  posthistory.postid, 
  max(
    cast(cast(null as oid) as oid)), 
  posthistory.posthistorytypeid, 
  posthistory.revisionguid, 
  posthistory.userdisplayname, 
  max(
    cast(cast(null as int2) as int2)), 
  posthistory.creationdate, 
  posthistory.revisionguid, 
  posthistory.id
from 
  posthistory
where posthistory.postid is NULL;
select  
  users.displayname, 
  comments.postid, 
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.postid, 
  comments.userid, 
  comments.userdisplayname, 
  comments.text, 
  posthistory.userdisplayname, 
  users.id, 
  comments.text, 
  max(
    cast(cast(null as timetz) as timetz)), 
  posthistory.id
from 
  posthistory
    inner join users
      inner join comments
      on (users.lastaccessdate = comments.creationdate )
    on (posthistory.userid <= posthistory.userid)
where posthistory.comment is NULL
limit 136;
select  
  users.displayname, 
  users.websiteurl, 
  users.downvotes, 
  users.websiteurl, 
  users.upvotes, 
  users.creationdate, 
  users.creationdate, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  users.lastaccessdate, 
  users.location, 
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  users
where users.creationdate >= users.lastaccessdate
limit 133;
select  
  posts.communityowneddate, 
  posts.answercount, 
  comments.id, 
  comments.text, 
  min(
    cast(cast(null as xid8) as xid8)), 
  posts.lastactivitydate
from 
  comments
      inner join posts
        left join votes
        on (votes.bountyamount >= posts.favoritecount)
      on (comments.userid > posts.posttypeid)
    left join posts
    on (comments.postid is not NULL)
where posts.communityowneddate < posts.closeddate;
select  
  posts.posttypeid, 
  posts.answercount
from 
  postlinks
    right join posts
    on (posts.contentlicense is not NULL)
where posts.body >= posts.body;
select  
  comments.postid, 
  max(
    cast(cast(null as float8) as float8)), 
  comments.text, 
  comments.postid, 
  comments.score
from 
  comments
where comments.id is not NULL;
select  
  postlinks.creationdate, 
  min(
    cast(cast(null as int2) as int2)), 
  postlinks.linktypeid, 
  max(
    cast(cast(null as inet) as inet)), 
  users.websiteurl, 
  min(
    cast(users.lastaccessdate as timestamptz)), 
  users.upvotes, 
  users.id
from 
  users
    inner join posthistory
        left join postlinks
          inner join postlinks
            inner join users
              inner join votes
              on (users.upvotes = users.downvotes)
            on (users.downvotes <= users.accountid)
          on (postlinks.postid = postlinks.id )
        on (users.id = users.views)
      inner join posts
      on (posthistory.id = posts.id )
    on (users.downvotes = posthistory.id )
where users.profileimageurl > posthistory.contentlicense;
select  
  posts.favoritecount, 
  badges.class, 
  badges.date, 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.creationdate, 
  badges.userid, 
  users.views, 
  badges.class, 
  votes.postid
from 
  badges
          inner join users
          on (users.profileimageurl = users.location)
        left join badges
          left join posts
            inner join users
            on (posts.tags = posts.tags)
          on (badges.id = posts.id )
        on (posts.closeddate <= badges.date)
      inner join badges
      on (users.creationdate >= badges.date)
    left join votes
    on (badges.date is NULL)
where users.lastaccessdate > users.lastaccessdate
limit 125;
select  
  comments.id, 
  users.creationdate, 
  postlinks.creationdate, 
  comments.userid, 
  postlinks.creationdate, 
  comments.text, 
  comments.userid, 
  badges.class, 
  sum(
    cast(3 as int4)), 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(users.location as text)), 
  sum(
    cast(cast(null as money) as money)), 
  users.reputation
from 
  postlinks
      inner join badges
      on (badges.id > badges.userid)
    left join users
      inner join comments
      on (users.aboutme >= users.aboutme)
    on (postlinks.relatedpostid = comments.id )
where comments.text is not NULL
limit 146;
select  
  votes.id, 
  comments.text, 
  posthistory.posthistorytypeid, 
  comments.creationdate, 
  min(
    cast(posts.body as text)), 
  posthistory.creationdate, 
  badges.date, 
  badges.name, 
  users.id, 
  comments.text, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.name, 
  badges.id, 
  posts.contentlicense
from 
  comments
        inner join votes
            left join posts
            on (posts.id = posts.posttypeid)
          inner join badges
          on (votes.creationdate = badges.date )
        on (posts.communityowneddate > comments.creationdate)
      inner join posts
      on (posts.lastactivitydate <= comments.creationdate)
    left join posthistory
        inner join comments
            left join badges
            on (comments.creationdate > comments.creationdate)
          left join users
          on (comments.userdisplayname > comments.userdisplayname)
        on (posthistory.userdisplayname = posthistory.text)
      inner join badges
      on (badges.date < comments.creationdate)
    on (users.id is not NULL)
where posts.viewcount is not NULL
limit 126;
select  
  votes.userid, 
  votes.postid
from 
  votes
      inner join posthistory
          right join badges
          on (badges.date < badges.date)
        inner join comments
          left join users
          on (comments.id <= comments.postid)
        on (badges.userid = users.id )
      on (votes.userid <= users.reputation)
    left join comments
    on (users.aboutme = comments.text)
where comments.userid is NULL
limit 47;
select  
  posthistory.revisionguid, 
  badges.userid
from 
  votes
    left join badges
            inner join badges
            on (badges.tagbased > badges.class)
          left join badges
            right join users
              inner join votes
              on (votes.votetypeid >= users.accountid)
            on (users.profileimageurl > badges.tagbased)
          on (users.downvotes = votes.userid)
        inner join posthistory
        on (posthistory.contentlicense <= badges.name)
      inner join votes
      on (badges.tagbased <= badges.name)
    on (badges.date >= votes.creationdate)
where badges.userid is NULL;
select  
  posthistory.contentlicense, 
  posthistory.posthistorytypeid, 
  posthistory.revisionguid, 
  posthistory.id, 
  posthistory.comment, 
  posthistory.postid, 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.userdisplayname, 
  posthistory.revisionguid, 
  posthistory.contentlicense, 
  posthistory.postid, 
  posthistory.creationdate
from 
  posthistory
where posthistory.posthistorytypeid is not NULL;
select  
  postlinks.relatedpostid, 
  users.websiteurl, 
  users.creationdate
from 
  postlinks
    inner join posthistory
      inner join postlinks
          inner join users
          on (postlinks.creationdate = users.creationdate )
        inner join users
          right join badges
          on (users.views > users.views)
        on (badges.tagbased <= badges.name)
      on (badges.date < posthistory.creationdate)
    on (posthistory.contentlicense is not NULL)
where posthistory.posthistorytypeid is NULL
limit 43;
select  
  max(
    cast(cast(null as date) as date)), 
  posts.lasteditdate, 
  badges.tagbased, 
  badges.date, 
  posthistory.postid, 
  votes.votetypeid, 
  posts.title, 
  posts.parentid, 
  max(
    cast(cast(null as "time") as "time")), 
  badges.class, 
  max(
    cast(cast(null as xid8) as xid8)), 
  votes.postid, 
  posthistory.contentlicense, 
  posthistory.id, 
  posts.tags, 
  votes.bountyamount, 
  posts.viewcount, 
  posthistory.revisionguid, 
  badges.tagbased, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  votes
      left join posthistory
        left join votes
        on (votes.creationdate < posthistory.creationdate)
      on (votes.creationdate = votes.creationdate)
    left join posts
      right join posthistory
        inner join badges
        on (posthistory.revisionguid < posthistory.text)
      on (posts.contentlicense >= posts.body)
    on (posts.lasteditordisplayname is not NULL)
where posts.ownerdisplayname < posthistory.contentlicense
limit 62;
select  
  users.downvotes, 
  users.views
from 
  users
where users.displayname is NULL;
select  
  users.websiteurl
from 
  posts
      inner join badges
      on (posts.closeddate > posts.closeddate)
    left join comments
          right join posthistory
          on (posthistory.comment <= posthistory.comment)
        right join users
            inner join posts
              right join users
              on (posts.tags = users.displayname )
            on (users.location = users.profileimageurl)
          right join posts
          on (posts.favoritecount <= posts.acceptedanswerid)
        on (posts.parentid <= users.downvotes)
      right join users
      on (comments.creationdate = users.creationdate)
    on (posthistory.userid is not NULL)
where posthistory.postid is not NULL
limit 110;
select  
  postlinks.postid, 
  avg(
    cast(cast(null as int2) as int2)), 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.score, 
  users.aboutme, 
  comments.id, 
  postlinks.id, 
  posthistory.revisionguid, 
  max(
    cast(cast(null as tid) as tid)), 
  badges.name, 
  min(
    cast(cast(null as date) as date)), 
  posts.ownerdisplayname, 
  posthistory.postid, 
  postlinks.relatedpostid, 
  posthistory.posthistorytypeid, 
  posts.parentid, 
  max(
    cast(posts.closeddate as timestamptz)), 
  posts.answercount, 
  min(
    cast(cast(null as "time") as "time")), 
  comments.id, 
  max(
    cast(73 as int4)), 
  posts.lasteditoruserid, 
  posthistory.postid, 
  posts.lasteditordisplayname, 
  max(
    cast(posts.lastactivitydate as timestamptz)), 
  badges.userid, 
  min(
    cast(cast(null as float8) as float8)), 
  comments.userid, 
  users.accountid, 
  posts.viewcount, 
  badges.id
from 
  users
    right join postlinks
            inner join posthistory
                left join posts
                on (posthistory.text > posts.body)
              right join posts
              on (posts.acceptedanswerid = posts.lasteditoruserid)
            on (postlinks.id = posthistory.id )
          right join comments
          on (posthistory.userid = comments.id )
        inner join badges
        on (posts.communityowneddate = posts.lasteditdate)
      right join posts
      on (comments.score <= posts.parentid)
    on (users.lastaccessdate = posts.lastactivitydate)
where users.accountid is NULL
limit 15;
select  
  comments.postid
from 
  postlinks
      left join postlinks
      on (postlinks.creationdate = postlinks.creationdate)
    left join comments
    on (postlinks.creationdate <= postlinks.creationdate)
where comments.postid is not NULL;
select  
  badges.id, 
  sum(
    cast(cast(null as int2) as int2))
from 
  comments
      left join posthistory
            inner join users
              inner join users
                inner join users
                on (users.location = users.displayname )
              on (users.profileimageurl = users.displayname )
            on (users.views < users.views)
          inner join postlinks
          on (users.reputation <= posthistory.postid)
        right join badges
          inner join posts
          on (posts.contentlicense >= posts.contentlicense)
        on (users.creationdate > users.lastaccessdate)
      on (posthistory.contentlicense < users.location)
    inner join posts
        inner join badges
        on (posts.answercount < posts.parentid)
      right join users
        inner join badges
        on (users.creationdate = users.creationdate)
      on (users.displayname >= posts.ownerdisplayname)
    on (posts.lasteditordisplayname = posthistory.revisionguid)
where users.id is not NULL
limit 56;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  votes.userid
from 
  votes
where votes.id is not NULL;
select  
  comments.creationdate, 
  posthistory.revisionguid, 
  votes.id, 
  votes.userid, 
  postlinks.postid, 
  comments.userid, 
  min(
    cast(cast(null as "time") as "time")), 
  votes.id, 
  comments.text, 
  comments.userid, 
  postlinks.postid, 
  posthistory.userdisplayname, 
  posthistory.userid, 
  postlinks.id, 
  postlinks.linktypeid
from 
  comments
    right join postlinks
          inner join votes
          on (postlinks.creationdate < votes.creationdate)
        inner join postlinks
          inner join comments
          on (postlinks.creationdate >= comments.creationdate)
        on (comments.id >= comments.score)
      inner join posthistory
      on (posthistory.creationdate = posthistory.creationdate)
    on (votes.bountyamount is not NULL)
where postlinks.linktypeid is not NULL
limit 68;
select  
  max(
    cast(cast(null as tid) as tid)), 
  comments.postid, 
  comments.postid, 
  comments.postid
from 
  comments
where comments.creationdate is NULL;
select  
  posthistory.revisionguid, 
  posthistory.userdisplayname, 
  posts.tags, 
  comments.score, 
  posts.tags, 
  posthistory.comment, 
  posthistory.contentlicense, 
  posthistory.contentlicense, 
  posts.contentlicense, 
  posts.ownerdisplayname, 
  postlinks.relatedpostid, 
  sum(
    cast(postlinks.linktypeid as int8))
from 
  comments
    left join posthistory
      inner join posts
        inner join postlinks
        on (posts.parentid = posts.acceptedanswerid)
      on (posthistory.postid >= posts.favoritecount)
    on (postlinks.creationdate < postlinks.creationdate)
where posthistory.creationdate is not NULL;
select  
  users.profileimageurl, 
  comments.postid, 
  comments.text
from 
  users
    right join comments
    on (users.creationdate >= comments.creationdate)
where comments.id is not NULL
limit 62;
select  
  postlinks.creationdate
from 
  postlinks
    inner join postlinks
    on (postlinks.linktypeid = postlinks.id )
where postlinks.id is not NULL
limit 147;
select  
  posts.favoritecount
from 
  posts
    inner join postlinks
    on (posts.score = posts.viewcount)
where posts.creationdate <= postlinks.creationdate
limit 32;
select  
  postlinks.id, 
  posthistory.comment, 
  posts.lastactivitydate, 
  users.aboutme, 
  postlinks.relatedpostid, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.creationdate, 
  users.displayname, 
  posts.parentid, 
  users.downvotes, 
  posthistory.posthistorytypeid, 
  posthistory.userdisplayname, 
  postlinks.creationdate, 
  comments.text, 
  max(
    cast(posts.creationdate as timestamptz)), 
  votes.bountyamount, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.creationdate, 
  votes.postid, 
  posthistory.comment, 
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.postid
from 
  users
            inner join postlinks
              inner join posts
              on (posts.body > posts.title)
            on (users.downvotes = posts.id )
          inner join posthistory
                right join votes
                on (posthistory.postid = votes.id )
              inner join posts
              on (posts.parentid <= posthistory.posthistorytypeid)
            right join posthistory
            on (posthistory.revisionguid = posthistory.userdisplayname )
          on (posts.lasteditoruserid = posts.id )
        left join votes
            right join comments
            on (votes.bountyamount <= comments.postid)
          inner join votes
          on (votes.bountyamount >= votes.userid)
        on (votes.postid = votes.id )
      left join comments
        inner join comments
        on (comments.text < comments.userdisplayname)
      on (posthistory.postid = votes.bountyamount)
    inner join postlinks
      inner join badges
        inner join posts
                inner join posthistory
                on (posts.lastactivitydate = posthistory.creationdate )
              inner join posts
              on (posthistory.id <= posts.lasteditoruserid)
            right join comments
            on (posts.body = posthistory.text)
          inner join posts
          on (posts.lasteditdate > posthistory.creationdate)
        on (posts.closeddate = badges.date)
      on (posts.viewcount = posts.lasteditoruserid)
    on (posts.tags is not NULL)
where posts.title <= posts.tags
limit 123;
select  
  max(
    cast(posthistory.userid as int8)), 
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.comment, 
  posthistory.userid, 
  posthistory.userid, 
  posthistory.text, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  posthistory.userdisplayname, 
  posthistory.creationdate, 
  posthistory.comment, 
  max(
    cast(62 as int4)), 
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.comment, 
  posthistory.revisionguid, 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.comment is NULL
limit 145;
select  
  comments.text, 
  comments.userid, 
  comments.score, 
  comments.score
from 
  comments
where comments.postid is NULL;
select  
  badges.class, 
  count(*), 
  badges.tagbased, 
  votes.userid, 
  votes.creationdate, 
  votes.postid, 
  badges.class, 
  badges.userid
from 
  badges
    inner join badges
        inner join votes
          left join votes
          on (votes.creationdate = votes.creationdate)
        on (votes.votetypeid > votes.postid)
      inner join votes
      on (votes.bountyamount = votes.id )
    on (votes.creationdate is NULL)
where badges.tagbased is not NULL;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  min(
    cast(cast(null as money) as money)), 
  postlinks.postid
from 
  postlinks
where postlinks.id is NULL
limit 89;
select  
  badges.tagbased, 
  users.accountid, 
  votes.userid, 
  users.profileimageurl, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  votes
        inner join users
          inner join users
            inner join postlinks
            on (users.aboutme >= users.aboutme)
          on (users.lastaccessdate <= users.lastaccessdate)
        on (votes.votetypeid = users.id )
      right join users
        inner join votes
        on (users.accountid < votes.postid)
      on (users.views = votes.id )
    inner join badges
        left join posthistory
        on (posthistory.postid < posthistory.id)
      inner join posts
      on (posts.lasteditdate = posts.closeddate)
    on (users.displayname is not NULL)
where users.upvotes is NULL;
select  
  postlinks.postid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate is not NULL
limit 83;
select  
  postlinks.relatedpostid
from 
  posts
    inner join comments
          left join posts
          on (posts.contentlicense > posts.tags)
        inner join postlinks
          right join votes
          on (postlinks.creationdate > postlinks.creationdate)
        on (posts.commentcount >= votes.postid)
      inner join posthistory
        left join users
          left join users
          on (users.upvotes <= users.views)
        on (users.views <= users.views)
      on (posts.acceptedanswerid > users.downvotes)
    on (posts.lasteditoruserid is not NULL)
where posts.score > posts.viewcount;
select  
  sum(
    cast(31 as int4))
from 
  badges
          inner join users
            inner join votes
            on (users.lastaccessdate = votes.creationdate )
          on (users.reputation < badges.userid)
        right join posts
            inner join comments
            on (posts.favoritecount = comments.id )
          inner join votes
            inner join users
              inner join postlinks
              on (postlinks.id = users.views)
            on (votes.userid = users.id )
          on (comments.creationdate = users.creationdate )
        on (posts.acceptedanswerid >= posts.acceptedanswerid)
      inner join comments
      on (users.creationdate <= posts.communityowneddate)
    inner join badges
        right join postlinks
        on (badges.tagbased >= badges.name)
      left join votes
      on (badges.class < badges.tagbased)
    on (postlinks.creationdate is NULL)
where postlinks.creationdate is NULL
limit 55;
select  
  max(
    cast(cast(null as date) as date)), 
  posthistory.userid, 
  posthistory.id, 
  posthistory.id, 
  posthistory.userdisplayname, 
  posthistory.posthistorytypeid, 
  posthistory.contentlicense, 
  posthistory.text, 
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.text, 
  posthistory.userdisplayname, 
  posthistory.userid, 
  posthistory.comment, 
  posthistory.text, 
  posthistory.contentlicense, 
  posthistory.text, 
  posthistory.userid, 
  posthistory.id, 
  min(
    cast(12 as int4)), 
  posthistory.contentlicense
from 
  posthistory
    right join posthistory
    on (posthistory.userid = posthistory.id )
where posthistory.comment is NULL
limit 186;
select  
  votes.votetypeid, 
  votes.postid, 
  votes.userid, 
  votes.creationdate, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.votetypeid, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.postid, 
  votes.postid, 
  votes.userid, 
  votes.postid, 
  votes.id, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.id, 
  max(
    cast(cast(null as "time") as "time"))
from 
  votes
where votes.creationdate is NULL
limit 169;
select  
  posts.lasteditordisplayname, 
  votes.id, 
  posts.ownerdisplayname, 
  votes.votetypeid, 
  votes.id
from 
  votes
        left join votes
        on (votes.votetypeid <= votes.votetypeid)
      left join posts
      on (posts.title <= posts.ownerdisplayname)
    right join posts
    on (votes.creationdate = posts.creationdate )
where posts.title >= posts.body;
select  
  posts.score, 
  posts.owneruserid, 
  posts.title, 
  posts.ownerdisplayname, 
  posts.viewcount, 
  posts.lasteditdate, 
  posts.favoritecount, 
  posts.posttypeid, 
  posts.tags, 
  posts.posttypeid, 
  sum(
    cast(45 as int4)), 
  posts.favoritecount, 
  posts.lastactivitydate, 
  posts.tags, 
  posts.commentcount, 
  posts.communityowneddate, 
  posts.id
from 
  posts
where posts.favoritecount is not NULL
limit 107;
select  
  badges.userid, 
  badges.tagbased, 
  badges.class, 
  badges.class, 
  badges.userid, 
  badges.id, 
  max(
    cast(cast(null as "time") as "time")), 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  badges
where badges.date <= badges.date
limit 93;
select  
  users.lastaccessdate, 
  users.downvotes, 
  users.displayname, 
  users.profileimageurl, 
  users.downvotes, 
  users.views, 
  users.views, 
  users.upvotes, 
  users.location, 
  users.aboutme, 
  users.location, 
  min(
    cast(cast(null as timetz) as timetz)), 
  users.views, 
  users.reputation, 
  users.displayname, 
  users.downvotes, 
  min(
    cast(19 as int4)), 
  users.websiteurl, 
  users.creationdate, 
  users.accountid, 
  users.location, 
  users.lastaccessdate, 
  sum(
    cast(cast(null as float4) as float4)), 
  users.downvotes, 
  users.aboutme, 
  users.websiteurl, 
  users.downvotes, 
  users.websiteurl, 
  users.upvotes, 
  users.websiteurl
from 
  users
where users.location is NULL
limit 83;
select  
  users.profileimageurl
from 
  users
      inner join posthistory
            right join posts
            on (posts.ownerdisplayname > posts.title)
          right join comments
          on (comments.creationdate = posts.closeddate)
        inner join posts
        on (posts.communityowneddate < comments.creationdate)
      on (posts.contentlicense <= users.aboutme)
    right join badges
          inner join badges
          on (badges.class = badges.class )
        inner join users
        on (badges.userid = users.id )
      left join posthistory
          inner join postlinks
            inner join comments
            on (comments.creationdate < comments.creationdate)
          on (posthistory.userdisplayname < comments.userdisplayname)
        inner join postlinks
            left join posts
              inner join users
              on (posts.lasteditdate = users.creationdate )
            on (posts.owneruserid = users.downvotes)
          inner join posts
          on (posts.tags = posts.tags)
        on (posthistory.contentlicense <= posts.lasteditordisplayname)
      on (posts.viewcount >= users.accountid)
    on (posts.owneruserid is not NULL)
where posthistory.id is NULL
limit 101;
select  
  posts.favoritecount
from 
  posts
where posts.lastactivitydate <= posts.creationdate
limit 140;
select  
  max(
    cast(cast(null as oid) as oid)), 
  users.profileimageurl, 
  votes.creationdate, 
  votes.id, 
  votes.postid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.userid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  votes.creationdate, 
  votes.postid, 
  max(
    cast(cast(null as xid8) as xid8)), 
  votes.userid, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.userid, 
  users.location, 
  votes.votetypeid, 
  votes.bountyamount
from 
  users
    inner join votes
    on (users.reputation = votes.id )
where votes.userid is not NULL;
select  
  users.aboutme, 
  users.aboutme, 
  users.lastaccessdate, 
  users.reputation
from 
  users
where users.profileimageurl is not NULL
limit 114;
select  
  votes.creationdate, 
  min(
    cast(cast(null as date) as date)), 
  users.views, 
  votes.userid, 
  votes.postid, 
  users.aboutme, 
  votes.bountyamount
from 
  users
    right join votes
    on (users.location = users.websiteurl)
where votes.bountyamount is not NULL;
select  
  posthistory.creationdate, 
  posthistory.userdisplayname, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(100 as int4)), 
  posthistory.text, 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  sum(
    cast(posthistory.id as int8)), 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  posthistory
where posthistory.contentlicense is not NULL
limit 140;
select  
  badges.id, 
  badges.date, 
  badges.name, 
  badges.tagbased, 
  badges.userid, 
  badges.userid, 
  badges.class, 
  min(
    cast(badges.tagbased as text)), 
  min(
    cast(cast(null as inet) as inet)), 
  badges.userid, 
  badges.date
from 
  badges
where badges.class is not NULL
limit 136;
select  
  min(
    cast(cast(null as oid) as oid))
from 
  posthistory
        right join postlinks
        on (posthistory.id = postlinks.id )
      inner join badges
      on (postlinks.linktypeid >= postlinks.relatedpostid)
    left join posthistory
      inner join postlinks
        right join posthistory
        on (posthistory.creationdate > posthistory.creationdate)
      on (posthistory.userdisplayname <= posthistory.userdisplayname)
    on (posthistory.id is NULL)
where badges.date = posthistory.creationdate
limit 121;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  posts.posttypeid, 
  posts.commentcount
from 
  posts
where posts.answercount is not NULL
limit 53;
select  
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.text, 
  posts.favoritecount, 
  postlinks.creationdate
from 
  badges
    inner join postlinks
        inner join posts
        on (postlinks.postid = posts.id )
      inner join posthistory
      on (posts.tags <= posts.body)
    on (badges.name = posts.ownerdisplayname )
where postlinks.postid is NULL;
select  
  posts.parentid, 
  comments.postid, 
  comments.id, 
  posts.favoritecount, 
  comments.id, 
  comments.creationdate, 
  comments.text, 
  min(
    cast(60 as int4)), 
  comments.text
from 
  comments
      right join posts
      on (posts.lasteditoruserid <= posts.posttypeid)
    inner join posts
    on (posts.posttypeid = posts.id )
where posts.ownerdisplayname is not NULL
limit 116;
select  
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate is NULL
limit 167;
select  
  comments.creationdate
from 
  comments
where comments.id is not NULL
limit 152;
select  
  users.websiteurl, 
  users.upvotes, 
  users.creationdate, 
  users.websiteurl, 
  users.downvotes
from 
  users
where users.creationdate = users.lastaccessdate
limit 81;
select  
  posts.tags, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postlinks.linktypeid
from 
  users
          inner join posts
          on (posts.parentid > users.downvotes)
        right join comments
              inner join posts
              on (comments.userdisplayname < comments.text)
            left join postlinks
            on (posts.parentid < postlinks.id)
          right join posthistory
          on (posthistory.userid >= posts.commentcount)
        on (posts.lastactivitydate >= posts.creationdate)
      left join postlinks
                left join postlinks
                on (postlinks.postid < postlinks.postid)
              left join posthistory
                left join votes
                on (posthistory.comment >= posthistory.contentlicense)
              on (postlinks.creationdate < posthistory.creationdate)
            right join postlinks
            on (postlinks.creationdate = postlinks.creationdate)
          right join posts
          on (posts.closeddate > postlinks.creationdate)
        right join postlinks
            left join posts
            on (posts.favoritecount < postlinks.linktypeid)
          inner join postlinks
          on (posts.tags = posts.tags)
        on (postlinks.creationdate > postlinks.creationdate)
      on (posts.lastactivitydate < posts.communityowneddate)
    inner join badges
      left join badges
      on (badges.date < badges.date)
    on (posthistory.creationdate = badges.date )
where posthistory.postid is not NULL;
select  
  avg(
    cast(cast(null as float4) as float4))
from 
  votes
    inner join posthistory
      left join posthistory
        inner join posthistory
        on (posthistory.creationdate > posthistory.creationdate)
      on (posthistory.postid < posthistory.id)
    on (votes.postid = posthistory.id )
where votes.postid is not NULL
limit 109;
select  
  avg(
    cast(comments.score as int8)), 
  comments.id
from 
  comments
where comments.creationdate is NULL;
select  
  posthistory.userid, 
  posthistory.text, 
  users.aboutme
from 
  votes
      inner join users
        left join posthistory
        on (posthistory.comment < posthistory.revisionguid)
      on (users.lastaccessdate < users.creationdate)
    inner join votes
    on (posthistory.id is NULL)
where votes.userid is NULL
limit 63;
select  
  votes.votetypeid, 
  avg(
    cast(74 as int4))
from 
  posthistory
      left join posthistory
      on (posthistory.revisionguid >= posthistory.contentlicense)
    right join votes
    on (posthistory.posthistorytypeid = votes.id )
where votes.id is not NULL;
select  
  postlinks.linktypeid
from 
  postlinks
      left join postlinks
      on (postlinks.creationdate > postlinks.creationdate)
    inner join comments
    on (comments.creationdate < postlinks.creationdate)
where comments.text is NULL;
select  
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postlinks.postid
from 
  postlinks
where postlinks.linktypeid is NULL
limit 61;
select  
  min(
    cast(cast(null as tid) as tid)), 
  votes.bountyamount
from 
  votes
where votes.votetypeid is NULL;
select  
  posts.parentid
from 
  posts
where posts.score is NULL
limit 63;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.userdisplayname, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  votes.creationdate, 
  posthistory.revisionguid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.id, 
  votes.postid
from 
  votes
        left join posts
          inner join postlinks
          on (posts.lastactivitydate >= posts.closeddate)
        on (posts.communityowneddate < posts.lasteditdate)
      inner join votes
      on (posts.answercount < posts.score)
    left join posthistory
    on (posts.answercount is NULL)
where votes.votetypeid is NULL;
select  
  votes.userid, 
  votes.id, 
  min(
    cast(cast(null as float8) as float8))
from 
  votes
    right join badges
    on (badges.tagbased < badges.tagbased)
where badges.class > badges.name
limit 109;
select  
  posthistory.contentlicense, 
  comments.userdisplayname
from 
  postlinks
    inner join postlinks
        inner join postlinks
        on (postlinks.linktypeid < postlinks.linktypeid)
      right join posthistory
        right join postlinks
          left join comments
            inner join posts
            on (comments.text > posts.title)
          on (comments.creationdate > posts.closeddate)
        on (posts.creationdate <= posts.creationdate)
      on (postlinks.relatedpostid = comments.id )
    on (posts.body > posts.body)
where posts.acceptedanswerid is NULL;
select  
  comments.postid, 
  comments.text
from 
  comments
where comments.id is NULL
limit 32;
select  
  badges.name, 
  badges.class, 
  badges.name, 
  badges.userid
from 
  badges
where badges.name >= badges.tagbased
limit 126;
select  
  posts.answercount, 
  posts.owneruserid, 
  posts.lasteditdate
from 
  posts
where posts.commentcount is not NULL
limit 118;
select  
  comments.score, 
  max(
    cast(cast(null as int2) as int2)), 
  comments.text
from 
  posts
      left join postlinks
        left join comments
        on (postlinks.creationdate > comments.creationdate)
      on (posts.lasteditdate < postlinks.creationdate)
    inner join posts
    on (posts.creationdate is NULL)
where posts.id is NULL;
select  
  users.accountid, 
  max(
    cast(users.creationdate as timestamptz)), 
  users.profileimageurl, 
  users.websiteurl, 
  users.lastaccessdate
from 
  users
    inner join users
    on (users.upvotes = users.id )
where users.websiteurl is not NULL
limit 56;
select  
  badges.id, 
  badges.class, 
  badges.date, 
  badges.userid, 
  badges.class
from 
  badges
where badges.id is not NULL;
select  
  votes.postid, 
  votes.votetypeid
from 
  votes
where votes.creationdate is not NULL;
select  
  votes.postid, 
  votes.postid, 
  votes.bountyamount
from 
  votes
where votes.userid is not NULL
limit 141;
select  
  comments.score, 
  comments.id, 
  comments.text, 
  comments.userdisplayname, 
  comments.userid, 
  comments.userid
from 
  comments
where comments.score is NULL
limit 25;
select  
  min(
    cast(cast(null as date) as date)), 
  posts.title, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.id, 
  posthistory.id, 
  min(
    cast(users.views as int8)), 
  posts.commentcount, 
  votes.userid, 
  posts.creationdate, 
  posthistory.posthistorytypeid, 
  users.id, 
  posts.communityowneddate
from 
  posts
            inner join posthistory
            on (posts.commentcount = posts.acceptedanswerid)
          right join users
            left join users
              left join votes
              on (votes.userid <= votes.bountyamount)
            on (users.lastaccessdate >= users.creationdate)
          on (posthistory.id = users.id )
        inner join posthistory
        on (posthistory.creationdate = posts.creationdate)
      inner join posts
      on (users.creationdate = posts.creationdate )
    inner join postlinks
    on (votes.userid is NULL)
where users.displayname is NULL
limit 106;
select  
  users.profileimageurl, 
  users.id, 
  users.aboutme, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.views, 
  users.lastaccessdate
from 
  users
where users.lastaccessdate is NULL
limit 98;
select  
  posts.posttypeid
from 
  posts
where posts.tags is NULL
limit 52;
select  
  posthistory.contentlicense, 
  posthistory.userdisplayname, 
  posthistory.text, 
  posthistory.revisionguid, 
  posthistory.userid
from 
  posthistory
where posthistory.creationdate is not NULL;
select  
  max(
    cast(cast(null as int2) as int2)), 
  users.id, 
  max(
    cast(cast(null as inet) as inet)), 
  users.views, 
  users.upvotes, 
  users.accountid, 
  users.displayname, 
  users.location, 
  users.aboutme, 
  max(
    cast(cast(null as oid) as oid)), 
  users.displayname, 
  users.reputation, 
  users.upvotes, 
  users.accountid, 
  users.lastaccessdate, 
  min(
    cast(cast(null as float8) as float8)), 
  users.downvotes
from 
  users
where users.downvotes is NULL;
select  
  badges.class
from 
  badges
    left join badges
    on (badges.class < badges.class)
where badges.name is not NULL
limit 43;
select  
  comments.id, 
  comments.text, 
  comments.userdisplayname, 
  max(
    cast(cast(null as float4) as float4)), 
  comments.score, 
  count(*)
from 
  comments
where comments.creationdate is NULL
limit 132;
select  
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  sum(
    cast(92 as int4)), 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.id is not NULL
limit 84;
select  
  votes.userid, 
  users.displayname, 
  posthistory.creationdate, 
  max(
    cast(cast(null as date) as date))
from 
  posthistory
            left join postlinks
            on (posthistory.contentlicense > posthistory.userdisplayname)
          inner join posthistory
          on (posthistory.creationdate < postlinks.creationdate)
        right join comments
        on (comments.id > postlinks.relatedpostid)
      right join votes
        left join posthistory
                left join posthistory
                on (posthistory.postid < posthistory.userid)
              right join users
              on (posthistory.userid >= users.upvotes)
            inner join users
              left join badges
              on (badges.date < users.creationdate)
            on (posthistory.contentlicense <= posthistory.text)
          left join users
          on (users.lastaccessdate = posthistory.creationdate)
        on (posthistory.contentlicense < users.websiteurl)
      on (posthistory.creationdate > posthistory.creationdate)
    right join votes
        inner join users
          left join posthistory
            left join votes
              inner join users
              on (users.websiteurl >= users.location)
            on (users.lastaccessdate = votes.creationdate)
          on (users.lastaccessdate = votes.creationdate )
        on (votes.creationdate = votes.creationdate)
      inner join postlinks
          inner join badges
          on (postlinks.postid = badges.id )
        inner join posthistory
        on (postlinks.creationdate = posthistory.creationdate )
      on (votes.bountyamount = posthistory.id)
    on (votes.creationdate <= users.creationdate)
where votes.votetypeid is NULL
limit 175;
select  
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid, 
  sum(
    cast(49 as int4)), 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  min(
    cast(cast(null as money) as money)), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  max(
    cast(cast(null as inet) as inet)), 
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate >= postlinks.creationdate
limit 178;
select  
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.revisionguid, 
  min(
    cast(cast(null as tid) as tid))
from 
  posts
    left join posthistory
    on (posts.lasteditordisplayname = posthistory.userdisplayname )
where posts.contentlicense is not NULL;
select  
  posthistory.userid
from 
  votes
      right join posthistory
      on (votes.id <= posthistory.id)
    right join users
              left join comments
              on (users.id = comments.id )
            left join users
            on (users.creationdate = users.creationdate)
          right join comments
            right join badges
            on (badges.date < comments.creationdate)
          on (users.lastaccessdate = users.lastaccessdate)
        inner join comments
        on (comments.id < users.accountid)
      left join comments
      on (comments.id > users.views)
    on (badges.id is NULL)
where comments.id is NULL
limit 136;
select  
  max(
    cast(cast(null as tid) as tid))
from 
  users
where users.profileimageurl > users.displayname;
select  
  users.location, 
  users.location, 
  users.upvotes
from 
  users
where users.websiteurl is NULL;
select  
  users.profileimageurl
from 
  users
where users.lastaccessdate is NULL
limit 125;
select  
  badges.tagbased, 
  badges.name, 
  badges.id, 
  badges.userid, 
  badges.id
from 
  badges
where badges.class is not NULL;
select  
  posthistory.creationdate, 
  max(
    cast(posthistory.creationdate as timestamptz))
from 
  posthistory
where posthistory.revisionguid is NULL
limit 78;
select  
  sum(
    cast(40 as int4)), 
  badges.name, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posthistory.contentlicense, 
  badges.tagbased, 
  posthistory.comment, 
  posts.lastactivitydate, 
  badges.name, 
  max(
    cast(cast(null as "time") as "time")), 
  badges.name, 
  posthistory.postid, 
  postlinks.id, 
  users.upvotes, 
  badges.name, 
  users.location, 
  posts.closeddate, 
  badges.name, 
  badges.id, 
  posthistory.comment
from 
  users
    right join posts
      left join posthistory
          right join badges
          on (badges.date > posthistory.creationdate)
        inner join badges
          right join postlinks
          on (badges.userid <= postlinks.postid)
        on (badges.date <= badges.date)
      on (posthistory.id = postlinks.relatedpostid)
    on (badges.name < posts.title)
where postlinks.linktypeid = postlinks.relatedpostid;
select  
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.linktypeid, 
  comments.score
from 
  comments
            inner join badges
            on (comments.text < comments.text)
          inner join users
          on (users.creationdate > comments.creationdate)
        inner join votes
        on (users.reputation >= votes.userid)
      inner join votes
            inner join postlinks
            on (votes.bountyamount = postlinks.id )
          left join badges
            left join posthistory
              inner join posts
              on (posts.communityowneddate = posts.lastactivitydate)
            on (posts.title < badges.class)
          on (badges.date <= posthistory.creationdate)
        left join postlinks
          left join votes
          on (postlinks.linktypeid = votes.id )
        on (posts.parentid > votes.bountyamount)
      on (badges.tagbased <= badges.name)
    left join postlinks
    on (postlinks.postid is NULL)
where postlinks.id is not NULL
limit 137;
select  
  badges.id, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.creationdate, 
  users.profileimageurl, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  users
    right join posts
        inner join postlinks
        on (posts.contentlicense > posts.body)
      inner join postlinks
          left join votes
                  right join users
                  on (votes.id = users.id )
                inner join posthistory
                on (users.aboutme >= users.aboutme)
              left join posthistory
              on (votes.votetypeid = posthistory.id )
            right join users
            on (users.aboutme < users.aboutme)
          on (postlinks.creationdate = votes.creationdate )
        inner join users
          left join badges
          on (users.views <= badges.userid)
        on (posthistory.contentlicense >= users.location)
      on (users.upvotes < posthistory.id)
    on (posthistory.userdisplayname is not NULL)
where postlinks.creationdate <= votes.creationdate;
select  
  comments.text, 
  comments.score
from 
  posts
      left join posthistory
          inner join votes
          on (posthistory.userid < posthistory.posthistorytypeid)
        inner join posthistory
        on (posthistory.creationdate < votes.creationdate)
      on (posthistory.id <= posts.owneruserid)
    left join users
        right join posthistory
          inner join comments
          on (posthistory.comment = comments.userdisplayname )
        on (users.creationdate <= users.lastaccessdate)
      inner join votes
      on (users.aboutme < posthistory.userdisplayname)
    on (comments.postid > posts.acceptedanswerid)
where votes.votetypeid is not NULL;
select  
  votes.userid, 
  votes.userid, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.postid, 
  votes.bountyamount, 
  votes.postid, 
  votes.bountyamount
from 
  votes
    inner join votes
      right join votes
      on (votes.creationdate > votes.creationdate)
    on (votes.votetypeid is NULL)
where votes.creationdate is NULL;
select  
  badges.userid, 
  posts.title, 
  posts.posttypeid, 
  posts.lasteditdate, 
  max(
    cast(cast(null as tid) as tid))
from 
  posts
      inner join badges
      on (posts.tags > badges.tagbased)
    right join votes
    on (votes.creationdate is NULL)
where posts.creationdate is NULL
limit 145;
select  
  users.downvotes, 
  posts.lasteditoruserid, 
  min(
    cast(cast(null as float8) as float8))
from 
  posts
      left join users
      on (users.reputation > posts.parentid)
    inner join posts
    on (posts.tags is not NULL)
where users.profileimageurl is not NULL
limit 145;
select  
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.id, 
  postlinks.postid
from 
  posts
    right join postlinks
    on (posts.parentid > posts.commentcount)
where posts.favoritecount is NULL;
select  
  posts.commentcount
from 
  posts
where posts.creationdate is NULL
limit 131;
select  
  postlinks.relatedpostid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  users.profileimageurl, 
  count(
    cast(posthistory.comment as text)), 
  postlinks.id, 
  postlinks.relatedpostid, 
  users.reputation, 
  postlinks.linktypeid, 
  users.creationdate, 
  postlinks.linktypeid, 
  votes.userid, 
  postlinks.relatedpostid
from 
  postlinks
          right join postlinks
          on (postlinks.postid = postlinks.id )
        inner join votes
          right join posthistory
              left join votes
                  left join posthistory
                  on (posthistory.posthistorytypeid < posthistory.posthistorytypeid)
                inner join postlinks
                on (posthistory.userdisplayname >= posthistory.userdisplayname)
              on (posthistory.userdisplayname > posthistory.contentlicense)
            inner join users
              right join posthistory
                inner join votes
                on (posthistory.userdisplayname >= posthistory.revisionguid)
              on (users.lastaccessdate = users.creationdate)
            on (votes.votetypeid = votes.id )
          on (posthistory.revisionguid >= posthistory.comment)
        on (postlinks.creationdate >= votes.creationdate)
      right join postlinks
        inner join votes
            right join users
            on (votes.creationdate <= users.creationdate)
          inner join posthistory
          on (users.accountid = posthistory.id )
        on (posthistory.creationdate > postlinks.creationdate)
      on (votes.userid = votes.id )
    left join users
    on (posthistory.id is NULL)
where posthistory.userid is not NULL
limit 118;
select  
  posthistory.id, 
  posthistory.comment
from 
  posthistory
where posthistory.contentlicense <= posthistory.comment
limit 191;
select  
  max(
    cast(cast(null as inet) as inet))
from 
  users
where users.profileimageurl is not NULL
limit 198;
select  
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  posthistory
where posthistory.contentlicense is NULL;
select  
  posts.owneruserid
from 
  postlinks
    left join posts
    on (postlinks.id is NULL)
where posts.lasteditoruserid is NULL
limit 45;
select  
  postlinks.postid
from 
  postlinks
    left join postlinks
    on (postlinks.linktypeid is not NULL)
where postlinks.relatedpostid is not NULL
limit 57;
select  
  votes.votetypeid, 
  badges.userid, 
  badges.tagbased, 
  postlinks.linktypeid
from 
  badges
          left join users
                left join postlinks
                on (users.location < users.displayname)
              inner join posthistory
              on (users.creationdate <= users.lastaccessdate)
            inner join comments
            on (posthistory.creationdate = users.creationdate)
          on (badges.name = comments.userdisplayname )
        right join users
          right join posthistory
          on (users.lastaccessdate > users.creationdate)
        on (posthistory.userdisplayname >= posthistory.revisionguid)
      right join badges
          inner join postlinks
            inner join badges
              right join badges
              on (badges.date > badges.date)
            on (postlinks.creationdate >= postlinks.creationdate)
          on (badges.date <= postlinks.creationdate)
        right join postlinks
        on (postlinks.id < badges.id)
      on (posthistory.posthistorytypeid = badges.id )
    inner join votes
              inner join users
              on (users.aboutme = users.profileimageurl)
            inner join postlinks
            on (users.id = postlinks.id )
          inner join users
          on (users.lastaccessdate = users.lastaccessdate)
        left join posts
          inner join badges
          on (posts.communityowneddate = badges.date )
        on (users.displayname = badges.class )
      right join users
      on (users.lastaccessdate = posts.lasteditdate)
    on (badges.date = users.creationdate )
where badges.date is not NULL
limit 172;
select  
  users.downvotes, 
  badges.tagbased, 
  badges.name, 
  postlinks.relatedpostid, 
  badges.tagbased, 
  users.lastaccessdate, 
  badges.name, 
  postlinks.postid
from 
  badges
        inner join badges
              inner join postlinks
                inner join votes
                on (postlinks.id <= votes.bountyamount)
              on (badges.userid = votes.id )
            inner join postlinks
              inner join users
              on (users.reputation <= users.id)
            on (badges.id > users.views)
          left join badges
          on (badges.date > postlinks.creationdate)
        on (badges.class > badges.name)
      left join users
      on (votes.userid <= postlinks.postid)
    inner join posts
    on (votes.bountyamount is NULL)
where badges.tagbased is NULL
limit 102;
select  
  posts.title, 
  posts.id, 
  max(
    cast(cast(null as money) as money)), 
  posts.score, 
  posts.title, 
  posts.commentcount, 
  max(
    cast(cast(null as xid8) as xid8)), 
  posts.closeddate, 
  posts.parentid, 
  posts.title
from 
  posts
where posts.tags is not NULL
limit 117;
select  
  badges.userid, 
  badges.class
from 
  badges
      inner join users
        inner join votes
        on (votes.creationdate <= users.lastaccessdate)
      on (users.lastaccessdate <= votes.creationdate)
    inner join posts
    on (users.reputation is NULL)
where posts.id > votes.userid
limit 27;
select  
  badges.class, 
  sum(
    cast(cast(null as float4) as float4)), 
  votes.id, 
  votes.creationdate, 
  avg(
    cast(cast(null as float8) as float8)), 
  postlinks.postid, 
  min(
    cast(cast(null as date) as date)), 
  votes.id, 
  votes.id
from 
  comments
    inner join votes
        inner join badges
            right join votes
            on (votes.creationdate >= votes.creationdate)
          left join postlinks
          on (votes.votetypeid <= votes.votetypeid)
        on (badges.class > badges.tagbased)
      inner join comments
      on (comments.text > comments.userdisplayname)
    on (comments.userdisplayname = comments.userdisplayname)
where comments.score is NULL
limit 155;
select  
  min(
    cast(users.reputation as int8))
from 
  votes
    right join users
    on (votes.bountyamount = votes.bountyamount)
where votes.creationdate is not NULL;
select  
  posthistory.userid, 
  votes.creationdate
from 
  votes
    right join comments
          inner join posthistory
          on (posthistory.userid < comments.id)
        right join posthistory
        on (posthistory.comment <= posthistory.text)
      right join badges
        left join comments
        on (badges.userid = comments.score)
      on (comments.postid >= badges.userid)
    on (comments.userdisplayname is not NULL)
where posthistory.userdisplayname is not NULL
limit 138;
select  
  posthistory.userdisplayname, 
  avg(
    cast(posthistory.postid as int8)), 
  comments.score, 
  posthistory.revisionguid, 
  comments.id, 
  comments.text, 
  comments.creationdate, 
  posthistory.revisionguid, 
  comments.userdisplayname, 
  posthistory.id
from 
  posthistory
    inner join comments
    on (comments.postid is NULL)
where comments.userdisplayname is NULL
limit 7;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.creationdate, 
  badges.userid, 
  posthistory.text, 
  badges.name, 
  badges.name, 
  badges.userid, 
  posts.lasteditordisplayname, 
  posts.score, 
  votes.postid, 
  postlinks.id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  avg(
    cast(cast(null as float4) as float4)), 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  posts.favoritecount, 
  posts.viewcount, 
  comments.creationdate
from 
  comments
        inner join posts
            inner join posthistory
            on (posthistory.comment = posts.lasteditordisplayname)
          inner join postlinks
          on (postlinks.creationdate < posthistory.creationdate)
        on (posts.creationdate < postlinks.creationdate)
      right join postlinks
          inner join posts
          on (postlinks.postid < posts.parentid)
        right join badges
          left join posts
          on (posts.lasteditdate = posts.creationdate)
        on (posts.lastactivitydate > posts.communityowneddate)
      on (badges.name >= comments.text)
    right join votes
    on (postlinks.creationdate = votes.creationdate )
where posts.favoritecount is NULL
limit 35;
select  
  max(
    cast(cast(null as tid) as tid)), 
  votes.creationdate, 
  votes.id, 
  votes.id, 
  votes.bountyamount
from 
  votes
where votes.userid is not NULL
limit 109;
select  
  comments.id, 
  badges.id, 
  comments.text
from 
  comments
    inner join badges
    on (badges.date is NULL)
where comments.postid is NULL
limit 113;
select  
  posts.commentcount, 
  comments.creationdate, 
  postlinks.relatedpostid, 
  sum(
    cast(cast(null as float8) as float8)), 
  posthistory.posthistorytypeid, 
  posts.communityowneddate, 
  postlinks.creationdate, 
  posts.parentid, 
  votes.votetypeid, 
  comments.id, 
  comments.score, 
  comments.creationdate, 
  max(
    cast(cast(null as "interval") as "interval")), 
  posts.communityowneddate, 
  comments.id, 
  votes.creationdate, 
  comments.score, 
  votes.votetypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  votes.bountyamount
from 
  votes
        right join posts
        on (posts.lastactivitydate > posts.closeddate)
      inner join postlinks
              right join posts
              on (posts.tags = posts.body)
            left join posthistory
            on (posts.contentlicense = posthistory.text)
          inner join postlinks
          on (posts.score > postlinks.id)
        inner join comments
          left join votes
          on (comments.userid = comments.userid)
        on (posts.lasteditdate > postlinks.creationdate)
      on (posts.lasteditordisplayname < posts.body)
    inner join comments
    on (posts.closeddate <= postlinks.creationdate)
where votes.bountyamount is NULL
limit 18;
select  
  votes.bountyamount, 
  postlinks.id, 
  votes.id, 
  votes.userid, 
  users.profileimageurl, 
  min(
    cast(users.lastaccessdate as timestamptz)), 
  max(
    cast(12 as int4)), 
  postlinks.id, 
  votes.votetypeid, 
  avg(
    cast(cast(null as float4) as float4))
from 
  users
      inner join posts
        inner join badges
            right join users
            on (badges.date = users.creationdate )
          left join postlinks
            right join votes
              inner join votes
              on (votes.creationdate <= votes.creationdate)
            on (votes.creationdate < votes.creationdate)
          on (votes.creationdate >= badges.date)
        on (posts.lastactivitydate > users.lastaccessdate)
      on (postlinks.creationdate <= votes.creationdate)
    inner join votes
    on (badges.class is not NULL)
where badges.class is NULL
limit 66;
select  
  votes.creationdate, 
  badges.id, 
  badges.userid, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.answercount, 
  badges.userid, 
  votes.id, 
  badges.tagbased, 
  votes.id, 
  votes.postid, 
  badges.tagbased, 
  badges.id, 
  badges.userid, 
  badges.tagbased, 
  badges.class, 
  badges.class, 
  posts.commentcount, 
  posts.acceptedanswerid, 
  posts.lasteditoruserid
from 
  votes
      inner join badges
      on (badges.tagbased > badges.tagbased)
    inner join badges
      inner join posts
      on (posts.communityowneddate < posts.lastactivitydate)
    on (badges.userid is not NULL)
where posts.closeddate is NULL;
select  
  comments.creationdate, 
  sum(
    cast(comments.postid as int8))
from 
  comments
where comments.text is NULL;
select  
  postlinks.id, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.creationdate
from 
  postlinks
where postlinks.id < postlinks.postid
limit 149;
select  
  min(
    cast(cast(null as inet) as inet))
from 
  posts
    right join comments
        inner join users
          inner join users
              inner join users
              on (users.displayname <= users.websiteurl)
            right join users
              inner join votes
              on (users.aboutme > users.location)
            on (users.creationdate < users.creationdate)
          on (users.profileimageurl = users.displayname )
        on (users.aboutme < users.location)
      right join posthistory
      on (users.creationdate <= users.creationdate)
    on (users.upvotes is not NULL)
where posts.lasteditoruserid is not NULL
limit 117;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  badges.id, 
  max(
    cast(cast(null as inet) as inet))
from 
  badges
    inner join posts
    on (badges.name <= badges.name)
where badges.tagbased is NULL;
select  
  badges.date, 
  max(
    cast(badges.date as timestamptz)), 
  badges.date, 
  badges.tagbased, 
  badges.id, 
  badges.class, 
  avg(
    cast(cast(null as int2) as int2))
from 
  badges
where badges.date = badges.date
limit 115;
select  
  posthistory.comment
from 
  badges
        inner join posthistory
        on (posthistory.postid < posthistory.id)
      right join posts
          inner join postlinks
            left join posthistory
            on (postlinks.relatedpostid = posthistory.id )
          on (posthistory.text <= posts.body)
        inner join posthistory
        on (posts.lasteditdate = posts.creationdate)
      on (posthistory.id = posts.owneruserid)
    inner join posthistory
    on (posthistory.id <= posthistory.posthistorytypeid)
where posts.ownerdisplayname is NULL
limit 98;
select  
  badges.date, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  badges
where badges.tagbased is NULL;
select  
  badges.id, 
  badges.tagbased, 
  max(
    cast(cast(null as oid) as oid)), 
  badges.date, 
  badges.class, 
  badges.class
from 
  badges
where badges.name = badges.class;
select  
  comments.postid, 
  comments.text, 
  comments.userid, 
  count(*), 
  comments.postid, 
  comments.text, 
  comments.text, 
  comments.userid, 
  comments.userid, 
  comments.userid, 
  comments.postid, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  comments.id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.postid, 
  comments.id, 
  comments.text, 
  comments.score, 
  comments.creationdate, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  comments.userid, 
  comments.text, 
  comments.text, 
  comments.userid, 
  comments.userdisplayname
from 
  comments
where comments.text <= comments.userdisplayname
limit 153;
select  
  posts.lasteditoruserid, 
  posts.owneruserid
from 
  posthistory
        right join comments
              inner join comments
                inner join votes
                on (comments.id = votes.id )
              on (comments.userdisplayname <= comments.userdisplayname)
            right join posts
            on (votes.userid = posts.id )
          right join comments
          on (posts.creationdate > posts.lasteditdate)
        on (posts.lastactivitydate > posts.creationdate)
      right join users
        inner join posthistory
        on (users.lastaccessdate = posthistory.creationdate )
      on (users.websiteurl > posthistory.text)
    left join postlinks
        inner join posthistory
          left join posthistory
          on (posthistory.creationdate > posthistory.creationdate)
        on (posthistory.contentlicense >= posthistory.userdisplayname)
      right join posts
      on (postlinks.creationdate <= posthistory.creationdate)
    on (posts.creationdate < posthistory.creationdate)
where posthistory.creationdate is not NULL;
select  
  posts.title, 
  posthistory.text
from 
  posts
    right join posthistory
      left join posthistory
      on (posthistory.comment > posthistory.comment)
    on (posthistory.id >= posthistory.id)
where posts.title is NULL
limit 124;
select  
  max(
    cast(cast(null as oid) as oid)), 
  votes.votetypeid
from 
  votes
where votes.creationdate is not NULL
limit 145;
select  
  comments.id, 
  comments.creationdate
from 
  comments
where comments.text is NULL
limit 89;
select  
  badges.name
from 
  users
      inner join postlinks
      on (users.lastaccessdate >= users.creationdate)
    inner join badges
      inner join users
      on (users.views <= users.accountid)
    on (users.reputation = postlinks.postid)
where postlinks.linktypeid is not NULL;
select  
  max(
    cast(cast(null as date) as date)), 
  comments.score, 
  comments.userid, 
  postlinks.postid, 
  min(
    cast(votes.id as int8)), 
  postlinks.creationdate, 
  comments.text, 
  comments.userdisplayname, 
  comments.userid
from 
  votes
    inner join comments
      left join users
        right join postlinks
        on (users.lastaccessdate = users.lastaccessdate)
      on (users.accountid = postlinks.relatedpostid)
    on (votes.bountyamount = comments.id )
where users.displayname > comments.userdisplayname
limit 23;
select  
  badges.tagbased, 
  min(
    cast(badges.date as timestamptz)), 
  badges.userid, 
  badges.id
from 
  badges
where badges.date is not NULL;
select  
  badges.date, 
  badges.userid, 
  comments.text, 
  comments.text, 
  badges.tagbased, 
  comments.creationdate, 
  comments.postid, 
  comments.postid, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  badges.id, 
  badges.tagbased, 
  comments.score, 
  badges.class, 
  min(
    cast(cast(null as "time") as "time")), 
  comments.text, 
  badges.id
from 
  comments
    right join badges
    on (badges.userid is NULL)
where badges.id is not NULL
limit 115;
select  
  postlinks.postid, 
  postlinks.postid
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 160;
select  
  votes.creationdate, 
  posthistory.comment, 
  votes.postid, 
  posts.creationdate
from 
  comments
      right join posthistory
      on (posthistory.creationdate >= posthistory.creationdate)
    inner join votes
        right join posts
        on (posts.lasteditdate > votes.creationdate)
      inner join posthistory
        left join postlinks
        on (posthistory.id = posthistory.posthistorytypeid)
      on (posts.lasteditdate <= postlinks.creationdate)
    on (posts.creationdate >= posts.closeddate)
where posthistory.creationdate is not NULL
limit 119;
select  
  badges.date, 
  badges.class, 
  posts.creationdate, 
  badges.date, 
  votes.bountyamount, 
  posts.commentcount, 
  users.downvotes
from 
  posts
      right join comments
            right join posthistory
            on (posthistory.text <= posthistory.userdisplayname)
          inner join postlinks
            right join badges
            on (badges.name >= badges.tagbased)
          on (posthistory.creationdate = posthistory.creationdate)
        right join badges
        on (comments.score < badges.id)
      on (postlinks.creationdate >= posts.closeddate)
    inner join votes
      inner join users
      on (users.reputation >= users.accountid)
    on (postlinks.relatedpostid is not NULL)
where posthistory.userid is NULL;
select  
  posts.commentcount
from 
  comments
      right join posts
      on (comments.score = posts.id )
    left join votes
    on (comments.postid is not NULL)
where comments.score is not NULL;
select  
  comments.id, 
  comments.postid, 
  count(*), 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.text, 
  comments.score, 
  comments.userdisplayname, 
  comments.userid
from 
  comments
where comments.creationdate is not NULL
limit 137;
select  
  postlinks.linktypeid
from 
  badges
    right join comments
        inner join posthistory
          inner join comments
              inner join comments
              on (comments.creationdate >= comments.creationdate)
            inner join postlinks
            on (comments.creationdate < comments.creationdate)
          on (posthistory.id = comments.id )
        on (comments.score = postlinks.id )
      inner join badges
        inner join postlinks
          right join postlinks
          on (postlinks.postid = postlinks.postid)
        on (badges.date <= postlinks.creationdate)
      on (comments.userid <= postlinks.linktypeid)
    on (postlinks.linktypeid is not NULL)
where postlinks.postid is not NULL;
select  
  comments.score, 
  comments.userdisplayname, 
  avg(
    cast(cast(null as float8) as float8)), 
  comments.postid, 
  comments.creationdate, 
  max(
    cast(cast(null as float8) as float8))
from 
  comments
where comments.creationdate is NULL;
select  
  min(
    cast(cast(null as "time") as "time")), 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  postlinks.creationdate, 
  max(
    cast(cast(null as "time") as "time")), 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as date) as date)), 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate >= postlinks.creationdate
limit 158;
select  
  min(
    cast(cast(null as tid) as tid)), 
  votes.creationdate, 
  votes.postid, 
  votes.id
from 
  votes
where votes.votetypeid < votes.postid;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  posthistory
where posthistory.revisionguid is NULL
limit 111;
select  
  posthistory.creationdate, 
  posthistory.id, 
  min(
    cast(cast(null as "time") as "time")), 
  posthistory.postid, 
  posthistory.revisionguid, 
  posthistory.comment, 
  posthistory.posthistorytypeid, 
  posthistory.userid, 
  posthistory.userid, 
  sum(
    cast(5 as int4)), 
  posthistory.postid, 
  posthistory.postid, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.postid is NULL
limit 114;
select  
  badges.class, 
  postlinks.creationdate
from 
  badges
          inner join postlinks
            left join posts
              right join postlinks
              on (posts.body <= posts.contentlicense)
            on (posts.closeddate > posts.lastactivitydate)
          on (posts.ownerdisplayname = badges.tagbased)
        inner join votes
          inner join badges
              inner join postlinks
              on (badges.id >= badges.id)
            inner join votes
            on (badges.tagbased < badges.class)
          on (badges.name > badges.name)
        on (badges.name > badges.class)
      left join users
      on (postlinks.relatedpostid <= posts.viewcount)
    right join comments
    on (postlinks.relatedpostid is NULL)
where users.profileimageurl is NULL;
select  
  posthistory.postid, 
  posthistory.revisionguid
from 
  posthistory
where posthistory.posthistorytypeid is not NULL
limit 166;
select  
  users.displayname, 
  sum(
    cast(42 as int4)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.downvotes
from 
  comments
          right join badges
              inner join users
              on (users.location <= badges.tagbased)
            right join comments
                  inner join users
                  on (comments.userdisplayname = users.displayname )
                inner join users
                on (users.aboutme >= users.profileimageurl)
              left join posthistory
              on (users.location < posthistory.comment)
            on (users.downvotes = users.reputation)
          on (posthistory.creationdate < comments.creationdate)
        left join badges
        on (users.creationdate > badges.date)
      left join postlinks
      on (users.creationdate >= comments.creationdate)
    inner join users
      left join votes
      on (users.lastaccessdate = votes.creationdate )
    on (posthistory.userid is not NULL)
where comments.text is NULL;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  comments.score
from 
  comments
where comments.postid is not NULL
limit 90;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  posthistory.creationdate, 
  posthistory.comment, 
  min(
    cast(posthistory.creationdate as timestamptz)), 
  posthistory.comment
from 
  posthistory
where posthistory.text is NULL;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  posthistory.comment
from 
  posthistory
where posthistory.postid is not NULL;
select  
  votes.userid, 
  users.location, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.postid, 
  users.downvotes, 
  users.reputation, 
  sum(
    cast(postlinks.id as int8)), 
  postlinks.postid
from 
  postlinks
    inner join users
          right join votes
          on (users.displayname < users.profileimageurl)
        inner join postlinks
        on (users.reputation = postlinks.id )
      left join postlinks
          left join votes
          on (postlinks.id = votes.id )
        inner join users
        on (users.accountid <= votes.userid)
      on (postlinks.relatedpostid < votes.postid)
    on (postlinks.relatedpostid is not NULL)
where votes.userid <= postlinks.relatedpostid;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  posthistory.userdisplayname, 
  posthistory.text, 
  posthistory.contentlicense, 
  posthistory.revisionguid, 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.userid > posthistory.userid
limit 117;
select  
  users.profileimageurl, 
  users.profileimageurl, 
  users.reputation, 
  users.downvotes
from 
  users
where users.displayname < users.websiteurl
limit 75;
select  
  comments.userid
from 
  users
      inner join users
        left join comments
        on (users.lastaccessdate < users.creationdate)
      on (users.downvotes <= users.reputation)
    inner join badges
    on (users.lastaccessdate > comments.creationdate)
where users.upvotes > comments.id;
select  
  users.location, 
  users.displayname, 
  users.creationdate, 
  users.creationdate, 
  users.websiteurl, 
  users.location, 
  users.profileimageurl, 
  users.aboutme, 
  users.lastaccessdate, 
  users.reputation, 
  users.aboutme, 
  users.location
from 
  users
where users.lastaccessdate is not NULL
limit 124;
select  
  users.reputation, 
  users.id
from 
  users
where users.upvotes is not NULL;
select  
  posthistory.creationdate, 
  badges.name, 
  votes.creationdate, 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as tid) as tid)), 
  badges.userid
from 
  votes
        left join votes
          right join postlinks
          on (votes.postid >= postlinks.id)
        on (votes.creationdate = votes.creationdate)
      inner join badges
        right join badges
            right join posthistory
            on (posthistory.userdisplayname > posthistory.comment)
          inner join posthistory
            left join users
            on (users.aboutme = users.location)
          on (posthistory.comment = users.aboutme)
        on (badges.tagbased = posthistory.userdisplayname )
      on (posthistory.posthistorytypeid = votes.bountyamount)
    right join votes
    on (posthistory.creationdate <= users.creationdate)
where votes.postid is NULL
limit 144;
select  
  posts.creationdate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.closeddate, 
  posts.tags
from 
  posts
where posts.commentcount is not NULL
limit 94;
select  
  badges.date, 
  badges.id, 
  max(
    cast(cast(null as inet) as inet)), 
  badges.userid, 
  badges.date, 
  max(
    cast(cast(null as date) as date)), 
  badges.tagbased, 
  badges.date, 
  badges.name, 
  badges.name, 
  badges.class, 
  badges.class, 
  badges.date, 
  badges.id, 
  sum(
    cast(93 as int4)), 
  min(
    cast(cast(null as float8) as float8)), 
  badges.name, 
  badges.id, 
  badges.id, 
  min(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  badges.date, 
  badges.tagbased, 
  badges.name, 
  badges.id, 
  badges.name, 
  badges.id
from 
  badges
where badges.name is not NULL
limit 101;
select  
  badges.id
from 
  badges
    inner join posthistory
    on (posthistory.postid = badges.id)
where badges.date >= posthistory.creationdate
limit 102;
select  
  postlinks.postid, 
  postlinks.linktypeid
from 
  users
      right join votes
      on (users.aboutme < users.aboutme)
    inner join postlinks
    on (users.downvotes is NULL)
where votes.votetypeid is NULL
limit 151;
select  
  comments.creationdate, 
  comments.score, 
  comments.userdisplayname, 
  comments.score, 
  comments.userid, 
  comments.userdisplayname, 
  comments.text, 
  comments.id, 
  comments.id
from 
  comments
where comments.userid is not NULL;
select  
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.id, 
  badges.date, 
  postlinks.relatedpostid, 
  avg(
    cast(cast(null as int2) as int2))
from 
  postlinks
      inner join postlinks
          inner join badges
          on (postlinks.relatedpostid <= postlinks.linktypeid)
        left join postlinks
        on (badges.userid > postlinks.id)
      on (postlinks.postid = badges.id )
    right join postlinks
    on (postlinks.linktypeid is not NULL)
where postlinks.creationdate is NULL
limit 29;
select  
  comments.creationdate, 
  posthistory.revisionguid, 
  posthistory.creationdate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posthistory.revisionguid, 
  posthistory.userdisplayname, 
  votes.userid, 
  comments.postid, 
  avg(
    cast(cast(null as float4) as float4)), 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.text, 
  sum(
    cast(cast(null as float8) as float8))
from 
  comments
        inner join users
        on (users.lastaccessdate < users.lastaccessdate)
      left join votes
        right join posthistory
        on (votes.postid = posthistory.id )
      on (users.upvotes > users.upvotes)
    left join posthistory
    on (comments.score = posthistory.id )
where posthistory.postid >= votes.bountyamount
limit 171;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.contentlicense, 
  posthistory.userdisplayname, 
  posthistory.revisionguid, 
  posthistory.contentlicense, 
  posthistory.id, 
  sum(
    cast(cast(null as float8) as float8)), 
  posthistory.posthistorytypeid, 
  avg(
    cast(cast(null as float8) as float8)), 
  avg(
    cast(20 as int4)), 
  posthistory.contentlicense, 
  posthistory.contentlicense, 
  posthistory.text, 
  posthistory.userdisplayname, 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  posthistory.id, 
  posthistory.userid, 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.id, 
  posthistory.userid, 
  posthistory.id
from 
  posthistory
where posthistory.postid is NULL
limit 144;
select distinct 
  votes.bountyamount, 
  votes.postid, 
  votes.userid, 
  votes.votetypeid, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.votetypeid, 
  max(
    cast(cast(null as text) as text)), 
  votes.postid, 
  votes.creationdate, 
  votes.id, 
  votes.id, 
  votes.bountyamount
from 
  votes
where votes.postid is NULL
limit 119;
select  
  posts.lasteditordisplayname, 
  posts.title
from 
  posts
where posts.lastactivitydate is not NULL
limit 97;
select  
  posts.lastactivitydate
from 
  badges
    right join users
          inner join votes
          on (users.id <= users.downvotes)
        right join comments
          inner join users
          on (users.profileimageurl <= users.profileimageurl)
        on (votes.creationdate < users.lastaccessdate)
      right join posts
        left join posts
            inner join posts
            on (posts.body > posts.lasteditordisplayname)
          inner join comments
          on (posts.body = comments.userdisplayname )
        on (comments.creationdate = posts.closeddate)
      on (users.downvotes = posts.id )
    on (posts.creationdate is NULL)
where badges.class is NULL;
select  
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  count(*), 
  users.views
from 
  postlinks
        inner join users
        on (users.websiteurl < users.aboutme)
      inner join posthistory
      on (users.downvotes <= users.accountid)
    right join posthistory
    on (posthistory.userdisplayname is not NULL)
where posthistory.creationdate <= posthistory.creationdate
limit 81;
select  
  votes.userid, 
  votes.userid, 
  votes.creationdate
from 
  votes
where votes.votetypeid is not NULL;
select  
  badges.name, 
  max(
    cast(cast(null as float8) as float8))
from 
  badges
where badges.userid is not NULL
limit 149;
select  
  users.displayname, 
  users.reputation, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postlinks.relatedpostid, 
  comments.creationdate
from 
  users
        left join postlinks
        on (users.views = postlinks.relatedpostid)
      right join badges
      on (users.creationdate > users.lastaccessdate)
    left join users
          right join postlinks
          on (users.lastaccessdate > postlinks.creationdate)
        right join votes
        on (users.aboutme = users.displayname)
      left join users
        left join comments
        on (comments.score = comments.score)
      on (users.lastaccessdate >= users.creationdate)
    on (users.reputation is NULL)
where users.reputation is NULL
limit 161;
select  
  min(
    cast(cast(null as tid) as tid)), 
  users.upvotes, 
  badges.userid, 
  min(
    cast(cast(null as inet) as inet))
from 
  badges
    left join users
    on (users.accountid = users.downvotes)
where users.downvotes = users.accountid
limit 132;
select  
  max(
    cast(cast(null as money) as money)), 
  users.aboutme, 
  users.reputation, 
  users.upvotes
from 
  users
where users.downvotes = users.reputation
limit 112;
select  
  users.accountid, 
  users.reputation
from 
  users
    right join users
      inner join users
      on (users.lastaccessdate < users.lastaccessdate)
    on (users.accountid is not NULL)
where users.reputation is NULL
limit 33;
select  
  votes.bountyamount, 
  votes.postid, 
  badges.date, 
  votes.creationdate, 
  votes.userid, 
  votes.userid, 
  max(
    cast(badges.date as timestamptz)), 
  votes.id, 
  badges.userid, 
  badges.id, 
  votes.postid, 
  badges.id, 
  votes.votetypeid
from 
  badges
    inner join votes
    on (badges.userid >= votes.userid)
where votes.creationdate is NULL;
select  
  posthistory.contentlicense, 
  avg(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.creationdate, 
  users.accountid, 
  users.profileimageurl, 
  posthistory.text, 
  postlinks.relatedpostid, 
  avg(
    cast(cast(null as int2) as int2)), 
  comments.text, 
  posts.score, 
  posts.body, 
  votes.id, 
  users.reputation, 
  badges.tagbased, 
  users.downvotes, 
  posts.contentlicense, 
  avg(
    cast(cast(null as float8) as float8)), 
  users.creationdate, 
  posts.owneruserid, 
  postlinks.linktypeid, 
  posthistory.postid, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  postlinks
      inner join postlinks
          inner join users
                left join posthistory
                on (users.profileimageurl > posthistory.text)
              inner join badges
                inner join votes
                on (badges.name >= badges.name)
              on (users.accountid <= users.reputation)
            left join badges
            on (users.aboutme <= badges.class)
          on (posthistory.posthistorytypeid <= votes.bountyamount)
        inner join postlinks
                right join posts
                on (posts.ownerdisplayname = posts.ownerdisplayname)
              right join users
              on (posts.id < posts.id)
            inner join posts
            on (postlinks.creationdate >= posts.creationdate)
          inner join comments
          on (postlinks.linktypeid >= posts.score)
        on (badges.id = votes.bountyamount)
      on (posts.title >= users.profileimageurl)
    right join votes
    on (badges.userid = votes.id )
where comments.userid is NULL
limit 92;
select  
  postlinks.postid, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.tags, 
  posts.commentcount, 
  posts.favoritecount, 
  sum(
    cast(cast(null as int2) as int2))
from 
  postlinks
    right join posts
    on (postlinks.creationdate is not NULL)
where posts.tags is not NULL;
select  
  postlinks.relatedpostid
from 
  comments
      right join posts
          left join posthistory
          on (posthistory.userid <= posthistory.posthistorytypeid)
        right join posthistory
          inner join users
          on (users.lastaccessdate < users.lastaccessdate)
        on (posts.parentid = posthistory.posthistorytypeid)
      on (posthistory.userid > users.accountid)
    inner join posts
          left join postlinks
          on (posts.contentlicense < posts.body)
        inner join badges
        on (posts.ownerdisplayname >= badges.tagbased)
      inner join badges
      on (posts.creationdate = posts.closeddate)
    on (users.accountid is not NULL)
where posts.id is NULL
limit 100;
select  
  max(
    cast(11 as int4)), 
  min(
    cast(badges.class as text)), 
  users.reputation, 
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as timetz) as timetz)), 
  posts.posttypeid, 
  votes.creationdate, 
  postlinks.relatedpostid, 
  votes.postid, 
  users.downvotes, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  users.views
from 
  users
      inner join badges
            right join votes
            on (badges.date >= votes.creationdate)
          right join votes
            inner join users
            on (users.websiteurl = users.displayname)
          on (users.accountid = votes.postid)
        right join posthistory
          inner join votes
            right join posts
            on (posts.viewcount < posts.lasteditoruserid)
          on (votes.votetypeid < posts.posttypeid)
        on (votes.bountyamount = posthistory.id )
      on (posts.lastactivitydate >= users.lastaccessdate)
    inner join postlinks
    on (posts.body is NULL)
where postlinks.postid is not NULL;
select  
  votes.bountyamount, 
  votes.postid
from 
  votes
      left join posthistory
      on (posthistory.userdisplayname < posthistory.contentlicense)
    left join badges
    on (posthistory.posthistorytypeid is not NULL)
where posthistory.revisionguid is not NULL;
select  
  users.upvotes, 
  max(
    cast(cast(null as "time") as "time")), 
  users.displayname, 
  users.displayname
from 
  users
where users.lastaccessdate = users.lastaccessdate;
select  
  votes.userid, 
  votes.bountyamount, 
  min(
    cast(cast(null as float4) as float4)), 
  votes.postid, 
  votes.votetypeid, 
  votes.creationdate, 
  votes.id
from 
  votes
where votes.bountyamount < votes.postid;
select  
  min(
    cast(cast(null as tid) as tid)), 
  badges.date, 
  comments.id, 
  badges.class, 
  badges.tagbased, 
  comments.postid, 
  comments.text, 
  comments.score, 
  comments.id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.id, 
  comments.score, 
  badges.tagbased, 
  badges.tagbased, 
  comments.postid, 
  avg(
    cast(cast(null as float4) as float4))
from 
  comments
    inner join badges
    on (badges.id is NULL)
where comments.creationdate is NULL
limit 124;
select  
  posts.lasteditordisplayname, 
  posts.favoritecount, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  posts.lasteditdate, 
  posts.title
from 
  posts
    right join badges
    on (badges.userid is not NULL)
where posts.closeddate is not NULL
limit 136;
select  
  users.downvotes, 
  badges.id, 
  postlinks.linktypeid, 
  votes.creationdate
from 
  badges
        right join badges
        on (badges.id <= badges.userid)
      left join users
        left join badges
        on (badges.class > users.websiteurl)
      on (users.aboutme = badges.class)
    inner join votes
        inner join postlinks
        on (postlinks.creationdate >= postlinks.creationdate)
      inner join badges
          left join postlinks
            inner join comments
            on (postlinks.id = comments.id )
          on (postlinks.creationdate < postlinks.creationdate)
        inner join votes
          inner join users
            inner join postlinks
              inner join posthistory
              on (postlinks.creationdate <= posthistory.creationdate)
            on (users.lastaccessdate = postlinks.creationdate )
          on (posthistory.userdisplayname > users.aboutme)
        on (postlinks.creationdate >= votes.creationdate)
      on (posthistory.postid >= posthistory.userid)
    on (badges.name < users.profileimageurl)
where users.displayname is not NULL
limit 105;
select  
  posthistory.creationdate
from 
  posthistory
    inner join posthistory
      inner join comments
      on (posthistory.id >= comments.id)
    on (posthistory.postid = comments.id )
where comments.userdisplayname is NULL
limit 37;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  comments
where comments.score >= comments.id
limit 79;
select  
  comments.postid, 
  comments.userdisplayname, 
  comments.text, 
  comments.score, 
  comments.creationdate, 
  comments.userdisplayname, 
  max(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.score, 
  comments.postid, 
  comments.creationdate, 
  comments.score, 
  comments.score, 
  comments.userid, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  comments.postid, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  comments.postid, 
  comments.userdisplayname, 
  comments.userid, 
  comments.userid
from 
  comments
where comments.creationdate is NULL
limit 60;
select  
  posts.communityowneddate, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.title
from 
  posts
where posts.tags is not NULL;
select  
  min(
    cast(badges.userid as int8)), 
  badges.tagbased, 
  badges.class, 
  badges.id, 
  badges.date, 
  badges.userid, 
  badges.date
from 
  badges
where badges.id is not NULL
limit 169;
select  
  comments.text, 
  votes.bountyamount, 
  comments.userid, 
  posts.tags
from 
  users
            inner join votes
            on (users.creationdate = votes.creationdate )
          inner join posts
          on (posts.lasteditdate > votes.creationdate)
        left join comments
        on (users.aboutme = comments.userdisplayname )
      left join votes
            inner join posts
            on (posts.title >= posts.title)
          inner join posts
          on (posts.commentcount >= posts.acceptedanswerid)
        inner join postlinks
        on (posts.acceptedanswerid <= votes.votetypeid)
      on (comments.creationdate <= posts.communityowneddate)
    left join votes
      inner join postlinks
      on (votes.votetypeid = votes.id)
    on (comments.postid = comments.postid)
where votes.votetypeid is not NULL;
select  
  posts.contentlicense, 
  comments.postid, 
  postlinks.relatedpostid, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  comments.userid, 
  comments.text, 
  posts.answercount, 
  posts.answercount, 
  postlinks.postid, 
  votes.userid, 
  votes.creationdate, 
  votes.bountyamount, 
  badges.name, 
  postlinks.linktypeid, 
  users.displayname, 
  votes.bountyamount, 
  comments.userid, 
  badges.date, 
  badges.tagbased, 
  users.upvotes, 
  badges.tagbased, 
  badges.userid, 
  votes.postid, 
  badges.id, 
  users.lastaccessdate, 
  comments.postid, 
  users.profileimageurl, 
  users.downvotes, 
  badges.tagbased, 
  users.aboutme, 
  votes.creationdate, 
  users.reputation, 
  badges.id, 
  badges.userid, 
  users.id, 
  postlinks.creationdate
from 
  users
    inner join posts
      left join comments
        inner join postlinks
            inner join badges
            on (badges.userid >= badges.id)
          left join votes
          on (badges.date = postlinks.creationdate)
        on (badges.date <= votes.creationdate)
      on (posts.commentcount >= badges.id)
    on (users.creationdate > badges.date)
where posts.title = posts.lasteditordisplayname
limit 87;
select  
  posts.ownerdisplayname, 
  comments.userid, 
  posts.closeddate, 
  posts.posttypeid, 
  comments.creationdate, 
  posts.score, 
  comments.score, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.parentid, 
  comments.postid, 
  comments.text
from 
  posts
      inner join comments
          inner join comments
          on (comments.userid = comments.id )
        inner join posts
        on (posts.lasteditordisplayname > posts.lasteditordisplayname)
      on (comments.postid = posts.viewcount)
    left join badges
    on (comments.text = badges.class )
where posts.score is not NULL
limit 98;
select  
  min(
    cast(96 as int4)), 
  postlinks.creationdate, 
  postlinks.linktypeid
from 
  postlinks
    inner join posthistory
    on (postlinks.relatedpostid is not NULL)
where postlinks.relatedpostid is NULL
limit 162;
select  
  badges.class, 
  badges.name, 
  badges.tagbased, 
  badges.date, 
  badges.name, 
  badges.tagbased
from 
  badges
where badges.date is NULL
limit 89;
select  
  badges.class, 
  badges.date, 
  badges.date, 
  badges.id, 
  badges.userid, 
  badges.tagbased, 
  badges.name, 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.tagbased, 
  badges.userid, 
  badges.userid, 
  badges.date, 
  badges.userid, 
  badges.id, 
  badges.tagbased, 
  badges.tagbased
from 
  badges
where badges.tagbased is NULL;
select  
  comments.userdisplayname
from 
  comments
    left join comments
    on (comments.id is NULL)
where comments.postid is NULL
limit 83;
select  
  posthistory.userid, 
  posthistory.postid, 
  posthistory.creationdate, 
  posthistory.id, 
  posthistory.comment
from 
  posthistory
where posthistory.creationdate >= posthistory.creationdate
limit 53;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  users.creationdate, 
  users.websiteurl, 
  posts.tags, 
  posts.communityowneddate, 
  posts.parentid, 
  posthistory.userdisplayname, 
  max(
    cast(posts.lasteditoruserid as int8)), 
  posthistory.comment, 
  posthistory.userid, 
  badges.userid, 
  users.displayname, 
  posthistory.contentlicense
from 
  badges
    inner join posts
        left join posts
        on (posts.closeddate = posts.creationdate )
      right join badges
        inner join posthistory
            right join users
              left join posthistory
              on (users.lastaccessdate <= users.creationdate)
            on (users.aboutme = users.displayname)
          right join posts
            inner join postlinks
            on (posts.lasteditordisplayname <= posts.body)
          on (users.displayname <= users.displayname)
        on (posts.answercount < badges.id)
      on (posts.acceptedanswerid <= posts.favoritecount)
    on (posts.title > posts.lasteditordisplayname)
where posts.viewcount is not NULL
limit 142;
select  
  posthistory.revisionguid, 
  posthistory.postid, 
  posthistory.userid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.text is NULL;
select  
  posthistory.text, 
  posthistory.creationdate, 
  posthistory.revisionguid, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.creationdate = posthistory.creationdate
limit 78;
select  
  posts.body
from 
  posts
where posts.contentlicense is not NULL
limit 90;
select  
  max(
    cast(posts.tags as text)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.body, 
  posts.lasteditoruserid, 
  posts.title, 
  posts.lasteditdate, 
  posts.answercount, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  posts.tags, 
  posts.posttypeid
from 
  posts
where posts.parentid is NULL
limit 146;
select  
  comments.creationdate, 
  comments.id, 
  comments.text, 
  comments.userid
from 
  comments
where comments.userid is NULL;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.class, 
  badges.id, 
  votes.id, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.id
from 
  badges
    inner join votes
      left join votes
      on (votes.creationdate > votes.creationdate)
    on (votes.postid is not NULL)
where badges.tagbased = badges.name
limit 191;
select  
  users.creationdate, 
  users.aboutme, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  users
where users.reputation is not NULL
limit 36;
select  
  votes.id, 
  votes.id, 
  votes.bountyamount, 
  votes.postid, 
  votes.id, 
  votes.votetypeid, 
  votes.id, 
  min(
    cast(cast(null as "time") as "time")), 
  votes.id, 
  votes.votetypeid, 
  votes.votetypeid
from 
  votes
where votes.id is not NULL
limit 78;
select  
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  posthistory
where posthistory.posthistorytypeid is not NULL
limit 49;
select  
  postlinks.id
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 98;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.userid
from 
  badges
where badges.tagbased > badges.name
limit 73;
select  
  posts.favoritecount, 
  posts.viewcount
from 
  posts
where posts.viewcount is not NULL
limit 90;
select  
  comments.score, 
  comments.score, 
  comments.text, 
  comments.userid, 
  comments.score, 
  comments.score
from 
  comments
where comments.score is NULL;
select  
  posts.id, 
  posts.communityowneddate, 
  posts.score, 
  posts.answercount, 
  posts.contentlicense, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  posts
where posts.body is NULL
limit 83;
select  
  sum(
    cast(posts.posttypeid as int8)), 
  posts.body, 
  posts.lastactivitydate, 
  posts.posttypeid, 
  posts.commentcount, 
  posts.posttypeid, 
  posts.communityowneddate, 
  min(
    cast(cast(null as int2) as int2)), 
  posts.closeddate, 
  posts.favoritecount, 
  posts.score, 
  posts.lastactivitydate, 
  posts.acceptedanswerid, 
  posts.answercount, 
  posts.posttypeid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  posts.contentlicense, 
  posts.id, 
  posts.owneruserid, 
  posts.lasteditdate, 
  avg(
    cast(cast(null as float8) as float8))
from 
  posts
where posts.communityowneddate is not NULL
limit 168;
select  
  users.aboutme, 
  avg(
    cast(13 as int4)), 
  max(
    cast(cast(null as float4) as float4)), 
  users.id
from 
  comments
      right join users
      on (users.location <= users.websiteurl)
    inner join posts
    on (users.websiteurl is not NULL)
where comments.text >= users.websiteurl
limit 147;
select  
  posts.body, 
  posthistory.id, 
  min(
    cast(cast(null as oid) as oid)), 
  users.views, 
  votes.bountyamount, 
  posts.owneruserid, 
  sum(
    cast(cast(null as money) as money))
from 
  votes
        inner join posts
          right join posthistory
            inner join postlinks
            on (posthistory.postid = postlinks.id )
          on (posthistory.contentlicense < posthistory.revisionguid)
        on (posthistory.posthistorytypeid >= posts.acceptedanswerid)
      inner join posthistory
      on (posts.commentcount < postlinks.postid)
    inner join users
    on (postlinks.linktypeid is NULL)
where postlinks.creationdate <= votes.creationdate;
select  
  badges.userid, 
  badges.userid
from 
  badges
where badges.date < badges.date;
select  
  users.views, 
  posthistory.userid
from 
  comments
          right join posts
          on (posts.answercount <= posts.favoritecount)
        inner join postlinks
          right join users
          on (postlinks.id = users.id )
        on (posts.lastactivitydate <= users.creationdate)
      left join posts
            left join postlinks
            on (postlinks.creationdate = posts.lastactivitydate)
          left join postlinks
            left join comments
            on (comments.creationdate = postlinks.creationdate)
          on (posts.ownerdisplayname <= posts.tags)
        inner join votes
        on (posts.ownerdisplayname = posts.body)
      on (postlinks.id = users.id)
    right join posthistory
            right join users
            on (users.reputation = users.reputation)
          inner join votes
          on (users.creationdate <= votes.creationdate)
        left join comments
        on (votes.bountyamount = users.accountid)
      inner join badges
      on (posthistory.posthistorytypeid > comments.score)
    on (posts.communityowneddate > posts.communityowneddate)
where comments.userdisplayname is NULL
limit 126;
select  
  users.profileimageurl, 
  users.id, 
  users.reputation, 
  users.upvotes, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.accountid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  users.creationdate
from 
  users
where users.id is NULL;
select  
  users.websiteurl, 
  users.profileimageurl, 
  users.aboutme, 
  users.lastaccessdate, 
  users.reputation, 
  users.lastaccessdate, 
  users.upvotes
from 
  users
where users.upvotes > users.downvotes
limit 113;
select  
  votes.userid
from 
  users
        inner join comments
        on (comments.score = users.accountid)
      inner join postlinks
      on (postlinks.id = comments.postid)
    right join votes
    on (postlinks.id is NULL)
where users.creationdate = postlinks.creationdate
limit 61;
select  
  posts.title, 
  posts.title, 
  posts.favoritecount, 
  posts.parentid, 
  posts.tags, 
  posts.creationdate, 
  comments.userid, 
  posts.lastactivitydate, 
  posts.contentlicense, 
  posts.parentid, 
  posts.favoritecount, 
  posts.lasteditoruserid
from 
  comments
          inner join posts
          on (posts.body = posts.lasteditordisplayname)
        right join comments
        on (posts.score = comments.id )
      inner join postlinks
      on (posts.creationdate = postlinks.creationdate )
    inner join posts
    on (comments.userid = posts.commentcount)
where comments.text is not NULL;
select  
  postlinks.id, 
  postlinks.creationdate, 
  min(
    cast(cast(null as "time") as "time"))
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 128;
select  
  posthistory.text, 
  max(
    cast(cast(null as inet) as inet)), 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  posthistory.comment, 
  posthistory.contentlicense, 
  posthistory.contentlicense, 
  posthistory.contentlicense, 
  posthistory.userdisplayname, 
  posthistory.posthistorytypeid, 
  posthistory.comment, 
  max(
    cast(cast(null as timetz) as timetz)), 
  posthistory.userid, 
  min(
    cast(cast(null as money) as money)), 
  posthistory.userdisplayname, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.userdisplayname < posthistory.contentlicense
limit 52;
select  
  max(
    cast(cast(null as float4) as float4)), 
  votes.votetypeid
from 
  votes
where votes.votetypeid is not NULL
limit 108;
select  
  votes.id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.creationdate, 
  votes.creationdate, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as oid) as oid)), 
  votes.postid, 
  votes.userid
from 
  votes
where votes.bountyamount is not NULL
limit 134;
select  
  users.views, 
  badges.date
from 
  posts
        inner join badges
        on (posts.lasteditoruserid < posts.score)
      left join badges
      on (badges.date < badges.date)
    inner join users
    on (badges.class = users.displayname )
where posts.viewcount is NULL
limit 47;
select  
  posts.lastactivitydate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.body, 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  posts
      right join badges
      on (badges.date > posts.lasteditdate)
    right join comments
    on (badges.id is NULL)
where badges.tagbased is NULL;
select  
  posthistory.revisionguid, 
  posthistory.id, 
  badges.id, 
  badges.userid
from 
  badges
        right join comments
        on (comments.postid > comments.score)
      inner join badges
        right join posts
          right join posthistory
          on (posts.body > posts.lasteditordisplayname)
        on (posthistory.creationdate < posthistory.creationdate)
      on (posts.score <= posthistory.postid)
    left join posthistory
    on (comments.userid is not NULL)
where posts.ownerdisplayname >= badges.tagbased
limit 105;
select  
  posts.acceptedanswerid, 
  posts.lasteditordisplayname, 
  avg(
    cast(posts.acceptedanswerid as int8)), 
  posts.creationdate, 
  posts.ownerdisplayname, 
  posts.acceptedanswerid, 
  posts.lastactivitydate, 
  posts.acceptedanswerid, 
  sum(
    cast(cast(null as float4) as float4))
from 
  posts
where posts.body >= posts.title;
select distinct 
  min(
    cast(comments.creationdate as timestamptz)), 
  comments.userid, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  comments.userdisplayname, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  posthistory
          left join users
          on (posthistory.creationdate > users.lastaccessdate)
        right join users
        on (users.reputation = posthistory.userid)
      right join comments
      on (users.location > users.displayname)
    inner join postlinks
            right join posthistory
            on (posthistory.creationdate > posthistory.creationdate)
          inner join votes
          on (posthistory.userid > postlinks.linktypeid)
        inner join postlinks
            inner join votes
            on (votes.creationdate < votes.creationdate)
          right join comments
          on (comments.userdisplayname <= comments.text)
        on (posthistory.comment >= posthistory.contentlicense)
      inner join postlinks
      on (posthistory.revisionguid <= posthistory.contentlicense)
    on (posthistory.posthistorytypeid = postlinks.id )
where votes.postid is not NULL;
select  
  badges.tagbased
from 
  badges
where badges.tagbased is NULL
limit 89;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.relatedpostid is not NULL;
select  
  comments.userid, 
  comments.id, 
  comments.creationdate
from 
  comments
where comments.creationdate is NULL;
select  
  min(
    cast(comments.creationdate as timestamptz)), 
  comments.id, 
  comments.userdisplayname
from 
  comments
where comments.text <= comments.userdisplayname;
select  
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  min(
    cast(postlinks.id as int8)), 
  postlinks.relatedpostid, 
  postlinks.id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.postid
from 
  postlinks
where postlinks.id is not NULL
limit 98;
select  
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.userdisplayname, 
  count(
    cast(posthistory.id as int8)), 
  posthistory.contentlicense, 
  posthistory.userdisplayname, 
  posthistory.userid, 
  posthistory.comment, 
  min(
    cast(cast(null as oid) as oid)), 
  posthistory.posthistorytypeid, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  posthistory
where posthistory.creationdate = posthistory.creationdate
limit 89;
select  
  posthistory.text, 
  posthistory.id, 
  max(
    cast(76 as int4)), 
  posthistory.id, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.revisionguid is NULL
limit 172;
select  
  min(
    cast(cast(null as "time") as "time")), 
  comments.text, 
  comments.score, 
  comments.creationdate, 
  comments.id, 
  comments.postid, 
  max(
    cast(cast(null as oid) as oid)), 
  comments.creationdate, 
  comments.score
from 
  comments
where comments.userdisplayname < comments.text
limit 100;
select  
  postlinks.relatedpostid, 
  sum(
    cast(cast(null as float4) as float4)), 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.creationdate is not NULL
limit 95;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  badges.id, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  comments.score, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postlinks.linktypeid, 
  badges.id, 
  min(
    cast(cast(null as inet) as inet)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.name, 
  posthistory.userdisplayname, 
  min(
    cast(cast(null as float8) as float8)), 
  comments.text, 
  postlinks.id, 
  postlinks.postid, 
  posts.ownerdisplayname
from 
  comments
    inner join postlinks
        inner join posts
            left join badges
            on (posts.communityowneddate <= posts.lastactivitydate)
          left join posthistory
          on (badges.date = posthistory.creationdate )
        on (badges.name > posthistory.text)
      right join postlinks
        inner join postlinks
        on (postlinks.creationdate > postlinks.creationdate)
      on (postlinks.linktypeid <= postlinks.id)
    on (posthistory.posthistorytypeid is NULL)
where posthistory.revisionguid is not NULL;
select  
  badges.id, 
  badges.date, 
  badges.name, 
  badges.userid, 
  users.downvotes, 
  badges.userid, 
  badges.userid, 
  badges.tagbased, 
  badges.class, 
  badges.userid, 
  users.aboutme, 
  users.creationdate
from 
  badges
      inner join users
      on (users.location <= badges.class)
    right join users
      left join badges
        inner join posthistory
        on (posthistory.userid = badges.userid)
      on (posthistory.text >= posthistory.comment)
    on (badges.name = badges.class )
where posthistory.userid is NULL;
select  
  votes.bountyamount
from 
  votes
where votes.votetypeid is NULL;
select  
  postlinks.linktypeid, 
  min(
    cast(cast(null as "interval") as "interval")), 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  max(
    cast(84 as int4)), 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 91;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  postlinks.creationdate
from 
  badges
    right join postlinks
    on (badges.id <= postlinks.linktypeid)
where badges.userid <= postlinks.linktypeid
limit 68;
select  
  posts.title
from 
  posthistory
    inner join posthistory
      right join posts
      on (posthistory.creationdate < posthistory.creationdate)
    on (posthistory.comment is NULL)
where posthistory.userid is not NULL
limit 84;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  badges.tagbased
from 
  postlinks
    inner join posthistory
      inner join badges
        inner join users
            inner join votes
            on (users.id = votes.postid)
          left join posthistory
          on (posthistory.revisionguid = posthistory.comment)
        on (badges.id = votes.id )
      on (posthistory.postid >= votes.id)
    on (posthistory.text >= badges.class)
where votes.votetypeid is NULL;
select  
  comments.userid, 
  comments.userid, 
  comments.score, 
  comments.postid, 
  comments.userid, 
  comments.id
from 
  comments
where comments.userid is NULL
limit 107;
select  
  min(
    cast(cast(null as oid) as oid)), 
  comments.text, 
  comments.score
from 
  comments
where comments.score is NULL;
select  
  posthistory.userid, 
  avg(
    cast(cast(null as float4) as float4)), 
  posthistory.contentlicense, 
  votes.bountyamount
from 
  postlinks
      left join votes
      on (votes.creationdate = postlinks.creationdate)
    inner join votes
        left join votes
        on (votes.creationdate < votes.creationdate)
      right join posthistory
        inner join posthistory
        on (posthistory.id < posthistory.posthistorytypeid)
      on (votes.votetypeid > posthistory.posthistorytypeid)
    on (posthistory.contentlicense is not NULL)
where posthistory.creationdate is NULL;
select  
  posthistory.revisionguid, 
  posthistory.text, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  posthistory
where posthistory.comment is NULL
limit 140;
select  
  badges.userid, 
  postlinks.relatedpostid, 
  users.lastaccessdate, 
  postlinks.relatedpostid, 
  count(*), 
  badges.userid, 
  users.location
from 
  comments
        right join badges
          inner join postlinks
          on (badges.userid > postlinks.id)
        on (badges.class >= badges.tagbased)
      left join postlinks
        left join postlinks
          inner join postlinks
            right join users
            on (users.reputation <= users.id)
          on (users.id > users.downvotes)
        on (postlinks.creationdate = postlinks.creationdate)
      on (comments.creationdate <= badges.date)
    inner join users
      inner join users
      on (users.location <= users.displayname)
    on (comments.userid is not NULL)
where users.lastaccessdate <= badges.date
limit 113;
select  
  min(
    cast(cast(null as int2) as int2)), 
  avg(
    cast(cast(null as "interval") as "interval")), 
  posthistory.userdisplayname
from 
  comments
      left join badges
      on (badges.class < comments.userdisplayname)
    right join posthistory
      left join comments
      on (comments.creationdate <= comments.creationdate)
    on (badges.date = comments.creationdate )
where comments.userid = comments.score
limit 107;
select  
  badges.userid, 
  min(
    cast(posts.owneruserid as int8)), 
  comments.score, 
  badges.userid
from 
  comments
          inner join votes
            inner join users
            on (users.displayname < users.profileimageurl)
          on (users.aboutme > comments.userdisplayname)
        inner join badges
        on (comments.userid >= users.views)
      inner join posts
        inner join badges
        on (posts.answercount = posts.owneruserid)
      on (comments.id = badges.id )
    inner join votes
    on (users.aboutme is NULL)
where posts.creationdate < posts.lasteditdate
limit 46;
select  
  posthistory.userdisplayname
from 
  posthistory
    right join comments
      inner join posts
      on (posts.posttypeid = posts.parentid)
    on (posthistory.postid = posts.id )
where posthistory.userdisplayname is not NULL
limit 137;
select  
  votes.creationdate, 
  comments.creationdate, 
  badges.tagbased, 
  badges.userid
from 
  badges
            right join comments
            on (badges.userid <= comments.score)
          inner join users
          on (comments.creationdate = users.creationdate )
        left join votes
        on (comments.postid = votes.id )
      right join badges
      on (votes.votetypeid = badges.id )
    right join comments
    on (comments.creationdate < badges.date)
where badges.id >= comments.score
limit 42;
select  
  postlinks.postid, 
  badges.userid, 
  votes.postid, 
  votes.postid, 
  posts.title, 
  comments.postid, 
  badges.class, 
  posthistory.postid, 
  votes.votetypeid, 
  votes.bountyamount, 
  badges.class, 
  posthistory.userid, 
  posts.owneruserid, 
  count(*), 
  badges.class, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.name, 
  posts.acceptedanswerid
from 
  comments
        inner join posthistory
              right join postlinks
                inner join posthistory
                on (posthistory.creationdate <= postlinks.creationdate)
              on (posthistory.userdisplayname = posthistory.userdisplayname )
            inner join badges
            on (posthistory.contentlicense >= posthistory.userdisplayname)
          left join postlinks
          on (badges.userid = postlinks.id )
        on (posthistory.comment <= posthistory.text)
      left join posts
            inner join posts
            on (posts.contentlicense < posts.ownerdisplayname)
          right join votes
            inner join votes
            on (votes.id = votes.id )
          on (posts.closeddate >= posts.closeddate)
        left join postlinks
          left join posts
          on (posts.lastactivitydate = posts.communityowneddate)
        on (posts.score > posts.score)
      on (votes.creationdate < posts.creationdate)
    right join badges
    on (postlinks.linktypeid is not NULL)
where posthistory.contentlicense is not NULL
limit 53;
select  
  comments.text, 
  comments.id, 
  comments.postid, 
  comments.userid, 
  comments.userid, 
  comments.userdisplayname, 
  comments.score, 
  comments.id, 
  comments.creationdate
from 
  comments
where comments.text is not NULL;
select  
  badges.id, 
  avg(
    cast(cast(null as float8) as float8)), 
  badges.name, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.date, 
  max(
    cast(cast(null as money) as money)), 
  badges.tagbased, 
  badges.class
from 
  badges
where badges.userid = badges.id
limit 73;
select  
  posthistory.postid, 
  posthistory.revisionguid, 
  avg(
    cast(cast(null as float8) as float8)), 
  posthistory.postid, 
  posthistory.userid, 
  posthistory.userdisplayname, 
  posthistory.creationdate, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  posthistory
where posthistory.creationdate >= posthistory.creationdate
limit 115;
select  
  posthistory.creationdate, 
  posthistory.id
from 
  posthistory
      right join postlinks
        inner join badges
          inner join postlinks
            left join posthistory
              left join users
                inner join posthistory
                on (users.views > users.downvotes)
              on (posthistory.creationdate <= users.creationdate)
            on (posthistory.comment <= posthistory.contentlicense)
          on (users.profileimageurl <= badges.name)
        on (badges.name > posthistory.text)
      on (posthistory.comment >= badges.class)
    inner join votes
    on (users.location = posthistory.comment)
where postlinks.postid > posthistory.postid
limit 127;
select  
  users.profileimageurl, 
  posts.title, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  users.upvotes, 
  posts.tags
from 
  users
      left join posts
        inner join posts
        on (posts.closeddate > posts.communityowneddate)
      on (users.views = posts.commentcount)
    inner join votes
    on (posts.favoritecount is not NULL)
where posts.id >= posts.favoritecount;
select  
  votes.creationdate, 
  votes.creationdate, 
  votes.bountyamount, 
  postlinks.postid, 
  votes.userid, 
  posthistory.revisionguid, 
  posts.owneruserid, 
  postlinks.id
from 
  postlinks
      inner join votes
      on (postlinks.creationdate = postlinks.creationdate)
    inner join posts
        left join postlinks
        on (posts.score = posts.lasteditoruserid)
      left join posthistory
        inner join comments
        on (posthistory.comment <= posthistory.userdisplayname)
      on (postlinks.id >= posthistory.id)
    on (postlinks.relatedpostid = postlinks.id )
where postlinks.id <= posts.acceptedanswerid
limit 111;
select  
  users.reputation, 
  users.id, 
  posts.answercount, 
  posts.ownerdisplayname, 
  users.aboutme, 
  users.websiteurl, 
  users.views
from 
  users
    inner join posts
    on (posts.ownerdisplayname is NULL)
where users.displayname is NULL;
select  
  posts.lasteditdate, 
  posts.lastactivitydate, 
  posts.creationdate, 
  posts.viewcount
from 
  posts
where posts.parentid is NULL
limit 94;
select  
  postlinks.creationdate, 
  postlinks.id, 
  posts.contentlicense, 
  posts.parentid, 
  posts.score
from 
  postlinks
            inner join postlinks
              left join posthistory
              on (posthistory.revisionguid <= posthistory.text)
            on (postlinks.creationdate < postlinks.creationdate)
          inner join posts
          on (posts.body <= posts.contentlicense)
        inner join users
            inner join posts
            on (users.views <= users.views)
          inner join users
          on (users.id >= users.id)
        on (posthistory.userdisplayname >= posts.contentlicense)
      right join users
      on (users.downvotes <= posts.owneruserid)
    inner join comments
    on (users.displayname = comments.userdisplayname )
where posts.communityowneddate = postlinks.creationdate
limit 122;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  users.displayname, 
  max(
    cast(cast(null as tid) as tid)), 
  max(
    cast(cast(null as float8) as float8)), 
  users.reputation, 
  users.id, 
  users.displayname, 
  users.creationdate, 
  users.downvotes, 
  users.lastaccessdate, 
  users.lastaccessdate, 
  users.views, 
  users.reputation, 
  users.id, 
  users.profileimageurl, 
  users.displayname, 
  users.displayname, 
  sum(
    cast(cast(null as money) as money)), 
  users.displayname, 
  users.accountid
from 
  users
where users.id is not NULL;
select  
  votes.id, 
  votes.userid, 
  votes.creationdate
from 
  votes
where votes.bountyamount <= votes.userid
limit 137;
select  
  badges.id, 
  badges.date
from 
  badges
where badges.userid is not NULL;
select  
  posthistory.userdisplayname, 
  posthistory.text, 
  posthistory.contentlicense, 
  sum(
    cast(posthistory.id as int8))
from 
  posthistory
    left join posthistory
    on (posthistory.contentlicense is NULL)
where posthistory.postid is not NULL
limit 56;
select  
  badges.name, 
  posthistory.posthistorytypeid, 
  badges.date, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posthistory.creationdate, 
  badges.id, 
  max(
    cast(cast(null as int2) as int2)), 
  count(
    cast(posthistory.userid as int8)), 
  posthistory.userid, 
  badges.date, 
  badges.id, 
  min(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as int2) as int2)), 
  posthistory.posthistorytypeid, 
  badges.tagbased, 
  posthistory.postid, 
  posthistory.revisionguid
from 
  badges
    left join posthistory
    on (badges.tagbased = posthistory.userdisplayname )
where posthistory.userid > posthistory.posthistorytypeid;
select  
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.id, 
  postlinks.id, 
  votes.bountyamount, 
  max(
    cast(cast(null as money) as money)), 
  votes.postid
from 
  votes
    left join postlinks
    on (votes.votetypeid is not NULL)
where votes.bountyamount is NULL
limit 115;
select  
  min(
    cast(cast(null as float8) as float8)), 
  votes.id, 
  comments.id, 
  users.creationdate
from 
  comments
    inner join users
      left join postlinks
        left join comments
              right join comments
              on (comments.userid >= comments.id)
            right join postlinks
              inner join users
              on (users.views <= postlinks.id)
            on (comments.userid = users.id )
          inner join votes
          on (votes.id <= votes.votetypeid)
        on (users.aboutme = users.websiteurl)
      on (users.downvotes >= votes.id)
    on (users.accountid >= postlinks.relatedpostid)
where users.displayname > comments.userdisplayname;
select  
  comments.text, 
  posthistory.text, 
  min(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(91 as int4)), 
  badges.userid, 
  posthistory.contentlicense, 
  posthistory.userdisplayname, 
  max(
    cast(posthistory.id as int8)), 
  postlinks.id
from 
  comments
            right join badges
            on (comments.id >= badges.id)
          left join badges
            right join posthistory
              right join comments
              on (posthistory.userdisplayname <= comments.text)
            on (comments.creationdate < posthistory.creationdate)
          on (badges.id = comments.id )
        inner join posthistory
        on (comments.creationdate >= comments.creationdate)
      left join badges
          inner join badges
          on (badges.date > badges.date)
        inner join postlinks
        on (badges.date = badges.date)
      on (posthistory.creationdate = badges.date)
    left join posthistory
    on (comments.userdisplayname is NULL)
where posthistory.userdisplayname is not NULL
limit 138;
select  
  postlinks.linktypeid, 
  min(
    cast(postlinks.creationdate as timestamptz))
from 
  comments
    inner join postlinks
    on (comments.creationdate = postlinks.creationdate )
where postlinks.relatedpostid is NULL
limit 94;
select  
  comments.text, 
  max(
    cast(cast(null as float8) as float8)), 
  comments.postid
from 
  comments
where comments.creationdate is NULL;
select  
  badges.date, 
  posthistory.contentlicense, 
  max(
    cast(cast(null as xid8) as xid8)), 
  postlinks.linktypeid, 
  votes.userid, 
  votes.bountyamount, 
  votes.userid, 
  badges.id, 
  badges.tagbased
from 
  posthistory
      inner join votes
      on (posthistory.creationdate = votes.creationdate )
    right join badges
      inner join posts
          inner join postlinks
          on (posts.commentcount <= posts.owneruserid)
        left join badges
        on (badges.class > posts.title)
      on (posts.parentid <= posts.score)
    on (badges.class is NULL)
where votes.votetypeid is not NULL
limit 115;
select  
  votes.bountyamount, 
  badges.date, 
  max(
    cast(cast(null as "interval") as "interval")), 
  votes.id, 
  posts.lasteditoruserid, 
  badges.date, 
  votes.userid, 
  users.creationdate
from 
  posts
    inner join badges
            right join votes
            on (badges.tagbased >= badges.tagbased)
          inner join users
          on (users.accountid <= users.id)
        inner join badges
        on (votes.userid > badges.userid)
      right join users
      on (users.creationdate <= badges.date)
    on (users.aboutme >= users.aboutme)
where badges.id is NULL
limit 53;
select  
  posthistory.id, 
  count(*), 
  badges.date, 
  comments.score, 
  posts.lasteditdate, 
  posts.posttypeid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.comment, 
  sum(
    cast(cast(null as float8) as float8)), 
  votes.bountyamount, 
  posts.contentlicense, 
  posthistory.creationdate
from 
  votes
      left join posts
        inner join badges
          inner join votes
          on (badges.class = badges.tagbased)
        on (badges.date >= posts.closeddate)
      on (posts.tags >= posts.contentlicense)
    inner join users
          inner join posthistory
          on (users.displayname = posthistory.userdisplayname )
        left join comments
        on (posthistory.contentlicense = posthistory.revisionguid)
      inner join posts
      on (posthistory.postid = posts.id )
    on (users.upvotes = comments.id)
where votes.creationdate is NULL
limit 57;
select  
  votes.id, 
  votes.creationdate, 
  max(
    cast(cast(null as text) as text)), 
  votes.id, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.userid, 
  votes.bountyamount, 
  votes.id, 
  votes.bountyamount, 
  votes.postid, 
  votes.userid, 
  votes.id, 
  votes.votetypeid, 
  votes.userid
from 
  votes
where votes.userid is NULL
limit 48;
select  
  badges.id, 
  votes.userid
from 
  users
          inner join badges
          on (users.lastaccessdate = users.lastaccessdate)
        left join users
          left join votes
          on (users.creationdate = votes.creationdate )
        on (users.aboutme <= users.profileimageurl)
      right join posts
      on (users.displayname = posts.ownerdisplayname )
    right join votes
    on (votes.votetypeid = votes.id )
where badges.class is not NULL;
select  
  postlinks.relatedpostid, 
  postlinks.postid, 
  min(
    cast(cast(null as tid) as tid)), 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  min(
    cast(postlinks.postid as int8)), 
  min(
    cast(cast(null as oid) as oid)), 
  postlinks.relatedpostid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 113;
select  
  posthistory.posthistorytypeid, 
  posthistory.comment, 
  posthistory.revisionguid, 
  posthistory.comment, 
  posthistory.comment
from 
  posthistory
where posthistory.creationdate is NULL
limit 123;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.id is NULL
limit 90;
select  
  comments.userid, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.text, 
  comments.id
from 
  comments
where comments.score is not NULL;
select  
  posthistory.id
from 
  posts
    inner join postlinks
        inner join posthistory
            left join users
            on (users.creationdate > users.lastaccessdate)
          left join votes
          on (users.id = votes.postid)
        on (users.id > postlinks.id)
      inner join posthistory
      on (postlinks.postid = posthistory.id )
    on (posts.lasteditordisplayname = posthistory.userdisplayname )
where postlinks.id is NULL
limit 61;
select  
  badges.name, 
  badges.name, 
  badges.tagbased, 
  badges.userid, 
  badges.class, 
  count(*), 
  min(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  badges
where badges.id < badges.id;
select  
  votes.bountyamount, 
  votes.creationdate, 
  max(
    cast(cast(null as oid) as oid)), 
  postlinks.creationdate, 
  posthistory.userid
from 
  posthistory
    inner join posts
      inner join posthistory
              left join votes
              on (posthistory.creationdate < votes.creationdate)
            inner join users
            on (votes.userid > votes.bountyamount)
          inner join postlinks
          on (users.profileimageurl = posthistory.revisionguid)
        left join users
          inner join comments
            inner join votes
            on (votes.creationdate >= votes.creationdate)
          on (users.lastaccessdate = comments.creationdate)
        on (users.creationdate < users.lastaccessdate)
      on (users.upvotes = users.upvotes)
    on (posthistory.posthistorytypeid = comments.id )
where votes.userid is not NULL;
select  
  users.lastaccessdate, 
  users.location
from 
  users
where users.downvotes is not NULL
limit 115;
select  
  users.displayname, 
  users.accountid
from 
  users
where users.aboutme is not NULL
limit 189;
select  
  users.websiteurl, 
  users.id
from 
  users
where users.websiteurl >= users.location
limit 87;
select  
  comments.creationdate, 
  badges.name, 
  badges.id, 
  posts.acceptedanswerid, 
  posts.posttypeid, 
  badges.class, 
  min(
    cast(posts.id as int8)), 
  badges.name, 
  count(*), 
  votes.creationdate
from 
  posts
      inner join posts
        inner join comments
          inner join postlinks
            inner join badges
              left join posthistory
              on (badges.date <= badges.date)
            on (posthistory.creationdate > postlinks.creationdate)
          on (badges.class <= posthistory.contentlicense)
        on (posts.viewcount = postlinks.linktypeid)
      on (posthistory.creationdate <= posts.communityowneddate)
    inner join votes
      left join badges
      on (votes.postid = badges.id )
    on (posthistory.userdisplayname is not NULL)
where posts.favoritecount is not NULL
limit 58;
select  
  comments.id, 
  avg(
    cast(comments.postid as int8))
from 
  comments
where comments.userid is not NULL
limit 62;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.id, 
  sum(
    cast(postlinks.id as int8)), 
  postlinks.postid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate is NULL
limit 101;
select  
  posts.contentlicense
from 
  postlinks
        inner join users
        on (postlinks.linktypeid = users.id )
      inner join posthistory
            left join posts
            on (posthistory.revisionguid >= posts.body)
          inner join posts
          on (posts.acceptedanswerid >= posts.viewcount)
        left join badges
        on (posts.score = posts.commentcount)
      on (users.accountid = users.upvotes)
    inner join users
    on (users.accountid >= posts.id)
where posts.lastactivitydate >= users.lastaccessdate
limit 81;
select  
  posts.body
from 
  posts
    right join posts
      right join badges
      on (badges.class < posts.title)
    on (badges.id is not NULL)
where badges.id is NULL
limit 108;
select  
  badges.userid, 
  badges.name, 
  badges.date, 
  badges.tagbased, 
  badges.tagbased, 
  badges.date, 
  badges.date, 
  badges.userid, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  badges.name, 
  badges.date, 
  badges.id
from 
  badges
where badges.id is not NULL;
select  
  comments.text, 
  comments.userdisplayname, 
  comments.postid, 
  comments.text
from 
  comments
where comments.userid is not NULL;
select  
  comments.postid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  votes.creationdate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  comments.creationdate, 
  votes.bountyamount, 
  postlinks.creationdate, 
  comments.text
from 
  posthistory
        inner join comments
        on (posthistory.revisionguid > posthistory.revisionguid)
      inner join votes
      on (posthistory.revisionguid >= posthistory.comment)
    right join postlinks
      inner join postlinks
      on (postlinks.postid = postlinks.linktypeid)
    on (postlinks.relatedpostid is not NULL)
where posthistory.comment >= posthistory.revisionguid;
select  
  posthistory.id, 
  posthistory.userid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.id, 
  posthistory.comment, 
  posthistory.postid
from 
  posthistory
where posthistory.creationdate is NULL
limit 40;
select  
  comments.postid, 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  comments.text, 
  users.location, 
  users.creationdate
from 
  comments
            inner join users
            on (users.creationdate <= users.creationdate)
          inner join comments
          on (users.lastaccessdate > users.creationdate)
        right join posthistory
        on (users.views >= comments.userid)
      left join comments
        inner join users
          inner join posts
          on (users.aboutme = posts.ownerdisplayname )
        on (posts.body > posts.title)
      on (users.accountid = users.id )
    left join comments
    on (posts.id is NULL)
where comments.userid is not NULL
limit 130;
select  
  votes.bountyamount, 
  max(
    cast(cast(null as oid) as oid)), 
  users.upvotes
from 
  users
    left join votes
    on (votes.id is NULL)
where users.id < votes.votetypeid
limit 23;
select  
  max(
    cast(votes.bountyamount as int8)), 
  votes.creationdate, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  votes
where votes.userid is not NULL
limit 27;
select  
  min(
    cast(cast(null as timetz) as timetz))
from 
  badges
      inner join postlinks
      on (badges.name = badges.name)
    right join users
        right join votes
          right join posts
          on (posts.lasteditdate < posts.closeddate)
        on (votes.creationdate = posts.lastactivitydate)
      left join votes
      on (posts.lasteditdate >= users.creationdate)
    on (votes.votetypeid is not NULL)
where posts.lasteditdate is not NULL;
select  
  min(
    cast(84 as int4)), 
  badges.tagbased, 
  badges.id, 
  badges.tagbased
from 
  badges
where badges.date is NULL;
select  
  badges.class, 
  users.reputation, 
  badges.tagbased, 
  badges.userid, 
  count(*), 
  max(
    cast(cast(null as float8) as float8)), 
  badges.name, 
  max(
    cast(cast(null as tid) as tid)), 
  users.downvotes, 
  users.id, 
  posts.lasteditoruserid, 
  users.lastaccessdate, 
  users.downvotes, 
  users.downvotes, 
  users.lastaccessdate, 
  posts.id, 
  max(
    cast(69 as int4)), 
  badges.date, 
  badges.userid, 
  badges.tagbased, 
  badges.tagbased, 
  users.profileimageurl
from 
  users
      inner join badges
        left join posts
          inner join posts
          on (posts.favoritecount <= posts.commentcount)
        on (posts.favoritecount > posts.commentcount)
      on (badges.userid = posts.acceptedanswerid)
    left join users
    on (users.views is not NULL)
where users.creationdate = posts.lasteditdate;
select  
  posts.posttypeid, 
  posts.communityowneddate
from 
  posts
where posts.lastactivitydate = posts.creationdate
limit 153;
select  
  avg(
    cast(posts.posttypeid as int8)), 
  users.lastaccessdate, 
  postlinks.linktypeid, 
  users.creationdate, 
  users.upvotes, 
  comments.userdisplayname, 
  badges.tagbased, 
  posts.creationdate, 
  posts.contentlicense, 
  users.upvotes, 
  posthistory.id, 
  users.creationdate, 
  posthistory.userid
from 
  posts
            inner join comments
              left join badges
                  inner join users
                  on (badges.tagbased = users.displayname )
                left join posts
                on (users.profileimageurl < users.aboutme)
              on (comments.userid = users.id )
            on (posts.communityowneddate < posts.creationdate)
          left join posthistory
          on (posts.body >= posts.ownerdisplayname)
        inner join votes
            right join users
            on (users.websiteurl < users.profileimageurl)
          inner join posthistory
              left join votes
              on (posthistory.comment <= posthistory.userdisplayname)
            inner join votes
              right join users
              on (users.aboutme < users.displayname)
            on (posthistory.creationdate = votes.creationdate )
          on (votes.bountyamount = users.id )
        on (users.id > posthistory.posthistorytypeid)
      left join votes
        right join comments
        on (votes.votetypeid = comments.id )
      on (comments.score = comments.id )
    inner join posts
                right join posts
                on (posts.viewcount = posts.id )
              left join users
              on (posts.owneruserid = posts.acceptedanswerid)
            left join users
                inner join posts
                on (users.lastaccessdate = posts.creationdate )
              right join posts
              on (posts.body = users.displayname)
            on (users.aboutme >= posts.lasteditordisplayname)
          left join users
            left join postlinks
            on (users.id = postlinks.id )
          on (posts.tags = users.displayname )
        inner join postlinks
          left join posts
          on (postlinks.creationdate <= posts.creationdate)
        on (posts.acceptedanswerid = posts.id)
      left join users
        right join posts
        on (users.lastaccessdate >= users.creationdate)
      on (posts.creationdate <= posts.communityowneddate)
    on (users.location is NULL)
where users.downvotes is NULL
limit 50;
select  
  users.websiteurl
from 
  users
where users.lastaccessdate is NULL
limit 86;
select  
  comments.postid, 
  posts.body, 
  posts.closeddate, 
  min(
    cast(cast(null as money) as money))
from 
  posts
    inner join comments
    on (posts.lastactivitydate = posts.lasteditdate)
where posts.closeddate is not NULL
limit 83;
select  
  users.views, 
  users.displayname, 
  badges.name, 
  badges.tagbased, 
  badges.userid, 
  badges.name, 
  users.aboutme
from 
  badges
    inner join users
    on (badges.date is not NULL)
where badges.id is NULL
limit 98;
select  
  postlinks.creationdate, 
  postlinks.relatedpostid
from 
  postlinks
    inner join users
      inner join postlinks
      on (users.id = postlinks.linktypeid)
    on (postlinks.linktypeid is NULL)
where users.location >= users.profileimageurl
limit 107;
select  
  votes.postid, 
  votes.votetypeid, 
  votes.votetypeid
from 
  votes
where votes.votetypeid is not NULL
limit 195;
select  
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  comments
      left join comments
      on (comments.postid >= comments.userid)
    left join posts
    on (posts.id is not NULL)
where comments.text = posts.contentlicense
limit 115;
select  
  votes.creationdate, 
  votes.userid, 
  votes.votetypeid
from 
  votes
where votes.postid is NULL
limit 84;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.id, 
  users.profileimageurl
from 
  users
where users.aboutme <= users.location
limit 80;
select  
  votes.votetypeid, 
  votes.creationdate, 
  votes.userid, 
  votes.postid, 
  votes.bountyamount, 
  votes.bountyamount, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.votetypeid, 
  max(
    cast(cast(null as "interval") as "interval")), 
  votes.votetypeid, 
  max(
    cast(cast(null as oid) as oid))
from 
  votes
where votes.userid is NULL;
select  
  postlinks.linktypeid, 
  postlinks.creationdate, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is not NULL;
select  
  max(
    cast(cast(null as timetz) as timetz)), 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.id, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.creationdate, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postlinks.id, 
  min(
    cast(postlinks.id as int8)), 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as tid) as tid)), 
  postlinks.id, 
  postlinks.id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid
from 
  postlinks
where postlinks.relatedpostid > postlinks.relatedpostid
limit 88;
select  
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.linktypeid is NULL
limit 107;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  postlinks.creationdate
from 
  postlinks
      right join postlinks
      on (postlinks.linktypeid < postlinks.id)
    right join users
    on (postlinks.linktypeid is not NULL)
where users.id is NULL
limit 63;
select  
  users.location, 
  posthistory.userid, 
  users.views
from 
  posthistory
    right join users
    on (posthistory.creationdate = users.creationdate )
where posthistory.creationdate is not NULL
limit 68;
select  
  posts.commentcount, 
  posts.acceptedanswerid, 
  posts.lasteditoruserid, 
  posts.tags, 
  votes.id
from 
  votes
    right join posts
      inner join posts
      on (posts.lasteditdate = posts.creationdate )
    on (posts.creationdate is NULL)
where posts.viewcount >= posts.score
limit 79;
select  
  badges.name, 
  posthistory.userid, 
  posthistory.comment, 
  posthistory.posthistorytypeid, 
  comments.postid, 
  badges.id, 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as "interval") as "interval")), 
  posthistory.userdisplayname, 
  comments.id, 
  badges.name, 
  posthistory.text, 
  posthistory.id, 
  badges.id, 
  posthistory.postid, 
  posthistory.contentlicense, 
  badges.name, 
  posthistory.contentlicense, 
  badges.name, 
  posthistory.userdisplayname, 
  comments.creationdate, 
  posthistory.posthistorytypeid, 
  min(
    cast(cast(null as inet) as inet)), 
  badges.id, 
  posthistory.revisionguid, 
  posthistory.posthistorytypeid, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  badges
    inner join posthistory
      inner join comments
        left join posthistory
        on (comments.userid = posthistory.id )
      on (posthistory.creationdate >= posthistory.creationdate)
    on (posthistory.id is not NULL)
where comments.creationdate > posthistory.creationdate
limit 101;
select  
  comments.userid, 
  max(
    cast(comments.id as int8)), 
  postlinks.postid, 
  postlinks.id, 
  postlinks.id
from 
  comments
    right join postlinks
    on (postlinks.creationdate is not NULL)
where postlinks.linktypeid = postlinks.linktypeid;
select  
  sum(
    cast(cast(null as money) as money)), 
  posthistory.text, 
  posthistory.creationdate
from 
  posthistory
where posthistory.comment is NULL
limit 75;
select  
  comments.id, 
  comments.creationdate
from 
  comments
where comments.userid is not NULL;
select  
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  max(
    cast(postlinks.relatedpostid as int8)), 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.id, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  postlinks.creationdate, 
  postlinks.postid
from 
  postlinks
where postlinks.creationdate >= postlinks.creationdate
limit 58;
select  
  votes.userid, 
  comments.score, 
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.id, 
  votes.userid
from 
  comments
    left join votes
      left join votes
      on (votes.creationdate >= votes.creationdate)
    on (comments.userid is not NULL)
where comments.userdisplayname is not NULL
limit 110;
select  
  posts.lastactivitydate, 
  users.profileimageurl, 
  users.downvotes, 
  comments.id, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.lasteditdate, 
  posts.viewcount, 
  posts.score, 
  posts.viewcount, 
  users.aboutme, 
  posts.title
from 
  comments
          inner join users
          on (users.aboutme >= comments.userdisplayname)
        inner join posts
        on (posts.lasteditoruserid <= posts.lasteditoruserid)
      inner join votes
      on (users.upvotes = votes.id )
    right join posts
      inner join posts
      on (posts.parentid <= posts.viewcount)
    on (posts.communityowneddate is not NULL)
where posts.closeddate is not NULL;
select  
  posthistory.postid, 
  comments.creationdate, 
  posts.communityowneddate, 
  comments.text, 
  posthistory.posthistorytypeid, 
  max(
    cast(badges.name as text)), 
  comments.userdisplayname, 
  posthistory.text
from 
  badges
      left join comments
          left join posts
            inner join posthistory
            on (posthistory.revisionguid > posts.ownerdisplayname)
          on (posts.id < posts.score)
        inner join badges
        on (comments.postid < posts.posttypeid)
      on (badges.userid = posthistory.id )
    inner join comments
      inner join users
      on (users.downvotes > users.accountid)
    on (badges.date = users.creationdate )
where posts.tags is not NULL;
select  
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.creationdate, 
  votes.creationdate, 
  votes.userid, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.postid, 
  votes.userid
from 
  votes
where votes.votetypeid is NULL;
select  
  comments.userdisplayname, 
  comments.postid
from 
  comments
where comments.postid >= comments.userid;
select  
  min(
    cast(cast(null as date) as date)), 
  badges.id
from 
  badges
where badges.id is NULL
limit 102;
select  
  users.creationdate, 
  users.reputation, 
  users.profileimageurl
from 
  users
    right join postlinks
    on (users.reputation = postlinks.id )
where users.creationdate = users.creationdate;
select  
  count(*), 
  badges.name
from 
  posthistory
      inner join badges
      on (posthistory.text = posthistory.text)
    left join votes
    on (posthistory.userid <= votes.id)
where posthistory.comment is not NULL;
select  
  posts.body, 
  votes.userid, 
  postlinks.relatedpostid, 
  votes.userid, 
  max(
    cast(cast(null as float4) as float4)), 
  badges.name, 
  votes.id, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  posts.owneruserid, 
  badges.id, 
  comments.text
from 
  votes
          inner join badges
          on (votes.votetypeid >= votes.bountyamount)
        left join votes
          inner join comments
          on (votes.bountyamount = comments.id )
        on (votes.id >= comments.score)
      inner join badges
      on (comments.creationdate = badges.date )
    inner join posts
          left join votes
          on (posts.contentlicense = posts.lasteditordisplayname)
        right join badges
        on (posts.ownerdisplayname > posts.contentlicense)
      inner join postlinks
        right join posts
        on (posts.closeddate <= postlinks.creationdate)
      on (posts.closeddate > posts.creationdate)
    on (votes.creationdate = badges.date)
where votes.votetypeid is NULL;
select  
  comments.creationdate
from 
  comments
where comments.userdisplayname is NULL
limit 92;
select  
  postlinks.postid, 
  posts.body, 
  users.downvotes, 
  badges.name, 
  users.aboutme, 
  users.id, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  comments
    inner join users
        inner join posts
          inner join badges
              inner join postlinks
              on (badges.userid >= postlinks.relatedpostid)
            inner join badges
            on (postlinks.id = badges.id )
          on (posts.title >= posts.lasteditordisplayname)
        on (posts.lasteditoruserid >= posts.score)
      right join postlinks
      on (users.accountid = postlinks.id )
    on (users.id is NULL)
where posts.lastactivitydate is not NULL
limit 108;
select  
  comments.text, 
  avg(
    cast(cast(null as float4) as float4)), 
  comments.id, 
  comments.id, 
  posthistory.postid, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.text, 
  badges.tagbased
from 
  postlinks
            inner join badges
            on (badges.class <= badges.class)
          inner join users
            inner join comments
            on (comments.postid < comments.userid)
          on (badges.name = comments.userdisplayname )
        left join posts
        on (posts.score = posts.acceptedanswerid)
      inner join comments
      on (users.accountid < comments.id)
    inner join posthistory
      left join comments
            left join posts
            on (posts.lasteditdate >= posts.closeddate)
          inner join comments
          on (comments.userid = comments.id )
        right join users
            left join postlinks
            on (users.accountid = postlinks.id )
          inner join comments
            inner join posthistory
            on (comments.creationdate > comments.creationdate)
          on (comments.userid = posthistory.postid)
        on (comments.creationdate = posts.closeddate)
      on (users.upvotes <= users.upvotes)
    on (users.lastaccessdate >= posts.lasteditdate)
where users.location is not NULL
limit 81;
select  
  postlinks.relatedpostid, 
  postlinks.id
from 
  postlinks
where postlinks.relatedpostid is not NULL;
select  
  max(
    cast(cast(null as timetz) as timetz)), 
  users.creationdate, 
  users.reputation, 
  users.reputation, 
  users.reputation, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.downvotes, 
  max(
    cast(cast(null as inet) as inet)), 
  users.upvotes, 
  users.lastaccessdate, 
  users.aboutme
from 
  users
where users.profileimageurl > users.displayname
limit 141;
select  
  comments.postid, 
  comments.score, 
  comments.userdisplayname
from 
  comments
where comments.score is NULL
limit 125;
select  
  posthistory.comment, 
  posthistory.userdisplayname, 
  count(
    cast(posthistory.revisionguid as text)), 
  posthistory.postid
from 
  posthistory
where posthistory.creationdate > posthistory.creationdate
limit 102;
select  
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.id, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  users.creationdate, 
  users.accountid
from 
  users
where users.downvotes is not NULL
limit 104;
select  
  posthistory.postid
from 
  posthistory
where posthistory.id is not NULL;
select  
  badges.tagbased, 
  badges.tagbased
from 
  badges
where badges.class >= badges.tagbased;
select  
  votes.id, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.userid, 
  badges.name, 
  comments.score, 
  posts.id, 
  comments.id, 
  votes.userid
from 
  comments
        left join postlinks
          right join comments
            right join posts
              inner join votes
                inner join votes
                on (votes.creationdate >= votes.creationdate)
              on (posts.title <= posts.body)
            on (posts.lastactivitydate <= votes.creationdate)
          on (comments.text > posts.title)
        on (posts.communityowneddate > comments.creationdate)
      left join comments
      on (posts.lastactivitydate < votes.creationdate)
    inner join badges
    on (posts.score >= posts.id)
where posts.viewcount is not NULL;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  users.profileimageurl, 
  users.displayname, 
  posthistory.contentlicense
from 
  comments
    left join posthistory
      left join users
      on (posthistory.text = users.displayname)
    on (posthistory.creationdate < posthistory.creationdate)
where posthistory.userid = comments.userid
limit 93;
select  
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.id, 
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as timetz) as timetz)), 
  postlinks.id, 
  postlinks.postid
from 
  postlinks
where postlinks.postid is not NULL
limit 63;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  comments.text
from 
  comments
where comments.id is NULL
limit 132;
select  
  posts.title, 
  posts.viewcount, 
  posts.body, 
  badges.date, 
  count(*), 
  posts.ownerdisplayname, 
  posts.lasteditoruserid, 
  count(*), 
  posts.closeddate, 
  users.accountid, 
  posts.favoritecount, 
  posts.answercount
from 
  users
      left join posts
        right join badges
        on (posts.answercount < posts.commentcount)
      on (badges.tagbased >= posts.contentlicense)
    inner join badges
    on (badges.tagbased is not NULL)
where posts.favoritecount is not NULL
limit 104;
select  
  postlinks.id, 
  posts.posttypeid, 
  votes.userid, 
  posthistory.posthistorytypeid, 
  postlinks.id, 
  posts.answercount, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posts.lasteditdate, 
  posts.id, 
  posthistory.creationdate, 
  posts.posttypeid, 
  max(
    cast(cast(null as "time") as "time")), 
  users.reputation, 
  users.location, 
  max(
    cast(cast(null as money) as money))
from 
  posts
        inner join posthistory
        on (posts.body < posts.tags)
      left join posts
      on (posthistory.creationdate = posts.creationdate )
    right join users
      left join postlinks
        inner join votes
        on (postlinks.id > votes.postid)
      on (users.location > users.aboutme)
    on (posts.communityowneddate = votes.creationdate )
where postlinks.creationdate is NULL;
select  
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid, 
  min(
    cast(cast(null as tid) as tid)), 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.id, 
  min(
    cast(cast(null as "time") as "time"))
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  min(
    cast(72 as int4)), 
  postlinks.postid, 
  postlinks.postid
from 
  postlinks
where postlinks.creationdate is not NULL
limit 166;
select  
  postlinks.creationdate, 
  badges.id
from 
  users
          left join comments
          on (users.downvotes < users.accountid)
        right join postlinks
            inner join users
            on (postlinks.postid = users.id )
          right join posthistory
          on (users.websiteurl < posthistory.comment)
        on (users.creationdate <= postlinks.creationdate)
      inner join badges
      on (postlinks.linktypeid = badges.id )
    left join comments
        inner join posthistory
        on (comments.id < posthistory.postid)
      left join badges
      on (comments.creationdate > comments.creationdate)
    on (users.downvotes is NULL)
where badges.date <= badges.date;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  users.lastaccessdate, 
  users.lastaccessdate, 
  users.id
from 
  users
where users.websiteurl is NULL
limit 136;
select  
  users.views, 
  count(*)
from 
  users
where users.aboutme < users.aboutme;
select  
  posts.body, 
  badges.class
from 
  badges
    left join posts
    on (badges.tagbased is not NULL)
where posts.posttypeid is not NULL
limit 95;
select  
  votes.postid, 
  badges.date
from 
  comments
        right join users
          right join posthistory
          on (posthistory.revisionguid < users.websiteurl)
        on (comments.userdisplayname < users.websiteurl)
      inner join posts
            right join comments
            on (posts.tags = comments.userdisplayname )
          inner join badges
              right join badges
              on (badges.name >= badges.tagbased)
            inner join votes
            on (votes.creationdate = badges.date)
          on (posts.answercount = votes.id )
        left join comments
            inner join posts
              inner join votes
              on (votes.bountyamount = posts.score)
            on (posts.creationdate = votes.creationdate)
          right join votes
          on (votes.userid = votes.id )
        on (posts.tags <= comments.userdisplayname)
      on (comments.creationdate = badges.date)
    inner join postlinks
    on (badges.userid is not NULL)
where votes.creationdate is not NULL
limit 100;
select  
  min(
    cast(cast(null as float4) as float4)), 
  users.creationdate, 
  count(
    cast(badges.tagbased as text)), 
  users.id, 
  users.accountid, 
  users.lastaccessdate, 
  posthistory.id
from 
  users
          right join users
            inner join posthistory
            on (users.lastaccessdate < posthistory.creationdate)
          on (users.reputation = posthistory.id )
        inner join votes
        on (posthistory.text = users.location)
      inner join posthistory
      on (users.creationdate <= users.lastaccessdate)
    right join badges
    on (badges.date is not NULL)
where posthistory.userdisplayname is NULL;
select  
  postlinks.linktypeid, 
  posthistory.comment, 
  users.profileimageurl
from 
  postlinks
      inner join posts
        inner join posthistory
              right join users
              on (users.id < users.reputation)
            inner join votes
              left join comments
              on (comments.score <= votes.bountyamount)
            on (posthistory.text = comments.userdisplayname )
          left join users
            inner join users
            on (users.aboutme > users.displayname)
          on (votes.userid = users.id )
        on (users.id = posts.answercount)
      on (postlinks.id = posts.id )
    left join users
    on (postlinks.relatedpostid = users.id )
where users.views is not NULL;
select  
  postlinks.linktypeid, 
  badges.tagbased, 
  badges.class, 
  badges.userid, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.id, 
  postlinks.postid, 
  postlinks.postid, 
  votes.userid, 
  postlinks.relatedpostid, 
  badges.userid, 
  votes.postid, 
  users.websiteurl, 
  users.accountid, 
  users.reputation, 
  users.profileimageurl, 
  votes.bountyamount
from 
  postlinks
    left join postlinks
      inner join users
          right join badges
          on (badges.date > users.creationdate)
        inner join votes
        on (badges.tagbased = users.displayname)
      on (postlinks.postid = users.id )
    on (badges.name = badges.class)
where badges.userid is not NULL
limit 103;
select  
  min(
    cast(cast(null as tid) as tid)), 
  badges.id, 
  users.id, 
  users.profileimageurl, 
  users.displayname, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  postlinks
      inner join badges
        left join users
          right join posthistory
          on (users.views = posthistory.id )
        on (badges.date > badges.date)
      on (posthistory.creationdate <= posthistory.creationdate)
    right join users
    on (postlinks.creationdate is not NULL)
where postlinks.id is NULL
limit 136;
select  
  votes.creationdate, 
  max(
    cast(cast(null as "time") as "time")), 
  votes.bountyamount
from 
  posts
    left join votes
      left join votes
          inner join votes
          on (votes.id < votes.userid)
        right join badges
        on (badges.tagbased > badges.class)
      on (badges.class <= badges.tagbased)
    on (posts.favoritecount = votes.id )
where votes.userid is NULL;
select  
  posts.viewcount, 
  min(
    cast(cast(null as int2) as int2))
from 
  posts
    inner join users
    on (posts.creationdate is not NULL)
where users.lastaccessdate is NULL;
select  
  badges.id, 
  posts.posttypeid, 
  badges.userid, 
  posts.parentid, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.name, 
  posts.commentcount, 
  badges.date, 
  badges.tagbased, 
  posts.commentcount, 
  max(
    cast(cast(null as "time") as "time")), 
  count(
    cast(posts.lasteditordisplayname as text)), 
  badges.name, 
  badges.tagbased, 
  posts.closeddate, 
  posts.lastactivitydate, 
  posts.score
from 
  badges
    inner join posts
    on (posts.lasteditoruserid is not NULL)
where posts.ownerdisplayname < posts.body
limit 126;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.id is not NULL
limit 101;
select  
  users.views, 
  users.accountid, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  comments
        left join comments
        on (comments.creationdate = comments.creationdate )
      inner join posts
      on (comments.score = comments.postid)
    left join users
    on (users.downvotes is not NULL)
where users.views is NULL
limit 44;
select  
  badges.date, 
  postlinks.relatedpostid, 
  users.lastaccessdate, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.creationdate, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  users
          inner join postlinks
            inner join posts
                inner join comments
                on (posts.lastactivitydate > posts.creationdate)
              right join users
              on (posts.closeddate <= users.lastaccessdate)
            on (postlinks.linktypeid > posts.id)
          on (users.websiteurl < users.aboutme)
        left join users
              inner join posthistory
              on (users.creationdate < posthistory.creationdate)
            right join users
            on (users.upvotes = users.id )
          inner join posthistory
            inner join posts
            on (posthistory.posthistorytypeid = posts.id )
          on (posts.closeddate > posts.closeddate)
        on (postlinks.linktypeid = posthistory.id )
      left join posts
          right join badges
            right join badges
            on (badges.tagbased >= badges.class)
          on (badges.tagbased < posts.tags)
        right join posts
        on (posts.owneruserid = posts.id )
      on (posts.lasteditdate = users.lastaccessdate)
    right join postlinks
    on (posthistory.userdisplayname is NULL)
where posts.posttypeid is not NULL;
select distinct 
  comments.userid, 
  comments.creationdate, 
  comments.text
from 
  comments
where comments.creationdate is NULL
limit 59;
select  
  posts.answercount, 
  posts.lasteditoruserid, 
  posts.communityowneddate, 
  posts.contentlicense
from 
  posts
where posts.lasteditoruserid = posts.answercount
limit 149;
select  
  min(
    cast(86 as int4)), 
  badges.date, 
  badges.name, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.id, 
  badges.class, 
  badges.name, 
  badges.userid, 
  badges.name, 
  badges.class, 
  badges.class, 
  badges.userid, 
  badges.name, 
  badges.tagbased, 
  badges.class, 
  min(
    cast(cast(null as int2) as int2)), 
  badges.date, 
  badges.userid
from 
  badges
where badges.userid is not NULL;
select  
  users.upvotes, 
  users.creationdate, 
  users.lastaccessdate, 
  users.upvotes
from 
  users
where users.websiteurl is NULL;
select  
  postlinks.id, 
  sum(
    cast(79 as int4)), 
  postlinks.linktypeid
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 106;
select  
  votes.id, 
  users.reputation, 
  max(
    cast(cast(null as float8) as float8))
from 
  votes
    inner join users
          inner join posts
            left join users
            on (users.profileimageurl <= users.displayname)
          on (users.upvotes = posts.id )
        right join users
        on (posts.posttypeid = posts.id)
      inner join postlinks
      on (posts.lasteditdate = postlinks.creationdate )
    on (users.accountid is not NULL)
where users.creationdate is NULL
limit 76;
select  
  comments.text, 
  comments.userdisplayname
from 
  comments
where comments.creationdate <= comments.creationdate
limit 34;
select  
  users.id, 
  votes.postid, 
  votes.creationdate, 
  badges.tagbased, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  badges
      left join users
        right join users
        on (users.creationdate < users.creationdate)
      on (users.creationdate > badges.date)
    left join votes
    on (users.reputation is not NULL)
where votes.id is NULL
limit 128;
select  
  posthistory.creationdate, 
  badges.name, 
  badges.userid, 
  comments.text, 
  votes.userid
from 
  postlinks
          right join posthistory
          on (postlinks.relatedpostid = postlinks.relatedpostid)
        right join badges
        on (posthistory.creationdate > postlinks.creationdate)
      right join comments
        inner join users
        on (comments.creationdate = users.creationdate )
      on (users.upvotes >= users.reputation)
    left join votes
    on (users.creationdate = postlinks.creationdate)
where postlinks.linktypeid is NULL;
select  
  max(
    cast(votes.creationdate as timestamptz)), 
  votes.postid, 
  votes.id, 
  votes.userid, 
  votes.userid, 
  votes.bountyamount, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.id, 
  votes.creationdate, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.userid
from 
  votes
where votes.postid is not NULL
limit 150;
select  
  votes.votetypeid, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.bountyamount
from 
  votes
where votes.postid is not NULL;
select  
  comments.userid, 
  comments.creationdate, 
  comments.id, 
  comments.id, 
  comments.text
from 
  comments
where comments.userdisplayname is NULL
limit 40;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  min(
    cast(users.displayname as text)), 
  posthistory.revisionguid, 
  users.aboutme, 
  posts.creationdate, 
  posts.lasteditordisplayname
from 
  users
        inner join posthistory
          inner join comments
              inner join postlinks
                inner join posts
                on (postlinks.creationdate = posts.creationdate )
              on (postlinks.creationdate <= posts.closeddate)
            inner join votes
            on (votes.bountyamount <= posts.posttypeid)
          on (posthistory.comment < posthistory.userdisplayname)
        on (users.id = comments.id )
      right join comments
          left join users
          on (users.creationdate <= comments.creationdate)
        left join posthistory
        on (comments.creationdate < users.lastaccessdate)
      on (posthistory.posthistorytypeid < posts.owneruserid)
    right join posts
    on (votes.postid = users.id)
where votes.postid is NULL
limit 91;
select  
  postlinks.linktypeid
from 
  postlinks
    left join comments
    on (postlinks.id is NULL)
where comments.score <= comments.userid
limit 131;
select  
  users.profileimageurl, 
  users.reputation, 
  users.websiteurl, 
  users.profileimageurl, 
  users.aboutme, 
  users.displayname, 
  users.profileimageurl, 
  users.websiteurl, 
  users.profileimageurl, 
  users.location, 
  users.views
from 
  users
where users.views < users.downvotes
limit 135;
select  
  users.downvotes, 
  users.views, 
  users.profileimageurl, 
  users.views
from 
  users
where users.id is not NULL
limit 83;
select  
  users.reputation, 
  users.id
from 
  users
where users.upvotes >= users.upvotes;
select  
  max(
    cast(cast(null as inet) as inet)), 
  posts.creationdate
from 
  users
      inner join posts
      on (posts.commentcount = users.views)
    inner join comments
    on (comments.id is not NULL)
where posts.acceptedanswerid is not NULL;
select  
  comments.userdisplayname, 
  postlinks.creationdate, 
  comments.postid, 
  comments.id, 
  max(
    cast(comments.creationdate as timestamptz)), 
  min(
    cast(51 as int4)), 
  comments.postid
from 
  comments
      right join posthistory
          right join comments
          on (posthistory.comment = comments.userdisplayname )
        left join posts
        on (posts.communityowneddate = posts.lasteditdate)
      on (posts.acceptedanswerid >= comments.score)
    left join postlinks
    on (postlinks.linktypeid is NULL)
where comments.userid is not NULL;
select  
  posts.answercount, 
  posts.commentcount, 
  posts.lasteditdate, 
  min(
    cast(cast(null as oid) as oid)), 
  posts.owneruserid, 
  posts.owneruserid
from 
  posts
where posts.tags <= posts.title;
select  
  postlinks.relatedpostid, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.id, 
  max(
    cast(postlinks.relatedpostid as int8)), 
  postlinks.relatedpostid, 
  postlinks.postid
from 
  postlinks
where postlinks.creationdate is not NULL
limit 91;
select  
  posts.lastactivitydate, 
  posts.contentlicense, 
  posts.lasteditoruserid, 
  posts.commentcount, 
  posts.creationdate, 
  posts.communityowneddate, 
  posts.lasteditordisplayname, 
  min(
    cast(cast(null as oid) as oid)), 
  posts.answercount
from 
  posts
where posts.communityowneddate is not NULL
limit 103;
select  
  postlinks.linktypeid, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate > postlinks.creationdate
limit 19;
select  
  badges.userid, 
  votes.userid, 
  comments.text, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.bountyamount
from 
  comments
        inner join users
          left join votes
          on (votes.creationdate = users.lastaccessdate)
        on (users.creationdate < comments.creationdate)
      inner join votes
            right join comments
            on (comments.userdisplayname < comments.text)
          right join comments
          on (comments.text >= comments.text)
        inner join badges
          right join badges
          on (badges.id < badges.id)
        on (badges.id >= votes.bountyamount)
      on (votes.votetypeid = comments.id )
    inner join posthistory
    on (badges.userid = posthistory.id )
where comments.text <= badges.class;
select  
  max(
    cast(cast(null as "interval") as "interval"))
from 
  posthistory
      right join badges
      on (posthistory.posthistorytypeid <= posthistory.id)
    left join votes
      inner join badges
        left join votes
        on (badges.name = badges.name)
      on (badges.date = votes.creationdate)
    on (posthistory.creationdate >= badges.date)
where badges.date is NULL
limit 143;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.userid, 
  max(
    cast(badges.userid as int8)), 
  badges.name, 
  badges.tagbased, 
  badges.date, 
  badges.date, 
  badges.tagbased, 
  badges.date
from 
  badges
where badges.userid is NULL;
select  
  posthistory.postid, 
  posts.creationdate, 
  posts.answercount, 
  posthistory.text, 
  posthistory.id
from 
  posts
      inner join posthistory
      on (posthistory.userdisplayname > posts.lasteditordisplayname)
    left join posthistory
    on (posthistory.postid is not NULL)
where posts.creationdate > posts.creationdate;
select  
  comments.postid, 
  comments.creationdate, 
  votes.votetypeid, 
  min(
    cast(cast(null as float4) as float4)), 
  votes.id, 
  votes.creationdate, 
  comments.creationdate
from 
  votes
    left join comments
          inner join users
            inner join comments
            on (users.views = comments.id )
          on (comments.userdisplayname = users.displayname )
        left join posthistory
        on (comments.text > posthistory.contentlicense)
      left join postlinks
        right join votes
        on (votes.creationdate >= postlinks.creationdate)
      on (users.displayname < comments.userdisplayname)
    on (comments.userid > votes.id)
where users.aboutme is NULL
limit 68;
select  
  max(
    cast(cast(null as date) as date))
from 
  users
    right join posts
        right join postlinks
        on (posts.title >= posts.tags)
      inner join posthistory
      on (posts.communityowneddate = posts.communityowneddate)
    on (postlinks.id is not NULL)
where posts.ownerdisplayname < posthistory.revisionguid;
select  
  comments.score, 
  comments.text, 
  comments.text, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.postid, 
  comments.score
from 
  comments
    inner join comments
    on (comments.creationdate < comments.creationdate)
where comments.userdisplayname is not NULL;
select  
  max(
    cast(cast(null as inet) as inet)), 
  users.lastaccessdate, 
  users.reputation, 
  users.websiteurl, 
  min(
    cast(cast(null as date) as date)), 
  max(
    cast(users.lastaccessdate as timestamptz)), 
  count(
    cast(users.downvotes as int8)), 
  max(
    cast(users.displayname as text)), 
  users.aboutme, 
  users.downvotes, 
  users.creationdate, 
  users.creationdate, 
  users.accountid
from 
  users
where users.lastaccessdate is NULL
limit 73;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.score, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.postid, 
  min(
    cast(cast(null as date) as date)), 
  comments.creationdate, 
  comments.id, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  comments.userid, 
  postlinks.creationdate, 
  comments.userdisplayname, 
  postlinks.id, 
  comments.postid, 
  postlinks.creationdate, 
  comments.postid, 
  postlinks.creationdate
from 
  comments
    left join postlinks
    on (comments.userid is NULL)
where comments.id <= comments.score;
select  
  postlinks.linktypeid, 
  posts.id
from 
  postlinks
    left join posts
    on (postlinks.linktypeid is not NULL)
where postlinks.id is NULL
limit 113;
select  
  votes.creationdate, 
  users.views, 
  votes.votetypeid, 
  posthistory.contentlicense
from 
  posts
      right join users
      on (posts.lasteditdate = users.creationdate )
    right join votes
        right join votes
        on (votes.creationdate = votes.creationdate)
      right join users
          left join votes
          on (users.lastaccessdate > users.lastaccessdate)
        inner join badges
            left join posthistory
            on (posthistory.id = posthistory.postid)
          left join postlinks
            inner join posthistory
            on (postlinks.postid >= posthistory.posthistorytypeid)
          on (posthistory.text > posthistory.text)
        on (posthistory.revisionguid = badges.class)
      on (votes.bountyamount = posthistory.id )
    on (posts.lasteditoruserid = posthistory.id )
where votes.id >= posthistory.id;
select  
  badges.name, 
  badges.id, 
  badges.userid, 
  comments.text, 
  comments.id
from 
  comments
    inner join badges
    on (comments.creationdate = comments.creationdate)
where badges.userid is not NULL;
select  
  posthistory.postid, 
  badges.class, 
  badges.name
from 
  posthistory
      inner join posthistory
        left join votes
        on (posthistory.text >= posthistory.contentlicense)
      on (votes.bountyamount < votes.votetypeid)
    inner join badges
    on (posthistory.postid is NULL)
where posthistory.id is NULL
limit 196;
select  
  comments.userid, 
  comments.userid, 
  max(
    cast(comments.creationdate as timestamptz)), 
  comments.creationdate, 
  comments.score, 
  comments.userdisplayname, 
  comments.id, 
  comments.text, 
  comments.userdisplayname
from 
  comments
where comments.id >= comments.id;
select  
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate = postlinks.creationdate
limit 108;
select  
  users.reputation, 
  users.downvotes, 
  users.profileimageurl, 
  users.profileimageurl, 
  users.displayname
from 
  users
where users.creationdate > users.creationdate
limit 83;
select  
  users.upvotes
from 
  users
    inner join postlinks
    on (postlinks.relatedpostid is NULL)
where postlinks.id is not NULL;
select  
  postlinks.id, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.id is not NULL
limit 104;
select  
  badges.class, 
  badges.class, 
  min(
    cast(badges.userid as int8)), 
  badges.date, 
  badges.date, 
  max(
    cast(cast(null as xid8) as xid8)), 
  badges.name, 
  badges.tagbased, 
  badges.class, 
  sum(
    cast(73 as int4)), 
  badges.userid
from 
  badges
where badges.userid is NULL
limit 78;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  postlinks.postid, 
  postlinks.creationdate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(postlinks.creationdate as timestamptz)), 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as tid) as tid)), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.postid
from 
  postlinks
where postlinks.creationdate is NULL
limit 85;
select  
  min(
    cast(cast(null as int2) as int2)), 
  badges.name, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(badges.date as timestamptz))
from 
  badges
where badges.class is NULL
limit 103;
select  
  postlinks.id, 
  postlinks.creationdate
from 
  postlinks
where postlinks.relatedpostid is NULL;
select  
  postlinks.linktypeid
from 
  postlinks
where postlinks.id is NULL;
select  
  votes.votetypeid, 
  posthistory.text, 
  votes.bountyamount, 
  users.accountid, 
  posthistory.contentlicense
from 
  users
      right join posthistory
      on (users.lastaccessdate < posthistory.creationdate)
    right join votes
    on (users.profileimageurl is NULL)
where users.profileimageurl < users.profileimageurl
limit 38;
select  
  badges.name, 
  posts.lastactivitydate, 
  votes.creationdate, 
  comments.creationdate, 
  comments.userdisplayname, 
  sum(
    cast(cast(null as float8) as float8)), 
  votes.id, 
  users.profileimageurl
from 
  comments
        inner join badges
            left join posts
            on (badges.date = posts.creationdate )
          left join posts
            inner join users
                right join comments
                on (users.aboutme < comments.userdisplayname)
              left join badges
              on (comments.score >= comments.postid)
            on (users.creationdate < posts.communityowneddate)
          on (posts.closeddate > posts.closeddate)
        on (posts.parentid > users.id)
      left join votes
              left join comments
              on (comments.postid < comments.id)
            left join posthistory
            on (votes.creationdate = posthistory.creationdate )
          right join votes
            inner join users
            on (users.reputation >= users.accountid)
          on (posthistory.text >= posthistory.contentlicense)
        inner join votes
              right join users
              on (votes.postid = users.id )
            inner join postlinks
              inner join comments
              on (comments.postid > comments.userid)
            on (comments.id = postlinks.id)
          inner join votes
            inner join postlinks
            on (votes.bountyamount = postlinks.id )
          on (votes.creationdate = users.creationdate)
        on (users.reputation < users.accountid)
      on (posthistory.userdisplayname < users.displayname)
    inner join users
    on (users.downvotes = users.upvotes)
where comments.text is not NULL
limit 125;
select  
  users.websiteurl, 
  users.reputation
from 
  posts
    inner join users
    on (posts.lasteditoruserid = users.id )
where posts.lasteditoruserid < users.views;
select  
  users.id, 
  users.upvotes, 
  users.websiteurl, 
  users.downvotes
from 
  users
where users.websiteurl is NULL
limit 198;
select  
  posthistory.text, 
  sum(
    cast(cast(null as money) as money)), 
  posthistory.posthistorytypeid, 
  comments.userid, 
  comments.score, 
  users.upvotes, 
  users.lastaccessdate
from 
  comments
    inner join users
        left join posthistory
          left join users
          on (posthistory.id < users.id)
        on (users.id = users.views)
      inner join posthistory
      on (users.creationdate > users.creationdate)
    on (comments.creationdate = users.creationdate )
where users.websiteurl > users.websiteurl;
select  
  posts.lasteditoruserid, 
  posts.title
from 
  posts
where posts.posttypeid is not NULL;
select  
  users.aboutme, 
  votes.id
from 
  users
    left join votes
    on (users.displayname >= users.displayname)
where users.upvotes is NULL
limit 62;
select  
  posthistory.userdisplayname, 
  posthistory.userid, 
  posthistory.text, 
  sum(
    cast(cast(null as float4) as float4)), 
  posthistory.text, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.revisionguid > posthistory.contentlicense;
select  
  badges.name, 
  badges.tagbased, 
  badges.id, 
  min(
    cast(70 as int4)), 
  badges.userid, 
  min(
    cast(cast(null as float8) as float8)), 
  badges.tagbased, 
  badges.tagbased, 
  badges.id
from 
  badges
where badges.tagbased is not NULL;
select  
  users.creationdate, 
  badges.tagbased, 
  avg(
    cast(posthistory.posthistorytypeid as int8)), 
  postlinks.linktypeid, 
  badges.class, 
  comments.userid, 
  posthistory.id, 
  postlinks.creationdate, 
  max(
    cast(cast(null as date) as date)), 
  badges.date, 
  comments.text, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  postlinks
        right join posthistory
        on (posthistory.userid > posthistory.postid)
      left join users
          right join posthistory
          on (users.lastaccessdate >= posthistory.creationdate)
        left join users
            inner join badges
            on (users.upvotes >= users.upvotes)
          right join badges
          on (users.profileimageurl > badges.class)
        on (posthistory.contentlicense > users.displayname)
      on (postlinks.id < postlinks.postid)
    inner join posthistory
            right join posthistory
            on (posthistory.creationdate <= posthistory.creationdate)
          inner join comments
          on (posthistory.text = posthistory.comment)
        right join badges
        on (comments.userid <= badges.userid)
      inner join badges
          inner join postlinks
          on (postlinks.id > badges.userid)
        left join posts
          right join postlinks
            inner join comments
              inner join users
              on (users.displayname > comments.userdisplayname)
            on (postlinks.creationdate > users.creationdate)
          on (posts.closeddate = users.creationdate)
        on (posts.title <= users.aboutme)
      on (users.creationdate <= comments.creationdate)
    on (users.accountid is NULL)
where users.profileimageurl is NULL
limit 112;
select  
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  posts
where posts.lasteditoruserid is not NULL;
select  
  votes.postid, 
  max(
    cast(posts.lasteditdate as timestamptz)), 
  postlinks.relatedpostid
from 
  badges
    inner join users
          inner join posts
          on (users.displayname >= posts.body)
        right join users
        on (posts.id >= users.upvotes)
      right join votes
        inner join postlinks
        on (postlinks.creationdate < postlinks.creationdate)
      on (users.profileimageurl >= users.websiteurl)
    on (posts.body > users.aboutme)
where badges.date is NULL
limit 111;
select  
  badges.tagbased, 
  badges.userid
from 
  postlinks
      right join comments
        inner join postlinks
          left join comments
          on (postlinks.postid = comments.id )
        on (comments.userid <= comments.userid)
      on (postlinks.relatedpostid <= postlinks.postid)
    left join badges
    on (comments.text = badges.class )
where postlinks.linktypeid < postlinks.id
limit 60;
select  
  votes.id, 
  postlinks.relatedpostid, 
  votes.userid, 
  badges.id, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  votes.userid, 
  postlinks.postid, 
  posts.id, 
  votes.creationdate, 
  posts.body, 
  posts.viewcount, 
  postlinks.postid, 
  votes.creationdate
from 
  badges
        right join posts
          inner join votes
          on (posts.id >= votes.id)
        on (posts.parentid >= posts.answercount)
      left join postlinks
      on (votes.postid = postlinks.id )
    left join posts
      right join votes
      on (votes.userid < posts.lasteditoruserid)
    on (posts.contentlicense is NULL)
where votes.creationdate = badges.date;
select  
  posts.body, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postlinks.postid
from 
  posts
    left join postlinks
    on (posts.communityowneddate >= postlinks.creationdate)
where postlinks.id is NULL
limit 82;
select  
  posthistory.contentlicense, 
  posthistory.text, 
  posthistory.contentlicense, 
  posthistory.creationdate
from 
  posthistory
where posthistory.id is not NULL;
select  
  posts.parentid, 
  posts.owneruserid, 
  posts.posttypeid, 
  posts.parentid, 
  max(
    cast(cast(null as money) as money)), 
  posts.communityowneddate
from 
  posts
where posts.lasteditoruserid > posts.id
limit 76;
select  
  votes.postid, 
  votes.bountyamount
from 
  votes
where votes.userid is not NULL
limit 156;
select  
  badges.date, 
  posthistory.comment, 
  comments.userdisplayname, 
  postlinks.id
from 
  badges
      inner join comments
            right join comments
            on (comments.postid = comments.score)
          left join posthistory
          on (comments.userdisplayname > comments.userdisplayname)
        inner join comments
        on (comments.creationdate <= posthistory.creationdate)
      on (comments.id <= comments.id)
    right join postlinks
    on (comments.text is not NULL)
where comments.userid = comments.id
limit 165;
select  
  votes.bountyamount, 
  votes.userid, 
  votes.id, 
  votes.userid, 
  votes.id, 
  min(
    cast(votes.userid as int8))
from 
  votes
where votes.id is not NULL
limit 69;
select  
  votes.postid, 
  votes.userid, 
  votes.votetypeid, 
  votes.id, 
  votes.postid, 
  votes.id, 
  votes.userid, 
  min(
    cast(cast(null as inet) as inet)), 
  votes.postid
from 
  votes
where votes.postid > votes.id;
select  
  badges.userid, 
  votes.id, 
  badges.class, 
  badges.class, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.creationdate, 
  badges.date, 
  badges.id, 
  votes.id
from 
  badges
    right join votes
    on (badges.userid is not NULL)
where votes.bountyamount is NULL
limit 128;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.score, 
  posthistory.posthistorytypeid, 
  max(
    cast(comments.text as text)), 
  comments.postid, 
  comments.text
from 
  posthistory
    inner join comments
    on (posthistory.text is not NULL)
where posthistory.userdisplayname = posthistory.comment;
select  
  posthistory.text, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.relatedpostid
from 
  posthistory
    right join posts
        left join votes
            inner join postlinks
            on (votes.userid = postlinks.id )
          left join comments
          on (comments.text < comments.text)
        on (posts.lasteditdate < posts.lastactivitydate)
      inner join postlinks
      on (comments.score = postlinks.id )
    on (posthistory.creationdate is NULL)
where comments.userdisplayname = comments.text
limit 144;
select  
  votes.creationdate, 
  votes.bountyamount, 
  max(
    cast(votes.creationdate as timestamptz)), 
  votes.creationdate, 
  votes.postid, 
  votes.votetypeid, 
  max(
    cast(cast(null as date) as date)), 
  votes.userid, 
  votes.votetypeid, 
  votes.id
from 
  votes
where votes.id is NULL;
select  
  comments.creationdate, 
  votes.postid
from 
  votes
      inner join users
        inner join badges
              right join comments
              on (badges.class = comments.userdisplayname )
            left join votes
              inner join posts
              on (posts.score < posts.id)
            on (posts.lastactivitydate >= posts.communityowneddate)
          inner join postlinks
            right join badges
            on (badges.id = badges.userid)
          on (votes.id = postlinks.id )
        on (users.upvotes = votes.id )
      on (posts.title < badges.name)
    left join badges
    on (postlinks.postid is NULL)
where votes.postid is not NULL
limit 181;
select  
  badges.date, 
  sum(
    cast(53 as int4)), 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.userid, 
  badges.date, 
  badges.date, 
  badges.userid, 
  badges.id, 
  badges.date, 
  badges.date, 
  badges.class, 
  badges.date, 
  badges.class, 
  badges.userid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.class, 
  badges.tagbased, 
  badges.date
from 
  badges
where badges.name >= badges.class
limit 16;
select distinct 
  comments.score, 
  comments.score, 
  comments.userid, 
  comments.userid, 
  comments.id, 
  comments.userdisplayname
from 
  comments
where comments.creationdate <= comments.creationdate
limit 98;
select  
  badges.class, 
  votes.postid
from 
  badges
    inner join posthistory
              right join badges
              on (posthistory.userdisplayname >= badges.name)
            inner join posts
            on (posts.parentid < posthistory.posthistorytypeid)
          inner join badges
          on (posthistory.posthistorytypeid >= posts.owneruserid)
        inner join users
        on (users.creationdate <= users.lastaccessdate)
      inner join votes
        left join posts
        on (posts.score < posts.answercount)
      on (users.profileimageurl = posts.body)
    on (votes.userid is not NULL)
where votes.bountyamount is not NULL;
select  
  posthistory.posthistorytypeid, 
  sum(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as float4) as float4))
from 
  posthistory
      right join posts
      on (posts.body < posts.ownerdisplayname)
    inner join postlinks
    on (posts.communityowneddate = postlinks.creationdate )
where postlinks.creationdate <= posts.lasteditdate;
select  
  users.upvotes, 
  users.displayname, 
  posthistory.creationdate, 
  users.accountid, 
  posthistory.id, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  users.reputation
from 
  users
    inner join posthistory
    on (users.aboutme >= users.displayname)
where users.upvotes <= posthistory.id
limit 47;
select  
  votes.postid
from 
  postlinks
      inner join votes
        inner join posthistory
        on (votes.votetypeid >= votes.votetypeid)
      on (posthistory.revisionguid > posthistory.userdisplayname)
    left join posthistory
      right join comments
      on (posthistory.contentlicense > comments.text)
    on (posthistory.id is not NULL)
where postlinks.id is NULL
limit 67;
select  
  min(
    cast(cast(null as "interval") as "interval"))
from 
  postlinks
    inner join posthistory
          left join posts
              inner join posts
              on (posts.ownerdisplayname = posts.ownerdisplayname )
            right join comments
            on (comments.text <= posts.lasteditordisplayname)
          on (posts.closeddate = posts.lasteditdate)
        left join badges
          right join posthistory
            left join postlinks
            on (posthistory.revisionguid >= posthistory.text)
          on (badges.date = posthistory.creationdate )
        on (posts.communityowneddate < posts.communityowneddate)
      inner join badges
      on (posts.lasteditoruserid < posthistory.posthistorytypeid)
    on (postlinks.linktypeid is not NULL)
where comments.userdisplayname is not NULL;
select  
  comments.creationdate, 
  comments.userdisplayname, 
  comments.userdisplayname
from 
  comments
where comments.id is NULL
limit 48;
select  
  posthistory.contentlicense, 
  posthistory.postid, 
  posthistory.userdisplayname, 
  posthistory.text
from 
  posthistory
where posthistory.revisionguid is not NULL
limit 151;
select  
  postlinks.creationdate, 
  max(
    cast(cast(null as date) as date))
from 
  postlinks
    left join posthistory
    on (posthistory.revisionguid >= posthistory.comment)
where postlinks.id is NULL;
select  
  votes.votetypeid, 
  votes.postid
from 
  users
      right join comments
      on (users.accountid = comments.id )
    inner join votes
    on (comments.id = votes.id )
where comments.text = users.aboutme;
select  
  users.upvotes
from 
  posts
      right join users
          right join users
          on (users.lastaccessdate >= users.creationdate)
        inner join posthistory
        on (users.upvotes > users.id)
      on (posts.viewcount = users.id )
    left join comments
    on (users.creationdate = comments.creationdate )
where posthistory.revisionguid is NULL;
select  
  postlinks.linktypeid
from 
  postlinks
      right join badges
        inner join posts
          inner join votes
          on (posts.title <= posts.lasteditordisplayname)
        on (badges.id = votes.id )
      on (posts.acceptedanswerid <= votes.postid)
    inner join comments
      right join posthistory
      on (posthistory.creationdate > comments.creationdate)
    on (postlinks.postid is not NULL)
where posthistory.revisionguid is not NULL
limit 83;
select  
  comments.userdisplayname, 
  comments.postid, 
  comments.creationdate
from 
  comments
where comments.userdisplayname is not NULL;
select  
  min(
    cast(cast(null as inet) as inet)), 
  comments.creationdate, 
  comments.score, 
  comments.id, 
  comments.text, 
  comments.creationdate, 
  comments.creationdate, 
  comments.creationdate, 
  comments.id, 
  comments.id, 
  comments.userdisplayname, 
  comments.id, 
  comments.userdisplayname, 
  max(
    cast(cast(null as float8) as float8)), 
  comments.text, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
where comments.text is not NULL;
select  
  users.accountid, 
  users.lastaccessdate, 
  users.lastaccessdate, 
  users.reputation, 
  users.reputation
from 
  users
where users.views is NULL
limit 113;
select  
  comments.score, 
  posts.acceptedanswerid
from 
  posthistory
    right join comments
      left join posthistory
        right join users
            inner join posts
            on (users.lastaccessdate >= posts.closeddate)
          inner join posthistory
          on (posts.lasteditdate <= posts.lastactivitydate)
        on (posts.answercount > posthistory.userid)
      on (posthistory.userid <= comments.id)
    on (posts.title > posthistory.userdisplayname)
where posthistory.postid is NULL
limit 121;
select  
  users.upvotes, 
  users.displayname, 
  users.displayname, 
  users.views, 
  users.downvotes, 
  users.location, 
  users.location, 
  users.aboutme, 
  users.creationdate
from 
  users
where users.reputation is NULL
limit 86;
select  
  posthistory.userdisplayname, 
  max(
    cast(cast(null as xid8) as xid8)), 
  posthistory.userdisplayname, 
  posthistory.revisionguid, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.revisionguid > posthistory.text;
select  
  posthistory.userid
from 
  posthistory
where posthistory.creationdate >= posthistory.creationdate
limit 117;
select  
  votes.votetypeid, 
  votes.bountyamount, 
  votes.postid
from 
  votes
      right join postlinks
      on (votes.userid = postlinks.id )
    left join posthistory
        right join comments
        on (posthistory.postid > comments.userid)
      left join posthistory
        inner join votes
        on (posthistory.creationdate = posthistory.creationdate)
      on (posthistory.posthistorytypeid = posthistory.id )
    on (votes.bountyamount = posthistory.id )
where votes.postid is NULL;
select  
  posts.lastactivitydate, 
  badges.id
from 
  posthistory
          inner join posts
            inner join votes
            on (posts.parentid >= posts.score)
          on (posts.commentcount <= posts.parentid)
        right join posts
            right join badges
            on (badges.id = badges.id)
          inner join badges
          on (posts.lastactivitydate >= badges.date)
        on (posthistory.text = badges.name)
      inner join comments
      on (posts.viewcount = comments.id )
    right join comments
    on (posthistory.userid is NULL)
where comments.postid is NULL;
select  
  posthistory.comment, 
  posthistory.revisionguid, 
  posthistory.comment, 
  posthistory.creationdate, 
  posthistory.id, 
  max(
    cast(65 as int4)), 
  count(
    cast(posthistory.postid as int8)), 
  posthistory.userid, 
  posthistory.postid
from 
  posthistory
where posthistory.comment < posthistory.userdisplayname
limit 37;
select  
  posthistory.id, 
  posthistory.id, 
  postlinks.postid, 
  max(
    cast(cast(null as int2) as int2)), 
  posthistory.creationdate, 
  posthistory.comment, 
  posthistory.creationdate, 
  posthistory.revisionguid, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  posthistory.id, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  posthistory.creationdate, 
  posthistory.text, 
  postlinks.id, 
  avg(
    cast(cast(null as float8) as float8)), 
  postlinks.id, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posthistory.postid, 
  posthistory.text
from 
  posthistory
    left join postlinks
    on (posthistory.creationdate = postlinks.creationdate )
where posthistory.postid > posthistory.userid
limit 48;
select  
  posthistory.text, 
  postlinks.id, 
  comments.userdisplayname
from 
  postlinks
    left join postlinks
      inner join users
          inner join posthistory
          on (users.location = posthistory.userdisplayname )
        right join badges
          inner join comments
          on (comments.id < comments.score)
        on (users.creationdate < posthistory.creationdate)
      on (postlinks.postid >= posthistory.postid)
    on (users.websiteurl = posthistory.revisionguid)
where users.reputation is NULL
limit 70;
select  
  posts.score
from 
  posts
    left join posts
      inner join users
      on (users.lastaccessdate > users.creationdate)
    on (users.websiteurl <= posts.contentlicense)
where posts.id is NULL
limit 109;
select  
  postlinks.relatedpostid, 
  votes.bountyamount, 
  postlinks.creationdate
from 
  posthistory
      left join posts
          inner join comments
          on (comments.score < posts.lasteditoruserid)
        right join posts
          left join postlinks
          on (posts.lasteditoruserid = postlinks.id )
        on (posts.lasteditdate >= posts.creationdate)
      on (posts.ownerdisplayname < posts.body)
    left join postlinks
      inner join posthistory
        right join votes
        on (votes.votetypeid <= votes.id)
      on (posthistory.comment > posthistory.revisionguid)
    on (posthistory.id is NULL)
where posts.lasteditoruserid is NULL
limit 93;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.relatedpostid is not NULL;
select  
  min(
    cast(cast(null as money) as money))
from 
  comments
where comments.postid is not NULL
limit 145;
select  
  comments.userdisplayname, 
  posts.lastactivitydate, 
  posts.title, 
  comments.score, 
  badges.name, 
  comments.creationdate
from 
  posts
      right join users
          right join comments
          on (users.profileimageurl = comments.userdisplayname )
        right join comments
          left join badges
            inner join comments
            on (comments.userid > badges.id)
          on (comments.creationdate = badges.date)
        on (badges.name >= badges.tagbased)
      on (users.lastaccessdate <= posts.communityowneddate)
    right join posts
    on (posts.lastactivitydate is not NULL)
where posts.viewcount is not NULL
limit 121;
select  
  avg(
    cast(26 as int4)), 
  posts.id, 
  posts.lasteditordisplayname, 
  users.aboutme, 
  posts.answercount, 
  badges.class, 
  badges.date, 
  avg(
    cast(28 as int4)), 
  posts.acceptedanswerid, 
  postlinks.creationdate, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.date, 
  users.upvotes
from 
  users
    left join users
      right join posts
          right join postlinks
          on (posts.contentlicense <= posts.ownerdisplayname)
        right join badges
          right join users
          on (users.displayname > badges.class)
        on (posts.viewcount = users.id )
      on (users.id = badges.id )
    on (users.reputation > users.accountid)
where users.location is NULL
limit 94;
select  
  votes.bountyamount, 
  users.accountid, 
  users.reputation, 
  users.downvotes, 
  posts.acceptedanswerid
from 
  votes
        left join posts
        on (posts.lasteditordisplayname <= posts.body)
      right join posts
          right join postlinks
          on (posts.viewcount = postlinks.id )
        inner join postlinks
        on (posts.owneruserid > posts.viewcount)
      on (posts.title >= posts.title)
    inner join votes
        left join posthistory
        on (posthistory.text > posthistory.revisionguid)
      right join badges
        right join users
          inner join votes
          on (users.lastaccessdate < users.creationdate)
        on (badges.name < users.location)
      on (posthistory.creationdate > badges.date)
    on (postlinks.linktypeid is not NULL)
where votes.postid is not NULL
limit 144;
select  
  postlinks.id, 
  votes.userid, 
  votes.bountyamount, 
  postlinks.creationdate
from 
  votes
    inner join postlinks
    on (votes.userid = postlinks.id )
where votes.userid is NULL
limit 93;
select  
  users.downvotes
from 
  users
where users.profileimageurl is NULL
limit 88;
select  
  users.location, 
  users.profileimageurl, 
  users.websiteurl, 
  min(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as date) as date)), 
  votes.postid, 
  votes.creationdate, 
  comments.userid, 
  comments.creationdate, 
  users.accountid, 
  votes.bountyamount, 
  users.upvotes, 
  comments.creationdate, 
  comments.id, 
  votes.postid, 
  sum(
    cast(badges.userid as int8)), 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.postid, 
  comments.creationdate, 
  users.location, 
  min(
    cast(users.location as text)), 
  users.lastaccessdate, 
  votes.postid, 
  badges.id, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.id, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  badges.class, 
  comments.id, 
  badges.userid, 
  min(
    cast(cast(null as tid) as tid)), 
  votes.postid, 
  users.accountid, 
  badges.id, 
  min(
    cast(cast(null as "time") as "time")), 
  comments.postid
from 
  votes
      inner join comments
      on (votes.id <= votes.id)
    inner join badges
        right join users
          left join comments
          on (users.reputation = comments.id )
        on (users.creationdate <= comments.creationdate)
      inner join users
        right join votes
          left join users
          on (votes.bountyamount <= users.downvotes)
        on (users.aboutme = users.websiteurl)
      on (users.aboutme < users.location)
    on (comments.userdisplayname = badges.class )
where comments.text <= users.websiteurl
limit 151;
select  
  badges.class, 
  comments.creationdate, 
  votes.votetypeid, 
  users.id, 
  users.displayname
from 
  users
        left join users
        on (users.upvotes = users.accountid)
      inner join users
        inner join votes
            right join badges
            on (badges.class <= badges.tagbased)
          left join comments
          on (comments.score <= comments.id)
        on (users.lastaccessdate = badges.date )
      on (badges.userid <= users.upvotes)
    right join badges
    on (users.aboutme is not NULL)
where badges.name is NULL;
select  
  votes.creationdate, 
  postlinks.linktypeid
from 
  postlinks
      left join votes
      on (postlinks.creationdate = postlinks.creationdate)
    left join postlinks
    on (votes.votetypeid is NULL)
where postlinks.relatedpostid is not NULL
limit 121;
select  
  min(
    cast(cast(null as float4) as float4)), 
  votes.userid
from 
  votes
            left join users
              right join posthistory
              on (posthistory.creationdate > users.creationdate)
            on (votes.bountyamount = votes.postid)
          right join badges
          on (users.creationdate = badges.date)
        inner join votes
        on (votes.votetypeid = votes.id )
      left join users
      on (users.views >= users.reputation)
    inner join postlinks
      inner join badges
      on (badges.date > badges.date)
    on (posthistory.contentlicense = badges.class )
where posthistory.comment > posthistory.userdisplayname
limit 102;
select distinct 
  posthistory.id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posthistory.creationdate, 
  posthistory.text, 
  posthistory.postid, 
  posthistory.id, 
  posthistory.text, 
  posthistory.comment, 
  posthistory.revisionguid, 
  posthistory.id, 
  posthistory.id
from 
  posthistory
where posthistory.userid is not NULL;
select  
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.relatedpostid is not NULL
limit 33;
select  
  badges.name, 
  badges.name, 
  min(
    cast(posthistory.posthistorytypeid as int8)), 
  badges.date, 
  badges.class, 
  badges.class, 
  badges.tagbased, 
  badges.id, 
  badges.userid, 
  badges.tagbased, 
  badges.name, 
  posthistory.posthistorytypeid, 
  posthistory.userid, 
  badges.date, 
  posthistory.revisionguid, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  badges
      inner join posthistory
      on (posthistory.comment >= badges.class)
    right join badges
    on (badges.userid is not NULL)
where posthistory.postid = posthistory.userid
limit 45;
select  
  votes.userid
from 
  badges
      inner join users
      on (badges.userid > badges.id)
    inner join votes
    on (users.lastaccessdate is not NULL)
where votes.votetypeid is NULL;
select  
  posts.posttypeid, 
  posts.body, 
  posts.tags, 
  posts.lasteditordisplayname, 
  posts.ownerdisplayname, 
  posts.tags, 
  posts.ownerdisplayname, 
  posts.lasteditoruserid
from 
  posts
where posts.id is not NULL
limit 101;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.id, 
  comments.creationdate, 
  comments.score, 
  comments.userdisplayname
from 
  comments
where comments.creationdate is NULL
limit 54;
select  
  max(
    cast(comments.score as int8)), 
  posthistory.text, 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as int2) as int2))
from 
  postlinks
        inner join posthistory
        on (postlinks.postid = posthistory.id )
      right join comments
          left join posthistory
          on (comments.text < posthistory.userdisplayname)
        right join postlinks
        on (comments.creationdate >= postlinks.creationdate)
      on (posthistory.comment <= posthistory.userdisplayname)
    left join comments
      left join votes
        left join posthistory
        on (posthistory.contentlicense <= posthistory.revisionguid)
      on (posthistory.userdisplayname = comments.text)
    on (posthistory.userdisplayname is not NULL)
where postlinks.linktypeid is NULL
limit 52;
select  
  max(
    cast(badges.tagbased as text))
from 
  posts
    right join badges
        inner join votes
        on (votes.votetypeid <= votes.userid)
      right join postlinks
          inner join comments
          on (postlinks.relatedpostid = comments.id )
        right join posthistory
        on (posthistory.creationdate > posthistory.creationdate)
      on (comments.userid < postlinks.linktypeid)
    on (posts.contentlicense is NULL)
where comments.userdisplayname > posts.lasteditordisplayname
limit 77;
select  
  min(
    cast(cast(null as "time") as "time"))
from 
  votes
          inner join comments
          on (votes.postid = comments.id )
        left join posthistory
        on (comments.creationdate = posthistory.creationdate)
      inner join users
      on (votes.bountyamount = users.id )
    left join posts
    on (comments.id is NULL)
where comments.text is not NULL
limit 58;
select  
  comments.text, 
  postlinks.id, 
  postlinks.postid, 
  max(
    cast(cast(null as tid) as tid)), 
  postlinks.linktypeid, 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid
from 
  postlinks
        left join comments
          inner join postlinks
            left join postlinks
            on (postlinks.creationdate = postlinks.creationdate )
          on (comments.postid = postlinks.id )
        on (comments.text < comments.text)
      left join badges
      on (badges.tagbased < badges.class)
    left join posthistory
      inner join comments
      on (posthistory.id >= posthistory.id)
    on (badges.date is not NULL)
where badges.class is not NULL
limit 123;
select  
  badges.userid, 
  badges.tagbased, 
  min(
    cast(68 as int4))
from 
  posthistory
      inner join badges
            inner join votes
            on (badges.date <= votes.creationdate)
          right join postlinks
          on (votes.userid > postlinks.linktypeid)
        right join posts
        on (postlinks.creationdate = posts.closeddate)
      on (postlinks.creationdate = postlinks.creationdate)
    left join posts
      right join badges
      on (posts.ownerdisplayname <= posts.body)
    on (badges.id is NULL)
where badges.id is not NULL
limit 35;
select  
  votes.votetypeid, 
  votes.creationdate, 
  votes.postid, 
  votes.creationdate
from 
  votes
where votes.creationdate < votes.creationdate
limit 141;
select  
  comments.id
from 
  comments
where comments.text is not NULL;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  badges.userid, 
  badges.id, 
  badges.id
from 
  votes
    left join badges
    on (votes.postid is not NULL)
where badges.userid is NULL
limit 119;
select  
  badges.tagbased, 
  badges.name, 
  badges.date, 
  badges.name, 
  badges.userid, 
  badges.id, 
  badges.date, 
  badges.date
from 
  badges
    right join badges
      inner join users
      on (users.creationdate = badges.date)
    on (users.lastaccessdate is NULL)
where users.creationdate <= badges.date
limit 182;
select  
  postlinks.id, 
  comments.postid, 
  posthistory.userid, 
  count(*), 
  comments.text, 
  posthistory.comment
from 
  postlinks
    inner join posthistory
        inner join comments
        on (posthistory.comment <= comments.userdisplayname)
      inner join comments
      on (comments.text > comments.userdisplayname)
    on (postlinks.id < comments.postid)
where postlinks.id is NULL;
select  
  comments.creationdate, 
  badges.name, 
  posts.lasteditordisplayname, 
  postlinks.postid, 
  posts.tags
from 
  comments
      left join postlinks
      on (postlinks.id < postlinks.postid)
    inner join posthistory
      inner join badges
        inner join posts
          right join postlinks
          on (posts.closeddate < posts.lastactivitydate)
        on (badges.id = posts.id )
      on (posts.lasteditordisplayname >= posts.lasteditordisplayname)
    on (posts.creationdate <= posts.lastactivitydate)
where postlinks.linktypeid is NULL;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  votes.postid, 
  max(
    cast(postlinks.postid as int8)), 
  votes.creationdate, 
  votes.postid, 
  votes.postid, 
  votes.postid, 
  avg(
    cast(votes.votetypeid as int8)), 
  min(
    cast(cast(null as "time") as "time")), 
  postlinks.creationdate, 
  postlinks.id, 
  votes.creationdate, 
  postlinks.linktypeid, 
  votes.id, 
  votes.votetypeid, 
  votes.postid
from 
  postlinks
    inner join votes
    on (votes.id is not NULL)
where postlinks.postid is NULL
limit 64;
select  
  comments.postid, 
  comments.userdisplayname, 
  comments.text, 
  comments.userdisplayname, 
  comments.userid, 
  comments.text, 
  comments.score, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
where comments.postid is NULL
limit 39;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.id, 
  postlinks.id, 
  max(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.relatedpostid is NULL;
select  
  badges.tagbased, 
  badges.id, 
  badges.tagbased
from 
  badges
where badges.id is NULL
limit 105;
select  
  users.downvotes, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.linktypeid
from 
  users
    inner join postlinks
    on (users.downvotes is NULL)
where users.displayname is NULL
limit 161;
select  
  max(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as float8) as float8)), 
  comments.postid, 
  comments.creationdate, 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.postid, 
  comments.postid
from 
  comments
where comments.postid is NULL
limit 165;
select  
  posthistory.userid, 
  max(
    cast(posthistory.text as text)), 
  posthistory.posthistorytypeid, 
  posthistory.text, 
  posthistory.id, 
  posthistory.id, 
  posthistory.comment, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  posthistory
where posthistory.revisionguid is not NULL;
select  
  badges.tagbased, 
  badges.name, 
  badges.userid, 
  badges.date, 
  badges.id, 
  badges.tagbased, 
  sum(
    cast(cast(null as float8) as float8)), 
  badges.date, 
  badges.class
from 
  badges
where badges.class is NULL
limit 154;
select  
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.postid is not NULL
limit 95;
select  
  postlinks.relatedpostid, 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.votetypeid, 
  postlinks.linktypeid, 
  comments.userdisplayname, 
  comments.text, 
  postlinks.linktypeid, 
  comments.postid, 
  votes.votetypeid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.creationdate
from 
  comments
    inner join postlinks
      left join votes
      on (postlinks.postid = votes.id )
    on (postlinks.creationdate < votes.creationdate)
where comments.text is not NULL;
select  
  posts.creationdate
from 
  posts
where posts.posttypeid < posts.commentcount;
select  
  posts.parentid, 
  posts.parentid, 
  posts.viewcount, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posts.contentlicense, 
  posts.id, 
  count(*), 
  posts.commentcount, 
  posts.lasteditoruserid
from 
  posts
where posts.communityowneddate >= posts.communityowneddate
limit 101;
select  
  posthistory.userid, 
  comments.text, 
  min(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as oid) as oid)), 
  comments.text, 
  posthistory.creationdate, 
  comments.creationdate, 
  comments.postid
from 
  posthistory
    inner join comments
    on (comments.score is NULL)
where comments.userid is not NULL
limit 143;
select  
  badges.tagbased, 
  badges.tagbased, 
  max(
    cast(badges.userid as int8)), 
  badges.userid
from 
  badges
where badges.id is not NULL
limit 90;
select  
  votes.creationdate
from 
  votes
where votes.bountyamount = votes.postid
limit 32;
select  
  badges.class, 
  posthistory.revisionguid, 
  sum(
    cast(70 as int4)), 
  posthistory.text, 
  min(
    cast(cast(null as "time") as "time")), 
  comments.text, 
  avg(
    cast(cast(null as int2) as int2)), 
  comments.id, 
  posthistory.text, 
  badges.date, 
  max(
    cast(posthistory.creationdate as timestamptz)), 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.parentid
from 
  posts
      inner join votes
        right join votes
          inner join posthistory
          on (posthistory.creationdate < posthistory.creationdate)
        on (posthistory.userid >= votes.id)
      on (posts.tags < posts.title)
    inner join posthistory
          inner join badges
          on (badges.name < badges.name)
        inner join postlinks
          right join badges
          on (postlinks.linktypeid > postlinks.linktypeid)
        on (postlinks.creationdate <= postlinks.creationdate)
      inner join postlinks
          inner join comments
          on (comments.userdisplayname < comments.text)
        right join posthistory
        on (posthistory.creationdate <= posthistory.creationdate)
      on (badges.date < posthistory.creationdate)
    on (posthistory.contentlicense = posthistory.userdisplayname )
where posthistory.creationdate < posthistory.creationdate
limit 156;
select  
  users.profileimageurl, 
  users.lastaccessdate, 
  users.displayname, 
  users.location, 
  users.websiteurl, 
  users.reputation
from 
  users
where users.downvotes is NULL
limit 100;
select  
  comments.creationdate, 
  comments.postid, 
  comments.creationdate, 
  comments.text, 
  comments.postid
from 
  comments
where comments.id is not NULL
limit 120;
select  
  posts.id, 
  posts.score, 
  votes.postid
from 
  votes
    inner join posts
      right join votes
      on (posts.lastactivitydate >= posts.closeddate)
    on (votes.postid is not NULL)
where votes.votetypeid is NULL
limit 73;
select  
  comments.creationdate
from 
  comments
where comments.text is NULL
limit 71;
select  
  votes.votetypeid, 
  postlinks.creationdate, 
  users.lastaccessdate
from 
  users
      inner join votes
      on (users.downvotes = users.upvotes)
    right join postlinks
    on (votes.id = postlinks.id )
where votes.creationdate >= postlinks.creationdate
limit 117;
select  
  comments.id
from 
  comments
where comments.text = comments.userdisplayname;
select  
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.id is not NULL
limit 137;
select  
  posts.title, 
  badges.date, 
  posthistory.creationdate, 
  votes.bountyamount, 
  comments.creationdate
from 
  posthistory
        right join votes
            left join posts
            on (posts.title > posts.title)
          inner join badges
          on (badges.tagbased = posts.tags)
        on (posthistory.userid >= posthistory.postid)
      inner join posthistory
      on (posthistory.contentlicense = posthistory.userdisplayname )
    inner join comments
    on (posthistory.comment = comments.userdisplayname )
where posts.acceptedanswerid = votes.id
limit 30;
select  
  postlinks.postid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.linktypeid is NULL
limit 57;
select  
  users.lastaccessdate, 
  max(
    cast(cast(null as float8) as float8)), 
  users.displayname, 
  badges.tagbased, 
  comments.userdisplayname, 
  comments.creationdate, 
  users.location, 
  badges.userid, 
  users.aboutme, 
  min(
    cast(users.reputation as int8)), 
  users.views, 
  comments.userdisplayname
from 
  badges
        inner join posts
        on (badges.date <= posts.closeddate)
      inner join badges
        inner join users
        on (users.creationdate < users.creationdate)
      on (posts.closeddate <= posts.creationdate)
    right join comments
      left join users
      on (comments.id >= users.upvotes)
    on (badges.userid is not NULL)
where posts.contentlicense is not NULL
limit 151;
select  
  postlinks.relatedpostid, 
  max(
    cast(cast(null as float8) as float8)), 
  postlinks.postid
from 
  postlinks
      inner join badges
      on (badges.userid <= badges.id)
    inner join badges
    on (badges.id = badges.id )
where postlinks.relatedpostid is not NULL;
select  
  comments.text, 
  postlinks.relatedpostid, 
  users.views, 
  postlinks.creationdate, 
  comments.postid, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  badges.tagbased, 
  users.accountid, 
  badges.name, 
  comments.userdisplayname, 
  min(
    cast(cast(null as date) as date)), 
  comments.score, 
  votes.id, 
  sum(
    cast(comments.userid as int8)), 
  postlinks.creationdate, 
  posthistory.postid, 
  badges.date
from 
  postlinks
        inner join posthistory
        on (posthistory.userid >= posthistory.posthistorytypeid)
      inner join badges
          left join comments
          on (comments.creationdate <= comments.creationdate)
        right join users
        on (users.reputation > users.reputation)
      on (posthistory.userid = users.id )
    inner join posthistory
        inner join comments
        on (posthistory.creationdate < posthistory.creationdate)
      left join votes
        left join badges
        on (votes.bountyamount > votes.bountyamount)
      on (posthistory.posthistorytypeid > badges.userid)
    on (votes.votetypeid is not NULL)
where badges.tagbased is not NULL
limit 74;
select  
  badges.name, 
  votes.postid, 
  comments.id, 
  comments.id, 
  badges.userid
from 
  comments
      inner join votes
        inner join posts
        on (posts.lasteditordisplayname < posts.ownerdisplayname)
      on (comments.userdisplayname = posts.ownerdisplayname )
    right join badges
    on (votes.creationdate = badges.date )
where posts.answercount is NULL
limit 73;
select  
  users.websiteurl, 
  posthistory.text, 
  posthistory.id, 
  max(
    cast(cast(null as money) as money)), 
  users.aboutme, 
  users.id, 
  users.id, 
  max(
    cast(cast(null as float8) as float8)), 
  posthistory.postid, 
  posthistory.creationdate
from 
  posthistory
    left join users
      inner join posthistory
        inner join badges
            right join comments
            on (comments.id < badges.userid)
          inner join posthistory
          on (comments.creationdate > badges.date)
        on (posthistory.id < comments.score)
      on (users.creationdate = comments.creationdate )
    on (users.downvotes is NULL)
where badges.date < posthistory.creationdate
limit 57;
select  
  badges.class
from 
  votes
    inner join badges
          inner join badges
            inner join posthistory
            on (posthistory.postid < badges.userid)
          on (badges.date > badges.date)
        inner join badges
          inner join badges
          on (badges.class = badges.class )
        on (badges.date >= posthistory.creationdate)
      right join posts
      on (posthistory.comment > posts.tags)
    on (votes.votetypeid is NULL)
where votes.postid is NULL
limit 51;
select  
  badges.name, 
  badges.id, 
  badges.name, 
  badges.userid, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  badges
where badges.class is not NULL
limit 98;
select  
  votes.votetypeid, 
  votes.id, 
  votes.id, 
  sum(
    cast(cast(null as money) as money)), 
  votes.id
from 
  votes
where votes.bountyamount is not NULL;
select  
  comments.score, 
  comments.id, 
  comments.creationdate, 
  max(
    cast(comments.userdisplayname as text)), 
  badges.userid, 
  badges.date, 
  badges.date, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  postlinks
    inner join comments
      inner join badges
      on (badges.class = comments.text)
    on (comments.postid is not NULL)
where badges.date <= badges.date
limit 171;
select  
  badges.date, 
  postlinks.postid
from 
  badges
      left join comments
      on (badges.date > badges.date)
    left join postlinks
    on (badges.class is NULL)
where comments.userdisplayname is NULL
limit 73;
select  
  votes.userid, 
  posts.communityowneddate, 
  posts.closeddate, 
  votes.votetypeid
from 
  votes
    left join posts
    on (posts.lasteditordisplayname is not NULL)
where votes.id = posts.answercount
limit 41;
select  
  posthistory.userid, 
  posts.contentlicense, 
  posts.body, 
  badges.id
from 
  users
    right join posthistory
              inner join badges
              on (posthistory.creationdate = badges.date )
            inner join badges
              inner join posts
              on (posts.creationdate <= posts.closeddate)
            on (posts.communityowneddate > badges.date)
          inner join badges
          on (posts.favoritecount = badges.id )
        left join posthistory
        on (badges.class > posthistory.contentlicense)
      left join posthistory
        inner join posthistory
          left join posthistory
          on (posthistory.text > posthistory.text)
        on (posthistory.id = posthistory.id )
      on (posthistory.comment <= badges.class)
    on (users.views is not NULL)
where posts.answercount > posthistory.userid;
select  
  badges.tagbased, 
  badges.name, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(badges.id as int8)), 
  badges.userid, 
  badges.id, 
  badges.name, 
  badges.date
from 
  badges
where badges.name is not NULL
limit 92;
select  
  posts.body
from 
  posts
where posts.viewcount is NULL
limit 71;
select  
  comments.userid, 
  posts.title, 
  min(
    cast(57 as int4)), 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.aboutme, 
  users.downvotes
from 
  users
            inner join users
            on (users.id = users.accountid)
          inner join users
            right join posts
              left join badges
              on (posts.owneruserid = badges.id )
            on (posts.body = users.websiteurl)
          on (users.displayname = posts.ownerdisplayname )
        right join votes
        on (posts.closeddate = users.lastaccessdate)
      inner join comments
        right join posts
          right join posthistory
          on (posts.posttypeid = posthistory.id )
        on (posts.ownerdisplayname = posts.lasteditordisplayname)
      on (posts.communityowneddate < posts.communityowneddate)
    right join postlinks
    on (users.lastaccessdate is not NULL)
where votes.creationdate is NULL;
select  
  postlinks.relatedpostid, 
  votes.id, 
  users.upvotes, 
  votes.id, 
  votes.postid, 
  users.location, 
  votes.votetypeid, 
  votes.creationdate, 
  postlinks.postid, 
  votes.creationdate, 
  votes.postid, 
  users.aboutme, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.postid, 
  votes.userid, 
  votes.bountyamount, 
  users.lastaccessdate, 
  votes.id, 
  users.displayname, 
  votes.creationdate, 
  postlinks.postid
from 
  votes
    inner join postlinks
        inner join users
        on (users.accountid > users.accountid)
      right join votes
      on (users.id < postlinks.relatedpostid)
    on (postlinks.postid is not NULL)
where users.lastaccessdate >= votes.creationdate
limit 103;
select  
  votes.bountyamount, 
  votes.postid, 
  votes.id, 
  avg(
    cast(cast(null as float8) as float8)), 
  votes.votetypeid, 
  votes.postid, 
  votes.id, 
  votes.postid, 
  votes.postid, 
  votes.votetypeid, 
  votes.postid, 
  votes.postid, 
  votes.id
from 
  votes
where votes.creationdate <= votes.creationdate;
select  
  posts.score, 
  posts.owneruserid, 
  posts.lasteditoruserid, 
  min(
    cast(posts.tags as text)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  posts.commentcount, 
  min(
    cast(cast(null as float4) as float4)), 
  posts.creationdate, 
  posts.id, 
  posts.parentid, 
  posts.title, 
  posts.tags, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  posts
    right join posts
    on (posts.ownerdisplayname = posts.ownerdisplayname )
where posts.commentcount is NULL
limit 72;
select  
  votes.postid
from 
  votes
    inner join posthistory
    on (posthistory.postid is NULL)
where posthistory.postid >= votes.bountyamount
limit 66;
select  
  badges.tagbased, 
  badges.tagbased, 
  badges.id
from 
  badges
where badges.userid is NULL
limit 96;
select  
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  users
where users.reputation is NULL
limit 82;
select  
  comments.postid
from 
  comments
    inner join postlinks
    on (comments.score is not NULL)
where comments.creationdate is not NULL
limit 180;
select  
  badges.class, 
  badges.id, 
  badges.tagbased, 
  badges.id, 
  badges.date, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.date, 
  count(*), 
  badges.name, 
  badges.tagbased, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.userid, 
  max(
    cast(cast(null as tid) as tid)), 
  badges.class, 
  badges.date, 
  badges.userid, 
  badges.date, 
  max(
    cast(cast(null as float8) as float8))
from 
  badges
where badges.date is not NULL;
select  
  votes.id, 
  posts.ownerdisplayname, 
  votes.votetypeid, 
  votes.userid, 
  votes.postid, 
  votes.id, 
  posts.favoritecount, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.lasteditordisplayname, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.id, 
  votes.postid, 
  posts.favoritecount, 
  posts.lasteditoruserid, 
  posts.lastactivitydate
from 
  votes
    inner join posts
    on (votes.bountyamount = posts.id )
where posts.communityowneddate is not NULL
limit 77;
select  
  postlinks.id, 
  max(
    cast(cast(null as money) as money)), 
  votes.id, 
  posts.contentlicense, 
  comments.id, 
  badges.date, 
  posthistory.text, 
  posts.lasteditordisplayname, 
  comments.postid, 
  posthistory.id, 
  badges.class, 
  posts.lasteditordisplayname, 
  comments.id, 
  avg(
    cast(cast(null as float4) as float4)), 
  comments.postid
from 
  badges
          inner join comments
            right join users
              left join comments
                inner join comments
                on (comments.userid >= comments.userid)
              on (users.location > comments.text)
            on (comments.userdisplayname = comments.userdisplayname )
          on (users.lastaccessdate >= comments.creationdate)
        inner join posts
          inner join posts
          on (posts.closeddate > posts.lastactivitydate)
        on (posts.creationdate > posts.closeddate)
      inner join posthistory
        left join votes
        on (posthistory.creationdate <= posthistory.creationdate)
      on (posthistory.id = users.upvotes)
    right join badges
      inner join postlinks
        inner join posts
          left join postlinks
          on (posts.ownerdisplayname < posts.body)
        on (postlinks.relatedpostid = postlinks.id )
      on (posts.viewcount >= postlinks.id)
    on (comments.text = posts.ownerdisplayname )
where badges.class is not NULL
limit 66;
select  
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate is not NULL
limit 131;
select  
  posthistory.revisionguid, 
  posthistory.id, 
  posthistory.creationdate, 
  posthistory.posthistorytypeid, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.creationdate
from 
  posthistory
where posthistory.comment is not NULL
limit 107;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postlinks.id, 
  badges.tagbased, 
  postlinks.linktypeid, 
  users.creationdate
from 
  votes
    left join postlinks
          right join posts
              right join badges
              on (posts.title >= posts.tags)
            inner join users
            on (users.reputation >= users.views)
          on (users.id > postlinks.linktypeid)
        right join posthistory
          inner join posts
          on (posts.creationdate = posts.creationdate)
        on (posts.answercount > posts.score)
      inner join users
      on (posts.creationdate > badges.date)
    on (users.aboutme is NULL)
where votes.bountyamount is NULL;
select  
  votes.id
from 
  postlinks
      right join votes
      on (postlinks.creationdate > postlinks.creationdate)
    left join posthistory
            inner join votes
              inner join users
              on (users.location < users.aboutme)
            on (votes.creationdate > votes.creationdate)
          left join comments
          on (users.location <= posthistory.revisionguid)
        right join votes
        on (comments.userdisplayname >= users.aboutme)
      right join votes
          inner join badges
          on (badges.userid >= votes.bountyamount)
        inner join comments
        on (comments.score < comments.postid)
      on (comments.id = badges.id )
    on (posthistory.contentlicense >= comments.text)
where votes.postid is not NULL
limit 183;
select  
  max(
    cast(7 as int4)), 
  badges.userid, 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.downvotes, 
  posts.closeddate, 
  users.creationdate, 
  badges.id, 
  users.aboutme, 
  users.accountid
from 
  posts
          left join users
          on (users.websiteurl >= users.location)
        right join votes
        on (users.websiteurl >= users.profileimageurl)
      right join badges
      on (posts.lastactivitydate = posts.closeddate)
    right join badges
    on (posts.lastactivitydate < posts.creationdate)
where badges.class is NULL
limit 94;
select  
  posthistory.userdisplayname, 
  users.accountid, 
  votes.bountyamount, 
  posthistory.posthistorytypeid, 
  avg(
    cast(votes.userid as int8)), 
  max(
    cast(cast(null as float4) as float4)), 
  posthistory.posthistorytypeid, 
  users.reputation, 
  max(
    cast(cast(null as money) as money)), 
  users.location, 
  posthistory.comment
from 
  votes
    inner join posthistory
      right join posthistory
          inner join votes
          on (votes.creationdate = votes.creationdate)
        right join users
        on (votes.creationdate < users.creationdate)
      on (posthistory.text = users.websiteurl)
    on (votes.votetypeid is not NULL)
where votes.userid is NULL
limit 166;
select  
  votes.postid, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.id, 
  votes.id
from 
  votes
where votes.bountyamount is not NULL
limit 137;
select  
  badges.class
from 
  badges
where badges.name is NULL
limit 33;
select  
  min(
    cast(cast(null as money) as money)), 
  users.id, 
  users.accountid, 
  users.profileimageurl, 
  users.id, 
  users.location, 
  sum(
    cast(cast(null as float8) as float8)), 
  users.websiteurl, 
  users.location, 
  users.profileimageurl
from 
  users
    left join users
    on (users.accountid is NULL)
where users.upvotes is not NULL
limit 142;
select  
  badges.userid, 
  badges.tagbased, 
  badges.date, 
  badges.userid, 
  badges.id, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.userid, 
  max(
    cast(cast(null as float4) as float4)), 
  badges.date, 
  badges.class, 
  badges.tagbased
from 
  badges
where badges.id <= badges.userid;
select  
  votes.bountyamount, 
  votes.votetypeid, 
  max(
    cast(cast(null as tid) as tid))
from 
  votes
where votes.votetypeid is not NULL;
select  
  postlinks.postid
from 
  postlinks
where postlinks.postid is not NULL;
select  
  posts.owneruserid, 
  badges.userid, 
  badges.name
from 
  badges
      left join posts
      on (posts.score > posts.score)
    left join posts
      inner join posthistory
      on (posthistory.text = posthistory.contentlicense)
    on (badges.name = posts.ownerdisplayname )
where posts.lasteditordisplayname is not NULL;
select  
  postlinks.relatedpostid
from 
  postlinks
where postlinks.postid is NULL
limit 153;
select  
  comments.id, 
  comments.postid
from 
  comments
where comments.creationdate is not NULL;
select  
  posts.closeddate, 
  badges.tagbased, 
  posts.answercount, 
  posts.body, 
  users.id, 
  users.accountid
from 
  postlinks
    inner join votes
      inner join postlinks
        right join badges
            left join users
              inner join posts
              on (posts.body <= posts.contentlicense)
            on (users.lastaccessdate < posts.communityowneddate)
          right join posts
          on (posts.tags <= posts.contentlicense)
        on (posts.answercount < postlinks.id)
      on (posts.body <= badges.tagbased)
    on (votes.creationdate is not NULL)
where users.aboutme is not NULL
limit 93;
select  
  users.displayname, 
  postlinks.linktypeid, 
  postlinks.linktypeid
from 
  badges
    right join users
      inner join postlinks
          inner join postlinks
          on (postlinks.relatedpostid = postlinks.id )
        inner join postlinks
        on (postlinks.creationdate < postlinks.creationdate)
      on (users.id = postlinks.id )
    on (users.lastaccessdate >= badges.date)
where postlinks.creationdate < users.lastaccessdate
limit 141;
select  
  comments.userdisplayname, 
  comments.id, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  users.upvotes, 
  users.aboutme, 
  max(
    cast(cast(null as money) as money)), 
  users.id, 
  comments.creationdate, 
  avg(
    cast(postlinks.postid as int8))
from 
  comments
      left join users
      on (comments.creationdate < comments.creationdate)
    right join postlinks
    on (comments.userdisplayname is NULL)
where postlinks.id is not NULL;
select  
  users.downvotes, 
  max(
    cast(cast(null as tid) as tid)), 
  users.location, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(cast(null as money) as money)), 
  users.creationdate
from 
  users
where users.profileimageurl is not NULL
limit 54;
select  
  votes.userid, 
  posts.lastactivitydate, 
  votes.postid
from 
  votes
    right join posts
    on (votes.bountyamount is NULL)
where posts.ownerdisplayname is not NULL;
select  
  votes.id, 
  min(
    cast(cast(null as inet) as inet)), 
  votes.postid, 
  votes.userid, 
  sum(
    cast(votes.userid as int8)), 
  votes.postid, 
  votes.postid, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.postid
from 
  votes
where votes.creationdate is NULL
limit 98;
select  
  users.websiteurl, 
  users.upvotes, 
  users.reputation, 
  users.profileimageurl, 
  users.aboutme
from 
  users
where users.views is NULL
limit 103;
select  
  postlinks.relatedpostid, 
  sum(
    cast(posthistory.posthistorytypeid as int8)), 
  posthistory.comment, 
  postlinks.creationdate, 
  posts.lasteditordisplayname, 
  max(
    cast(cast(null as date) as date)), 
  posts.answercount, 
  posthistory.text, 
  postlinks.relatedpostid, 
  badges.name, 
  posthistory.postid
from 
  posthistory
      inner join badges
        left join postlinks
        on (postlinks.postid <= postlinks.id)
      on (postlinks.creationdate < posthistory.creationdate)
    left join posts
    on (posts.creationdate > postlinks.creationdate)
where badges.tagbased <= badges.name
limit 135;
select  
  votes.postid, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.bountyamount, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  sum(
    cast(25 as int4)), 
  votes.creationdate, 
  votes.userid, 
  votes.votetypeid
from 
  votes
where votes.postid is NULL
limit 175;
select  
  users.creationdate, 
  users.lastaccessdate
from 
  users
where users.reputation > users.accountid;
select  
  posthistory.userdisplayname, 
  posthistory.text, 
  posthistory.id, 
  posthistory.text, 
  posthistory.creationdate, 
  posthistory.posthistorytypeid, 
  posthistory.contentlicense, 
  posthistory.postid, 
  posthistory.comment
from 
  posthistory
where posthistory.postid is NULL
limit 142;
select  
  posthistory.postid, 
  posthistory.text, 
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  count(*), 
  posthistory.id, 
  posthistory.revisionguid, 
  posthistory.comment
from 
  posthistory
where posthistory.contentlicense is NULL
limit 153;
select  
  badges.class, 
  sum(
    cast(59 as int4)), 
  users.aboutme, 
  posts.title, 
  badges.class, 
  min(
    cast(cast(null as float8) as float8)), 
  min(
    cast(users.lastaccessdate as timestamptz)), 
  postlinks.id, 
  badges.userid, 
  badges.date, 
  comments.id, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid
from 
  comments
      inner join users
        inner join badges
          left join posts
          on (badges.tagbased = posts.ownerdisplayname )
        on (posts.lasteditdate > posts.closeddate)
      on (users.accountid >= comments.id)
    right join postlinks
    on (badges.userid is not NULL)
where badges.date is not NULL;
select  
  comments.creationdate, 
  postlinks.relatedpostid, 
  badges.class, 
  badges.userid, 
  badges.tagbased, 
  badges.id, 
  badges.date, 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.id, 
  badges.class
from 
  badges
    left join posts
      inner join comments
          right join badges
          on (badges.date >= comments.creationdate)
        inner join postlinks
        on (comments.creationdate <= badges.date)
      on (posts.lastactivitydate <= posts.lastactivitydate)
    on (postlinks.linktypeid is NULL)
where badges.name is not NULL
limit 26;
select  
  badges.tagbased, 
  badges.userid, 
  badges.date, 
  badges.id
from 
  badges
where badges.id <= badges.id
limit 58;
select  
  users.lastaccessdate, 
  users.upvotes, 
  users.accountid, 
  users.creationdate
from 
  users
where users.creationdate is not NULL
limit 128;
select  
  comments.id
from 
  posthistory
      inner join postlinks
      on (postlinks.relatedpostid < postlinks.id)
    left join comments
    on (comments.userid is not NULL)
where postlinks.postid is not NULL
limit 144;
select  
  avg(
    cast(60 as int4)), 
  postlinks.postid
from 
  postlinks
where postlinks.postid is not NULL
limit 117;
select  
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.linktypeid, 
  max(
    cast(cast(null as float4) as float4)), 
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is not NULL;
select  
  badges.class
from 
  badges
        inner join postlinks
          inner join postlinks
          on (postlinks.creationdate <= postlinks.creationdate)
        on (postlinks.relatedpostid > postlinks.linktypeid)
      left join votes
        inner join badges
        on (badges.tagbased >= badges.tagbased)
      on (badges.class >= badges.class)
    inner join users
            left join badges
            on (users.lastaccessdate > badges.date)
          left join posts
          on (posts.score < posts.commentcount)
        right join postlinks
        on (posts.viewcount <= posts.favoritecount)
      inner join users
        right join comments
        on (users.downvotes = comments.id )
      on (users.profileimageurl = users.aboutme)
    on (postlinks.postid is NULL)
where postlinks.linktypeid is NULL;
select  
  comments.text, 
  comments.userid, 
  comments.score, 
  min(
    cast(cast(null as money) as money)), 
  comments.id, 
  comments.userid, 
  comments.text, 
  comments.userid
from 
  comments
where comments.id is not NULL;
select  
  postlinks.linktypeid, 
  min(
    cast(cast(null as float8) as float8)), 
  postlinks.postid, 
  postlinks.postid
from 
  postlinks
    right join postlinks
    on (postlinks.postid is NULL)
where postlinks.relatedpostid is NULL;
select  
  posthistory.userid
from 
  postlinks
        right join badges
        on (badges.class = badges.name)
      inner join posthistory
        left join posthistory
        on (posthistory.userdisplayname >= posthistory.comment)
      on (posthistory.userid = postlinks.postid)
    right join postlinks
    on (postlinks.postid = postlinks.id )
where badges.class >= badges.name;
select  
  posts.commentcount, 
  posts.acceptedanswerid, 
  posts.posttypeid, 
  min(
    cast(posts.lasteditdate as timestamptz)), 
  posts.communityowneddate
from 
  posts
where posts.tags is not NULL
limit 43;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  votes.creationdate, 
  min(
    cast(cast(null as float4) as float4)), 
  votes.userid, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.userid, 
  votes.id, 
  votes.id, 
  votes.userid
from 
  votes
where votes.postid is not NULL
limit 93;
select  
  badges.id
from 
  badges
    right join votes
    on (votes.id is NULL)
where votes.postid > votes.id;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  comments.creationdate, 
  comments.userid, 
  comments.creationdate, 
  comments.id, 
  comments.userdisplayname, 
  comments.userid, 
  comments.postid, 
  comments.userid, 
  comments.text
from 
  comments
where comments.creationdate >= comments.creationdate
limit 148;
select  
  comments.userid, 
  comments.text, 
  comments.userdisplayname
from 
  comments
where comments.text is NULL
limit 114;
select  
  badges.class, 
  badges.date, 
  badges.class
from 
  badges
where badges.id is NULL;
select  
  posts.tags, 
  users.creationdate
from 
  posts
    inner join users
    on (posts.posttypeid is not NULL)
where posts.parentid is not NULL
limit 32;
select  
  badges.date, 
  badges.userid, 
  badges.tagbased
from 
  comments
    right join badges
    on (comments.postid = badges.id )
where comments.id is NULL;
select  
  comments.id
from 
  votes
      right join comments
      on (comments.creationdate = votes.creationdate)
    inner join users
    on (comments.userid is NULL)
where users.downvotes is NULL
limit 128;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  posts.id, 
  posts.favoritecount, 
  posts.closeddate, 
  posts.ownerdisplayname, 
  avg(
    cast(posts.commentcount as int8)), 
  posts.creationdate
from 
  posts
where posts.lastactivitydate is not NULL
limit 17;
select  
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.linktypeid, 
  postlinks.id
from 
  users
      left join postlinks
      on (users.upvotes = postlinks.id )
    right join postlinks
    on (postlinks.creationdate is NULL)
where postlinks.postid is not NULL
limit 87;
select  
  max(
    cast(cast(null as int2) as int2)), 
  comments.text
from 
  comments
      right join posts
      on (posts.contentlicense < comments.userdisplayname)
    left join postlinks
      inner join votes
          left join users
          on (users.creationdate <= users.creationdate)
        left join badges
        on (users.creationdate <= users.lastaccessdate)
      on (users.creationdate <= users.creationdate)
    on (users.id is NULL)
where users.creationdate < posts.closeddate
limit 121;
select  
  posts.parentid
from 
  posts
where posts.title is not NULL
limit 80;
select  
  posts.favoritecount, 
  posts.title, 
  posts.contentlicense, 
  votes.bountyamount
from 
  users
        inner join posts
              left join votes
              on (votes.postid < posts.answercount)
            inner join posthistory
            on (posts.id = posthistory.id )
          left join posts
            left join votes
                inner join votes
                on (votes.id = votes.id )
              right join badges
              on (votes.creationdate = votes.creationdate)
            on (posts.closeddate = votes.creationdate )
          on (posts.creationdate > posts.communityowneddate)
        on (users.views = votes.id )
      right join posts
      on (posts.lastactivitydate <= posts.closeddate)
    left join comments
          right join posts
          on (comments.creationdate <= comments.creationdate)
        left join badges
        on (posts.contentlicense = posts.tags)
      inner join comments
      on (comments.postid >= badges.id)
    on (votes.creationdate = posts.communityowneddate)
where posts.lasteditordisplayname is not NULL
limit 31;
select  
  postlinks.postid
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  votes.id, 
  count(*), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  votes.id
from 
  votes
where votes.creationdate <= votes.creationdate
limit 56;
select  
  postlinks.postid, 
  posts.body, 
  postlinks.linktypeid, 
  posts.lasteditdate
from 
  postlinks
    left join posts
    on (postlinks.postid is NULL)
where posts.tags is not NULL;
select  
  posthistory.text
from 
  posthistory
where posthistory.creationdate > posthistory.creationdate
limit 109;
select  
  comments.text, 
  comments.text, 
  comments.creationdate
from 
  comments
where comments.postid is NULL;
select  
  users.accountid
from 
  users
    inner join users
    on (users.downvotes is NULL)
where users.views is NULL
limit 139;
select  
  posthistory.userdisplayname
from 
  posts
        inner join votes
            left join votes
            on (votes.postid >= votes.postid)
          inner join posthistory
          on (votes.id = votes.bountyamount)
        on (posthistory.userdisplayname >= posthistory.comment)
      inner join votes
      on (posts.viewcount >= posts.score)
    inner join users
    on (votes.creationdate is NULL)
where posts.creationdate > posthistory.creationdate
limit 74;
select  
  postlinks.id
from 
  postlinks
where postlinks.creationdate < postlinks.creationdate;
select  
  min(
    cast(cast(null as date) as date)), 
  badges.tagbased, 
  badges.name, 
  badges.class, 
  badges.date, 
  badges.userid, 
  badges.class, 
  badges.userid, 
  badges.tagbased, 
  badges.class, 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.id, 
  badges.id, 
  badges.date, 
  badges.class, 
  badges.date, 
  badges.name, 
  badges.id, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  badges.name, 
  badges.tagbased, 
  badges.id, 
  badges.class, 
  badges.userid, 
  badges.class, 
  badges.tagbased, 
  badges.tagbased, 
  badges.userid, 
  badges.class, 
  badges.name, 
  count(
    cast(badges.id as int8)), 
  max(
    cast(cast(null as int2) as int2)), 
  badges.class, 
  badges.userid, 
  badges.tagbased, 
  badges.tagbased, 
  badges.date, 
  badges.id, 
  max(
    cast(badges.id as int8))
from 
  badges
where badges.class is NULL;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.id, 
  min(
    cast(cast(null as "time") as "time")), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.postid
from 
  postlinks
where postlinks.relatedpostid is not NULL
limit 111;
select  
  comments.id, 
  comments.userdisplayname, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  avg(
    cast(cast(null as float4) as float4))
from 
  postlinks
    inner join comments
    on (postlinks.linktypeid = postlinks.relatedpostid)
where comments.id is not NULL
limit 122;
select  
  posthistory.postid, 
  posthistory.id, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posthistory.revisionguid
from 
  posthistory
where posthistory.posthistorytypeid is not NULL;
select  
  users.aboutme, 
  badges.userid, 
  votes.postid, 
  users.id, 
  votes.creationdate, 
  posts.commentcount, 
  users.downvotes, 
  comments.userid, 
  posthistory.id, 
  users.aboutme, 
  comments.score, 
  votes.votetypeid, 
  comments.userid
from 
  votes
          inner join votes
              inner join comments
              on (comments.creationdate >= votes.creationdate)
            right join posthistory
            on (comments.text = posthistory.userdisplayname )
          on (posthistory.contentlicense > posthistory.text)
        left join users
          inner join users
          on (users.profileimageurl <= users.profileimageurl)
        on (users.upvotes >= votes.votetypeid)
      right join badges
      on (comments.creationdate > users.lastaccessdate)
    right join posts
    on (posthistory.creationdate = posts.creationdate )
where posts.contentlicense is NULL
limit 115;
select  
  min(
    cast(cast(null as float4) as float4))
from 
  comments
    left join postlinks
          right join posts
          on (posts.creationdate >= posts.creationdate)
        right join users
        on (posts.owneruserid = users.id )
      left join posthistory
          inner join posts
          on (posthistory.revisionguid > posthistory.userdisplayname)
        inner join votes
          left join comments
          on (votes.creationdate = votes.creationdate)
        on (posts.posttypeid > posts.viewcount)
      on (posts.lastactivitydate <= users.lastaccessdate)
    on (votes.userid is not NULL)
where comments.creationdate is not NULL
limit 86;
select  
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.relatedpostid, 
  comments.id, 
  postlinks.postid
from 
  postlinks
      left join postlinks
      on (postlinks.creationdate < postlinks.creationdate)
    inner join comments
    on (postlinks.postid is not NULL)
where postlinks.relatedpostid is not NULL;
select  
  count(*), 
  votes.postid, 
  votes.id, 
  votes.id, 
  votes.id, 
  votes.id, 
  votes.userid, 
  votes.votetypeid, 
  votes.id, 
  votes.userid, 
  votes.userid, 
  votes.id, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.id, 
  votes.votetypeid
from 
  votes
where votes.bountyamount is not NULL;
select  
  posthistory.contentlicense, 
  posts.closeddate, 
  posthistory.userid, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.postid, 
  users.views, 
  posts.lasteditoruserid, 
  posts.body, 
  votes.postid, 
  posts.commentcount, 
  votes.creationdate, 
  users.id, 
  posts.title, 
  votes.bountyamount, 
  posthistory.text, 
  users.displayname, 
  min(
    cast(posts.closeddate as timestamptz)), 
  posthistory.userid, 
  votes.id, 
  users.reputation
from 
  votes
      inner join users
          right join posthistory
          on (users.profileimageurl <= posthistory.userdisplayname)
        inner join posts
        on (users.creationdate <= posts.lastactivitydate)
      on (posts.closeddate >= posthistory.creationdate)
    right join posts
    on (posthistory.userid is not NULL)
where posthistory.userdisplayname is NULL;
select  
  badges.name, 
  badges.tagbased, 
  badges.id
from 
  badges
where badges.date is NULL
limit 137;
select  
  users.profileimageurl
from 
  postlinks
    inner join users
    on (users.creationdate is not NULL)
where postlinks.relatedpostid is NULL
limit 105;
select  
  posthistory.creationdate, 
  min(
    cast(cast(null as date) as date)), 
  posthistory.creationdate, 
  posthistory.comment, 
  posthistory.userid, 
  posthistory.userid, 
  posthistory.id, 
  posthistory.postid, 
  min(
    cast(cast(null as float8) as float8)), 
  posthistory.posthistorytypeid, 
  posthistory.userid, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  posthistory
where posthistory.text < posthistory.revisionguid;
select  
  posthistory.text, 
  badges.userid, 
  badges.class, 
  avg(
    cast(cast(null as float4) as float4)), 
  posthistory.userid, 
  min(
    cast(cast(null as money) as money)), 
  badges.tagbased, 
  posts.viewcount, 
  max(
    cast(cast(null as tid) as tid)), 
  posthistory.creationdate
from 
  posthistory
      inner join badges
        inner join badges
        on (badges.date = badges.date )
      on (badges.date > badges.date)
    right join posts
    on (badges.id is not NULL)
where posts.acceptedanswerid is NULL
limit 90;
select  
  posthistory.userid, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  comments.userid, 
  votes.creationdate, 
  posthistory.posthistorytypeid, 
  badges.userid, 
  users.reputation, 
  votes.votetypeid, 
  comments.postid, 
  votes.postid, 
  votes.creationdate
from 
  badges
        left join users
        on (badges.tagbased >= badges.class)
      inner join posthistory
        inner join comments
          right join votes
          on (comments.creationdate = votes.creationdate )
        on (votes.creationdate < votes.creationdate)
      on (badges.userid = votes.id )
    left join comments
    on (posthistory.userid < comments.postid)
where comments.userid is not NULL;
select  
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.postid
from 
  postlinks
where postlinks.linktypeid is NULL
limit 79;
select  
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.relatedpostid is not NULL;
select  
  votes.creationdate, 
  votes.bountyamount, 
  votes.bountyamount, 
  votes.postid, 
  votes.bountyamount, 
  votes.id, 
  votes.id, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.creationdate
from 
  votes
where votes.postid is not NULL
limit 163;
select  
  users.upvotes, 
  users.lastaccessdate
from 
  users
where users.profileimageurl is NULL
limit 150;
select  
  badges.tagbased
from 
  badges
where badges.userid is not NULL
limit 116;
select  
  posthistory.postid, 
  posthistory.contentlicense, 
  posthistory.text, 
  min(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as money) as money))
from 
  posthistory
where posthistory.comment is not NULL
limit 59;
select  
  posthistory.userid, 
  max(
    cast(posthistory.id as int8)), 
  posthistory.postid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  posthistory.text, 
  posthistory.text, 
  posthistory.revisionguid, 
  posthistory.contentlicense, 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  posthistory.userdisplayname, 
  posthistory.text, 
  posthistory.postid, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.revisionguid is NULL;
select  
  users.location, 
  users.reputation, 
  max(
    cast(cast(null as date) as date)), 
  users.displayname, 
  users.upvotes, 
  users.displayname, 
  users.id
from 
  users
where users.location is NULL
limit 9;
select  
  posthistory.posthistorytypeid, 
  posthistory.comment
from 
  posthistory
    left join badges
    on (badges.id is not NULL)
where posthistory.comment is NULL;
select distinct 
  postlinks.creationdate, 
  comments.text, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  users
          inner join postlinks
          on (users.lastaccessdate > postlinks.creationdate)
        inner join comments
        on (users.id = comments.id )
      inner join votes
      on (postlinks.creationdate < postlinks.creationdate)
    left join comments
        inner join posthistory
          inner join postlinks
          on (posthistory.comment > posthistory.comment)
        on (postlinks.creationdate <= comments.creationdate)
      inner join postlinks
      on (posthistory.userid = postlinks.id )
    on (users.location > posthistory.userdisplayname)
where postlinks.postid < comments.userid;
select  
  votes.id, 
  posthistory.userdisplayname, 
  posthistory.contentlicense, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  comments.postid, 
  posts.score, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  postlinks.id, 
  posts.answercount, 
  posts.body, 
  count(
    cast(posts.lasteditordisplayname as text)), 
  postlinks.creationdate, 
  users.profileimageurl, 
  postlinks.creationdate, 
  min(
    cast(cast(null as float8) as float8)), 
  comments.creationdate, 
  votes.bountyamount, 
  votes.id, 
  posthistory.creationdate, 
  posts.owneruserid, 
  comments.id, 
  users.lastaccessdate, 
  min(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  users
      right join posts
          inner join posthistory
              left join posts
              on (posts.contentlicense >= posts.title)
            inner join postlinks
            on (posts.communityowneddate >= posts.lasteditdate)
          on (posts.closeddate <= posts.closeddate)
        left join postlinks
        on (postlinks.postid < posts.commentcount)
      on (posts.owneruserid <= users.id)
    inner join votes
        inner join comments
        on (votes.postid >= comments.score)
      inner join postlinks
        right join votes
        on (postlinks.postid = votes.id )
      on (postlinks.id = votes.postid)
    on (postlinks.id is NULL)
where posthistory.posthistorytypeid is NULL
limit 96;
select  
  postlinks.relatedpostid, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.id, 
  postlinks.id, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.id is not NULL
limit 113;
select  
  comments.creationdate, 
  users.views
from 
  posts
        inner join posthistory
        on (posts.closeddate >= posts.closeddate)
      inner join posthistory
      on (posts.lasteditoruserid < posts.id)
    inner join posthistory
          left join users
              left join votes
              on (users.profileimageurl > users.websiteurl)
            inner join comments
            on (votes.userid = comments.id )
          on (posthistory.id = votes.id )
        inner join votes
          inner join users
            inner join comments
            on (users.displayname >= comments.text)
          on (votes.votetypeid = users.id )
        on (posthistory.userid = comments.id )
      inner join comments
      on (users.aboutme <= comments.userdisplayname)
    on (posts.lastactivitydate >= posthistory.creationdate)
where comments.postid > posthistory.userid
limit 20;
select  
  badges.id
from 
  postlinks
          inner join postlinks
                inner join comments
                on (postlinks.creationdate > comments.creationdate)
              left join postlinks
              on (postlinks.creationdate >= postlinks.creationdate)
            right join badges
            on (comments.userdisplayname >= comments.text)
          on (badges.class < comments.text)
        inner join postlinks
        on (postlinks.relatedpostid >= postlinks.id)
      inner join badges
      on (badges.class = badges.name)
    right join posthistory
    on (comments.score is NULL)
where badges.class is NULL
limit 122;
select  
  badges.date, 
  badges.id, 
  min(
    cast(badges.name as text)), 
  badges.name, 
  badges.name, 
  badges.id, 
  badges.userid, 
  badges.date
from 
  badges
where badges.class is NULL;
select  
  sum(
    cast(comments.userid as int8)), 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.postid, 
  comments.userid
from 
  comments
where comments.score is NULL
limit 167;
select  
  users.downvotes
from 
  users
    inner join posts
        inner join users
        on (posts.title >= users.websiteurl)
      left join users
        left join posts
        on (posts.creationdate >= posts.lastactivitydate)
      on (posts.contentlicense < users.displayname)
    on (users.views is not NULL)
where users.id < posts.posttypeid
limit 177;
select  
  badges.id
from 
  users
          inner join badges
          on (users.lastaccessdate > users.creationdate)
        inner join comments
        on (comments.userid <= comments.id)
      inner join badges
        inner join votes
          left join votes
            left join comments
            on (comments.userid < votes.votetypeid)
          on (votes.votetypeid = comments.id )
        on (votes.creationdate <= votes.creationdate)
      on (comments.score = votes.id )
    left join badges
      inner join users
      on (users.downvotes <= users.reputation)
    on (votes.userid is NULL)
where votes.userid >= badges.userid
limit 51;
select distinct 
  users.reputation, 
  users.aboutme, 
  users.reputation, 
  users.upvotes, 
  max(
    cast(cast(null as int2) as int2)), 
  users.downvotes, 
  users.displayname, 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.creationdate
from 
  users
where users.downvotes is NULL
limit 145;
select  
  badges.class, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  badges.tagbased
from 
  badges
where badges.date < badges.date
limit 80;
select  
  badges.userid, 
  comments.text
from 
  badges
    inner join comments
      right join posthistory
      on (comments.userdisplayname < posthistory.comment)
    on (posthistory.posthistorytypeid is NULL)
where posthistory.posthistorytypeid is NULL
limit 144;
select  
  users.id, 
  users.aboutme, 
  users.location
from 
  users
where users.displayname is NULL
limit 147;
select  
  postlinks.id, 
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.postid
from 
  postlinks
where postlinks.postid is not NULL
limit 144;
select  
  posts.contentlicense, 
  posts.acceptedanswerid
from 
  posts
where posts.acceptedanswerid is NULL;
select  
  votes.creationdate, 
  votes.postid, 
  votes.userid, 
  votes.bountyamount, 
  votes.userid, 
  votes.votetypeid, 
  min(
    cast(posthistory.posthistorytypeid as int8)), 
  posthistory.posthistorytypeid, 
  votes.votetypeid, 
  posthistory.posthistorytypeid, 
  min(
    cast(posthistory.contentlicense as text)), 
  posthistory.posthistorytypeid, 
  min(
    cast(cast(null as tid) as tid)), 
  votes.id, 
  votes.votetypeid, 
  posthistory.comment, 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  votes.bountyamount, 
  posthistory.id, 
  posthistory.postid, 
  votes.postid, 
  max(
    cast(cast(null as tid) as tid)), 
  votes.postid, 
  votes.bountyamount
from 
  posthistory
    left join votes
    on (posthistory.creationdate = votes.creationdate )
where posthistory.creationdate > posthistory.creationdate
limit 81;
select  
  posts.title
from 
  posthistory
        inner join posts
        on (posts.communityowneddate = posts.creationdate)
      right join badges
      on (posthistory.revisionguid = badges.class )
    inner join votes
          right join comments
          on (votes.postid = comments.id )
        inner join postlinks
        on (postlinks.linktypeid < votes.userid)
      inner join comments
      on (comments.text = comments.userdisplayname )
    on (posts.acceptedanswerid is not NULL)
where votes.creationdate is not NULL
limit 18;
select  
  posts.id
from 
  posts
where posts.lasteditoruserid is NULL
limit 127;
select  
  badges.id, 
  avg(
    cast(cast(null as float4) as float4)), 
  badges.tagbased, 
  max(
    cast(cast(null as "time") as "time")), 
  badges.date, 
  sum(
    cast(badges.id as int8)), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  badges.date, 
  badges.name, 
  badges.tagbased, 
  badges.date, 
  badges.userid, 
  badges.date, 
  badges.date, 
  badges.name, 
  badges.class
from 
  badges
where badges.tagbased is NULL;
select  
  votes.userid, 
  posts.lasteditordisplayname, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.userid, 
  users.views, 
  posthistory.postid, 
  badges.tagbased, 
  votes.userid
from 
  users
    right join votes
          inner join badges
          on (badges.date > badges.date)
        right join votes
        on (votes.bountyamount >= badges.userid)
      inner join posthistory
        left join posts
          left join badges
          on (posts.ownerdisplayname = badges.class )
        on (posts.acceptedanswerid >= posts.acceptedanswerid)
      on (posts.body > badges.tagbased)
    on (users.displayname is not NULL)
where badges.class is NULL
limit 77;
select  
  comments.creationdate, 
  users.aboutme, 
  badges.name, 
  votes.creationdate, 
  min(
    cast(cast(null as "time") as "time")), 
  posthistory.comment, 
  postlinks.id, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(users.creationdate as timestamptz)), 
  comments.userid, 
  postlinks.linktypeid
from 
  users
      inner join votes
      on (users.displayname >= users.aboutme)
    left join comments
          inner join postlinks
          on (comments.postid = comments.score)
        left join posts
          inner join badges
            inner join postlinks
              inner join posthistory
              on (posthistory.userid <= postlinks.postid)
            on (badges.userid = postlinks.id )
          on (posts.favoritecount = posts.parentid)
        on (posts.lasteditoruserid >= posts.posttypeid)
      inner join users
      on (postlinks.id = users.id )
    on (votes.userid = postlinks.id )
where posts.body <= badges.class;
select  
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  comments
where comments.postid is NULL
limit 86;
select  
  posts.posttypeid, 
  posts.closeddate, 
  users.aboutme, 
  posthistory.userid, 
  posts.lasteditoruserid, 
  posts.posttypeid, 
  posts.acceptedanswerid, 
  posts.lastactivitydate
from 
  posts
      inner join comments
          inner join badges
          on (comments.score = badges.id )
        inner join users
          right join users
          on (users.lastaccessdate = users.creationdate)
        on (badges.tagbased = users.websiteurl)
      on (users.profileimageurl < badges.name)
    left join postlinks
      inner join posthistory
      on (postlinks.creationdate = postlinks.creationdate)
    on (badges.userid < users.views)
where posthistory.contentlicense is NULL
limit 31;
select  
  users.views, 
  posts.communityowneddate, 
  comments.userdisplayname, 
  badges.id, 
  comments.postid, 
  badges.name, 
  badges.userid, 
  badges.date, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.favoritecount, 
  min(
    cast(badges.id as int8)), 
  badges.date, 
  posts.lasteditordisplayname
from 
  badges
    right join comments
      inner join posts
          right join users
          on (posts.lastactivitydate = users.creationdate )
        right join badges
          left join badges
          on (badges.id > badges.userid)
        on (users.location > posts.ownerdisplayname)
      on (posts.lasteditordisplayname <= users.websiteurl)
    on (badges.name is NULL)
where badges.id > posts.answercount
limit 103;
select  
  comments.score, 
  sum(
    cast(cast(null as int2) as int2)), 
  comments.id
from 
  comments
where comments.userid is not NULL
limit 111;
select  
  max(
    cast(cast(null as float4) as float4)), 
  users.creationdate, 
  users.reputation, 
  users.creationdate
from 
  users
where users.creationdate < users.creationdate;
select  
  badges.userid
from 
  badges
where badges.date = badges.date;
select  
  users.profileimageurl, 
  votes.bountyamount
from 
  votes
      inner join users
        inner join users
        on (users.aboutme = users.location)
      on (users.downvotes = users.id)
    inner join comments
            inner join users
            on (comments.score = users.id )
          right join votes
          on (users.creationdate < users.lastaccessdate)
        right join users
        on (users.accountid = users.id )
      inner join users
      on (votes.bountyamount > votes.id)
    on (users.reputation < users.downvotes)
where users.accountid is not NULL;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.relatedpostid = postlinks.relatedpostid;
select  
  badges.class, 
  comments.userdisplayname, 
  comments.userid, 
  comments.postid, 
  comments.userid, 
  badges.id, 
  votes.userid, 
  votes.postid, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  votes.id, 
  votes.userid, 
  votes.bountyamount, 
  comments.postid, 
  min(
    cast(comments.creationdate as timestamptz)), 
  votes.votetypeid
from 
  badges
    inner join comments
      left join votes
      on (comments.postid <= votes.postid)
    on (badges.class is not NULL)
where comments.creationdate is not NULL;
select  
  posthistory.userdisplayname, 
  users.accountid, 
  users.displayname
from 
  posts
      left join comments
          right join users
            inner join posthistory
            on (users.id >= posthistory.postid)
          on (comments.id >= users.upvotes)
        inner join badges
        on (users.lastaccessdate <= posthistory.creationdate)
      on (posts.answercount = users.id )
    left join posthistory
          inner join posthistory
          on (posthistory.userid > posthistory.userid)
        right join users
        on (posthistory.creationdate >= posthistory.creationdate)
      left join posts
      on (posthistory.postid = posts.id )
    on (posts.lasteditdate is NULL)
where posts.body is not NULL
limit 107;
select  
  votes.bountyamount, 
  votes.creationdate, 
  votes.postid
from 
  votes
where votes.postid is not NULL;
select  
  badges.id
from 
  badges
where badges.id > badges.id
limit 86;
select  
  votes.votetypeid, 
  votes.bountyamount, 
  votes.postid, 
  votes.creationdate
from 
  votes
    right join votes
    on (votes.userid is not NULL)
where votes.votetypeid is not NULL
limit 87;
select  
  badges.id
from 
  badges
where badges.date is not NULL;
select  
  posts.id, 
  votes.bountyamount, 
  posthistory.contentlicense, 
  posts.commentcount, 
  posthistory.userid, 
  users.displayname, 
  posthistory.posthistorytypeid, 
  users.id, 
  posts.acceptedanswerid, 
  min(
    cast(cast(null as money) as money)), 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  users.lastaccessdate, 
  votes.id, 
  posts.id, 
  users.id
from 
  postlinks
      inner join users
          inner join posthistory
          on (posthistory.posthistorytypeid > posthistory.postid)
        inner join comments
        on (posthistory.posthistorytypeid > users.id)
      on (users.id >= postlinks.id)
    inner join posthistory
          inner join posthistory
          on (posthistory.posthistorytypeid >= posthistory.id)
        inner join posts
        on (posts.acceptedanswerid >= posts.favoritecount)
      left join votes
      on (posthistory.creationdate >= posts.communityowneddate)
    on (postlinks.linktypeid is not NULL)
where posthistory.creationdate is not NULL;
select  
  postlinks.relatedpostid
from 
  postlinks
where postlinks.relatedpostid < postlinks.postid
limit 105;
select  
  badges.date
from 
  badges
where badges.userid < badges.userid
limit 88;
select  
  comments.creationdate, 
  comments.userid, 
  comments.id, 
  comments.id, 
  comments.postid, 
  comments.text, 
  comments.userid, 
  comments.creationdate, 
  comments.postid, 
  comments.creationdate, 
  comments.id
from 
  comments
where comments.creationdate is NULL
limit 185;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate > postlinks.creationdate
limit 116;
select  
  posthistory.text, 
  badges.userid, 
  badges.tagbased, 
  posts.closeddate, 
  posts.id, 
  posts.communityowneddate, 
  badges.date, 
  posts.lasteditordisplayname, 
  posts.lasteditdate, 
  posts.creationdate, 
  posthistory.creationdate, 
  posts.body, 
  posthistory.revisionguid, 
  badges.userid, 
  posthistory.id, 
  badges.name, 
  posts.lasteditdate, 
  posts.answercount, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.tagbased, 
  posthistory.revisionguid, 
  comments.creationdate, 
  posts.body, 
  avg(
    cast(8 as int4)), 
  posts.viewcount
from 
  comments
    left join posts
        inner join posts
        on (posts.lasteditdate < posts.communityowneddate)
      right join posthistory
        left join badges
        on (posthistory.userid < posthistory.id)
      on (posts.lastactivitydate < posts.closeddate)
    on (comments.creationdate is not NULL)
where posthistory.postid is NULL
limit 146;
select  
  votes.postid, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.id, 
  votes.creationdate
from 
  votes
    right join votes
    on (votes.postid is NULL)
where votes.postid is not NULL
limit 105;
select  
  posts.id, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  badges.tagbased, 
  sum(
    cast(cast(null as int2) as int2)), 
  postlinks.relatedpostid, 
  posts.ownerdisplayname, 
  postlinks.creationdate
from 
  posts
      inner join posthistory
        inner join comments
            right join votes
            on (comments.text >= comments.userdisplayname)
          left join users
                inner join postlinks
                on (users.profileimageurl = users.websiteurl)
              right join badges
                right join comments
                on (comments.creationdate < badges.date)
              on (users.aboutme <= badges.tagbased)
            inner join postlinks
            on (badges.class >= users.location)
          on (comments.userdisplayname = users.profileimageurl)
        on (votes.votetypeid >= comments.userid)
      on (postlinks.postid = comments.postid)
    inner join posts
      inner join posts
        inner join votes
          right join users
          on (votes.postid = users.id )
        on (users.location <= posts.tags)
      on (users.aboutme >= posts.ownerdisplayname)
    on (votes.id = users.id )
where posts.tags is not NULL;
select  
  users.profileimageurl, 
  users.websiteurl, 
  users.downvotes, 
  users.accountid, 
  users.websiteurl, 
  users.downvotes, 
  users.lastaccessdate
from 
  users
where users.upvotes > users.downvotes;
select  
  users.aboutme, 
  users.downvotes, 
  users.id, 
  comments.userdisplayname, 
  badges.userid, 
  badges.id, 
  badges.name
from 
  comments
      right join comments
          inner join badges
              right join comments
              on (comments.creationdate <= badges.date)
            right join users
            on (comments.score = users.id )
          on (comments.creationdate = users.creationdate )
        inner join users
          inner join users
          on (users.upvotes >= users.reputation)
        on (users.creationdate = users.creationdate)
      on (users.creationdate > comments.creationdate)
    inner join comments
      right join users
        inner join badges
          right join posthistory
          on (posthistory.userid = badges.id)
        on (users.creationdate = posthistory.creationdate )
      on (users.displayname > users.location)
    on (users.reputation = posthistory.id )
where comments.text is not NULL
limit 68;
select  
  badges.userid, 
  badges.tagbased, 
  badges.userid, 
  posts.ownerdisplayname, 
  posts.lasteditoruserid, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  badges
      right join posts
      on (posts.lastactivitydate < posts.closeddate)
    left join posts
    on (badges.class is NULL)
where posts.parentid is not NULL
limit 75;
select  
  max(
    cast(cast(null as date) as date)), 
  votes.userid, 
  sum(
    cast(cast(null as int2) as int2))
from 
  votes
where votes.votetypeid <= votes.postid
limit 104;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  posthistory.comment, 
  posthistory.posthistorytypeid, 
  comments.creationdate, 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as float4) as float4)), 
  comments.postid, 
  comments.creationdate, 
  comments.score, 
  comments.id
from 
  comments
      inner join comments
      on (comments.creationdate > comments.creationdate)
    right join posthistory
    on (comments.userdisplayname is not NULL)
where comments.text is NULL;
select  
  users.displayname, 
  users.aboutme, 
  users.creationdate, 
  sum(
    cast(cast(null as float8) as float8)), 
  comments.text
from 
  votes
      inner join comments
        right join comments
          right join badges
          on (badges.id < comments.id)
        on (badges.tagbased >= comments.userdisplayname)
      on (votes.creationdate >= votes.creationdate)
    inner join users
        left join users
        on (users.accountid = users.id)
      inner join badges
      on (users.accountid = badges.userid)
    on (users.views is NULL)
where users.views is NULL;
select  
  posts.lasteditoruserid, 
  posts.id, 
  posts.viewcount, 
  posts.commentcount, 
  posts.answercount, 
  posts.lastactivitydate, 
  posts.ownerdisplayname, 
  posts.ownerdisplayname, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.parentid
from 
  posts
where posts.favoritecount <= posts.commentcount
limit 136;
select  
  posts.id, 
  posts.id, 
  sum(
    cast(cast(null as float8) as float8)), 
  posts.posttypeid, 
  posts.score, 
  min(
    cast(cast(null as float4) as float4)), 
  posts.posttypeid, 
  posts.tags, 
  posts.title, 
  posts.closeddate, 
  posts.owneruserid, 
  posts.lasteditdate, 
  min(
    cast(cast(null as "time") as "time")), 
  posts.favoritecount, 
  posts.parentid
from 
  posts
where posts.ownerdisplayname is NULL
limit 128;
select  
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 89;
select  
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid
from 
  postlinks
where postlinks.id is NULL
limit 98;
select  
  max(
    cast(users.location as text)), 
  votes.id, 
  posts.lasteditordisplayname, 
  posthistory.postid, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.id, 
  posthistory.posthistorytypeid
from 
  badges
            right join votes
            on (badges.date <= votes.creationdate)
          left join posthistory
          on (posthistory.creationdate = posthistory.creationdate)
        inner join comments
          inner join postlinks
          on (comments.userdisplayname <= comments.text)
        on (badges.userid = votes.bountyamount)
      inner join votes
        right join postlinks
        on (votes.creationdate < votes.creationdate)
      on (posthistory.creationdate >= votes.creationdate)
    left join posthistory
      left join users
          left join postlinks
                inner join votes
                on (postlinks.linktypeid = votes.votetypeid)
              inner join comments
                inner join users
                on (comments.id <= comments.score)
              on (comments.score < comments.id)
            inner join posts
                right join users
                on (users.lastaccessdate >= posts.closeddate)
              inner join postlinks
              on (users.displayname > posts.body)
            on (users.upvotes = posts.lasteditoruserid)
          on (users.reputation = users.id )
        right join badges
            inner join comments
            on (badges.name = comments.userdisplayname )
          right join votes
          on (badges.class = badges.tagbased)
        on (postlinks.relatedpostid = votes.id )
      on (users.views > posts.favoritecount)
    on (posthistory.creationdate = comments.creationdate )
where posthistory.postid is not NULL;
select  
  posts.posttypeid, 
  max(
    cast(cast(null as float4) as float4)), 
  posts.title, 
  posts.tags, 
  posts.ownerdisplayname, 
  min(
    cast(cast(null as money) as money)), 
  posthistory.userdisplayname, 
  posthistory.creationdate, 
  posts.lasteditordisplayname, 
  posts.lasteditoruserid, 
  posts.favoritecount, 
  posts.communityowneddate, 
  posthistory.contentlicense, 
  users.location
from 
  posts
          inner join posthistory
          on (posts.posttypeid = posthistory.id )
        inner join posthistory
        on (posthistory.contentlicense > posthistory.text)
      right join posts
      on (posthistory.creationdate > posthistory.creationdate)
    right join users
    on (posthistory.contentlicense is not NULL)
where posts.closeddate = posts.lastactivitydate;
select  
  posthistory.id, 
  votes.postid, 
  postlinks.relatedpostid, 
  votes.id, 
  users.websiteurl, 
  postlinks.postid, 
  users.lastaccessdate, 
  comments.userdisplayname, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  sum(
    cast(cast(null as "numeric") as "numeric"))
from 
  posthistory
          inner join votes
          on (posthistory.text > posthistory.revisionguid)
        inner join comments
        on (posthistory.comment <= comments.text)
      left join badges
          left join badges
          on (badges.date < badges.date)
        inner join posts
          inner join votes
          on (posts.favoritecount = votes.id )
        on (badges.id > posts.acceptedanswerid)
      on (posts.creationdate = badges.date)
    left join postlinks
            left join badges
              inner join posts
              on (posts.posttypeid < badges.userid)
            on (posts.closeddate >= posts.lasteditdate)
          inner join postlinks
          on (posts.acceptedanswerid > posts.score)
        left join users
          right join comments
          on (users.websiteurl = comments.userdisplayname )
        on (users.views = badges.id)
      inner join users
            right join postlinks
            on (users.creationdate > users.lastaccessdate)
          inner join posts
          on (posts.body <= posts.ownerdisplayname)
        left join users
          left join comments
          on (comments.userid >= comments.score)
        on (postlinks.linktypeid = posts.favoritecount)
      on (posts.body = badges.tagbased)
    on (posts.answercount = comments.id )
where comments.score is not NULL
limit 82;
select  
  posthistory.creationdate
from 
  badges
    inner join posthistory
        right join posthistory
        on (posthistory.id = posthistory.id )
      left join votes
      on (posthistory.id = votes.id )
    on (badges.userid = posthistory.id )
where badges.tagbased is NULL
limit 170;
select  
  posthistory.userid, 
  min(
    cast(cast(null as int2) as int2)), 
  votes.bountyamount, 
  badges.userid, 
  comments.score, 
  min(
    cast(comments.postid as int8)), 
  votes.creationdate, 
  posthistory.creationdate, 
  votes.bountyamount, 
  posthistory.userid, 
  posthistory.userdisplayname, 
  comments.userdisplayname, 
  votes.bountyamount, 
  posthistory.contentlicense, 
  min(
    cast(cast(null as inet) as inet)), 
  badges.id, 
  posthistory.revisionguid, 
  min(
    cast(28 as int4)), 
  badges.tagbased, 
  votes.votetypeid, 
  posthistory.creationdate, 
  badges.id
from 
  votes
        right join badges
        on (badges.userid > votes.postid)
      inner join posthistory
      on (badges.class >= badges.name)
    right join comments
      inner join votes
      on (comments.userdisplayname >= comments.userdisplayname)
    on (comments.postid is NULL)
where posthistory.id is NULL
limit 90;
select  
  votes.id, 
  votes.id
from 
  votes
where votes.bountyamount is NULL
limit 105;
select  
  comments.text, 
  comments.creationdate, 
  postlinks.creationdate, 
  posts.parentid, 
  postlinks.creationdate, 
  users.accountid, 
  users.downvotes, 
  users.displayname, 
  users.accountid, 
  postlinks.id, 
  max(
    cast(cast(null as tid) as tid)), 
  postlinks.postid, 
  comments.userid, 
  comments.userdisplayname, 
  postlinks.linktypeid, 
  postlinks.id, 
  comments.userdisplayname, 
  postlinks.relatedpostid, 
  min(
    cast(posts.body as text)), 
  max(
    cast(cast(null as xid8) as xid8)), 
  posts.lasteditoruserid
from 
  users
      left join posts
        right join posthistory
          left join comments
          on (posthistory.postid = comments.id )
        on (posts.lasteditordisplayname <= posts.title)
      on (users.lastaccessdate = posthistory.creationdate )
    left join postlinks
    on (posts.viewcount >= users.views)
where postlinks.creationdate is not NULL
limit 35;
select  
  users.aboutme, 
  users.aboutme, 
  users.profileimageurl
from 
  users
where users.id is not NULL;
select  
  posthistory.userdisplayname, 
  posthistory.contentlicense
from 
  posts
    inner join posthistory
    on (posts.lasteditoruserid is NULL)
where posthistory.postid = posthistory.posthistorytypeid
limit 118;
select  
  users.displayname, 
  users.id, 
  users.websiteurl
from 
  users
where users.downvotes is not NULL;
select  
  badges.id
from 
  badges
    left join votes
    on (badges.name >= badges.tagbased)
where badges.userid is NULL;
select  
  badges.date, 
  badges.id, 
  badges.tagbased, 
  max(
    cast(98 as int4)), 
  badges.class, 
  badges.class
from 
  badges
where badges.userid is NULL
limit 141;
select  
  comments.creationdate, 
  badges.class, 
  votes.id, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(cast(null as inet) as inet)), 
  users.websiteurl, 
  votes.id, 
  users.downvotes, 
  badges.class
from 
  votes
        right join posthistory
          inner join postlinks
            left join badges
            on (postlinks.creationdate = badges.date )
          on (posthistory.userid = postlinks.linktypeid)
        on (votes.creationdate < votes.creationdate)
      inner join users
      on (users.downvotes <= votes.id)
    inner join comments
      inner join postlinks
      on (comments.userdisplayname >= comments.userdisplayname)
    on (users.views is not NULL)
where posthistory.userid >= votes.votetypeid
limit 126;
select  
  max(
    cast(cast(null as float4) as float4)), 
  posthistory.comment
from 
  users
    right join posthistory
      right join comments
      on (comments.creationdate >= comments.creationdate)
    on (users.profileimageurl = posthistory.userdisplayname )
where users.upvotes is NULL
limit 58;
select  
  postlinks.postid, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.id is not NULL;
select  
  posthistory.comment, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.revisionguid is not NULL;
select  
  posts.creationdate, 
  posts.commentcount, 
  posts.creationdate, 
  posts.owneruserid
from 
  posts
where posts.body > posts.tags
limit 119;
select  
  votes.bountyamount, 
  votes.userid
from 
  votes
where votes.postid is NULL
limit 77;
select  
  users.websiteurl, 
  users.downvotes, 
  users.views
from 
  users
    inner join users
    on (users.location is NULL)
where users.reputation is NULL
limit 180;
select  
  votes.id, 
  min(
    cast(cast(null as money) as money)), 
  votes.userid, 
  posthistory.posthistorytypeid, 
  votes.id, 
  sum(
    cast(cast(null as int2) as int2))
from 
  votes
    left join posthistory
    on (votes.userid is not NULL)
where votes.postid is not NULL
limit 94;
select  
  posts.parentid
from 
  posts
where posts.tags is NULL;
select  
  postlinks.creationdate, 
  posthistory.revisionguid, 
  comments.userid, 
  comments.text, 
  postlinks.creationdate
from 
  postlinks
    right join comments
        inner join comments
        on (comments.postid >= comments.id)
      inner join postlinks
          left join postlinks
          on (postlinks.relatedpostid = postlinks.id )
        left join posthistory
          inner join posthistory
          on (posthistory.contentlicense < posthistory.comment)
        on (postlinks.id = posthistory.id )
      on (comments.score = posthistory.id )
    on (posthistory.creationdate is NULL)
where postlinks.id is not NULL
limit 147;
select  
  posts.lastactivitydate, 
  badges.id
from 
  badges
      inner join postlinks
      on (postlinks.creationdate < postlinks.creationdate)
    inner join posts
            left join posts
            on (posts.communityowneddate <= posts.communityowneddate)
          inner join comments
            inner join badges
            on (badges.date <= badges.date)
          on (posts.title = badges.class )
        right join badges
        on (posts.owneruserid = badges.id )
      inner join votes
      on (posts.communityowneddate < posts.lasteditdate)
    on (badges.name is not NULL)
where votes.bountyamount = posts.favoritecount
limit 85;
select  
  votes.creationdate, 
  votes.id, 
  votes.votetypeid, 
  max(
    cast(56 as int4)), 
  votes.id, 
  votes.postid
from 
  votes
where votes.creationdate is not NULL
limit 42;
select  
  posts.tags, 
  users.reputation, 
  users.websiteurl
from 
  comments
    right join posthistory
      inner join posts
              right join badges
              on (posts.lastactivitydate < posts.lastactivitydate)
            left join badges
            on (badges.date <= posts.lastactivitydate)
          inner join comments
          on (badges.class <= badges.tagbased)
        left join users
        on (posts.lastactivitydate = posts.communityowneddate)
      on (posts.favoritecount <= posts.lasteditoruserid)
    on (users.websiteurl >= posts.body)
where comments.score is not NULL
limit 93;
select distinct 
  badges.date, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  badges.id
from 
  badges
where badges.date is not NULL;
select  
  posts.contentlicense
from 
  posts
    inner join posts
      left join comments
          inner join votes
          on (comments.userid > votes.bountyamount)
        inner join votes
            inner join postlinks
              right join posts
              on (posts.lasteditordisplayname < posts.lasteditordisplayname)
            on (postlinks.creationdate = posts.lasteditdate)
          inner join badges
          on (posts.lasteditordisplayname = badges.class )
        on (votes.creationdate < comments.creationdate)
      on (posts.contentlicense = comments.userdisplayname )
    on (votes.creationdate is NULL)
where comments.id > posts.favoritecount;
select  
  badges.tagbased, 
  posthistory.posthistorytypeid, 
  postlinks.postid, 
  posthistory.id, 
  postlinks.id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  users.profileimageurl, 
  votes.id
from 
  comments
        inner join users
        on (users.websiteurl = users.displayname)
      inner join users
      on (users.displayname < comments.userdisplayname)
    right join badges
            left join posthistory
            on (badges.date = badges.date)
          inner join votes
          on (badges.tagbased > badges.tagbased)
        inner join postlinks
        on (postlinks.creationdate = postlinks.creationdate)
      left join posthistory
      on (badges.userid >= posthistory.postid)
    on (users.reputation is not NULL)
where posthistory.text is NULL;
select  
  badges.date, 
  badges.id, 
  badges.userid, 
  badges.id
from 
  badges
    inner join badges
    on (badges.date is NULL)
where badges.date <= badges.date
limit 128;
select  
  votes.id, 
  votes.votetypeid, 
  max(
    cast(cast(null as xid8) as xid8)), 
  votes.userid, 
  votes.bountyamount, 
  votes.postid, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  votes.creationdate, 
  votes.id, 
  votes.id, 
  votes.id, 
  votes.userid, 
  votes.postid, 
  votes.id, 
  votes.id
from 
  votes
where votes.id is not NULL;
select  
  badges.userid
from 
  badges
where badges.date >= badges.date
limit 80;
select  
  min(
    cast(cast(null as "time") as "time")), 
  comments.score, 
  comments.postid, 
  comments.userdisplayname, 
  comments.userid
from 
  posthistory
      right join comments
      on (posthistory.id < comments.score)
    left join comments
    on (comments.postid = comments.id )
where posthistory.postid is NULL
limit 89;
select  
  posts.contentlicense, 
  comments.userid, 
  badges.id, 
  posts.tags, 
  posthistory.creationdate, 
  posts.owneruserid
from 
  posts
      left join badges
      on (posts.lastactivitydate > posts.creationdate)
    right join comments
      inner join posthistory
      on (comments.text = posthistory.userdisplayname )
    on (posthistory.postid is not NULL)
where posthistory.posthistorytypeid is not NULL;
select  
  postlinks.relatedpostid, 
  posthistory.revisionguid, 
  posthistory.comment, 
  comments.userid
from 
  badges
        inner join postlinks
        on (badges.id = postlinks.id )
      left join comments
      on (badges.id > comments.postid)
    right join posthistory
      left join badges
          inner join posthistory
          on (posthistory.posthistorytypeid < posthistory.posthistorytypeid)
        inner join postlinks
            inner join posts
            on (posts.lasteditordisplayname > posts.ownerdisplayname)
          left join posts
          on (posts.contentlicense > posts.lasteditordisplayname)
        on (posts.owneruserid = postlinks.relatedpostid)
      on (posts.communityowneddate < posthistory.creationdate)
    on (posthistory.revisionguid is not NULL)
where posts.lasteditdate < posts.lastactivitydate
limit 104;
select  
  posthistory.contentlicense, 
  postlinks.postid
from 
  postlinks
    inner join postlinks
            right join posthistory
            on (posthistory.posthistorytypeid >= postlinks.id)
          right join postlinks
            left join postlinks
            on (postlinks.creationdate > postlinks.creationdate)
          on (posthistory.userdisplayname < posthistory.revisionguid)
        inner join postlinks
        on (postlinks.creationdate <= posthistory.creationdate)
      inner join votes
        inner join votes
        on (votes.creationdate = votes.creationdate )
      on (postlinks.id = votes.id )
    on (postlinks.postid is not NULL)
where votes.id is not NULL
limit 90;
select  
  badges.name, 
  votes.userid, 
  posthistory.creationdate, 
  min(
    cast(cast(null as oid) as oid)), 
  min(
    cast(cast(null as float4) as float4)), 
  comments.text
from 
  posthistory
            inner join postlinks
            on (posthistory.creationdate = postlinks.creationdate)
          inner join badges
          on (posthistory.userid >= badges.id)
        left join badges
          left join posthistory
            left join comments
            on (posthistory.comment > comments.text)
          on (badges.tagbased > badges.class)
        on (badges.date > postlinks.creationdate)
      right join posthistory
          inner join votes
          on (votes.userid > votes.postid)
        inner join comments
        on (posthistory.userdisplayname <= comments.text)
      on (posthistory.revisionguid = posthistory.comment)
    right join comments
    on (votes.id >= posthistory.postid)
where comments.userid is not NULL
limit 98;
select  
  votes.id, 
  avg(
    cast(10 as int4)), 
  votes.postid, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.id, 
  votes.postid, 
  votes.bountyamount, 
  min(
    cast(cast(null as money) as money)), 
  votes.userid, 
  min(
    cast(votes.creationdate as timestamptz)), 
  votes.bountyamount, 
  votes.postid, 
  votes.creationdate, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  votes.postid, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.bountyamount
from 
  votes
where votes.bountyamount is not NULL
limit 97;
select  
  users.lastaccessdate, 
  users.aboutme, 
  users.lastaccessdate
from 
  users
where users.websiteurl = users.displayname
limit 150;
select  
  users.profileimageurl
from 
  posts
          inner join postlinks
            inner join votes
            on (votes.creationdate >= votes.creationdate)
          on (postlinks.relatedpostid >= posts.parentid)
        left join posthistory
        on (posthistory.comment = posthistory.contentlicense)
      inner join badges
          inner join users
          on (users.downvotes < users.id)
        inner join badges
        on (users.aboutme = badges.class )
      on (postlinks.linktypeid = badges.id )
    left join posthistory
    on (posts.body >= posthistory.text)
where posts.id is NULL
limit 105;
select  
  badges.class
from 
  badges
where badges.id > badges.userid;
select  
  posthistory.comment, 
  posthistory.contentlicense, 
  posthistory.creationdate, 
  posthistory.postid, 
  posthistory.comment, 
  posthistory.comment, 
  posthistory.text
from 
  posthistory
where posthistory.posthistorytypeid is not NULL
limit 116;
select  
  badges.id
from 
  votes
    inner join badges
        inner join badges
        on (badges.class > badges.tagbased)
      inner join badges
      on (badges.name > badges.class)
    on (votes.userid is NULL)
where badges.userid is not NULL;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.lasteditordisplayname
from 
  posts
where posts.favoritecount is NULL
limit 96;
select  
  posthistory.contentlicense, 
  posthistory.comment, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  comments
    left join posthistory
    on (posthistory.id > posthistory.posthistorytypeid)
where comments.score is not NULL
limit 189;
select  
  users.id, 
  users.accountid, 
  users.downvotes, 
  users.displayname, 
  users.creationdate, 
  min(
    cast(users.profileimageurl as text))
from 
  users
where users.location is not NULL
limit 69;
select  
  posts.acceptedanswerid
from 
  posts
where posts.lasteditdate is NULL
limit 96;
select  
  badges.userid, 
  posts.commentcount
from 
  posts
      inner join badges
        right join badges
          inner join posts
                right join badges
                on (posts.id <= posts.viewcount)
              right join badges
              on (badges.id = posts.score)
            right join comments
            on (badges.date < comments.creationdate)
          on (comments.userid = posts.parentid)
        on (badges.tagbased >= posts.contentlicense)
      on (posts.creationdate = posts.lastactivitydate)
    left join votes
      inner join votes
      on (votes.postid >= votes.userid)
    on (votes.creationdate is NULL)
where posts.ownerdisplayname is not NULL;
select  
  posthistory.postid, 
  posthistory.userdisplayname, 
  min(
    cast(cast(null as "time") as "time"))
from 
  posthistory
where posthistory.userid is not NULL
limit 82;
select  
  posthistory.postid, 
  posthistory.revisionguid
from 
  posthistory
where posthistory.comment is NULL
limit 102;
select  
  max(
    cast(cast(null as oid) as oid)), 
  users.displayname, 
  users.lastaccessdate, 
  max(
    cast(users.creationdate as timestamptz))
from 
  users
where users.accountid is NULL
limit 29;
select  
  comments.id, 
  comments.userid, 
  comments.userdisplayname, 
  comments.text, 
  comments.postid, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  comments.userid, 
  min(
    cast(cast(null as float4) as float4)), 
  comments.userdisplayname
from 
  comments
where comments.userid is NULL
limit 130;
select  
  votes.votetypeid
from 
  badges
    inner join votes
      right join comments
        inner join badges
        on (comments.creationdate >= badges.date)
      on (comments.creationdate > badges.date)
    on (badges.name = comments.userdisplayname )
where badges.id = votes.id
limit 141;
select  
  votes.bountyamount, 
  votes.votetypeid
from 
  badges
    left join votes
    on (badges.date is not NULL)
where badges.name > badges.class
limit 134;
select  
  postlinks.id
from 
  postlinks
where postlinks.id is not NULL;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as money) as money)), 
  posthistory.creationdate, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.text is NULL;
select  
  comments.userid, 
  comments.text, 
  comments.text, 
  min(
    cast(51 as int4)), 
  comments.id
from 
  comments
where comments.creationdate < comments.creationdate;
select  
  votes.bountyamount, 
  comments.text, 
  max(
    cast(cast(null as float4) as float4)), 
  comments.creationdate, 
  votes.userid
from 
  votes
    right join comments
      inner join users
          left join users
            left join users
            on (users.creationdate = users.lastaccessdate)
          on (users.websiteurl < users.displayname)
        inner join votes
        on (users.location = users.displayname)
      on (users.aboutme < users.location)
    on (votes.votetypeid is not NULL)
where users.displayname = users.profileimageurl
limit 147;
select  
  badges.tagbased, 
  users.aboutme, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  badges.date, 
  badges.tagbased, 
  users.reputation, 
  users.reputation, 
  min(
    cast(cast(null as "time") as "time")), 
  users.location, 
  badges.date, 
  badges.userid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.relatedpostid
from 
  users
    inner join badges
      left join postlinks
      on (postlinks.id = badges.id)
    on (badges.name < badges.class)
where users.websiteurl < users.location
limit 116;
select  
  min(
    cast(cast(null as oid) as oid)), 
  votes.postid, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  comments.id, 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(comments.creationdate as timestamptz)), 
  comments.score
from 
  votes
    left join comments
    on (votes.bountyamount is not NULL)
where votes.creationdate is not NULL;
select  
  votes.userid, 
  votes.creationdate
from 
  votes
where votes.creationdate <= votes.creationdate
limit 102;
select  
  posthistory.contentlicense, 
  posthistory.posthistorytypeid, 
  posthistory.id, 
  posthistory.contentlicense, 
  min(
    cast(cast(null as date) as date)), 
  posthistory.postid, 
  posthistory.contentlicense, 
  min(
    cast(cast(null as date) as date)), 
  max(
    cast(cast(null as tid) as tid)), 
  avg(
    cast(posthistory.userid as int8)), 
  posthistory.posthistorytypeid, 
  posthistory.text, 
  posthistory.posthistorytypeid, 
  max(
    cast(cast(null as "interval") as "interval")), 
  posthistory.postid
from 
  posthistory
where posthistory.postid is not NULL
limit 128;
select  
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.postid
from 
  postlinks
where postlinks.relatedpostid is not NULL;
select  
  sum(
    cast(cast(null as float4) as float4)), 
  votes.postid, 
  votes.postid, 
  min(
    cast(84 as int4)), 
  votes.userid, 
  votes.votetypeid, 
  votes.userid, 
  votes.postid, 
  votes.bountyamount, 
  votes.userid
from 
  votes
where votes.id is not NULL
limit 126;
select  
  badges.id, 
  badges.tagbased, 
  badges.name, 
  votes.votetypeid, 
  min(
    cast(badges.id as int8)), 
  badges.class
from 
  votes
    inner join badges
      inner join comments
          inner join badges
            inner join comments
            on (badges.id > badges.id)
          on (badges.id > comments.userid)
        right join badges
        on (badges.id = comments.id)
      on (badges.id > badges.userid)
    on (comments.text is NULL)
where badges.userid = comments.userid
limit 73;
select  
  comments.text, 
  users.aboutme, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  comments
    left join users
    on (users.reputation = users.upvotes)
where users.upvotes is NULL
limit 88;
select  
  postlinks.creationdate, 
  max(
    cast(cast(null as date) as date)), 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postlinks.id, 
  postlinks.creationdate, 
  min(
    cast(87 as int4)), 
  postlinks.id, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.id, 
  postlinks.id, 
  postlinks.id
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 126;
select  
  votes.postid, 
  avg(
    cast(votes.id as int8))
from 
  votes
where votes.bountyamount is not NULL;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.bountyamount, 
  comments.postid, 
  posts.posttypeid, 
  votes.bountyamount, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.creationdate
from 
  votes
        right join posts
            inner join comments
            on (posts.viewcount > posts.commentcount)
          inner join comments
          on (posts.favoritecount <= comments.score)
        on (posts.ownerdisplayname >= posts.title)
      left join posts
        inner join comments
            left join comments
            on (comments.userdisplayname <= comments.userdisplayname)
          left join votes
          on (comments.creationdate = comments.creationdate)
        on (posts.ownerdisplayname = comments.text)
      on (comments.userdisplayname > posts.body)
    inner join postlinks
    on (votes.id is not NULL)
where comments.postid is NULL
limit 92;
select  
  votes.userid, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.userid, 
  votes.id, 
  votes.postid, 
  votes.postid, 
  min(
    cast(cast(null as date) as date))
from 
  votes
where votes.votetypeid is not NULL
limit 103;
select  
  posts.commentcount, 
  max(
    cast(cast(null as xid8) as xid8)), 
  votes.votetypeid, 
  votes.postid, 
  votes.votetypeid
from 
  posts
    inner join votes
    on (posts.owneruserid is NULL)
where votes.postid is not NULL;
select  
  comments.userdisplayname, 
  comments.userid, 
  min(
    cast(cast(null as date) as date)), 
  comments.id, 
  votes.userid, 
  comments.userdisplayname, 
  comments.userid, 
  sum(
    cast(cast(null as float4) as float4))
from 
  votes
      left join postlinks
        left join votes
          left join votes
          on (votes.creationdate = votes.creationdate )
        on (postlinks.linktypeid >= postlinks.linktypeid)
      on (votes.creationdate = votes.creationdate)
    inner join comments
    on (votes.creationdate is not NULL)
where comments.score is not NULL
limit 57;
select  
  postlinks.linktypeid, 
  posts.posttypeid, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.creationdate
from 
  posthistory
      right join posts
          inner join postlinks
          on (posts.contentlicense > posts.title)
        right join postlinks
        on (posts.viewcount >= posts.acceptedanswerid)
      on (posthistory.comment = posts.body)
    inner join posts
    on (postlinks.creationdate is NULL)
where posthistory.creationdate is NULL
limit 56;
select  
  users.id, 
  sum(
    cast(cast(null as float8) as float8)), 
  users.accountid, 
  users.downvotes, 
  users.profileimageurl, 
  users.accountid
from 
  users
where users.location is NULL
limit 30;
select  
  comments.postid, 
  posts.id, 
  comments.text, 
  comments.score, 
  posts.answercount, 
  votes.postid, 
  comments.userdisplayname, 
  posts.lasteditordisplayname
from 
  posts
      inner join comments
      on (posts.acceptedanswerid = posts.parentid)
    left join votes
    on (posts.parentid >= posts.posttypeid)
where comments.text >= posts.contentlicense
limit 101;
select  
  comments.text, 
  votes.userid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.title
from 
  comments
        left join votes
          inner join postlinks
          on (postlinks.creationdate = votes.creationdate)
        on (votes.bountyamount > postlinks.postid)
      inner join votes
      on (votes.votetypeid = votes.id )
    left join postlinks
              inner join users
              on (users.lastaccessdate < users.lastaccessdate)
            right join votes
              right join posts
              on (votes.creationdate = posts.creationdate )
            on (users.lastaccessdate > users.creationdate)
          inner join votes
          on (votes.creationdate > postlinks.creationdate)
        inner join postlinks
              inner join votes
              on (votes.id < votes.votetypeid)
            inner join posthistory
            on (postlinks.linktypeid = posthistory.id )
          left join posthistory
            inner join posthistory
            on (posthistory.creationdate < posthistory.creationdate)
          on (posthistory.creationdate >= postlinks.creationdate)
        on (posts.viewcount = postlinks.postid)
      left join votes
        inner join postlinks
        on (postlinks.relatedpostid = votes.userid)
      on (users.views = postlinks.id )
    on (postlinks.id = posthistory.id )
where votes.bountyamount is not NULL
limit 145;
select  
  comments.creationdate, 
  comments.creationdate, 
  comments.postid, 
  comments.postid, 
  comments.creationdate, 
  comments.postid, 
  comments.userdisplayname, 
  comments.creationdate, 
  count(*), 
  comments.text, 
  comments.creationdate, 
  comments.id, 
  comments.text, 
  comments.userdisplayname, 
  comments.text, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.creationdate, 
  comments.userid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  comments.text, 
  comments.id, 
  comments.text, 
  comments.userdisplayname, 
  comments.creationdate, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  comments.userid, 
  comments.userdisplayname
from 
  comments
where comments.creationdate <= comments.creationdate
limit 103;
select  
  comments.userid, 
  comments.score, 
  comments.userdisplayname, 
  comments.score, 
  comments.postid, 
  comments.text, 
  comments.id, 
  comments.userdisplayname, 
  comments.text, 
  comments.userid
from 
  comments
where comments.userdisplayname is NULL
limit 90;
select  
  votes.creationdate, 
  users.displayname, 
  posts.viewcount, 
  min(
    cast(cast(null as money) as money)), 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  votes
          inner join postlinks
          on (votes.creationdate <= votes.creationdate)
        inner join posthistory
          left join postlinks
          on (postlinks.creationdate >= postlinks.creationdate)
        on (postlinks.id >= postlinks.postid)
      left join posthistory
        inner join posts
        on (posts.lasteditdate = posts.closeddate)
      on (posts.owneruserid > posthistory.postid)
    inner join badges
      right join users
        left join posthistory
        on (users.lastaccessdate >= users.creationdate)
      on (posthistory.revisionguid > badges.name)
    on (postlinks.relatedpostid >= posts.owneruserid)
where posts.communityowneddate >= posts.creationdate
limit 68;
select  
  votes.postid, 
  votes.creationdate, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.bountyamount, 
  votes.votetypeid, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.postid
from 
  votes
where votes.votetypeid is not NULL;
select  
  max(
    cast(users.reputation as int8)), 
  users.views, 
  users.id, 
  users.accountid, 
  users.websiteurl, 
  users.websiteurl
from 
  users
where users.creationdate <= users.creationdate
limit 103;
select  
  comments.score, 
  posthistory.revisionguid, 
  comments.text, 
  votes.id, 
  comments.score, 
  comments.score, 
  votes.postid, 
  users.views, 
  min(
    cast(cast(null as money) as money)), 
  posthistory.id
from 
  users
    left join comments
      inner join votes
        right join posthistory
          right join comments
            left join votes
            on (comments.userdisplayname = comments.text)
          on (posthistory.contentlicense < comments.userdisplayname)
        on (votes.id = votes.id )
      on (posthistory.creationdate > votes.creationdate)
    on (votes.bountyamount is not NULL)
where votes.id is not NULL;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  postlinks
        inner join comments
        on (postlinks.id <= comments.score)
      inner join badges
              right join votes
              on (badges.tagbased <= badges.name)
            inner join posts
            on (posts.closeddate = votes.creationdate)
          inner join users
          on (posts.communityowneddate >= votes.creationdate)
        left join comments
        on (users.lastaccessdate = comments.creationdate )
      on (posts.lasteditordisplayname < badges.tagbased)
    inner join badges
    on (comments.userid is NULL)
where votes.bountyamount is NULL
limit 186;
select  
  posts.closeddate, 
  comments.creationdate, 
  posts.viewcount, 
  posts.lasteditordisplayname, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  votes.creationdate, 
  posts.commentcount, 
  min(
    cast(cast(null as xid8) as xid8)), 
  posthistory.postid, 
  posts.lasteditoruserid
from 
  votes
      right join posthistory
      on (votes.id = posthistory.id )
    left join comments
      inner join posts
      on (posts.tags <= posts.ownerdisplayname)
    on (comments.userdisplayname >= posthistory.userdisplayname)
where votes.votetypeid is NULL;
select  
  postlinks.creationdate
from 
  postlinks
where postlinks.postid is not NULL
limit 87;
select  
  posthistory.comment
from 
  posthistory
      inner join posts
      on (posts.ownerdisplayname <= posts.ownerdisplayname)
    inner join comments
    on (posts.closeddate is NULL)
where comments.score > posts.parentid
limit 73;
select  
  posts.title
from 
  posts
where posts.score = posts.commentcount;
select  
  posts.acceptedanswerid, 
  posts.closeddate
from 
  votes
    inner join posts
      right join users
      on (posts.commentcount = users.id )
    on (votes.creationdate <= posts.closeddate)
where posts.favoritecount is NULL
limit 118;
select  
  postlinks.creationdate, 
  posthistory.userid, 
  comments.text, 
  comments.score, 
  sum(
    cast(cast(null as money) as money)), 
  sum(
    cast(users.upvotes as int8)), 
  postlinks.linktypeid, 
  users.creationdate
from 
  votes
      inner join votes
      on (votes.userid = votes.id )
    left join posthistory
          inner join votes
          on (posthistory.creationdate = votes.creationdate )
        right join users
              inner join postlinks
              on (users.websiteurl <= users.websiteurl)
            inner join comments
            on (comments.userdisplayname >= users.location)
          inner join postlinks
          on (postlinks.creationdate = postlinks.creationdate )
        on (posthistory.posthistorytypeid = comments.id )
      inner join users
      on (postlinks.linktypeid = users.id )
    on (users.aboutme is NULL)
where postlinks.postid is NULL;
select  
  comments.id
from 
  comments
      inner join posts
      on (posts.body >= posts.lasteditordisplayname)
    left join badges
    on (comments.score is NULL)
where posts.closeddate is not NULL
limit 78;
select  
  comments.score
from 
  comments
where comments.creationdate = comments.creationdate;
select  
  min(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  postlinks.id, 
  postlinks.linktypeid
from 
  postlinks
    inner join postlinks
    on (postlinks.postid = postlinks.id )
where postlinks.creationdate = postlinks.creationdate;
select  
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  votes
where votes.votetypeid is NULL
limit 75;
select  
  posts.communityowneddate, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.commentcount
from 
  posts
        right join badges
          right join posts
          on (badges.name >= badges.tagbased)
        on (posts.lasteditoruserid >= posts.owneruserid)
      inner join posts
      on (posts.lasteditoruserid > posts.commentcount)
    inner join comments
      left join posts
      on (posts.title > comments.userdisplayname)
    on (posts.creationdate is not NULL)
where posts.id is not NULL
limit 106;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  comments.postid
from 
  posts
        inner join posts
        on (posts.lasteditoruserid > posts.favoritecount)
      right join badges
      on (posts.body > posts.tags)
    left join postlinks
      right join comments
      on (comments.creationdate < comments.creationdate)
    on (posts.answercount is not NULL)
where postlinks.creationdate >= posts.lastactivitydate;
select  
  badges.name, 
  badges.class, 
  badges.class, 
  votes.bountyamount, 
  posthistory.revisionguid, 
  badges.id, 
  min(
    cast(cast(null as float4) as float4))
from 
  votes
          left join votes
          on (votes.votetypeid <= votes.votetypeid)
        left join comments
              inner join badges
              on (comments.id = badges.id )
            inner join postlinks
            on (badges.date < postlinks.creationdate)
          right join badges
          on (comments.userid <= postlinks.relatedpostid)
        on (votes.votetypeid < votes.id)
      right join posthistory
          inner join badges
          on (posthistory.creationdate = badges.date )
        right join badges
        on (badges.name = badges.class )
      on (comments.text = badges.tagbased)
    right join comments
    on (badges.userid is not NULL)
where badges.id is not NULL;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  comments.score, 
  comments.id, 
  posthistory.postid, 
  posthistory.revisionguid, 
  posthistory.comment
from 
  comments
    inner join posthistory
    on (posthistory.revisionguid = posthistory.revisionguid)
where posthistory.posthistorytypeid is not NULL
limit 159;
select  
  comments.text
from 
  comments
    right join comments
    on (comments.postid >= comments.id)
where comments.creationdate > comments.creationdate;
select  
  postlinks.id, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.id, 
  posthistory.userid, 
  users.lastaccessdate, 
  badges.id, 
  posthistory.creationdate, 
  users.profileimageurl
from 
  badges
          inner join posthistory
          on (badges.date = posthistory.creationdate)
        inner join users
        on (posthistory.userdisplayname = users.displayname )
      left join posts
        inner join postlinks
        on (postlinks.creationdate >= posts.creationdate)
      on (posts.acceptedanswerid = postlinks.postid)
    right join votes
    on (postlinks.linktypeid is not NULL)
where posts.viewcount is NULL
limit 156;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  votes.creationdate, 
  posthistory.contentlicense, 
  posthistory.contentlicense, 
  posthistory.posthistorytypeid, 
  sum(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.creationdate
from 
  posthistory
    left join votes
    on (votes.creationdate is NULL)
where posthistory.text is not NULL
limit 17;
select  
  posts.creationdate
from 
  users
          inner join badges
            right join postlinks
              right join posthistory
              on (postlinks.id = posthistory.id )
            on (badges.name = posthistory.userdisplayname )
          on (users.views = badges.id )
        left join posts
          inner join comments
          on (posts.contentlicense = comments.userdisplayname)
        on (users.aboutme <= posthistory.comment)
      inner join posts
      on (posts.parentid >= posts.parentid)
    inner join users
    on (posthistory.userid is NULL)
where postlinks.id >= posts.answercount
limit 137;
select  
  posthistory.creationdate, 
  posthistory.postid, 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  posthistory.userid, 
  posthistory.contentlicense, 
  posthistory.revisionguid, 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  posthistory.text, 
  min(
    cast(posthistory.postid as int8)), 
  posthistory.userdisplayname, 
  posthistory.userid, 
  posthistory.comment, 
  posthistory.revisionguid, 
  max(
    cast(cast(null as tid) as tid)), 
  posthistory.postid, 
  max(
    cast(cast(null as tid) as tid)), 
  posthistory.id, 
  max(
    cast(posthistory.userid as int8)), 
  posthistory.revisionguid
from 
  posthistory
where posthistory.creationdate > posthistory.creationdate;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  min(
    cast(postlinks.creationdate as timestamptz))
from 
  postlinks
where postlinks.relatedpostid is not NULL
limit 173;
select  
  posthistory.contentlicense, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
        right join posts
        on (posts.communityowneddate >= comments.creationdate)
      inner join votes
        left join users
        on (votes.bountyamount >= users.downvotes)
      on (votes.userid < users.downvotes)
    inner join posthistory
        inner join badges
          right join votes
            inner join comments
            on (comments.text <= comments.userdisplayname)
          on (votes.creationdate < comments.creationdate)
        on (posthistory.revisionguid <= posthistory.userdisplayname)
      inner join votes
        left join users
          inner join posthistory
          on (posthistory.creationdate = users.creationdate)
        on (votes.userid = posthistory.id )
      on (badges.date <= votes.creationdate)
    on (comments.text is NULL)
where votes.id is not NULL
limit 103;
select  
  comments.creationdate, 
  comments.id, 
  comments.userdisplayname, 
  comments.score, 
  comments.text, 
  min(
    cast(cast(null as "time") as "time")), 
  comments.userdisplayname, 
  comments.userid, 
  comments.creationdate
from 
  comments
where comments.userdisplayname is NULL;
select  
  badges.date, 
  posthistory.text
from 
  posts
        inner join posthistory
        on (posthistory.id = posthistory.postid)
      inner join badges
      on (badges.date > posts.creationdate)
    inner join comments
    on (posts.ownerdisplayname >= comments.text)
where posts.lasteditordisplayname is not NULL
limit 131;
select  
  posthistory.postid, 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  posthistory.postid
from 
  posthistory
where posthistory.postid is NULL
limit 113;
select  
  votes.id, 
  votes.votetypeid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.userid, 
  votes.creationdate, 
  badges.class, 
  badges.id, 
  votes.votetypeid, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.id, 
  avg(
    cast(cast(null as float4) as float4)), 
  badges.date, 
  badges.id, 
  votes.creationdate
from 
  votes
    left join badges
    on (badges.date is not NULL)
where votes.votetypeid is NULL
limit 149;
select  
  postlinks.linktypeid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.votetypeid
from 
  votes
      left join badges
      on (votes.postid = badges.id )
    inner join badges
          inner join posts
            left join votes
                  inner join badges
                  on (votes.bountyamount < badges.id)
                right join postlinks
                on (badges.class > badges.tagbased)
              inner join users
              on (users.aboutme > badges.tagbased)
            on (posts.lasteditdate = badges.date )
          on (posts.lasteditordisplayname >= posts.lasteditordisplayname)
        left join posts
        on (posts.lasteditordisplayname = posts.ownerdisplayname )
      inner join comments
          inner join comments
          on (comments.text < comments.userdisplayname)
        inner join comments
              left join postlinks
              on (comments.userdisplayname > comments.text)
            inner join comments
            on (comments.text < comments.text)
          inner join posthistory
              inner join posts
              on (posts.closeddate = posts.creationdate)
            inner join users
            on (users.lastaccessdate >= posts.communityowneddate)
          on (postlinks.creationdate = users.creationdate )
        on (comments.creationdate >= posts.creationdate)
      on (comments.creationdate = posts.creationdate)
    on (posts.lasteditordisplayname is not NULL)
where votes.bountyamount is not NULL
limit 90;
select  
  posthistory.id, 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  posthistory.comment, 
  posthistory.text, 
  posthistory.text
from 
  posthistory
where posthistory.contentlicense is NULL
limit 52;
select  
  badges.userid, 
  votes.userid, 
  votes.id, 
  postlinks.id, 
  badges.tagbased, 
  avg(
    cast(cast(null as float4) as float4)), 
  votes.creationdate, 
  badges.tagbased, 
  badges.tagbased, 
  votes.postid, 
  badges.class, 
  badges.class, 
  max(
    cast(cast(null as money) as money)), 
  votes.votetypeid, 
  max(
    cast(cast(null as int2) as int2)), 
  postlinks.relatedpostid, 
  badges.tagbased, 
  votes.postid, 
  badges.userid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.postid
from 
  votes
      right join badges
      on (votes.creationdate = badges.date )
    right join postlinks
    on (badges.date is NULL)
where votes.bountyamount is NULL;
select  
  comments.creationdate, 
  comments.userdisplayname, 
  max(
    cast(cast(null as oid) as oid)), 
  votes.postid
from 
  postlinks
        right join votes
        on (postlinks.creationdate <= postlinks.creationdate)
      right join comments
        left join posthistory
        on (comments.postid <= posthistory.posthistorytypeid)
      on (postlinks.relatedpostid = posthistory.id )
    right join posts
        left join postlinks
        on (posts.lasteditordisplayname <= posts.body)
      inner join badges
      on (posts.acceptedanswerid > posts.posttypeid)
    on (comments.postid = posts.id )
where postlinks.id is NULL
limit 54;
select  
  posts.id, 
  posthistory.userid, 
  postlinks.relatedpostid
from 
  posts
      left join posts
          inner join posthistory
          on (posts.communityowneddate = posthistory.creationdate )
        left join posthistory
          inner join users
          on (posthistory.contentlicense <= users.location)
        on (posts.lasteditdate > posts.communityowneddate)
      on (posts.creationdate = posts.communityowneddate)
    inner join postlinks
      inner join posthistory
          inner join posts
          on (posthistory.userid = posts.id )
        right join badges
        on (posthistory.creationdate <= posts.creationdate)
      on (badges.userid >= postlinks.relatedpostid)
    on (posts.body <= posthistory.userdisplayname)
where users.downvotes is NULL
limit 181;
select  
  posthistory.userdisplayname, 
  badges.class, 
  postlinks.relatedpostid, 
  posthistory.comment, 
  votes.postid, 
  posthistory.postid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.bountyamount
from 
  postlinks
        left join comments
          inner join votes
            right join badges
              right join badges
              on (badges.name > badges.name)
            on (votes.bountyamount = badges.id )
          on (badges.tagbased < badges.tagbased)
        on (votes.creationdate <= postlinks.creationdate)
      left join posthistory
      on (votes.creationdate = badges.date)
    right join posthistory
      left join posts
      on (posthistory.userdisplayname <= posts.title)
    on (posts.favoritecount = posthistory.id)
where badges.userid is not NULL
limit 69;
select  
  badges.class, 
  badges.id
from 
  badges
where badges.date is not NULL
limit 72;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  users.accountid, 
  users.downvotes, 
  users.views, 
  users.location
from 
  users
where users.displayname is not NULL
limit 84;
select  
  comments.postid, 
  posts.acceptedanswerid, 
  posts.commentcount, 
  comments.creationdate
from 
  comments
    inner join posts
    on (posts.answercount is not NULL)
where posts.body < posts.ownerdisplayname;
select  
  posthistory.postid, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.userdisplayname, 
  posthistory.comment, 
  badges.class
from 
  badges
    inner join posthistory
    on (badges.id is NULL)
where badges.class >= posthistory.contentlicense
limit 46;
select  
  badges.id, 
  badges.class, 
  badges.id, 
  badges.class, 
  badges.class, 
  badges.class, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.name, 
  badges.tagbased, 
  badges.class, 
  badges.tagbased, 
  badges.userid, 
  badges.id, 
  badges.tagbased, 
  max(
    cast(cast(null as xid8) as xid8)), 
  badges.userid, 
  badges.id, 
  badges.id, 
  badges.tagbased, 
  badges.id, 
  count(
    cast(badges.date as timestamptz)), 
  badges.userid, 
  badges.class, 
  badges.userid, 
  badges.date, 
  badges.id, 
  badges.id
from 
  badges
where badges.tagbased is not NULL;
select  
  users.reputation, 
  postlinks.relatedpostid, 
  users.reputation, 
  badges.class, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.postid
from 
  postlinks
    inner join postlinks
        inner join users
          inner join postlinks
          on (users.displayname < users.profileimageurl)
        on (postlinks.linktypeid = postlinks.id )
      inner join users
        inner join badges
        on (users.location = badges.class )
      on (users.accountid = badges.id )
    on (users.creationdate is not NULL)
where postlinks.relatedpostid is NULL
limit 119;
select  
  postlinks.postid, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  posts.lasteditoruserid, 
  comments.score, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.title, 
  postlinks.linktypeid
from 
  votes
    left join posts
        inner join badges
              right join postlinks
              on (badges.tagbased > badges.tagbased)
            inner join comments
            on (comments.creationdate < comments.creationdate)
          right join posts
          on (badges.name > posts.ownerdisplayname)
        on (posts.closeddate = posts.creationdate)
      right join postlinks
        right join users
            inner join posthistory
            on (users.aboutme = posthistory.userdisplayname )
          left join comments
          on (posthistory.postid <= comments.userid)
        on (comments.id > postlinks.postid)
      on (badges.userid >= posts.id)
    on (votes.votetypeid is not NULL)
where postlinks.relatedpostid is not NULL;
select  
  posts.lastactivitydate, 
  users.location, 
  posts.communityowneddate, 
  users.aboutme, 
  users.aboutme, 
  posts.answercount, 
  posts.acceptedanswerid, 
  posts.closeddate, 
  posts.lasteditdate, 
  max(
    cast(12 as int4)), 
  users.id, 
  users.reputation, 
  posts.favoritecount, 
  posts.commentcount, 
  posts.ownerdisplayname, 
  users.lastaccessdate
from 
  posts
    inner join users
    on (posts.score <= users.views)
where users.websiteurl is not NULL
limit 70;
select  
  posts.answercount, 
  users.websiteurl, 
  votes.userid
from 
  posts
      inner join badges
        left join posts
            right join postlinks
            on (posts.lastactivitydate = posts.creationdate)
          inner join users
          on (users.upvotes > posts.answercount)
        on (badges.name = users.displayname )
      on (posts.lasteditdate < posts.communityowneddate)
    inner join posts
        inner join votes
        on (posts.lasteditdate = votes.creationdate )
      inner join users
      on (votes.postid = users.id )
    on (posts.communityowneddate > posts.creationdate)
where posts.communityowneddate < posts.communityowneddate
limit 142;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.id, 
  comments.userid, 
  comments.creationdate, 
  comments.postid, 
  comments.userid
from 
  comments
where comments.userdisplayname is not NULL
limit 68;
select  
  max(
    cast(posts.title as text)), 
  posts.lastactivitydate, 
  sum(
    cast(cast(null as float8) as float8)), 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.lasteditordisplayname, 
  posts.lasteditoruserid, 
  posts.commentcount, 
  posts.viewcount, 
  posts.creationdate, 
  posts.acceptedanswerid, 
  posts.lasteditdate, 
  posts.posttypeid, 
  posts.lasteditdate, 
  posts.posttypeid, 
  posts.closeddate, 
  posts.commentcount
from 
  posts
where posts.lastactivitydate is not NULL;
select  
  posts.body
from 
  users
      inner join users
      on (users.profileimageurl > users.profileimageurl)
    inner join votes
      inner join posthistory
          inner join posts
          on (posthistory.userdisplayname <= posts.lasteditordisplayname)
        right join postlinks
        on (posts.tags >= posthistory.text)
      on (posthistory.comment >= posts.ownerdisplayname)
    on (posts.lasteditordisplayname is not NULL)
where postlinks.id is not NULL
limit 98;
select  
  postlinks.relatedpostid
from 
  posthistory
    left join votes
              inner join comments
              on (comments.userdisplayname < comments.userdisplayname)
            left join postlinks
            on (comments.userdisplayname > comments.userdisplayname)
          right join badges
            left join votes
            on (votes.creationdate = badges.date)
          on (votes.id = votes.id )
        right join comments
          left join votes
          on (comments.userdisplayname = comments.userdisplayname)
        on (comments.text = comments.text)
      left join posthistory
          inner join postlinks
            left join votes
            on (votes.creationdate < postlinks.creationdate)
          on (votes.creationdate >= votes.creationdate)
        inner join votes
          inner join votes
          on (votes.creationdate > votes.creationdate)
        on (posthistory.userdisplayname = posthistory.userdisplayname)
      on (votes.creationdate < votes.creationdate)
    on (posthistory.userid = posthistory.id )
where badges.id is not NULL;
select  
  users.websiteurl
from 
  users
      inner join posthistory
      on (users.views >= users.id)
    inner join users
    on (posthistory.userdisplayname is NULL)
where users.displayname is not NULL
limit 64;
select  
  postlinks.linktypeid, 
  posts.tags, 
  postlinks.creationdate, 
  badges.date, 
  postlinks.linktypeid, 
  badges.tagbased
from 
  posts
        left join badges
          inner join posts
          on (badges.userid = posts.id )
        on (posts.ownerdisplayname <= posts.body)
      right join postlinks
      on (posts.creationdate > posts.communityowneddate)
    inner join posts
    on (posts.creationdate is not NULL)
where posts.ownerdisplayname = posts.tags
limit 157;
select  
  users.location
from 
  users
where users.views is NULL;
select  
  posthistory.text, 
  posthistory.revisionguid, 
  posthistory.id
from 
  posthistory
where posthistory.userdisplayname is not NULL
limit 154;
select  
  comments.creationdate, 
  comments.userdisplayname
from 
  comments
where comments.creationdate is not NULL
limit 125;
select  
  votes.postid
from 
  votes
      inner join posthistory
      on (votes.bountyamount = posthistory.id )
    inner join users
    on (users.views is not NULL)
where posthistory.postid is not NULL;
select  
  comments.creationdate, 
  comments.id
from 
  comments
where comments.text <= comments.userdisplayname
limit 108;
select  
  posts.id, 
  posts.creationdate, 
  posts.tags, 
  posts.owneruserid, 
  posts.acceptedanswerid, 
  posts.lasteditoruserid, 
  posts.viewcount, 
  posts.ownerdisplayname, 
  posts.id, 
  posts.closeddate, 
  posts.closeddate, 
  posts.commentcount, 
  posts.lastactivitydate, 
  posts.contentlicense
from 
  posts
where posts.id is NULL;
select  
  comments.userdisplayname, 
  postlinks.creationdate, 
  votes.userid, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as inet) as inet)), 
  users.websiteurl, 
  posthistory.postid
from 
  postlinks
    inner join comments
        inner join users
        on (comments.id <= comments.id)
      inner join posthistory
        right join votes
          right join posthistory
            left join posthistory
            on (posthistory.creationdate > posthistory.creationdate)
          on (posthistory.creationdate < votes.creationdate)
        on (votes.userid >= posthistory.userid)
      on (votes.bountyamount = posthistory.postid)
    on (posthistory.creationdate <= comments.creationdate)
where posthistory.creationdate = posthistory.creationdate;
select  
  posthistory.text, 
  badges.userid
from 
  users
      inner join posthistory
      on (users.location > users.aboutme)
    right join badges
      left join badges
      on (badges.date < badges.date)
    on (users.location > badges.name)
where users.websiteurl is NULL;
select  
  users.views
from 
  users
where users.displayname is not NULL
limit 135;
select  
  badges.userid, 
  badges.tagbased, 
  badges.userid, 
  badges.class, 
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.id, 
  badges.tagbased
from 
  badges
where badges.class is NULL
limit 117;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  badges.class, 
  badges.class, 
  badges.tagbased, 
  badges.class, 
  badges.date
from 
  badges
where badges.userid is not NULL
limit 100;
select  
  users.upvotes, 
  users.displayname, 
  users.location, 
  posts.title, 
  badges.name, 
  badges.class, 
  users.websiteurl, 
  users.reputation, 
  users.upvotes, 
  posts.lasteditordisplayname, 
  users.views, 
  posts.contentlicense
from 
  users
    left join badges
        right join posts
        on (posts.body < posts.body)
      left join users
      on (posts.score > users.accountid)
    on (users.location >= users.websiteurl)
where posts.lasteditdate >= badges.date;
select distinct 
  min(
    cast(cast(null as int2) as int2))
from 
  votes
where votes.creationdate is NULL
limit 167;
select  
  comments.text, 
  posthistory.contentlicense, 
  postlinks.creationdate, 
  posthistory.postid, 
  badges.class
from 
  badges
    inner join posts
        inner join votes
        on (posts.creationdate = votes.creationdate )
      inner join posthistory
          right join postlinks
                inner join comments
                on (comments.text > comments.userdisplayname)
              left join posthistory
              on (posthistory.text = posthistory.contentlicense)
            inner join users
            on (postlinks.creationdate >= users.creationdate)
          on (posthistory.creationdate > posthistory.creationdate)
        inner join posts
        on (users.lastaccessdate = posts.creationdate )
      on (posts.closeddate <= comments.creationdate)
    on (posthistory.text > posthistory.contentlicense)
where posthistory.posthistorytypeid is NULL;
select  
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate <= postlinks.creationdate
limit 122;
select  
  users.location, 
  postlinks.linktypeid, 
  users.aboutme, 
  posthistory.id, 
  postlinks.creationdate, 
  postlinks.relatedpostid
from 
  users
        left join postlinks
        on (postlinks.postid = users.accountid)
      inner join postlinks
      on (users.profileimageurl > users.displayname)
    inner join posthistory
      right join users
          inner join badges
          on (users.creationdate = badges.date )
        left join comments
        on (users.accountid = users.id)
      on (posthistory.posthistorytypeid = badges.id )
    on (comments.userdisplayname <= users.websiteurl)
where users.aboutme < badges.class
limit 100;
select  
  badges.id, 
  badges.class, 
  badges.tagbased
from 
  badges
where badges.tagbased <= badges.class
limit 173;
select  
  max(
    cast(cast(null as date) as date)), 
  users.creationdate, 
  max(
    cast(cast(null as float4) as float4)), 
  users.location, 
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  posthistory.comment, 
  users.accountid, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  comments.creationdate, 
  comments.text
from 
  votes
          left join users
            left join users
                right join postlinks
                on (postlinks.creationdate > users.creationdate)
              left join posthistory
              on (postlinks.postid = posthistory.id )
            on (users.creationdate <= posthistory.creationdate)
          on (posthistory.id < votes.bountyamount)
        inner join badges
        on (posthistory.creationdate = users.lastaccessdate)
      right join badges
          inner join comments
            inner join posthistory
              left join badges
              on (posthistory.userdisplayname >= posthistory.text)
            on (badges.date >= posthistory.creationdate)
          on (badges.tagbased > posthistory.comment)
        left join badges
          left join users
          on (badges.userid = users.id )
        on (badges.date <= badges.date)
      on (users.location = badges.class )
    left join users
      right join comments
      on (comments.userdisplayname >= users.websiteurl)
    on (badges.name is not NULL)
where users.upvotes is NULL
limit 117;
select  
  postlinks.creationdate, 
  posts.owneruserid, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  min(
    cast(cast(null as oid) as oid)), 
  postlinks.id, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  posts.lastactivitydate, 
  avg(
    cast(cast(null as float8) as float8)), 
  postlinks.relatedpostid
from 
  postlinks
    inner join postlinks
      left join posts
      on (posts.ownerdisplayname <= posts.tags)
    on (posts.lasteditordisplayname is not NULL)
where postlinks.id is not NULL;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.class, 
  badges.userid, 
  avg(
    cast(users.views as int8))
from 
  badges
    right join postlinks
        right join users
        on (users.aboutme = users.profileimageurl)
      left join badges
      on (users.aboutme < badges.class)
    on (badges.tagbased = badges.class )
where badges.class is NULL
limit 96;
select  
  sum(
    cast(cast(null as "interval") as "interval")), 
  votes.userid, 
  comments.score, 
  comments.creationdate, 
  votes.postid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.score, 
  votes.postid, 
  votes.bountyamount, 
  comments.userid, 
  comments.text
from 
  comments
    left join votes
    on (votes.creationdate >= comments.creationdate)
where votes.bountyamount is not NULL;
select  
  postlinks.id, 
  max(
    cast(cast(null as oid) as oid)), 
  postlinks.id, 
  users.websiteurl, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  postlinks.linktypeid, 
  users.websiteurl, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  users
    inner join postlinks
    on (users.upvotes = postlinks.id )
where users.upvotes is NULL
limit 188;
select  
  posts.contentlicense
from 
  posts
where posts.ownerdisplayname is not NULL;
select  
  min(
    cast(cast(null as float8) as float8)), 
  votes.id, 
  votes.bountyamount
from 
  votes
where votes.userid = votes.votetypeid
limit 136;
select  
  badges.name
from 
  badges
where badges.id is NULL
limit 159;
select  
  posthistory.userid, 
  max(
    cast(cast(null as float4) as float4)), 
  posthistory.revisionguid, 
  posthistory.text, 
  posthistory.comment, 
  posthistory.text, 
  posthistory.userdisplayname, 
  posthistory.revisionguid, 
  posthistory.userdisplayname, 
  posthistory.text
from 
  posthistory
    inner join posthistory
    on (posthistory.text > posthistory.contentlicense)
where posthistory.creationdate < posthistory.creationdate;
select  
  posts.favoritecount, 
  posts.viewcount, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.communityowneddate, 
  posts.id, 
  posts.lastactivitydate, 
  posts.commentcount, 
  posts.parentid
from 
  posts
where posts.creationdate is not NULL
limit 76;
select  
  postlinks.linktypeid, 
  sum(
    cast(cast(null as float4) as float4)), 
  postlinks.creationdate, 
  postlinks.creationdate, 
  votes.postid
from 
  votes
    inner join postlinks
    on (votes.bountyamount is NULL)
where postlinks.relatedpostid is NULL
limit 121;
select  
  users.displayname
from 
  users
where users.lastaccessdate is NULL
limit 125;
select  
  users.views, 
  users.websiteurl, 
  posts.creationdate, 
  min(
    cast(2 as int4)), 
  posthistory.userid, 
  posthistory.text, 
  postlinks.id, 
  users.reputation, 
  posthistory.comment
from 
  posts
        inner join users
        on (posts.tags <= users.aboutme)
      inner join posthistory
        inner join postlinks
          inner join posthistory
          on (posthistory.text <= posthistory.comment)
        on (posthistory.text = posthistory.comment)
      on (users.lastaccessdate < posts.lastactivitydate)
    inner join users
    on (posts.lasteditordisplayname is NULL)
where postlinks.creationdate is NULL
limit 62;
select  
  badges.name, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.class, 
  badges.userid
from 
  badges
where badges.class is NULL
limit 94;
select  
  postlinks.postid, 
  users.profileimageurl, 
  votes.userid
from 
  postlinks
            right join posts
            on (posts.favoritecount < posts.commentcount)
          inner join badges
          on (posts.ownerdisplayname <= badges.name)
        inner join users
            inner join badges
            on (users.upvotes = badges.id )
          right join votes
            inner join users
            on (users.creationdate > votes.creationdate)
          on (users.location < users.displayname)
        on (users.views <= users.id)
      left join votes
          right join posts
          on (votes.userid = posts.id )
        inner join badges
        on (posts.creationdate = votes.creationdate)
      on (posts.creationdate <= posts.communityowneddate)
    inner join postlinks
    on (badges.userid is not NULL)
where postlinks.id is not NULL
limit 98;
select  
  comments.id, 
  comments.text, 
  comments.creationdate, 
  comments.text, 
  comments.text, 
  min(
    cast(cast(null as float4) as float4)), 
  comments.userdisplayname, 
  comments.postid, 
  comments.userdisplayname, 
  comments.score, 
  comments.id, 
  comments.userid, 
  max(
    cast(cast(null as money) as money)), 
  comments.text, 
  sum(
    cast(cast(null as money) as money)), 
  comments.creationdate, 
  comments.userid, 
  comments.creationdate, 
  comments.postid, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.text, 
  comments.id, 
  comments.score, 
  comments.userid, 
  max(
    cast(cast(null as float4) as float4)), 
  comments.userdisplayname
from 
  comments
where comments.text is NULL
limit 168;
select  
  comments.creationdate
from 
  comments
where comments.score is not NULL
limit 112;
select  
  comments.postid, 
  comments.text, 
  comments.score, 
  comments.score, 
  comments.userdisplayname, 
  comments.score
from 
  comments
where comments.userid is NULL
limit 133;
select  
  badges.class, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  votes.id, 
  posthistory.userid, 
  count(*), 
  badges.id
from 
  posthistory
    right join posthistory
        inner join votes
          right join votes
          on (votes.creationdate <= votes.creationdate)
        on (votes.creationdate <= posthistory.creationdate)
      left join badges
      on (posthistory.creationdate >= votes.creationdate)
    on (posthistory.revisionguid = posthistory.userdisplayname )
where posthistory.userid is not NULL;
select  
  min(
    cast(cast(null as oid) as oid)), 
  postlinks.relatedpostid, 
  posthistory.postid, 
  postlinks.id, 
  posts.viewcount, 
  comments.userdisplayname
from 
  postlinks
      right join posts
        inner join postlinks
          right join posthistory
            inner join postlinks
            on (posthistory.revisionguid <= posthistory.comment)
          on (postlinks.creationdate <= posthistory.creationdate)
        on (posts.lasteditordisplayname = posthistory.userdisplayname )
      on (postlinks.relatedpostid < postlinks.id)
    right join votes
      right join comments
      on (comments.creationdate >= comments.creationdate)
    on (posts.contentlicense is NULL)
where votes.creationdate is not NULL
limit 83;
select  
  posthistory.userdisplayname, 
  posthistory.userdisplayname, 
  posthistory.userid, 
  posthistory.postid, 
  posthistory.id, 
  posthistory.id
from 
  posthistory
where posthistory.contentlicense > posthistory.revisionguid
limit 174;
select  
  postlinks.id, 
  postlinks.postid, 
  postlinks.linktypeid, 
  count(*), 
  max(
    cast(cast(null as timetz) as timetz)), 
  postlinks.creationdate, 
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is NULL
limit 157;
select  
  badges.tagbased, 
  badges.date, 
  badges.id
from 
  badges
where badges.class is NULL;
select  
  min(
    cast(cast(null as float8) as float8))
from 
  postlinks
    left join users
          inner join comments
            right join votes
                inner join posts
                on (posts.title < posts.lasteditordisplayname)
              inner join posts
              on (posts.communityowneddate >= posts.closeddate)
            on (posts.favoritecount > votes.userid)
          on (users.lastaccessdate > posts.lasteditdate)
        inner join users
        on (comments.text < posts.title)
      right join votes
      on (users.creationdate < comments.creationdate)
    on (posts.closeddate = posts.closeddate)
where posts.posttypeid <= votes.id;
select  
  posts.viewcount, 
  users.location, 
  users.displayname
from 
  users
    left join posts
    on (users.creationdate <= posts.lasteditdate)
where posts.tags is not NULL
limit 135;
select  
  sum(
    cast(cast(null as float4) as float4))
from 
  posts
where posts.title > posts.lasteditordisplayname
limit 65;
select  
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.postid, 
  posts.posttypeid, 
  comments.userid, 
  comments.text, 
  comments.userid, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
    left join posts
    on (posts.viewcount is not NULL)
where posts.body > posts.ownerdisplayname
limit 90;
select  
  postlinks.id, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.creationdate
from 
  postlinks
    inner join postlinks
    on (postlinks.id is not NULL)
where postlinks.relatedpostid is not NULL
limit 86;
select  
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 116;
select  
  min(
    cast(49 as int4)), 
  count(
    cast(votes.bountyamount as int8)), 
  votes.votetypeid, 
  min(
    cast(cast(null as int2) as int2)), 
  votes.creationdate, 
  votes.creationdate, 
  votes.id, 
  votes.votetypeid, 
  votes.userid, 
  votes.id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.bountyamount, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.id, 
  votes.postid, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.userid, 
  votes.votetypeid
from 
  votes
where votes.bountyamount > votes.votetypeid
limit 84;
select  
  comments.postid, 
  comments.id
from 
  comments
where comments.score is NULL
limit 172;
select  
  posthistory.comment, 
  posthistory.userdisplayname, 
  posthistory.id, 
  posthistory.postid, 
  posthistory.userid, 
  posthistory.id, 
  posthistory.postid, 
  posthistory.creationdate, 
  max(
    cast(cast(null as int2) as int2)), 
  posthistory.revisionguid, 
  posthistory.revisionguid, 
  sum(
    cast(cast(null as float8) as float8)), 
  posthistory.contentlicense, 
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  posthistory.id, 
  posthistory.creationdate, 
  avg(
    cast(76 as int4)), 
  posthistory.contentlicense, 
  posthistory.creationdate
from 
  posthistory
where posthistory.userdisplayname is NULL
limit 51;
select  
  postlinks.relatedpostid
from 
  comments
    left join postlinks
    on (comments.id <= postlinks.relatedpostid)
where comments.creationdate is NULL
limit 112;
select  
  comments.userid, 
  comments.id, 
  comments.score, 
  min(
    cast(comments.text as text))
from 
  comments
where comments.id is not NULL;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  posthistory.posthistorytypeid
from 
  postlinks
    inner join posthistory
        right join comments
          inner join users
          on (comments.userid >= comments.postid)
        on (users.websiteurl <= comments.text)
      right join users
      on (posthistory.creationdate > users.lastaccessdate)
    on (comments.userid is not NULL)
where postlinks.creationdate > users.creationdate
limit 20;
select  
  badges.class, 
  badges.date, 
  badges.userid, 
  badges.date, 
  badges.name, 
  badges.date, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.date, 
  avg(
    cast(badges.userid as int8)), 
  badges.class, 
  badges.name
from 
  badges
where badges.userid is NULL;
select  
  posts.parentid, 
  posts.owneruserid, 
  avg(
    cast(cast(null as float8) as float8)), 
  users.websiteurl, 
  posts.viewcount, 
  max(
    cast(cast(null as xid8) as xid8)), 
  users.location
from 
  users
      right join postlinks
      on (users.id >= postlinks.postid)
    left join posts
    on (users.displayname is not NULL)
where posts.posttypeid is NULL;
select  
  comments.score, 
  comments.userid, 
  comments.userid, 
  comments.creationdate
from 
  comments
where comments.userdisplayname is not NULL;
select  
  postlinks.postid
from 
  badges
      inner join posthistory
            right join votes
              left join posthistory
                inner join badges
                  inner join posts
                  on (posts.owneruserid = posts.viewcount)
                on (posts.body >= badges.name)
              on (posts.closeddate <= votes.creationdate)
            on (posthistory.posthistorytypeid > posthistory.postid)
          left join votes
          on (posthistory.creationdate < votes.creationdate)
        inner join users
        on (posthistory.contentlicense <= badges.name)
      on (badges.userid = votes.id )
    inner join postlinks
      inner join posts
      on (postlinks.relatedpostid < posts.lasteditoruserid)
    on (posts.communityowneddate is not NULL)
where posts.id is NULL
limit 98;
select  
  posts.viewcount, 
  posthistory.comment, 
  posthistory.contentlicense, 
  posthistory.postid, 
  posthistory.text, 
  posthistory.revisionguid, 
  posthistory.contentlicense, 
  posthistory.revisionguid, 
  posthistory.revisionguid, 
  posthistory.creationdate, 
  posthistory.revisionguid, 
  posthistory.text, 
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  posthistory.posthistorytypeid
from 
  posthistory
    inner join posts
    on (posthistory.userid is not NULL)
where posthistory.posthistorytypeid is NULL
limit 45;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  badges.userid, 
  badges.id
from 
  badges
where badges.tagbased is NULL;
select  
  posthistory.userdisplayname
from 
  comments
            right join comments
            on (comments.score <= comments.id)
          inner join posts
            inner join posthistory
                right join postlinks
                on (posthistory.id = posthistory.userid)
              right join badges
                inner join comments
                on (comments.userdisplayname = comments.userdisplayname)
              on (comments.creationdate <= badges.date)
            on (postlinks.id >= comments.score)
          on (comments.id = postlinks.id )
        inner join comments
        on (comments.text = comments.userdisplayname )
      inner join comments
      on (badges.userid >= comments.id)
    inner join users
    on (posthistory.id = users.id )
where comments.id is NULL
limit 7;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.postid, 
  min(
    cast(postlinks.postid as int8)), 
  postlinks.linktypeid
from 
  postlinks
where postlinks.postid is not NULL;
select  
  posts.lasteditdate, 
  posts.viewcount, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  posts
where posts.score < posts.commentcount
limit 108;
select  
  comments.text, 
  comments.text, 
  comments.userid, 
  sum(
    cast(cast(null as money) as money)), 
  comments.postid
from 
  comments
where comments.score is NULL
limit 102;
select distinct 
  votes.postid, 
  comments.postid, 
  votes.votetypeid, 
  votes.userid, 
  comments.id, 
  votes.postid, 
  comments.userdisplayname, 
  votes.creationdate, 
  comments.score, 
  votes.id, 
  comments.userdisplayname, 
  comments.postid, 
  votes.userid, 
  comments.score, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.votetypeid, 
  comments.postid, 
  votes.postid, 
  votes.id, 
  comments.score, 
  comments.userid, 
  comments.postid, 
  votes.id, 
  comments.id
from 
  votes
    left join comments
    on (votes.votetypeid is NULL)
where comments.text is not NULL
limit 184;
select  
  posts.body, 
  posts.lastactivitydate
from 
  posts
    left join postlinks
    on (posts.id is not NULL)
where postlinks.relatedpostid is not NULL;
select  
  min(
    cast(cast(null as oid) as oid)), 
  posts.contentlicense, 
  posts.lastactivitydate, 
  posts.creationdate, 
  avg(
    cast(82 as int4)), 
  posts.answercount, 
  posts.body
from 
  posts
where posts.closeddate < posts.lasteditdate;
select  
  posts.viewcount, 
  posts.title, 
  posts.commentcount, 
  max(
    cast(13 as int4)), 
  posts.answercount
from 
  badges
      left join posts
      on (posts.lasteditoruserid = posts.parentid)
    inner join posts
      left join posthistory
      on (posts.answercount <= posts.favoritecount)
    on (posts.lasteditdate is not NULL)
where badges.id is NULL
limit 128;
select  
  posthistory.id
from 
  users
        right join postlinks
          inner join badges
          on (postlinks.linktypeid = badges.id )
        on (users.displayname = badges.class )
      inner join comments
        left join posthistory
        on (posthistory.id > posthistory.posthistorytypeid)
      on (postlinks.relatedpostid = comments.id )
    inner join posthistory
    on (postlinks.postid = posthistory.id )
where postlinks.postid is not NULL
limit 37;
select  
  posthistory.text
from 
  posthistory
where posthistory.contentlicense is not NULL
limit 41;
select  
  users.location, 
  max(
    cast(cast(null as inet) as inet)), 
  users.accountid, 
  users.upvotes, 
  users.location, 
  users.id, 
  users.displayname, 
  users.location, 
  users.creationdate, 
  users.creationdate, 
  users.aboutme, 
  users.creationdate, 
  users.creationdate, 
  users.aboutme
from 
  users
where users.upvotes is NULL;
select  
  votes.votetypeid, 
  badges.name, 
  votes.votetypeid, 
  votes.bountyamount
from 
  votes
      inner join badges
        right join votes
        on (badges.id = votes.id )
      on (badges.name >= badges.class)
    inner join postlinks
    on (votes.bountyamount is NULL)
where votes.creationdate >= postlinks.creationdate
limit 6;
select  
  comments.creationdate, 
  min(
    cast(cast(null as money) as money)), 
  comments.id
from 
  comments
where comments.userid is not NULL
limit 102;
select  
  badges.userid, 
  badges.userid, 
  badges.tagbased, 
  badges.name, 
  badges.name, 
  badges.class, 
  badges.id, 
  badges.tagbased, 
  badges.userid, 
  min(
    cast(badges.date as timestamptz)), 
  min(
    cast(badges.tagbased as text)), 
  badges.userid
from 
  badges
where badges.userid is NULL
limit 153;
select  
  min(
    cast(users.lastaccessdate as timestamptz)), 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  postlinks.id, 
  max(
    cast(cast(null as oid) as oid)), 
  postlinks.postid, 
  posthistory.userdisplayname
from 
  badges
    left join users
      inner join posthistory
        inner join users
          inner join postlinks
          on (users.id = postlinks.id )
        on (users.lastaccessdate = posthistory.creationdate)
      on (users.creationdate > users.creationdate)
    on (badges.id = users.id )
where postlinks.relatedpostid < users.downvotes
limit 161;
select  
  posts.parentid, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.lasteditordisplayname, 
  posts.parentid, 
  posts.favoritecount, 
  posts.parentid, 
  posts.owneruserid, 
  posts.title, 
  posts.answercount, 
  posts.creationdate, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posts.ownerdisplayname, 
  min(
    cast(posts.contentlicense as text)), 
  posts.communityowneddate, 
  posts.posttypeid, 
  sum(
    cast(53 as int4)), 
  posts.body, 
  posts.acceptedanswerid, 
  posts.lasteditoruserid, 
  posts.viewcount, 
  posts.creationdate
from 
  posts
where posts.creationdate is NULL
limit 99;
select  
  badges.class, 
  badges.tagbased, 
  count(
    cast(users.websiteurl as text))
from 
  users
    inner join badges
    on (users.profileimageurl is not NULL)
where users.lastaccessdate <= users.creationdate;
select  
  votes.id, 
  votes.creationdate, 
  votes.creationdate, 
  votes.id, 
  votes.bountyamount, 
  votes.postid, 
  votes.bountyamount, 
  votes.userid, 
  votes.creationdate
from 
  votes
where votes.votetypeid is NULL
limit 94;
select  
  comments.text, 
  comments.userid, 
  min(
    cast(cast(null as float4) as float4)), 
  comments.postid, 
  comments.userid, 
  comments.text, 
  comments.postid, 
  comments.id, 
  comments.userid, 
  comments.id, 
  comments.userdisplayname, 
  max(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.text
from 
  comments
where comments.text is NULL
limit 141;
select  
  users.profileimageurl, 
  comments.userid, 
  sum(
    cast(33 as int4)), 
  postlinks.id, 
  max(
    cast(cast(null as tid) as tid)), 
  avg(
    cast(posts.lasteditoruserid as int8))
from 
  postlinks
      inner join postlinks
          inner join comments
            right join posthistory
            on (comments.creationdate >= posthistory.creationdate)
          on (posthistory.creationdate = postlinks.creationdate)
        inner join posts
          right join badges
            inner join comments
              right join comments
                inner join posthistory
                on (posthistory.id >= comments.id)
              on (comments.id = comments.id )
            on (comments.userid < comments.userid)
          on (posts.body <= posts.tags)
        on (comments.userdisplayname > posthistory.revisionguid)
      on (posthistory.creationdate = posthistory.creationdate)
    inner join users
      inner join posts
      on (posts.lasteditdate < posts.closeddate)
    on (comments.score is NULL)
where posthistory.text is not NULL
limit 171;
select  
  postlinks.creationdate, 
  postlinks.postid, 
  posthistory.contentlicense, 
  postlinks.relatedpostid, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.bountyamount
from 
  posthistory
            inner join badges
            on (posthistory.postid < posthistory.posthistorytypeid)
          inner join votes
            left join postlinks
            on (votes.creationdate >= votes.creationdate)
          on (posthistory.creationdate <= badges.date)
        left join postlinks
        on (posthistory.posthistorytypeid = postlinks.id)
      right join comments
            inner join badges
            on (badges.userid < comments.score)
          right join postlinks
          on (comments.creationdate >= postlinks.creationdate)
        inner join postlinks
        on (comments.creationdate >= badges.date)
      on (votes.creationdate > badges.date)
    left join users
        inner join postlinks
            inner join votes
              right join postlinks
                left join posthistory
                on (postlinks.postid >= postlinks.linktypeid)
              on (postlinks.postid >= postlinks.postid)
            on (postlinks.postid = postlinks.id)
          inner join posthistory
            right join badges
                right join votes
                on (votes.votetypeid < votes.postid)
              inner join badges
              on (badges.class >= badges.tagbased)
            on (badges.userid < badges.id)
          on (posthistory.userid = badges.id)
        on (votes.creationdate > posthistory.creationdate)
      inner join posthistory
      on (users.views > postlinks.relatedpostid)
    on (postlinks.relatedpostid is NULL)
where posthistory.comment is not NULL
limit 122;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  postlinks
where postlinks.linktypeid = postlinks.postid
limit 95;
select  
  posts.acceptedanswerid, 
  posts.viewcount, 
  posts.title, 
  posts.communityowneddate, 
  posts.contentlicense
from 
  posts
where posts.closeddate is not NULL
limit 59;
select  
  postlinks.linktypeid, 
  min(
    cast(cast(null as "time") as "time")), 
  votes.postid, 
  postlinks.id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  postlinks.relatedpostid, 
  votes.bountyamount
from 
  votes
    left join postlinks
    on (postlinks.creationdate is not NULL)
where votes.creationdate is NULL;
select  
  badges.tagbased
from 
  users
        left join badges
            inner join posts
            on (posts.lasteditdate < posts.creationdate)
          inner join votes
          on (badges.class >= posts.body)
        on (badges.tagbased >= badges.name)
      inner join posthistory
        inner join votes
          inner join badges
          on (badges.date < votes.creationdate)
        on (badges.date >= badges.date)
      on (posthistory.id > users.id)
    inner join comments
    on (votes.userid is NULL)
where posthistory.creationdate is not NULL;
select  
  min(
    cast(cast(null as oid) as oid)), 
  postlinks.postid, 
  badges.date, 
  votes.creationdate, 
  badges.id, 
  postlinks.postid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  badges.name
from 
  votes
      inner join badges
      on (badges.tagbased = badges.name)
    right join postlinks
    on (badges.date is not NULL)
where postlinks.creationdate is not NULL
limit 84;
select  
  posts.lasteditdate, 
  max(
    cast(cast(null as xid8) as xid8)), 
  posts.owneruserid, 
  posts.lasteditoruserid, 
  max(
    cast(86 as int4)), 
  posts.tags, 
  posts.closeddate, 
  posts.commentcount, 
  max(
    cast(cast(null as "time") as "time")), 
  posts.answercount, 
  posts.lasteditoruserid, 
  posts.lasteditoruserid, 
  posts.owneruserid, 
  posts.closeddate, 
  posts.commentcount, 
  posts.score, 
  min(
    cast(cast(null as float4) as float4)), 
  posts.lasteditdate, 
  posts.score
from 
  posts
where posts.communityowneddate is not NULL
limit 94;
select  
  postlinks.id
from 
  postlinks
where postlinks.id is NULL
limit 127;
select  
  postlinks.linktypeid, 
  comments.id
from 
  postlinks
      right join postlinks
      on (postlinks.creationdate >= postlinks.creationdate)
    inner join comments
      left join users
      on (comments.text = comments.text)
    on (users.profileimageurl <= comments.text)
where postlinks.postid is not NULL;
select  
  votes.id, 
  posthistory.comment, 
  posthistory.text
from 
  users
        inner join posts
        on (posts.answercount = users.id)
      inner join posthistory
        inner join badges
              inner join posthistory
              on (badges.date <= posthistory.creationdate)
            right join postlinks
            on (posthistory.userdisplayname <= badges.tagbased)
          inner join votes
            inner join votes
            on (votes.creationdate <= votes.creationdate)
          on (badges.class >= posthistory.revisionguid)
        on (posthistory.creationdate > votes.creationdate)
      on (posthistory.revisionguid <= posthistory.userdisplayname)
    left join users
        inner join votes
        on (votes.postid < votes.id)
      inner join comments
        inner join votes
        on (comments.text <= comments.text)
      on (users.displayname >= users.profileimageurl)
    on (posts.ownerdisplayname = comments.userdisplayname )
where users.id is NULL
limit 73;
select  
  votes.userid
from 
  votes
where votes.creationdate > votes.creationdate;
select  
  min(
    cast(cast(null as date) as date)), 
  votes.userid, 
  votes.userid, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  votes
where votes.bountyamount is not NULL
limit 131;
select  
  votes.postid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  votes.userid, 
  min(
    cast(cast(null as float8) as float8)), 
  votes.userid, 
  votes.userid, 
  votes.userid, 
  votes.postid, 
  votes.id, 
  votes.id, 
  votes.userid, 
  votes.bountyamount
from 
  votes
where votes.creationdate is not NULL
limit 72;
select  
  users.upvotes, 
  users.creationdate, 
  min(
    cast(cast(null as tid) as tid)), 
  users.location, 
  count(
    cast(users.lastaccessdate as timestamptz))
from 
  users
where users.creationdate > users.creationdate
limit 58;
select  
  badges.date, 
  badges.userid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.tagbased, 
  badges.date
from 
  badges
where badges.name >= badges.class
limit 109;
select  
  posts.posttypeid, 
  posts.owneruserid, 
  posts.score, 
  posts.lastactivitydate, 
  max(
    cast(cast(null as int2) as int2)), 
  posts.lasteditordisplayname, 
  posts.lasteditordisplayname, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.lasteditdate, 
  posts.lasteditoruserid, 
  posts.lasteditoruserid, 
  posts.lasteditdate, 
  posts.ownerdisplayname, 
  posts.lasteditdate, 
  posts.contentlicense, 
  max(
    cast(cast(null as "time") as "time")), 
  posts.parentid, 
  posts.acceptedanswerid, 
  max(
    cast(cast(null as inet) as inet)), 
  posts.ownerdisplayname, 
  posts.viewcount
from 
  posts
where posts.lastactivitydate is NULL
limit 166;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  users.lastaccessdate, 
  users.views, 
  max(
    cast(cast(null as "time") as "time")), 
  users.id, 
  users.lastaccessdate, 
  users.profileimageurl, 
  users.accountid
from 
  users
where users.aboutme is not NULL
limit 99;
select  
  min(
    cast(badges.date as timestamptz)), 
  badges.id, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.userid, 
  badges.tagbased, 
  badges.id, 
  badges.tagbased, 
  badges.date, 
  badges.tagbased, 
  badges.id, 
  badges.id, 
  badges.date, 
  badges.class
from 
  badges
where badges.date is NULL
limit 116;
select  
  users.location, 
  users.reputation, 
  users.aboutme, 
  users.id, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.bountyamount, 
  votes.id, 
  avg(
    cast(cast(null as int2) as int2)), 
  users.id, 
  votes.bountyamount, 
  users.accountid, 
  users.upvotes, 
  votes.creationdate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(57 as int4)), 
  users.downvotes, 
  users.profileimageurl, 
  users.accountid, 
  votes.userid, 
  votes.bountyamount
from 
  votes
    right join users
    on (votes.creationdate is NULL)
where users.displayname >= users.aboutme
limit 26;
select  
  users.location, 
  users.displayname, 
  posthistory.userdisplayname, 
  postlinks.id
from 
  users
      inner join votes
      on (users.lastaccessdate = users.lastaccessdate)
    left join users
        left join votes
        on (users.location = users.profileimageurl)
      right join users
        inner join posthistory
            inner join posthistory
            on (posthistory.posthistorytypeid < posthistory.postid)
          inner join postlinks
                right join users
                on (users.upvotes < postlinks.id)
              inner join users
              on (users.profileimageurl > users.profileimageurl)
            right join badges
            on (users.displayname = badges.tagbased)
          on (badges.tagbased >= posthistory.text)
        on (posthistory.id <= users.upvotes)
      on (users.upvotes >= users.accountid)
    on (postlinks.linktypeid is not NULL)
where posthistory.contentlicense is not NULL
limit 79;
select  
  comments.postid, 
  comments.userid, 
  comments.userdisplayname, 
  comments.text, 
  sum(
    cast(comments.id as int8)), 
  comments.userdisplayname, 
  comments.id
from 
  comments
where comments.id is not NULL
limit 114;
select  
  comments.userid, 
  comments.postid, 
  sum(
    cast(cast(null as int2) as int2))
from 
  votes
        inner join posts
          right join comments
          on (comments.score > posts.answercount)
        on (posts.communityowneddate <= posts.communityowneddate)
      inner join comments
      on (votes.creationdate = comments.creationdate )
    inner join badges
      inner join votes
        right join comments
        on (comments.userdisplayname <= comments.text)
      on (badges.date = badges.date)
    on (votes.creationdate = badges.date )
where comments.id is not NULL;
select  
  posts.title, 
  posts.creationdate, 
  posts.answercount, 
  posts.lasteditoruserid, 
  posts.contentlicense, 
  posts.communityowneddate, 
  posts.contentlicense
from 
  posts
where posts.posttypeid is NULL
limit 118;
select  
  badges.tagbased
from 
  badges
where badges.tagbased is not NULL
limit 57;
select  
  comments.postid, 
  comments.text, 
  users.profileimageurl, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.userdisplayname
from 
  comments
    left join users
    on (users.location is not NULL)
where comments.text is not NULL
limit 34;
select  
  badges.name
from 
  badges
where badges.userid is not NULL;
select  
  posthistory.id
from 
  posthistory
where posthistory.postid is NULL
limit 66;
select  
  votes.votetypeid, 
  votes.creationdate
from 
  votes
where votes.votetypeid is not NULL;
select  
  comments.postid
from 
  comments
where comments.id is NULL;
select  
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  posthistory.id, 
  min(
    cast(cast(null as money) as money)), 
  posthistory.posthistorytypeid, 
  avg(
    cast(32 as int4)), 
  min(
    cast(cast(null as date) as date)), 
  posthistory.postid, 
  max(
    cast(cast(null as xid8) as xid8)), 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.id is NULL
limit 93;
select  
  comments.userid, 
  comments.creationdate, 
  comments.id
from 
  comments
where comments.userdisplayname > comments.userdisplayname
limit 173;
select  
  votes.postid, 
  min(
    cast(comments.creationdate as timestamptz)), 
  max(
    cast(cast(null as money) as money))
from 
  votes
      inner join comments
          inner join users
          on (users.aboutme > users.websiteurl)
        inner join posthistory
        on (posthistory.contentlicense <= comments.text)
      on (votes.id = users.id )
    inner join badges
    on (users.displayname is NULL)
where comments.id >= users.upvotes
limit 138;
select  
  votes.postid, 
  sum(
    cast(votes.userid as int8)), 
  votes.bountyamount, 
  votes.creationdate, 
  votes.creationdate, 
  min(
    cast(cast(null as float4) as float4)), 
  votes.userid, 
  votes.votetypeid, 
  votes.votetypeid
from 
  votes
where votes.id is NULL
limit 23;
select  
  votes.votetypeid, 
  votes.id, 
  votes.votetypeid, 
  votes.id, 
  votes.postid, 
  votes.id, 
  votes.userid
from 
  votes
where votes.bountyamount is NULL
limit 103;
select  
  min(
    cast(cast(null as oid) as oid)), 
  votes.bountyamount, 
  users.views, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.name, 
  max(
    cast(cast(null as "interval") as "interval")), 
  votes.id, 
  votes.bountyamount, 
  sum(
    cast(cast(null as float4) as float4)), 
  badges.id, 
  users.reputation, 
  posts.lasteditdate, 
  avg(
    cast(cast(null as float4) as float4)), 
  posts.closeddate
from 
  votes
      inner join votes
      on (votes.creationdate = votes.creationdate)
    left join badges
      inner join users
              inner join posts
              on (posts.id < users.downvotes)
            inner join comments
            on (comments.score = posts.owneruserid)
          left join posts
          on (comments.score = posts.id )
        right join users
        on (posts.viewcount >= posts.lasteditoruserid)
      on (posts.lastactivitydate > posts.lasteditdate)
    on (badges.id >= votes.userid)
where posts.viewcount is not NULL
limit 76;
select  
  max(
    cast(51 as int4)), 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.postid, 
  min(
    cast(cast(null as money) as money)), 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.postid = postlinks.linktypeid
limit 100;
select  
  comments.userid, 
  posts.viewcount, 
  min(
    cast(cast(null as int2) as int2))
from 
  comments
    left join posts
          inner join posts
            inner join posts
            on (posts.commentcount >= posts.id)
          on (posts.answercount < posts.answercount)
        left join comments
            inner join comments
            on (comments.creationdate = comments.creationdate)
          left join users
          on (users.profileimageurl >= users.location)
        on (comments.creationdate <= users.lastaccessdate)
      right join comments
        inner join comments
        on (comments.text <= comments.userdisplayname)
      on (posts.tags > posts.ownerdisplayname)
    on (comments.score is not NULL)
where comments.postid is NULL
limit 40;
select  
  max(
    cast(cast(null as money) as money)), 
  badges.userid
from 
  badges
where badges.class is not NULL;
select  
  min(
    cast(cast(null as "time") as "time")), 
  posts.viewcount, 
  posts.closeddate, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.title, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.lasteditdate, 
  posts.lasteditoruserid, 
  posts.id, 
  posts.owneruserid, 
  posts.lasteditdate, 
  posts.lasteditordisplayname, 
  count(*), 
  posts.posttypeid, 
  posts.contentlicense, 
  posts.title
from 
  posts
where posts.parentid is not NULL
limit 186;
select  
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(6 as int4)), 
  votes.userid, 
  posts.lastactivitydate, 
  users.accountid, 
  users.downvotes, 
  postlinks.postid, 
  postlinks.id, 
  users.downvotes
from 
  postlinks
          right join posts
            left join votes
            on (posts.closeddate = posts.lastactivitydate)
          on (postlinks.creationdate <= posts.lastactivitydate)
        right join postlinks
        on (postlinks.creationdate >= posts.communityowneddate)
      inner join users
      on (posts.favoritecount <= users.reputation)
    inner join users
      inner join users
      on (users.lastaccessdate > users.lastaccessdate)
    on (posts.lasteditoruserid is not NULL)
where votes.creationdate is not NULL
limit 52;
select  
  posthistory.contentlicense, 
  posts.id
from 
  posts
    inner join posthistory
    on (posts.communityowneddate is not NULL)
where posts.acceptedanswerid is NULL
limit 67;
select  
  users.lastaccessdate, 
  users.aboutme, 
  users.websiteurl
from 
  users
where users.creationdate is NULL
limit 78;
select  
  posthistory.userdisplayname, 
  posthistory.posthistorytypeid, 
  posthistory.id
from 
  posthistory
where posthistory.creationdate is not NULL
limit 90;
select  
  posthistory.posthistorytypeid
from 
  postlinks
        left join votes
        on (postlinks.id >= votes.bountyamount)
      right join votes
      on (votes.creationdate = postlinks.creationdate)
    inner join votes
          left join posthistory
                inner join comments
                on (posthistory.creationdate = posthistory.creationdate)
              inner join comments
              on (posthistory.creationdate <= comments.creationdate)
            left join badges
            on (comments.postid > comments.postid)
          on (votes.id = comments.id )
        left join votes
          inner join votes
            left join badges
              inner join posthistory
                inner join comments
                on (posthistory.creationdate > posthistory.creationdate)
              on (posthistory.creationdate <= posthistory.creationdate)
            on (badges.date < votes.creationdate)
          on (votes.id > posthistory.userid)
        on (posthistory.userid >= comments.id)
      inner join posts
      on (votes.votetypeid < comments.postid)
    on (comments.userid is NULL)
where postlinks.postid is NULL;
select  
  posts.tags, 
  postlinks.id, 
  posts.owneruserid, 
  posts.owneruserid, 
  count(
    cast(users.views as int8)), 
  users.profileimageurl, 
  postlinks.id, 
  posts.id, 
  postlinks.relatedpostid, 
  users.displayname, 
  posts.closeddate, 
  users.id, 
  posts.owneruserid, 
  posts.owneruserid
from 
  posts
        right join users
        on (posts.lasteditdate = posts.closeddate)
      right join posts
      on (posts.ownerdisplayname = posts.ownerdisplayname )
    inner join postlinks
    on (posts.answercount is NULL)
where users.displayname is NULL
limit 120;
select  
  comments.userid, 
  comments.id
from 
  comments
where comments.postid is NULL
limit 51;
select  
  comments.userdisplayname, 
  posts.body, 
  posts.title
from 
  postlinks
        right join badges
          left join posts
            inner join posts
            on (posts.lasteditoruserid <= posts.lasteditoruserid)
          on (posts.closeddate > posts.closeddate)
        on (postlinks.postid = posts.id )
      inner join comments
        right join posts
        on (comments.text >= posts.contentlicense)
      on (posts.commentcount <= posts.id)
    right join users
    on (posts.acceptedanswerid >= comments.userid)
where posts.answercount is NULL
limit 102;
select  
  comments.creationdate, 
  users.accountid
from 
  badges
          inner join posts
                inner join users
                on (users.accountid <= posts.favoritecount)
              inner join badges
              on (posts.closeddate = badges.date )
            left join posthistory
              inner join comments
              on (posthistory.contentlicense = comments.text)
            on (posts.creationdate > posts.lastactivitydate)
          on (badges.userid >= badges.id)
        right join posthistory
        on (badges.date = posts.lastactivitydate)
      right join votes
      on (posthistory.posthistorytypeid >= comments.id)
    inner join badges
    on (posthistory.userdisplayname is NULL)
where posts.lastactivitydate is NULL;
select  
  posts.ownerdisplayname, 
  posts.tags, 
  posts.commentcount, 
  min(
    cast(cast(null as int2) as int2)), 
  posts.acceptedanswerid, 
  posts.body, 
  min(
    cast(cast(null as oid) as oid)), 
  posts.id
from 
  posts
where posts.closeddate <= posts.communityowneddate
limit 17;
select  
  posthistory.userid
from 
  posthistory
    inner join posthistory
    on (posthistory.postid <= posthistory.postid)
where posthistory.comment is NULL
limit 103;
select distinct 
  posthistory.comment, 
  users.aboutme, 
  posthistory.revisionguid, 
  posthistory.posthistorytypeid, 
  posthistory.postid
from 
  posthistory
    inner join users
    on (posthistory.contentlicense is NULL)
where posthistory.comment is NULL;
select  
  posts.title
from 
  posts
where posts.score is not NULL
limit 107;
select  
  posthistory.comment, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posthistory.posthistorytypeid, 
  posthistory.id, 
  posthistory.revisionguid, 
  posthistory.postid
from 
  posthistory
where posthistory.creationdate is not NULL;
select  
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.creationdate, 
  max(
    cast(cast(null as tid) as tid)), 
  posthistory.userdisplayname, 
  comments.score, 
  max(
    cast(cast(null as tid) as tid)), 
  comments.userdisplayname, 
  posthistory.id, 
  posthistory.text, 
  comments.creationdate
from 
  posthistory
    inner join comments
    on (comments.id is NULL)
where posthistory.postid is not NULL
limit 81;
select  
  max(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as date) as date)), 
  comments.creationdate
from 
  comments
where comments.creationdate is not NULL;
select  
  users.reputation, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  postlinks.postid, 
  badges.date, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  postlinks.postid, 
  users.creationdate, 
  badges.date, 
  max(
    cast(cast(null as int2) as int2)), 
  postlinks.creationdate, 
  postlinks.creationdate
from 
  users
        inner join postlinks
        on (postlinks.linktypeid < users.upvotes)
      inner join users
      on (users.id <= postlinks.linktypeid)
    inner join users
      inner join badges
      on (users.id = badges.id )
    on (users.location is not NULL)
where users.profileimageurl is NULL;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is not NULL;
select  
  postlinks.creationdate, 
  badges.userid, 
  badges.name, 
  min(
    cast(cast(null as date) as date))
from 
  postlinks
      right join badges
      on (badges.class <= badges.class)
    inner join votes
    on (postlinks.relatedpostid is not NULL)
where badges.tagbased = badges.name
limit 29;
select distinct 
  votes.votetypeid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  votes.id, 
  votes.userid, 
  votes.postid, 
  postlinks.id, 
  votes.userid
from 
  postlinks
      left join votes
      on (postlinks.linktypeid > postlinks.linktypeid)
    inner join votes
    on (votes.id is NULL)
where postlinks.id is NULL
limit 133;
select  
  votes.postid, 
  votes.postid, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.votetypeid, 
  max(
    cast(votes.creationdate as timestamptz)), 
  min(
    cast(cast(null as "interval") as "interval")), 
  votes.userid, 
  votes.bountyamount
from 
  votes
where votes.creationdate <= votes.creationdate;
select  
  votes.id, 
  sum(
    cast(cast(null as float4) as float4))
from 
  votes
where votes.postid is NULL;
select  
  count(*), 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid
from 
  postlinks
where postlinks.postid is NULL
limit 136;
select  
  badges.id
from 
  users
      right join users
      on (users.creationdate <= users.creationdate)
    inner join badges
          right join badges
          on (badges.class >= badges.name)
        inner join posthistory
        on (badges.id >= badges.userid)
      left join comments
          inner join badges
              inner join posts
              on (badges.class <= posts.body)
            right join postlinks
            on (postlinks.linktypeid > badges.id)
          on (badges.userid < postlinks.linktypeid)
        inner join users
          inner join posthistory
          on (users.location = posthistory.userdisplayname )
        on (comments.id < users.id)
      on (posts.score < posts.parentid)
    on (users.accountid is not NULL)
where postlinks.id = users.upvotes;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.acceptedanswerid, 
  posts.viewcount, 
  posts.tags, 
  posts.lasteditordisplayname, 
  posts.lasteditoruserid, 
  posts.body, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posts.lastactivitydate, 
  sum(
    cast(cast(null as money) as money)), 
  posts.id, 
  posts.parentid, 
  posts.contentlicense, 
  posts.commentcount
from 
  posts
where posts.contentlicense is NULL
limit 131;
select  
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.userdisplayname, 
  comments.id, 
  postlinks.creationdate, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.posthistorytypeid, 
  posthistory.userdisplayname, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posthistory.text, 
  posthistory.text, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  badges
    inner join posthistory
      inner join posthistory
          inner join votes
            inner join posthistory
              left join posthistory
              on (posthistory.text < posthistory.contentlicense)
            on (posthistory.creationdate >= votes.creationdate)
          on (posthistory.contentlicense < posthistory.text)
        inner join posts
          inner join postlinks
            right join votes
              inner join comments
              on (votes.userid >= votes.bountyamount)
            on (votes.bountyamount > postlinks.postid)
          on (comments.userdisplayname > comments.userdisplayname)
        on (posts.viewcount <= posts.acceptedanswerid)
      on (posthistory.userid = posts.id )
    on (posts.lasteditdate is NULL)
where badges.name is not NULL
limit 182;
select  
  comments.postid, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.linktypeid, 
  posts.id
from 
  users
          left join badges
          on (users.reputation <= badges.userid)
        right join comments
        on (comments.userdisplayname = badges.class)
      inner join postlinks
      on (comments.score = postlinks.id )
    inner join posts
      inner join votes
      on (posts.closeddate >= posts.creationdate)
    on (postlinks.creationdate is not NULL)
where comments.userid is NULL;
select  
  postlinks.postid, 
  postlinks.postid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 160;
select  
  posts.viewcount, 
  badges.class, 
  users.aboutme, 
  users.creationdate, 
  posts.title, 
  users.displayname, 
  min(
    cast(cast(null as xid8) as xid8)), 
  posts.commentcount, 
  posts.id, 
  postlinks.id, 
  postlinks.creationdate, 
  users.upvotes, 
  badges.class, 
  badges.date, 
  users.accountid, 
  badges.date
from 
  postlinks
    inner join badges
          inner join posts
          on (posts.lasteditoruserid < posts.viewcount)
        inner join users
          inner join badges
          on (users.upvotes >= users.id)
        on (users.displayname >= badges.class)
      inner join postlinks
      on (posts.owneruserid = postlinks.id )
    on (badges.userid is not NULL)
where postlinks.postid is not NULL
limit 94;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  comments
    inner join votes
    on (comments.userdisplayname is NULL)
where comments.text is not NULL;
select  
  posthistory.text, 
  comments.text, 
  comments.userid, 
  comments.creationdate, 
  min(
    cast(cast(null as "time") as "time")), 
  users.downvotes, 
  comments.postid, 
  posts.score, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn))
from 
  posthistory
          left join users
          on (posthistory.userid < posthistory.id)
        right join votes
        on (users.lastaccessdate >= users.creationdate)
      inner join comments
      on (posthistory.userdisplayname <= users.websiteurl)
    left join posts
        right join comments
        on (posts.lastactivitydate = comments.creationdate )
      inner join posts
        left join posthistory
        on (posts.parentid > posts.score)
      on (posts.title > posthistory.userdisplayname)
    on (posts.lasteditdate >= posts.lasteditdate)
where users.reputation is not NULL
limit 139;
select  
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  badges.date, 
  postlinks.linktypeid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.date
from 
  badges
    right join postlinks
    on (badges.name is not NULL)
where badges.userid is not NULL
limit 83;
select  
  posts.ownerdisplayname, 
  min(
    cast(posts.body as text)), 
  posts.tags, 
  posthistory.creationdate
from 
  users
        inner join posts
              right join posts
              on (posts.body = posts.tags)
            inner join comments
              inner join posthistory
              on (posthistory.creationdate = posthistory.creationdate)
            on (posts.acceptedanswerid > comments.score)
          left join posthistory
          on (posthistory.id > posts.commentcount)
        on (posthistory.userdisplayname < posthistory.userdisplayname)
      right join badges
      on (posts.id < posts.owneruserid)
    inner join users
        left join posts
          right join badges
            inner join posthistory
            on (posthistory.id <= posthistory.postid)
          on (posts.lasteditdate > posts.communityowneddate)
        on (users.lastaccessdate = posts.closeddate)
      inner join postlinks
      on (posts.favoritecount > users.accountid)
    on (comments.id is not NULL)
where postlinks.linktypeid is not NULL
limit 140;
select  
  posts.contentlicense, 
  posts.lasteditordisplayname, 
  posts.id, 
  badges.userid, 
  postlinks.postid, 
  badges.tagbased, 
  badges.date, 
  max(
    cast(cast(null as oid) as oid)), 
  badges.name
from 
  postlinks
        inner join posts
        on (posts.creationdate > postlinks.creationdate)
      inner join badges
      on (posts.lasteditordisplayname >= posts.tags)
    inner join posts
    on (posts.owneruserid > posts.commentcount)
where posts.favoritecount < posts.viewcount
limit 175;
select  
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.comment is NULL
limit 103;
select  
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.linktypeid, 
  min(
    cast(postlinks.creationdate as timestamptz)), 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid
from 
  postlinks
where postlinks.id is NULL;
select  
  comments.postid, 
  comments.text, 
  comments.score, 
  comments.postid, 
  comments.score, 
  comments.userdisplayname
from 
  comments
where comments.text is not NULL
limit 85;
select  
  posts.lastactivitydate, 
  posts.title, 
  posts.creationdate, 
  posts.acceptedanswerid, 
  posts.id, 
  posts.viewcount, 
  posts.parentid, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posts.tags, 
  posts.lasteditoruserid, 
  posts.lastactivitydate, 
  posts.lastactivitydate, 
  posts.acceptedanswerid, 
  posts.creationdate, 
  posts.posttypeid, 
  posts.creationdate, 
  posts.title
from 
  posts
where posts.lasteditdate is NULL
limit 86;
select  
  posts.lasteditordisplayname, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posts.parentid, 
  min(
    cast(cast(null as int2) as int2))
from 
  posts
where posts.lasteditoruserid is NULL
limit 158;
select  
  users.profileimageurl
from 
  users
where users.displayname <= users.websiteurl;
select  
  users.upvotes, 
  badges.name, 
  comments.text, 
  comments.userdisplayname, 
  min(
    cast(cast(null as float4) as float4)), 
  badges.name, 
  users.reputation, 
  comments.creationdate, 
  badges.userid, 
  users.websiteurl, 
  posts.body, 
  postlinks.relatedpostid
from 
  comments
        right join badges
        on (badges.date > comments.creationdate)
      inner join posts
            inner join badges
              left join postlinks
              on (postlinks.creationdate < badges.date)
            on (posts.body < posts.contentlicense)
          right join users
          on (badges.date <= posts.closeddate)
        left join posts
          inner join comments
          on (posts.owneruserid = posts.commentcount)
        on (postlinks.linktypeid = comments.id )
      on (comments.postid = posts.id )
    inner join postlinks
      right join users
      on (users.id = users.accountid)
    on (posts.lasteditordisplayname = users.displayname )
where users.lastaccessdate > posts.lastactivitydate;
select  
  votes.votetypeid, 
  votes.userid, 
  sum(
    cast(cast(null as float8) as float8)), 
  votes.bountyamount, 
  votes.userid, 
  votes.postid, 
  min(
    cast(cast(null as date) as date)), 
  votes.id, 
  min(
    cast(cast(null as date) as date)), 
  votes.userid, 
  min(
    cast(74 as int4)), 
  votes.id, 
  votes.bountyamount, 
  max(
    cast(cast(null as text) as text)), 
  votes.votetypeid, 
  votes.postid, 
  votes.creationdate, 
  votes.userid
from 
  votes
where votes.creationdate is not NULL;
select  
  users.aboutme, 
  users.views
from 
  users
where users.profileimageurl is NULL;
select  
  badges.userid, 
  badges.id, 
  badges.class, 
  badges.date
from 
  badges
where badges.name is not NULL
limit 42;
select  
  votes.bountyamount
from 
  badges
            left join comments
            on (badges.name = comments.userdisplayname )
          right join comments
          on (badges.date < badges.date)
        right join postlinks
          inner join postlinks
            right join posts
              inner join comments
              on (posts.commentcount > posts.parentid)
            on (postlinks.id < posts.commentcount)
          on (postlinks.postid = comments.id )
        on (posts.communityowneddate > posts.lastactivitydate)
      left join posthistory
        left join badges
          inner join postlinks
          on (badges.name > badges.class)
        on (posthistory.userid = postlinks.id )
      on (posts.posttypeid <= posts.score)
    left join postlinks
          right join posthistory
          on (postlinks.relatedpostid < posthistory.posthistorytypeid)
        right join comments
          right join postlinks
          on (comments.score < postlinks.postid)
        on (comments.creationdate = postlinks.creationdate)
      inner join votes
      on (posthistory.userdisplayname = posthistory.text)
    on (comments.id is not NULL)
where badges.tagbased >= comments.userdisplayname;
select  
  badges.date, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  max(
    cast(cast(null as tid) as tid)), 
  posthistory.userdisplayname
from 
  badges
    inner join posthistory
      left join votes
      on (posthistory.creationdate >= posthistory.creationdate)
    on (badges.date = posthistory.creationdate )
where badges.userid is not NULL
limit 67;
select  
  votes.userid, 
  votes.id, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.postid, 
  votes.id, 
  sum(
    cast(cast(null as money) as money)), 
  votes.creationdate
from 
  votes
where votes.votetypeid is not NULL
limit 102;
select  
  postlinks.creationdate, 
  posts.lastactivitydate, 
  users.accountid, 
  posts.answercount, 
  badges.tagbased, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.creationdate, 
  posts.commentcount, 
  postlinks.linktypeid, 
  users.aboutme, 
  badges.tagbased, 
  users.accountid
from 
  posts
        right join badges
        on (posts.communityowneddate = posts.communityowneddate)
      inner join postlinks
          left join users
          on (postlinks.id = users.id )
        inner join badges
        on (users.reputation = users.accountid)
      on (posts.communityowneddate < posts.lasteditdate)
    inner join postlinks
    on (posts.body is NULL)
where badges.name is NULL
limit 64;
select  
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.postid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  users.id, 
  users.aboutme, 
  users.websiteurl, 
  users.profileimageurl, 
  users.location, 
  users.profileimageurl, 
  users.profileimageurl, 
  users.views, 
  users.accountid, 
  postlinks.id, 
  postlinks.postid, 
  users.displayname
from 
  users
    right join postlinks
    on (postlinks.relatedpostid is not NULL)
where postlinks.creationdate is not NULL
limit 99;
select  
  badges.class, 
  badges.class, 
  badges.tagbased, 
  badges.id, 
  sum(
    cast(cast(null as float8) as float8)), 
  badges.class, 
  max(
    cast(cast(null as inet) as inet))
from 
  badges
where badges.name is NULL
limit 110;
select  
  max(
    cast(cast(null as float4) as float4)), 
  badges.class, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.userdisplayname, 
  comments.id
from 
  badges
    inner join comments
    on (comments.creationdate is NULL)
where comments.id is NULL
limit 141;
select  
  votes.votetypeid, 
  comments.userdisplayname, 
  comments.text
from 
  votes
    inner join comments
    on (comments.score is NULL)
where votes.userid is NULL;
select  
  posts.body, 
  badges.date, 
  users.views, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.websiteurl, 
  badges.date
from 
  comments
              inner join posts
                inner join badges
                on (posts.owneruserid = badges.id )
              on (comments.postid = posts.id )
            inner join badges
            on (posts.lasteditdate < comments.creationdate)
          inner join users
          on (comments.score = users.id )
        inner join users
        on (users.creationdate > posts.communityowneddate)
      left join comments
      on (users.lastaccessdate <= badges.date)
    right join users
    on (badges.id is not NULL)
where badges.name is NULL;
select  
  comments.postid, 
  comments.userid, 
  max(
    cast(cast(null as inet) as inet)), 
  min(
    cast(17 as int4)), 
  comments.userdisplayname, 
  comments.postid, 
  comments.userdisplayname, 
  comments.postid, 
  comments.score
from 
  comments
where comments.score is NULL;
select  
  postlinks.postid, 
  avg(
    cast(postlinks.relatedpostid as int8))
from 
  postlinks
where postlinks.postid is NULL
limit 149;
select  
  votes.postid
from 
  votes
where votes.id is NULL
limit 144;
select  
  comments.text, 
  comments.creationdate, 
  comments.score
from 
  comments
where comments.creationdate < comments.creationdate
limit 193;
select  
  votes.creationdate, 
  votes.creationdate, 
  count(*), 
  votes.votetypeid
from 
  votes
where votes.id is not NULL;
select  
  postlinks.creationdate, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate is NULL
limit 39;
select  
  badges.tagbased, 
  postlinks.id, 
  votes.creationdate, 
  users.upvotes, 
  postlinks.id, 
  min(
    cast(cast(null as timetz) as timetz)), 
  votes.id, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  users.id
from 
  badges
          inner join badges
          on (badges.date > badges.date)
        inner join votes
        on (badges.name <= badges.name)
      inner join users
          inner join postlinks
          on (users.location < users.websiteurl)
        left join postlinks
        on (postlinks.creationdate >= postlinks.creationdate)
      on (badges.name < users.displayname)
    inner join comments
        right join badges
        on (comments.userdisplayname = comments.text)
      right join postlinks
      on (comments.creationdate <= badges.date)
    on (votes.bountyamount is not NULL)
where comments.userdisplayname is not NULL;
select  
  badges.name, 
  badges.date
from 
  badges
where badges.tagbased < badges.class;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  sum(
    cast(81 as int4)), 
  posthistory.creationdate, 
  comments.creationdate, 
  posthistory.creationdate, 
  comments.id, 
  posthistory.revisionguid
from 
  comments
    right join posthistory
    on (posthistory.text > posthistory.contentlicense)
where comments.text is not NULL
limit 129;
select distinct 
  users.upvotes, 
  users.id, 
  users.id, 
  count(
    cast(users.views as int8)), 
  users.profileimageurl, 
  users.websiteurl, 
  users.id, 
  min(
    cast(cast(null as oid) as oid)), 
  users.reputation, 
  users.id, 
  min(
    cast(users.upvotes as int8)), 
  min(
    cast(84 as int4)), 
  users.websiteurl, 
  users.profileimageurl, 
  users.websiteurl, 
  users.downvotes
from 
  users
where users.downvotes is NULL
limit 165;
select distinct 
  posthistory.creationdate, 
  posthistory.creationdate, 
  min(
    cast(cast(null as float8) as float8)), 
  min(
    cast(cast(null as int2) as int2))
from 
  posthistory
where posthistory.contentlicense is not NULL
limit 93;
select  
  votes.userid, 
  comments.postid
from 
  comments
          left join posthistory
          on (comments.score = posthistory.id )
        inner join votes
        on (votes.userid <= posthistory.posthistorytypeid)
      inner join users
        left join users
              inner join posts
              on (posts.closeddate < users.creationdate)
            left join posthistory
            on (users.websiteurl = posthistory.userdisplayname)
          left join users
          on (users.lastaccessdate > posts.communityowneddate)
        on (users.lastaccessdate > posts.communityowneddate)
      on (users.id > users.upvotes)
    right join posts
        left join comments
        on (posts.creationdate <= posts.lasteditdate)
      right join posthistory
        inner join votes
          right join comments
          on (comments.text >= comments.text)
        on (comments.id >= votes.bountyamount)
      on (comments.score = comments.id )
    on (users.profileimageurl = posts.ownerdisplayname )
where votes.postid is NULL
limit 59;
select  
  votes.id, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.bountyamount
from 
  votes
where votes.postid is not NULL
limit 92;
select  
  postlinks.postid, 
  postlinks.id, 
  postlinks.creationdate
from 
  postlinks
where postlinks.id is NULL
limit 46;
select  
  badges.userid, 
  badges.tagbased, 
  avg(
    cast(cast(null as float4) as float4)), 
  badges.id, 
  badges.class, 
  badges.userid, 
  badges.id, 
  badges.class, 
  badges.id, 
  badges.class, 
  badges.class, 
  max(
    cast(cast(null as money) as money)), 
  avg(
    cast(cast(null as float8) as float8)), 
  badges.id, 
  badges.name, 
  badges.name
from 
  badges
where badges.class is not NULL
limit 68;
select  
  votes.id, 
  votes.bountyamount, 
  votes.postid, 
  votes.id, 
  votes.id, 
  votes.id, 
  votes.votetypeid, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  votes.id, 
  votes.votetypeid, 
  votes.id, 
  votes.votetypeid, 
  votes.postid, 
  votes.votetypeid, 
  votes.userid, 
  votes.creationdate, 
  votes.userid, 
  votes.bountyamount, 
  votes.id, 
  votes.id, 
  votes.creationdate, 
  votes.postid, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  votes.votetypeid, 
  votes.bountyamount
from 
  votes
where votes.postid is not NULL
limit 39;
select  
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.creationdate <= postlinks.creationdate
limit 110;
select  
  max(
    cast(cast(null as oid) as oid))
from 
  badges
where badges.userid is not NULL
limit 133;
select  
  votes.votetypeid, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.postid, 
  votes.creationdate, 
  votes.postid, 
  votes.id, 
  votes.postid, 
  votes.bountyamount, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.id, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.creationdate, 
  max(
    cast(cast(null as money) as money)), 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.postid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  votes.userid, 
  votes.bountyamount, 
  votes.votetypeid, 
  count(
    cast(votes.votetypeid as int8)), 
  votes.postid, 
  sum(
    cast(votes.id as int8)), 
  max(
    cast(cast(null as timetz) as timetz)), 
  votes.creationdate, 
  votes.id, 
  votes.userid, 
  votes.id
from 
  votes
where votes.votetypeid is not NULL;
select  
  badges.id, 
  avg(
    cast(badges.userid as int8)), 
  badges.date, 
  sum(
    cast(76 as int4)), 
  badges.tagbased, 
  badges.date, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  sum(
    cast(18 as int4)), 
  badges.id
from 
  badges
where badges.userid is not NULL
limit 155;
select  
  posthistory.text, 
  posthistory.userid, 
  posts.answercount, 
  posthistory.contentlicense, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posts.lasteditordisplayname, 
  posthistory.postid, 
  postlinks.postid
from 
  badges
        right join badges
        on (badges.date <= badges.date)
      inner join posthistory
      on (badges.tagbased = posthistory.userdisplayname )
    inner join posts
      left join postlinks
      on (postlinks.creationdate < posts.closeddate)
    on (badges.id is not NULL)
where postlinks.relatedpostid is NULL;
select  
  badges.name
from 
  badges
where badges.tagbased is NULL;
select  
  badges.tagbased, 
  count(*), 
  comments.userid, 
  votes.creationdate, 
  votes.bountyamount, 
  posts.contentlicense, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  comments.score, 
  badges.name, 
  posthistory.posthistorytypeid, 
  comments.id, 
  comments.text, 
  posts.communityowneddate, 
  posts.lasteditdate, 
  votes.postid
from 
  posthistory
        left join votes
          inner join comments
          on (votes.postid = comments.id )
        on (posthistory.posthistorytypeid > comments.userid)
      right join badges
      on (posthistory.contentlicense > badges.tagbased)
    inner join badges
      right join posts
        left join comments
        on (posts.lastactivitydate > posts.communityowneddate)
      on (comments.id > posts.posttypeid)
    on (badges.name is not NULL)
where badges.userid is NULL;
select  
  votes.bountyamount, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.bountyamount, 
  users.location, 
  votes.votetypeid
from 
  votes
    right join users
    on (users.location is NULL)
where votes.votetypeid is not NULL
limit 21;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posts.lasteditoruserid, 
  badges.userid, 
  votes.creationdate, 
  badges.tagbased, 
  badges.date, 
  votes.id, 
  votes.creationdate, 
  votes.id, 
  posts.lasteditordisplayname, 
  votes.postid, 
  posts.lastactivitydate, 
  posts.score, 
  posts.title, 
  badges.name, 
  votes.postid, 
  votes.bountyamount, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  badges.id, 
  posts.id
from 
  posts
    right join badges
      left join posts
        right join votes
        on (posts.creationdate >= posts.lastactivitydate)
      on (badges.userid = votes.id )
    on (badges.class is NULL)
where posts.posttypeid is not NULL;
select  
  posthistory.text, 
  posts.lastactivitydate, 
  comments.text, 
  posts.parentid, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  comments.id, 
  posthistory.contentlicense, 
  posthistory.userid
from 
  posthistory
    right join posthistory
        inner join comments
        on (comments.id < comments.id)
      left join posts
      on (comments.id = comments.score)
    on (posthistory.creationdate = posts.creationdate )
where comments.text is NULL
limit 122;
select  
  posthistory.revisionguid, 
  posthistory.posthistorytypeid, 
  posthistory.userdisplayname, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.contentlicense is not NULL
limit 41;
select  
  users.id, 
  users.reputation, 
  users.displayname, 
  users.downvotes
from 
  users
where users.reputation is NULL
limit 157;
select  
  votes.userid, 
  votes.bountyamount, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.userid, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.postid, 
  max(
    cast(cast(null as inet) as inet))
from 
  votes
where votes.creationdate = votes.creationdate;
select  
  posthistory.posthistorytypeid, 
  posthistory.posthistorytypeid, 
  posthistory.id, 
  posthistory.revisionguid
from 
  posthistory
where posthistory.userdisplayname > posthistory.text
limit 162;
select  
  users.upvotes, 
  users.id, 
  avg(
    cast(33 as int4)), 
  users.lastaccessdate, 
  users.lastaccessdate, 
  users.downvotes
from 
  users
where users.profileimageurl is not NULL;
select  
  badges.class, 
  badges.class, 
  badges.name, 
  badges.id, 
  badges.id, 
  badges.class, 
  badges.date
from 
  badges
where badges.id > badges.id
limit 112;
select  
  max(
    cast(cast(null as anyenum) as anyenum)), 
  badges.date, 
  badges.date, 
  badges.class, 
  min(
    cast(cast(null as float4) as float4)), 
  badges.name, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  badges
where badges.tagbased < badges.name
limit 192;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.id, 
  sum(
    cast(44 as int4)), 
  badges.class, 
  votes.bountyamount, 
  min(
    cast(cast(null as float8) as float8)), 
  badges.date, 
  badges.userid, 
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  badges
    left join votes
    on (badges.date > badges.date)
where badges.tagbased is not NULL
limit 127;
select  
  comments.userid
from 
  comments
where comments.postid is not NULL
limit 104;
select  
  votes.votetypeid
from 
  votes
    right join votes
    on (votes.creationdate <= votes.creationdate)
where votes.bountyamount > votes.votetypeid
limit 104;
select  
  postlinks.linktypeid, 
  users.displayname
from 
  users
    inner join comments
      inner join postlinks
      on (comments.score = postlinks.id )
    on (users.reputation is not NULL)
where users.location <= users.websiteurl
limit 107;
select  
  posts.ownerdisplayname, 
  posthistory.comment, 
  posthistory.userdisplayname, 
  posts.communityowneddate, 
  posts.commentcount, 
  max(
    cast(cast(null as int2) as int2)), 
  posthistory.userdisplayname, 
  posts.id
from 
  posthistory
    left join posts
    on (posts.creationdate >= posts.communityowneddate)
where posts.closeddate is NULL
limit 57;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  votes.creationdate, 
  users.location, 
  users.profileimageurl, 
  votes.postid, 
  votes.userid, 
  votes.userid, 
  min(
    cast(cast(null as float4) as float4))
from 
  users
      right join votes
      on (users.id <= votes.id)
    left join posthistory
    on (posthistory.comment is NULL)
where users.creationdate < posthistory.creationdate
limit 138;
select  
  max(
    cast(posthistory.creationdate as timestamptz)), 
  posthistory.userid, 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.userid is not NULL
limit 109;
select  
  badges.name, 
  badges.tagbased, 
  avg(
    cast(cast(null as float8) as float8)), 
  posthistory.userid, 
  posts.lasteditoruserid, 
  posthistory.userid, 
  posts.score, 
  posthistory.comment, 
  badges.userid
from 
  postlinks
      left join badges
          inner join posthistory
          on (posthistory.userid > badges.id)
        right join postlinks
            left join postlinks
            on (postlinks.relatedpostid = postlinks.id )
          left join posthistory
          on (posthistory.creationdate >= posthistory.creationdate)
        on (badges.date = postlinks.creationdate )
      on (badges.id >= posthistory.userid)
    left join posts
    on (posthistory.text >= posts.contentlicense)
where postlinks.linktypeid >= postlinks.linktypeid;
select  
  badges.userid, 
  badges.userid, 
  badges.tagbased
from 
  badges
where badges.name is NULL
limit 100;
select  
  votes.bountyamount, 
  votes.id, 
  votes.votetypeid
from 
  votes
where votes.userid is NULL;
select  
  badges.userid, 
  badges.tagbased, 
  badges.id, 
  badges.id
from 
  badges
where badges.name is NULL
limit 150;
select  
  badges.date, 
  posts.commentcount, 
  comments.postid, 
  postlinks.linktypeid, 
  postlinks.creationdate
from 
  badges
          right join comments
              inner join posts
                left join badges
                on (posts.communityowneddate = posts.lasteditdate)
              on (comments.text < badges.name)
            right join posts
            on (posts.title <= posts.tags)
          on (badges.id = badges.id )
        inner join postlinks
        on (posts.posttypeid = postlinks.id )
      left join badges
      on (posts.lastactivitydate < posts.lasteditdate)
    right join postlinks
    on (badges.id is not NULL)
where comments.text <= posts.contentlicense
limit 122;
select  
  comments.creationdate
from 
  comments
where comments.text is not NULL;
select  
  postlinks.creationdate, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.bountyamount, 
  postlinks.creationdate, 
  users.reputation, 
  users.location, 
  votes.bountyamount, 
  min(
    cast(cast(null as float4) as float4)), 
  count(*), 
  sum(
    cast(cast(null as float8) as float8)), 
  postlinks.postid, 
  postlinks.linktypeid, 
  users.profileimageurl, 
  postlinks.postid, 
  votes.creationdate, 
  min(
    cast(cast(null as oid) as oid)), 
  users.aboutme, 
  comments.userid, 
  votes.userid
from 
  users
    inner join postlinks
      inner join users
            inner join comments
            on (users.aboutme <= users.location)
          right join posthistory
          on (users.reputation = posthistory.id )
        right join votes
        on (users.views = comments.score)
      on (comments.creationdate = users.creationdate)
    on (users.downvotes is NULL)
where posthistory.userid is not NULL;
select  
  postlinks.postid
from 
  postlinks
where postlinks.postid = postlinks.postid
limit 123;
select  
  votes.userid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.bountyamount, 
  votes.bountyamount, 
  votes.postid, 
  votes.userid, 
  votes.creationdate, 
  votes.bountyamount
from 
  votes
where votes.votetypeid is not NULL
limit 72;
select  
  postlinks.creationdate
from 
  votes
    left join comments
        inner join posts
        on (posts.owneruserid > comments.userid)
      right join badges
            inner join badges
            on (badges.name >= badges.tagbased)
          inner join postlinks
          on (postlinks.postid < badges.userid)
        left join postlinks
          left join votes
          on (votes.bountyamount <= postlinks.relatedpostid)
        on (badges.date > postlinks.creationdate)
      on (badges.date = badges.date)
    on (votes.creationdate = postlinks.creationdate )
where votes.userid is not NULL;
select  
  postlinks.postid, 
  postlinks.creationdate, 
  badges.tagbased, 
  postlinks.linktypeid
from 
  postlinks
    right join badges
    on (badges.date is not NULL)
where badges.date is not NULL
limit 176;
select  
  posthistory.posthistorytypeid, 
  votes.id, 
  badges.date, 
  min(
    cast(cast(null as date) as date))
from 
  badges
      inner join votes
          inner join postlinks
          on (postlinks.postid > postlinks.postid)
        inner join posts
          left join posthistory
          on (posts.id <= posthistory.posthistorytypeid)
        on (postlinks.id = posts.id )
      on (posts.body > posts.title)
    inner join badges
    on (posts.title = badges.class )
where posts.commentcount < votes.bountyamount
limit 82;
select  
  posts.contentlicense, 
  posts.creationdate, 
  votes.votetypeid, 
  posts.commentcount, 
  min(
    cast(cast(null as xid8) as xid8))
from 
  votes
    inner join posts
    on (posts.lasteditordisplayname = posts.contentlicense)
where posts.lasteditoruserid is not NULL
limit 73;
select  
  posthistory.contentlicense, 
  posthistory.posthistorytypeid, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posthistory.postid, 
  posthistory.postid, 
  posthistory.revisionguid, 
  posthistory.userdisplayname, 
  posthistory.userid, 
  posthistory.id, 
  min(
    cast(cast(null as oid) as oid)), 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.comment is not NULL
limit 101;
select  
  posthistory.text, 
  postlinks.creationdate
from 
  comments
      inner join posts
              right join users
              on (users.websiteurl < posts.contentlicense)
            left join badges
            on (posts.owneruserid < badges.id)
          inner join posts
          on (posts.tags <= users.location)
        right join votes
          right join posts
          on (votes.userid <= votes.userid)
        on (posts.lasteditoruserid < votes.bountyamount)
      on (badges.tagbased = users.websiteurl)
    left join badges
      inner join posthistory
          left join postlinks
          on (posthistory.revisionguid > posthistory.contentlicense)
        inner join comments
            right join posthistory
              left join badges
              on (badges.date <= badges.date)
            on (badges.userid <= badges.id)
          inner join badges
          on (badges.tagbased <= comments.text)
        on (badges.date = comments.creationdate)
      on (comments.postid > posthistory.id)
    on (posts.viewcount = posthistory.id )
where posthistory.userid >= votes.id
limit 11;
select  
  min(
    cast(badges.class as text)), 
  votes.id
from 
  votes
      left join votes
        inner join posthistory
        on (posthistory.contentlicense > posthistory.comment)
      on (votes.creationdate <= votes.creationdate)
    right join postlinks
        left join badges
          left join users
            left join postlinks
            on (postlinks.creationdate > users.lastaccessdate)
          on (badges.userid > users.downvotes)
        on (users.location > badges.class)
      inner join posts
        right join badges
              inner join postlinks
              on (postlinks.relatedpostid >= badges.id)
            left join badges
                left join postlinks
                on (postlinks.relatedpostid <= badges.userid)
              inner join postlinks
              on (postlinks.postid = postlinks.postid)
            on (postlinks.creationdate < badges.date)
          left join posts
            left join badges
              right join comments
                inner join posts
                on (posts.owneruserid >= comments.score)
              on (comments.score < comments.score)
            on (posts.contentlicense = posts.title)
          on (posts.creationdate < postlinks.creationdate)
        on (posts.lasteditdate = comments.creationdate )
      on (postlinks.postid > comments.id)
    on (votes.bountyamount = postlinks.id )
where posthistory.text is not NULL;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.userdisplayname
from 
  posthistory
    left join posthistory
        inner join posts
        on (posts.contentlicense > posthistory.text)
      left join badges
        inner join votes
          inner join badges
          on (badges.class >= badges.tagbased)
        on (badges.id >= votes.bountyamount)
      on (posts.tags <= badges.tagbased)
    on (posts.creationdate < posthistory.creationdate)
where votes.creationdate >= posts.closeddate
limit 31;
select  
  postlinks.linktypeid, 
  users.views, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.postid, 
  badges.tagbased, 
  count(*), 
  users.id, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  posts.acceptedanswerid, 
  users.upvotes, 
  users.profileimageurl, 
  users.lastaccessdate, 
  users.profileimageurl, 
  badges.name, 
  posts.acceptedanswerid, 
  users.creationdate, 
  postlinks.linktypeid, 
  users.displayname, 
  users.lastaccessdate, 
  users.downvotes, 
  postlinks.id
from 
  users
        right join badges
        on (users.websiteurl <= badges.name)
      right join posts
          right join users
            right join postlinks
            on (users.location >= users.location)
          on (posts.communityowneddate > posts.lasteditdate)
        inner join postlinks
        on (posts.lastactivitydate >= posts.lasteditdate)
      on (badges.class = badges.name)
    right join users
      inner join users
      on (users.accountid = users.reputation)
    on (users.profileimageurl < posts.body)
where users.reputation is NULL
limit 44;
select  
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.postid
from 
  postlinks
where postlinks.creationdate is NULL
limit 134;
select  
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  comments
    left join users
    on (users.location <= comments.userdisplayname)
where users.accountid is not NULL
limit 104;
select  
  users.creationdate, 
  users.location, 
  users.views
from 
  users
where users.reputation >= users.upvotes
limit 101;
select  
  users.creationdate
from 
  badges
    inner join comments
        right join users
          inner join users
          on (users.websiteurl = users.profileimageurl)
        on (users.creationdate > users.lastaccessdate)
      right join postlinks
      on (postlinks.postid > postlinks.id)
    on (users.profileimageurl > users.websiteurl)
where comments.postid is NULL
limit 121;
select  
  max(
    cast(cast(null as money) as money)), 
  badges.userid
from 
  badges
where badges.tagbased is NULL;
select  
  posts.id, 
  posts.lastactivitydate, 
  posts.body, 
  posts.lasteditoruserid, 
  posts.lasteditoruserid
from 
  posts
    inner join posts
    on (posts.acceptedanswerid > posts.posttypeid)
where posts.ownerdisplayname = posts.title
limit 88;
select  
  badges.id, 
  badges.userid, 
  badges.id, 
  posthistory.userid, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  badges
      inner join posthistory
      on (badges.date < posthistory.creationdate)
    right join comments
    on (posthistory.creationdate is not NULL)
where comments.postid is NULL
limit 53;
select  
  users.displayname, 
  users.accountid
from 
  users
    inner join posthistory
    on (users.creationdate is not NULL)
where users.creationdate is NULL;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  sum(
    cast(cast(null as float4) as float4)), 
  votes.bountyamount, 
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  comments
        left join posts
        on (posts.communityowneddate > comments.creationdate)
      inner join posthistory
            right join badges
            on (badges.date = posthistory.creationdate)
          inner join posts
            inner join votes
            on (posts.creationdate = votes.creationdate )
          on (posts.posttypeid >= posts.favoritecount)
        left join users
            left join postlinks
            on (users.aboutme <= users.profileimageurl)
          left join users
          on (users.profileimageurl = users.websiteurl)
        on (posts.contentlicense < posthistory.userdisplayname)
      on (posts.ownerdisplayname >= posts.title)
    inner join posts
      right join users
        inner join postlinks
          left join users
            inner join votes
            on (users.profileimageurl = users.profileimageurl)
          on (postlinks.linktypeid < users.upvotes)
        on (votes.creationdate > users.creationdate)
      on (posts.creationdate < postlinks.creationdate)
    on (posthistory.text is NULL)
where posts.parentid is not NULL
limit 135;
select  
  postlinks.postid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.postid is NULL;
select  
  votes.votetypeid
from 
  posthistory
    inner join comments
      left join votes
        right join badges
        on (badges.date <= votes.creationdate)
      on (badges.userid > badges.id)
    on (badges.name is NULL)
where posthistory.comment is not NULL;
select  
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  posthistory.text, 
  badges.class, 
  posthistory.creationdate, 
  badges.id
from 
  posthistory
    right join badges
    on (posthistory.contentlicense <= posthistory.comment)
where posthistory.creationdate is NULL
limit 42;
select  
  users.aboutme, 
  users.location
from 
  users
    inner join comments
      inner join posts
      on (comments.userdisplayname = posts.title)
    on (users.location is not NULL)
where comments.userdisplayname is NULL;
select  
  badges.class, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  badges
where badges.userid is not NULL
limit 100;
select  
  users.downvotes, 
  users.views, 
  users.location, 
  users.creationdate, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  min(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as float4) as float4)), 
  max(
    cast(cast(null as date) as date)), 
  users.location, 
  users.accountid, 
  users.displayname, 
  users.views, 
  users.aboutme
from 
  users
where users.lastaccessdate is NULL
limit 88;
select  
  posts.closeddate, 
  comments.userdisplayname
from 
  posts
    inner join badges
        right join posts
        on (posts.lasteditordisplayname <= posts.tags)
      inner join comments
      on (posts.lasteditdate > posts.lasteditdate)
    on (posts.contentlicense is NULL)
where posts.title is NULL
limit 125;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  votes.bountyamount
from 
  comments
      inner join postlinks
          right join votes
            inner join posthistory
            on (posthistory.contentlicense >= posthistory.userdisplayname)
          on (posthistory.revisionguid > posthistory.text)
        inner join posts
        on (posts.score >= posts.acceptedanswerid)
      on (comments.score < posts.favoritecount)
    left join badges
    on (posthistory.userdisplayname = badges.class )
where posts.lasteditdate is not NULL
limit 75;
select  
  badges.id, 
  badges.userid, 
  max(
    cast(cast(null as xid8) as xid8)), 
  badges.name
from 
  badges
where badges.userid is NULL
limit 142;
select  
  users.creationdate, 
  users.accountid, 
  users.accountid, 
  users.displayname, 
  users.creationdate, 
  avg(
    cast(91 as int4)), 
  users.views, 
  users.profileimageurl
from 
  users
where users.profileimageurl is NULL
limit 29;
select  
  comments.postid, 
  posthistory.creationdate, 
  posthistory.comment, 
  posthistory.postid, 
  min(
    cast(cast(null as money) as money))
from 
  posthistory
        left join posthistory
        on (posthistory.creationdate >= posthistory.creationdate)
      inner join comments
        left join posts
          inner join posts
          on (posts.viewcount >= posts.viewcount)
        on (comments.creationdate <= posts.creationdate)
      on (posthistory.creationdate = comments.creationdate )
    inner join users
    on (posthistory.revisionguid is not NULL)
where users.creationdate >= posts.lastactivitydate;
select  
  users.id, 
  users.reputation
from 
  users
where users.creationdate >= users.creationdate
limit 86;
select  
  comments.userdisplayname, 
  comments.postid, 
  min(
    cast(comments.creationdate as timestamptz)), 
  posts.owneruserid, 
  badges.class
from 
  posts
    inner join badges
      inner join comments
      on (comments.text >= badges.class)
    on (posts.score = badges.id )
where posts.lasteditdate < comments.creationdate
limit 56;
select  
  comments.creationdate, 
  comments.userdisplayname
from 
  comments
where comments.text is not NULL
limit 77;
select  
  min(
    cast(cast(null as float4) as float4))
from 
  posts
where posts.contentlicense < posts.tags
limit 109;
select  
  badges.userid, 
  badges.name, 
  badges.userid, 
  badges.tagbased, 
  badges.id
from 
  badges
where badges.class is NULL
limit 140;
select  
  posts.body, 
  posts.id, 
  posts.contentlicense, 
  badges.id, 
  posts.acceptedanswerid, 
  min(
    cast(cast(null as float8) as float8)), 
  sum(
    cast(71 as int4)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  badges.class, 
  badges.tagbased, 
  badges.class
from 
  badges
    right join posts
    on (posts.answercount > posts.owneruserid)
where posts.ownerdisplayname is NULL
limit 174;
select  
  comments.postid, 
  comments.postid, 
  sum(
    cast(comments.userid as int8)), 
  comments.text, 
  comments.text, 
  comments.id
from 
  comments
where comments.postid is NULL
limit 107;
select  
  votes.id, 
  max(
    cast(cast(null as tid) as tid)), 
  votes.creationdate, 
  votes.id, 
  votes.userid, 
  votes.creationdate, 
  votes.postid, 
  votes.postid, 
  votes.votetypeid
from 
  votes
where votes.userid is NULL
limit 94;
select  
  postlinks.id, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  min(
    cast(postlinks.postid as int8)), 
  postlinks.creationdate, 
  postlinks.id, 
  min(
    cast(70 as int4)), 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.id, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate >= postlinks.creationdate
limit 95;
select  
  votes.creationdate
from 
  votes
where votes.votetypeid is not NULL
limit 137;
select  
  posts.creationdate, 
  comments.userdisplayname, 
  comments.text, 
  posts.lasteditoruserid
from 
  comments
    right join badges
      inner join votes
        inner join posts
        on (posts.favoritecount > posts.lasteditoruserid)
      on (posts.answercount < votes.userid)
    on (badges.id is NULL)
where badges.tagbased is NULL
limit 17;
select  
  posthistory.userdisplayname, 
  posthistory.contentlicense
from 
  posthistory
    left join posthistory
      inner join posthistory
        left join posthistory
        on (posthistory.creationdate = posthistory.creationdate)
      on (posthistory.contentlicense = posthistory.userdisplayname )
    on (posthistory.creationdate >= posthistory.creationdate)
where posthistory.id is NULL
limit 97;
select  
  postlinks.relatedpostid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.postid is not NULL
limit 44;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posthistory.creationdate, 
  posthistory.contentlicense, 
  posthistory.revisionguid
from 
  postlinks
          left join posthistory
          on (postlinks.relatedpostid > postlinks.id)
        inner join posthistory
        on (posthistory.comment <= posthistory.text)
      right join posts
          right join users
            inner join posthistory
            on (posthistory.id = users.downvotes)
          on (posts.communityowneddate = posthistory.creationdate )
        left join comments
        on (posts.id < users.reputation)
      on (comments.creationdate <= users.lastaccessdate)
    left join postlinks
    on (users.location is NULL)
where posts.lasteditordisplayname = users.location
limit 111;
select  
  sum(
    cast(38 as int4)), 
  badges.date, 
  badges.class, 
  votes.votetypeid, 
  min(
    cast(cast(null as int2) as int2)), 
  votes.bountyamount, 
  postlinks.creationdate, 
  postlinks.linktypeid
from 
  badges
          right join badges
          on (badges.class <= badges.name)
        right join votes
        on (badges.date = votes.creationdate)
      right join postlinks
      on (badges.date <= badges.date)
    inner join postlinks
    on (badges.date < badges.date)
where postlinks.creationdate is NULL
limit 183;
select  
  posts.tags, 
  posts.contentlicense, 
  posts.lasteditordisplayname, 
  posts.viewcount, 
  posts.lasteditordisplayname
from 
  posts
where posts.communityowneddate is NULL
limit 147;
select  
  votes.id, 
  votes.userid, 
  votes.id, 
  votes.creationdate, 
  sum(
    cast(cast(null as float8) as float8))
from 
  votes
    left join postlinks
    on (votes.creationdate <= votes.creationdate)
where postlinks.creationdate = votes.creationdate;
select  
  posts.ownerdisplayname, 
  posts.tags
from 
  posts
where posts.lasteditordisplayname < posts.body
limit 121;
select  
  comments.userdisplayname, 
  min(
    cast(81 as int4)), 
  comments.postid, 
  comments.id, 
  posts.answercount
from 
  posts
    inner join comments
    on (posts.favoritecount is NULL)
where posts.communityowneddate <= posts.communityowneddate;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  comments.creationdate
from 
  comments
          left join votes
          on (comments.creationdate < votes.creationdate)
        inner join postlinks
        on (comments.text >= comments.userdisplayname)
      inner join users
      on (votes.bountyamount = users.id )
    inner join badges
      right join votes
      on (badges.date <= votes.creationdate)
    on (votes.postid is not NULL)
where users.creationdate is NULL;
select  
  posts.acceptedanswerid, 
  max(
    cast(cast(null as "time") as "time")), 
  posts.favoritecount, 
  badges.class, 
  posts.lastactivitydate, 
  badges.userid, 
  posts.viewcount, 
  posts.lasteditdate, 
  badges.class, 
  posts.lastactivitydate
from 
  posts
    right join posts
        inner join badges
        on (posts.tags <= posts.ownerdisplayname)
      right join badges
      on (badges.class <= posts.title)
    on (badges.date is NULL)
where posts.contentlicense = badges.tagbased;
select  
  users.upvotes, 
  posts.acceptedanswerid, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  users.profileimageurl, 
  posts.id, 
  badges.name
from 
  posts
          left join users
          on (posts.viewcount <= users.views)
        inner join posts
          inner join comments
          on (posts.lasteditordisplayname >= posts.ownerdisplayname)
        on (posts.title <= posts.title)
      right join badges
        right join badges
          inner join badges
            left join postlinks
              right join postlinks
                right join posthistory
                on (posthistory.posthistorytypeid <= postlinks.id)
              on (posthistory.userdisplayname > posthistory.comment)
            on (badges.tagbased = posthistory.text)
          on (postlinks.creationdate < postlinks.creationdate)
        on (postlinks.creationdate = postlinks.creationdate)
      on (users.creationdate <= posts.communityowneddate)
    right join comments
      inner join users
      on (users.aboutme <= users.displayname)
    on (posts.title is not NULL)
where comments.id <= posts.lasteditoruserid;
select  
  badges.tagbased, 
  posthistory.postid, 
  posthistory.userdisplayname, 
  badges.class, 
  badges.id, 
  badges.date, 
  badges.tagbased, 
  badges.tagbased, 
  posthistory.postid, 
  badges.tagbased, 
  posthistory.text
from 
  posthistory
    inner join badges
    on (badges.id is not NULL)
where posthistory.contentlicense is not NULL
limit 97;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.lastaccessdate, 
  users.location, 
  badges.id, 
  users.downvotes, 
  max(
    cast(cast(null as "time") as "time")), 
  badges.userid, 
  users.creationdate, 
  avg(
    cast(cast(null as float4) as float4)), 
  postlinks.postid, 
  users.profileimageurl, 
  postlinks.id, 
  badges.userid, 
  users.displayname, 
  comments.postid, 
  users.aboutme, 
  comments.text, 
  comments.userid, 
  comments.postid, 
  badges.date, 
  badges.name, 
  users.creationdate, 
  min(
    cast(cast(null as xid8) as xid8)), 
  postlinks.creationdate, 
  badges.userid, 
  comments.id, 
  badges.class, 
  badges.date
from 
  postlinks
          inner join badges
          on (postlinks.creationdate = postlinks.creationdate)
        inner join users
        on (users.reputation < users.reputation)
      right join comments
        right join badges
        on (badges.name = comments.text)
      on (postlinks.creationdate > users.lastaccessdate)
    left join comments
    on (badges.date >= badges.date)
where postlinks.relatedpostid is not NULL
limit 41;
select  
  postlinks.postid, 
  postlinks.postid
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 122;
select  
  votes.votetypeid, 
  max(
    cast(cast(null as "time") as "time"))
from 
  votes
        inner join users
        on (users.websiteurl >= users.websiteurl)
      inner join users
          right join comments
            left join users
            on (comments.score < comments.postid)
          on (comments.userdisplayname = users.location)
        right join votes
          left join posts
          on (posts.lastactivitydate >= posts.closeddate)
        on (posts.tags = comments.text)
      on (posts.id >= votes.id)
    inner join badges
        right join posts
        on (badges.class = posts.ownerdisplayname )
      right join users
            left join users
            on (users.websiteurl = users.displayname )
          left join votes
              left join badges
              on (votes.id = badges.id )
            inner join votes
            on (votes.creationdate >= badges.date)
          on (users.accountid = votes.id )
        left join users
        on (users.aboutme >= users.aboutme)
      on (users.location <= users.location)
    on (votes.userid is not NULL)
where votes.id is not NULL
limit 140;
select  
  max(
    cast(cast(null as anyarray) as anyarray)), 
  users.id
from 
  users
where users.downvotes is not NULL;
select  
  min(
    cast(cast(null as timetz) as timetz)), 
  votes.creationdate, 
  count(*), 
  comments.text, 
  votes.id, 
  postlinks.id, 
  votes.creationdate, 
  comments.creationdate, 
  users.aboutme, 
  postlinks.linktypeid, 
  users.lastaccessdate
from 
  votes
          left join votes
          on (votes.postid <= votes.userid)
        inner join users
          inner join posthistory
            inner join votes
            on (posthistory.revisionguid <= posthistory.revisionguid)
          on (users.accountid = posthistory.id )
        on (posthistory.posthistorytypeid < users.upvotes)
      inner join postlinks
      on (posthistory.userid <= users.accountid)
    inner join users
      inner join comments
        inner join votes
        on (votes.bountyamount = votes.votetypeid)
      on (users.upvotes >= users.id)
    on (votes.creationdate = comments.creationdate )
where users.aboutme < posthistory.contentlicense
limit 84;
select  
  posthistory.postid, 
  posthistory.userdisplayname, 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  posthistory.comment, 
  posthistory.creationdate, 
  posthistory.comment, 
  posthistory.text, 
  max(
    cast(cast(null as "interval") as "interval")), 
  posthistory.text, 
  posthistory.contentlicense, 
  posthistory.postid
from 
  posthistory
where posthistory.id < posthistory.postid;
select  
  votes.votetypeid, 
  votes.votetypeid, 
  min(
    cast(cast(null as tid) as tid))
from 
  votes
where votes.id is NULL
limit 106;
select  
  postlinks.relatedpostid, 
  badges.id, 
  users.accountid, 
  badges.userid, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.date, 
  badges.tagbased, 
  max(
    cast(cast(null as "time") as "time"))
from 
  posthistory
        inner join badges
        on (badges.date > posthistory.creationdate)
      left join badges
              inner join users
              on (badges.tagbased >= users.websiteurl)
            inner join comments
            on (users.creationdate <= badges.date)
          inner join postlinks
              right join postlinks
              on (postlinks.linktypeid = postlinks.postid)
            left join votes
            on (postlinks.relatedpostid < votes.votetypeid)
          on (postlinks.creationdate <= postlinks.creationdate)
        right join users
        on (votes.creationdate < comments.creationdate)
      on (comments.text > badges.tagbased)
    inner join votes
      left join badges
        inner join badges
        on (badges.date = badges.date)
      on (badges.name <= badges.name)
    on (users.upvotes = badges.id )
where users.profileimageurl = badges.class;
select  
  users.profileimageurl, 
  users.lastaccessdate, 
  min(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as inet) as inet)), 
  users.views
from 
  users
where users.lastaccessdate is NULL;
select  
  max(
    cast(cast(null as oid) as oid)), 
  postlinks.creationdate, 
  posthistory.text, 
  postlinks.id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  comments.score
from 
  comments
      inner join badges
      on (comments.userid = badges.id )
    right join postlinks
          inner join posthistory
          on (posthistory.creationdate > posthistory.creationdate)
        right join postlinks
          inner join postlinks
          on (postlinks.creationdate >= postlinks.creationdate)
        on (posthistory.revisionguid < posthistory.contentlicense)
      inner join comments
      on (comments.id >= comments.postid)
    on (postlinks.creationdate is NULL)
where postlinks.id is not NULL
limit 43;
select  
  votes.bountyamount, 
  votes.votetypeid, 
  votes.votetypeid, 
  max(
    cast(cast(null as int2) as int2))
from 
  votes
where votes.id is not NULL
limit 153;
select  
  votes.postid, 
  votes.votetypeid, 
  votes.creationdate
from 
  votes
where votes.bountyamount is NULL
limit 124;
select  
  users.displayname, 
  users.downvotes, 
  max(
    cast(cast(null as inet) as inet)), 
  users.displayname, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  users.websiteurl, 
  users.lastaccessdate, 
  users.profileimageurl
from 
  users
where users.websiteurl is NULL
limit 113;
select  
  users.upvotes, 
  postlinks.postid, 
  posthistory.postid, 
  postlinks.id, 
  users.reputation, 
  posthistory.userid
from 
  postlinks
      right join users
      on (users.aboutme > users.displayname)
    right join posthistory
    on (users.profileimageurl > users.websiteurl)
where users.creationdate is NULL;
select  
  posthistory.userid, 
  posthistory.id, 
  postlinks.id
from 
  badges
                right join posts
                on (posts.ownerdisplayname >= posts.ownerdisplayname)
              left join posthistory
              on (posts.contentlicense > posts.lasteditordisplayname)
            inner join users
            on (badges.tagbased <= posthistory.contentlicense)
          inner join postlinks
          on (posts.score > postlinks.postid)
        right join posthistory
        on (posts.lastactivitydate < posts.lasteditdate)
      left join posts
      on (posts.closeddate > posts.lastactivitydate)
    inner join votes
    on (posts.lasteditdate is not NULL)
where votes.id is not NULL;
select  
  badges.date
from 
  badges
where badges.id is not NULL
limit 105;
select  
  posthistory.creationdate, 
  posthistory.userdisplayname, 
  badges.id, 
  badges.name, 
  posthistory.userdisplayname, 
  badges.id, 
  comments.postid, 
  posthistory.revisionguid, 
  posthistory.contentlicense, 
  avg(
    cast(45 as int4)), 
  comments.id, 
  posthistory.postid, 
  min(
    cast(cast(null as tid) as tid)), 
  min(
    cast(cast(null as tid) as tid)), 
  posthistory.id, 
  posthistory.posthistorytypeid
from 
  badges
      left join comments
      on (badges.name >= comments.text)
    inner join posthistory
    on (posthistory.postid = badges.id)
where posthistory.postid is NULL;
select  
  posthistory.posthistorytypeid, 
  posthistory.userdisplayname, 
  posthistory.id, 
  avg(
    cast(cast(null as float4) as float4)), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posthistory.revisionguid, 
  posthistory.revisionguid, 
  posthistory.userdisplayname, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.creationdate = posthistory.creationdate
limit 109;
select  
  users.creationdate, 
  users.websiteurl, 
  users.downvotes
from 
  users
where users.downvotes is not NULL
limit 123;
select  
  votes.bountyamount, 
  votes.userid
from 
  comments
          right join badges
          on (badges.name <= comments.text)
        right join users
        on (comments.creationdate = comments.creationdate)
      inner join votes
        right join comments
        on (comments.score < votes.userid)
      on (users.creationdate = comments.creationdate)
    inner join comments
      left join votes
        right join posts
        on (votes.bountyamount = posts.id )
      on (comments.creationdate = votes.creationdate )
    on (comments.userid = votes.votetypeid)
where votes.creationdate is not NULL
limit 105;
select  
  posts.posttypeid, 
  posts.ownerdisplayname, 
  posts.lasteditordisplayname
from 
  posts
where posts.closeddate is not NULL
limit 107;
select  
  posthistory.revisionguid, 
  postlinks.relatedpostid, 
  badges.userid, 
  users.displayname, 
  posts.lasteditordisplayname, 
  posthistory.comment
from 
  votes
              inner join badges
              on (votes.creationdate < votes.creationdate)
            left join posthistory
            on (badges.date >= posthistory.creationdate)
          inner join badges
          on (badges.date <= votes.creationdate)
        inner join votes
            inner join postlinks
            on (votes.postid > postlinks.relatedpostid)
          inner join badges
          on (votes.id <= badges.userid)
        on (badges.tagbased > posthistory.userdisplayname)
      inner join users
            inner join users
            on (users.profileimageurl = users.profileimageurl)
          inner join postlinks
          on (users.lastaccessdate = postlinks.creationdate )
        right join posts
            inner join posthistory
            on (posts.viewcount = posthistory.id )
          inner join posts
            left join posthistory
            on (posts.acceptedanswerid = posthistory.id )
          on (posthistory.id <= posthistory.userid)
        on (posts.viewcount > posts.posttypeid)
      on (posts.viewcount > posts.lasteditoruserid)
    inner join comments
    on (badges.class is NULL)
where badges.name is not NULL;
select  
  votes.bountyamount, 
  posthistory.contentlicense, 
  min(
    cast(cast(null as xid8) as xid8)), 
  votes.postid
from 
  postlinks
      inner join posthistory
          inner join posts
          on (posts.lasteditoruserid <= posts.owneruserid)
        inner join votes
        on (posts.lastactivitydate > posts.creationdate)
      on (posts.title >= posts.title)
    inner join votes
    on (votes.bountyamount is NULL)
where posts.lasteditordisplayname > posts.lasteditordisplayname;
select  
  sum(
    cast(16 as int4)), 
  posthistory.postid, 
  posthistory.text, 
  posthistory.contentlicense, 
  posthistory.id
from 
  posthistory
where posthistory.creationdate = posthistory.creationdate;
select  
  users.websiteurl, 
  users.upvotes
from 
  users
where users.creationdate = users.lastaccessdate
limit 134;
select  
  comments.creationdate, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  comments.userid, 
  comments.postid, 
  comments.userdisplayname, 
  sum(
    cast(cast(null as money) as money)), 
  comments.text, 
  comments.score, 
  comments.postid, 
  max(
    cast(cast(null as money) as money)), 
  comments.userdisplayname, 
  comments.postid, 
  comments.id, 
  comments.score, 
  comments.postid
from 
  comments
where comments.score is NULL;
select  
  min(
    cast(cast(null as oid) as oid)), 
  posthistory.userid, 
  users.lastaccessdate, 
  users.creationdate, 
  users.views, 
  posthistory.postid, 
  users.id, 
  users.reputation, 
  posthistory.postid
from 
  users
      inner join posthistory
      on (users.creationdate >= posthistory.creationdate)
    right join badges
    on (posthistory.revisionguid < badges.name)
where posthistory.contentlicense is not NULL
limit 102;
select  
  posts.contentlicense, 
  badges.name, 
  badges.tagbased, 
  votes.postid, 
  badges.userid
from 
  votes
          inner join posts
          on (posts.lasteditordisplayname < posts.contentlicense)
        right join badges
        on (posts.creationdate <= votes.creationdate)
      inner join votes
          inner join posts
          on (posts.contentlicense = posts.lasteditordisplayname)
        inner join posts
          inner join comments
            left join badges
            on (badges.userid <= badges.userid)
          on (posts.lastactivitydate <= posts.communityowneddate)
        on (posts.closeddate <= comments.creationdate)
      on (votes.votetypeid = votes.id )
    right join badges
    on (posts.viewcount = badges.id )
where posts.closeddate = posts.lastactivitydate
limit 36;
select  
  votes.postid, 
  posthistory.posthistorytypeid, 
  max(
    cast(votes.id as int8)), 
  postlinks.id, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.creationdate, 
  votes.bountyamount, 
  posthistory.postid, 
  postlinks.linktypeid, 
  posts.lasteditordisplayname, 
  users.aboutme
from 
  votes
          right join votes
          on (votes.userid > votes.postid)
        inner join comments
        on (votes.creationdate <= comments.creationdate)
      right join postlinks
            right join badges
            on (badges.date > badges.date)
          left join users
          on (postlinks.postid >= badges.id)
        left join posthistory
            left join postlinks
            on (postlinks.creationdate < postlinks.creationdate)
          inner join posthistory
          on (posthistory.postid <= postlinks.relatedpostid)
        on (postlinks.creationdate >= badges.date)
      on (users.reputation >= votes.id)
    inner join votes
      left join posts
        left join comments
          inner join badges
          on (badges.id > comments.userid)
        on (comments.userdisplayname > posts.body)
      on (posts.owneruserid <= posts.favoritecount)
    on (comments.userdisplayname is NULL)
where comments.id is not NULL
limit 79;
select  
  posthistory.text, 
  posthistory.userid, 
  postlinks.linktypeid, 
  posthistory.contentlicense, 
  badges.userid, 
  posthistory.id
from 
  votes
    right join posts
        right join posthistory
        on (posts.communityowneddate = posthistory.creationdate )
      left join users
        inner join posthistory
            right join postlinks
              inner join posts
              on (posts.communityowneddate <= posts.communityowneddate)
            on (posthistory.posthistorytypeid >= posts.viewcount)
          inner join badges
          on (badges.name < posthistory.userdisplayname)
        on (users.upvotes = posts.id )
      on (posts.creationdate <= posts.lasteditdate)
    on (users.displayname is NULL)
where badges.name is NULL
limit 16;
select  
  votes.id
from 
  postlinks
    inner join votes
      inner join comments
          inner join posts
            inner join posthistory
            on (posts.favoritecount = posts.lasteditoruserid)
          on (posts.lastactivitydate = posts.lasteditdate)
        inner join votes
          inner join postlinks
          on (votes.votetypeid <= votes.id)
        on (posts.lastactivitydate = votes.creationdate )
      on (postlinks.id = posts.posttypeid)
    on (posts.lastactivitydate is NULL)
where posthistory.comment is not NULL
limit 105;
select  
  comments.id, 
  comments.text, 
  comments.id
from 
  comments
where comments.score is NULL;
select  
  badges.date, 
  badges.class, 
  badges.id, 
  badges.tagbased, 
  min(
    cast(cast(null as "time") as "time")), 
  badges.date, 
  badges.userid, 
  badges.name, 
  badges.id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.userid, 
  badges.date, 
  min(
    cast(cast(null as "interval") as "interval")), 
  avg(
    cast(badges.userid as int8))
from 
  badges
where badges.date < badges.date
limit 33;
select  
  users.lastaccessdate, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  users.id, 
  users.profileimageurl, 
  users.displayname, 
  users.accountid
from 
  users
where users.creationdate is NULL;
select  
  users.location, 
  max(
    cast(cast(null as money) as money)), 
  users.lastaccessdate
from 
  users
where users.creationdate > users.lastaccessdate
limit 147;
select  
  badges.class, 
  users.upvotes, 
  badges.tagbased
from 
  badges
    inner join users
    on (badges.class > users.displayname)
where badges.date is NULL
limit 26;
select  
  posts.lasteditdate
from 
  posts
where posts.title is NULL
limit 157;
select  
  postlinks.postid, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.score, 
  postlinks.relatedpostid, 
  posthistory.userid, 
  users.creationdate, 
  votes.userid, 
  users.accountid, 
  comments.creationdate, 
  users.websiteurl, 
  users.websiteurl, 
  postlinks.id, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  min(
    cast(cast(null as date) as date))
from 
  users
      right join postlinks
      on (users.creationdate = users.creationdate)
    inner join posthistory
      inner join comments
        right join votes
        on (comments.creationdate >= comments.creationdate)
      on (posthistory.creationdate = comments.creationdate)
    on (postlinks.postid is NULL)
where votes.id is not NULL
limit 133;
select  
  posthistory.contentlicense, 
  posthistory.creationdate, 
  posthistory.comment
from 
  posthistory
where posthistory.creationdate is NULL;
select distinct 
  votes.bountyamount, 
  votes.id, 
  votes.postid, 
  votes.votetypeid, 
  votes.postid, 
  votes.votetypeid, 
  votes.id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  votes.userid
from 
  votes
where votes.bountyamount is not NULL
limit 107;
select  
  comments.text, 
  comments.text, 
  comments.id, 
  min(
    cast(cast(null as float8) as float8)), 
  comments.userid, 
  comments.score
from 
  comments
where comments.text is NULL
limit 100;
select  
  users.id
from 
  users
    left join votes
          inner join postlinks
          on (postlinks.id >= votes.id)
        left join comments
          inner join badges
              inner join posthistory
              on (posthistory.userid = badges.id)
            inner join badges
            on (badges.id = posthistory.userid)
          on (posthistory.userid >= badges.userid)
        on (posthistory.revisionguid = badges.tagbased)
      inner join votes
      on (badges.date >= postlinks.creationdate)
    on (comments.score is NULL)
where postlinks.postid is not NULL
limit 65;
select  
  posts.favoritecount, 
  posts.owneruserid, 
  posts.tags, 
  max(
    cast(cast(null as float4) as float4)), 
  posts.lasteditdate, 
  posts.id, 
  posts.answercount, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  posts
where posts.tags is not NULL
limit 14;
select  
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  votes
    inner join comments
    on (votes.bountyamount = comments.id )
where votes.postid > comments.postid
limit 140;
select  
  posthistory.postid, 
  posthistory.comment, 
  posthistory.id, 
  posthistory.text, 
  avg(
    cast(cast(null as int2) as int2)), 
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.contentlicense, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.userid, 
  posthistory.comment, 
  posthistory.userid, 
  posthistory.comment
from 
  posthistory
where posthistory.creationdate is NULL
limit 136;
select  
  min(
    cast(cast(null as oid) as oid))
from 
  users
where users.location is NULL;
select  
  comments.text, 
  comments.postid, 
  comments.postid, 
  comments.postid, 
  comments.userdisplayname, 
  comments.postid, 
  comments.userdisplayname, 
  comments.text, 
  comments.postid, 
  comments.userdisplayname, 
  min(
    cast(cast(null as timetz) as timetz)), 
  comments.creationdate, 
  comments.creationdate, 
  comments.text, 
  comments.id, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  comments.score
from 
  comments
where comments.text is NULL
limit 50;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  users.aboutme
from 
  users
where users.id is NULL;
select  
  comments.postid, 
  comments.text
from 
  comments
where comments.userdisplayname is not NULL;
select  
  postlinks.creationdate
from 
  postlinks
where postlinks.postid is NULL
limit 121;
select  
  badges.date, 
  votes.bountyamount, 
  avg(
    cast(cast(null as float8) as float8)), 
  users.profileimageurl, 
  min(
    cast(cast(null as inet) as inet)), 
  max(
    cast(cast(null as oid) as oid)), 
  comments.postid, 
  badges.class, 
  badges.userid, 
  comments.userid, 
  badges.userid, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.text, 
  badges.class, 
  badges.class, 
  posts.favoritecount, 
  badges.date, 
  avg(
    cast(98 as int4)), 
  votes.bountyamount, 
  badges.id, 
  comments.id, 
  votes.postid, 
  votes.postid, 
  badges.name, 
  badges.tagbased, 
  posts.body
from 
  badges
        inner join badges
        on (badges.tagbased >= badges.tagbased)
      inner join comments
        left join votes
        on (comments.creationdate <= comments.creationdate)
      on (votes.postid > votes.userid)
    left join users
      inner join posts
      on (posts.viewcount >= posts.acceptedanswerid)
    on (comments.text > users.location)
where badges.name is NULL
limit 110;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.favoritecount, 
  votes.userid, 
  users.accountid, 
  max(
    cast(cast(null as oid) as oid)), 
  comments.postid, 
  posts.commentcount, 
  max(
    cast(cast(null as date) as date)), 
  posts.communityowneddate
from 
  posts
          right join votes
          on (posts.parentid = votes.id )
        inner join users
        on (votes.creationdate <= users.lastaccessdate)
      right join comments
          left join posts
            left join votes
            on (posts.closeddate = posts.lasteditdate)
          on (votes.userid <= comments.userid)
        left join comments
        on (comments.id < posts.answercount)
      on (users.id >= users.upvotes)
    left join users
    on (users.views is not NULL)
where votes.bountyamount is not NULL;
select  
  max(
    cast(cast(null as int2) as int2)), 
  votes.creationdate
from 
  badges
    inner join votes
      inner join badges
      on (badges.class >= badges.class)
    on (badges.id = votes.id )
where badges.name is NULL;
select  
  posthistory.contentlicense, 
  badges.id, 
  max(
    cast(cast(null as xid8) as xid8)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  badges.class, 
  posthistory.comment, 
  badges.userid, 
  badges.class
from 
  posthistory
      left join badges
      on (posthistory.creationdate >= badges.date)
    left join badges
    on (posthistory.userdisplayname >= posthistory.revisionguid)
where badges.id is not NULL
limit 145;
select  
  posts.answercount, 
  badges.class, 
  postlinks.postid, 
  posts.lasteditoruserid
from 
  posts
      right join posts
                right join users
                on (posts.tags = users.displayname )
              right join postlinks
              on (posts.score < users.reputation)
            inner join postlinks
              right join users
              on (users.aboutme <= users.displayname)
            on (posts.creationdate = postlinks.creationdate )
          right join postlinks
          on (posts.answercount = users.downvotes)
        right join users
          inner join comments
            left join users
              right join comments
                  right join votes
                  on (votes.creationdate <= comments.creationdate)
                right join postlinks
                on (votes.id <= comments.postid)
              on (postlinks.id <= votes.votetypeid)
            on (users.displayname < comments.text)
          on (users.lastaccessdate >= users.lastaccessdate)
        on (users.creationdate < users.creationdate)
      on (users.websiteurl >= posts.lasteditordisplayname)
    inner join votes
        left join badges
        on (votes.id > votes.votetypeid)
      left join posts
      on (posts.creationdate <= posts.communityowneddate)
    on (postlinks.postid = posts.id )
where users.profileimageurl is not NULL;
select  
  comments.userdisplayname, 
  comments.text, 
  comments.creationdate, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as tid) as tid)), 
  comments.postid, 
  comments.creationdate, 
  comments.postid, 
  comments.score
from 
  comments
where comments.userdisplayname < comments.text
limit 82;
select  
  users.displayname, 
  badges.id, 
  users.accountid, 
  badges.tagbased, 
  users.downvotes, 
  users.accountid, 
  users.reputation, 
  badges.class, 
  users.lastaccessdate, 
  users.reputation, 
  users.upvotes, 
  badges.id, 
  badges.name, 
  badges.userid, 
  badges.userid, 
  users.websiteurl, 
  badges.userid, 
  users.profileimageurl, 
  badges.date
from 
  badges
    left join users
    on (badges.tagbased is not NULL)
where badges.tagbased is NULL
limit 105;
select  
  comments.postid, 
  min(
    cast(cast(null as tid) as tid)), 
  comments.userdisplayname, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.posttypeid, 
  min(
    cast(cast(null as date) as date)), 
  max(
    cast(cast(null as date) as date)), 
  posts.answercount, 
  posthistory.text, 
  comments.score, 
  max(
    cast(cast(null as int2) as int2)), 
  posthistory.userdisplayname
from 
  posthistory
        inner join posts
          right join comments
            inner join posthistory
              inner join votes
              on (votes.votetypeid = votes.userid)
            on (comments.id = posthistory.postid)
          on (posts.acceptedanswerid = comments.id )
        on (posthistory.id = votes.id )
      inner join users
        inner join badges
        on (users.creationdate >= users.lastaccessdate)
      on (posts.acceptedanswerid = posthistory.userid)
    right join comments
    on (posthistory.posthistorytypeid is not NULL)
where comments.text is not NULL
limit 115;
select  
  postlinks.relatedpostid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  postlinks.id, 
  postlinks.postid, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.creationdate, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate is NULL
limit 126;
select  
  postlinks.relatedpostid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.postid is NULL
limit 66;
select  
  count(
    cast(posts.score as int8)), 
  posts.lasteditoruserid, 
  posts.lasteditordisplayname, 
  sum(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as tid) as tid)), 
  posts.acceptedanswerid, 
  posts.lasteditoruserid, 
  posts.lasteditdate, 
  posts.score, 
  posts.ownerdisplayname, 
  posts.communityowneddate
from 
  posts
where posts.body is not NULL
limit 26;
select  
  votes.votetypeid, 
  votes.bountyamount, 
  votes.bountyamount, 
  votes.bountyamount, 
  votes.postid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.userid, 
  votes.votetypeid, 
  votes.creationdate, 
  votes.id, 
  max(
    cast(cast(null as text) as text)), 
  votes.creationdate, 
  votes.userid, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.id, 
  avg(
    cast(cast(null as int2) as int2))
from 
  votes
where votes.id is NULL
limit 155;
select  
  comments.postid, 
  comments.id, 
  comments.userdisplayname, 
  comments.id, 
  comments.creationdate, 
  comments.postid, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  avg(
    cast(cast(null as int2) as int2)), 
  count(
    cast(comments.score as int8)), 
  comments.id, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  comments.score, 
  max(
    cast(cast(null as float8) as float8)), 
  comments.postid, 
  comments.userid, 
  comments.score, 
  max(
    cast(comments.creationdate as timestamptz)), 
  min(
    cast(cast(null as float4) as float4)), 
  comments.postid, 
  comments.userdisplayname, 
  comments.text, 
  comments.postid, 
  comments.postid, 
  max(
    cast(comments.text as text)), 
  comments.postid, 
  comments.userid, 
  max(
    cast(cast(null as money) as money)), 
  comments.postid, 
  comments.text, 
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  comments
where comments.creationdate is NULL
limit 92;
select  
  badges.date, 
  posts.lastactivitydate, 
  users.displayname, 
  badges.date, 
  badges.class, 
  users.accountid, 
  max(
    cast(cast(null as xid8) as xid8)), 
  badges.userid, 
  users.aboutme
from 
  badges
      inner join badges
        inner join users
        on (badges.date < users.creationdate)
      on (badges.class <= badges.class)
    right join posts
    on (users.upvotes is NULL)
where badges.class is not NULL
limit 110;
select  
  comments.userid, 
  badges.tagbased, 
  votes.creationdate, 
  min(
    cast(cast(null as money) as money))
from 
  comments
    inner join badges
        inner join posts
        on (posts.parentid >= badges.id)
      inner join badges
        left join votes
        on (badges.date = votes.creationdate )
      on (votes.creationdate <= votes.creationdate)
    on (badges.name is not NULL)
where comments.postid is not NULL
limit 43;
select  
  comments.creationdate, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  max(
    cast(cast(null as int2) as int2)), 
  posthistory.creationdate
from 
  posthistory
      inner join comments
      on (comments.postid < comments.id)
    inner join votes
    on (posthistory.revisionguid is not NULL)
where posthistory.posthistorytypeid is NULL;
select  
  posthistory.revisionguid, 
  posthistory.revisionguid, 
  posthistory.text, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posthistory.text, 
  posthistory.posthistorytypeid, 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.creationdate = posthistory.creationdate;
select  
  badges.date, 
  sum(
    cast(cast(null as float8) as float8)), 
  badges.date, 
  badges.tagbased, 
  badges.class, 
  badges.name, 
  badges.name
from 
  badges
    right join badges
    on (badges.class is NULL)
where badges.userid is not NULL;
select  
  posthistory.text, 
  badges.date, 
  posthistory.comment, 
  comments.postid, 
  posthistory.contentlicense, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  badges.date
from 
  badges
    inner join users
        inner join badges
          left join comments
          on (comments.creationdate > comments.creationdate)
        on (badges.date >= users.creationdate)
      left join posthistory
      on (comments.userid > badges.userid)
    on (badges.tagbased is NULL)
where badges.id is not NULL
limit 57;
select  
  posthistory.posthistorytypeid, 
  posthistory.text, 
  posthistory.comment, 
  posthistory.revisionguid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid
from 
  postlinks
    right join posthistory
    on (postlinks.creationdate = posthistory.creationdate )
where postlinks.id is not NULL
limit 100;
select  
  postlinks.postid
from 
  postlinks
    inner join posthistory
    on (postlinks.relatedpostid is not NULL)
where posthistory.revisionguid is not NULL;
select  
  badges.id, 
  posthistory.text, 
  posthistory.creationdate, 
  votes.userid, 
  posthistory.contentlicense
from 
  postlinks
    inner join comments
            inner join postlinks
              right join posthistory
              on (posthistory.text > posthistory.revisionguid)
            on (postlinks.relatedpostid = postlinks.linktypeid)
          inner join users
            inner join users
            on (users.lastaccessdate > users.creationdate)
          on (postlinks.postid = users.id )
        left join users
          left join posthistory
            right join badges
            on (badges.userid < posthistory.postid)
          on (users.upvotes < users.views)
        on (posthistory.userid > users.upvotes)
      left join postlinks
          right join votes
            right join postlinks
            on (votes.bountyamount < votes.id)
          on (postlinks.creationdate > postlinks.creationdate)
        inner join posthistory
        on (postlinks.id = posthistory.id )
      on (posthistory.id = postlinks.linktypeid)
    on (posthistory.contentlicense > users.location)
where postlinks.id is not NULL
limit 140;
select  
  posthistory.id, 
  min(
    cast(cast(null as tid) as tid)), 
  users.downvotes, 
  avg(
    cast(cast(null as int2) as int2))
from 
  posthistory
        inner join posts
        on (posts.lasteditdate = posts.creationdate)
      right join posts
      on (posts.contentlicense < posthistory.contentlicense)
    inner join posts
      right join users
        inner join posthistory
          inner join users
          on (users.creationdate = posthistory.creationdate)
        on (users.upvotes <= posthistory.id)
      on (users.views >= users.id)
    on (posts.commentcount is NULL)
where posthistory.text is NULL
limit 184;
select  
  votes.creationdate
from 
  votes
where votes.bountyamount >= votes.id
limit 13;
select  
  badges.class
from 
  badges
where badges.userid = badges.userid;
select  
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
where postlinks.linktypeid is not NULL
limit 115;
select  
  badges.id, 
  badges.userid, 
  badges.class
from 
  badges
where badges.name < badges.class
limit 101;
select  
  votes.bountyamount
from 
  badges
    right join votes
    on (badges.date < badges.date)
where badges.date < badges.date;
select  
  votes.postid, 
  users.lastaccessdate, 
  votes.userid, 
  max(
    cast(cast(null as oid) as oid)), 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  users.aboutme
from 
  postlinks
              left join posthistory
              on (posthistory.creationdate >= postlinks.creationdate)
            inner join badges
            on (postlinks.creationdate >= posthistory.creationdate)
          left join posts
          on (badges.date >= badges.date)
        inner join votes
        on (posthistory.posthistorytypeid = votes.id )
      inner join votes
        inner join users
        on (users.lastaccessdate > votes.creationdate)
      on (users.lastaccessdate = badges.date)
    inner join votes
    on (users.location is NULL)
where votes.creationdate > posts.creationdate
limit 95;
select  
  badges.userid, 
  badges.class, 
  sum(
    cast(cast(null as float8) as float8)), 
  badges.userid, 
  max(
    cast(cast(null as tid) as tid)), 
  posts.commentcount, 
  badges.userid, 
  posts.title
from 
  badges
    inner join votes
          inner join posts
          on (votes.creationdate < posts.creationdate)
        inner join posts
        on (posts.owneruserid > posts.commentcount)
      left join comments
      on (posts.title > posts.lasteditordisplayname)
    on (badges.date < posts.closeddate)
where posts.creationdate < votes.creationdate;
select  
  comments.score, 
  comments.userid, 
  max(
    cast(cast(null as "time") as "time")), 
  max(
    cast(cast(null as tid) as tid)), 
  comments.userdisplayname, 
  comments.userid, 
  comments.userdisplayname, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.creationdate
from 
  comments
where comments.creationdate is not NULL
limit 69;
select  
  postlinks.relatedpostid, 
  postlinks.creationdate
from 
  users
      left join users
          inner join postlinks
            right join postlinks
            on (postlinks.creationdate > postlinks.creationdate)
          on (postlinks.id <= users.id)
        inner join votes
          inner join postlinks
          on (votes.id = votes.votetypeid)
        on (postlinks.creationdate <= postlinks.creationdate)
      on (postlinks.relatedpostid = users.reputation)
    right join badges
    on (users.accountid = postlinks.linktypeid)
where badges.tagbased is not NULL
limit 183;
select  
  comments.creationdate
from 
  badges
          left join badges
          on (badges.class = badges.tagbased)
        inner join comments
        on (badges.id <= badges.id)
      inner join comments
      on (badges.id = comments.id )
    inner join users
          inner join votes
            left join badges
            on (badges.class > badges.class)
          on (votes.creationdate >= users.lastaccessdate)
        left join posthistory
          left join badges
            right join posthistory
            on (posthistory.posthistorytypeid >= badges.id)
          on (posthistory.text = posthistory.userdisplayname )
        on (posthistory.userid < users.views)
      inner join posthistory
        right join badges
        on (posthistory.id = badges.id)
      on (users.id >= badges.userid)
    on (posthistory.creationdate = comments.creationdate)
where posthistory.revisionguid is NULL
limit 90;
select  
  avg(
    cast(postlinks.id as int8)), 
  posts.closeddate
from 
  badges
          right join posts
          on (posts.favoritecount <= posts.parentid)
        inner join users
        on (posts.lasteditordisplayname >= posts.title)
      right join postlinks
      on (posts.id = postlinks.id )
    inner join users
          left join badges
          on (users.lastaccessdate < users.lastaccessdate)
        right join comments
            inner join badges
            on (badges.id < comments.score)
          right join users
          on (users.views <= users.reputation)
        on (users.accountid < users.id)
      inner join badges
        inner join posthistory
                  inner join posthistory
                  on (posthistory.posthistorytypeid <= posthistory.postid)
                left join postlinks
                on (posthistory.text < posthistory.comment)
              inner join badges
              on (posthistory.userid >= postlinks.relatedpostid)
            left join postlinks
            on (postlinks.linktypeid = postlinks.id )
          inner join postlinks
              right join badges
              on (badges.name >= badges.name)
            left join users
              inner join postlinks
                inner join votes
                on (postlinks.creationdate = votes.creationdate)
              on (votes.creationdate >= postlinks.creationdate)
            on (users.displayname > users.displayname)
          on (posthistory.creationdate <= users.creationdate)
        on (users.location < badges.class)
      on (badges.id = users.views)
    on (posts.acceptedanswerid = comments.id )
where postlinks.relatedpostid is not NULL
limit 80;
select  
  comments.userdisplayname, 
  comments.id, 
  comments.userid
from 
  comments
where comments.userdisplayname is not NULL
limit 153;
select  
  sum(
    cast(posts.score as int8)), 
  posts.posttypeid, 
  postlinks.postid, 
  posts.tags, 
  badges.userid, 
  badges.tagbased, 
  votes.postid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  max(
    cast(cast(null as anyarray) as anyarray))
from 
  posts
    inner join postlinks
          left join votes
            left join comments
            on (votes.bountyamount = comments.id )
          on (votes.bountyamount <= votes.bountyamount)
        right join votes
        on (postlinks.creationdate >= votes.creationdate)
      left join badges
      on (comments.score > comments.postid)
    on (postlinks.relatedpostid is not NULL)
where badges.tagbased is not NULL
limit 112;
select  
  comments.userid, 
  comments.creationdate, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  comments.postid
from 
  comments
where comments.id >= comments.id
limit 141;
select  
  comments.text, 
  posts.acceptedanswerid, 
  posts.owneruserid, 
  comments.userdisplayname, 
  min(
    cast(cast(null as "time") as "time")), 
  sum(
    cast(cast(null as "interval") as "interval")), 
  posts.creationdate, 
  comments.postid, 
  sum(
    cast(cast(null as money) as money)), 
  comments.creationdate
from 
  posts
    left join comments
    on (posts.lasteditdate is not NULL)
where posts.lastactivitydate = posts.lasteditdate
limit 135;
select  
  badges.date, 
  badges.tagbased, 
  badges.tagbased, 
  badges.tagbased, 
  badges.class, 
  min(
    cast(cast(null as inet) as inet)), 
  badges.id, 
  badges.id, 
  badges.class, 
  badges.date, 
  min(
    cast(cast(null as float4) as float4)), 
  badges.userid, 
  max(
    cast(cast(null as xid8) as xid8)), 
  badges.name, 
  badges.id, 
  badges.name, 
  badges.class, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  badges.tagbased, 
  badges.date, 
  badges.tagbased
from 
  badges
where badges.date < badges.date
limit 194;
select  
  posthistory.userdisplayname, 
  postlinks.postid, 
  posthistory.comment, 
  posthistory.postid, 
  users.profileimageurl, 
  posthistory.revisionguid
from 
  posthistory
        inner join users
        on (posthistory.comment >= users.location)
      inner join postlinks
      on (users.displayname >= posthistory.contentlicense)
    right join posthistory
    on (posthistory.contentlicense < posthistory.revisionguid)
where posthistory.comment > posthistory.contentlicense
limit 40;
select  
  posts.commentcount, 
  posts.body, 
  sum(
    cast(cast(null as int2) as int2)), 
  posts.lastactivitydate, 
  posts.lasteditdate
from 
  posts
where posts.creationdate is NULL
limit 193;
select  
  posts.owneruserid, 
  posts.communityowneddate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  posts.closeddate, 
  sum(
    cast(cast(null as "interval") as "interval"))
from 
  posts
where posts.id is NULL;
select  
  posthistory.userdisplayname, 
  posthistory.creationdate, 
  posthistory.posthistorytypeid, 
  posthistory.text, 
  posthistory.id, 
  max(
    cast(cast(null as oid) as oid)), 
  posthistory.userid, 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.revisionguid > posthistory.text
limit 157;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  votes.id, 
  max(
    cast(cast(null as tid) as tid))
from 
  votes
where votes.id is NULL
limit 55;
select  
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.accountid, 
  votes.creationdate
from 
  posts
      inner join users
              inner join votes
              on (users.creationdate = votes.creationdate )
            inner join badges
            on (users.websiteurl > badges.tagbased)
          inner join votes
          on (votes.id <= users.views)
        right join badges
        on (badges.date = votes.creationdate)
      on (posts.viewcount = users.id )
    left join postlinks
    on (users.profileimageurl = users.location)
where users.websiteurl is not NULL
limit 186;
select  
  badges.date, 
  badges.name, 
  badges.tagbased, 
  badges.class, 
  badges.userid
from 
  badges
where badges.class = badges.class
limit 135;
select  
  badges.class, 
  badges.id
from 
  badges
where badges.tagbased is not NULL;
select  
  comments.id, 
  posthistory.contentlicense
from 
  users
            inner join badges
              inner join comments
              on (comments.userdisplayname >= badges.class)
            on (comments.creationdate > comments.creationdate)
          inner join posthistory
          on (badges.tagbased = posthistory.userdisplayname )
        left join votes
        on (badges.userid = votes.id )
      inner join badges
        left join votes
        on (votes.creationdate < votes.creationdate)
      on (posthistory.userdisplayname = badges.name)
    left join posthistory
    on (posthistory.id <= votes.postid)
where badges.name is not NULL;
select  
  avg(
    cast(posts.answercount as int8)), 
  postlinks.linktypeid, 
  posthistory.comment
from 
  users
            right join postlinks
              right join users
                right join postlinks
                on (users.location >= users.websiteurl)
              on (users.websiteurl = users.aboutme)
            on (postlinks.relatedpostid = postlinks.id)
          right join comments
          on (users.lastaccessdate > postlinks.creationdate)
        right join users
          right join posts
            left join badges
                left join postlinks
                on (postlinks.creationdate <= badges.date)
              left join users
              on (badges.name = users.displayname)
            on (posts.creationdate = posts.communityowneddate)
          on (badges.date < posts.lasteditdate)
        on (postlinks.id = postlinks.id )
      inner join postlinks
              right join postlinks
                left join posthistory
                  inner join comments
                  on (posthistory.creationdate >= comments.creationdate)
                on (postlinks.linktypeid > postlinks.linktypeid)
              on (postlinks.linktypeid = comments.id )
            right join postlinks
              right join comments
              on (postlinks.creationdate > postlinks.creationdate)
            on (comments.userdisplayname = comments.userdisplayname )
          inner join comments
                inner join postlinks
                on (postlinks.creationdate = postlinks.creationdate)
              left join users
              on (postlinks.creationdate > comments.creationdate)
            right join comments
              inner join posthistory
              on (posthistory.posthistorytypeid <= posthistory.postid)
            on (users.upvotes = comments.id )
          on (postlinks.postid = comments.id )
        right join postlinks
        on (posthistory.posthistorytypeid = postlinks.id )
      on (users.upvotes > postlinks.relatedpostid)
    inner join posts
    on (users.lastaccessdate >= users.lastaccessdate)
where comments.userdisplayname is not NULL
limit 84;
select  
  votes.userid, 
  votes.userid, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(24 as int4))
from 
  comments
      inner join users
          right join posts
            right join posts
            on (posts.viewcount = posts.id )
          on (users.location <= posts.tags)
        left join votes
            inner join votes
              inner join votes
              on (votes.creationdate >= votes.creationdate)
            on (votes.userid < votes.userid)
          right join users
            right join votes
            on (users.lastaccessdate <= users.lastaccessdate)
          on (votes.votetypeid < votes.id)
        on (posts.lasteditdate >= posts.lastactivitydate)
      on (posts.lasteditordisplayname <= users.displayname)
    left join postlinks
        inner join postlinks
        on (postlinks.id = postlinks.relatedpostid)
      inner join postlinks
      on (postlinks.creationdate > postlinks.creationdate)
    on (users.websiteurl is not NULL)
where users.accountid < users.upvotes
limit 94;
select  
  count(
    cast(users.lastaccessdate as timestamptz)), 
  users.downvotes, 
  users.downvotes, 
  users.views, 
  users.id, 
  users.upvotes, 
  users.upvotes, 
  users.creationdate, 
  sum(
    cast(cast(null as money) as money)), 
  users.reputation, 
  users.lastaccessdate, 
  users.reputation, 
  users.upvotes, 
  users.aboutme, 
  users.downvotes, 
  users.displayname, 
  users.downvotes, 
  min(
    cast(cast(null as money) as money))
from 
  users
where users.views is not NULL;
select  
  posts.owneruserid
from 
  posts
where posts.lastactivitydate >= posts.closeddate
limit 141;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posthistory.contentlicense, 
  posthistory.postid, 
  posthistory.text, 
  min(
    cast(cast(null as date) as date)), 
  posthistory.comment, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.id, 
  posthistory.userid, 
  posthistory.id
from 
  posthistory
where posthistory.text is NULL;
select  
  posthistory.userid
from 
  posthistory
    inner join postlinks
      left join postlinks
        inner join posthistory
        on (posthistory.text <= posthistory.userdisplayname)
      on (posthistory.creationdate > posthistory.creationdate)
    on (posthistory.posthistorytypeid = postlinks.id )
where postlinks.relatedpostid is not NULL;
select  
  votes.id, 
  votes.userid, 
  votes.postid, 
  votes.userid, 
  votes.userid, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.id, 
  votes.bountyamount, 
  votes.bountyamount, 
  votes.postid, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.userid, 
  min(
    cast(votes.creationdate as timestamptz)), 
  max(
    cast(cast(null as float8) as float8))
from 
  votes
where votes.id is NULL;
select  
  posts.viewcount, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  posts
    inner join votes
    on (votes.bountyamount is NULL)
where votes.id is NULL
limit 28;
select  
  posts.owneruserid
from 
  posts
where posts.acceptedanswerid is not NULL
limit 98;
select  
  votes.id, 
  avg(
    cast(15 as int4)), 
  votes.postid, 
  votes.bountyamount, 
  votes.userid, 
  votes.postid, 
  votes.votetypeid
from 
  votes
where votes.id is NULL
limit 59;
select  
  badges.id, 
  badges.id, 
  votes.bountyamount, 
  badges.class, 
  votes.creationdate
from 
  votes
    inner join badges
    on (votes.userid is not NULL)
where votes.creationdate is NULL
limit 47;
select  
  users.reputation
from 
  users
where users.location is NULL
limit 57;
select  
  users.location, 
  users.reputation
from 
  users
where users.profileimageurl is not NULL;
select  
  votes.id, 
  votes.postid, 
  votes.bountyamount, 
  votes.userid, 
  votes.id, 
  votes.id
from 
  votes
where votes.votetypeid is NULL
limit 79;
select  
  posthistory.userid, 
  posthistory.text, 
  posthistory.creationdate
from 
  posthistory
where posthistory.userdisplayname >= posthistory.userdisplayname
limit 52;
select  
  badges.class, 
  badges.id, 
  badges.date, 
  badges.tagbased, 
  badges.class, 
  badges.id, 
  badges.class, 
  badges.userid, 
  badges.name, 
  max(
    cast(badges.date as timestamptz)), 
  badges.date, 
  badges.userid, 
  avg(
    cast(cast(null as float4) as float4)), 
  badges.tagbased, 
  min(
    cast(badges.id as int8)), 
  max(
    cast(cast(null as float8) as float8))
from 
  badges
where badges.tagbased is NULL
limit 144;
select  
  postlinks.relatedpostid, 
  min(
    cast(cast(null as float8) as float8)), 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate is NULL
limit 106;
select  
  posthistory.id, 
  votes.votetypeid, 
  posthistory.id, 
  votes.postid
from 
  badges
    left join posthistory
        right join postlinks
          right join votes
          on (postlinks.id = votes.postid)
        on (votes.userid > votes.userid)
      left join posthistory
      on (votes.bountyamount = posthistory.id )
    on (badges.name = posthistory.userdisplayname )
where votes.votetypeid is not NULL;
select  
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  posts.body
from 
  posts
where posts.parentid is NULL;
select  
  users.reputation, 
  votes.id, 
  users.reputation, 
  votes.id, 
  votes.userid
from 
  users
      left join users
          right join votes
          on (users.downvotes > votes.bountyamount)
        left join votes
        on (votes.creationdate = votes.creationdate)
      on (users.lastaccessdate <= users.lastaccessdate)
    inner join votes
        inner join votes
        on (votes.bountyamount = votes.votetypeid)
      inner join users
      on (users.aboutme > users.websiteurl)
    on (votes.bountyamount is not NULL)
where users.aboutme is not NULL;
select  
  max(
    cast(cast(null as xid8) as xid8)), 
  comments.userid, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.userdisplayname, 
  comments.postid, 
  comments.creationdate, 
  comments.postid, 
  comments.text, 
  comments.userid
from 
  comments
where comments.userid is NULL;
select  
  votes.postid
from 
  votes
    left join posthistory
    on (votes.postid = posthistory.id )
where votes.bountyamount <= votes.bountyamount
limit 125;
select  
  posthistory.text, 
  users.upvotes
from 
  comments
    inner join posthistory
        inner join postlinks
        on (postlinks.creationdate < posthistory.creationdate)
      inner join users
      on (users.aboutme > users.aboutme)
    on (comments.id is NULL)
where comments.id is not NULL
limit 181;
select  
  badges.date, 
  badges.class, 
  votes.userid, 
  comments.score, 
  votes.userid, 
  postlinks.postid, 
  badges.class, 
  badges.name, 
  badges.name, 
  posts.creationdate
from 
  votes
    left join comments
            inner join posts
              right join users
              on (posts.communityowneddate > posts.lasteditdate)
            on (comments.creationdate > comments.creationdate)
          inner join postlinks
            right join votes
              inner join badges
              on (badges.name <= badges.class)
            on (postlinks.creationdate = badges.date )
          on (posts.title = posts.ownerdisplayname)
        left join badges
        on (posts.lastactivitydate >= postlinks.creationdate)
      left join votes
      on (users.aboutme = posts.title)
    on (badges.class > posts.tags)
where postlinks.relatedpostid is not NULL
limit 89;
select  
  postlinks.id, 
  postlinks.id, 
  badges.userid
from 
  postlinks
    inner join users
          right join postlinks
              right join comments
              on (postlinks.creationdate < postlinks.creationdate)
            right join comments
              inner join posts
              on (posts.lasteditordisplayname > comments.userdisplayname)
            on (posts.lasteditoruserid > posts.commentcount)
          on (comments.creationdate > posts.creationdate)
        right join badges
        on (badges.userid < posts.lasteditoruserid)
      inner join postlinks
      on (users.displayname >= posts.ownerdisplayname)
    on (postlinks.id is NULL)
where comments.text is NULL
limit 63;
select  
  comments.id, 
  comments.postid, 
  comments.creationdate
from 
  comments
where comments.text is not NULL
limit 105;
select  
  posts.id, 
  posts.commentcount, 
  posts.lasteditordisplayname, 
  posts.lasteditoruserid, 
  posts.score, 
  posts.owneruserid, 
  min(
    cast(cast(null as "numeric") as "numeric"))
from 
  posts
where posts.closeddate is not NULL
limit 159;
select  
  comments.userdisplayname, 
  comments.score, 
  comments.userdisplayname
from 
  comments
    inner join comments
    on (comments.userid = comments.id )
where comments.creationdate is NULL
limit 84;
select  
  posts.creationdate
from 
  posts
where posts.id is NULL
limit 136;
select  
  max(
    cast(cast(null as date) as date)), 
  postlinks.relatedpostid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 86;
select  
  min(
    cast(postlinks.postid as int8)), 
  postlinks.postid, 
  max(
    cast(cast(null as int2) as int2)), 
  users.lastaccessdate, 
  posts.tags, 
  posts.title, 
  posts.lasteditoruserid, 
  users.accountid
from 
  posts
          inner join postlinks
          on (posts.viewcount = postlinks.id)
        right join comments
        on (posts.communityowneddate <= posts.creationdate)
      right join postlinks
        inner join users
        on (users.websiteurl < users.location)
      on (posts.closeddate = comments.creationdate)
    inner join postlinks
      inner join badges
      on (badges.class <= badges.tagbased)
    on (users.profileimageurl is NULL)
where comments.creationdate is NULL
limit 27;
select  
  users.id
from 
  users
    inner join badges
    on (users.displayname is not NULL)
where badges.class is NULL;
select  
  posts.parentid, 
  votes.bountyamount
from 
  posthistory
          inner join votes
          on (posthistory.id = votes.id )
        inner join users
          inner join comments
          on (users.accountid = users.downvotes)
        on (comments.userdisplayname > users.displayname)
      inner join badges
        left join posthistory
        on (badges.tagbased > badges.class)
      on (posthistory.posthistorytypeid <= votes.votetypeid)
    left join posts
    on (comments.postid is not NULL)
where comments.postid is not NULL
limit 168;
select  
  votes.creationdate, 
  badges.name
from 
  postlinks
        inner join votes
          inner join votes
            inner join badges
              right join posthistory
              on (badges.userid = posthistory.id )
            on (posthistory.userid = posthistory.postid)
          on (posthistory.creationdate < votes.creationdate)
        on (posthistory.contentlicense <= posthistory.text)
      inner join posts
      on (badges.id < posts.owneruserid)
    right join posts
      right join postlinks
        right join posts
        on (posts.title = posts.lasteditordisplayname)
      on (posts.viewcount > posts.answercount)
    on (posts.creationdate = postlinks.creationdate )
where posts.favoritecount is NULL
limit 68;
select  
  posts.commentcount, 
  posthistory.creationdate, 
  posthistory.comment, 
  posts.posttypeid, 
  posts.answercount, 
  posthistory.postid
from 
  posthistory
    left join posts
    on (posts.answercount is NULL)
where posthistory.userdisplayname is not NULL
limit 70;
select  
  posthistory.revisionguid, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.postid is NULL
limit 76;
select  
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.creationdate is NULL
limit 195;
select  
  min(
    cast(cast(null as float4) as float4)), 
  votes.postid, 
  posthistory.creationdate
from 
  posthistory
    inner join votes
    on (posthistory.postid is NULL)
where votes.creationdate <= votes.creationdate
limit 96;
select  
  comments.userid, 
  comments.id, 
  min(
    cast(posts.closeddate as timestamptz))
from 
  comments
    left join votes
      inner join posts
          left join votes
            inner join posts
                inner join postlinks
                on (posts.ownerdisplayname > posts.contentlicense)
              left join comments
              on (posts.body > posts.contentlicense)
            on (votes.votetypeid = posts.id )
          on (votes.creationdate < posts.closeddate)
        left join comments
        on (posts.lasteditordisplayname > posts.ownerdisplayname)
      on (votes.creationdate > comments.creationdate)
    on (votes.bountyamount is not NULL)
where votes.id is NULL
limit 86;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  users.accountid, 
  users.downvotes, 
  users.views, 
  users.upvotes, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  users.creationdate, 
  sum(
    cast(cast(null as float8) as float8)), 
  users.reputation, 
  sum(
    cast(users.accountid as int8)), 
  users.reputation, 
  users.upvotes
from 
  users
where users.location is NULL;
select  
  postlinks.id, 
  votes.bountyamount, 
  votes.userid, 
  votes.creationdate, 
  postlinks.id, 
  min(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as text) as text)), 
  postlinks.id, 
  postlinks.postid, 
  max(
    cast(cast(null as date) as date)), 
  postlinks.postid
from 
  votes
    inner join postlinks
    on (votes.id > votes.id)
where votes.id is not NULL
limit 124;
select  
  postlinks.id, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
where postlinks.postid = postlinks.relatedpostid
limit 59;
select  
  postlinks.id, 
  badges.class, 
  badges.date, 
  postlinks.id, 
  postlinks.postid, 
  badges.class
from 
  postlinks
    left join badges
    on (postlinks.linktypeid = badges.id )
where postlinks.relatedpostid is not NULL;
select  
  posthistory.userid, 
  posts.viewcount
from 
  badges
      inner join posthistory
        inner join posts
        on (posts.score < posts.viewcount)
      on (badges.class = posthistory.userdisplayname )
    inner join badges
    on (badges.userid is not NULL)
where posthistory.postid is not NULL
limit 174;
select  
  posthistory.id, 
  posthistory.text, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posthistory.userdisplayname, 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.id, 
  posthistory.creationdate, 
  posthistory.creationdate, 
  posthistory.id, 
  posthistory.comment, 
  posthistory.postid, 
  posthistory.posthistorytypeid, 
  posthistory.creationdate, 
  posthistory.revisionguid, 
  posthistory.postid, 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.contentlicense is not NULL
limit 9;
select  
  votes.postid, 
  votes.creationdate
from 
  votes
      left join postlinks
            inner join badges
            on (badges.date < postlinks.creationdate)
          inner join postlinks
          on (badges.tagbased = badges.class)
        left join comments
        on (postlinks.creationdate = comments.creationdate )
      on (postlinks.creationdate > badges.date)
    inner join votes
      inner join comments
          inner join votes
            right join posts
            on (posts.commentcount = posts.lasteditoruserid)
          on (posts.lasteditordisplayname < posts.tags)
        right join votes
        on (posts.lasteditordisplayname >= posts.contentlicense)
      on (comments.creationdate >= posts.communityowneddate)
    on (votes.creationdate is not NULL)
where votes.userid is not NULL;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate <= postlinks.creationdate;
select  
  badges.tagbased, 
  badges.tagbased, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  sum(
    cast(cast(null as int2) as int2)), 
  badges.id, 
  badges.tagbased
from 
  badges
where badges.name < badges.name
limit 139;
select  
  posts.score, 
  comments.creationdate
from 
  users
          inner join posthistory
              inner join badges
              on (posthistory.creationdate < badges.date)
            inner join comments
            on (posthistory.revisionguid <= badges.class)
          on (users.lastaccessdate = comments.creationdate )
        left join users
            inner join users
              left join posts
              on (posts.closeddate <= posts.lastactivitydate)
            on (users.views = users.views)
          inner join votes
          on (posts.tags = users.websiteurl)
        on (votes.userid < votes.postid)
      right join posts
        right join comments
          inner join comments
          on (comments.creationdate >= comments.creationdate)
        on (posts.lasteditdate = posts.communityowneddate)
      on (posts.body < users.displayname)
    inner join votes
    on (posts.lasteditordisplayname >= users.location)
where posthistory.contentlicense is not NULL;
select  
  posts.acceptedanswerid, 
  min(
    cast(cast(null as int2) as int2))
from 
  posts
where posts.creationdate = posts.creationdate;
select  
  postlinks.creationdate, 
  users.id, 
  users.creationdate, 
  users.profileimageurl, 
  posts.parentid, 
  users.displayname, 
  postlinks.relatedpostid, 
  posthistory.text, 
  posts.body, 
  users.aboutme, 
  users.profileimageurl, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  users.upvotes, 
  postlinks.linktypeid, 
  users.profileimageurl, 
  posthistory.userdisplayname, 
  posthistory.id
from 
  postlinks
    inner join users
          inner join posts
          on (posts.lasteditoruserid >= posts.score)
        inner join badges
        on (users.websiteurl = posts.contentlicense)
      left join users
        inner join posthistory
          left join postlinks
          on (posthistory.contentlicense > posthistory.contentlicense)
        on (postlinks.linktypeid < users.reputation)
      on (badges.userid > posts.acceptedanswerid)
    on (posts.lastactivitydate <= posthistory.creationdate)
where users.downvotes is NULL
limit 115;
select  
  posts.parentid, 
  posts.id, 
  posts.score, 
  posts.parentid, 
  posts.lastactivitydate
from 
  posts
    inner join posts
    on (posts.creationdate is NULL)
where posts.commentcount is not NULL;
select  
  comments.userdisplayname
from 
  posts
      left join posthistory
        inner join posthistory
        on (posthistory.creationdate > posthistory.creationdate)
      on (posthistory.contentlicense <= posthistory.comment)
    left join comments
      left join comments
        left join users
            left join votes
            on (users.displayname >= users.websiteurl)
          right join users
          on (users.aboutme = users.displayname )
        on (votes.userid > votes.bountyamount)
      on (comments.text = comments.userdisplayname)
    on (posthistory.creationdate is NULL)
where votes.postid is NULL
limit 102;
select  
  posts.posttypeid, 
  posts.viewcount, 
  posts.parentid, 
  posts.contentlicense
from 
  posts
where posts.answercount is not NULL;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  min(
    cast(58 as int4)), 
  postlinks.linktypeid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.postid is NULL
limit 138;
select  
  votes.id
from 
  votes
    right join votes
    on (votes.postid = votes.id )
where votes.postid is NULL;
select  
  posts.viewcount, 
  posts.communityowneddate
from 
  posts
where posts.lasteditdate is NULL
limit 92;
select  
  max(
    cast(badges.name as text)), 
  badges.id, 
  votes.creationdate, 
  max(
    cast(posts.lasteditordisplayname as text))
from 
  users
        inner join posts
              left join posts
              on (posts.body = posts.ownerdisplayname )
            inner join badges
            on (posts.body = badges.class )
          left join postlinks
            right join votes
            on (postlinks.creationdate >= postlinks.creationdate)
          on (posts.posttypeid >= badges.userid)
        on (posts.owneruserid <= users.accountid)
      left join posts
      on (posts.ownerdisplayname < users.websiteurl)
    left join badges
    on (users.websiteurl is not NULL)
where posts.creationdate > posts.lasteditdate;
select  
  comments.text, 
  comments.text, 
  comments.userdisplayname, 
  max(
    cast(cast(null as "time") as "time")), 
  comments.creationdate, 
  comments.score, 
  min(
    cast(83 as int4))
from 
  comments
where comments.score is NULL;
select  
  posts.title
from 
  posts
where posts.closeddate is not NULL;
select  
  posthistory.postid, 
  posthistory.contentlicense, 
  posthistory.creationdate
from 
  posthistory
where posthistory.userid is NULL
limit 76;
select  
  posts.viewcount, 
  posts.id, 
  posts.lasteditdate, 
  avg(
    cast(cast(null as float4) as float4))
from 
  posts
where posts.tags is not NULL
limit 119;
select  
  posts.commentcount, 
  posts.favoritecount
from 
  users
    right join posts
    on (users.upvotes = posts.id )
where users.websiteurl < posts.lasteditordisplayname;
select  
  comments.userid, 
  comments.postid, 
  min(
    cast(cast(null as anyenum) as anyenum))
from 
  comments
where comments.postid is not NULL
limit 108;
select  
  votes.userid, 
  votes.bountyamount, 
  votes.votetypeid, 
  max(
    cast(cast(null as float4) as float4)), 
  votes.votetypeid
from 
  votes
where votes.creationdate is NULL
limit 30;
select  
  posts.commentcount, 
  posts.viewcount, 
  posthistory.text, 
  posthistory.contentlicense, 
  min(
    cast(posthistory.text as text)), 
  posthistory.id, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.contentlicense, 
  comments.userdisplayname, 
  posts.creationdate, 
  comments.text, 
  comments.postid
from 
  posthistory
    inner join posthistory
      right join posthistory
          inner join posts
          on (posts.communityowneddate >= posts.closeddate)
        left join comments
          inner join posts
          on (comments.id = posts.id )
        on (comments.score <= posts.id)
      on (posts.lasteditordisplayname <= posts.ownerdisplayname)
    on (posts.communityowneddate is NULL)
where posthistory.creationdate < posts.lasteditdate;
select  
  users.reputation
from 
  users
where users.downvotes is NULL
limit 84;
select  
  postlinks.postid, 
  badges.id, 
  users.upvotes, 
  max(
    cast(cast(null as float4) as float4)), 
  postlinks.relatedpostid, 
  votes.userid, 
  postlinks.creationdate, 
  postlinks.postid
from 
  users
          inner join postlinks
          on (users.upvotes = postlinks.id )
        left join postlinks
            left join badges
              inner join postlinks
              on (badges.name > badges.tagbased)
            on (postlinks.id = postlinks.id )
          inner join votes
          on (postlinks.id = postlinks.id)
        on (postlinks.id = postlinks.id )
      inner join users
      on (postlinks.id <= postlinks.id)
    right join votes
    on (postlinks.postid is NULL)
where users.lastaccessdate > votes.creationdate
limit 169;
select  
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  comments
    right join posthistory
        left join users
        on (posthistory.userdisplayname > posthistory.comment)
      inner join comments
          right join votes
            inner join postlinks
              inner join badges
                inner join badges
                on (badges.class = badges.name)
              on (badges.class >= badges.name)
            on (badges.date <= badges.date)
          on (badges.id = postlinks.postid)
        inner join posts
            right join comments
            on (posts.tags < posts.title)
          inner join votes
          on (posts.posttypeid = votes.id )
        on (badges.id = votes.id )
      on (posthistory.comment = comments.userdisplayname )
    on (comments.userdisplayname = badges.class )
where posts.tags = comments.text
limit 109;
select  
  comments.score, 
  comments.score, 
  comments.creationdate, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.postid, 
  comments.postid, 
  comments.id, 
  comments.userdisplayname
from 
  comments
where comments.text is NULL
limit 149;
select  
  votes.userid, 
  badges.userid, 
  posts.owneruserid, 
  badges.name, 
  badges.class, 
  badges.id
from 
  votes
    left join posts
        inner join badges
        on (posts.lastactivitydate < badges.date)
      left join posts
        right join votes
        on (posts.commentcount = votes.id )
      on (badges.tagbased = posts.tags)
    on (posts.answercount = votes.postid)
where votes.userid is NULL
limit 38;
select  
  badges.id
from 
  badges
where badges.userid is not NULL
limit 30;
select  
  posts.commentcount
from 
  posts
where posts.creationdate < posts.communityowneddate
limit 175;
select  
  comments.id, 
  min(
    cast(cast(null as float8) as float8)), 
  votes.postid, 
  posthistory.creationdate
from 
  votes
      right join posthistory
        right join comments
        on (posthistory.postid >= posthistory.id)
      on (votes.creationdate < votes.creationdate)
    inner join posts
            left join posthistory
              left join users
              on (posthistory.contentlicense > users.aboutme)
            on (users.upvotes <= posthistory.userid)
          inner join badges
          on (posthistory.id = badges.id )
        right join comments
        on (badges.date = users.creationdate)
      inner join votes
            inner join posthistory
            on (posthistory.creationdate = votes.creationdate)
          inner join posts
              inner join users
              on (posts.score < posts.posttypeid)
            inner join posts
            on (posts.lasteditoruserid > posts.score)
          on (posthistory.userid = posts.id )
        right join users
          inner join posthistory
          on (posthistory.userid = posthistory.userid)
        on (users.lastaccessdate >= users.lastaccessdate)
      on (posts.lasteditordisplayname >= users.aboutme)
    on (users.profileimageurl is not NULL)
where users.accountid is not NULL
limit 119;
select  
  postlinks.linktypeid, 
  postlinks.postid, 
  max(
    cast(cast(null as xid8) as xid8)), 
  max(
    cast(cast(null as "time") as "time")), 
  posthistory.creationdate
from 
  posthistory
    left join postlinks
    on (postlinks.linktypeid is NULL)
where postlinks.id is not NULL
limit 66;
select  
  users.displayname, 
  posts.owneruserid, 
  users.reputation, 
  posts.creationdate, 
  posts.viewcount, 
  min(
    cast(cast(null as "interval") as "interval")), 
  posts.lastactivitydate, 
  max(
    cast(cast(null as oid) as oid)), 
  posts.answercount, 
  max(
    cast(cast(null as "interval") as "interval")), 
  users.lastaccessdate, 
  posts.title, 
  users.profileimageurl, 
  sum(
    cast(cast(null as float4) as float4)), 
  posts.score, 
  users.displayname, 
  posts.score, 
  users.downvotes, 
  posts.lasteditordisplayname, 
  users.id, 
  posts.contentlicense, 
  users.location, 
  posts.acceptedanswerid, 
  max(
    cast(posts.tags as text)), 
  posts.acceptedanswerid, 
  posts.contentlicense, 
  posts.commentcount, 
  users.aboutme, 
  users.accountid, 
  users.id
from 
  posts
      inner join users
      on (users.displayname > posts.body)
    right join posts
    on (posts.lasteditdate > posts.lastactivitydate)
where users.id is NULL
limit 88;
select  
  votes.id, 
  votes.votetypeid, 
  avg(
    cast(votes.id as int8)), 
  votes.id, 
  votes.id, 
  votes.userid, 
  votes.bountyamount, 
  votes.userid, 
  votes.postid, 
  votes.bountyamount, 
  max(
    cast(cast(null as oid) as oid)), 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.votetypeid, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  votes.userid, 
  votes.creationdate, 
  votes.bountyamount
from 
  votes
where votes.creationdate < votes.creationdate
limit 68;
select  
  comments.id, 
  sum(
    cast(cast(null as int2) as int2)), 
  posts.ownerdisplayname, 
  badges.tagbased, 
  comments.postid, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  badges.tagbased, 
  posts.contentlicense, 
  votes.userid, 
  votes.votetypeid, 
  posthistory.text, 
  posthistory.revisionguid, 
  comments.id, 
  votes.creationdate, 
  badges.userid, 
  sum(
    cast(cast(null as money) as money)), 
  votes.userid, 
  votes.id, 
  posts.communityowneddate, 
  votes.votetypeid
from 
  votes
      right join badges
      on (votes.userid < votes.id)
    inner join comments
      inner join votes
        inner join posts
          left join posthistory
          on (posts.lasteditdate >= posthistory.creationdate)
        on (posts.tags >= posthistory.revisionguid)
      on (posts.closeddate < posthistory.creationdate)
    on (posts.commentcount is not NULL)
where comments.userdisplayname is NULL
limit 157;
select  
  postlinks.linktypeid, 
  posthistory.creationdate, 
  users.upvotes, 
  comments.text, 
  users.id, 
  min(
    cast(cast(null as money) as money)), 
  comments.id, 
  users.location
from 
  votes
      right join comments
        left join comments
        on (comments.text = comments.userdisplayname )
      on (votes.votetypeid = comments.id )
    inner join users
      inner join postlinks
        left join posthistory
              inner join postlinks
              on (postlinks.id < posthistory.posthistorytypeid)
            inner join posthistory
            on (posthistory.posthistorytypeid > postlinks.relatedpostid)
          inner join comments
          on (posthistory.creationdate > comments.creationdate)
        on (posthistory.text > posthistory.text)
      on (postlinks.creationdate >= postlinks.creationdate)
    on (votes.userid is NULL)
where comments.id is NULL
limit 79;
select  
  badges.tagbased, 
  comments.userdisplayname
from 
  badges
        left join comments
        on (badges.date = badges.date)
      inner join users
      on (comments.creationdate <= comments.creationdate)
    right join comments
    on (users.views = badges.userid)
where users.creationdate is NULL;
select  
  votes.votetypeid, 
  votes.id
from 
  votes
where votes.bountyamount is not NULL
limit 16;
select  
  users.location, 
  users.id, 
  users.upvotes
from 
  users
where users.id is not NULL
limit 140;
select  
  badges.tagbased
from 
  badges
      right join posthistory
      on (badges.name < badges.class)
    inner join comments
      inner join badges
      on (comments.userid = badges.id )
    on (badges.date = badges.date )
where badges.userid is NULL
limit 50;
select  
  max(
    cast(cast(null as inet) as inet)), 
  badges.date
from 
  badges
where badges.date is not NULL
limit 151;
select  
  max(
    cast(7 as int4))
from 
  posts
where posts.commentcount <= posts.commentcount;
select  
  posthistory.posthistorytypeid, 
  postlinks.postid, 
  posts.lasteditordisplayname, 
  votes.bountyamount
from 
  postlinks
      inner join postlinks
        right join posts
        on (postlinks.postid < posts.answercount)
      on (posts.contentlicense = posts.body)
    inner join posthistory
          left join comments
          on (posthistory.comment > posthistory.text)
        inner join posts
        on (posts.creationdate > posts.closeddate)
      right join posthistory
        inner join votes
          left join users
          on (users.lastaccessdate <= votes.creationdate)
        on (users.creationdate = users.lastaccessdate)
      on (posthistory.creationdate <= posts.creationdate)
    on (votes.votetypeid is NULL)
where postlinks.relatedpostid is NULL
limit 92;
select  
  badges.userid
from 
  badges
where badges.class <= badges.name
limit 116;
select  
  users.views, 
  comments.id, 
  comments.userdisplayname, 
  comments.score
from 
  users
    inner join comments
    on (comments.text is not NULL)
where comments.postid <= users.id;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.votetypeid
from 
  votes
    right join postlinks
    on (postlinks.creationdate is not NULL)
where votes.votetypeid is NULL
limit 58;
select  
  users.displayname
from 
  posthistory
      inner join users
      on (users.creationdate >= posthistory.creationdate)
    inner join users
        inner join users
        on (users.creationdate <= users.lastaccessdate)
      inner join users
          right join posts
          on (users.downvotes = posts.id )
        left join postlinks
          right join users
            right join users
            on (users.reputation < users.reputation)
          on (postlinks.postid <= users.views)
        on (posts.closeddate <= users.lastaccessdate)
      on (users.id = users.id )
    on (posthistory.posthistorytypeid = postlinks.id )
where users.lastaccessdate is NULL;
select  
  avg(
    cast(82 as int4)), 
  max(
    cast(cast(null as "time") as "time")), 
  users.lastaccessdate, 
  users.aboutme
from 
  users
    inner join users
    on (users.aboutme = users.displayname )
where users.views is not NULL;
select  
  posthistory.userid
from 
  posthistory
where posthistory.userdisplayname is NULL
limit 90;
select  
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  max(
    cast(cast(null as date) as date)), 
  posthistory.revisionguid, 
  posthistory.revisionguid, 
  posthistory.posthistorytypeid, 
  posthistory.userid, 
  posthistory.contentlicense, 
  posthistory.contentlicense
from 
  posthistory
where posthistory.contentlicense is NULL
limit 151;
select  
  postlinks.id, 
  comments.text, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  comments
      right join postlinks
      on (comments.creationdate > comments.creationdate)
    right join comments
    on (postlinks.relatedpostid is NULL)
where comments.score is NULL
limit 88;
select  
  postlinks.relatedpostid, 
  posts.id, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.bountyamount
from 
  votes
      inner join posts
      on (posts.commentcount >= posts.commentcount)
    left join postlinks
    on (postlinks.postid is NULL)
where postlinks.id is NULL;
select  
  max(
    cast(cast(null as xid8) as xid8))
from 
  posthistory
        right join postlinks
        on (posthistory.id = postlinks.id )
      inner join badges
      on (posthistory.creationdate = badges.date )
    inner join posthistory
    on (postlinks.creationdate = posthistory.creationdate)
where posthistory.userdisplayname is not NULL
limit 91;
select  
  posthistory.text, 
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  min(
    cast(cast(null as inet) as inet))
from 
  posthistory
where posthistory.userid is not NULL
limit 136;
select  
  min(
    cast(cast(null as "time") as "time")), 
  users.displayname
from 
  users
where users.profileimageurl is not NULL
limit 129;
select  
  posts.closeddate, 
  posts.owneruserid, 
  posts.commentcount
from 
  users
          inner join comments
            inner join votes
            on (votes.creationdate > votes.creationdate)
          on (users.location >= users.aboutme)
        right join posthistory
        on (posthistory.userid > comments.id)
      left join users
          inner join badges
          on (users.lastaccessdate <= badges.date)
        left join posts
          left join posts
            right join posthistory
            on (posts.answercount < posthistory.id)
          on (posthistory.userdisplayname < posts.tags)
        on (posts.lasteditordisplayname > posts.contentlicense)
      on (badges.id = users.id)
    inner join posts
      inner join badges
          inner join posts
                right join posts
                on (posts.parentid > posts.score)
              inner join badges
              on (badges.class <= badges.tagbased)
            left join users
            on (badges.name <= posts.ownerdisplayname)
          on (posts.lasteditoruserid < posts.owneruserid)
        left join postlinks
          inner join votes
              inner join comments
              on (comments.text < comments.userdisplayname)
            left join comments
            on (votes.bountyamount = comments.id )
          on (postlinks.linktypeid = comments.id )
        on (users.views < posts.score)
      on (users.downvotes = posts.commentcount)
    on (posts.body is not NULL)
where posts.creationdate = posts.communityowneddate
limit 122;
select  
  posts.favoritecount, 
  posts.lasteditdate, 
  posts.viewcount, 
  min(
    cast(cast(null as "time") as "time")), 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.title, 
  posts.body, 
  posts.communityowneddate
from 
  posts
where posts.tags is not NULL
limit 138;
select  
  votes.id, 
  votes.votetypeid, 
  votes.userid, 
  votes.postid, 
  votes.votetypeid, 
  votes.userid, 
  votes.creationdate, 
  votes.userid, 
  votes.votetypeid, 
  votes.userid, 
  min(
    cast(cast(null as oid) as oid)), 
  max(
    cast(cast(null as float8) as float8))
from 
  votes
where votes.id is NULL;
select  
  sum(
    cast(cast(null as money) as money)), 
  votes.postid, 
  votes.userid, 
  votes.creationdate, 
  votes.creationdate, 
  votes.votetypeid
from 
  votes
where votes.id is NULL
limit 59;
select  
  votes.postid, 
  votes.userid, 
  votes.creationdate, 
  votes.creationdate, 
  votes.userid, 
  sum(
    cast(votes.bountyamount as int8)), 
  votes.id, 
  votes.postid, 
  votes.bountyamount, 
  votes.userid, 
  votes.bountyamount
from 
  votes
where votes.postid is not NULL
limit 74;
select distinct 
  badges.userid, 
  min(
    cast(cast(null as date) as date)), 
  badges.userid, 
  badges.name, 
  badges.userid, 
  badges.userid, 
  badges.class, 
  badges.userid, 
  badges.class, 
  badges.name, 
  badges.date
from 
  badges
where badges.tagbased is not NULL
limit 127;
select  
  posts.favoritecount, 
  posts.title, 
  posts.creationdate, 
  min(
    cast(cast(null as int2) as int2)), 
  posts.contentlicense, 
  posts.tags, 
  posts.lasteditordisplayname, 
  posts.creationdate, 
  posts.lasteditordisplayname, 
  posts.posttypeid, 
  posts.lastactivitydate, 
  posts.body, 
  posts.lasteditdate, 
  posts.tags, 
  posts.score, 
  posts.tags, 
  posts.parentid, 
  max(
    cast(cast(null as "interval") as "interval")), 
  posts.parentid
from 
  posts
where posts.closeddate is not NULL;
select  
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  max(
    cast(cast(null as float4) as float4)), 
  min(
    cast(cast(null as "time") as "time")), 
  votes.votetypeid, 
  posthistory.comment
from 
  posthistory
      left join posthistory
      on (posthistory.userdisplayname >= posthistory.comment)
    inner join votes
    on (posthistory.id is not NULL)
where posthistory.creationdate > posthistory.creationdate
limit 67;
select  
  badges.id
from 
  badges
where badges.date <= badges.date;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  avg(
    cast(cast(null as int2) as int2))
from 
  postlinks
where postlinks.linktypeid is NULL;
select  
  max(
    cast(cast(null as inet) as inet)), 
  votes.bountyamount, 
  votes.userid
from 
  votes
        right join votes
          right join badges
            right join votes
            on (badges.id > votes.votetypeid)
          on (badges.name >= badges.name)
        on (badges.class = badges.tagbased)
      right join postlinks
        inner join users
          inner join posts
              inner join posthistory
              on (posts.favoritecount = posthistory.id )
            left join badges
            on (posts.ownerdisplayname = badges.class )
          on (users.upvotes = posts.id )
        on (posts.lasteditoruserid <= postlinks.relatedpostid)
      on (votes.creationdate > users.lastaccessdate)
    left join votes
            inner join badges
            on (badges.class > badges.tagbased)
          inner join votes
          on (votes.bountyamount = votes.id )
        left join posthistory
        on (badges.date > posthistory.creationdate)
      inner join votes
      on (posthistory.contentlicense >= posthistory.text)
    on (users.downvotes is not NULL)
where badges.userid is NULL
limit 99;
select  
  posts.parentid, 
  votes.postid
from 
  posthistory
      inner join posts
        right join votes
              right join badges
              on (votes.userid = badges.id )
            left join votes
                inner join badges
                on (votes.bountyamount >= votes.userid)
              right join posts
              on (badges.class >= posts.contentlicense)
            on (votes.bountyamount < votes.bountyamount)
          left join posts
          on (votes.bountyamount >= posts.commentcount)
        on (posts.contentlicense = posts.lasteditordisplayname)
      on (posthistory.userdisplayname = badges.class )
    left join postlinks
    on (badges.class = badges.class)
where postlinks.id is not NULL;
select  
  postlinks.linktypeid, 
  users.location, 
  posts.title, 
  posts.viewcount, 
  posts.score, 
  count(
    cast(posts.title as text)), 
  postlinks.postid, 
  postlinks.linktypeid, 
  users.displayname, 
  max(
    cast(cast(null as date) as date))
from 
  posthistory
      inner join posts
        right join postlinks
            inner join comments
            on (postlinks.id < postlinks.id)
          left join users
          on (comments.creationdate > users.lastaccessdate)
        on (posts.tags < posts.body)
      on (comments.userid = posts.commentcount)
    inner join posthistory
    on (users.id is NULL)
where posts.favoritecount < posts.lasteditoruserid
limit 141;
select  
  users.location, 
  users.aboutme, 
  users.views
from 
  users
where users.reputation is not NULL
limit 48;
select  
  avg(
    cast(cast(null as int2) as int2)), 
  posts.score, 
  posts.parentid
from 
  posts
        left join posts
        on (posts.title = posts.ownerdisplayname )
      left join badges
            inner join posts
            on (posts.lastactivitydate <= badges.date)
          right join badges
            right join votes
            on (badges.name >= badges.class)
          on (posts.acceptedanswerid > posts.answercount)
        right join posthistory
        on (posthistory.text > badges.class)
      on (posts.communityowneddate = badges.date )
    inner join votes
    on (posts.title is NULL)
where votes.bountyamount < posts.acceptedanswerid
limit 70;
select  
  badges.class
from 
  votes
          right join badges
          on (votes.votetypeid = badges.id)
        inner join posthistory
        on (votes.userid = votes.userid)
      inner join badges
      on (posthistory.userdisplayname > posthistory.comment)
    right join users
      inner join badges
          inner join postlinks
          on (badges.name >= badges.tagbased)
        inner join users
          right join postlinks
          on (users.creationdate >= postlinks.creationdate)
        on (users.location < badges.class)
      on (users.id = postlinks.id )
    on (postlinks.postid is not NULL)
where users.lastaccessdate is not NULL;
select  
  posthistory.postid, 
  posthistory.contentlicense, 
  posthistory.comment
from 
  posthistory
where posthistory.userdisplayname is not NULL;
select  
  posts.posttypeid, 
  posts.acceptedanswerid, 
  posts.parentid, 
  comments.id, 
  comments.postid, 
  postlinks.linktypeid, 
  posts.lastactivitydate, 
  comments.userdisplayname, 
  postlinks.id, 
  avg(
    cast(cast(null as float8) as float8)), 
  postlinks.creationdate, 
  comments.userdisplayname, 
  sum(
    cast(cast(null as int2) as int2)), 
  posts.lasteditordisplayname, 
  postlinks.creationdate, 
  comments.postid, 
  postlinks.linktypeid, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postlinks.relatedpostid
from 
  postlinks
      right join posts
      on (postlinks.postid = posts.id )
    inner join comments
    on (comments.userdisplayname is NULL)
where posts.creationdate <= posts.creationdate
limit 42;
select  
  users.websiteurl, 
  users.reputation, 
  users.reputation, 
  users.id, 
  users.creationdate, 
  users.creationdate
from 
  users
where users.location = users.websiteurl;
select  
  votes.postid
from 
  votes
where votes.postid is NULL
limit 31;
select  
  posthistory.userid, 
  posthistory.userid, 
  sum(
    cast(cast(null as int2) as int2)), 
  posthistory.posthistorytypeid
from 
  users
    inner join comments
      inner join posthistory
      on (posthistory.text >= comments.userdisplayname)
    on (users.views is NULL)
where comments.userdisplayname is NULL;
select  
  posts.acceptedanswerid, 
  posts.acceptedanswerid, 
  posts.viewcount
from 
  posts
where posts.communityowneddate is not NULL
limit 121;
select  
  sum(
    cast(postlinks.relatedpostid as int8)), 
  badges.class, 
  postlinks.creationdate, 
  comments.userdisplayname, 
  badges.userid, 
  comments.postid, 
  comments.userid, 
  avg(
    cast(badges.userid as int8)), 
  posthistory.postid, 
  postlinks.creationdate
from 
  badges
            right join posthistory
            on (badges.userid = posthistory.id )
          inner join comments
          on (badges.userid <= comments.userid)
        right join postlinks
        on (comments.text < comments.userdisplayname)
      inner join badges
      on (posthistory.creationdate >= badges.date)
    inner join comments
    on (badges.id < postlinks.linktypeid)
where comments.postid is NULL
limit 53;
select distinct 
  posthistory.contentlicense, 
  users.location
from 
  comments
        left join badges
        on (badges.class = badges.tagbased)
      inner join badges
          left join postlinks
          on (badges.date >= postlinks.creationdate)
        left join postlinks
            inner join posthistory
            on (posthistory.userid < postlinks.postid)
          right join posts
          on (posthistory.contentlicense > posthistory.revisionguid)
        on (posts.lastactivitydate <= posts.lastactivitydate)
      on (posts.closeddate <= badges.date)
    inner join posts
            inner join users
            on (posts.parentid = users.id )
          inner join comments
          on (posts.creationdate >= comments.creationdate)
        inner join posthistory
        on (posts.lastactivitydate >= comments.creationdate)
      right join posts
          left join users
              right join posthistory
                right join posthistory
                on (posthistory.creationdate = posthistory.creationdate )
              on (posthistory.posthistorytypeid >= posthistory.id)
            right join posthistory
            on (posthistory.text <= posthistory.revisionguid)
          on (posts.lasteditoruserid < users.id)
        inner join badges
          inner join postlinks
          on (badges.id = postlinks.id )
        on (posts.favoritecount > posthistory.postid)
      on (comments.score <= posts.posttypeid)
    on (postlinks.postid is NULL)
where postlinks.creationdate > posts.closeddate
limit 127;
select  
  votes.bountyamount
from 
  votes
where votes.votetypeid is NULL
limit 96;
select  
  min(
    cast(cast(null as xid8) as xid8))
from 
  posthistory
where posthistory.userid = posthistory.userid
limit 102;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  posts.communityowneddate, 
  posts.favoritecount, 
  posts.parentid, 
  posts.posttypeid, 
  posts.answercount, 
  max(
    cast(cast(null as "timestamp") as "timestamp"))
from 
  posts
where posts.body < posts.tags
limit 104;
select  
  votes.id, 
  comments.creationdate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  comments.userid, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  comments.postid
from 
  comments
    right join votes
    on (votes.bountyamount >= votes.votetypeid)
where votes.votetypeid = votes.bountyamount
limit 31;
select  
  users.accountid
from 
  users
where users.profileimageurl is not NULL;
select  
  posthistory.contentlicense, 
  posthistory.postid, 
  votes.userid, 
  posthistory.userid, 
  votes.bountyamount, 
  badges.userid, 
  posts.lastactivitydate, 
  posts.acceptedanswerid, 
  sum(
    cast(cast(null as float8) as float8)), 
  badges.userid, 
  votes.votetypeid, 
  posts.id, 
  badges.userid
from 
  users
          left join votes
          on (users.reputation >= votes.votetypeid)
        inner join posts
        on (posts.closeddate = posts.lastactivitydate)
      inner join posthistory
      on (votes.creationdate = posthistory.creationdate )
    inner join badges
    on (badges.userid is not NULL)
where posts.answercount is not NULL;
select  
  posts.favoritecount, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  posts.communityowneddate, 
  min(
    cast(cast(null as anyenum) as anyenum)), 
  posts.title, 
  posts.acceptedanswerid, 
  min(
    cast(cast(null as xid8) as xid8)), 
  posts.communityowneddate, 
  posts.creationdate
from 
  posts
where posts.tags >= posts.contentlicense
limit 130;
select  
  posthistory.postid, 
  posthistory.comment
from 
  posthistory
where posthistory.posthistorytypeid >= posthistory.posthistorytypeid
limit 106;
select  
  votes.postid, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.postid, 
  votes.userid, 
  votes.userid, 
  votes.userid, 
  votes.id, 
  votes.votetypeid, 
  votes.id, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.id, 
  votes.bountyamount, 
  votes.postid
from 
  votes
where votes.postid < votes.votetypeid;
select  
  posts.creationdate, 
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
    right join posts
    on (postlinks.postid = posts.id )
where posts.lasteditdate is not NULL;
select  
  comments.userdisplayname, 
  comments.postid, 
  comments.text
from 
  comments
where comments.userid is NULL
limit 73;
select  
  postlinks.linktypeid, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate is NULL
limit 149;
select  
  posthistory.userid, 
  posthistory.posthistorytypeid, 
  comments.score, 
  min(
    cast(cast(null as oid) as oid)), 
  posthistory.userdisplayname
from 
  users
          left join badges
          on (users.upvotes = badges.id )
        right join posts
            inner join comments
            on (comments.text >= posts.contentlicense)
          right join posthistory
          on (posthistory.comment < posts.title)
        on (users.creationdate >= posts.creationdate)
      right join posthistory
      on (comments.userdisplayname = posthistory.comment)
    left join comments
    on (comments.score is not NULL)
where posthistory.creationdate is not NULL
limit 134;
select  
  posts.creationdate, 
  posts.tags, 
  posts.answercount, 
  posts.answercount
from 
  posts
where posts.score is not NULL;
select  
  comments.creationdate, 
  votes.userid, 
  sum(
    cast(21 as int4))
from 
  votes
              left join users
                inner join posthistory
                on (users.id >= posthistory.postid)
              on (votes.votetypeid = posthistory.id )
            right join postlinks
            on (posthistory.text <= posthistory.contentlicense)
          right join votes
          on (postlinks.creationdate >= users.creationdate)
        inner join comments
        on (postlinks.creationdate <= votes.creationdate)
      right join badges
          right join posthistory
          on (posthistory.text = badges.name)
        left join badges
        on (badges.userid <= badges.id)
      on (users.lastaccessdate <= users.lastaccessdate)
    inner join users
    on (users.websiteurl is not NULL)
where users.location is not NULL
limit 152;
select  
  posthistory.revisionguid, 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.creationdate
from 
  posthistory
where posthistory.id >= posthistory.posthistorytypeid
limit 116;
select  
  sum(
    cast(posthistory.postid as int8)), 
  posthistory.creationdate, 
  posthistory.postid
from 
  posthistory
where posthistory.creationdate is not NULL
limit 125;
select  
  comments.userid, 
  comments.postid, 
  comments.userid
from 
  comments
where comments.postid is NULL
limit 143;
select  
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.revisionguid
from 
  posthistory
where posthistory.postid is not NULL
limit 81;
select  
  users.accountid, 
  users.id, 
  users.websiteurl, 
  users.views, 
  users.creationdate, 
  users.accountid, 
  users.location, 
  users.websiteurl, 
  users.creationdate, 
  users.location
from 
  users
where users.aboutme >= users.profileimageurl
limit 142;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  badges.tagbased, 
  comments.userdisplayname, 
  comments.creationdate, 
  badges.id, 
  comments.userid, 
  comments.text, 
  comments.score, 
  comments.id, 
  comments.text
from 
  comments
    right join badges
    on (comments.postid = badges.id )
where badges.tagbased is NULL;
select  
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.posthistorytypeid is not NULL
limit 130;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  users.accountid, 
  users.views, 
  sum(
    cast(76 as int4)), 
  users.upvotes, 
  users.displayname, 
  users.aboutme, 
  users.aboutme
from 
  users
where users.lastaccessdate is NULL
limit 143;
select  
  comments.userdisplayname, 
  users.reputation, 
  users.displayname, 
  min(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(users.accountid as int8)), 
  users.id, 
  count(
    cast(comments.userdisplayname as text)), 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.creationdate, 
  avg(
    cast(cast(null as float8) as float8)), 
  users.views, 
  comments.creationdate, 
  users.views, 
  users.downvotes, 
  users.accountid, 
  comments.userdisplayname, 
  comments.postid, 
  comments.userdisplayname, 
  comments.score, 
  users.views, 
  comments.id, 
  comments.score, 
  comments.text
from 
  users
    inner join comments
    on (comments.text is not NULL)
where users.profileimageurl < users.location;
select  
  users.id, 
  users.accountid, 
  users.creationdate, 
  users.id, 
  users.lastaccessdate, 
  users.profileimageurl, 
  users.creationdate
from 
  users
where users.creationdate is not NULL
limit 73;
select  
  postlinks.linktypeid
from 
  posts
        left join postlinks
        on (posts.tags = posts.lasteditordisplayname)
      inner join comments
        right join votes
        on (comments.score < votes.userid)
      on (posts.title = posts.title)
    inner join postlinks
        inner join badges
          left join badges
          on (badges.class >= badges.tagbased)
        on (postlinks.creationdate < badges.date)
      left join users
        left join postlinks
          inner join votes
          on (postlinks.postid >= postlinks.postid)
        on (users.creationdate >= votes.creationdate)
      on (badges.date < badges.date)
    on (users.creationdate is NULL)
where badges.class is not NULL
limit 113;
select  
  postlinks.postid, 
  badges.name
from 
  postlinks
    left join badges
    on (postlinks.relatedpostid is NULL)
where badges.class = badges.class
limit 116;
select  
  badges.date
from 
  badges
          inner join posts
              inner join posts
              on (posts.creationdate = posts.creationdate )
            right join users
            on (posts.creationdate <= users.creationdate)
          on (posts.lasteditordisplayname >= posts.lasteditordisplayname)
        right join posts
          right join badges
            left join badges
              inner join comments
              on (comments.score <= badges.userid)
            on (badges.userid >= comments.userid)
          on (comments.userdisplayname > posts.lasteditordisplayname)
        on (posts.title > posts.tags)
      inner join badges
      on (badges.tagbased = badges.class )
    left join posts
    on (posts.ownerdisplayname = posts.ownerdisplayname )
where posts.id is not NULL
limit 147;
select  
  badges.class, 
  badges.date, 
  avg(
    cast(badges.id as int8)), 
  badges.tagbased
from 
  badges
where badges.tagbased is NULL
limit 105;
select  
  posthistory.userdisplayname
from 
  users
    inner join postlinks
          left join users
          on (postlinks.creationdate < postlinks.creationdate)
        left join posts
        on (users.views = users.views)
      inner join votes
        inner join posthistory
        on (votes.creationdate < posthistory.creationdate)
      on (users.accountid > votes.userid)
    on (users.upvotes <= votes.id)
where votes.bountyamount is NULL
limit 112;
select  
  posts.posttypeid, 
  posts.posttypeid, 
  posts.owneruserid, 
  posts.closeddate, 
  posts.lasteditoruserid, 
  posts.lastactivitydate, 
  posts.lasteditoruserid, 
  min(
    cast(posts.parentid as int8)), 
  sum(
    cast(posts.commentcount as int8)), 
  posts.id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  posts.acceptedanswerid, 
  posts.ownerdisplayname, 
  max(
    cast(cast(null as "interval") as "interval"))
from 
  posts
    right join posts
    on (posts.communityowneddate = posts.creationdate )
where posts.acceptedanswerid is not NULL
limit 131;
select  
  comments.postid, 
  votes.postid, 
  max(
    cast(cast(null as inet) as inet)), 
  comments.id, 
  votes.bountyamount, 
  votes.userid
from 
  votes
    inner join comments
    on (votes.id = comments.id )
where comments.postid is NULL;
select  
  votes.votetypeid, 
  votes.id, 
  votes.postid
from 
  votes
where votes.id is NULL
limit 162;
select  
  votes.votetypeid, 
  votes.creationdate, 
  votes.userid, 
  votes.votetypeid, 
  avg(
    cast(cast(null as float8) as float8)), 
  votes.bountyamount, 
  min(
    cast(votes.creationdate as timestamptz)), 
  votes.votetypeid, 
  votes.votetypeid, 
  max(
    cast(cast(null as float8) as float8)), 
  votes.postid, 
  votes.votetypeid, 
  votes.userid, 
  avg(
    cast(votes.userid as int8)), 
  votes.userid, 
  votes.id, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.creationdate, 
  votes.creationdate, 
  votes.id, 
  votes.bountyamount, 
  votes.votetypeid, 
  votes.postid, 
  votes.bountyamount, 
  votes.userid
from 
  votes
where votes.bountyamount is NULL;
select  
  count(
    cast(comments.userdisplayname as text))
from 
  comments
where comments.score is NULL;
select  
  comments.score, 
  max(
    cast(cast(null as date) as date)), 
  comments.creationdate, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.id, 
  posthistory.comment, 
  posthistory.creationdate, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  comments.score, 
  posthistory.userid, 
  posthistory.posthistorytypeid
from 
  posthistory
    left join comments
    on (comments.userid is NULL)
where posthistory.userdisplayname is NULL
limit 96;
select  
  postlinks.creationdate, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 148;
select  
  posthistory.text
from 
  comments
      right join postlinks
          left join posthistory
          on (postlinks.linktypeid <= posthistory.posthistorytypeid)
        inner join postlinks
        on (postlinks.creationdate < posthistory.creationdate)
      on (posthistory.text <= posthistory.text)
    inner join badges
      inner join comments
          inner join users
            left join votes
            on (users.reputation = votes.id )
          on (comments.postid = votes.id )
        inner join postlinks
        on (comments.creationdate <= users.lastaccessdate)
      on (badges.class <= badges.class)
    on (postlinks.postid = badges.id )
where comments.text is not NULL;
select  
  users.location, 
  max(
    cast(votes.creationdate as timestamptz))
from 
  posts
          inner join posthistory
          on (posts.communityowneddate <= posts.closeddate)
        inner join comments
        on (posthistory.revisionguid = comments.userdisplayname )
      inner join badges
      on (comments.score >= posthistory.postid)
    inner join badges
      inner join votes
        inner join users
            inner join posts
              left join badges
                left join posthistory
                on (posthistory.postid > badges.id)
              on (posts.lastactivitydate <= posts.lastactivitydate)
            on (users.location = users.aboutme)
          right join badges
          on (badges.date = badges.date )
        on (badges.tagbased = badges.tagbased)
      on (badges.class >= badges.class)
    on (users.profileimageurl is not NULL)
where badges.class is not NULL
limit 18;
select  
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  posts.lastactivitydate, 
  posthistory.id
from 
  posthistory
      inner join posts
        inner join posthistory
        on (posts.score >= posts.lasteditoruserid)
      on (posthistory.userdisplayname = posts.ownerdisplayname )
    left join posthistory
    on (posts.closeddate > posts.lastactivitydate)
where posthistory.userid is NULL
limit 91;
select  
  posts.creationdate, 
  comments.id, 
  posts.commentcount, 
  comments.userdisplayname
from 
  posthistory
        inner join users
        on (posthistory.contentlicense <= users.aboutme)
      inner join comments
      on (users.lastaccessdate >= users.lastaccessdate)
    inner join posts
    on (comments.userid is NULL)
where posts.lastactivitydate < posts.lasteditdate
limit 122;
select  
  users.websiteurl, 
  posthistory.postid, 
  users.websiteurl, 
  sum(
    cast(cast(null as int2) as int2)), 
  postlinks.postid, 
  sum(
    cast(users.id as int8)), 
  comments.id, 
  posthistory.postid, 
  users.aboutme
from 
  comments
      inner join postlinks
              inner join comments
              on (postlinks.creationdate < postlinks.creationdate)
            inner join posts
            on (posts.owneruserid = postlinks.id)
          inner join posthistory
          on (posts.body <= posthistory.contentlicense)
        left join users
          left join posthistory
            right join badges
            on (posthistory.text = posthistory.text)
          on (users.lastaccessdate < badges.date)
        on (posthistory.revisionguid < users.profileimageurl)
      on (badges.class > comments.text)
    right join posts
        inner join users
        on (posts.closeddate = posts.closeddate)
      inner join postlinks
        inner join posthistory
          inner join comments
          on (posthistory.id = comments.id )
        on (comments.score > posthistory.posthistorytypeid)
      on (users.profileimageurl = posthistory.userdisplayname )
    on (postlinks.id is NULL)
where users.id > posts.id
limit 76;
select  
  comments.userid, 
  votes.bountyamount, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  min(
    cast(votes.creationdate as timestamptz)), 
  comments.userid
from 
  votes
      right join comments
      on (comments.id = votes.votetypeid)
    right join comments
    on (votes.votetypeid <= comments.postid)
where comments.userid < votes.votetypeid;
select  
  comments.text, 
  posts.closeddate
from 
  posts
      right join postlinks
        inner join comments
        on (comments.text < comments.userdisplayname)
      on (posts.posttypeid = comments.id )
    inner join posts
    on (posts.lasteditoruserid is NULL)
where comments.score is not NULL;
select  
  posthistory.revisionguid, 
  posthistory.comment
from 
  posthistory
      left join comments
      on (comments.creationdate = comments.creationdate)
    inner join posthistory
      right join postlinks
        right join users
        on (users.aboutme > users.displayname)
      on (users.reputation >= postlinks.linktypeid)
    on (posthistory.userid is NULL)
where postlinks.linktypeid is not NULL;
select  
  votes.creationdate, 
  votes.bountyamount, 
  votes.bountyamount, 
  votes.postid
from 
  votes
where votes.userid is not NULL
limit 109;
select  
  sum(
    cast(cast(null as int2) as int2)), 
  users.downvotes, 
  users.reputation, 
  users.aboutme, 
  users.aboutme, 
  users.id, 
  max(
    cast(cast(null as int2) as int2)), 
  users.upvotes, 
  max(
    cast(cast(null as float4) as float4)), 
  users.displayname, 
  users.displayname, 
  avg(
    cast(users.upvotes as int8)), 
  users.lastaccessdate, 
  users.aboutme
from 
  users
where users.displayname is not NULL
limit 70;
select  
  postlinks.relatedpostid, 
  comments.score
from 
  comments
        inner join users
          left join postlinks
          on (postlinks.id > users.reputation)
        on (users.profileimageurl <= users.displayname)
      inner join posthistory
        inner join postlinks
        on (posthistory.postid = postlinks.id )
      on (users.profileimageurl = users.location)
    left join users
    on (users.lastaccessdate < posthistory.creationdate)
where users.aboutme is not NULL
limit 75;
select  
  postlinks.creationdate, 
  postlinks.linktypeid, 
  sum(
    cast(46 as int4)), 
  max(
    cast(postlinks.creationdate as timestamptz)), 
  postlinks.relatedpostid, 
  postlinks.id, 
  postlinks.id, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.postid, 
  min(
    cast(cast(null as int2) as int2)), 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.creationdate
from 
  postlinks
where postlinks.linktypeid is NULL
limit 59;
select  
  postlinks.linktypeid, 
  postlinks.creationdate, 
  badges.name, 
  sum(
    cast(cast(null as money) as money)), 
  badges.name, 
  badges.name, 
  badges.class, 
  badges.name, 
  avg(
    cast(cast(null as int2) as int2))
from 
  badges
    left join postlinks
    on (postlinks.relatedpostid is not NULL)
where badges.name is NULL
limit 18;
select  
  users.accountid, 
  users.lastaccessdate, 
  max(
    cast(cast(null as xid8) as xid8)), 
  users.location, 
  users.creationdate, 
  users.upvotes, 
  users.location, 
  users.views, 
  users.lastaccessdate, 
  users.aboutme
from 
  users
where users.creationdate < users.creationdate;
select  
  posthistory.contentlicense, 
  posthistory.comment, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  posthistory.contentlicense
from 
  posthistory
where posthistory.userdisplayname = posthistory.contentlicense
limit 153;
select  
  comments.creationdate
from 
  comments
where comments.text >= comments.userdisplayname
limit 183;
select  
  users.id
from 
  users
where users.location > users.displayname
limit 178;
select  
  max(
    cast(cast(null as inet) as inet))
from 
  posthistory
where posthistory.userid is not NULL
limit 127;
select  
  posthistory.contentlicense, 
  posthistory.creationdate, 
  posthistory.posthistorytypeid, 
  posthistory.comment, 
  max(
    cast(cast(null as oid) as oid))
from 
  comments
    inner join posthistory
    on (comments.text = posthistory.userdisplayname )
where posthistory.contentlicense > posthistory.contentlicense
limit 161;
select  
  min(
    cast(badges.tagbased as text)), 
  badges.tagbased
from 
  badges
where badges.name is NULL
limit 169;
select  
  users.websiteurl, 
  posthistory.text
from 
  posthistory
      inner join posts
      on (posthistory.text = posts.ownerdisplayname )
    left join users
    on (posthistory.text is not NULL)
where posthistory.comment is not NULL
limit 75;
select  
  sum(
    cast(cast(null as float8) as float8)), 
  posts.viewcount, 
  posthistory.userid, 
  posts.ownerdisplayname
from 
  posts
        inner join votes
          inner join postlinks
          on (votes.creationdate = postlinks.creationdate)
        on (posts.lastactivitydate >= posts.creationdate)
      left join posts
      on (posts.tags < posts.lasteditordisplayname)
    inner join posts
          right join postlinks
          on (posts.creationdate >= postlinks.creationdate)
        left join comments
        on (posts.communityowneddate > comments.creationdate)
      left join users
          inner join posthistory
          on (users.downvotes >= posthistory.posthistorytypeid)
        inner join posthistory
        on (posthistory.postid >= users.downvotes)
      on (posthistory.userid < posthistory.posthistorytypeid)
    on (posts.answercount is NULL)
where posts.viewcount is not NULL
limit 38;
select  
  comments.postid, 
  comments.id
from 
  comments
where comments.score is not NULL
limit 69;
select  
  users.profileimageurl, 
  users.views, 
  users.downvotes, 
  users.aboutme, 
  users.location
from 
  users
where users.lastaccessdate > users.lastaccessdate;
select  
  posts.body
from 
  posts
    right join users
    on (posts.commentcount is NULL)
where users.accountid is NULL
limit 113;
select  
  badges.userid, 
  votes.postid, 
  votes.creationdate
from 
  badges
    left join users
          inner join votes
            right join comments
            on (comments.text <= comments.text)
          on (comments.id <= users.id)
        left join badges
          inner join users
          on (users.creationdate <= users.creationdate)
        on (comments.text >= users.location)
      right join posts
        inner join votes
          right join comments
          on (votes.userid <= comments.postid)
        on (posts.lastactivitydate = comments.creationdate )
      on (posts.closeddate > posts.lastactivitydate)
    on (badges.date >= users.lastaccessdate)
where users.lastaccessdate is not NULL
limit 10;
select  
  posts.ownerdisplayname, 
  postlinks.relatedpostid, 
  users.accountid, 
  posthistory.revisionguid, 
  posts.ownerdisplayname, 
  max(
    cast(cast(null as money) as money)), 
  comments.userid, 
  users.accountid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  posthistory.id
from 
  users
      inner join posts
      on (posts.lasteditordisplayname = users.location)
    right join users
        right join posthistory
          inner join postlinks
          on (postlinks.linktypeid <= posthistory.postid)
        on (postlinks.creationdate >= users.creationdate)
      right join votes
          right join comments
          on (comments.text = comments.userdisplayname)
        inner join posts
          inner join comments
          on (comments.score = posts.posttypeid)
        on (votes.userid = comments.id )
      on (users.creationdate = comments.creationdate )
    on (postlinks.postid is NULL)
where posts.answercount is NULL;
select  
  users.downvotes, 
  users.creationdate
from 
  users
      inner join posthistory
      on (posthistory.userid = users.downvotes)
    left join badges
      inner join users
      on (badges.date < users.creationdate)
    on (posthistory.comment = badges.class )
where posthistory.comment is NULL
limit 98;
select  
  postlinks.linktypeid, 
  max(
    cast(cast(null as timetz) as timetz))
from 
  posts
          right join posts
          on (posts.commentcount = posts.id )
        right join users
          left join votes
          on (users.lastaccessdate >= users.creationdate)
        on (users.upvotes < users.upvotes)
      inner join postlinks
      on (posts.owneruserid <= posts.viewcount)
    left join postlinks
      left join postlinks
          left join posthistory
          on (postlinks.linktypeid = postlinks.relatedpostid)
        left join comments
        on (comments.userid > posthistory.postid)
      on (postlinks.creationdate >= comments.creationdate)
    on (posts.answercount = postlinks.id)
where postlinks.id is not NULL
limit 117;
select  
  posts.lasteditordisplayname, 
  posts.owneruserid, 
  posts.owneruserid, 
  posts.lastactivitydate, 
  posts.title, 
  posts.tags, 
  posts.commentcount, 
  posts.lasteditoruserid, 
  posts.favoritecount, 
  posts.lasteditdate
from 
  posts
where posts.acceptedanswerid is not NULL
limit 112;
select  
  comments.creationdate, 
  comments.creationdate, 
  comments.postid, 
  comments.userdisplayname, 
  comments.id, 
  max(
    cast(cast(null as inet) as inet)), 
  comments.text, 
  comments.userid, 
  comments.userid, 
  min(
    cast(cast(null as "interval") as "interval")), 
  comments.score, 
  comments.text, 
  comments.postid, 
  max(
    cast(cast(null as oid) as oid)), 
  count(*), 
  comments.postid, 
  comments.creationdate, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.score
from 
  comments
where comments.userid is not NULL
limit 107;
select  
  comments.creationdate, 
  comments.creationdate, 
  comments.score, 
  comments.id, 
  comments.id, 
  comments.score, 
  comments.userid, 
  comments.creationdate, 
  comments.score, 
  min(
    cast(cast(null as money) as money)), 
  max(
    cast(cast(null as money) as money))
from 
  comments
where comments.text is not NULL;
select  
  votes.votetypeid
from 
  comments
    left join votes
    on (comments.postid is not NULL)
where comments.userdisplayname is NULL
limit 121;
select  
  comments.text, 
  comments.userid, 
  comments.userdisplayname, 
  postlinks.id, 
  postlinks.id
from 
  postlinks
    inner join comments
      left join badges
      on (comments.score > comments.id)
    on (postlinks.linktypeid = badges.id )
where badges.date < badges.date
limit 75;
select  
  badges.id, 
  posthistory.contentlicense, 
  postlinks.linktypeid, 
  postlinks.id, 
  postlinks.id
from 
  badges
        inner join posthistory
        on (posthistory.creationdate <= badges.date)
      right join postlinks
      on (posthistory.creationdate <= badges.date)
    right join posts
    on (postlinks.relatedpostid is not NULL)
where postlinks.postid is not NULL
limit 106;
select  
  posts.contentlicense, 
  posts.ownerdisplayname, 
  sum(
    cast(cast(null as int2) as int2)), 
  comments.score, 
  comments.userdisplayname, 
  comments.text, 
  posts.commentcount, 
  comments.creationdate, 
  comments.userdisplayname, 
  posts.viewcount, 
  posts.communityowneddate
from 
  comments
    inner join posts
    on (comments.creationdate is not NULL)
where comments.id is not NULL
limit 67;
select  
  posthistory.userdisplayname
from 
  posthistory
where posthistory.id is not NULL;
select  
  comments.userid, 
  comments.postid, 
  comments.id
from 
  comments
where comments.userid is NULL
limit 168;
select  
  votes.userid, 
  votes.postid
from 
  votes
where votes.id is not NULL
limit 71;
select  
  badges.name, 
  badges.name, 
  badges.date, 
  min(
    cast(badges.userid as int8)), 
  badges.date, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  badges.id, 
  badges.name, 
  badges.class, 
  badges.name, 
  badges.userid, 
  badges.id, 
  badges.id, 
  badges.userid, 
  min(
    cast(75 as int4)), 
  badges.userid, 
  badges.tagbased
from 
  badges
where badges.name is not NULL
limit 117;
select  
  badges.userid, 
  badges.class
from 
  badges
where badges.name is not NULL
limit 75;
select  
  posthistory.postid, 
  posthistory.id, 
  posthistory.contentlicense, 
  posthistory.text, 
  posthistory.postid, 
  posthistory.creationdate
from 
  posthistory
where posthistory.postid is not NULL
limit 98;
select  
  comments.text, 
  comments.score, 
  comments.userdisplayname, 
  badges.id, 
  badges.id, 
  badges.name, 
  badges.date, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.text, 
  badges.tagbased, 
  comments.creationdate, 
  badges.userid
from 
  comments
    right join badges
    on (comments.text is NULL)
where badges.userid is NULL
limit 95;
select  
  badges.class, 
  postlinks.linktypeid, 
  badges.userid, 
  badges.id, 
  badges.tagbased, 
  postlinks.postid, 
  postlinks.postid, 
  badges.userid, 
  postlinks.creationdate, 
  postlinks.id, 
  max(
    cast(cast(null as xid8) as xid8)), 
  badges.userid, 
  postlinks.postid
from 
  badges
    right join postlinks
    on (postlinks.creationdate is NULL)
where postlinks.creationdate is not NULL;
select  
  votes.creationdate, 
  votes.userid, 
  votes.postid, 
  votes.bountyamount
from 
  votes
where votes.votetypeid is NULL
limit 91;
select  
  postlinks.id
from 
  badges
      left join votes
        right join postlinks
            left join comments
            on (comments.text > comments.userdisplayname)
          right join users
          on (comments.text = users.displayname )
        on (users.lastaccessdate <= users.creationdate)
      on (users.reputation <= votes.id)
    inner join votes
    on (votes.creationdate = votes.creationdate )
where postlinks.postid is not NULL
limit 130;
select  
  posthistory.id
from 
  posthistory
where posthistory.posthistorytypeid is NULL
limit 124;
select  
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  posts.commentcount, 
  users.displayname, 
  posts.contentlicense, 
  users.creationdate, 
  users.displayname, 
  posts.ownerdisplayname
from 
  posts
      inner join users
      on (posts.closeddate > posts.creationdate)
    left join posts
    on (posts.favoritecount is NULL)
where posts.lasteditoruserid is NULL;
select distinct 
  posthistory.revisionguid, 
  posthistory.posthistorytypeid, 
  posthistory.posthistorytypeid, 
  min(
    cast(posthistory.creationdate as timestamptz)), 
  posthistory.revisionguid, 
  posthistory.userid, 
  posthistory.userid
from 
  posthistory
where posthistory.userid is NULL;
select distinct 
  posts.answercount, 
  posts.tags, 
  votes.votetypeid
from 
  posts
      inner join votes
      on (posts.posttypeid = votes.id )
    left join badges
    on (badges.id is not NULL)
where votes.id is NULL;
select  
  posts.communityowneddate
from 
  posts
where posts.contentlicense is not NULL;
select  
  badges.class, 
  posts.creationdate, 
  avg(
    cast(25 as int4)), 
  posts.owneruserid, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  sum(
    cast(cast(null as int2) as int2)), 
  posthistory.posthistorytypeid
from 
  posts
    inner join posthistory
          left join comments
          on (comments.postid = comments.userid)
        inner join votes
        on (comments.id = comments.postid)
      inner join badges
      on (votes.votetypeid <= votes.postid)
    on (posts.owneruserid is NULL)
where votes.votetypeid is NULL;
select  
  posts.lasteditdate, 
  posts.communityowneddate, 
  posts.communityowneddate, 
  sum(
    cast(25 as int4)), 
  posts.posttypeid, 
  posts.lastactivitydate, 
  posts.parentid, 
  posts.favoritecount, 
  posts.ownerdisplayname
from 
  posts
    inner join posts
    on (posts.commentcount is not NULL)
where posts.owneruserid is not NULL;
select  
  sum(
    cast(69 as int4)), 
  users.id, 
  badges.date, 
  users.downvotes, 
  badges.name, 
  min(
    cast(badges.class as text)), 
  users.creationdate, 
  badges.date, 
  badges.class, 
  badges.id, 
  users.profileimageurl, 
  users.accountid, 
  badges.id
from 
  badges
    inner join users
    on (badges.class <= users.profileimageurl)
where users.profileimageurl is not NULL;
select  
  users.aboutme, 
  users.profileimageurl, 
  badges.class, 
  badges.tagbased, 
  badges.userid, 
  posts.lasteditdate, 
  max(
    cast(64 as int4)), 
  max(
    cast(cast(null as "time") as "time")), 
  users.downvotes
from 
  posts
    left join badges
      right join users
      on (users.aboutme <= badges.name)
    on (posts.parentid <= users.downvotes)
where users.downvotes is NULL
limit 135;
select  
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.id
from 
  postlinks
where postlinks.creationdate is NULL;
select  
  count(
    cast(posts.score as int8)), 
  badges.class, 
  max(
    cast(badges.date as timestamptz)), 
  posts.score, 
  comments.id, 
  comments.id, 
  postlinks.postid, 
  badges.tagbased
from 
  postlinks
    right join posts
      inner join comments
        left join badges
        on (comments.userid <= comments.score)
      on (comments.text = comments.text)
    on (badges.class >= posts.body)
where comments.userid is not NULL;
select  
  users.id
from 
  users
where users.upvotes is not NULL
limit 78;
select  
  users.reputation, 
  min(
    cast(cast(null as "interval") as "interval")), 
  users.location
from 
  users
where users.reputation is NULL;
select distinct 
  posthistory.text, 
  posthistory.revisionguid, 
  avg(
    cast(77 as int4))
from 
  votes
        left join comments
          right join postlinks
          on (comments.userdisplayname >= comments.text)
        on (comments.text < comments.userdisplayname)
      right join posthistory
      on (posthistory.creationdate <= postlinks.creationdate)
    left join comments
    on (comments.creationdate is not NULL)
where postlinks.creationdate is not NULL;
select  
  votes.bountyamount, 
  sum(
    cast(42 as int4)), 
  comments.userid, 
  votes.votetypeid, 
  votes.votetypeid, 
  comments.postid, 
  max(
    cast(cast(null as "interval") as "interval")), 
  comments.postid, 
  comments.id, 
  votes.id, 
  votes.userid, 
  votes.votetypeid
from 
  comments
    left join votes
    on (comments.creationdate is not NULL)
where comments.creationdate is NULL
limit 123;
select  
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  count(
    cast(postlinks.postid as int8)), 
  postlinks.creationdate, 
  postlinks.creationdate, 
  max(
    cast(cast(null as oid) as oid)), 
  postlinks.linktypeid, 
  postlinks.linktypeid
from 
  postlinks
    inner join postlinks
    on (postlinks.linktypeid is not NULL)
where postlinks.postid is NULL
limit 94;
select  
  votes.id
from 
  votes
where votes.creationdate < votes.creationdate;
select  
  comments.id, 
  comments.score, 
  max(
    cast(cast(null as inet) as inet)), 
  comments.id, 
  comments.creationdate, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  comments.userid, 
  min(
    cast(cast(null as oid) as oid)), 
  comments.score, 
  comments.text, 
  comments.text, 
  comments.creationdate
from 
  comments
where comments.userdisplayname is NULL
limit 53;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  badges.userid, 
  badges.name, 
  badges.date, 
  badges.class, 
  badges.tagbased, 
  badges.class, 
  max(
    cast(cast(null as int2) as int2)), 
  badges.date, 
  badges.class, 
  badges.name, 
  badges.userid, 
  badges.tagbased, 
  max(
    cast(cast(null as tid) as tid)), 
  badges.name, 
  badges.userid, 
  badges.date, 
  badges.name, 
  max(
    cast(cast(null as float4) as float4)), 
  badges.date
from 
  badges
where badges.id is not NULL
limit 133;
select  
  votes.votetypeid, 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.id, 
  users.creationdate, 
  users.upvotes
from 
  users
      inner join postlinks
      on (users.id >= users.id)
    left join votes
    on (users.creationdate = votes.creationdate )
where users.creationdate is not NULL
limit 115;
select  
  posts.favoritecount
from 
  posts
where posts.id is not NULL;
select  
  votes.bountyamount, 
  votes.votetypeid, 
  votes.creationdate, 
  votes.bountyamount, 
  votes.creationdate, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.userid, 
  votes.creationdate, 
  votes.creationdate, 
  votes.userid, 
  votes.userid
from 
  votes
where votes.creationdate is NULL
limit 92;
select  
  votes.bountyamount, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  votes.userid, 
  votes.postid, 
  votes.id
from 
  votes
where votes.bountyamount is not NULL;
select  
  votes.votetypeid, 
  votes.userid, 
  votes.userid, 
  min(
    cast(cast(null as "interval") as "interval")), 
  votes.postid, 
  votes.postid, 
  votes.id, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.userid
from 
  votes
where votes.userid is NULL
limit 147;
select  
  users.views, 
  users.lastaccessdate
from 
  users
where users.id is NULL
limit 23;
select  
  comments.score, 
  avg(
    cast(cast(null as int2) as int2)), 
  max(
    cast(cast(null as float8) as float8)), 
  comments.text, 
  comments.userdisplayname, 
  comments.userid, 
  max(
    cast(cast(null as oid) as oid))
from 
  comments
where comments.userdisplayname > comments.userdisplayname
limit 66;
select  
  users.id
from 
  votes
    inner join users
    on (votes.id = users.id )
where votes.userid is not NULL
limit 88;
select  
  comments.userdisplayname, 
  comments.score, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.score, 
  comments.creationdate, 
  comments.creationdate
from 
  comments
where comments.score is not NULL
limit 80;
select  
  posts.communityowneddate, 
  postlinks.id, 
  postlinks.postid, 
  max(
    cast(cast(null as money) as money)), 
  posts.body, 
  postlinks.postid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  posts.ownerdisplayname, 
  postlinks.linktypeid, 
  posts.owneruserid, 
  postlinks.id, 
  posts.score, 
  posts.creationdate
from 
  postlinks
    inner join posts
    on (posts.communityowneddate = posts.lastactivitydate)
where posts.lasteditordisplayname is not NULL
limit 150;
select  
  users.views
from 
  comments
      inner join votes
      on (comments.userdisplayname <= comments.text)
    right join badges
      inner join postlinks
              left join votes
              on (votes.userid = votes.bountyamount)
            inner join postlinks
            on (postlinks.creationdate = postlinks.creationdate)
          inner join users
          on (users.creationdate < users.creationdate)
        left join votes
        on (votes.creationdate > votes.creationdate)
      on (badges.tagbased = users.displayname )
    on (users.lastaccessdate is not NULL)
where badges.tagbased <= users.profileimageurl;
select  
  sum(
    cast(43 as int4)), 
  posthistory.posthistorytypeid, 
  posthistory.comment
from 
  posthistory
where posthistory.revisionguid is NULL
limit 87;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  badges.date
from 
  badges
        left join votes
          left join votes
              left join posthistory
              on (posthistory.userid >= votes.postid)
            inner join badges
              right join comments
              on (badges.date = badges.date)
            on (posthistory.creationdate <= posthistory.creationdate)
          on (posthistory.comment = comments.text)
        on (comments.userdisplayname > posthistory.comment)
      left join badges
        inner join posts
        on (posts.commentcount <= posts.id)
      on (posts.creationdate > posts.communityowneddate)
    right join badges
    on (votes.postid is not NULL)
where badges.id < votes.bountyamount;
select  
  comments.creationdate, 
  sum(
    cast(cast(null as float4) as float4)), 
  comments.id, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.userid, 
  comments.id, 
  comments.userdisplayname, 
  comments.text, 
  comments.userdisplayname, 
  comments.userid, 
  comments.score
from 
  comments
where comments.userdisplayname is NULL
limit 111;
select  
  votes.creationdate, 
  votes.creationdate, 
  votes.postid, 
  votes.votetypeid
from 
  votes
where votes.userid is not NULL
limit 97;
select  
  comments.userdisplayname, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  comments
where comments.creationdate is not NULL;
select  
  badges.name, 
  min(
    cast(cast(null as float4) as float4)), 
  postlinks.linktypeid, 
  badges.id, 
  badges.class, 
  max(
    cast(cast(null as anyenum) as anyenum)), 
  postlinks.id, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  sum(
    cast(cast(null as "interval") as "interval")), 
  postlinks.id, 
  badges.tagbased, 
  postlinks.postid, 
  postlinks.relatedpostid, 
  min(
    cast(badges.class as text))
from 
  badges
    right join postlinks
      inner join postlinks
      on (postlinks.relatedpostid <= postlinks.linktypeid)
    on (badges.id >= postlinks.postid)
where postlinks.id is not NULL;
select  
  users.location
from 
  users
where users.websiteurl >= users.location
limit 145;
select  
  votes.postid, 
  votes.bountyamount, 
  votes.creationdate
from 
  votes
where votes.userid is NULL
limit 51;
select  
  votes.votetypeid, 
  votes.creationdate
from 
  votes
where votes.userid is not NULL
limit 63;
select  
  min(
    cast(cast(null as anyenum) as anyenum)), 
  users.id, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  users.creationdate
from 
  users
where users.websiteurl <= users.profileimageurl
limit 130;
select  
  posts.lasteditoruserid, 
  postlinks.linktypeid, 
  votes.bountyamount, 
  votes.creationdate, 
  posts.lasteditdate
from 
  votes
    right join postlinks
      inner join posts
      on (posts.answercount = posts.lasteditoruserid)
    on (postlinks.relatedpostid is not NULL)
where postlinks.id is NULL;
select  
  users.reputation, 
  users.views
from 
  users
where users.creationdate is NULL;
select  
  votes.votetypeid, 
  posthistory.id
from 
  badges
      right join votes
      on (votes.userid >= votes.bountyamount)
    inner join posthistory
        inner join badges
        on (posthistory.userdisplayname = posthistory.revisionguid)
      left join comments
      on (comments.creationdate <= comments.creationdate)
    on (posthistory.id > comments.id)
where votes.creationdate is NULL;
select  
  votes.userid, 
  votes.bountyamount, 
  votes.id, 
  votes.id, 
  votes.postid, 
  votes.userid, 
  votes.id, 
  votes.postid, 
  votes.creationdate, 
  votes.votetypeid
from 
  votes
where votes.creationdate <= votes.creationdate;
select  
  users.reputation, 
  badges.name, 
  comments.postid, 
  badges.date, 
  badges.userid, 
  comments.creationdate
from 
  users
          right join badges
            right join posts
            on (posts.lasteditdate >= posts.communityowneddate)
          on (posts.creationdate < badges.date)
        left join users
        on (badges.id = users.id )
      right join comments
      on (users.downvotes >= users.id)
    inner join comments
    on (users.upvotes is NULL)
where users.views is NULL
limit 46;
select  
  badges.userid
from 
  badges
where badges.id >= badges.id;
select  
  posts.favoritecount, 
  votes.postid, 
  votes.userid, 
  votes.id, 
  sum(
    cast(cast(null as float8) as float8)), 
  posts.contentlicense, 
  posts.acceptedanswerid, 
  posts.lasteditoruserid, 
  users.accountid, 
  posts.owneruserid, 
  users.accountid, 
  users.accountid
from 
  users
    inner join votes
      left join posts
      on (posts.commentcount = posts.posttypeid)
    on (users.displayname >= posts.lasteditordisplayname)
where votes.creationdate is NULL
limit 50;
select  
  posts.contentlicense, 
  comments.postid, 
  comments.postid, 
  comments.creationdate, 
  comments.creationdate, 
  comments.score, 
  posts.score
from 
  posts
    inner join comments
    on (posts.communityowneddate is not NULL)
where comments.text is not NULL
limit 22;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  posts.parentid, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.creationdate
from 
  posts
    inner join postlinks
    on (posts.score is not NULL)
where posts.ownerdisplayname = posts.body
limit 91;
select  
  comments.score, 
  badges.userid, 
  comments.userid, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.userdisplayname, 
  badges.tagbased, 
  comments.text
from 
  badges
      inner join users
      on (users.profileimageurl >= badges.class)
    inner join comments
    on (comments.userdisplayname is not NULL)
where users.reputation is NULL;
select  
  posts.body, 
  badges.tagbased, 
  postlinks.postid, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(83 as int4))
from 
  users
    right join badges
          right join posts
          on (badges.id <= posts.lasteditoruserid)
        left join badges
        on (posts.closeddate = posts.closeddate)
      right join posthistory
          right join postlinks
          on (posthistory.comment <= posthistory.userdisplayname)
        inner join posts
        on (posts.viewcount > postlinks.postid)
      on (posts.creationdate > posts.closeddate)
    on (posts.viewcount is not NULL)
where postlinks.linktypeid is NULL;
select  
  users.downvotes, 
  users.creationdate
from 
  posts
    right join users
    on (users.lastaccessdate is not NULL)
where users.reputation is not NULL
limit 112;
select  
  comments.postid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.text, 
  comments.text, 
  comments.score, 
  comments.creationdate, 
  comments.userid, 
  comments.userid, 
  max(
    cast(cast(null as tid) as tid)), 
  max(
    cast(cast(null as inet) as inet)), 
  comments.text, 
  comments.userdisplayname, 
  max(
    cast(cast(null as xid8) as xid8)), 
  comments.postid, 
  comments.id, 
  comments.id, 
  comments.text, 
  comments.id, 
  comments.userdisplayname, 
  comments.score
from 
  comments
where comments.userdisplayname < comments.userdisplayname
limit 64;
select  
  postlinks.relatedpostid, 
  postlinks.id
from 
  postlinks
      inner join badges
      on (postlinks.id = badges.id )
    right join postlinks
    on (badges.date = badges.date)
where postlinks.id < postlinks.id
limit 150;
select  
  posthistory.contentlicense, 
  votes.postid
from 
  votes
      inner join posts
          inner join posthistory
          on (posts.body = posts.ownerdisplayname)
        inner join badges
        on (posts.communityowneddate < posts.lastactivitydate)
      on (posthistory.id >= posts.lasteditoruserid)
    inner join posthistory
      left join users
      on (posthistory.userdisplayname = posthistory.userdisplayname)
    on (badges.tagbased is not NULL)
where posthistory.creationdate is NULL
limit 118;
select  
  max(
    cast(cast(null as int2) as int2))
from 
  posts
    left join posthistory
      right join posthistory
      on (posthistory.comment <= posthistory.contentlicense)
    on (posts.closeddate = posthistory.creationdate )
where posthistory.comment is not NULL;
select  
  max(
    cast(cast(null as money) as money)), 
  votes.votetypeid, 
  votes.bountyamount, 
  max(
    cast(cast(null as money) as money))
from 
  votes
where votes.creationdate is not NULL
limit 188;
select  
  postlinks.postid, 
  votes.userid, 
  postlinks.relatedpostid, 
  postlinks.postid, 
  postlinks.linktypeid, 
  avg(
    cast(cast(null as float8) as float8)), 
  comments.userdisplayname
from 
  badges
            left join users
              right join postlinks
              on (users.id = postlinks.id )
            on (users.lastaccessdate >= badges.date)
          inner join users
            inner join postlinks
            on (postlinks.id >= postlinks.id)
          on (postlinks.relatedpostid <= users.upvotes)
        inner join postlinks
        on (postlinks.creationdate = postlinks.creationdate)
      left join comments
      on (postlinks.postid = users.id)
    inner join votes
      right join users
      on (users.accountid = votes.bountyamount)
    on (postlinks.id is not NULL)
where users.aboutme <= comments.userdisplayname
limit 46;
select  
  avg(
    cast(cast(null as "interval") as "interval")), 
  badges.name, 
  comments.text, 
  posthistory.text, 
  votes.postid
from 
  posthistory
    inner join votes
      inner join comments
        left join votes
            left join badges
            on (badges.name <= badges.tagbased)
          inner join votes
            left join posts
            on (votes.userid < posts.owneruserid)
          on (posts.id > posts.posttypeid)
        on (comments.creationdate < posts.closeddate)
      on (votes.creationdate > posts.creationdate)
    on (comments.userid is not NULL)
where badges.tagbased is NULL
limit 120;
select  
  votes.votetypeid, 
  votes.votetypeid, 
  votes.id, 
  votes.userid, 
  votes.id, 
  votes.userid, 
  votes.bountyamount, 
  votes.postid, 
  votes.votetypeid, 
  votes.userid, 
  votes.votetypeid, 
  votes.creationdate, 
  min(
    cast(votes.postid as int8)), 
  votes.postid, 
  votes.userid, 
  votes.votetypeid, 
  votes.postid, 
  votes.votetypeid, 
  votes.creationdate, 
  votes.id, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.userid, 
  votes.postid
from 
  votes
where votes.id is not NULL;
select  
  users.location
from 
  users
where users.accountid is NULL
limit 35;
select  
  users.reputation, 
  users.id, 
  users.profileimageurl
from 
  postlinks
    left join users
      inner join posts
            right join users
            on (posts.lastactivitydate > posts.closeddate)
          inner join badges
          on (posts.parentid = users.upvotes)
        left join users
        on (users.lastaccessdate <= posts.communityowneddate)
      on (posts.acceptedanswerid = posts.viewcount)
    on (users.reputation is not NULL)
where users.id is NULL
limit 121;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  count(
    cast(posthistory.userid as int8)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  posthistory.userdisplayname
from 
  posthistory
where posthistory.creationdate is not NULL
limit 62;
select  
  postlinks.relatedpostid, 
  max(
    cast(cast(null as tid) as tid)), 
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 71;
select  
  posts.contentlicense, 
  posts.contentlicense, 
  posts.closeddate, 
  comments.text, 
  posts.lasteditdate, 
  posts.body, 
  comments.id, 
  max(
    cast(cast(null as timetz) as timetz)), 
  posthistory.posthistorytypeid
from 
  posts
        inner join posts
        on (posts.lasteditoruserid = posts.id )
      left join comments
      on (posts.closeddate < posts.lastactivitydate)
    inner join posthistory
    on (posthistory.creationdate is not NULL)
where posthistory.posthistorytypeid < posts.lasteditoruserid;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.relatedpostid, 
  postlinks.relatedpostid, 
  min(
    cast(cast(null as float8) as float8)), 
  postlinks.creationdate, 
  postlinks.postid, 
  max(
    cast(cast(null as int2) as int2)), 
  postlinks.id, 
  postlinks.id
from 
  postlinks
where postlinks.postid is NULL;
select  
  posthistory.contentlicense, 
  min(
    cast(32 as int4)), 
  badges.class, 
  postlinks.id, 
  postlinks.creationdate, 
  posthistory.posthistorytypeid, 
  badges.name, 
  max(
    cast(postlinks.postid as int8))
from 
  posts
        inner join posthistory
        on (posts.posttypeid >= posthistory.id)
      right join users
            inner join postlinks
            on (users.id <= users.downvotes)
          inner join postlinks
              left join posthistory
              on (postlinks.linktypeid >= posthistory.postid)
            right join posthistory
            on (posthistory.revisionguid = posthistory.userdisplayname )
          on (posthistory.posthistorytypeid >= users.downvotes)
        right join badges
        on (posthistory.text >= users.aboutme)
      on (posthistory.text < posthistory.revisionguid)
    left join badges
    on (posthistory.creationdate = badges.date )
where posthistory.userdisplayname is NULL;
select  
  posts.owneruserid, 
  posts.commentcount, 
  avg(
    cast(cast(null as float8) as float8)), 
  posts.lasteditdate
from 
  posts
where posts.contentlicense < posts.ownerdisplayname;
select  
  comments.userdisplayname, 
  sum(
    cast(cast(null as money) as money)), 
  comments.postid, 
  comments.postid
from 
  comments
where comments.creationdate > comments.creationdate
limit 105;
select  
  badges.id, 
  badges.tagbased, 
  badges.date, 
  badges.id, 
  badges.date, 
  badges.class, 
  badges.date, 
  badges.id, 
  badges.userid, 
  badges.id
from 
  badges
where badges.name is NULL
limit 108;
select  
  posthistory.userid, 
  posthistory.text
from 
  posthistory
where posthistory.userid is not NULL
limit 121;
select  
  users.accountid, 
  users.views, 
  postlinks.id, 
  users.websiteurl
from 
  posthistory
        right join comments
        on (posthistory.creationdate = comments.creationdate )
      left join users
        inner join postlinks
          left join users
            left join users
              inner join postlinks
              on (users.lastaccessdate = postlinks.creationdate )
            on (users.lastaccessdate = users.lastaccessdate)
          on (postlinks.creationdate = postlinks.creationdate )
        on (users.accountid = postlinks.id )
      on (postlinks.id >= users.reputation)
    inner join posts
    on (comments.text <= posts.ownerdisplayname)
where postlinks.creationdate is NULL
limit 68;
select  
  users.displayname, 
  users.profileimageurl, 
  users.location, 
  users.profileimageurl, 
  min(
    cast(cast(null as anyarray) as anyarray))
from 
  users
where users.id is NULL;
select  
  badges.date, 
  badges.class, 
  count(
    cast(badges.date as timestamptz)), 
  badges.tagbased, 
  sum(
    cast(cast(null as money) as money)), 
  badges.name
from 
  badges
where badges.class > badges.name
limit 84;
select  
  posts.ownerdisplayname, 
  posts.lasteditoruserid
from 
  posts
where posts.lasteditoruserid is NULL;
select  
  comments.userdisplayname
from 
  comments
    left join comments
    on (comments.text < comments.text)
where comments.id is not NULL
limit 141;
select  
  postlinks.postid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate > postlinks.creationdate
limit 89;
select  
  posthistory.revisionguid, 
  posthistory.comment, 
  posthistory.id, 
  avg(
    cast(cast(null as int2) as int2)), 
  posthistory.revisionguid, 
  posthistory.postid, 
  posthistory.posthistorytypeid
from 
  posthistory
where posthistory.text is not NULL;
select  
  users.views, 
  sum(
    cast(cast(null as float8) as float8)), 
  users.profileimageurl, 
  users.downvotes, 
  users.downvotes, 
  users.upvotes, 
  users.aboutme, 
  users.accountid, 
  users.websiteurl, 
  users.profileimageurl, 
  users.location, 
  users.location, 
  users.aboutme, 
  users.profileimageurl
from 
  users
where users.creationdate > users.lastaccessdate
limit 65;
select  
  votes.bountyamount, 
  votes.id, 
  votes.creationdate, 
  max(
    cast(cast(null as float8) as float8)), 
  votes.postid, 
  votes.postid, 
  min(
    cast(votes.votetypeid as int8)), 
  votes.userid, 
  votes.bountyamount, 
  votes.postid
from 
  votes
where votes.id is NULL;
select  
  badges.class, 
  votes.creationdate, 
  postlinks.relatedpostid, 
  votes.userid, 
  badges.date
from 
  users
      inner join badges
        inner join postlinks
            left join users
            on (users.location > users.profileimageurl)
          right join posthistory
            inner join comments
            on (posthistory.posthistorytypeid = comments.id )
          on (users.accountid = postlinks.relatedpostid)
        on (postlinks.creationdate = postlinks.creationdate)
      on (postlinks.linktypeid = postlinks.linktypeid)
    inner join votes
      inner join posthistory
          inner join users
          on (posthistory.text = posthistory.text)
        inner join badges
        on (badges.userid <= posthistory.userid)
      on (votes.creationdate = posthistory.creationdate)
    on (users.creationdate < users.creationdate)
where posthistory.creationdate is NULL
limit 70;
select  
  votes.postid, 
  badges.class, 
  badges.class, 
  votes.creationdate
from 
  badges
    left join votes
    on (votes.bountyamount >= votes.postid)
where badges.class > badges.class
limit 155;
select  
  max(
    cast(cast(null as "numeric") as "numeric"))
from 
  posthistory
    inner join votes
    on (posthistory.text is not NULL)
where posthistory.id is not NULL;
select  
  badges.id, 
  badges.id, 
  badges.class, 
  sum(
    cast(90 as int4))
from 
  badges
where badges.name is NULL
limit 143;
select  
  avg(
    cast(cast(null as "interval") as "interval"))
from 
  badges
      inner join posthistory
        inner join users
        on (users.lastaccessdate <= posthistory.creationdate)
      on (badges.date = users.lastaccessdate)
    right join comments
      left join comments
      on (comments.id < comments.userid)
    on (comments.text is NULL)
where users.websiteurl = badges.name
limit 101;
select  
  users.displayname, 
  users.lastaccessdate
from 
  users
    left join votes
    on (users.lastaccessdate is not NULL)
where votes.bountyamount is NULL;
select  
  posts.creationdate
from 
  votes
      left join comments
        left join postlinks
          left join posts
          on (posts.closeddate >= posts.communityowneddate)
        on (comments.id = postlinks.id )
      on (posts.commentcount >= posts.score)
    inner join users
        inner join badges
        on (badges.class < users.displayname)
      left join users
        left join posthistory
        on (posthistory.id <= users.reputation)
      on (users.accountid > badges.id)
    on (posts.title = badges.tagbased)
where users.location = users.location
limit 111;
select  
  postlinks.linktypeid, 
  postlinks.postid
from 
  postlinks
where postlinks.creationdate <= postlinks.creationdate;
select  
  posthistory.id, 
  max(
    cast(cast(null as tid) as tid)), 
  posthistory.text, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posthistory.contentlicense, 
  avg(
    cast(44 as int4)), 
  users.aboutme, 
  comments.userid, 
  comments.text, 
  comments.creationdate, 
  posthistory.postid, 
  comments.postid, 
  comments.userid, 
  posthistory.text, 
  posthistory.contentlicense, 
  posthistory.comment, 
  posthistory.userdisplayname, 
  posthistory.userdisplayname, 
  comments.score, 
  comments.userdisplayname
from 
  comments
        right join posts
        on (comments.userid >= posts.acceptedanswerid)
      left join posthistory
          left join comments
          on (posthistory.creationdate < posthistory.creationdate)
        right join posthistory
        on (posthistory.posthistorytypeid <= posthistory.userid)
      on (posts.ownerdisplayname < posts.contentlicense)
    right join users
    on (comments.userid is NULL)
where users.accountid is not NULL
limit 32;
select  
  comments.userid, 
  comments.score, 
  sum(
    cast(cast(null as "numeric") as "numeric")), 
  comments.creationdate, 
  comments.userdisplayname
from 
  comments
where comments.userid is not NULL;
select  
  votes.votetypeid, 
  votes.id, 
  votes.bountyamount, 
  votes.userid, 
  votes.creationdate, 
  votes.votetypeid, 
  votes.bountyamount, 
  avg(
    cast(3 as int4)), 
  votes.creationdate, 
  max(
    cast(100 as int4)), 
  votes.creationdate, 
  votes.votetypeid
from 
  votes
where votes.id is NULL
limit 130;
select  
  votes.bountyamount, 
  min(
    cast(cast(null as anyarray) as anyarray)), 
  votes.postid, 
  badges.class
from 
  votes
    inner join badges
    on (badges.name >= badges.tagbased)
where badges.id is not NULL
limit 86;
select  
  badges.id, 
  posthistory.postid, 
  posthistory.contentlicense, 
  badges.tagbased, 
  posthistory.userdisplayname
from 
  posthistory
    inner join badges
      right join comments
        left join posts
          left join users
          on (users.websiteurl >= users.websiteurl)
        on (posts.owneruserid >= posts.posttypeid)
      on (posts.owneruserid <= posts.favoritecount)
    on (posthistory.id = posts.id )
where posts.body > posts.lasteditordisplayname;
select  
  votes.userid, 
  posthistory.comment
from 
  votes
      inner join postlinks
        right join comments
            right join users
            on (users.websiteurl = users.profileimageurl)
          inner join votes
          on (comments.postid = votes.id )
        on (postlinks.id = users.id )
      on (comments.userdisplayname < comments.userdisplayname)
    right join users
            inner join users
              inner join votes
              on (users.views < votes.userid)
            on (users.accountid = users.id )
          right join votes
          on (users.creationdate >= votes.creationdate)
        inner join posthistory
        on (votes.postid = posthistory.id )
      inner join posthistory
              right join comments
              on (posthistory.creationdate = comments.creationdate )
            right join comments
            on (comments.id <= posthistory.postid)
          inner join comments
          on (posthistory.posthistorytypeid = comments.id )
        inner join postlinks
        on (comments.userdisplayname < comments.text)
      on (users.lastaccessdate = posthistory.creationdate)
    on (votes.userid is not NULL)
where posthistory.posthistorytypeid >= votes.votetypeid;
select  
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posts.ownerdisplayname, 
  posts.closeddate, 
  postlinks.relatedpostid, 
  sum(
    cast(cast(null as float4) as float4)), 
  posts.parentid, 
  posts.creationdate, 
  postlinks.postid, 
  posts.closeddate
from 
  postlinks
    inner join posts
    on (posts.acceptedanswerid is not NULL)
where posts.commentcount is NULL
limit 84;
select  
  comments.postid
from 
  comments
where comments.userdisplayname is NULL;
select  
  posthistory.userdisplayname, 
  max(
    cast(cast(null as inet) as inet))
from 
  comments
    left join posthistory
        left join posts
          inner join posts
            left join posts
            on (posts.lastactivitydate = posts.creationdate )
          on (posts.viewcount < posts.posttypeid)
        on (posts.lasteditdate >= posts.communityowneddate)
      inner join posthistory
        right join badges
        on (posthistory.postid >= posthistory.postid)
      on (posthistory.userid < posthistory.id)
    on (posthistory.contentlicense is NULL)
where comments.text is not NULL
limit 104;
select  
  posthistory.text, 
  posthistory.comment, 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  posthistory.id
from 
  posthistory
where posthistory.posthistorytypeid is NULL;
select  
  votes.id, 
  votes.postid
from 
  votes
    left join votes
    on (votes.bountyamount is NULL)
where votes.creationdate is NULL;
select  
  votes.id, 
  votes.bountyamount, 
  votes.userid
from 
  votes
where votes.creationdate < votes.creationdate
limit 191;
select  
  avg(
    cast(cast(null as int2) as int2))
from 
  posthistory
    inner join votes
          inner join postlinks
            inner join posts
            on (postlinks.creationdate = posts.creationdate )
          on (posts.acceptedanswerid > posts.score)
        inner join badges
          inner join votes
          on (badges.name >= badges.class)
        on (postlinks.creationdate = posts.creationdate)
      inner join postlinks
      on (posts.creationdate >= posts.lasteditdate)
    on (posthistory.posthistorytypeid is not NULL)
where postlinks.linktypeid is not NULL
limit 195;
select  
  comments.score, 
  comments.creationdate, 
  posts.posttypeid, 
  users.lastaccessdate, 
  comments.creationdate, 
  comments.userid, 
  users.accountid, 
  posts.parentid, 
  comments.score, 
  posts.score, 
  comments.creationdate
from 
  comments
      inner join posts
      on (posts.lastactivitydate >= posts.communityowneddate)
    left join users
    on (posts.creationdate = users.creationdate )
where comments.creationdate is not NULL;
select  
  postlinks.linktypeid
from 
  postlinks
where postlinks.postid is NULL
limit 117;
select  
  posts.acceptedanswerid
from 
  posts
    right join comments
    on (comments.text = comments.userdisplayname)
where comments.id is not NULL;
select  
  votes.userid, 
  users.aboutme, 
  votes.creationdate, 
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  votes
    inner join posts
        right join posts
        on (posts.tags >= posts.tags)
      inner join votes
        right join users
            right join posthistory
            on (posthistory.id >= posthistory.postid)
          right join badges
            inner join posts
            on (badges.class = posts.ownerdisplayname)
          on (users.creationdate <= posts.lastactivitydate)
        on (votes.creationdate < posts.lasteditdate)
      on (badges.tagbased > posthistory.revisionguid)
    on (badges.name is NULL)
where users.reputation is not NULL
limit 162;
select  
  postlinks.linktypeid
from 
  postlinks
where postlinks.relatedpostid is NULL
limit 127;
select  
  posts.contentlicense, 
  posts.ownerdisplayname, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  posts.creationdate, 
  posts.contentlicense, 
  posts.lasteditdate, 
  posts.title, 
  posts.posttypeid, 
  posts.id
from 
  posts
where posts.title is NULL
limit 102;
select  
  comments.score, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.id
from 
  posts
    left join users
      inner join posts
            right join postlinks
            on (posts.favoritecount = postlinks.id )
          inner join comments
          on (posts.lasteditdate >= posts.communityowneddate)
        left join comments
        on (posts.ownerdisplayname < posts.ownerdisplayname)
      on (posts.lasteditdate <= comments.creationdate)
    on (users.lastaccessdate is NULL)
where postlinks.id is not NULL
limit 75;
select  
  posthistory.id, 
  posthistory.userdisplayname, 
  posthistory.postid, 
  posthistory.creationdate, 
  posts.contentlicense, 
  count(
    cast(posthistory.comment as text))
from 
  posthistory
    right join posthistory
      left join posts
      on (posts.creationdate >= posthistory.creationdate)
    on (posthistory.comment is not NULL)
where posts.parentid = posthistory.id
limit 89;
select  
  postlinks.relatedpostid, 
  posthistory.userid, 
  posthistory.creationdate, 
  votes.creationdate, 
  badges.name, 
  comments.id, 
  users.location
from 
  posthistory
    inner join badges
      inner join users
          inner join comments
          on (users.websiteurl = comments.userdisplayname )
        inner join postlinks
          right join votes
          on (votes.creationdate >= votes.creationdate)
        on (votes.creationdate = votes.creationdate)
      on (badges.userid = comments.id )
    on (comments.creationdate is NULL)
where users.aboutme is NULL
limit 60;
select  
  postlinks.linktypeid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.bountyamount, 
  votes.postid
from 
  votes
    left join postlinks
    on (votes.creationdate is NULL)
where postlinks.postid is NULL
limit 102;
select  
  badges.date, 
  min(
    cast(cast(null as inet) as inet)), 
  badges.date, 
  badges.class, 
  badges.tagbased, 
  badges.userid, 
  badges.userid, 
  badges.class, 
  badges.date, 
  badges.class, 
  badges.name, 
  sum(
    cast(badges.id as int8)), 
  badges.id, 
  badges.date, 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.class
from 
  badges
where badges.userid is NULL
limit 63;
select  
  posthistory.revisionguid, 
  posthistory.posthistorytypeid, 
  posthistory.postid, 
  max(
    cast(cast(null as xid8) as xid8))
from 
  posthistory
where posthistory.revisionguid is not NULL;
select  
  posthistory.userid
from 
  posthistory
where posthistory.contentlicense is NULL
limit 161;
select  
  comments.userid, 
  votes.creationdate, 
  posts.lasteditdate
from 
  postlinks
        right join votes
        on (votes.postid >= postlinks.relatedpostid)
      right join comments
        inner join comments
            left join postlinks
            on (comments.text >= comments.text)
          inner join posts
            inner join votes
              left join posts
              on (posts.lasteditordisplayname >= posts.body)
            on (posts.creationdate > posts.lasteditdate)
          on (posts.title = posts.contentlicense)
        on (comments.id = posts.id )
      on (posts.communityowneddate < posts.communityowneddate)
    inner join votes
    on (votes.creationdate is NULL)
where posts.tags >= posts.contentlicense
limit 111;
select  
  users.views, 
  avg(
    cast(users.accountid as int8)), 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  badges.name, 
  posthistory.userdisplayname, 
  posthistory.comment, 
  posthistory.text, 
  votes.userid
from 
  users
    right join users
              inner join posthistory
              on (posthistory.id = users.upvotes)
            inner join votes
            on (posthistory.id = votes.id )
          inner join users
          on (users.location = users.displayname )
        right join posthistory
        on (posthistory.contentlicense = posthistory.userdisplayname )
      inner join badges
          inner join posthistory
          on (posthistory.creationdate = badges.date)
        right join postlinks
          inner join postlinks
          on (postlinks.creationdate = postlinks.creationdate)
        on (postlinks.id < postlinks.id)
      on (posthistory.creationdate <= posthistory.creationdate)
    on (votes.postid is not NULL)
where postlinks.id is NULL
limit 135;
select  
  min(
    cast(badges.userid as int8)), 
  max(
    cast(cast(null as inet) as inet)), 
  badges.id, 
  max(
    cast(cast(null as inet) as inet)), 
  badges.id, 
  min(
    cast(cast(null as "interval") as "interval")), 
  badges.name, 
  badges.name
from 
  badges
where badges.date is NULL
limit 64;
select  
  min(
    cast(cast(null as "numeric") as "numeric")), 
  posts.lastactivitydate
from 
  posts
where posts.id is not NULL;
select  
  votes.bountyamount
from 
  badges
      left join users
      on (users.creationdate < badges.date)
    right join postlinks
      left join votes
      on (votes.postid > votes.votetypeid)
    on (badges.date is not NULL)
where badges.name is not NULL
limit 123;
select  
  min(
    cast(cast(null as anyarray) as anyarray)), 
  postlinks.linktypeid, 
  postlinks.id, 
  badges.id, 
  badges.tagbased, 
  badges.name, 
  badges.class, 
  badges.date, 
  badges.userid, 
  badges.tagbased, 
  min(
    cast(cast(null as float4) as float4)), 
  badges.date, 
  postlinks.relatedpostid, 
  badges.userid
from 
  postlinks
    inner join badges
    on (badges.class is not NULL)
where postlinks.id is not NULL;
select  
  min(
    cast(cast(null as bpchar) as bpchar))
from 
  users
    left join posts
    on (users.id is NULL)
where users.aboutme is NULL;
select distinct 
  posthistory.userdisplayname, 
  posthistory.revisionguid, 
  posthistory.postid, 
  posthistory.postid, 
  posthistory.revisionguid, 
  posthistory.revisionguid
from 
  posthistory
where posthistory.id is not NULL
limit 122;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  comments.text, 
  comments.postid, 
  posts.lastactivitydate
from 
  badges
            inner join comments
            on (badges.id = comments.userid)
          right join comments
          on (badges.id >= comments.id)
        inner join postlinks
          inner join postlinks
          on (postlinks.creationdate > postlinks.creationdate)
        on (comments.userid < postlinks.linktypeid)
      right join posthistory
        inner join comments
        on (comments.postid >= comments.userid)
      on (comments.id < postlinks.postid)
    left join posts
            inner join badges
            on (badges.class > posts.body)
          inner join comments
          on (posts.favoritecount = comments.score)
        left join votes
          right join posts
            left join comments
            on (comments.text < comments.userdisplayname)
          on (posts.contentlicense < posts.contentlicense)
        on (badges.tagbased = comments.userdisplayname )
      inner join comments
      on (posts.creationdate < comments.creationdate)
    on (comments.userdisplayname is not NULL)
where badges.name >= badges.tagbased
limit 53;
select  
  badges.class, 
  min(
    cast(cast(null as date) as date)), 
  badges.tagbased, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  badges.class
from 
  badges
where badges.date is not NULL
limit 61;
select  
  posts.acceptedanswerid, 
  badges.name, 
  comments.userid, 
  comments.score, 
  votes.postid, 
  badges.class, 
  comments.userid, 
  comments.text, 
  users.aboutme, 
  posthistory.text, 
  comments.id, 
  votes.id, 
  min(
    cast(cast(null as bpchar) as bpchar)), 
  max(
    cast(cast(null as date) as date)), 
  comments.creationdate, 
  min(
    cast(badges.class as text)), 
  badges.class, 
  posts.viewcount, 
  badges.tagbased, 
  votes.bountyamount, 
  badges.name, 
  votes.postid, 
  users.lastaccessdate, 
  users.reputation
from 
  comments
          right join votes
            left join posts
            on (posts.lasteditordisplayname < posts.body)
          on (posts.creationdate >= votes.creationdate)
        inner join badges
          inner join users
          on (badges.date = badges.date)
        on (users.downvotes > badges.userid)
      right join comments
        inner join posthistory
        on (comments.postid >= comments.userid)
      on (users.lastaccessdate = users.creationdate)
    inner join votes
    on (votes.bountyamount = votes.id )
where votes.id is NULL;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  users.displayname, 
  comments.postid, 
  comments.userdisplayname, 
  max(
    cast(cast(null as timetz) as timetz)), 
  posthistory.userdisplayname
from 
  users
          inner join users
              inner join posts
              on (users.displayname = posts.ownerdisplayname)
            inner join badges
            on (posts.lasteditdate < posts.lasteditdate)
          on (users.location = badges.class )
        right join comments
        on (users.downvotes = users.views)
      inner join posthistory
      on (users.creationdate <= badges.date)
    left join posthistory
      right join postlinks
          left join users
          on (users.reputation >= postlinks.linktypeid)
        left join posthistory
        on (users.lastaccessdate >= posthistory.creationdate)
      on (postlinks.postid = users.upvotes)
    on (posts.commentcount is NULL)
where postlinks.id is not NULL
limit 81;
select  
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.id, 
  max(
    cast(cast(null as "interval") as "interval")), 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  max(
    cast(cast(null as "numeric") as "numeric")), 
  postlinks.creationdate, 
  max(
    cast(44 as int4)), 
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.linktypeid
from 
  postlinks
where postlinks.id is not NULL
limit 41;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  badges.tagbased, 
  badges.name, 
  badges.class, 
  min(
    cast(badges.userid as int8)), 
  badges.userid, 
  badges.userid, 
  badges.userid, 
  badges.id, 
  badges.tagbased, 
  badges.userid, 
  badges.class
from 
  badges
where badges.class < badges.name
limit 115;
select  
  votes.bountyamount, 
  min(
    cast(cast(null as timetz) as timetz)), 
  badges.id, 
  users.creationdate, 
  comments.score, 
  badges.userid, 
  min(
    cast(cast(null as "time") as "time")), 
  badges.name, 
  min(
    cast(cast(null as "interval") as "interval"))
from 
  users
        left join votes
          inner join users
            left join comments
            on (users.upvotes > users.reputation)
          on (votes.creationdate <= comments.creationdate)
        on (users.upvotes <= votes.votetypeid)
      inner join badges
          left join comments
          on (comments.creationdate >= badges.date)
        right join posts
        on (posts.lastactivitydate <= posts.communityowneddate)
      on (users.profileimageurl <= badges.name)
    left join badges
          inner join comments
          on (comments.text = badges.tagbased)
        right join badges
        on (badges.name >= comments.text)
      left join posthistory
        inner join comments
        on (posthistory.text = comments.userdisplayname )
      on (comments.postid > comments.postid)
    on (posts.closeddate is NULL)
where posts.commentcount is NULL;
select  
  votes.postid, 
  votes.votetypeid, 
  min(
    cast(cast(null as tid) as tid)), 
  posts.lasteditdate, 
  posts.id
from 
  comments
      left join users
        right join votes
        on (users.id = votes.id )
      on (comments.userdisplayname = users.displayname )
    inner join badges
        inner join posts
        on (posts.closeddate < posts.lastactivitydate)
      left join badges
      on (posts.parentid < posts.parentid)
    on (posts.viewcount is not NULL)
where votes.bountyamount is NULL
limit 100;
select  
  min(
    cast(68 as int4)), 
  votes.id, 
  votes.userid, 
  votes.bountyamount, 
  min(
    cast(cast(null as float4) as float4)), 
  votes.userid
from 
  votes
where votes.userid is NULL;
select distinct 
  postlinks.id, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.postid, 
  badges.name, 
  badges.class, 
  postlinks.relatedpostid, 
  postlinks.linktypeid, 
  badges.id, 
  postlinks.postid
from 
  postlinks
    inner join badges
    on (postlinks.creationdate is NULL)
where badges.class is NULL
limit 92;
select  
  votes.creationdate
from 
  votes
    right join posthistory
    on (votes.userid is NULL)
where posthistory.creationdate < posthistory.creationdate;
select  
  avg(
    cast(cast(null as float4) as float4)), 
  posthistory.posthistorytypeid, 
  posthistory.userid, 
  sum(
    cast(posthistory.posthistorytypeid as int8)), 
  count(
    cast(posthistory.creationdate as timestamptz)), 
  min(
    cast(cast(null as float4) as float4)), 
  posthistory.postid, 
  posthistory.posthistorytypeid, 
  posthistory.postid
from 
  posthistory
where posthistory.userdisplayname <= posthistory.userdisplayname
limit 149;
select  
  votes.bountyamount
from 
  votes
where votes.postid is not NULL
limit 193;
select  
  comments.id, 
  posthistory.posthistorytypeid
from 
  posthistory
    right join comments
      right join comments
        inner join postlinks
          inner join postlinks
              inner join badges
              on (badges.date > badges.date)
            inner join posthistory
            on (badges.userid < posthistory.postid)
          on (badges.tagbased = posthistory.revisionguid)
        on (posthistory.creationdate <= comments.creationdate)
      on (comments.userid = posthistory.id )
    on (postlinks.creationdate is NULL)
where posthistory.postid <= posthistory.posthistorytypeid
limit 65;
select  
  posts.acceptedanswerid, 
  max(
    cast(cast(null as float8) as float8)), 
  posts.closeddate, 
  posts.tags, 
  posts.lasteditdate
from 
  posts
where posts.acceptedanswerid = posts.id
limit 75;
select  
  posthistory.id, 
  votes.creationdate, 
  posts.parentid, 
  posts.acceptedanswerid
from 
  posthistory
    right join votes
      inner join posts
      on (votes.votetypeid >= votes.id)
    on (posts.owneruserid is not NULL)
where posts.closeddate is not NULL;
select  
  badges.userid, 
  badges.tagbased
from 
  badges
where badges.date is NULL
limit 147;
select  
  badges.id, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  badges.class
from 
  badges
where badges.class is NULL;
select  
  avg(
    cast(cast(null as float8) as float8)), 
  badges.date, 
  badges.class, 
  badges.class, 
  badges.class, 
  badges.id, 
  badges.tagbased, 
  max(
    cast(cast(null as float8) as float8))
from 
  badges
where badges.userid >= badges.userid
limit 64;
select  
  users.upvotes
from 
  users
where users.upvotes is NULL
limit 28;
select distinct 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  posts.id
from 
  posthistory
      left join posthistory
      on (posthistory.comment >= posthistory.text)
    inner join posts
    on (posthistory.userid = posts.id )
where posts.communityowneddate is not NULL;
select  
  users.accountid, 
  posthistory.contentlicense, 
  min(
    cast(cast(null as date) as date)), 
  posthistory.contentlicense, 
  votes.creationdate, 
  badges.id, 
  votes.userid, 
  badges.class, 
  posthistory.id, 
  votes.bountyamount
from 
  votes
    left join badges
        inner join badges
        on (badges.class > badges.name)
      right join votes
        inner join badges
              right join users
              on (users.aboutme > users.profileimageurl)
            right join votes
              inner join users
              on (votes.id < users.accountid)
            on (badges.userid = votes.id )
          inner join posthistory
          on (users.location >= users.aboutme)
        on (badges.date >= votes.creationdate)
      on (votes.votetypeid < badges.id)
    on (badges.class is not NULL)
where users.reputation is NULL;
select  
  posts.favoritecount, 
  comments.score, 
  postlinks.relatedpostid, 
  posts.communityowneddate, 
  posts.id, 
  posts.commentcount, 
  posts.creationdate, 
  posts.answercount, 
  posts.body, 
  max(
    cast(cast(null as timetz) as timetz)), 
  comments.userdisplayname
from 
  badges
      right join votes
        inner join posts
        on (posts.creationdate = posts.lastactivitydate)
      on (badges.tagbased = badges.tagbased)
    right join users
        left join posts
        on (users.upvotes = posts.id )
      right join postlinks
          left join comments
              inner join posts
              on (posts.id >= comments.score)
            inner join badges
              left join votes
              on (badges.name = badges.class)
            on (posts.lastactivitydate = badges.date )
          on (postlinks.linktypeid = posts.id )
        inner join badges
          left join posts
          on (posts.answercount < posts.parentid)
        on (postlinks.relatedpostid = posts.answercount)
      on (posts.lasteditoruserid = badges.userid)
    on (badges.class is NULL)
where posts.favoritecount is not NULL
limit 39;
select  
  votes.id, 
  votes.bountyamount, 
  posts.favoritecount, 
  posts.id, 
  badges.class, 
  posthistory.text, 
  max(
    cast(cast(null as money) as money)), 
  count(*)
from 
  users
        inner join votes
        on (votes.bountyamount > users.id)
      left join comments
            inner join badges
              inner join users
              on (users.lastaccessdate > users.creationdate)
            on (comments.creationdate = users.creationdate )
          inner join users
            inner join posts
            on (posts.lasteditdate >= posts.creationdate)
          on (comments.score = users.id )
        left join posthistory
          inner join badges
          on (posthistory.creationdate = badges.date )
        on (users.websiteurl < posts.contentlicense)
      on (posts.communityowneddate >= badges.date)
    inner join posts
        inner join votes
        on (posts.tags < posts.lasteditordisplayname)
      inner join posts
      on (votes.postid = posts.id )
    on (badges.id is NULL)
where posts.communityowneddate is not NULL
limit 71;
select  
  postlinks.id, 
  comments.text, 
  posts.posttypeid, 
  postlinks.linktypeid, 
  posts.acceptedanswerid, 
  posts.answercount, 
  postlinks.linktypeid, 
  posts.id, 
  postlinks.relatedpostid, 
  posts.title, 
  posts.title, 
  posts.favoritecount, 
  postlinks.postid, 
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  min(
    cast(cast(null as tid) as tid)), 
  comments.userdisplayname, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  min(
    cast(cast(null as xid8) as xid8)), 
  postlinks.id, 
  postlinks.creationdate, 
  posts.contentlicense, 
  postlinks.id, 
  comments.postid, 
  posts.tags, 
  postlinks.postid, 
  posts.score, 
  postlinks.creationdate, 
  posts.parentid, 
  comments.id, 
  posts.tags
from 
  comments
    inner join postlinks
      inner join posts
      on (posts.title > posts.body)
    on (posts.lastactivitydate is not NULL)
where posts.title is not NULL;
select  
  votes.votetypeid, 
  votes.postid, 
  votes.id, 
  comments.text
from 
  postlinks
        inner join posthistory
          right join users
          on (posthistory.postid > users.downvotes)
        on (postlinks.relatedpostid < users.id)
      right join votes
      on (postlinks.postid = votes.id )
    left join posts
      inner join posts
          left join posthistory
              right join votes
              on (posthistory.userid = votes.id )
            right join comments
              right join posts
                inner join comments
                on (posts.parentid >= posts.acceptedanswerid)
              on (posts.tags = posts.title)
            on (posts.lasteditordisplayname > posts.title)
          on (posts.communityowneddate > comments.creationdate)
        inner join users
            inner join votes
            on (users.id = votes.id )
          inner join badges
          on (users.reputation = badges.id )
        on (posthistory.creationdate < votes.creationdate)
      on (votes.bountyamount >= posts.id)
    on (users.downvotes <= posts.lasteditoruserid)
where postlinks.id is NULL;
select  
  postlinks.id, 
  sum(
    cast(cast(null as float8) as float8))
from 
  users
      inner join postlinks
      on (users.id = postlinks.id )
    inner join votes
    on (users.reputation = votes.id )
where votes.postid is NULL
limit 132;
select  
  comments.creationdate, 
  comments.postid, 
  comments.userid, 
  min(
    cast(cast(null as float4) as float4))
from 
  comments
where comments.userid < comments.id
limit 127;
select  
  votes.userid, 
  votes.id, 
  votes.creationdate, 
  votes.postid, 
  votes.postid, 
  votes.userid, 
  votes.votetypeid, 
  votes.userid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  votes.creationdate, 
  max(
    cast(cast(null as float8) as float8)), 
  votes.votetypeid, 
  votes.postid, 
  sum(
    cast(votes.votetypeid as int8)), 
  min(
    cast(cast(null as "timestamp") as "timestamp")), 
  votes.id, 
  votes.bountyamount, 
  votes.creationdate, 
  votes.id, 
  votes.id, 
  votes.postid, 
  votes.votetypeid, 
  votes.votetypeid
from 
  votes
where votes.creationdate is NULL
limit 125;
select  
  users.id, 
  users.views, 
  posts.id
from 
  posts
      inner join posthistory
        inner join users
              left join comments
              on (comments.userid > comments.postid)
            inner join users
            on (comments.userid = users.id )
          inner join votes
          on (users.lastaccessdate <= comments.creationdate)
        on (posthistory.creationdate = users.creationdate)
      on (posts.owneruserid = comments.userid)
    left join comments
        inner join postlinks
          left join users
              right join comments
              on (comments.userid < users.id)
            inner join badges
            on (users.aboutme = users.websiteurl)
          on (users.displayname >= users.aboutme)
        on (badges.date >= users.creationdate)
      left join badges
      on (badges.date >= users.lastaccessdate)
    on (users.reputation is NULL)
where comments.id is not NULL
limit 116;
select  
  posthistory.contentlicense, 
  min(
    cast(cast(null as date) as date)), 
  posthistory.userid, 
  posthistory.comment, 
  posthistory.comment
from 
  posthistory
where posthistory.userid is NULL
limit 122;
select  
  votes.userid
from 
  votes
where votes.creationdate > votes.creationdate
limit 83;
select  
  posthistory.revisionguid, 
  posthistory.postid, 
  badges.id, 
  posthistory.posthistorytypeid
from 
  votes
      left join posthistory
          inner join postlinks
          on (postlinks.creationdate = posthistory.creationdate)
        left join badges
          left join comments
          on (badges.date = comments.creationdate )
        on (postlinks.linktypeid = comments.id )
      on (postlinks.postid > postlinks.relatedpostid)
    left join votes
    on (votes.bountyamount = votes.id )
where badges.tagbased is not NULL
limit 138;
select  
  users.views, 
  users.upvotes, 
  posts.title, 
  posts.lasteditoruserid, 
  posts.creationdate
from 
  votes
      right join posts
        inner join postlinks
        on (posts.parentid = postlinks.id )
      on (votes.creationdate < posts.closeddate)
    inner join posts
      right join votes
          right join comments
          on (votes.creationdate = comments.creationdate )
        inner join posts
          right join users
          on (posts.lasteditdate = users.creationdate )
        on (comments.userdisplayname = posts.ownerdisplayname )
      on (posts.ownerdisplayname < posts.tags)
    on (posts.lastactivitydate = posts.lasteditdate)
where posts.contentlicense is NULL
limit 112;
select  
  postlinks.creationdate, 
  posts.lasteditoruserid, 
  postlinks.postid, 
  comments.userdisplayname, 
  min(
    cast(postlinks.linktypeid as int8))
from 
  comments
      inner join posts
        right join postlinks
        on (posts.acceptedanswerid = postlinks.id )
      on (posts.lasteditdate <= posts.communityowneddate)
    inner join posthistory
    on (postlinks.linktypeid is not NULL)
where posthistory.posthistorytypeid is NULL
limit 63;
select  
  users.id, 
  users.displayname, 
  users.creationdate, 
  users.location, 
  users.creationdate, 
  users.reputation, 
  users.id, 
  users.accountid, 
  users.accountid, 
  users.displayname, 
  users.profileimageurl, 
  users.location, 
  users.reputation
from 
  users
where users.lastaccessdate is not NULL;
select  
  min(
    cast(cast(null as tid) as tid)), 
  comments.text, 
  comments.id, 
  comments.score, 
  comments.userdisplayname, 
  max(
    cast(cast(null as bpchar) as bpchar)), 
  comments.postid, 
  comments.id, 
  comments.score, 
  comments.text, 
  comments.id, 
  comments.creationdate, 
  comments.id, 
  comments.postid, 
  comments.creationdate, 
  comments.userdisplayname, 
  comments.creationdate, 
  max(
    cast(cast(null as anyarray) as anyarray)), 
  comments.userdisplayname, 
  comments.score, 
  comments.score, 
  comments.text, 
  comments.score
from 
  comments
where comments.userid is not NULL
limit 18;
select  
  badges.id
from 
  badges
where badges.userid <= badges.userid
limit 129;
select  
  postlinks.postid
from 
  postlinks
where postlinks.id is NULL;
select  
  users.reputation, 
  comments.text, 
  comments.score, 
  comments.userid
from 
  comments
    right join users
    on (comments.userid is not NULL)
where comments.postid is NULL
limit 108;
select  
  comments.postid, 
  comments.userid, 
  min(
    cast(68 as int4)), 
  comments.userid, 
  min(
    cast(comments.id as int8)), 
  comments.postid, 
  min(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  comments.text, 
  comments.text, 
  comments.id
from 
  comments
where comments.text is not NULL
limit 24;
select  
  posts.closeddate, 
  votes.bountyamount, 
  max(
    cast(votes.userid as int8)), 
  max(
    cast(cast(null as date) as date))
from 
  posts
        right join users
        on (users.lastaccessdate <= users.creationdate)
      left join posts
          left join users
            left join postlinks
                inner join postlinks
                on (postlinks.linktypeid < postlinks.id)
              right join posthistory
              on (postlinks.id = posthistory.id )
            on (users.accountid = postlinks.id )
          on (posts.lasteditoruserid < users.accountid)
        inner join comments
          left join votes
          on (comments.id = votes.id )
        on (users.lastaccessdate = postlinks.creationdate)
      on (posts.lasteditoruserid <= users.downvotes)
    inner join posthistory
    on (users.creationdate is NULL)
where users.accountid is not NULL;
select  
  comments.userid, 
  comments.userdisplayname, 
  comments.score, 
  comments.creationdate, 
  comments.id, 
  comments.score, 
  comments.creationdate, 
  comments.score, 
  max(
    cast(cast(null as money) as money)), 
  comments.userdisplayname, 
  comments.userdisplayname, 
  comments.creationdate, 
  comments.userid, 
  comments.id, 
  comments.userdisplayname, 
  min(
    cast(cast(null as float8) as float8)), 
  comments.creationdate
from 
  comments
where comments.id is not NULL
limit 55;
select  
  comments.id, 
  comments.score, 
  comments.creationdate
from 
  comments
where comments.text is NULL
limit 53;
select  
  users.reputation, 
  users.websiteurl, 
  users.profileimageurl, 
  users.upvotes, 
  users.profileimageurl
from 
  users
where users.lastaccessdate <= users.lastaccessdate
limit 102;
select  
  users.reputation
from 
  users
where users.downvotes is not NULL
limit 115;
select  
  postlinks.postid, 
  postlinks.relatedpostid, 
  postlinks.postid
from 
  postlinks
where postlinks.linktypeid is NULL
limit 86;
select  
  postlinks.postid, 
  users.profileimageurl
from 
  badges
      left join users
      on (badges.date = users.lastaccessdate)
    inner join postlinks
        right join badges
            inner join comments
            on (comments.userdisplayname > badges.name)
          left join votes
              left join badges
              on (votes.votetypeid > votes.userid)
            left join postlinks
            on (badges.class = badges.tagbased)
          on (comments.userdisplayname = badges.class )
        on (comments.userdisplayname >= badges.name)
      left join users
      on (postlinks.creationdate = badges.date)
    on (comments.postid is NULL)
where comments.creationdate > users.lastaccessdate
limit 136;
select  
  votes.bountyamount
from 
  badges
    left join votes
      right join votes
      on (votes.creationdate >= votes.creationdate)
    on (votes.bountyamount = votes.id)
where votes.userid is NULL
limit 105;
select  
  postlinks.linktypeid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.creationdate, 
  max(
    cast(cast(null as inet) as inet)), 
  postlinks.postid, 
  postlinks.creationdate
from 
  postlinks
where postlinks.creationdate is not NULL
limit 51;
select  
  votes.id
from 
  votes
where votes.postid > votes.bountyamount
limit 101;
select  
  comments.userdisplayname, 
  comments.score, 
  comments.id, 
  comments.creationdate, 
  comments.postid, 
  comments.score, 
  comments.userid, 
  comments.postid, 
  min(
    cast(cast(null as "numeric") as "numeric")), 
  comments.creationdate, 
  min(
    cast(cast(null as timetz) as timetz)), 
  comments.text, 
  comments.id, 
  comments.score, 
  comments.id
from 
  comments
where comments.userdisplayname is NULL;
select  
  max(
    cast(cast(null as inet) as inet)), 
  min(
    cast(posts.creationdate as timestamptz)), 
  posts.lastactivitydate, 
  max(
    cast(cast(null as "timestamp") as "timestamp")), 
  sum(
    cast(cast(null as float8) as float8)), 
  posts.creationdate
from 
  posts
      right join posthistory
      on (posts.answercount < posts.lasteditoruserid)
    right join posthistory
    on (posthistory.userdisplayname is not NULL)
where posthistory.userdisplayname >= posthistory.userdisplayname
limit 162;
select  
  posthistory.revisionguid, 
  votes.id, 
  badges.class, 
  badges.tagbased, 
  sum(
    cast(cast(null as money) as money))
from 
  badges
      inner join comments
      on (badges.date <= badges.date)
    inner join posthistory
        right join posthistory
        on (posthistory.postid > posthistory.userid)
      inner join postlinks
          inner join users
          on (postlinks.postid = postlinks.id)
        left join votes
        on (votes.postid = postlinks.postid)
      on (votes.id <= users.id)
    on (postlinks.linktypeid is NULL)
where postlinks.postid is not NULL;
select  
  votes.bountyamount, 
  votes.votetypeid, 
  votes.userid, 
  votes.postid, 
  votes.id, 
  votes.votetypeid, 
  votes.votetypeid, 
  votes.userid, 
  votes.id, 
  max(
    cast(cast(null as anyenum) as anyenum))
from 
  votes
where votes.userid is NULL;
select  
  comments.userdisplayname
from 
  comments
where comments.creationdate is not NULL
limit 147;
select  
  votes.userid, 
  votes.postid, 
  max(
    cast(cast(null as float8) as float8)), 
  votes.creationdate, 
  comments.text
from 
  comments
    inner join votes
    on (comments.text is NULL)
where comments.userdisplayname >= comments.text
limit 105;
select  
  users.accountid, 
  postlinks.creationdate, 
  sum(
    cast(cast(null as money) as money))
from 
  postlinks
    right join users
    on (postlinks.linktypeid = users.id )
where users.location <= users.websiteurl
limit 45;
select  
  posts.lasteditordisplayname, 
  posts.viewcount, 
  posts.lastactivitydate, 
  posts.tags, 
  posts.parentid, 
  posts.creationdate
from 
  posts
where posts.tags is not NULL
limit 50;
select  
  badges.id
from 
  users
    right join badges
    on (badges.tagbased is NULL)
where badges.tagbased is not NULL;
select  
  badges.id, 
  badges.name, 
  max(
    cast(cast(null as "time") as "time")), 
  badges.date
from 
  badges
where badges.id is NULL
limit 114;
select  
  avg(
    cast(80 as int4)), 
  comments.postid, 
  comments.creationdate, 
  avg(
    cast(cast(null as "interval") as "interval")), 
  comments.postid, 
  comments.postid, 
  comments.postid
from 
  comments
where comments.creationdate is NULL
limit 122;
select  
  votes.userid
from 
  posts
        inner join users
          left join posthistory
          on (users.lastaccessdate = posthistory.creationdate)
        on (posts.id >= posts.parentid)
      left join posthistory
            inner join posts
              right join badges
              on (posts.score <= posts.acceptedanswerid)
            on (posts.closeddate = posts.lasteditdate)
          inner join votes
          on (posthistory.userdisplayname > posthistory.revisionguid)
        inner join posts
        on (posts.answercount >= votes.bountyamount)
      on (posts.lasteditdate < posts.creationdate)
    right join users
    on (posthistory.userdisplayname is not NULL)
where posthistory.text is NULL
limit 138;
select  
  users.views
from 
  comments
        right join users
        on (users.lastaccessdate >= users.lastaccessdate)
      right join posts
          inner join votes
          on (posts.tags = posts.tags)
        right join badges
        on (votes.userid = badges.id )
      on (comments.userid = posts.id )
    inner join posts
    on (badges.name <= users.displayname)
where posts.owneruserid is NULL
limit 99;
select  
  votes.postid, 
  avg(
    cast(cast(null as "numeric") as "numeric")), 
  votes.userid, 
  votes.bountyamount, 
  votes.votetypeid
from 
  votes
where votes.votetypeid is not NULL;
select  
  users.lastaccessdate, 
  users.websiteurl, 
  users.views, 
  users.upvotes
from 
  users
where users.displayname >= users.location;
select  
  badges.name, 
  users.websiteurl, 
  posts.creationdate, 
  posthistory.postid
from 
  posthistory
    right join postlinks
        left join comments
              left join badges
                inner join posts
                on (badges.userid = posts.id )
              on (badges.date >= posts.lastactivitydate)
            left join users
            on (badges.date < posts.communityowneddate)
          inner join badges
          on (users.aboutme <= users.displayname)
        on (badges.userid <= users.reputation)
      inner join users
      on (users.accountid <= comments.userid)
    on (postlinks.creationdate is NULL)
where comments.score is not NULL
limit 68;
select  
  max(
    cast(cast(null as "interval") as "interval")), 
  max(
    cast(posthistory.text as text)), 
  votes.creationdate, 
  votes.bountyamount, 
  votes.creationdate, 
  posthistory.userdisplayname
from 
  posthistory
    right join badges
        inner join votes
          inner join posthistory
          on (votes.bountyamount > votes.bountyamount)
        on (posthistory.revisionguid <= posthistory.contentlicense)
      right join users
        inner join postlinks
        on (users.accountid = postlinks.id )
      on (users.websiteurl <= badges.name)
    on (posthistory.id = postlinks.id )
where users.upvotes is not NULL;
select  
  posthistory.id, 
  min(
    cast(cast(null as date) as date)), 
  users.displayname, 
  postlinks.id, 
  users.downvotes, 
  users.views, 
  votes.bountyamount
from 
  users
          inner join users
          on (users.views >= users.accountid)
        right join users
            inner join posthistory
              inner join badges
                inner join comments
                  inner join posthistory
                  on (comments.id = posthistory.id )
                on (posthistory.creationdate <= badges.date)
              on (posthistory.contentlicense >= badges.class)
            on (users.aboutme = posthistory.userdisplayname )
          inner join postlinks
          on (posthistory.userid = postlinks.id )
        on (users.lastaccessdate >= posthistory.creationdate)
      inner join users
      on (posthistory.creationdate = users.creationdate)
    inner join users
        inner join users
        on (users.location = users.displayname )
      right join users
        right join votes
          left join posts
          on (posts.tags < posts.lasteditordisplayname)
        on (users.upvotes > votes.userid)
      on (users.id = users.id )
    on (posthistory.postid is not NULL)
where users.reputation is NULL
limit 100;
select  
  comments.userid, 
  comments.creationdate, 
  comments.score
from 
  comments
where comments.creationdate is not NULL
limit 106;
select  
  posts.closeddate, 
  posts.parentid
from 
  posts
where posts.score is not NULL;
select  
  posthistory.userdisplayname
from 
  posthistory
      inner join postlinks
        right join votes
        on (votes.bountyamount = votes.postid)
      on (posthistory.creationdate = votes.creationdate )
    inner join comments
    on (postlinks.creationdate is NULL)
where votes.postid = votes.bountyamount
limit 129;
select  
  votes.postid, 
  votes.postid, 
  votes.creationdate, 
  votes.creationdate, 
  votes.votetypeid, 
  max(
    cast(cast(null as inet) as inet)), 
  votes.userid, 
  min(
    cast(cast(null as timetz) as timetz))
from 
  votes
where votes.userid is NULL
limit 67;
select  
  postlinks.postid, 
  postlinks.linktypeid, 
  postlinks.relatedpostid, 
  postlinks.creationdate, 
  postlinks.linktypeid, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.postid, 
  postlinks.creationdate, 
  postlinks.postid, 
  postlinks.relatedpostid
from 
  postlinks
where postlinks.creationdate is not NULL
limit 147;
select  
  posts.creationdate, 
  posts.parentid, 
  posts.id, 
  posts.parentid, 
  posts.posttypeid, 
  posts.tags, 
  posts.ownerdisplayname, 
  posts.parentid, 
  posts.body, 
  min(
    cast(cast(null as inet) as inet)), 
  posts.body, 
  min(
    cast(42 as int4)), 
  posts.creationdate
from 
  posts
where posts.lasteditordisplayname < posts.title
limit 79;
select  
  postlinks.linktypeid, 
  badges.date
from 
  postlinks
        inner join comments
          inner join posthistory
          on (comments.postid >= posthistory.id)
        on (postlinks.relatedpostid = posthistory.id )
      right join comments
        left join badges
        on (badges.date = comments.creationdate)
      on (posthistory.revisionguid <= comments.userdisplayname)
    right join votes
      left join votes
      on (votes.id > votes.userid)
    on (postlinks.postid is NULL)
where posthistory.contentlicense is not NULL;
select  
  comments.creationdate, 
  votes.votetypeid, 
  votes.bountyamount, 
  comments.score
from 
  votes
    left join comments
    on (votes.userid = comments.id )
where votes.postid is not NULL
limit 50;
select  
  min(
    cast(cast(null as bpchar) as bpchar)), 
  votes.postid
from 
  votes
where votes.postid is NULL
limit 85;
select  
  posts.owneruserid, 
  posts.lastactivitydate, 
  posts.score, 
  posts.answercount, 
  posts.posttypeid, 
  posts.lastactivitydate, 
  posts.answercount
from 
  posts
where posts.lasteditdate is not NULL
limit 115;
select  
  posthistory.postid, 
  votes.bountyamount, 
  votes.bountyamount, 
  max(
    cast(cast(null as money) as money)), 
  votes.userid, 
  badges.name
from 
  votes
      inner join badges
      on (badges.date > votes.creationdate)
    right join posthistory
    on (posthistory.userdisplayname is NULL)
where badges.date is NULL;
select  
  posts.ownerdisplayname, 
  posts.lastactivitydate, 
  users.lastaccessdate, 
  users.upvotes, 
  posthistory.text
from 
  posthistory
          inner join posts
          on (posthistory.id = posts.id )
        inner join comments
        on (posts.closeddate > posts.creationdate)
      inner join votes
              inner join postlinks
              on (votes.votetypeid >= votes.postid)
            right join posthistory
              right join badges
              on (posthistory.postid <= badges.id)
            on (posthistory.revisionguid <= badges.class)
          right join users
          on (users.lastaccessdate <= users.lastaccessdate)
        right join users
        on (postlinks.creationdate <= users.lastaccessdate)
      on (users.creationdate > posthistory.creationdate)
    inner join posts
    on (votes.postid is not NULL)
where users.location = posthistory.comment
limit 103;
select  
  posts.lasteditdate, 
  posts.lasteditordisplayname, 
  sum(
    cast(posts.viewcount as int8)), 
  posts.commentcount, 
  badges.date, 
  posts.lasteditordisplayname, 
  badges.class, 
  posts.owneruserid, 
  badges.date, 
  posts.acceptedanswerid
from 
  posts
    left join badges
    on (posts.lasteditdate < posts.lastactivitydate)
where badges.tagbased is not NULL
limit 96;
select  
  max(
    cast(cast(null as pg_lsn) as pg_lsn)), 
  posts.tags, 
  max(
    cast(cast(null as oid) as oid)), 
  posts.communityowneddate, 
  posts.lasteditoruserid, 
  badges.id, 
  count(*), 
  posts.score, 
  posts.parentid, 
  posts.tags, 
  badges.name, 
  badges.userid, 
  posts.parentid, 
  badges.date, 
  badges.tagbased, 
  badges.name, 
  posts.owneruserid, 
  posts.commentcount, 
  sum(
    cast(64 as int4)), 
  badges.class, 
  posts.lasteditdate, 
  posts.favoritecount, 
  badges.date, 
  badges.class, 
  posts.posttypeid, 
  posts.commentcount, 
  min(
    cast(cast(null as float8) as float8)), 
  badges.userid, 
  posts.score, 
  posts.closeddate
from 
  badges
    left join posts
    on (posts.viewcount is not NULL)
where posts.posttypeid is NULL
limit 65;
select  
  posts.lasteditdate, 
  min(
    cast(posts.communityowneddate as timestamptz)), 
  posts.lasteditoruserid
from 
  posts
where posts.answercount is NULL
limit 97;
select  
  max(
    cast(cast(null as bpchar) as bpchar))
from 
  comments
where comments.id is NULL
limit 186;
select  
  badges.id, 
  max(
    cast(badges.userid as int8)), 
  badges.name
from 
  badges
where badges.userid is not NULL
limit 27;
select  
  posts.contentlicense, 
  posts.lasteditdate, 
  posts.commentcount, 
  posts.communityowneddate, 
  posts.contentlicense
from 
  posts
where posts.owneruserid is NULL
limit 159;
