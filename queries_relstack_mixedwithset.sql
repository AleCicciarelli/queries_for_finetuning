-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      postlinks_1.id), 
    postlinks_1.linktypeid, 
    avg(
      postlinks_1.linktypeid), 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 23)
INTERSECT
(select  
    max(
      postlinks_2.linktypeid), 
    postlinks_2.linktypeid, 
    sum(
      postlinks_2.id), 
    postlinks_2.relatedpostid
  from 
    postlinks as postlinks_2
  where postlinks_2.id is not NULL
  group by postlinks_2.creationdate, postlinks_2.linktypeid, postlinks_2.relatedpostid
  limit 31);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.contentlicense, 
    posthistory_1.creationdate, 
    votes_1.postid, 
    votes_1.creationdate, 
    votes_1.id
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
  where posthistory_1.comment is not NULL
  limit 34)
UNION
(select  
    posthistory_2.contentlicense, 
    posthistory_2.creationdate, 
    posthistory_2.userid, 
    min(
      posthistory_2.creationdate), 
    posthistory_2.postid
  from 
    posthistory as posthistory_2
  where posthistory_2.creationdate = posthistory_2.creationdate
  limit 32);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 36)
EXCEPT
(select  
    badges_2.class
  from 
    badges as badges_2
      inner join comments as comments_1
      on (badges_2.id = comments_1.id )
  where badges_2.class is not NULL
  group by badges_2.class, badges_2.id, badges_2.tagbased, comments_1.creationdate, comments_1.text
  limit 35);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.id, 
    users_1.creationdate, 
    users_1.aboutme, 
    users_1.displayname, 
    users_1.websiteurl, 
    count(
      users_1.location), 
    max(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.websiteurl
  limit 23)
EXCEPT
(select  
    comments_1.userid, 
    max(
      posthistory_1.id), 
    posthistory_1.text, 
    comments_1.text, 
    posthistory_1.text, 
    count(
      comments_1.text), 
    min(
      comments_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where posthistory_1.userid is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.postid, 
    posthistory_1.userdisplayname, 
    posthistory_1.revisionguid, 
    postlinks_1.postid, 
    posthistory_1.text
  from 
    postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
  where posthistory_1.creationdate > postlinks_1.creationdate
  limit 2)
UNION
(select  
    postlinks_2.id, 
    count(
      postlinks_2.id), 
    min(
      postlinks_2.creationdate), 
    max(
      postlinks_2.creationdate), 
    max(
      postlinks_2.creationdate)
  from 
    postlinks as postlinks_2
  where postlinks_2.relatedpostid is not NULL
  limit 8);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.creationdate, 
    votes_1.id, 
    votes_1.userid, 
    votes_1.votetypeid, 
    votes_1.postid, 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 37)
INTERSECT
(select  
    count(
      posthistory_1.revisionguid), 
    posthistory_1.posthistorytypeid, 
    users_1.accountid, 
    posthistory_2.id, 
    posthistory_2.id, 
    min(
      posthistory_2.creationdate), 
    min(
      users_1.creationdate)
  from 
    users as users_1
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      inner join posthistory as posthistory_2
      on (users_1.id = posthistory_2.id )
  where posthistory_2.creationdate < users_1.creationdate
  group by posthistory_1.userid, posthistory_2.text, posthistory_2.userdisplayname
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 21)
EXCEPT
(select  
    votes_2.votetypeid, 
    votes_2.creationdate
  from 
    votes as votes_2
  where votes_2.id is not NULL
  limit 42);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.text, 
    posthistory_1.id, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 14)
UNION
(select  
    badges_1.name, 
    postlinks_1.postid, 
    min(
      postlinks_1.relatedpostid)
  from 
    badges as badges_1
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
  where badges_1.tagbased is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 26);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.date, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 21)
EXCEPT
(select  
    comments_1.creationdate, 
    postlinks_1.relatedpostid
  from 
    votes as votes_1
        inner join postlinks as postlinks_1
        on (votes_1.id = postlinks_1.id )
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
  where comments_1.userid is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.creationdate, 
    users_1.profileimageurl, 
    users_1.displayname, 
    users_1.websiteurl
  from 
    users as users_1
  where users_1.id is not NULL
  limit 19)
EXCEPT
(select  
    max(
      users_2.creationdate), 
    users_2.profileimageurl, 
    users_2.aboutme, 
    users_2.location
  from 
    users as users_2
  where users_2.accountid is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  limit 18)
INTERSECT
(select  
    badges_1.id, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  group by badges_1.class
  limit 34);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      votes_1.id)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 42)
INTERSECT
(select  
    min(
      posts_1.owneruserid)
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  limit 33);
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      users_1.creationdate), 
    users_1.profileimageurl, 
    comments_1.userdisplayname, 
    users_1.websiteurl, 
    users_1.displayname, 
    users_1.location
  from 
    users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
  where users_1.id is not NULL
  group by comments_1.userdisplayname, users_1.displayname, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 40)
INTERSECT
(select  
    max(
      postlinks_1.creationdate), 
    postlinks_1.id, 
    min(
      posthistory_1.creationdate), 
    min(
      postlinks_1.linktypeid), 
    posthistory_1.revisionguid, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where postlinks_1.id is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 23);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.text, 
  min(
    posthistory_1.userid), 
  sum(
    posthistory_1.postid)
from 
  posts as posts_1
    inner join posthistory as posthistory_1
    on (posts_1.id = posthistory_1.id )
where posts_1.creationdate = posthistory_1.creationdate
group by posthistory_1.text
limit 37;
-- meta {"num_joins":1,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.posttypeid, 
    posts_1.parentid, 
    min(
      posts_1.creationdate), 
    posts_1.title, 
    badges_1.date, 
    min(
      badges_1.userid), 
    max(
      posts_1.owneruserid), 
    max(
      badges_1.class), 
    badges_1.id
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where posts_1.id is not NULL
  group by badges_1.date, badges_1.id, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 36)
EXCEPT
(select  
    users_1.id, 
    users_1.profileimageurl, 
    min(
      users_1.creationdate), 
    users_1.aboutme, 
    users_1.creationdate, 
    count(
      users_1.accountid), 
    count(
      users_1.location), 
    count(*), 
    users_1.accountid
  from 
    users as users_1
  where users_1.id is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.location
  limit 7);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      posts_1.id), 
    min(
      posts_1.creationdate), 
    posts_1.creationdate, 
    posts_1.acceptedanswerid, 
    posts_1.tags, 
    posts_1.title, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.body is not NULL
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.tags, posts_1.title
  limit 35)
UNION
(select  
    count(*), 
    min(
      votes_1.creationdate), 
    votes_1.creationdate, 
    votes_1.postid, 
    max(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 27);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.userid, 
    votes_1.postid, 
    votes_1.votetypeid, 
    count(
      votes_1.userid), 
    badges_1.date
  from 
    votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
  where badges_1.name is not NULL
  group by badges_1.date, badges_1.userid, votes_1.postid, votes_1.votetypeid
  limit 33)
INTERSECT
(select  
    users_1.accountid, 
    users_1.id, 
    users_1.accountid, 
    min(
      users_1.accountid), 
    users_1.creationdate
  from 
    users as users_1
  where users_1.location is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
  limit 6);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id, 
    sum(
      posthistory_1.postid)
  from 
    users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.id
  limit 31)
INTERSECT
(select  
    comments_1.userid, 
    sum(
      comments_1.postid)
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userdisplayname
  limit 20);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  posts_1.ownerdisplayname, 
  posts_1.body, 
  posts_1.tags, 
  min(
    posts_1.creationdate)
from 
  posts as posts_1
where posts_1.parentid = posts_1.owneruserid
group by posts_1.body, posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.tags
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location, 
    users_1.profileimageurl, 
    users_1.displayname
  from 
    users as users_1
  where users_1.websiteurl = users_1.aboutme
  limit 1)
INTERSECT
(select  
    min(
      postlinks_1.creationdate), 
    postlinks_1.postid, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.revisionguid, 
    posthistory_1.contentlicense, 
    posthistory_1.text, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  limit 25)
EXCEPT
(select  
    badges_1.name, 
    badges_1.name, 
    badges_1.name, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 32);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.class, 
    posthistory_1.creationdate
  from 
    badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
  where posthistory_1.userdisplayname is not NULL
  limit 17)
INTERSECT
(select  
    posts_1.owneruserid, 
    posthistory_2.creationdate
  from 
    posts as posts_1
      inner join posthistory as posthistory_2
      on (posts_1.id = posthistory_2.id )
  where posts_1.title >= posthistory_2.comment
  group by posthistory_2.contentlicense
  limit 20);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.creationdate, 
    comments_1.userid, 
    count(*), 
    comments_1.userdisplayname, 
    count(*), 
    comments_1.id, 
    comments_1.text, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  group by comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 32)
EXCEPT
(select  
    users_1.creationdate, 
    users_1.accountid, 
    min(
      users_1.id), 
    users_1.location, 
    count(*), 
    min(
      users_1.creationdate), 
    users_1.websiteurl, 
    users_1.accountid
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 1);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.id, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.postid), 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 3)
UNION
(select  
    badges_1.id, 
    badges_1.id, 
    votes_1.id, 
    max(
      votes_1.creationdate), 
    min(
      badges_1.userid), 
    badges_1.date, 
    max(
      badges_1.id), 
    max(
      votes_1.id)
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where badges_1.name < badges_1.name
  group by badges_1.id, badges_1.name, badges_1.userid, votes_1.creationdate, votes_1.postid, votes_1.userid
  limit 32);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid, 
    posthistory_1.text, 
    posthistory_1.comment, 
    posthistory_1.contentlicense, 
    sum(
      posthistory_1.id)
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text
  limit 24)
EXCEPT
(select  
    count(
      posthistory_2.creationdate), 
    posthistory_2.revisionguid, 
    min(
      posthistory_2.creationdate), 
    posthistory_2.comment, 
    count(
      posthistory_2.text), 
    sum(
      posthistory_2.postid)
  from 
    posthistory as posthistory_2
  where posthistory_2.creationdate = posthistory_2.creationdate
  limit 3);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 19)
EXCEPT
(select  
    posts_1.id
  from 
    posts as posts_1
  where posts_1.id is not NULL
  limit 34);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.creationdate, 
    min(
      users_1.profileimageurl), 
    posthistory_1.postid, 
    posthistory_1.contentlicense, 
    users_1.displayname
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      on (posthistory_1.id = postlinks_1.id )
  where users_1.creationdate is not NULL
  group by posthistory_1.contentlicense, posthistory_1.postid, users_1.creationdate, users_1.displayname
  limit 1)
EXCEPT
(select  
    postlinks_3.creationdate, 
    count(
      users_2.accountid), 
    postlinks_3.postid, 
    posthistory_2.revisionguid, 
    posthistory_2.userdisplayname
  from 
    postlinks as postlinks_2
        inner join posthistory as posthistory_2
          inner join postlinks as postlinks_3
          on (posthistory_2.id = postlinks_3.id )
        on (postlinks_2.id = postlinks_3.id )
      inner join users as users_2
      on (postlinks_3.id = users_2.id )
  where posthistory_2.creationdate is not NULL
  group by users_2.location
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.tagbased, 
    badges_1.class, 
    count(*), 
    badges_1.date, 
    badges_1.userid, 
    count(
      badges_1.name)
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 8)
UNION
(select  
    comments_1.contentlicense, 
    max(
      comments_1.userid), 
    comments_1.userid, 
    min(
      comments_1.id), 
    comments_1.creationdate, 
    comments_1.userid, 
    count(
      comments_1.id)
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 31);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.userid, 
    badges_1.tagbased, 
    badges_1.id
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 17)
INTERSECT
(select  
    posts_2.id, 
    min(
      comments_1.creationdate), 
    posts_2.acceptedanswerid
  from 
    posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where posts_1.id is not NULL
  limit 36);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.id
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where postlinks_1.creationdate is not NULL
  limit 1)
EXCEPT
(select  
    posts_1.parentid
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
  where posthistory_1.userdisplayname is not NULL
  group by posthistory_1.contentlicense, posthistory_1.userdisplayname, posts_1.contentlicense
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 20)
EXCEPT
(select  
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.owneruserid >= posts_1.parentid
  group by posts_1.creationdate, posts_1.ownerdisplayname
  limit 5);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  min(
    badges_1.id), 
  badges_1.name, 
  max(
    badges_1.class)
from 
  badges as badges_1
where badges_1.date < badges_1.date
group by badges_1.name, badges_1.tagbased
limit 8;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.parentid, 
    count(*), 
    count(
      posts_2.tags), 
    count(
      posts_2.owneruserid)
  from 
    posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where posts_2.owneruserid is not NULL
  group by posts_1.parentid
  limit 33)
UNION
(select  
    postlinks_1.linktypeid, 
    min(
      postlinks_1.linktypeid), 
    max(
      postlinks_1.id), 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 22)
INTERSECT
(select  
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 5);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    posts_1.contentlicense, 
    max(
      posts_1.creationdate), 
    count(
      posts_1.title), 
    votes_1.userid
  from 
    posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where votes_1.votetypeid is not NULL
  group by posts_1.contentlicense, votes_1.creationdate, votes_1.userid
  limit 39)
EXCEPT
(select  
    max(
      posthistory_1.creationdate), 
    posthistory_1.contentlicense, 
    max(
      posthistory_1.creationdate), 
    count(*), 
    count(*)
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 27);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  users_1.websiteurl, 
  votes_1.postid, 
  users_1.location, 
  max(
    users_1.creationdate), 
  votes_1.userid, 
  min(
    votes_1.creationdate), 
  users_1.accountid, 
  votes_1.votetypeid, 
  users_1.profileimageurl
from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where votes_1.postid is not NULL
group by users_1.accountid, users_1.location, users_1.profileimageurl, users_1.websiteurl, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 27;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  limit 36)
EXCEPT
(select  
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.posttypeid
  limit 23);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id
from 
  votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join comments as comments_1
    on (badges_1.id = comments_1.id )
where comments_1.text >= comments_1.contentlicense
limit 19;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.profileimageurl, 
    users_1.accountid, 
    users_1.creationdate, 
    count(
      users_2.profileimageurl), 
    min(
      postlinks_1.creationdate), 
    min(
      postlinks_1.creationdate), 
    users_1.displayname, 
    postlinks_1.id
  from 
    users as users_1
      inner join postlinks as postlinks_1
        inner join users as users_2
        on (postlinks_1.id = users_2.id )
      on (users_1.id = postlinks_1.id )
  where users_1.creationdate is not NULL
  group by postlinks_1.id, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.profileimageurl
  limit 2)
EXCEPT
(select  
    votes_1.userid, 
    votes_1.userid, 
    min(
      votes_1.userid), 
    max(
      votes_1.userid), 
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.votetypeid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      posts_1.acceptedanswerid), 
    posts_1.creationdate, 
    posts_1.id, 
    min(
      posts_1.creationdate), 
    posts_1.body
  from 
    posts as posts_1
  where posts_1.creationdate > posts_1.creationdate
  group by posts_1.body, posts_1.creationdate, posts_1.id
  limit 40)
EXCEPT
(select  
    max(
      posts_2.acceptedanswerid), 
    count(
      posts_2.body), 
    posts_2.parentid, 
    max(
      posts_2.creationdate), 
    posts_2.body
  from 
    posts as posts_2
  where posts_2.owneruserid is not NULL
  group by posts_2.acceptedanswerid, posts_2.body, posts_2.creationdate, posts_2.ownerdisplayname, posts_2.owneruserid
  limit 32);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  comments_1.postid, 
  min(
    comments_1.creationdate), 
  comments_1.text, 
  posts_1.title, 
  comments_1.id, 
  posts_2.id
from 
  votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    inner join posts as posts_2
      inner join comments as comments_1
      on (posts_2.id = comments_1.id )
    on (posts_1.id = posts_2.id )
where posts_2.title is not NULL
group by comments_1.id, comments_1.postid, comments_1.text, posts_1.title, posts_2.id, votes_1.votetypeid
limit 4;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    users_1.accountid, 
    postlinks_1.linktypeid, 
    users_1.aboutme
  from 
    comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where comments_1.contentlicense is not NULL
  limit 23)
UNION
(select  
    users_2.creationdate, 
    users_2.id, 
    posts_2.acceptedanswerid, 
    posts_1.title
  from 
    users as users_2
        inner join posts as posts_1
        on (users_2.id = posts_1.id )
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where users_2.id is not NULL
  limit 38);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.aboutme, 
    users_1.id, 
    max(
      users_1.accountid), 
    count(
      users_1.displayname), 
    users_1.accountid
  from 
    users as users_1
  where users_1.location is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.id
  limit 27)
EXCEPT
(select  
    max(
      posthistory_1.creationdate), 
    posthistory_1.userid, 
    min(
      posthistory_1.postid), 
    max(
      badges_1.class), 
    badges_1.userid
  from 
    posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
  where posthistory_1.contentlicense > posthistory_1.text
  limit 19);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      users_1.creationdate), 
    users_1.websiteurl, 
    users_1.displayname, 
    users_1.aboutme, 
    users_1.accountid, 
    min(
      users_1.accountid)
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.websiteurl
  limit 31)
EXCEPT
(select  
    max(
      posts_1.creationdate), 
    users_2.aboutme, 
    posts_1.body, 
    posts_1.title, 
    votes_1.userid, 
    count(
      postlinks_1.relatedpostid)
  from 
    votes as votes_1
        inner join postlinks as postlinks_1
        on (votes_1.id = postlinks_1.id )
      inner join votes as votes_2
          inner join posthistory as posthistory_1
          on (votes_2.id = posthistory_1.id )
        inner join users as users_2
          inner join posts as posts_1
          on (users_2.id = posts_1.id )
        on (votes_2.id = posts_1.id )
      on (postlinks_1.id = votes_2.id )
  where users_2.id is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid, 
    count(*), 
    postlinks_1.id, 
    postlinks_1.relatedpostid, 
    avg(
      postlinks_1.linktypeid), 
    avg(
      postlinks_1.linktypeid)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 28)
UNION
(select  
    posts_1.parentid, 
    max(
      posts_1.posttypeid), 
    min(
      posts_1.creationdate), 
    posts_1.parentid, 
    count(*), 
    posts_1.id, 
    posts_1.parentid, 
    sum(
      posts_1.id), 
    sum(
      posts_1.owneruserid)
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.posttypeid
  limit 39);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.userdisplayname, 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.userid is not NULL
  limit 26)
INTERSECT
(select  
    badges_1.name, 
    badges_1.id
  from 
    badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
  where badges_1.tagbased is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.location
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 1)
UNION
(select  
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.userid
  limit 30);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.displayname, 
  min(
    users_1.creationdate)
from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.accountid, users_1.creationdate, users_1.displayname, users_1.profileimageurl, users_1.websiteurl
limit 34;
-- meta {"num_joins":2,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      users_1.creationdate), 
    users_1.websiteurl, 
    max(
      posthistory_1.creationdate), 
    max(
      posthistory_1.creationdate), 
    users_1.aboutme, 
    posthistory_2.userid, 
    count(*), 
    posthistory_2.userdisplayname, 
    min(
      users_1.creationdate), 
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
      inner join users as users_1
        inner join posthistory as posthistory_2
        on (users_1.id = posthistory_2.id )
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_1.postid is not NULL
  group by posthistory_1.creationdate, posthistory_2.userdisplayname, posthistory_2.userid, users_1.aboutme, users_1.websiteurl
  limit 21)
UNION
(select  
    min(
      badges_1.date), 
    badges_1.name, 
    max(
      badges_1.date), 
    min(
      badges_1.date), 
    badges_1.name, 
    badges_1.userid, 
    min(
      badges_1.userid), 
    sum(
      badges_1.class), 
    min(
      badges_1.date), 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.class, badges_1.date, badges_1.name
  limit 33);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.userdisplayname, 
    comments_2.id, 
    posthistory_1.userid, 
    max(
      comments_1.creationdate), 
    posts_1.posttypeid, 
    posthistory_1.postid, 
    posthistory_1.contentlicense, 
    posthistory_1.revisionguid, 
    comments_2.contentlicense, 
    posts_1.owneruserid, 
    comments_1.userid, 
    posts_1.title, 
    max(
      posts_1.creationdate)
  from 
    comments as comments_1
          inner join comments as comments_2
          on (comments_1.id = comments_2.id )
        inner join posts as posts_1
        on (comments_1.id = posts_1.id )
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where comments_2.userdisplayname is not NULL
  group by comments_1.userid, comments_2.contentlicense, comments_2.id, posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid, posts_1.owneruserid, posts_1.posttypeid, posts_1.title
  limit 31)
INTERSECT
(select  
    comments_3.contentlicense, 
    comments_3.userid, 
    comments_3.postid, 
    min(
      comments_3.creationdate), 
    comments_3.userid, 
    min(
      comments_3.userid), 
    comments_3.contentlicense, 
    comments_3.contentlicense, 
    comments_3.text, 
    comments_3.postid, 
    comments_3.postid, 
    comments_3.contentlicense, 
    max(
      comments_3.creationdate)
  from 
    comments as comments_3
  where comments_3.text is not NULL
  group by comments_3.contentlicense, comments_3.postid, comments_3.text
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 8)
INTERSECT
(select  
    posthistory_1.creationdate, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.postid, 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense > posthistory_1.revisionguid
  limit 22);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.aboutme, 
    users_1.location
  from 
    users as users_1
  where users_1.creationdate = users_1.creationdate
  limit 2)
INTERSECT
(select  
    users_2.location, 
    users_2.websiteurl
  from 
    votes as votes_1
      inner join users as users_2
      on (votes_1.id = users_2.id )
  where users_2.creationdate is not NULL
  group by users_2.aboutme
  limit 31);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.postid, 
    comments_1.contentlicense, 
    comments_1.postid, 
    posts_1.body
  from 
    comments as comments_1
      inner join posts as posts_1
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      on (comments_1.id = votes_1.id )
  where posts_1.id is not NULL
  limit 26)
UNION
(select  
    posts_2.posttypeid, 
    avg(
      posts_2.id), 
    count(*), 
    posts_2.body
  from 
    posts as posts_2
  where posts_2.creationdate is not NULL
  group by posts_2.creationdate, posts_2.parentid, posts_2.posttypeid, posts_2.tags, posts_2.title
  limit 4);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
  where posts_1.body <= posts_1.ownerdisplayname
  limit 5)
INTERSECT
(select  
    users_1.creationdate
  from 
    users as users_1
      inner join users as users_2
        inner join badges as badges_1
        on (users_2.id = badges_1.id )
      on (users_1.id = users_2.id )
  where users_2.displayname is not NULL
  group by badges_1.name, users_1.accountid, users_1.displayname, users_1.location, users_1.profileimageurl, users_2.location, users_2.profileimageurl, users_2.websiteurl
  limit 28);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.text, 
    avg(
      posthistory_1.userid), 
    posthistory_1.creationdate, 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  group by posthistory_1.creationdate, posthistory_1.text, posthistory_1.userdisplayname
  limit 13)
UNION
(select  
    posthistory_2.userdisplayname, 
    sum(
      posthistory_2.posthistorytypeid), 
    posthistory_2.creationdate, 
    posthistory_2.revisionguid
  from 
    posthistory as posthistory_2
  where posthistory_2.userdisplayname is not NULL
  group by posthistory_2.contentlicense, posthistory_2.creationdate, posthistory_2.id, posthistory_2.postid, posthistory_2.revisionguid, posthistory_2.userdisplayname
  limit 22);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased, 
    min(
      badges_1.date), 
    min(
      posthistory_1.creationdate), 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
  where posthistory_1.posthistorytypeid is not NULL
  group by badges_1.tagbased
  limit 5)
EXCEPT
(select  
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text
  limit 36);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.websiteurl, 
    users_1.id, 
    users_1.accountid
  from 
    users as users_1
  where users_1.aboutme is not NULL
  limit 21)
UNION
(select  
    comments_1.contentlicense, 
    comments_1.id, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 40);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      posthistory_1.id)
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where votes_1.postid is not NULL
  limit 23)
EXCEPT
(select  
    count(*)
  from 
    users as users_1
  where users_1.creationdate <= users_1.creationdate
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.websiteurl
  limit 33);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where votes_1.creationdate = badges_1.date
  limit 12)
INTERSECT
(select  
    badges_2.name
  from 
    badges as badges_2
  where badges_2.name is not NULL
  group by badges_2.class, badges_2.date, badges_2.id, badges_2.tagbased, badges_2.userid
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.location, 
    users_1.id
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  limit 4)
UNION
(select  
    badges_1.name, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
  limit 33);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 35)
UNION
(select  
    users_1.creationdate, 
    max(
      users_1.profileimageurl)
  from 
    users as users_1
  where users_1.id >= users_1.profileimageurl
  group by users_1.displayname, users_1.id, users_1.profileimageurl
  limit 37);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.aboutme, 
    min(
      users_1.creationdate), 
    users_1.creationdate, 
    users_1.location, 
    users_1.profileimageurl, 
    users_1.websiteurl, 
    users_1.accountid
  from 
    users as users_1
  where users_1.location < users_1.displayname
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 7)
EXCEPT
(select  
    comments_1.userdisplayname, 
    min(
      comments_1.creationdate), 
    comments_1.creationdate, 
    comments_1.userdisplayname, 
    comments_1.id, 
    count(
      comments_1.text), 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  group by comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 8);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid, 
    votes_1.userid, 
    votes_1.id, 
    votes_1.postid, 
    votes_1.creationdate, 
    count(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 22)
EXCEPT
(select  
    postlinks_1.id, 
    comments_1.postid, 
    postlinks_1.relatedpostid, 
    posts_2.owneruserid, 
    comments_1.creationdate, 
    max(
      postlinks_1.linktypeid)
  from 
    posts as posts_1
        inner join posts as posts_2
          inner join comments as comments_1
          on (posts_2.id = comments_1.id )
        on (posts_1.id = posts_2.id )
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
  where posts_2.parentid is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.id, 
    votes_1.postid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 21)
UNION
(select  
    votes_2.votetypeid, 
    votes_2.votetypeid, 
    votes_2.postid, 
    votes_2.creationdate
  from 
    votes as votes_2
  where votes_2.postid is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.tagbased, 
    max(
      badges_1.date), 
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.date >= badges_1.date
  group by badges_1.tagbased
  limit 30)
UNION
(select  
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 33);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      comments_1.postid)
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 22)
INTERSECT
(select  
    sum(
      postlinks_1.relatedpostid)
  from 
    comments as comments_2
      inner join posthistory as posthistory_1
        inner join postlinks as postlinks_1
            inner join posts as posts_1
            on (postlinks_1.id = posts_1.id )
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        on (posthistory_1.id = postlinks_2.id )
      on (comments_2.id = postlinks_1.id )
  where postlinks_2.postid is not NULL
  limit 40);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.creationdate, 
    posthistory_1.comment, 
    votes_1.userid, 
    posthistory_1.revisionguid, 
    posthistory_1.userid, 
    min(
      posthistory_1.userid), 
    sum(
      votes_1.votetypeid), 
    posthistory_1.id, 
    votes_1.votetypeid, 
    max(
      votes_1.postid), 
    posthistory_1.creationdate, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
  where posthistory_1.posthistorytypeid is not NULL
  group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid, votes_1.creationdate, votes_1.userid, votes_1.votetypeid
  limit 38)
INTERSECT
(select  
    comments_1.creationdate, 
    comments_1.userdisplayname, 
    posts_1.acceptedanswerid, 
    comments_1.userdisplayname, 
    comments_1.postid, 
    count(
      posts_1.owneruserid), 
    avg(
      comments_1.postid), 
    comments_1.userid, 
    avg(
      posts_1.parentid), 
    min(
      posts_1.acceptedanswerid), 
    posts_1.creationdate, 
    sum(
      comments_1.userid)
  from 
    comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
  where comments_1.userdisplayname is not NULL
  limit 25);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.date
  from 
    badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
  where users_1.id is not NULL
  limit 30)
INTERSECT
(select  
    badges_2.date
  from 
    badges as badges_2
      inner join posthistory as posthistory_1
      on (badges_2.id = posthistory_1.id )
  where badges_2.date = posthistory_1.creationdate
  limit 32);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.postid, 
    posthistory_1.userdisplayname, 
    votes_1.id, 
    votes_1.votetypeid
  from 
    posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
  where posts_1.creationdate is not NULL
  limit 16)
UNION
(select  
    users_1.accountid, 
    posts_2.acceptedanswerid, 
    posts_2.contentlicense, 
    users_1.profileimageurl, 
    posts_2.posttypeid
  from 
    users as users_1
      inner join posts as posts_2
      on (users_1.id = posts_2.id )
  where posts_2.body is not NULL
  limit 17);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.creationdate, 
    posthistory_1.text
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where posthistory_1.revisionguid is not NULL
  limit 25)
INTERSECT
(select  
    users_1.creationdate, 
    users_1.websiteurl
  from 
    users as users_1
      inner join votes as votes_2
      on (users_1.id = votes_2.id )
  where votes_2.userid >= votes_2.postid
  group by users_1.aboutme, users_1.accountid, users_1.location, users_1.profileimageurl, users_1.websiteurl, votes_2.id, votes_2.votetypeid
  limit 19);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    votes_1.userid, 
    votes_1.creationdate, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 38)
EXCEPT
(select  
    badges_1.class, 
    badges_1.id, 
    badges_1.date, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.date > badges_1.date
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased
  limit 36);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  users_1.location, 
  users_1.websiteurl, 
  users_1.id, 
  users_1.displayname, 
  min(
    users_1.creationdate), 
  users_1.aboutme, 
  users_1.profileimageurl, 
  max(
    users_1.creationdate), 
  max(
    users_1.profileimageurl)
from 
  users as users_1
where users_1.websiteurl >= users_1.location
group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 27;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.linktypeid, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.linktypeid, postlinks_1.postid
  limit 26)
EXCEPT
(select  
    badges_1.id, 
    min(
      badges_1.date), 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 34);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.creationdate, 
    posthistory_1.posthistorytypeid
  from 
    postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
  where postlinks_1.id is not NULL
  limit 26)
EXCEPT
(select  
    postlinks_2.creationdate, 
    postlinks_2.linktypeid
  from 
    votes as votes_1
      inner join postlinks as postlinks_2
      on (votes_1.id = postlinks_2.id )
  where postlinks_2.postid is not NULL
  group by postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, votes_1.creationdate, votes_1.id
  limit 5);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.name, 
    max(
      badges_1.date), 
    badges_1.tagbased, 
    badges_1.date, 
    min(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.class is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased
  limit 28)
UNION
(select  
    users_1.id, 
    users_1.location, 
    max(
      users_1.creationdate), 
    max(
      users_1.id), 
    users_1.creationdate, 
    min(
      users_1.id)
  from 
    users as users_1
  where users_1.location is not NULL
  group by users_1.accountid, users_1.displayname, users_1.id, users_1.location
  limit 23);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    votes_1.postid, 
    votes_1.votetypeid, 
    votes_1.userid, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 23)
EXCEPT
(select  
    postlinks_1.creationdate, 
    min(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
  limit 9);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.postid
  from 
    users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
  where users_1.aboutme is not NULL
  limit 7)
EXCEPT
(select  
    users_2.accountid
  from 
    users as users_2
  where users_2.accountid is not NULL
  group by users_2.accountid, users_2.websiteurl
  limit 12);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.creationdate, 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  group by comments_1.creationdate
  limit 28)
INTERSECT
(select  
    posts_1.creationdate, 
    min(
      posts_1.creationdate), 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  limit 19);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id
from 
  posts as posts_1
      inner join users as users_1
        inner join posts as posts_2
        on (users_1.id = posts_2.id )
      on (posts_1.id = users_1.id )
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where votes_1.postid is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.aboutme
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 1)
UNION
(select  
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
  where badges_1.id is not NULL
  group by badges_1.class, badges_1.tagbased, posthistory_1.revisionguid
  limit 16);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      postlinks_1.creationdate), 
    users_1.displayname, 
    max(
      posthistory_1.creationdate), 
    sum(
      posts_1.posttypeid), 
    badges_1.userid, 
    postlinks_1.linktypeid, 
    posthistory_1.id, 
    postlinks_1.id
  from 
    users as users_1
          inner join postlinks as postlinks_1
          on (users_1.id = postlinks_1.id )
        inner join badges as badges_1
        on (users_1.id = badges_1.id )
      inner join posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      on (badges_1.id = posthistory_1.id )
  where posts_1.creationdate is not NULL
  group by badges_1.userid, posthistory_1.id, postlinks_1.id, postlinks_1.linktypeid, users_1.displayname
  limit 9)
INTERSECT
(select  
    min(
      postlinks_2.creationdate), 
    min(
      postlinks_2.creationdate), 
    min(
      postlinks_2.creationdate), 
    avg(
      postlinks_2.linktypeid), 
    postlinks_2.postid, 
    max(
      postlinks_2.creationdate), 
    postlinks_2.relatedpostid, 
    postlinks_2.linktypeid
  from 
    postlinks as postlinks_2
  where postlinks_2.postid is not NULL
  group by postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid
  limit 4);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  limit 2)
EXCEPT
(select  
    min(
      votes_1.creationdate), 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.tags, 
    posts_1.contentlicense, 
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  limit 37)
INTERSECT
(select  
    badges_1.name, 
    badges_1.name, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.date < badges_1.date
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 25);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      posts_1.contentlicense), 
    posts_1.body
  from 
    votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
  where votes_1.votetypeid is not NULL
  group by posts_1.body
  limit 22)
INTERSECT
(select  
    min(
      comments_1.id), 
    comments_1.text
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 13);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.class
  from 
    postlinks as postlinks_1
        inner join postlinks as postlinks_2
          inner join votes as votes_1
          on (postlinks_2.id = votes_1.id )
        on (postlinks_1.id = votes_1.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where postlinks_2.postid is not NULL
  limit 13)
INTERSECT
(select  
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.creationdate, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 41)
UNION
(select  
    badges_1.id, 
    avg(
      badges_1.userid), 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 26);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.id, 
    count(
      users_1.location), 
    users_1.creationdate, 
    users_1.accountid, 
    users_1.profileimageurl, 
    users_1.location, 
    min(
      users_1.creationdate), 
    users_1.websiteurl, 
    users_1.aboutme
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 7)
UNION
(select  
    votes_1.userid, 
    count(
      votes_1.votetypeid), 
    votes_1.creationdate, 
    votes_1.userid, 
    votes_1.postid, 
    max(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    max(
      votes_1.postid), 
    count(
      votes_1.postid)
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.id, votes_1.postid
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.name = users_1.location
limit 40;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.text, 
    posts_1.ownerdisplayname, 
    posts_1.body, 
    posts_1.creationdate, 
    comments_1.contentlicense, 
    posts_1.owneruserid, 
    posts_1.tags
  from 
    posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where comments_1.text is not NULL
  limit 8)
UNION
(select  
    badges_1.name, 
    max(
      badges_1.date), 
    badges_1.name, 
    badges_1.date, 
    max(
      badges_1.date), 
    badges_1.userid, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 41);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id, 
    min(
      badges_1.date), 
    sum(
      badges_1.userid), 
    badges_1.class, 
    badges_1.name, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.name >= badges_1.name
  group by badges_1.class, badges_1.id, badges_1.name, badges_1.userid
  limit 39)
EXCEPT
(select  
    badges_2.class, 
    max(
      badges_2.date), 
    sum(
      badges_2.class), 
    badges_2.userid, 
    badges_2.name, 
    badges_2.userid
  from 
    badges as badges_2
  where badges_2.date <= badges_2.date
  limit 10);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.profileimageurl, 
    posts_1.body
  from 
    badges as badges_1
      inner join posts as posts_1
        inner join comments as comments_1
          inner join users as users_1
          on (comments_1.id = users_1.id )
        on (posts_1.id = users_1.id )
      on (badges_1.id = comments_1.id )
  where comments_1.postid is not NULL
  limit 17)
INTERSECT
(select  
    posthistory_1.postid, 
    max(
      badges_2.date)
  from 
    badges as badges_2
      inner join posthistory as posthistory_1
      on (badges_2.id = posthistory_1.id )
  where posthistory_1.id > badges_2.id
  limit 18);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.creationdate, 
    posthistory_1.comment, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.userdisplayname
  limit 35)
EXCEPT
(select  
    users_1.creationdate, 
    users_1.aboutme, 
    min(
      users_1.creationdate), 
    users_1.displayname
  from 
    users as users_1
      inner join votes as votes_1
      on (users_1.id = votes_1.id )
  where votes_1.userid is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 9)
UNION
(select  
    badges_1.date
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 36);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.creationdate, 
    users_1.websiteurl
  from 
    users as users_1
  where users_1.creationdate is not NULL
  limit 11)
EXCEPT
(select  
    badges_1.date, 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
  where posthistory_1.comment is not NULL
  group by posthistory_1.creationdate, posthistory_1.postid
  limit 13);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.title is not NULL
  limit 16)
INTERSECT
(select  
    max(
      posts_2.creationdate)
  from 
    posts as posts_2
  where posts_2.creationdate > posts_2.creationdate
  group by posts_2.body, posts_2.contentlicense, posts_2.id, posts_2.ownerdisplayname
  limit 22);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 5)
EXCEPT
(select  
    users_1.id, 
    min(
      users_1.creationdate), 
    count(*)
  from 
    users as users_1
  where users_1.creationdate <= users_1.creationdate
  group by users_1.displayname, users_1.id
  limit 16);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    users_1.accountid, 
    posts_1.creationdate, 
    sum(
      posts_2.posttypeid), 
    users_1.location
  from 
    posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where posts_1.tags is not NULL
  group by posts_1.creationdate, users_1.accountid, users_1.location
  limit 3)
UNION
(select  
    count(
      posthistory_2.userid), 
    min(
      posthistory_3.creationdate), 
    posthistory_3.creationdate, 
    sum(
      posts_3.id), 
    posthistory_1.userdisplayname
  from 
    posts as posts_3
          inner join posthistory as posthistory_1
          on (posts_3.id = posthistory_1.id )
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      inner join posthistory as posthistory_3
      on (posthistory_1.id = posthistory_3.id )
  where posts_3.contentlicense is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    users_1.id), 
  max(
    users_1.creationdate), 
  users_1.profileimageurl, 
  users_1.id
from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.id, users_1.profileimageurl
limit 14;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.tagbased, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.name > badges_1.name
  limit 15)
UNION
(select  
    badges_4.tagbased, 
    badges_4.date
  from 
    badges as badges_2
        inner join postlinks as postlinks_1
        on (badges_2.id = postlinks_1.id )
      inner join badges as badges_3
          inner join comments as comments_1
            inner join badges as badges_4
            on (comments_1.id = badges_4.id )
          on (badges_3.id = badges_4.id )
        inner join users as users_1
        on (badges_4.id = users_1.id )
      on (postlinks_1.id = badges_3.id )
  where postlinks_1.relatedpostid is not NULL
  limit 31);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.contentlicense, 
    comments_1.userid, 
    comments_1.id, 
    min(
      comments_1.creationdate), 
    comments_1.creationdate, 
    sum(
      comments_1.id), 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userid
  limit 13)
INTERSECT
(select  
    comments_2.userdisplayname, 
    comments_2.postid, 
    badges_1.userid, 
    min(
      users_1.creationdate), 
    comments_2.creationdate, 
    sum(
      comments_2.postid), 
    max(
      users_1.creationdate)
  from 
    comments as comments_2
      inner join posthistory as posthistory_1
        inner join badges as badges_1
          inner join users as users_1
          on (badges_1.id = users_1.id )
        on (posthistory_1.id = users_1.id )
      on (comments_2.id = badges_1.id )
  where badges_1.tagbased <= badges_1.tagbased
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.postid, 
    posthistory_1.userdisplayname, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  limit 10)
UNION
(select  
    posthistory_2.posthistorytypeid, 
    posthistory_2.id, 
    posthistory_2.comment, 
    posthistory_2.userid
  from 
    posthistory as posthistory_2
  where posthistory_2.userdisplayname is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.text, 
  posthistory_1.comment, 
  posthistory_1.userid, 
  count(
    posthistory_1.revisionguid), 
  posthistory_1.contentlicense, 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid, 
  min(
    posthistory_1.userid)
from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
limit 36;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      posthistory_1.creationdate), 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_2.userdisplayname is not NULL
  group by posthistory_1.userid
  limit 40)
INTERSECT
(select  
    max(
      comments_1.creationdate), 
    sum(
      comments_1.id)
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.contentlicense, comments_1.id, comments_1.userid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.postid, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.id is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 26;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.userdisplayname, 
  posthistory_1.comment, 
  posts_1.body, 
  min(
    users_1.creationdate), 
  users_1.profileimageurl
from 
  posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
    inner join users as users_1
    on (posthistory_1.id = users_1.id )
where posts_1.creationdate is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.userdisplayname, posts_1.body, users_1.profileimageurl
limit 24;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  limit 1)
INTERSECT
(select  
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.creationdate < posts_1.creationdate
  limit 40);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      users_1.accountid), 
    users_1.creationdate, 
    max(
      users_1.creationdate), 
    min(
      users_1.accountid), 
    users_1.displayname
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  group by users_1.creationdate, users_1.displayname
  limit 31)
UNION
(select  
    count(*), 
    posthistory_1.creationdate, 
    min(
      posthistory_1.creationdate), 
    max(
      posthistory_1.postid), 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname > posthistory_1.comment
  limit 42);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.votetypeid, 
    postlinks_1.postid, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    votes_1.postid
  from 
    votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
  where votes_1.votetypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.postid, votes_1.postid, votes_1.votetypeid
  limit 31)
INTERSECT
(select  
    votes_2.postid, 
    votes_2.votetypeid, 
    max(
      votes_2.creationdate), 
    votes_2.creationdate, 
    votes_2.postid
  from 
    votes as votes_2
  where votes_2.votetypeid is not NULL
  limit 3);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.id, 
    max(
      comments_1.creationdate), 
    comments_2.userdisplayname, 
    comments_1.contentlicense, 
    comments_2.userid
  from 
    comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
  where comments_1.id >= comments_2.userid
  group by comments_1.contentlicense, comments_1.id, comments_2.userdisplayname, comments_2.userid
  limit 10)
INTERSECT
(select  
    comments_3.postid, 
    min(
      comments_3.creationdate), 
    comments_3.contentlicense, 
    comments_3.text, 
    max(
      comments_3.creationdate)
  from 
    comments as comments_3
  where comments_3.text is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      posts_1.creationdate), 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.ownerdisplayname
  limit 18)
EXCEPT
(select  
    min(
      badges_1.date), 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.date > badges_1.date
  limit 42);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname, 
  users_1.aboutme, 
  users_1.accountid, 
  min(
    users_1.profileimageurl), 
  users_1.creationdate, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.profileimageurl >= users_1.id
group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.profileimageurl
limit 17;
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.creationdate, 
    comments_1.userid, 
    comments_1.text, 
    comments_1.postid, 
    count(
      comments_1.userdisplayname), 
    comments_1.contentlicense, 
    comments_1.userdisplayname, 
    count(*), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.creationdate > comments_1.creationdate
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 17)
INTERSECT
(select  
    posts_1.creationdate, 
    posts_1.posttypeid, 
    count(*), 
    posts_1.posttypeid, 
    count(*), 
    count(*), 
    posts_1.ownerdisplayname, 
    count(*), 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.body >= posts_1.title
  group by posts_1.body, posts_1.creationdate, posts_1.id, posts_1.parentid, posts_1.tags
  limit 11);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    postlinks_1.creationdate, 
    avg(
      postlinks_1.postid), 
    postlinks_1.relatedpostid, 
    max(
      postlinks_1.creationdate), 
    count(
      postlinks_1.relatedpostid), 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 3)
UNION
(select  
    posthistory_1.userid, 
    votes_1.id, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.creationdate, 
    sum(
      votes_1.userid), 
    posthistory_1.id, 
    min(
      votes_1.creationdate), 
    count(
      votes_1.postid), 
    min(
      posthistory_1.creationdate)
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where votes_1.postid is not NULL
  group by posthistory_1.id, posthistory_1.posthistorytypeid, votes_1.postid, votes_1.userid
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.displayname
from 
  users as users_1
where users_1.displayname is not NULL
limit 36;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid, 
  posts_1.ownerdisplayname, 
  posts_1.parentid
from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 15;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.userid, 
    users_1.profileimageurl, 
    posthistory_1.text, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid, 
    posthistory_1.comment, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userdisplayname, 
    users_1.aboutme, 
    users_1.id
  from 
    users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
  where posthistory_1.revisionguid is not NULL
  group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid, users_1.aboutme, users_1.id, users_1.profileimageurl
  limit 38)
UNION
(select  
    votes_1.id, 
    votes_1.postid, 
    min(
      votes_1.creationdate), 
    votes_1.postid, 
    count(*), 
    count(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    min(
      votes_1.userid), 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  limit 5)
INTERSECT
(select  
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid = posts_1.owneruserid
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid
from 
  votes as votes_1
where votes_1.postid <= votes_1.votetypeid
limit 28;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      users_1.id)
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 8)
UNION
(select  
    avg(
      users_2.accountid)
  from 
    users as users_2
  where users_2.accountid <= users_2.id
  group by users_2.aboutme, users_2.accountid, users_2.displayname, users_2.id, users_2.profileimageurl, users_2.websiteurl
  limit 7);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.id, 
    users_1.accountid, 
    min(
      users_1.creationdate), 
    users_1.aboutme, 
    users_1.displayname
  from 
    users as users_1
  where users_1.aboutme is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.id
  limit 18)
INTERSECT
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.id, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.contentlicense, 
    posthistory_1.comment
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
  limit 21);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.tagbased, 
    badges_1.userid
  from 
    badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
  where badges_1.class is not NULL
  limit 15)
INTERSECT
(select  
    count(*), 
    min(
      votes_1.id), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate <= votes_1.creationdate
  limit 14);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid, 
  max(
    users_1.creationdate), 
  posts_1.ownerdisplayname, 
  max(
    users_1.creationdate), 
  sum(
    badges_1.id), 
  users_1.location, 
  users_1.accountid, 
  posts_1.id, 
  badges_1.class, 
  users_1.displayname, 
  badges_1.tagbased, 
  users_1.id, 
  posts_1.contentlicense, 
  posts_1.parentid, 
  posts_1.body
from 
  badges as badges_1
    inner join posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
    on (badges_1.id = users_1.id )
where badges_1.class > posts_1.posttypeid
group by badges_1.class, badges_1.tagbased, posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, users_1.accountid, users_1.displayname, users_1.id, users_1.location
limit 26;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.postid
  from 
    users as users_1
          inner join badges as badges_1
          on (users_1.id = badges_1.id )
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
  where comments_1.userdisplayname is not NULL
  limit 8)
UNION
(select  
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  limit 18);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    comments_1.userdisplayname, 
    comments_1.text, 
    comments_1.creationdate, 
    min(
      comments_1.postid), 
    max(
      comments_1.postid)
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, comments_1.userdisplayname
  limit 4)
EXCEPT
(select  
    posthistory_1.comment, 
    posthistory_1.text, 
    posthistory_1.text, 
    postlinks_1.creationdate, 
    min(
      posthistory_1.posthistorytypeid), 
    count(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where postlinks_1.id is not NULL
  limit 16);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid, 
    comments_1.userid, 
    votes_1.userid, 
    postlinks_1.relatedpostid, 
    comments_1.contentlicense, 
    votes_1.postid
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
        inner join comments as comments_1
        on (votes_1.id = comments_1.id )
      on (postlinks_1.id = comments_1.id )
  where comments_1.contentlicense is not NULL
  limit 36)
EXCEPT
(select  
    votes_3.id, 
    votes_2.postid, 
    votes_3.postid, 
    votes_3.postid, 
    avg(
      votes_2.postid), 
    votes_3.votetypeid
  from 
    votes as votes_2
      inner join votes as votes_3
      on (votes_2.id = votes_3.id )
  where votes_3.creationdate >= votes_2.creationdate
  limit 39);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.tags, 
    badges_1.id, 
    badges_1.name, 
    posts_1.ownerdisplayname
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where badges_1.name is not NULL
  limit 31)
EXCEPT
(select  
    badges_2.name, 
    badges_2.userid, 
    badges_2.name, 
    badges_2.name
  from 
    badges as badges_2
  where badges_2.name is not NULL
  limit 37);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.userid, 
    badges_1.tagbased, 
    badges_1.id
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 21)
EXCEPT
(select  
    users_1.id, 
    min(
      users_1.profileimageurl), 
    users_1.accountid
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  group by users_1.aboutme
  limit 30);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userdisplayname, 
    comments_1.id, 
    comments_1.text, 
    max(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.creationdate >= comments_1.creationdate
  group by comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
  limit 27)
UNION
(select  
    posthistory_1.contentlicense, 
    posthistory_1.postid, 
    posthistory_1.text, 
    min(
      badges_1.date), 
    min(
      badges_1.date), 
    badges_1.id
  from 
    badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
  where badges_1.class is not NULL
  group by badges_1.date, posthistory_1.postid
  limit 30);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_2.postid, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join posthistory as posthistory_2
      on (posts_1.id = posthistory_2.id )
  where posts_1.body is not NULL
  group by posthistory_2.postid
  limit 4)
UNION
(select  
    max(
      comments_1.userid), 
    min(
      users_1.creationdate)
  from 
    users as users_1
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
  where comments_1.userid is not NULL
  group by comments_1.creationdate, comments_1.text, comments_1.userid, users_1.creationdate, votes_1.id, votes_1.postid
  limit 12);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.ownerdisplayname, 
  posts_1.creationdate, 
  posts_1.id, 
  max(
    posts_1.creationdate), 
  posts_1.tags, 
  posts_1.parentid, 
  posts_1.posttypeid, 
  min(
    posts_1.id), 
  posts_1.body, 
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.acceptedanswerid is not NULL
group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.tags
limit 12;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.relatedpostid, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where posthistory_1.creationdate > postlinks_1.creationdate
  limit 13)
UNION
(select  
    posts_1.parentid, 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.owneruserid > posts_1.acceptedanswerid
  limit 33);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.date, 
    badges_1.tagbased, 
    min(
      badges_1.date), 
    posts_1.body, 
    badges_1.class
  from 
    posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
  where badges_1.userid <= badges_1.id
  group by badges_1.class, badges_1.date, badges_1.tagbased, posts_1.body
  limit 5)
INTERSECT
(select  
    comments_1.creationdate, 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    min(
      comments_1.userid), 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname
  limit 34);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.profileimageurl, 
    count(*), 
    users_1.displayname, 
    users_1.aboutme, 
    users_1.creationdate, 
    max(
      users_1.profileimageurl)
  from 
    users as users_1
  where users_1.accountid = users_1.profileimageurl
  group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.profileimageurl
  limit 22)
INTERSECT
(select  
    users_2.accountid, 
    min(
      users_2.profileimageurl), 
    posts_1.ownerdisplayname, 
    posts_1.contentlicense, 
    posts_1.creationdate, 
    max(
      posts_1.acceptedanswerid)
  from 
    posts as posts_1
      inner join users as users_2
      on (posts_1.id = users_2.id )
  where users_2.location <= posts_1.title
  limit 41);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.creationdate, 
    posts_1.acceptedanswerid, 
    max(
      posts_1.creationdate)
  from 
    comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
  where posts_1.owneruserid = posts_1.acceptedanswerid
  group by posts_1.acceptedanswerid, posts_1.creationdate
  limit 7)
UNION
(select  
    votes_1.creationdate, 
    votes_1.postid, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.websiteurl, 
    users_1.accountid
  from 
    users as users_1
  where users_1.profileimageurl <= users_1.id
  limit 22)
EXCEPT
(select  
    posts_1.title, 
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  group by posts_1.body, posts_1.tags
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.body, 
    posts_1.creationdate, 
    posts_1.id, 
    posts_1.title, 
    posts_1.tags, 
    min(
      posts_1.creationdate), 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.id, posts_1.tags, posts_1.title
  limit 1)
INTERSECT
(select  
    min(
      posts_2.creationdate), 
    count(
      posts_2.creationdate), 
    posts_2.posttypeid, 
    posts_2.body, 
    posts_2.title, 
    max(
      posts_2.creationdate), 
    min(
      posts_2.creationdate)
  from 
    posts as posts_2
  where posts_2.owneruserid is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.creationdate, 
    posthistory_1.contentlicense, 
    posthistory_1.text, 
    posthistory_1.id, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.userid > posthistory_1.id
  limit 22)
EXCEPT
(select  
    posthistory_2.creationdate, 
    posthistory_2.revisionguid, 
    posthistory_2.contentlicense, 
    posthistory_2.postid, 
    max(
      posthistory_2.id)
  from 
    posthistory as posthistory_2
  where posthistory_2.comment is not NULL
  group by posthistory_2.creationdate, posthistory_2.postid
  limit 11);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.id, 
    max(
      posts_1.posttypeid), 
    posts_1.contentlicense, 
    users_1.websiteurl, 
    posts_1.ownerdisplayname, 
    max(
      users_1.profileimageurl), 
    posts_1.title, 
    users_1.profileimageurl, 
    posts_1.tags, 
    users_1.location, 
    avg(
      users_1.id), 
    min(
      posts_1.acceptedanswerid)
  from 
    users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
  where posts_1.body is not NULL
  group by posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.tags, posts_1.title, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 8)
INTERSECT
(select  
    posts_2.parentid, 
    count(*), 
    posts_2.tags, 
    posts_2.body, 
    posts_2.ownerdisplayname, 
    max(
      posts_2.id), 
    posts_2.body, 
    min(
      posts_2.creationdate), 
    posts_2.body, 
    posts_2.title, 
    avg(
      posts_2.acceptedanswerid), 
    max(
      posts_2.id)
  from 
    posts as posts_2
  where posts_2.creationdate >= posts_2.creationdate
  limit 18);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.id, 
  votes_1.postid, 
  min(
    votes_1.creationdate), 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
limit 8;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.postid, 
    comments_1.userdisplayname, 
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  limit 36)
EXCEPT
(select  
    min(
      posts_1.creationdate), 
    posts_1.contentlicense, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.tags = posts_1.contentlicense
  limit 41);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.posttypeid, 
    min(
      posts_1.id), 
    min(
      posts_1.creationdate), 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.title is not NULL
  group by posts_1.acceptedanswerid, posts_1.posttypeid
  limit 11)
EXCEPT
(select  
    posthistory_1.postid, 
    count(
      posthistory_1.comment), 
    max(
      posthistory_1.creationdate), 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 29)
INTERSECT
(select  
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.id is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.id is not NULL
limit 34;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location, 
    users_1.displayname, 
    users_1.accountid, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.creationdate is not NULL
  limit 22)
INTERSECT
(select  
    users_2.aboutme, 
    users_2.displayname, 
    votes_1.id, 
    votes_1.id
  from 
    users as users_2
      inner join votes as votes_1
      on (users_2.id = votes_1.id )
  where votes_1.creationdate is not NULL
  group by users_2.aboutme, users_2.profileimageurl, users_2.websiteurl, votes_1.creationdate
  limit 1);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.tagbased = badges_1.tagbased
  limit 16)
EXCEPT
(select  
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.userid is not NULL
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text, posthistory_1.userid
  limit 14);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userid, 
    comments_1.text, 
    users_1.aboutme, 
    users_1.displayname
  from 
    comments as comments_1
      inner join votes as votes_1
        inner join users as users_1
            inner join postlinks as postlinks_1
            on (users_1.id = postlinks_1.id )
          inner join comments as comments_2
          on (postlinks_1.id = comments_2.id )
        on (votes_1.id = comments_2.id )
      on (comments_1.id = comments_2.id )
  where votes_1.id is not NULL
  limit 5)
EXCEPT
(select  
    posts_1.posttypeid, 
    posts_1.body, 
    posts_1.contentlicense, 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":9,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    comments_1.id, 
    comments_1.userdisplayname, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    postlinks_1.id, 
    postlinks_1.postid, 
    max(
      comments_1.creationdate), 
    postlinks_1.linktypeid, 
    postlinks_1.relatedpostid, 
    sum(
      comments_1.userid), 
    comments_1.userid, 
    comments_1.creationdate, 
    comments_1.postid, 
    sum(
      postlinks_1.linktypeid), 
    min(
      comments_1.creationdate), 
    max(
      comments_1.creationdate), 
    count(*)
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where comments_1.id is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userdisplayname, comments_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 16)
EXCEPT
(select  
    posts_1.contentlicense, 
    sum(
      posts_1.acceptedanswerid), 
    posts_1.contentlicense, 
    min(
      posts_1.creationdate), 
    posts_1.creationdate, 
    posts_1.acceptedanswerid, 
    posts_1.parentid, 
    min(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    posts_1.id, 
    sum(
      posts_1.id), 
    max(
      posts_1.acceptedanswerid), 
    posts_1.creationdate, 
    posts_1.parentid, 
    sum(
      posts_1.parentid), 
    max(
      posts_1.creationdate), 
    max(
      posts_1.creationdate), 
    count(
      posts_1.title)
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.posttypeid, posts_1.tags
  limit 22);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  posts_1.body, 
  count(
    posts_1.posttypeid), 
  posts_1.ownerdisplayname, 
  posts_1.posttypeid, 
  posts_1.acceptedanswerid
from 
  posts as posts_1
where posts_1.owneruserid is not NULL
group by posts_1.acceptedanswerid, posts_1.body, posts_1.id, posts_1.ownerdisplayname, posts_1.posttypeid
limit 28;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.postid >= votes_1.votetypeid
  limit 17)
UNION
(select  
    posts_1.owneruserid, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.title is not NULL
  group by posts_1.creationdate
  limit 41);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 17)
UNION
(select  
    postlinks_2.creationdate
  from 
    postlinks as postlinks_2
      inner join posts as posts_1
      on (postlinks_2.id = posts_1.id )
  where posts_1.posttypeid is not NULL
  group by postlinks_2.creationdate, posts_1.id
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.id is not NULL
  group by posts_1.contentlicense, posts_1.owneruserid
  limit 10)
INTERSECT
(select  
    max(
      postlinks_1.creationdate), 
    min(
      postlinks_1.creationdate), 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 15);
-- meta {"num_joins":4,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.date, 
    postlinks_1.postid, 
    posts_1.owneruserid, 
    posts_1.ownerdisplayname, 
    badges_1.userid, 
    posts_2.posttypeid
  from 
    posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join badges as badges_1
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      on (posts_1.id = badges_1.id )
  where posts_1.acceptedanswerid is not NULL
  limit 25)
EXCEPT
(select  
    badges_2.date, 
    avg(
      postlinks_2.linktypeid), 
    badges_2.id, 
    badges_2.name, 
    badges_2.id, 
    badges_2.class
  from 
    badges as badges_2
      inner join postlinks as postlinks_2
      on (badges_2.id = postlinks_2.id )
  where badges_2.name > badges_2.name
  group by badges_2.class, badges_2.date, badges_2.id, badges_2.userid, postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid
  limit 15);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.id, 
    votes_1.postid, 
    votes_1.votetypeid, 
    max(
      votes_1.creationdate), 
    count(
      votes_1.votetypeid), 
    votes_1.userid, 
    avg(
      votes_1.id), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate <= votes_1.creationdate
  group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 28)
INTERSECT
(select  
    count(
      comments_1.creationdate), 
    comments_1.id, 
    comments_1.id, 
    min(
      comments_1.creationdate), 
    count(
      comments_1.userdisplayname), 
    comments_1.postid, 
    avg(
      comments_1.postid), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userid
  limit 19);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.creationdate, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 14)
INTERSECT
(select  
    max(
      badges_1.date), 
    badges_1.date, 
    max(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.tagbased = badges_1.tagbased
  limit 7);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 35)
INTERSECT
(select  
    posts_1.creationdate
  from 
    users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
  where posts_1.posttypeid is not NULL
  group by posts_1.parentid
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate < postlinks_1.creationdate
  group by postlinks_1.creationdate
  limit 31)
INTERSECT
(select  
    posthistory_1.creationdate, 
    max(
      posthistory_1.posthistorytypeid)
  from 
    posthistory as posthistory_1
  where posthistory_1.userid is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posthistory_1.comment, 
  min(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense, 
  posthistory_1.userid
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.userid
limit 38;
-- meta {"num_joins":0,"num_aggregates":10,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      badges_1.date), 
    badges_1.id, 
    max(
      badges_1.date), 
    badges_1.date, 
    max(
      badges_1.date), 
    count(
      badges_1.tagbased), 
    badges_1.name, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid
  limit 18)
INTERSECT
(select  
    max(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate), 
    min(
      postlinks_1.postid), 
    min(
      postlinks_1.id), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid = postlinks_1.id
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.creationdate, 
    comments_1.userid, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 39)
EXCEPT
(select  
    posthistory_1.creationdate, 
    posthistory_1.userid, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate = posthistory_1.creationdate
  limit 13);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.id, 
    posts_1.body, 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  limit 41)
EXCEPT
(select  
    votes_1.userid, 
    posthistory_1.revisionguid, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
  where posthistory_1.postid = posthistory_1.posthistorytypeid
  group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, votes_1.creationdate, votes_1.userid
  limit 19);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.websiteurl, 
    sum(
      users_1.accountid), 
    users_1.aboutme
  from 
    posthistory as posthistory_1
        inner join users as users_1
        on (posthistory_1.id = users_1.id )
      inner join posthistory as posthistory_2
        inner join postlinks as postlinks_1
        on (posthistory_2.id = postlinks_1.id )
      on (posthistory_1.id = postlinks_1.id )
  where posthistory_1.text is not NULL
  group by users_1.aboutme, users_1.websiteurl
  limit 12)
UNION
(select  
    badges_1.name, 
    avg(
      posts_1.acceptedanswerid), 
    posts_1.contentlicense
  from 
    posts as posts_1
        inner join posthistory as posthistory_3
        on (posts_1.id = posthistory_3.id )
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
  where badges_1.tagbased > badges_1.tagbased
  group by badges_1.name
  limit 6);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.profileimageurl, 
    max(
      badges_1.date)
  from 
    badges as badges_1
      inner join users as users_1
        inner join posthistory as posthistory_1
        on (users_1.id = posthistory_1.id )
      on (badges_1.id = users_1.id )
  where posthistory_1.text <= posthistory_1.contentlicense
  group by users_1.profileimageurl
  limit 12)
UNION
(select  
    badges_2.id, 
    min(
      badges_2.date)
  from 
    badges as badges_2
  where badges_2.class is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  limit 34)
EXCEPT
(select  
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.acceptedanswerid = posts_1.posttypeid
  limit 36);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.websiteurl, 
    users_1.aboutme, 
    users_2.aboutme, 
    count(*), 
    users_1.location, 
    users_2.displayname, 
    min(
      users_1.creationdate), 
    users_1.id, 
    users_2.location
  from 
    users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
  where users_1.creationdate is not NULL
  group by users_1.aboutme, users_1.id, users_1.location, users_1.websiteurl, users_2.aboutme, users_2.displayname, users_2.location
  limit 4)
UNION
(select  
    badges_1.name, 
    max(
      badges_1.userid), 
    badges_1.name, 
    min(
      badges_1.class), 
    badges_1.name, 
    badges_1.name, 
    min(
      badges_1.date), 
    max(
      badges_1.date), 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.class
  limit 15);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      votes_1.postid)
  from 
    votes as votes_1
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
  where votes_1.creationdate >= comments_1.creationdate
  limit 23)
INTERSECT
(select  
    min(
      comments_2.id)
  from 
    comments as comments_2
  where comments_2.text is not NULL
  limit 11);
-- meta {"num_joins":3,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    max(
      votes_1.creationdate), 
    comments_1.userid, 
    votes_1.votetypeid, 
    count(
      comments_1.contentlicense), 
    min(
      postlinks_1.relatedpostid), 
    comments_1.creationdate, 
    postlinks_1.linktypeid, 
    comments_1.text
  from 
    votes as votes_1
      inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      on (votes_1.id = postlinks_1.id )
  where votes_1.creationdate is not NULL
  group by comments_1.creationdate, comments_1.text, comments_1.userid, postlinks_1.id, postlinks_1.linktypeid, votes_1.votetypeid
  limit 28)
UNION
(select  
    max(
      comments_2.creationdate), 
    min(
      comments_2.creationdate), 
    comments_3.postid, 
    comments_2.id, 
    min(
      comments_2.userid), 
    count(
      comments_3.userid), 
    comments_2.creationdate, 
    comments_2.id, 
    comments_2.text
  from 
    comments as comments_2
      inner join comments as comments_3
      on (comments_2.id = comments_3.id )
  where comments_2.creationdate > comments_3.creationdate
  group by comments_2.creationdate, comments_2.userdisplayname, comments_2.userid, comments_3.id, comments_3.userid
  limit 1);
-- meta {"num_joins":0,"num_aggregates":9,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      posthistory_1.postid), 
    posthistory_1.comment, 
    max(
      posthistory_1.id), 
    posthistory_1.text, 
    avg(
      posthistory_1.posthistorytypeid), 
    posthistory_1.posthistorytypeid, 
    posthistory_1.id, 
    avg(
      posthistory_1.userid), 
    posthistory_1.contentlicense, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.revisionguid, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate < posthistory_1.creationdate
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text
  limit 12)
INTERSECT
(select  
    sum(
      posthistory_2.userid), 
    posthistory_2.comment, 
    min(
      posthistory_2.posthistorytypeid), 
    posthistory_2.contentlicense, 
    sum(
      posthistory_2.userid), 
    posthistory_2.postid, 
    posthistory_2.postid, 
    avg(
      posthistory_2.posthistorytypeid), 
    posthistory_2.userdisplayname, 
    min(
      posthistory_2.creationdate), 
    max(
      posthistory_2.creationdate), 
    posthistory_2.id
  from 
    posthistory as posthistory_2
  where posthistory_2.text is not NULL
  group by posthistory_2.contentlicense, posthistory_2.creationdate, posthistory_2.id, posthistory_2.postid, posthistory_2.revisionguid
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.userid, 
    min(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.userid
  limit 39)
UNION
(select  
    posthistory_1.userid, 
    count(
      posthistory_1.text)
  from 
    posthistory as posthistory_1
  where posthistory_1.userid >= posthistory_1.id
  group by posthistory_1.revisionguid
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.postid = posthistory_1.id
  limit 39)
EXCEPT
(select  
    comments_1.text, 
    votes_1.postid, 
    votes_1.creationdate
  from 
    comments as comments_1
      inner join votes as votes_1
      on (comments_1.id = votes_1.id )
  where votes_1.id is not NULL
  limit 6);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 25)
EXCEPT
(select  
    posthistory_1.postid, 
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
  limit 31);
-- meta {"num_joins":3,"num_aggregates":7,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 42)
UNION
(select  
    posts_1.parentid, 
    posts_1.creationdate
  from 
    postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      inner join comments as comments_2
        inner join posts as posts_1
        on (comments_2.id = posts_1.id )
      on (comments_1.id = comments_2.id )
  where posts_1.contentlicense = posts_1.body
  group by comments_1.id, comments_1.text, comments_2.creationdate, comments_2.postid, comments_2.text, postlinks_1.id, postlinks_1.linktypeid, posts_1.body, posts_1.contentlicense, posts_1.owneruserid, posts_1.title
  limit 5);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.revisionguid, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.revisionguid, posthistory_1.userdisplayname
  limit 42)
EXCEPT
(select  
    sum(
      postlinks_1.postid), 
    min(
      postlinks_1.creationdate), 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid = postlinks_1.linktypeid
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  limit 21)
EXCEPT
(select  
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate < posthistory_1.creationdate
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.profileimageurl, 
    users_1.accountid, 
    users_1.aboutme
  from 
    users as users_1
  where users_1.creationdate is not NULL
  limit 6)
UNION
(select  
    users_2.id, 
    users_2.id, 
    users_2.websiteurl
  from 
    users as users_2
  where users_2.websiteurl is not NULL
  group by users_2.accountid, users_2.profileimageurl
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 9)
EXCEPT
(select  
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.parentid is not NULL
  limit 4);
-- meta {"num_joins":2,"num_aggregates":7,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.websiteurl, 
    users_1.accountid, 
    users_1.id, 
    count(
      comments_1.id), 
    badges_1.class, 
    count(*), 
    min(
      comments_1.postid), 
    badges_1.tagbased, 
    min(
      comments_1.creationdate), 
    sum(
      comments_1.userid)
  from 
    comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
  where users_1.aboutme <= users_1.displayname
  group by badges_1.class, badges_1.tagbased, users_1.accountid, users_1.id, users_1.websiteurl
  limit 42)
UNION
(select  
    min(
      votes_1.creationdate), 
    votes_1.userid, 
    votes_1.postid, 
    min(
      votes_1.votetypeid), 
    votes_1.id, 
    count(
      votes_1.postid), 
    count(*), 
    avg(
      votes_1.votetypeid), 
    max(
      votes_1.creationdate), 
    sum(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.id, votes_1.postid, votes_1.votetypeid
  limit 6);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_2.userid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid, 
  max(
    badges_2.userid), 
  users_1.websiteurl, 
  badges_2.date, 
  postlinks_1.linktypeid
from 
  badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    inner join users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    on (badges_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
group by badges_2.date, badges_2.userid, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, users_1.websiteurl
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select distinct 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  limit 41)
UNION
(select  
    users_1.id
  from 
    users as users_1
  where users_1.location = users_1.websiteurl
  limit 4);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.websiteurl, 
    postlinks_1.relatedpostid, 
    postlinks_1.id, 
    postlinks_1.creationdate, 
    users_1.id, 
    postlinks_1.linktypeid, 
    users_1.aboutme, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
  where users_1.id is not NULL
  limit 6)
UNION
(select  
    avg(
      votes_1.id), 
    votes_1.id, 
    max(
      votes_1.postid), 
    votes_1.creationdate, 
    votes_1.id, 
    votes_1.votetypeid, 
    min(
      votes_1.id), 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.postid, votes_1.votetypeid
  limit 19);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  posthistory_1.creationdate, 
  posthistory_1.postid
from 
  posthistory as posthistory_1
where posthistory_1.contentlicense = posthistory_1.userdisplayname
limit 15;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.acceptedanswerid, 
    badges_1.class, 
    posts_1.ownerdisplayname, 
    posts_1.owneruserid, 
    posthistory_1.contentlicense, 
    badges_1.userid, 
    min(
      posts_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join posts as posts_1
        inner join badges as badges_1
        on (posts_1.id = badges_1.id )
      on (posthistory_1.id = badges_1.id )
  where posthistory_1.posthistorytypeid is not NULL
  group by badges_1.class, badges_1.userid, posthistory_1.contentlicense, posts_1.acceptedanswerid, posts_1.ownerdisplayname, posts_1.owneruserid
  limit 11)
INTERSECT
(select  
    votes_1.votetypeid, 
    votes_1.id, 
    max(
      votes_1.userid), 
    votes_1.postid, 
    avg(
      votes_1.userid), 
    votes_1.id, 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 33);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    votes_2.userid, 
    votes_1.creationdate
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.postid is not NULL
  limit 15)
EXCEPT
(select  
    users_1.profileimageurl, 
    users_1.profileimageurl, 
    users_1.creationdate
  from 
    votes as votes_3
      inner join users as users_1
      on (votes_3.id = users_1.id )
  where votes_3.votetypeid < votes_3.userid
  limit 5);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_2.location, 
    users_1.accountid
  from 
    users as users_1
      inner join users as users_2
        inner join posts as posts_1
          inner join posts as posts_2
          on (posts_1.id = posts_2.id )
        on (users_2.id = posts_2.id )
      on (users_1.id = users_2.id )
  where users_2.id is not NULL
  limit 25)
UNION
(select  
    comments_1.userdisplayname, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.text is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.creationdate, 
    users_1.id, 
    users_1.displayname
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 33)
INTERSECT
(select  
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid <= postlinks_1.id
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 21);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.date, 
    badges_1.class, 
    badges_1.userid, 
    min(
      badges_1.date), 
    badges_1.name, 
    badges_1.id, 
    badges_1.tagbased, 
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.name <= badges_1.name
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 9)
INTERSECT
(select  
    postlinks_1.creationdate, 
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    sum(
      postlinks_1.id), 
    count(*), 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  posthistory_1.text
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 15;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.contentlicense, 
    min(
      posthistory_1.creationdate), 
    users_1.displayname, 
    min(
      users_1.creationdate), 
    users_1.websiteurl
  from 
    users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
  where posthistory_1.userid is not NULL
  group by posthistory_1.contentlicense, users_1.displayname, users_1.websiteurl
  limit 41)
INTERSECT
(select  
    posthistory_2.comment, 
    max(
      posthistory_2.creationdate), 
    posthistory_2.userdisplayname, 
    max(
      posthistory_2.creationdate), 
    posthistory_2.contentlicense
  from 
    posthistory as posthistory_2
  where posthistory_2.userid is not NULL
  group by posthistory_2.comment, posthistory_2.contentlicense, posthistory_2.creationdate, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.revisionguid, posthistory_2.text
  limit 32);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.userid, 
    badges_1.name, 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 22)
UNION
(select  
    users_1.profileimageurl, 
    users_1.profileimageurl, 
    users_1.websiteurl, 
    max(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.displayname < users_1.aboutme
  limit 24);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.creationdate, 
    postlinks_1.linktypeid, 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate >= postlinks_1.creationdate
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid
  limit 24)
INTERSECT
(select  
    posts_1.parentid, 
    min(
      posthistory_1.creationdate), 
    min(
      posthistory_1.creationdate), 
    max(
      badges_1.date)
  from 
    badges as badges_1
      inner join posthistory as posthistory_1
        inner join posts as posts_1
        on (posthistory_1.id = posts_1.id )
      on (badges_1.id = posts_1.id )
  where posts_1.id is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.id, 
    users_1.creationdate
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 10)
UNION
(select  
    badges_1.id, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.class, badges_1.date
  limit 16);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 3)
EXCEPT
(select  
    badges_2.tagbased
  from 
    posts as posts_1
      inner join badges as badges_2
      on (posts_1.id = badges_2.id )
  where badges_2.class is not NULL
  limit 18);
-- meta {"num_joins":3,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      comments_1.postid), 
    comments_1.userid, 
    comments_1.userdisplayname, 
    comments_1.id, 
    comments_1.text, 
    comments_1.postid, 
    comments_1.creationdate, 
    comments_1.contentlicense, 
    max(
      comments_1.postid)
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 37)
EXCEPT
(select  
    count(*), 
    votes_1.id, 
    comments_3.userdisplayname, 
    count(*), 
    users_1.displayname, 
    comments_2.id, 
    comments_2.creationdate, 
    max(
      users_1.id), 
    max(
      votes_1.userid)
  from 
    comments as comments_2
        inner join votes as votes_1
        on (comments_2.id = votes_1.id )
      inner join users as users_1
        inner join comments as comments_3
        on (users_1.id = comments_3.id )
      on (comments_2.id = comments_3.id )
  where comments_2.creationdate is not NULL
  group by comments_2.creationdate, comments_2.postid, comments_2.userdisplayname, comments_2.userid, comments_3.id, comments_3.postid, comments_3.text, users_1.id, users_1.location, users_1.profileimageurl, votes_1.creationdate, votes_1.userid, votes_1.votetypeid
  limit 31);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.id
  from 
    votes as votes_1
      inner join comments as comments_1
        inner join postlinks as postlinks_1
            inner join votes as votes_2
            on (postlinks_1.id = votes_2.id )
          inner join badges as badges_1
          on (postlinks_1.id = badges_1.id )
        on (comments_1.id = badges_1.id )
      on (votes_1.id = comments_1.id )
  where postlinks_1.creationdate is not NULL
  limit 4)
INTERSECT
(select  
    votes_3.userid
  from 
    votes as votes_3
  where votes_3.userid is not NULL
  limit 31);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 3)
EXCEPT
(select  
    posts_1.owneruserid
  from 
    posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
  where postlinks_1.linktypeid is not NULL
  limit 39);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.creationdate, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 38)
INTERSECT
(select  
    votes_2.creationdate, 
    posts_1.acceptedanswerid
  from 
    users as users_1
      inner join badges as badges_1
          inner join posts as posts_1
          on (badges_1.id = posts_1.id )
        inner join votes as votes_2
        on (posts_1.id = votes_2.id )
      on (users_1.id = posts_1.id )
  where badges_1.id is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name, 
  badges_1.class, 
  badges_1.tagbased, 
  badges_1.id, 
  badges_1.date, 
  badges_1.userid, 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.name >= badges_1.name
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 6;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_2.text, 
    comments_1.text
  from 
    comments as comments_1
      inner join votes as votes_1
        inner join comments as comments_2
        on (votes_1.id = comments_2.id )
      on (comments_1.id = votes_1.id )
  where comments_2.creationdate is not NULL
  limit 37)
INTERSECT
(select  
    comments_3.contentlicense, 
    count(*)
  from 
    users as users_1
      inner join comments as comments_3
      on (users_1.id = comments_3.id )
  where comments_3.creationdate is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.body, 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  limit 21)
INTERSECT
(select  
    posts_2.tags, 
    posts_2.owneruserid
  from 
    posts as posts_2
  where posts_2.acceptedanswerid = posts_2.parentid
  limit 27);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.postid, 
    votes_1.votetypeid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 17)
UNION
(select  
    badges_1.class, 
    votes_2.postid, 
    badges_1.class, 
    votes_2.creationdate
  from 
    votes as votes_2
      inner join badges as badges_1
      on (votes_2.id = badges_1.id )
  where badges_1.userid is not NULL
  limit 40);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.userid, 
    posthistory_1.posthistorytypeid, 
    max(
      badges_1.date), 
    badges_1.userid
  from 
    badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
  where posthistory_1.text is not NULL
  group by badges_1.userid, posthistory_1.posthistorytypeid, posthistory_1.userid
  limit 20)
UNION
(select  
    comments_1.postid, 
    comments_1.id, 
    max(
      comments_1.creationdate), 
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.id
  limit 7);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.aboutme, 
    users_1.creationdate, 
    users_1.profileimageurl, 
    votes_1.votetypeid, 
    users_1.accountid, 
    users_1.id, 
    votes_1.postid, 
    votes_1.creationdate, 
    count(*), 
    users_1.displayname
  from 
    votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
  where votes_1.creationdate is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.profileimageurl, votes_1.creationdate, votes_1.postid, votes_1.votetypeid
  limit 33)
UNION
(select  
    min(
      postlinks_1.postid), 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.id, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.id), 
    count(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.name > badges_1.name
  limit 33)
INTERSECT
(select  
    postlinks_1.id, 
    max(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.id >= postlinks_1.postid
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid
  limit 40);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id, 
    votes_1.creationdate
  from 
    posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join badges as badges_1
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      on (posthistory_1.id = badges_1.id )
  where votes_1.userid is not NULL
  limit 41)
EXCEPT
(select  
    users_1.id, 
    users_1.creationdate
  from 
    votes as votes_2
      inner join users as users_1
      on (votes_2.id = users_1.id )
  where users_1.displayname < users_1.location
  limit 33);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.text, 
    comments_1.postid, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.postid, comments_1.text
  limit 36)
EXCEPT
(select  
    users_1.location, 
    users_1.accountid, 
    max(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 34);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.id, 
    max(
      posthistory_1.creationdate), 
    min(
      posthistory_1.creationdate), 
    posthistory_1.id, 
    posthistory_1.creationdate
  from 
    postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
  where postlinks_1.id is not NULL
  group by posthistory_1.creationdate, posthistory_1.id, postlinks_1.id
  limit 40)
INTERSECT
(select  
    votes_2.postid, 
    max(
      votes_2.creationdate), 
    min(
      votes_1.creationdate), 
    votes_2.postid, 
    votes_1.creationdate
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.votetypeid is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
limit 21;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.contentlicense, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 37)
EXCEPT
(select  
    badges_1.name, 
    badges_1.name
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.userid is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 37)
EXCEPT
(select  
    avg(
      posts_1.parentid), 
    posts_1.owneruserid, 
    posts_1.acceptedanswerid, 
    posts_1.owneruserid, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.posttypeid = posts_1.id
  group by posts_1.acceptedanswerid, posts_1.id, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid
  limit 24);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.text, 
    avg(
      posts_1.posttypeid), 
    posts_1.parentid, 
    comments_1.postid, 
    comments_1.userdisplayname
  from 
    comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
  where comments_1.userdisplayname is not NULL
  group by comments_1.postid, comments_1.text, comments_1.userdisplayname, posts_1.parentid
  limit 26)
INTERSECT
(select  
    posthistory_1.comment, 
    sum(
      posthistory_1.userid), 
    posthistory_1.id, 
    count(*), 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 11)
UNION
(select  
    votes_2.userid
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.postid is not NULL
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.creationdate, 
  posthistory_1.contentlicense, 
  badges_1.tagbased, 
  badges_1.class
from 
  badges as badges_1
    inner join posthistory as posthistory_1
    on (badges_1.id = posthistory_1.id )
where posthistory_1.userdisplayname = posthistory_1.text
limit 14;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.date, 
    max(
      posts_1.creationdate), 
    badges_1.userid
  from 
    posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
  where posts_1.tags is not NULL
  group by badges_1.date, badges_1.userid
  limit 29)
UNION
(select  
    sum(
      posts_2.id), 
    max(
      posts_2.creationdate), 
    posts_2.parentid
  from 
    posts as posts_2
      inner join comments as comments_1
      on (posts_2.id = comments_1.id )
  where comments_1.id > posts_2.owneruserid
  group by comments_1.contentlicense, comments_1.id, comments_1.text, posts_2.contentlicense, posts_2.creationdate, posts_2.id, posts_2.ownerdisplayname, posts_2.tags, posts_2.title
  limit 17);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.accountid, 
    max(
      users_1.creationdate), 
    users_1.aboutme, 
    min(
      users_1.creationdate), 
    max(
      users_1.creationdate), 
    count(*), 
    users_1.websiteurl, 
    sum(
      users_1.id)
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.websiteurl
  limit 14)
UNION
(select  
    badges_1.class, 
    max(
      badges_1.date), 
    badges_1.name, 
    min(
      badges_1.date), 
    max(
      badges_1.date), 
    max(
      badges_1.id), 
    min(
      badges_1.date), 
    avg(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 37);
-- meta {"num_joins":4,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    users_1.creationdate, 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
  where votes_1.creationdate is not NULL
  group by users_1.creationdate, votes_1.creationdate
  limit 6)
EXCEPT
(select  
    postlinks_1.creationdate, 
    posts_1.creationdate, 
    max(
      postlinks_1.creationdate), 
    max(
      posts_2.creationdate)
  from 
    posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
  where posts_1.title is not NULL
  group by postlinks_1.creationdate, posts_1.contentlicense, posts_1.creationdate, posts_2.body, posts_2.contentlicense, posts_2.creationdate, posts_2.owneruserid, posts_2.posttypeid, posts_2.tags
  limit 30);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.postid, 
    avg(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.postid), 
    postlinks_1.id, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 39)
INTERSECT
(select  
    postlinks_2.id, 
    avg(
      postlinks_2.relatedpostid), 
    postlinks_2.linktypeid, 
    max(
      postlinks_2.creationdate), 
    max(
      postlinks_2.linktypeid), 
    max(
      postlinks_2.creationdate), 
    min(
      postlinks_2.creationdate)
  from 
    postlinks as postlinks_2
  where postlinks_2.creationdate is not NULL
  limit 5);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    comments_1.id, 
    min(
      posthistory_1.creationdate), 
    postlinks_1.postid, 
    votes_1.postid, 
    votes_1.votetypeid, 
    comments_1.text, 
    sum(
      posthistory_1.id), 
    votes_1.creationdate, 
    postlinks_1.creationdate
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
        inner join postlinks as postlinks_1
          inner join votes as votes_1
          on (postlinks_1.id = votes_1.id )
        on (posthistory_1.id = votes_1.id )
      on (comments_1.id = postlinks_1.id )
  where postlinks_1.id is not NULL
  group by comments_1.id, comments_1.text, postlinks_1.creationdate, postlinks_1.postid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
  limit 34)
EXCEPT
(select  
    postlinks_2.postid, 
    users_1.accountid, 
    min(
      postlinks_2.creationdate), 
    postlinks_2.relatedpostid, 
    users_1.id, 
    users_1.accountid, 
    users_1.location, 
    avg(
      postlinks_2.postid), 
    postlinks_2.creationdate, 
    postlinks_2.creationdate
  from 
    users as users_1
      inner join postlinks as postlinks_2
      on (users_1.id = postlinks_2.id )
  where postlinks_2.id is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.id, 
    posts_1.parentid, 
    max(
      posts_1.creationdate), 
    sum(
      posts_1.id), 
    posts_1.posttypeid, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.body is not NULL
  group by posts_1.creationdate, posts_1.id, posts_1.parentid, posts_1.posttypeid
  limit 12)
INTERSECT
(select  
    votes_2.postid, 
    count(*), 
    max(
      votes_1.creationdate), 
    sum(
      votes_2.id), 
    votes_2.id, 
    votes_1.creationdate
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_2.votetypeid is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.id, 
    users_1.accountid, 
    users_1.aboutme, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.profileimageurl = users_1.accountid
  limit 1)
INTERSECT
(select  
    posthistory_1.postid, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.comment, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate < posthistory_1.creationdate
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
  limit 1);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      users_1.creationdate), 
    users_1.aboutme
  from 
    users as users_1
  where users_1.websiteurl < users_1.aboutme
  group by users_1.aboutme
  limit 31)
INTERSECT
(select  
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.id, 
    count(*)
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  group by comments_1.id
  limit 28)
INTERSECT
(select  
    comments_2.userid, 
    max(
      comments_2.userid)
  from 
    comments as comments_2
  where comments_2.userid <= comments_2.postid
  limit 10);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id, 
    min(
      badges_1.id), 
    badges_1.class, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.date is not NULL
  group by badges_1.class, badges_1.date, badges_1.id
  limit 40)
EXCEPT
(select  
    badges_2.id, 
    count(*), 
    badges_2.class, 
    badges_2.date
  from 
    badges as badges_2
  where badges_2.id is not NULL
  limit 20);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.text, 
    badges_1.tagbased, 
    badges_1.id
  from 
    comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
  where comments_1.text >= badges_1.name
  limit 3)
INTERSECT
(select  
    users_1.displayname, 
    max(
      users_1.creationdate), 
    users_1.profileimageurl
  from 
    postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
  where users_1.accountid < postlinks_1.linktypeid
  limit 31);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      posts_1.contentlicense), 
    posts_1.id, 
    min(
      posts_1.creationdate), 
    posts_1.ownerdisplayname, 
    posts_1.contentlicense, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.parentid < posts_1.owneruserid
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname
  limit 12)
UNION
(select  
    count(*), 
    max(
      comments_1.creationdate), 
    max(
      comments_1.creationdate), 
    comments_1.contentlicense, 
    comments_1.text, 
    count(*)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userid
  limit 15);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased, 
    badges_1.name, 
    badges_1.id, 
    badges_1.class, 
    sum(
      badges_1.userid), 
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.tagbased <= badges_1.tagbased
  group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased
  limit 17)
EXCEPT
(select  
    max(
      users_1.creationdate), 
    users_1.displayname, 
    users_1.accountid, 
    users_2.accountid, 
    sum(
      users_2.id), 
    max(
      users_1.creationdate)
  from 
    users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
  where users_2.accountid is not NULL
  group by users_2.accountid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  limit 21)
UNION
(select  
    users_1.id
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.aboutme, users_1.websiteurl
  limit 8);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.userid, 
    users_1.accountid
  from 
    posthistory as posthistory_1
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
  where users_1.websiteurl is not NULL
  limit 40)
INTERSECT
(select  
    users_2.profileimageurl, 
    min(
      users_2.creationdate)
  from 
    users as users_2
  where users_2.websiteurl >= users_2.location
  group by users_2.aboutme, users_2.accountid, users_2.displayname, users_2.id, users_2.location, users_2.profileimageurl, users_2.websiteurl
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  posts_1.owneruserid, 
  posts_1.title, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.id is not NULL
limit 10;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.creationdate, 
    votes_1.postid, 
    votes_1.id, 
    votes_1.userid, 
    votes_1.votetypeid, 
    max(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 41)
INTERSECT
(select  
    postlinks_1.creationdate, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    count(*), 
    postlinks_1.postid, 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid
  limit 28);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    votes_2.id
  from 
    votes as votes_1
      inner join badges as badges_1
        inner join votes as votes_2
        on (badges_1.id = votes_2.id )
      on (votes_1.id = votes_2.id )
  where badges_1.name < badges_1.name
  limit 13)
EXCEPT
(select  
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.contentlicense, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  limit 6)
EXCEPT
(select  
    max(
      postlinks_1.id), 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.ownerdisplayname, 
    posts_1.body, 
    posts_1.owneruserid, 
    posts_1.creationdate, 
    min(
      posts_1.posttypeid), 
    posts_1.parentid, 
    posts_1.id, 
    min(
      posts_1.posttypeid)
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.body, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid
  limit 35)
INTERSECT
(select  
    posts_2.ownerdisplayname, 
    posts_2.tags, 
    posts_2.posttypeid, 
    posts_2.creationdate, 
    max(
      posts_2.owneruserid), 
    posts_2.posttypeid, 
    posts_2.acceptedanswerid, 
    count(*)
  from 
    posts as posts_2
  where posts_2.ownerdisplayname >= posts_2.title
  group by posts_2.acceptedanswerid, posts_2.contentlicense, posts_2.ownerdisplayname, posts_2.owneruserid, posts_2.tags
  limit 14);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.websiteurl, 
    users_1.displayname, 
    users_1.id, 
    users_1.accountid
  from 
    users as users_1
  where users_1.location = users_1.displayname
  limit 40)
EXCEPT
(select  
    min(
      posts_1.acceptedanswerid), 
    posts_1.ownerdisplayname, 
    posts_1.acceptedanswerid, 
    posts_1.id
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  limit 19);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  votes_1.userid, 
  votes_1.id, 
  votes_2.userid, 
  min(
    votes_2.id), 
  badges_1.id, 
  count(
    badges_1.name), 
  votes_2.creationdate, 
  votes_2.id, 
  posthistory_1.creationdate, 
  votes_1.postid, 
  sum(
    votes_1.userid), 
  badges_1.tagbased, 
  posthistory_1.postid, 
  votes_1.votetypeid, 
  posts_1.posttypeid, 
  min(
    posts_1.creationdate)
from 
  posthistory as posthistory_1
    inner join votes as votes_1
          inner join votes as votes_2
          on (votes_1.id = votes_2.id )
        inner join badges as badges_1
        on (votes_2.id = badges_1.id )
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    on (posthistory_1.id = posts_1.id )
where badges_1.tagbased is not NULL
group by badges_1.id, badges_1.tagbased, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posts_1.posttypeid, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid, votes_2.creationdate, votes_2.id, votes_2.userid
limit 40;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.tagbased, 
    sum(
      badges_1.userid), 
    badges_1.userid, 
    badges_1.id, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.class is not NULL
  group by badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
  limit 17)
UNION
(select  
    badges_2.tagbased, 
    sum(
      votes_1.userid), 
    min(
      badges_2.id), 
    users_1.accountid, 
    votes_1.creationdate
  from 
    badges as badges_2
      inner join users as users_1
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      on (badges_2.id = votes_1.id )
  where votes_1.id >= badges_2.class
  limit 26);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 22)
UNION
(select  
    count(
      votes_1.postid)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 13);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.id, 
    posthistory_1.postid, 
    posthistory_1.creationdate, 
    posthistory_1.userid, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid, 
    posthistory_1.userdisplayname, 
    posthistory_1.contentlicense, 
    posthistory_1.comment, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 41)
EXCEPT
(select  
    votes_1.userid, 
    max(
      votes_1.creationdate), 
    votes_1.creationdate, 
    votes_1.votetypeid, 
    votes_1.postid, 
    max(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    min(
      votes_1.id)
  from 
    votes as votes_1
  where votes_1.votetypeid < votes_1.userid
  group by votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 25);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  posthistory_1.creationdate, 
  users_1.accountid, 
  postlinks_1.linktypeid, 
  posthistory_1.id, 
  users_1.websiteurl, 
  count(*), 
  postlinks_2.relatedpostid, 
  users_1.location, 
  users_1.displayname, 
  users_1.id, 
  postlinks_2.linktypeid, 
  comments_1.creationdate, 
  postlinks_2.creationdate, 
  comments_1.userdisplayname, 
  postlinks_1.id, 
  comments_1.userid, 
  sum(
    postlinks_1.id), 
  count(*)
from 
  posthistory as posthistory_1
      inner join users as users_1
        inner join comments as comments_1
        on (users_1.id = comments_1.id )
      on (posthistory_1.id = users_1.id )
    inner join postlinks as postlinks_1
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
    on (users_1.id = postlinks_1.id )
where postlinks_2.id is not NULL
group by comments_1.creationdate, comments_1.userdisplayname, comments_1.userid, posthistory_1.creationdate, posthistory_1.id, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_2.creationdate, postlinks_2.linktypeid, postlinks_2.relatedpostid, users_1.accountid, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
limit 26;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.creationdate, 
    votes_1.votetypeid, 
    votes_1.postid, 
    votes_1.userid, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 33)
INTERSECT
(select  
    users_1.creationdate, 
    users_1.profileimageurl, 
    users_1.id, 
    users_1.profileimageurl, 
    users_1.accountid
  from 
    users as users_1
  where users_1.aboutme is not NULL
  limit 8);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.tags, 
    posts_1.contentlicense, 
    users_1.displayname
  from 
    badges as badges_1
        inner join users as users_1
        on (badges_1.id = users_1.id )
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where posts_1.id is not NULL
  limit 7)
INTERSECT
(select  
    comments_1.text, 
    comments_1.contentlicense, 
    badges_2.name
  from 
    badges as badges_2
      inner join comments as comments_1
      on (badges_2.id = comments_1.id )
  where comments_1.contentlicense > comments_1.userdisplayname
  limit 30);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  max(
    comments_1.userid)
from 
  comments as comments_1
where comments_1.postid is not NULL
group by comments_1.id
limit 37;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.tagbased, 
    badges_1.class, 
    badges_1.id, 
    badges_1.userid, 
    badges_1.name, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.class is not NULL
  limit 19)
INTERSECT
(select  
    min(
      postlinks_1.creationdate), 
    postlinks_1.id, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    max(
      postlinks_1.postid), 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate < postlinks_1.creationdate
  limit 10);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      posts_1.owneruserid), 
    min(
      posts_1.creationdate), 
    posts_1.contentlicense, 
    posts_1.tags, 
    posts_1.parentid, 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.posttypeid > posts_1.id
  group by posts_1.contentlicense, posts_1.parentid, posts_1.posttypeid, posts_1.tags
  limit 25)
UNION
(select  
    count(*), 
    max(
      posthistory_1.creationdate), 
    count(
      posthistory_1.comment), 
    posthistory_1.revisionguid, 
    votes_1.postid, 
    votes_1.id
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
  where votes_1.creationdate is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.userid is not NULL
  limit 37)
UNION
(select  
    avg(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 29);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.postid, 
    comments_1.text, 
    comments_1.userid, 
    comments_1.userdisplayname, 
    comments_1.contentlicense, 
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  limit 34)
UNION
(select  
    votes_1.postid, 
    max(
      votes_1.creationdate), 
    votes_1.postid, 
    avg(
      votes_1.postid), 
    avg(
      votes_1.id), 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 24);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.name, 
    badges_1.class, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.date <= badges_1.date
  limit 24)
INTERSECT
(select  
    badges_2.class, 
    badges_2.name, 
    min(
      badges_2.date), 
    min(
      badges_2.date)
  from 
    badges as badges_2
      inner join comments as comments_1
      on (badges_2.id = comments_1.id )
  where comments_1.id is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where postlinks_1.creationdate = votes_1.creationdate
  limit 40)
EXCEPT
(select  
    sum(
      postlinks_2.postid)
  from 
    postlinks as postlinks_2
  where postlinks_2.relatedpostid is not NULL
  limit 6);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 34)
EXCEPT
(select  
    votes_3.creationdate
  from 
    votes as votes_2
        inner join users as users_1
        on (votes_2.id = users_1.id )
      inner join votes as votes_3
      on (votes_2.id = votes_3.id )
  where votes_2.creationdate is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.tagbased, 
    badges_1.date, 
    badges_1.id
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 30)
UNION
(select  
    max(
      posts_1.parentid), 
    max(
      posts_1.creationdate), 
    max(
      posts_1.creationdate), 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.creationdate > posts_1.creationdate
  group by posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.title
  limit 9);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userdisplayname, 
    comments_1.contentlicense
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where postlinks_1.id is not NULL
  limit 36)
UNION
(select  
    max(
      votes_1.creationdate), 
    sum(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.userid, 
    votes_1.creationdate, 
    votes_1.id, 
    max(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.userid
  limit 17)
EXCEPT
(select  
    comments_1.id, 
    comments_1.creationdate, 
    comments_1.userid, 
    max(
      comments_1.id)
  from 
    comments as comments_1
  where comments_1.creationdate = comments_1.creationdate
  group by comments_1.contentlicense, comments_1.creationdate
  limit 38);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.creationdate, 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  limit 7)
UNION
(select  
    users_1.profileimageurl, 
    min(
      users_1.creationdate), 
    sum(
      users_1.profileimageurl)
  from 
    users as users_1
  where users_1.creationdate <= users_1.creationdate
  limit 17);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    count(*), 
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 33)
UNION
(select  
    postlinks_2.linktypeid, 
    count(
      posts_1.body), 
    postlinks_2.relatedpostid, 
    postlinks_2.postid, 
    posts_1.creationdate
  from 
    posts as posts_1
      inner join postlinks as postlinks_2
      on (posts_1.id = postlinks_2.id )
  where postlinks_2.relatedpostid is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    comments_1.id
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where postlinks_1.id is not NULL
  limit 4)
UNION
(select  
    postlinks_2.linktypeid, 
    postlinks_2.id
  from 
    postlinks as postlinks_2
  where postlinks_2.linktypeid is not NULL
  group by postlinks_2.id, postlinks_2.postid, postlinks_2.relatedpostid
  limit 6);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userdisplayname, 
    comments_1.postid, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.id is not NULL
  limit 32)
UNION
(select  
    users_1.websiteurl, 
    users_1.profileimageurl, 
    sum(
      users_1.profileimageurl)
  from 
    users as users_1
  where users_1.location is not NULL
  limit 37);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.ownerdisplayname, 
    posts_1.acceptedanswerid, 
    posts_1.posttypeid
  from 
    posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where posts_2.tags is not NULL
  limit 2)
UNION
(select  
    users_1.displayname, 
    count(
      users_1.creationdate), 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  group by users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 8);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.id, 
    min(
      users_1.creationdate), 
    users_1.location
  from 
    users as users_1
  where users_1.accountid is not NULL
  group by users_1.id, users_1.location
  limit 33)
UNION
(select  
    users_2.profileimageurl, 
    min(
      users_2.creationdate), 
    users_2.location
  from 
    users as users_2
  where users_2.creationdate = users_2.creationdate
  group by users_2.aboutme, users_2.accountid, users_2.displayname, users_2.id, users_2.location, users_2.profileimageurl, users_2.websiteurl
  limit 12);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      votes_1.creationdate), 
    votes_1.postid, 
    votes_1.creationdate, 
    min(
      votes_1.creationdate), 
    votes_1.userid, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
  limit 10)
UNION
(select  
    min(
      votes_2.creationdate), 
    sum(
      votes_2.postid), 
    votes_2.creationdate, 
    min(
      votes_2.creationdate), 
    votes_2.id, 
    count(*)
  from 
    votes as votes_2
  where votes_2.postid is not NULL
  group by votes_2.creationdate, votes_2.id, votes_2.postid, votes_2.userid
  limit 22);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.id, 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  limit 15)
UNION
(select  
    posthistory_2.id, 
    posthistory_2.revisionguid
  from 
    votes as votes_1
      inner join posthistory as posthistory_2
      on (votes_1.id = posthistory_2.id )
  where votes_1.id is not NULL
  group by posthistory_2.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 18);
-- meta {"num_joins":0,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.aboutme, 
    users_1.accountid, 
    max(
      users_1.creationdate), 
    min(
      users_1.creationdate), 
    users_1.websiteurl, 
    users_1.id, 
    users_1.location, 
    count(*), 
    count(
      users_1.websiteurl), 
    users_1.displayname, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.displayname is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
  limit 31)
EXCEPT
(select  
    min(
      votes_1.postid), 
    votes_1.id, 
    max(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    sum(
      votes_1.votetypeid), 
    votes_1.userid, 
    min(
      votes_1.creationdate), 
    count(
      votes_1.votetypeid), 
    count(*), 
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid
from 
  posts as posts_1
where posts_1.creationdate < posts_1.creationdate
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      votes_1.creationdate), 
    votes_1.userid, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.userid, votes_1.votetypeid
  limit 14)
INTERSECT
(select  
    max(
      posts_1.creationdate), 
    posts_1.id, 
    sum(
      posts_1.owneruserid)
  from 
    posts as posts_1
  where posts_1.title is not NULL
  limit 2);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.text, 
    comments_2.id, 
    comments_1.userdisplayname, 
    count(*), 
    comments_1.userid, 
    comments_2.creationdate, 
    min(
      comments_1.creationdate), 
    comments_2.contentlicense, 
    comments_2.postid
  from 
    comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
  where comments_2.id is not NULL
  group by comments_1.text, comments_1.userdisplayname, comments_1.userid, comments_2.contentlicense, comments_2.creationdate, comments_2.id, comments_2.postid
  limit 40)
INTERSECT
(select  
    posts_1.tags, 
    posts_1.id, 
    min(
      posts_1.creationdate), 
    min(
      posts_1.owneruserid), 
    comments_3.id, 
    posts_1.creationdate, 
    min(
      comments_3.creationdate), 
    comments_3.userdisplayname, 
    badges_1.userid
  from 
    badges as badges_1
      inner join comments as comments_3
        inner join posts as posts_1
        on (comments_3.id = posts_1.id )
      on (badges_1.id = posts_1.id )
  where badges_1.userid = comments_3.postid
  limit 1);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.contentlicense, 
    posthistory_1.userdisplayname, 
    votes_1.creationdate, 
    votes_1.userid, 
    votes_1.votetypeid, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
  where posthistory_1.postid is not NULL
  limit 21)
UNION
(select  
    posts_1.body, 
    posts_1.contentlicense, 
    posts_1.creationdate, 
    count(*), 
    posts_1.acceptedanswerid, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  group by posts_1.acceptedanswerid, posts_1.ownerdisplayname, posts_1.posttypeid, posts_1.title
  limit 31);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    sum(
      users_1.profileimageurl), 
    count(*), 
    users_1.websiteurl, 
    users_1.aboutme
  from 
    users as users_1
  where users_1.creationdate <= users_1.creationdate
  group by users_1.aboutme, users_1.websiteurl
  limit 14)
INTERSECT
(select  
    avg(
      users_2.profileimageurl), 
    max(
      users_2.profileimageurl), 
    users_2.aboutme, 
    users_2.aboutme
  from 
    users as users_2
  where users_2.websiteurl is not NULL
  limit 39);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid, 
  badges_1.tagbased
from 
  users as users_1
    inner join badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
    on (users_1.id = badges_1.id )
where users_1.displayname > users_1.websiteurl
limit 25;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid, 
  votes_1.id
from 
  posts as posts_1
    inner join votes as votes_1
        inner join votes as votes_2
        on (votes_1.id = votes_2.id )
      inner join badges as badges_1
      on (votes_2.id = badges_1.id )
    on (posts_1.id = votes_2.id )
where badges_1.id is not NULL
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
where posthistory_1.revisionguid <= posthistory_1.comment
limit 6;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.id, 
    votes_1.postid, 
    posthistory_1.userdisplayname, 
    posthistory_1.comment, 
    posthistory_1.contentlicense
  from 
    postlinks as postlinks_1
      inner join posthistory as posthistory_1
          inner join votes as votes_1
          on (posthistory_1.id = votes_1.id )
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      on (postlinks_1.id = posthistory_1.id )
  where posthistory_1.comment is not NULL
  limit 29)
UNION
(select  
    min(
      posts_2.creationdate), 
    count(*), 
    posts_2.ownerdisplayname, 
    posts_2.body, 
    posts_2.ownerdisplayname
  from 
    posthistory as posthistory_2
      inner join posthistory as posthistory_3
        inner join posts as posts_2
        on (posthistory_3.id = posts_2.id )
      on (posthistory_2.id = posthistory_3.id )
  where posts_2.owneruserid is not NULL
  group by posthistory_2.text, posthistory_2.userdisplayname, posthistory_3.comment, posthistory_3.revisionguid, posthistory_3.text, posthistory_3.userid, posts_2.body, posts_2.creationdate, posts_2.id
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.creationdate, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.aboutme is not NULL
  limit 39)
INTERSECT
(select  
    votes_1.creationdate, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 13);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.linktypeid, 
    postlinks_1.creationdate, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  limit 20)
UNION
(select  
    votes_1.id, 
    votes_1.postid, 
    votes_1.creationdate, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.creationdate >= votes_1.creationdate
  group by votes_1.userid
  limit 30);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    posts_1.title, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where posts_1.posttypeid is not NULL
  limit 21)
EXCEPT
(select  
    votes_2.creationdate, 
    sum(
      votes_2.userid), 
    votes_2.votetypeid
  from 
    votes as votes_2
  where votes_2.id is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    comments_1.creationdate, 
    comments_1.userid, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text <= comments_1.userdisplayname
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.userid
  limit 40)
EXCEPT
(select  
    min(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    count(
      postlinks_1.id), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid > postlinks_1.relatedpostid
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 34);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 23)
UNION
(select  
    votes_2.votetypeid
  from 
    votes as votes_2
        inner join comments as comments_1
          inner join posthistory as posthistory_1
          on (comments_1.id = posthistory_1.id )
        on (votes_2.id = comments_1.id )
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
  where posthistory_1.creationdate >= votes_2.creationdate
  group by comments_2.id, comments_2.userdisplayname, posthistory_1.id, votes_2.userid
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased, 
    max(
      badges_1.date), 
    badges_1.name, 
    badges_1.userid, 
    badges_1.class, 
    badges_1.id, 
    badges_1.date, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.class is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 30)
EXCEPT
(select  
    min(
      users_1.creationdate), 
    max(
      users_1.creationdate), 
    users_1.location, 
    users_1.profileimageurl, 
    max(
      users_1.creationdate), 
    users_1.profileimageurl, 
    count(
      users_1.creationdate), 
    max(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.tagbased, 
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 10)
INTERSECT
(select  
    avg(
      posts_1.owneruserid), 
    count(*), 
    posts_1.parentid, 
    sum(
      posts_1.owneruserid)
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  limit 38);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 22)
UNION
(select  
    posthistory_1.id, 
    posthistory_2.creationdate, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_1.creationdate <= posthistory_2.creationdate
  limit 1);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      users_1.creationdate), 
    users_1.creationdate, 
    users_1.profileimageurl, 
    users_1.aboutme, 
    users_1.websiteurl, 
    users_1.location
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 20)
UNION
(select  
    min(
      comments_1.creationdate), 
    badges_1.date, 
    comments_1.id, 
    comments_1.contentlicense, 
    badges_1.name, 
    comments_1.text
  from 
    badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
  where badges_1.tagbased is not NULL
  group by badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid, comments_1.contentlicense, comments_1.userdisplayname
  limit 18);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.userid
from 
  badges as badges_1
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
    inner join badges as badges_2
    on (postlinks_1.id = badges_2.id )
where badges_1.tagbased <= badges_2.tagbased
limit 19;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.postid, 
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate > posthistory_1.creationdate
  group by posthistory_1.posthistorytypeid, posthistory_1.postid
  limit 23)
EXCEPT
(select  
    posts_1.owneruserid, 
    posts_1.parentid, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.parentid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 27);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userdisplayname, 
    sum(
      comments_1.id), 
    min(
      comments_1.id), 
    comments_1.creationdate, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.contentlicense < comments_1.text
  group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname
  limit 34)
UNION
(select  
    max(
      votes_1.creationdate), 
    avg(
      votes_1.userid), 
    min(
      votes_1.postid), 
    min(
      votes_1.creationdate), 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.userid >= votes_1.votetypeid
  group by votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 26);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    count(*), 
    users_1.profileimageurl
  from 
    posthistory as posthistory_1
        inner join users as users_1
          inner join votes as votes_1
          on (users_1.id = votes_1.id )
        on (posthistory_1.id = users_1.id )
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where posthistory_1.contentlicense is not NULL
  group by users_1.profileimageurl, votes_1.id
  limit 22)
EXCEPT
(select  
    max(
      comments_1.creationdate), 
    min(
      comments_1.userid), 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.userid = comments_1.postid
  group by comments_1.userdisplayname
  limit 31);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.relatedpostid, 
    min(
      postlinks_1.id), 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 42)
EXCEPT
(select  
    min(
      votes_1.postid), 
    max(
      votes_1.userid), 
    votes_1.userid, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate < votes_1.creationdate
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 42);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.postid, 
    sum(
      comments_1.userid)
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.postid
  limit 17)
UNION
(select  
    min(
      postlinks_2.creationdate), 
    sum(
      posts_1.posttypeid)
  from 
    posts as posts_1
        inner join postlinks as postlinks_1
        on (posts_1.id = postlinks_1.id )
      inner join postlinks as postlinks_2
      on (posts_1.id = postlinks_2.id )
  where posts_1.tags < posts_1.contentlicense
  limit 15);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.id, 
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  limit 28)
EXCEPT
(select  
    min(
      posthistory_1.creationdate), 
    count(*), 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.userid is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.revisionguid, posthistory_1.userid
  limit 2);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      comments_1.creationdate), 
    comments_1.postid, 
    votes_1.votetypeid, 
    users_1.id, 
    users_1.aboutme, 
    users_1.location, 
    postlinks_1.postid, 
    votes_1.postid, 
    comments_1.userid
  from 
    postlinks as postlinks_1
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      inner join comments as comments_1
        inner join votes as votes_1
        on (comments_1.id = votes_1.id )
      on (postlinks_1.id = votes_1.id )
  where users_1.accountid is not NULL
  group by comments_1.postid, comments_1.userid, postlinks_1.postid, users_1.aboutme, users_1.id, users_1.location, votes_1.postid, votes_1.votetypeid
  limit 21)
UNION
(select  
    min(
      comments_2.creationdate), 
    comments_2.postid, 
    count(*), 
    comments_2.userid, 
    min(
      comments_2.id), 
    comments_2.contentlicense, 
    comments_2.postid, 
    comments_2.postid, 
    comments_2.userid
  from 
    comments as comments_2
  where comments_2.creationdate is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.id, 
    posthistory_1.postid, 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 41)
UNION
(select  
    badges_1.userid, 
    count(
      badges_1.name), 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.name <= badges_1.name
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 41);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id, 
    posthistory_1.text, 
    posthistory_1.comment, 
    posthistory_1.contentlicense, 
    posthistory_1.creationdate, 
    posthistory_1.posthistorytypeid, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.postid, 
    posthistory_1.userdisplayname, 
    posthistory_1.revisionguid, 
    max(
      posthistory_1.creationdate), 
    avg(
      posthistory_1.id)
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
  limit 36)
INTERSECT
(select  
    badges_1.class, 
    max(
      badges_1.date), 
    badges_1.name, 
    badges_1.name, 
    badges_1.date, 
    badges_1.userid, 
    max(
      badges_1.date), 
    badges_1.id, 
    badges_1.name, 
    max(
      badges_1.date), 
    max(
      badges_1.date), 
    sum(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.class is not NULL
  limit 26);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    posthistory_1.revisionguid, 
    min(
      votes_1.creationdate), 
    postlinks_1.id, 
    votes_1.userid, 
    max(
      votes_1.id), 
    votes_1.creationdate, 
    postlinks_1.relatedpostid, 
    posthistory_1.creationdate, 
    postlinks_1.linktypeid, 
    posthistory_1.postid, 
    posthistory_1.comment, 
    posthistory_1.userid, 
    posthistory_1.contentlicense, 
    posthistory_1.text, 
    postlinks_1.postid, 
    votes_1.postid, 
    sum(
      votes_1.postid), 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
        inner join posthistory as posthistory_1
        on (votes_1.id = posthistory_1.id )
      on (postlinks_1.id = posthistory_1.id )
  where posthistory_1.userid is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
  limit 25)
EXCEPT
(select  
    max(
      comments_1.creationdate), 
    posts_1.title, 
    min(
      comments_1.creationdate), 
    posts_1.owneruserid, 
    posts_1.id, 
    min(
      posts_1.posttypeid), 
    comments_1.creationdate, 
    posts_1.parentid, 
    comments_1.creationdate, 
    comments_1.id, 
    comments_1.id, 
    posts_1.tags, 
    comments_1.postid, 
    comments_1.text, 
    posts_1.tags, 
    posts_1.id, 
    max(
      comments_1.id), 
    avg(
      posts_1.owneruserid), 
    posts_1.creationdate
  from 
    posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where posts_1.title is not NULL
  limit 1);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.acceptedanswerid, 
    posts_1.body, 
    posts_1.contentlicense, 
    posts_1.ownerdisplayname, 
    posts_1.posttypeid, 
    posts_1.owneruserid, 
    posts_1.title, 
    count(*), 
    posts_1.parentid, 
    avg(
      posts_1.posttypeid)
  from 
    posts as posts_1
  where posts_1.parentid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 18)
INTERSECT
(select  
    posthistory_1.userid, 
    posthistory_1.contentlicense, 
    posthistory_1.userdisplayname, 
    posthistory_1.text, 
    posthistory_1.id, 
    posthistory_1.userid, 
    posthistory_1.userdisplayname, 
    min(
      posthistory_1.postid), 
    posthistory_1.postid, 
    sum(
      posthistory_1.userid)
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userid
  limit 35);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  badges_1.tagbased, 
  sum(
    users_1.id), 
  users_1.creationdate, 
  users_1.websiteurl, 
  users_1.location, 
  avg(
    users_1.profileimageurl)
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.userid is not NULL
group by badges_1.tagbased, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
limit 15;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      comments_1.creationdate), 
    max(
      comments_1.creationdate), 
    postlinks_1.postid, 
    comments_1.userdisplayname, 
    postlinks_1.id
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where comments_1.id is not NULL
  group by comments_1.userdisplayname, postlinks_1.id, postlinks_1.postid
  limit 35)
INTERSECT
(select  
    max(
      comments_2.creationdate), 
    max(
      comments_2.creationdate), 
    comments_2.postid, 
    comments_2.contentlicense, 
    max(
      comments_2.creationdate)
  from 
    comments as comments_2
  where comments_2.text < comments_2.contentlicense
  group by comments_2.creationdate, comments_2.text, comments_2.userdisplayname
  limit 15);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      votes_1.postid)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 16)
UNION
(select  
    sum(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.name is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.tagbased = badges_1.tagbased
  limit 3)
UNION
(select  
    votes_1.id, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate >= votes_1.creationdate
  group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 35);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid, 
    max(
      postlinks_1.creationdate), 
    count(*)
  from 
    votes as votes_1
      inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      on (votes_1.id = comments_1.id )
  where comments_1.creationdate <= votes_1.creationdate
  group by votes_1.userid
  limit 23)
INTERSECT
(select  
    comments_2.userid, 
    min(
      comments_2.creationdate), 
    count(*)
  from 
    comments as comments_2
  where comments_2.postid is not NULL
  group by comments_2.contentlicense, comments_2.id, comments_2.postid, comments_2.text, comments_2.userdisplayname, comments_2.userid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      posts_1.posttypeid), 
    posts_1.contentlicense, 
    posts_1.acceptedanswerid, 
    posts_1.title
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.title
  limit 41)
INTERSECT
(select  
    count(
      badges_1.tagbased), 
    min(
      badges_1.date), 
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.class is not NULL
  group by badges_1.id, badges_1.name
  limit 41);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.linktypeid
  from 
    posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
  where postlinks_1.postid is not NULL
  limit 3)
EXCEPT
(select  
    postlinks_2.relatedpostid
  from 
    postlinks as postlinks_2
  where postlinks_2.id is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id, 
    max(
      badges_1.date), 
    badges_1.class, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.class is not NULL
  group by badges_1.class, badges_1.id, badges_1.userid
  limit 19)
EXCEPT
(select  
    users_1.id, 
    max(
      users_1.creationdate), 
    count(*), 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.creationdate is not NULL
  limit 19);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.owneruserid, 
    count(*)
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  group by posts_1.owneruserid
  limit 6)
INTERSECT
(select  
    posthistory_1.id, 
    count(
      posthistory_1.posthistorytypeid)
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.class, 
    count(
      badges_1.userid), 
    badges_1.id, 
    badges_1.userid, 
    badges_1.date, 
    max(
      badges_1.date), 
    badges_1.name, 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.tagbased < badges_1.tagbased
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 6)
EXCEPT
(select  
    max(
      badges_2.date), 
    count(*), 
    min(
      badges_2.date), 
    badges_2.id, 
    badges_2.date, 
    max(
      badges_2.date), 
    count(*), 
    badges_2.tagbased
  from 
    badges as badges_2
  where badges_2.id is not NULL
  group by badges_2.date, badges_2.tagbased, badges_2.userid
  limit 34);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.date, 
  min(
    badges_1.date)
from 
  badges as badges_1
where badges_1.userid < badges_1.id
group by badges_1.date
limit 14;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      badges_2.class), 
    badges_1.name, 
    badges_1.tagbased, 
    badges_1.userid, 
    badges_1.class, 
    badges_1.id, 
    badges_2.tagbased, 
    min(
      badges_2.id), 
    avg(
      badges_1.class)
  from 
    badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
  where badges_1.class is not NULL
  group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid, badges_2.tagbased
  limit 37)
INTERSECT
(select  
    min(
      comments_1.id), 
    comments_1.userdisplayname, 
    count(*), 
    comments_1.id, 
    count(*), 
    comments_1.postid, 
    min(
      comments_1.postid), 
    count(
      comments_1.text), 
    avg(
      comments_1.userid)
  from 
    comments as comments_1
  where comments_1.text > comments_1.contentlicense
  group by comments_1.postid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 25)
EXCEPT
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.creationdate is not NULL
  limit 31);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.id, 
    posthistory_1.contentlicense, 
    posts_1.owneruserid
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
  where posts_1.creationdate <= posthistory_1.creationdate
  limit 19)
EXCEPT
(select  
    users_1.id, 
    users_1.displayname, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.creationdate, users_1.id, users_1.location, users_1.websiteurl
  limit 12);
-- meta {"num_joins":4,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  badges_1.name, 
  votes_1.postid, 
  posthistory_1.revisionguid, 
  votes_1.votetypeid, 
  postlinks_1.relatedpostid, 
  posthistory_1.id, 
  posthistory_1.userdisplayname, 
  votes_1.userid, 
  comments_1.id, 
  comments_1.creationdate, 
  postlinks_1.linktypeid, 
  count(
    postlinks_1.linktypeid), 
  min(
    votes_1.userid), 
  sum(
    comments_1.postid), 
  posthistory_1.postid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid, 
  min(
    postlinks_1.creationdate), 
  min(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  postlinks_1.id, 
  count(*)
from 
  votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
    inner join posthistory as posthistory_1
      inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      on (posthistory_1.id = comments_1.id )
    on (badges_1.id = posthistory_1.id )
where comments_1.userdisplayname < posthistory_1.revisionguid
group by badges_1.name, comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.text, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, votes_1.postid, votes_1.userid, votes_1.votetypeid
limit 7;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.name is not NULL
  limit 42)
INTERSECT
(select  
    posts_1.parentid, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 10);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.id, 
    min(
      comments_1.id), 
    users_1.websiteurl
  from 
    users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
  where users_1.profileimageurl is not NULL
  group by users_1.id, users_1.websiteurl
  limit 8)
INTERSECT
(select  
    posthistory_1.userid, 
    count(*), 
    posts_1.tags
  from 
    posts as posts_1
        inner join users as users_2
        on (posts_1.id = users_2.id )
      inner join posthistory as posthistory_1
      on (users_2.id = posthistory_1.id )
  where posthistory_1.text is not NULL
  group by posthistory_1.userdisplayname, posts_1.body, users_2.creationdate
  limit 40);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    votes_1.id, 
    votes_1.creationdate, 
    votes_1.userid, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 11)
EXCEPT
(select  
    votes_2.postid, 
    votes_2.postid, 
    votes_2.creationdate, 
    votes_2.postid, 
    votes_2.postid
  from 
    votes as votes_2
  where votes_2.userid = votes_2.postid
  limit 4);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  posthistory_1.id, 
  postlinks_1.relatedpostid, 
  count(*)
from 
  posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join postlinks as postlinks_1
        inner join posts as posts_2
        on (postlinks_1.id = posts_2.id )
      on (posts_1.id = posts_2.id )
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posts_1.creationdate is not NULL
group by posthistory_1.id, postlinks_1.creationdate, postlinks_1.relatedpostid
limit 25;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location, 
    count(
      posthistory_1.userid)
  from 
    badges as badges_1
        inner join posts as posts_1
            inner join posthistory as posthistory_1
            on (posts_1.id = posthistory_1.id )
          inner join posts as posts_2
            inner join votes as votes_1
            on (posts_2.id = votes_1.id )
          on (posthistory_1.id = posts_2.id )
        on (badges_1.id = votes_1.id )
      inner join users as users_1
      on (posts_2.id = users_1.id )
  where badges_1.class > posts_1.posttypeid
  group by users_1.location
  limit 3)
INTERSECT
(select  
    posthistory_2.comment, 
    count(
      posthistory_2.contentlicense)
  from 
    posthistory as posthistory_2
  where posthistory_2.comment is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.text is not NULL
  limit 36)
EXCEPT
(select  
    users_1.creationdate
  from 
    users as users_1
  where users_1.displayname is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      users_1.creationdate), 
    users_1.location, 
    users_1.accountid, 
    users_1.websiteurl, 
    users_1.creationdate, 
    users_1.profileimageurl, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.location is not NULL
  group by users_1.accountid, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 9)
UNION
(select  
    min(
      posts_1.creationdate), 
    posts_1.tags, 
    posts_1.parentid, 
    posts_1.title, 
    posts_1.creationdate, 
    count(
      posts_1.contentlicense), 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.parentid, posts_1.title
  limit 15);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.id, 
  comments_1.text, 
  comments_1.userdisplayname, 
  comments_1.userid
from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 1;
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
    inner join users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    on (postlinks_1.id = badges_1.id )
where postlinks_1.creationdate is not NULL
limit 8;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.owneruserid, 
    min(
      posts_1.creationdate), 
    posts_1.posttypeid, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.ownerdisplayname = posts_1.tags
  group by posts_1.owneruserid, posts_1.posttypeid
  limit 30)
UNION
(select  
    votes_1.votetypeid, 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.votetypeid
  limit 16);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid
from 
  badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where posthistory_1.comment is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.id, 
    avg(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.id
  limit 39)
INTERSECT
(select  
    max(
      comments_1.postid), 
    sum(
      comments_1.id)
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  group by comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 31);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.id <= posts_1.acceptedanswerid
  limit 14)
UNION
(select  
    posthistory_1.posthistorytypeid
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where posthistory_1.userid is not NULL
  limit 27);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  limit 38)
INTERSECT
(select  
    users_1.websiteurl
  from 
    votes as votes_1
        inner join posthistory as posthistory_2
        on (votes_1.id = posthistory_2.id )
      inner join users as users_1
          inner join posthistory as posthistory_3
          on (users_1.id = posthistory_3.id )
        inner join votes as votes_2
          inner join comments as comments_1
          on (votes_2.id = comments_1.id )
        on (users_1.id = comments_1.id )
      on (votes_1.id = votes_2.id )
  where votes_2.userid is not NULL
  group by posthistory_3.text
  limit 8);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      posts_1.owneruserid), 
    posts_1.body
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where posts_1.contentlicense < badges_1.name
  group by posts_1.body
  limit 10)
UNION
(select  
    sum(
      comments_1.userid), 
    comments_1.text
  from 
    users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
  where users_1.aboutme is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, comments_1.userdisplayname
  limit 38);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      users_1.id), 
    count(
      users_1.aboutme), 
    users_1.id, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.accountid is not NULL
  group by users_1.id, users_1.profileimageurl
  limit 7)
UNION
(select  
    avg(
      users_2.id), 
    max(
      users_2.id), 
    users_2.id, 
    users_2.id
  from 
    users as users_2
  where users_2.accountid is not NULL
  group by users_2.aboutme, users_2.creationdate, users_2.location, users_2.profileimageurl
  limit 31);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.title, 
    max(
      posts_1.parentid), 
    posts_1.tags, 
    posts_1.owneruserid, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.title <= posts_1.contentlicense
  group by posts_1.contentlicense, posts_1.owneruserid, posts_1.tags, posts_1.title
  limit 36)
UNION
(select  
    posts_2.contentlicense, 
    count(
      votes_1.postid), 
    posts_2.title, 
    posts_2.acceptedanswerid, 
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
      inner join users as users_1
          inner join posts as posts_2
          on (users_1.id = posts_2.id )
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      on (posthistory_1.id = posts_2.id )
  where users_1.profileimageurl > posthistory_1.posthistorytypeid
  group by posts_2.body, users_1.location, votes_1.votetypeid
  limit 22);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.parentid, 
    posts_1.title, 
    posts_1.ownerdisplayname, 
    posts_1.tags, 
    posts_1.id
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  limit 42)
INTERSECT
(select  
    badges_1.userid, 
    min(
      badges_1.date), 
    min(
      badges_1.date), 
    badges_1.name, 
    badges_1.id
  from 
    badges as badges_1
  where badges_1.name <= badges_1.name
  group by badges_1.date, badges_1.tagbased
  limit 11);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    count(*), 
    votes_1.votetypeid, 
    min(
      votes_1.creationdate), 
    votes_1.id, 
    max(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.votetypeid
  limit 15)
EXCEPT
(select  
    comments_2.creationdate, 
    min(
      comments_1.userid), 
    comments_1.userid, 
    max(
      comments_2.creationdate), 
    avg(
      comments_2.id), 
    count(*)
  from 
    comments as comments_1
      inner join comments as comments_2
        inner join postlinks as postlinks_1
        on (comments_2.id = postlinks_1.id )
      on (comments_1.id = comments_2.id )
  where comments_2.postid >= postlinks_1.linktypeid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      posthistory_1.creationdate), 
    posthistory_1.postid, 
    posthistory_1.comment, 
    posthistory_1.text, 
    posthistory_1.revisionguid, 
    min(
      posthistory_1.postid), 
    max(
      posthistory_1.creationdate), 
    posthistory_1.creationdate, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid = posthistory_1.text
  group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text
  limit 38)
UNION
(select  
    min(
      votes_1.creationdate), 
    votes_1.votetypeid, 
    min(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate), 
    avg(
      votes_1.userid), 
    max(
      votes_1.id), 
    min(
      votes_1.creationdate), 
    votes_1.creationdate, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid < votes_1.userid
  limit 24);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      comments_1.text)
  from 
    users as users_1
        inner join badges as badges_1
        on (users_1.id = badges_1.id )
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
  where badges_1.name = comments_1.userdisplayname
  limit 12)
UNION
(select  
    min(
      posts_1.owneruserid)
  from 
    votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
  where votes_1.id is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.userid, 
    badges_1.name, 
    count(
      badges_1.tagbased), 
    badges_1.class, 
    badges_1.tagbased, 
    max(
      badges_1.userid), 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.tagbased < badges_1.tagbased
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 18)
UNION
(select  
    posts_1.id, 
    posts_1.contentlicense, 
    min(
      posts_1.id), 
    count(*), 
    count(
      posts_1.posttypeid), 
    max(
      posts_1.parentid), 
    avg(
      posts_1.owneruserid)
  from 
    posts as posts_1
  where posts_1.creationdate = posts_1.creationdate
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid
  limit 18);
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      users_1.displayname)
  from 
    users as users_1
  where users_1.creationdate is not NULL
  limit 24)
EXCEPT
(select  
    max(
      users_2.accountid)
  from 
    users as users_2
  where users_2.profileimageurl is not NULL
  group by users_2.aboutme, users_2.accountid, users_2.creationdate, users_2.displayname, users_2.id, users_2.location, users_2.profileimageurl, users_2.websiteurl
  limit 5);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.creationdate, 
    count(
      posthistory_1.creationdate), 
    count(
      posthistory_1.contentlicense), 
    posthistory_1.contentlicense, 
    posthistory_1.revisionguid, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.revisionguid
  limit 5)
EXCEPT
(select  
    posthistory_2.creationdate, 
    count(*), 
    count(
      posthistory_2.text), 
    posthistory_2.userdisplayname, 
    posthistory_2.revisionguid, 
    min(
      posthistory_2.creationdate)
  from 
    posthistory as posthistory_2
  where posthistory_2.revisionguid > posthistory_2.contentlicense
  group by posthistory_2.comment, posthistory_2.text, posthistory_2.userid
  limit 21);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.revisionguid, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.posthistorytypeid, 
    posthistory_1.text, 
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text
  limit 8)
INTERSECT
(select  
    posts_2.contentlicense, 
    min(
      posts_2.creationdate), 
    posts_1.acceptedanswerid, 
    posts_2.tags, 
    posts_1.title
  from 
    posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where posts_2.tags is not NULL
  group by posts_2.creationdate
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.owneruserid, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.body is not NULL
  limit 35)
UNION
(select  
    postlinks_1.postid, 
    min(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 21);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.id, 
    postlinks_1.relatedpostid, 
    min(
      postlinks_1.creationdate), 
    count(*), 
    postlinks_1.creationdate, 
    postlinks_1.postid, 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
  limit 10)
EXCEPT
(select  
    votes_1.postid, 
    votes_1.postid, 
    max(
      votes_1.creationdate), 
    min(
      votes_1.userid), 
    votes_1.creationdate, 
    min(
      votes_1.creationdate), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid < votes_1.userid
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid = postlinks_1.postid
  group by postlinks_1.linktypeid
  limit 14)
UNION
(select  
    max(
      votes_1.votetypeid), 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.id, votes_1.votetypeid
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 33)
EXCEPT
(select  
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.accountid, 
    users_1.id
  from 
    users as users_1
  where users_1.aboutme = users_1.location
  limit 40)
INTERSECT
(select  
    badges_1.class, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.tagbased >= badges_1.tagbased
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.date, 
    badges_1.userid, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 41)
EXCEPT
(select  
    badges_2.date, 
    badges_2.userid, 
    badges_2.name
  from 
    badges as badges_2
  where badges_2.tagbased is not NULL
  limit 20);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.websiteurl
  from 
    users as users_1
  where users_1.location is not NULL
  limit 40)
EXCEPT
(select  
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where posts_1.body is not NULL
  group by posts_1.body, votes_1.votetypeid
  limit 42);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    count(*)
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where posthistory_1.userid is not NULL
  group by votes_1.creationdate
  limit 29)
EXCEPT
(select  
    users_1.creationdate, 
    min(
      posts_1.owneruserid)
  from 
    posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where posts_1.contentlicense is not NULL
  limit 32);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 12)
EXCEPT
(select  
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where postlinks_1.relatedpostid < postlinks_1.postid
  limit 41);
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.acceptedanswerid, 
    users_1.displayname, 
    max(
      users_1.creationdate)
  from 
    postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where posts_1.tags is not NULL
  group by posts_1.acceptedanswerid, users_1.displayname
  limit 13)
EXCEPT
(select  
    badges_1.userid, 
    badges_1.name, 
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
  limit 7);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    sum(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.id = postlinks_1.linktypeid
  group by postlinks_1.id, postlinks_1.linktypeid
  limit 20)
EXCEPT
(select  
    avg(
      users_1.id), 
    max(
      users_1.creationdate), 
    users_1.id, 
    min(
      users_1.profileimageurl)
  from 
    users as users_1
  where users_1.websiteurl < users_1.aboutme
  group by users_1.accountid, users_1.websiteurl
  limit 12);
-- meta {"num_joins":0,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.class, 
    badges_1.date, 
    badges_1.id, 
    count(*), 
    min(
      badges_1.date), 
    min(
      badges_1.date), 
    badges_1.name, 
    badges_1.tagbased, 
    max(
      badges_1.date), 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
  limit 6)
EXCEPT
(select  
    posthistory_1.userid, 
    min(
      posthistory_1.creationdate), 
    max(
      posthistory_1.id), 
    count(*), 
    max(
      posthistory_1.creationdate), 
    max(
      posthistory_1.creationdate), 
    posthistory_1.userdisplayname, 
    max(
      posthistory_1.postid), 
    min(
      posthistory_1.creationdate), 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  group by posthistory_1.creationdate
  limit 20);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.creationdate, 
    posthistory_1.comment, 
    posthistory_1.contentlicense, 
    posthistory_1.userdisplayname, 
    posthistory_1.text, 
    posthistory_1.revisionguid, 
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
  limit 16)
EXCEPT
(select  
    posthistory_2.creationdate, 
    posthistory_2.text, 
    sum(
      posthistory_2.postid), 
    posthistory_2.revisionguid, 
    posthistory_2.contentlicense, 
    posthistory_2.revisionguid, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
      inner join posthistory as posthistory_2
      on (posts_1.id = posthistory_2.id )
  where posthistory_2.revisionguid > posts_1.contentlicense
  group by posthistory_2.contentlicense, posthistory_2.creationdate, posthistory_2.id, posthistory_2.posthistorytypeid, posthistory_2.revisionguid, posthistory_2.userdisplayname, posthistory_2.userid, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.parentid, posts_1.title
  limit 29);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      badges_1.date), 
    count(
      badges_1.name), 
    min(
      badges_1.id), 
    max(
      badges_1.userid), 
    badges_1.name, 
    badges_1.tagbased, 
    min(
      badges_1.date), 
    badges_1.id, 
    badges_1.class, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 5)
UNION
(select  
    max(
      badges_2.date), 
    count(
      badges_2.userid), 
    max(
      badges_2.class), 
    count(
      users_1.accountid), 
    max(
      users_1.profileimageurl), 
    min(
      badges_2.class), 
    min(
      users_1.creationdate), 
    badges_2.userid, 
    users_1.accountid, 
    users_1.id
  from 
    users as users_1
      inner join badges as badges_2
      on (users_1.id = badges_2.id )
  where badges_2.date <= users_1.creationdate
  group by badges_2.id, badges_2.userid, users_1.creationdate, users_1.websiteurl
  limit 11);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      comments_1.postid), 
    votes_1.id
  from 
    comments as comments_1
      inner join votes as votes_1
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      on (comments_1.id = badges_1.id )
  where comments_1.userid is not NULL
  group by votes_1.id
  limit 33)
UNION
(select  
    count(*), 
    comments_2.id
  from 
    comments as comments_2
  where comments_2.id is not NULL
  limit 25);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.class, 
    badges_1.userid, 
    badges_1.date, 
    badges_1.id, 
    badges_1.name, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.userid <= badges_1.id
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid
  limit 15)
EXCEPT
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.postid, 
    posthistory_1.creationdate, 
    posthistory_1.id, 
    posthistory_1.text, 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.contentlicense, 
    min(
      comments_1.creationdate), 
    comments_1.id, 
    max(
      comments_1.postid), 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.contentlicense = comments_1.text
  group by comments_1.contentlicense, comments_1.id, comments_1.userdisplayname
  limit 29)
INTERSECT
(select  
    users_1.location, 
    max(
      users_1.creationdate), 
    sum(
      users_1.profileimageurl), 
    count(*), 
    users_1.aboutme
  from 
    users as users_1
  where users_1.location = users_1.displayname
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id
  limit 23)
UNION
(select  
    posts_1.owneruserid, 
    max(
      posts_1.creationdate), 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      comments_1.creationdate), 
    comments_1.userid, 
    comments_1.creationdate, 
    max(
      comments_1.creationdate), 
    comments_1.text, 
    comments_1.userdisplayname, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 41)
EXCEPT
(select  
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate), 
    count(*), 
    min(
      postlinks_1.creationdate), 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.owneruserid, 
    min(
      posts_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
  where posts_1.owneruserid is not NULL
  group by posts_1.owneruserid
  limit 16)
EXCEPT
(select  
    postlinks_1.relatedpostid, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      badges_1.userid), 
    votes_1.creationdate, 
    badges_1.date, 
    min(
      votes_1.creationdate), 
    badges_1.userid, 
    badges_1.id, 
    votes_1.votetypeid, 
    sum(
      votes_1.votetypeid)
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where votes_1.id is not NULL
  group by badges_1.date, badges_1.id, badges_1.userid, votes_1.creationdate, votes_1.votetypeid
  limit 27)
EXCEPT
(select  
    avg(
      badges_2.id), 
    badges_2.date, 
    badges_2.date, 
    max(
      badges_2.date), 
    badges_2.userid, 
    badges_2.userid, 
    badges_2.id, 
    avg(
      badges_2.id)
  from 
    badges as badges_2
  where badges_2.class is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  posts_1.owneruserid, 
  posts_1.acceptedanswerid, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.owneruserid is not NULL
limit 39;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_2.userid, 
    avg(
      posthistory_2.posthistorytypeid)
  from 
    comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_2.contentlicense is not NULL
  group by posthistory_2.userid
  limit 2)
UNION
(select  
    postlinks_1.linktypeid, 
    avg(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    badges_1.date), 
  badges_1.name, 
  badges_1.id
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.id, badges_1.name
limit 26;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.postid, 
  min(
    postlinks_1.postid), 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 32;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.userid, 
    min(
      posthistory_1.postid), 
    posthistory_1.comment
  from 
    posthistory as posthistory_1
  where posthistory_1.text > posthistory_1.contentlicense
  group by posthistory_1.comment, posthistory_1.userid
  limit 12)
INTERSECT
(select  
    postlinks_1.postid, 
    count(
      postlinks_1.postid), 
    avg(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.displayname
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 40)
INTERSECT
(select  
    avg(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.text, 
    comments_1.contentlicense, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 15)
EXCEPT
(select  
    comments_2.userdisplayname, 
    comments_2.text, 
    comments_2.userid
  from 
    comments as comments_2
  where comments_2.userdisplayname is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      users_1.creationdate), 
    users_1.profileimageurl, 
    posts_1.posttypeid, 
    users_1.displayname
  from 
    posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where posts_1.id is not NULL
  group by posts_1.posttypeid, users_1.displayname, users_1.profileimageurl
  limit 7)
UNION
(select  
    max(
      badges_1.date), 
    badges_1.userid, 
    badges_1.id, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.tagbased < badges_1.tagbased
  group by badges_1.name, badges_1.userid
  limit 3);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name, 
    count(
      badges_1.class), 
    badges_1.id, 
    badges_1.tagbased, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.class = badges_1.id
  group by badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 9)
INTERSECT
(select  
    comments_1.text, 
    max(
      comments_1.id), 
    comments_1.postid, 
    min(
      comments_1.creationdate), 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  limit 34);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    votes_1.userid, 
    votes_1.id, 
    votes_1.votetypeid, 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 16)
EXCEPT
(select  
    posthistory_1.creationdate, 
    max(
      posthistory_1.postid), 
    max(
      posthistory_1.userid), 
    posthistory_1.postid, 
    comments_1.id
  from 
    posthistory as posthistory_1
        inner join badges as badges_1
        on (posthistory_1.id = badges_1.id )
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where comments_1.userid < badges_1.class
  group by comments_1.text, comments_1.userdisplayname, posthistory_1.creationdate, posthistory_1.userid
  limit 39);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userdisplayname, 
    max(
      badges_1.userid), 
    comments_1.creationdate
  from 
    badges as badges_1
      inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      on (badges_1.id = comments_1.id )
  where badges_1.userid is not NULL
  group by comments_1.creationdate, comments_1.userdisplayname
  limit 14)
UNION
(select  
    posts_1.contentlicense, 
    max(
      posts_1.owneruserid), 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.tags <= posts_1.contentlicense
  group by posts_1.body, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags
  limit 1);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.owneruserid, 
    posts_1.parentid, 
    posts_1.creationdate, 
    posts_1.body, 
    posts_1.tags, 
    posts_1.posttypeid, 
    posts_1.acceptedanswerid, 
    posts_1.id, 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  limit 41)
INTERSECT
(select  
    badges_1.id, 
    badges_1.id, 
    badges_1.date, 
    badges_1.name, 
    badges_1.name, 
    count(
      badges_1.userid), 
    badges_1.id, 
    badges_1.id, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.date, badges_1.id, badges_1.userid
  limit 1);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      users_1.profileimageurl), 
    users_1.displayname, 
    count(*)
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.displayname
  limit 22)
EXCEPT
(select  
    min(
      postlinks_1.postid), 
    comments_1.text, 
    min(
      posts_2.posttypeid)
  from 
    posts as posts_1
          inner join postlinks as postlinks_1
          on (posts_1.id = postlinks_1.id )
        inner join posts as posts_2
          inner join comments as comments_1
          on (posts_2.id = comments_1.id )
        on (posts_1.id = posts_2.id )
      inner join comments as comments_2
      on (posts_2.id = comments_2.id )
  where comments_2.text is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.body, 
    posts_1.owneruserid, 
    posts_1.posttypeid, 
    avg(
      posts_1.acceptedanswerid)
  from 
    posts as posts_1
  where posts_1.tags > posts_1.ownerdisplayname
  group by posts_1.body, posts_1.owneruserid, posts_1.posttypeid
  limit 36)
UNION
(select  
    min(
      postlinks_1.creationdate), 
    postlinks_1.postid, 
    postlinks_1.postid, 
    avg(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 40);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      posts_1.creationdate)
  from 
    comments as comments_1
      inner join votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      on (comments_1.id = votes_1.id )
  where posts_1.creationdate < votes_1.creationdate
  limit 34)
EXCEPT
(select  
    min(
      votes_3.creationdate)
  from 
    users as users_1
      inner join votes as votes_2
        inner join votes as votes_3
        on (votes_2.id = votes_3.id )
      on (users_1.id = votes_3.id )
  where votes_3.postid <= votes_2.postid
  limit 18);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.creationdate, 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 39)
UNION
(select  
    votes_2.votetypeid, 
    votes_2.creationdate, 
    votes_2.id
  from 
    votes as votes_2
  where votes_2.id is not NULL
  group by votes_2.creationdate, votes_2.postid, votes_2.userid, votes_2.votetypeid
  limit 18);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    posts_1.body, 
    posts_1.parentid, 
    posts_1.contentlicense, 
    posts_1.creationdate, 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  group by posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.parentid, posts_1.posttypeid
  limit 3)
UNION
(select  
    count(
      votes_1.postid), 
    max(
      votes_1.postid), 
    votes_1.postid, 
    max(
      votes_1.creationdate), 
    votes_1.creationdate, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.creationdate >= votes_1.creationdate
  group by votes_1.creationdate, votes_1.id, votes_1.postid
  limit 42);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.aboutme is not NULL
  limit 5)
EXCEPT
(select  
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.id is not NULL
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.parentid
  limit 37);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_2.revisionguid, 
    posthistory_1.text, 
    posthistory_1.userid, 
    posthistory_1.creationdate, 
    avg(
      posthistory_2.posthistorytypeid), 
    posthistory_1.id, 
    posthistory_2.text, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_1.posthistorytypeid = posthistory_2.postid
  group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.text, posthistory_1.userid, posthistory_2.revisionguid, posthistory_2.text
  limit 37)
EXCEPT
(select  
    badges_1.name, 
    badges_1.name, 
    badges_1.id, 
    min(
      badges_1.userid), 
    avg(
      badges_1.userid), 
    badges_1.class, 
    badges_1.name, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.name = badges_1.name
  limit 19);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.title, 
    posts_1.owneruserid, 
    posts_1.body, 
    posts_1.ownerdisplayname, 
    posts_1.id, 
    posts_1.tags, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  limit 16)
EXCEPT
(select  
    min(
      posthistory_1.creationdate), 
    posthistory_1.id, 
    count(
      posthistory_1.creationdate), 
    posthistory_1.comment, 
    count(
      posthistory_1.userdisplayname), 
    posthistory_1.revisionguid, 
    count(
      posthistory_1.contentlicense)
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  group by posthistory_1.id, posthistory_1.revisionguid, posthistory_1.userdisplayname
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where posts_1.tags is not NULL
  group by posts_1.ownerdisplayname
  limit 16)
UNION
(select  
    max(
      users_1.accountid), 
    users_1.location
  from 
    users as users_1
  where users_1.aboutme is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate
from 
  comments as comments_1
where comments_1.postid is not NULL
limit 5;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_2.profileimageurl, 
  users_2.creationdate, 
  users_2.location, 
  min(
    users_3.creationdate), 
  users_1.aboutme, 
  max(
    users_3.profileimageurl), 
  users_3.accountid, 
  users_2.websiteurl, 
  users_1.location
from 
  users as users_1
    inner join users as users_2
      inner join users as users_3
      on (users_2.id = users_3.id )
    on (users_1.id = users_2.id )
where users_3.accountid is not NULL
group by users_1.aboutme, users_1.location, users_2.creationdate, users_2.location, users_2.profileimageurl, users_2.websiteurl, users_3.accountid
limit 10;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    posts_1.body, 
    count(
      posthistory_1.comment), 
    posthistory_1.revisionguid, 
    posthistory_1.userdisplayname, 
    comments_1.contentlicense, 
    postlinks_2.postid
  from 
    postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      inner join postlinks as postlinks_2
          inner join posthistory as posthistory_1
          on (postlinks_2.id = posthistory_1.id )
        inner join posts as posts_1
        on (posthistory_1.id = posts_1.id )
      on (comments_1.id = posts_1.id )
  where comments_1.userdisplayname is not NULL
  group by comments_1.contentlicense, posthistory_1.revisionguid, posthistory_1.userdisplayname, postlinks_1.linktypeid, postlinks_2.postid, posts_1.body
  limit 35)
UNION
(select  
    avg(
      votes_1.postid), 
    count(*), 
    count(
      votes_1.userid), 
    min(
      votes_1.userid), 
    min(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    sum(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.creationdate = votes_1.creationdate
  group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 36);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      users_1.id), 
    users_1.location, 
    users_1.aboutme, 
    users_1.creationdate, 
    users_1.websiteurl, 
    count(
      users_1.websiteurl), 
    users_1.id, 
    max(
      users_1.creationdate), 
    users_1.displayname, 
    users_1.accountid, 
    max(
      users_1.creationdate), 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.accountid >= users_1.profileimageurl
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 21)
INTERSECT
(select  
    max(
      comments_1.postid), 
    comments_1.contentlicense, 
    comments_1.contentlicense, 
    comments_1.creationdate, 
    comments_1.contentlicense, 
    max(
      comments_1.id), 
    comments_1.id, 
    min(
      comments_1.creationdate), 
    comments_1.text, 
    comments_1.id, 
    max(
      comments_1.creationdate), 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 39)
UNION
(select  
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 39)
UNION
(select  
    min(
      posts_1.posttypeid), 
    postlinks_2.linktypeid
  from 
    posts as posts_1
      inner join postlinks as postlinks_2
      on (posts_1.id = postlinks_2.id )
  where posts_1.id > postlinks_2.postid
  limit 26);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.creationdate, 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.contentlicense = comments_1.userdisplayname
  limit 20)
UNION
(select  
    posts_1.creationdate, 
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
  where posts_1.title is not NULL
  limit 21);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.creationdate, 
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  limit 11)
UNION
(select  
    posts_1.creationdate, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  group by posts_1.contentlicense, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 16);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 8)
INTERSECT
(select  
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.creationdate = votes_1.creationdate
  group by votes_1.creationdate, votes_1.userid
  limit 21);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid, 
    users_1.displayname
  from 
    votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
  where votes_1.creationdate is not NULL
  limit 13)
INTERSECT
(select  
    max(
      badges_1.date), 
    count(
      badges_1.tagbased)
  from 
    badges as badges_1
  where badges_1.class = badges_1.id
  group by badges_1.name, badges_1.tagbased
  limit 3);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userid, 
    posts_1.parentid, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where posts_1.title is not NULL
  limit 36)
EXCEPT
(select  
    posts_2.owneruserid, 
    badges_1.userid, 
    posts_2.posttypeid
  from 
    badges as badges_1
      inner join posts as posts_2
        inner join comments as comments_2
        on (posts_2.id = comments_2.id )
      on (badges_1.id = posts_2.id )
  where badges_1.userid is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.userid, 
    badges_1.class, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.date <= badges_1.date
  limit 19)
EXCEPT
(select  
    badges_2.class, 
    badges_2.userid, 
    badges_2.date
  from 
    badges as badges_2
  where badges_2.tagbased is not NULL
  group by badges_2.class, badges_2.date, badges_2.id, badges_2.tagbased, badges_2.userid
  limit 24);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 36)
EXCEPT
(select  
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.id
  limit 42);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.id, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where postlinks_1.id is not NULL
  limit 11)
INTERSECT
(select  
    sum(
      badges_1.class), 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 33);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      postlinks_1.linktypeid), 
    postlinks_1.creationdate, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.postid
  limit 36)
EXCEPT
(select  
    count(
      posts_1.ownerdisplayname), 
    posts_1.creationdate, 
    votes_1.votetypeid
  from 
    postlinks as postlinks_2
          inner join posts as posts_1
          on (postlinks_2.id = posts_1.id )
        inner join users as users_1
        on (posts_1.id = users_1.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where posts_1.acceptedanswerid > votes_1.userid
  group by posts_1.contentlicense, users_1.id, users_1.location, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name
  from 
    badges as badges_1
  where badges_1.tagbased < badges_1.tagbased
  limit 23)
INTERSECT
(select  
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  limit 36);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    votes_1.id, 
    min(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.creationdate, votes_1.id
  limit 15)
EXCEPT
(select  
    votes_2.creationdate, 
    min(
      votes_2.id), 
    count(*), 
    min(
      votes_3.creationdate)
  from 
    votes as votes_2
      inner join votes as votes_3
      on (votes_2.id = votes_3.id )
  where votes_2.creationdate is not NULL
  group by votes_2.creationdate, votes_2.id, votes_3.creationdate, votes_3.votetypeid
  limit 18);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.revisionguid, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 16)
UNION
(select  
    posts_1.title, 
    count(*)
  from 
    posts as posts_1
  where posts_1.id is not NULL
  group by posts_1.contentlicense, posts_1.owneruserid, posts_1.posttypeid
  limit 41);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.contentlicense, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.contentlicense
  limit 31)
INTERSECT
(select  
    users_1.displayname, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
      inner join users as users_1
        inner join votes as votes_2
        on (users_1.id = votes_2.id )
      on (votes_1.id = users_1.id )
  where votes_2.creationdate >= users_1.creationdate
  limit 40);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid, 
    count(*), 
    votes_1.id, 
    votes_1.creationdate, 
    min(
      votes_1.creationdate), 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 13)
INTERSECT
(select  
    badges_1.class, 
    count(*), 
    badges_1.userid, 
    badges_1.date, 
    min(
      badges_1.date), 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.date is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.userid
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  limit 2)
INTERSECT
(select  
    badges_1.name
  from 
    badges as badges_1
  where badges_1.name >= badges_1.name
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
  limit 28);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    min(
      postlinks_1.linktypeid), 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 12)
INTERSECT
(select  
    max(
      comments_1.postid), 
    comments_1.id, 
    comments_1.postid, 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    comments_1.postid, 
    min(
      comments_1.postid), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.contentlicense >= comments_1.text
  group by comments_1.postid, comments_1.userdisplayname
  limit 28);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.id
from 
  posthistory as posthistory_1
      inner join badges as badges_1
          inner join postlinks as postlinks_1
          on (badges_1.id = postlinks_1.id )
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      on (posthistory_1.id = posts_1.id )
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where badges_1.tagbased < badges_1.tagbased
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.creationdate, 
  count(
    comments_1.userdisplayname), 
  comments_1.postid, 
  comments_1.id, 
  comments_1.text
from 
  comments as comments_1
where comments_1.userdisplayname >= comments_1.contentlicense
group by comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
limit 11;
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      posts_1.contentlicense), 
    posts_1.acceptedanswerid, 
    postlinks_1.postid, 
    badges_1.id, 
    postlinks_1.id, 
    votes_1.votetypeid, 
    badges_1.tagbased, 
    badges_1.userid, 
    postlinks_1.creationdate, 
    votes_1.creationdate, 
    min(
      postlinks_1.creationdate), 
    votes_1.id, 
    min(
      badges_1.date), 
    votes_1.userid, 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      inner join postlinks as postlinks_1
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      on (posts_1.id = postlinks_1.id )
  where badges_1.date <= posts_1.creationdate
  group by badges_1.id, badges_1.tagbased, badges_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, posts_1.acceptedanswerid, posts_1.ownerdisplayname, votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 34)
INTERSECT
(select  
    min(
      postlinks_2.id), 
    postlinks_2.id, 
    postlinks_2.linktypeid, 
    postlinks_2.id, 
    postlinks_2.postid, 
    postlinks_2.relatedpostid, 
    min(
      postlinks_2.linktypeid), 
    postlinks_2.postid, 
    postlinks_2.creationdate, 
    postlinks_2.creationdate, 
    max(
      postlinks_2.creationdate), 
    min(
      postlinks_2.linktypeid), 
    min(
      postlinks_2.creationdate), 
    postlinks_2.id, 
    count(
      postlinks_2.creationdate)
  from 
    postlinks as postlinks_2
  where postlinks_2.creationdate is not NULL
  group by postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid
  limit 10);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  votes_1.votetypeid, 
  votes_1.postid
from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where posthistory_1.comment is not NULL
limit 12;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid
  from 
    votes as votes_1
      inner join comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      on (votes_1.id = comments_1.id )
  where users_1.creationdate > comments_1.creationdate
  limit 18)
EXCEPT
(select  
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.title < posts_1.tags
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id
  limit 29);
-- meta {"num_joins":2,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.aboutme, 
    users_1.id
  from 
    users as users_1
  where users_1.aboutme <= users_1.displayname
  limit 15)
UNION
(select  
    count(*), 
    posts_1.posttypeid
  from 
    posts as posts_1
      inner join users as users_2
        inner join badges as badges_1
        on (users_2.id = badges_1.id )
      on (posts_1.id = users_2.id )
  where badges_1.name is not NULL
  group by badges_1.class, badges_1.id, badges_1.name, posts_1.acceptedanswerid, posts_1.parentid, posts_1.title, users_2.aboutme, users_2.creationdate, users_2.id
  limit 28);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.creationdate), 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.creationdate > postlinks_1.creationdate
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 24;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.profileimageurl, 
    users_1.accountid, 
    users_1.creationdate
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 5)
UNION
(select  
    comments_1.userid, 
    sum(
      badges_1.class), 
    badges_1.date
  from 
    posts as posts_1
      inner join comments as comments_1
        inner join badges as badges_1
        on (comments_1.id = badges_1.id )
      on (posts_1.id = comments_1.id )
  where comments_1.userid is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.postid, 
    posthistory_1.id, 
    posthistory_1.userdisplayname, 
    count(
      posthistory_1.creationdate), 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate = posthistory_1.creationdate
  group by posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
  limit 30)
INTERSECT
(select  
    posts_1.parentid, 
    posts_1.acceptedanswerid, 
    posts_1.ownerdisplayname, 
    count(
      posts_1.ownerdisplayname), 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.body <= posts_1.tags
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid
  limit 17);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(
    posts_1.contentlicense), 
  votes_1.postid, 
  posthistory_1.posthistorytypeid, 
  min(
    posts_1.creationdate), 
  posts_1.posttypeid, 
  posts_1.ownerdisplayname, 
  posts_1.parentid
from 
  votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
    inner join posthistory as posthistory_1
    on (votes_1.id = posthistory_1.id )
where posts_1.parentid is not NULL
group by posthistory_1.posthistorytypeid, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, votes_1.postid
limit 10;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    comments_1.userid, 
    comments_1.id, 
    users_1.profileimageurl
  from 
    posts as posts_1
        inner join users as users_1
        on (posts_1.id = users_1.id )
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
  where posts_1.tags is not NULL
  limit 34)
EXCEPT
(select  
    min(
      posts_2.creationdate), 
    sum(
      posts_2.posttypeid), 
    posts_2.acceptedanswerid, 
    posts_2.id
  from 
    posts as posts_2
  where posts_2.tags is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.creationdate, 
  votes_1.userid
from 
  votes as votes_1
where votes_1.id is not NULL
limit 5;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.class, 
    badges_1.name, 
    count(*), 
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.tagbased >= badges_1.tagbased
  group by badges_1.class, badges_1.id, badges_1.name
  limit 5)
INTERSECT
(select  
    min(
      comments_1.creationdate), 
    comments_1.postid, 
    comments_1.text, 
    max(
      comments_1.postid), 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  group by comments_1.contentlicense, comments_1.text, comments_1.userid
  limit 11);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  limit 29)
UNION
(select  
    posthistory_2.creationdate
  from 
    posthistory as posthistory_2
  where posthistory_2.contentlicense < posthistory_2.userdisplayname
  group by posthistory_2.contentlicense, posthistory_2.id, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.text
  limit 15);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      votes_1.creationdate), 
    max(
      posthistory_1.creationdate), 
    posthistory_1.posthistorytypeid, 
    votes_1.postid, 
    votes_1.votetypeid, 
    posthistory_1.comment, 
    comments_1.postid, 
    comments_1.creationdate, 
    comments_1.text
  from 
    posts as posts_1
          inner join comments as comments_1
          on (posts_1.id = comments_1.id )
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where posts_1.id = posts_1.acceptedanswerid
  group by comments_1.creationdate, comments_1.postid, comments_1.text, posthistory_1.comment, posthistory_1.posthistorytypeid, votes_1.postid, votes_1.votetypeid
  limit 33)
UNION
(select  
    max(
      posthistory_2.creationdate), 
    max(
      posthistory_2.creationdate), 
    posthistory_2.postid, 
    posthistory_2.userid, 
    posthistory_2.posthistorytypeid, 
    posthistory_2.userdisplayname, 
    posthistory_2.posthistorytypeid, 
    sum(
      posthistory_2.postid), 
    posthistory_2.revisionguid
  from 
    posthistory as posthistory_2
  where posthistory_2.revisionguid is not NULL
  group by posthistory_2.comment, posthistory_2.contentlicense, posthistory_2.id, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.text, posthistory_2.userdisplayname
  limit 35);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.comment, 
    posthistory_1.id, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  limit 14)
UNION
(select  
    min(
      comments_1.creationdate), 
    users_1.profileimageurl, 
    users_1.aboutme
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where comments_1.creationdate is not NULL
  group by users_1.location
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 7;
-- meta {"num_joins":7,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  comments_1.contentlicense, 
  votes_2.userid, 
  badges_2.tagbased, 
  badges_2.id
from 
  badges as badges_1
          inner join votes as votes_1
          on (badges_1.id = votes_1.id )
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      inner join postlinks as postlinks_1
        inner join votes as votes_2
          inner join badges as badges_2
          on (votes_2.id = badges_2.id )
        on (postlinks_1.id = votes_2.id )
      on (votes_1.id = badges_2.id )
    inner join comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
    on (votes_2.id = comments_2.id )
where comments_2.postid is not NULL
limit 37;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.contentlicense, 
    max(
      posthistory_1.postid), 
    posthistory_1.userid, 
    posthistory_1.userdisplayname, 
    posthistory_1.revisionguid, 
    posthistory_1.id, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
  limit 37)
INTERSECT
(select  
    count(
      badges_1.class), 
    count(
      badges_1.date), 
    badges_1.id, 
    badges_1.name, 
    min(
      badges_1.date), 
    badges_1.class, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 22);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.postid, 
    votes_1.creationdate, 
    votes_1.id, 
    votes_1.userid, 
    count(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
  limit 10)
INTERSECT
(select  
    badges_1.class, 
    badges_1.date, 
    badges_1.id, 
    badges_1.class, 
    count(
      badges_1.name)
  from 
    badges as badges_1
  where badges_1.tagbased < badges_1.tagbased
  group by badges_1.date, badges_1.id, badges_1.userid
  limit 38);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    comments_1.creationdate), 
  posts_2.body, 
  posts_2.owneruserid, 
  posts_1.creationdate, 
  posts_1.tags, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
      inner join posts as posts_1
        inner join comments as comments_1
        on (posts_1.id = comments_1.id )
      on (postlinks_1.id = posts_1.id )
    inner join posts as posts_2
    on (postlinks_1.id = posts_2.id )
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.postid, posts_1.creationdate, posts_1.tags, posts_2.body, posts_2.owneruserid
limit 29;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    votes_1.creationdate, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id
  limit 36)
EXCEPT
(select  
    posts_1.owneruserid, 
    posts_1.creationdate, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.tags > posts_1.body
  group by posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.posttypeid
  limit 8);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      comments_1.creationdate), 
    comments_1.id, 
    comments_1.creationdate, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.text = comments_1.userdisplayname
  group by comments_1.creationdate, comments_1.id, comments_1.postid
  limit 17)
INTERSECT
(select  
    min(
      badges_1.date), 
    badges_1.class, 
    badges_1.date, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.tagbased > badges_1.tagbased
  group by badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 33);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  count(
    postlinks_1.relatedpostid), 
  postlinks_1.postid, 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid
limit 36;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  votes_1.id, 
  max(
    votes_1.creationdate), 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
    inner join votes as votes_1
    on (posthistory_1.id = votes_1.id )
where votes_1.postid is not NULL
group by posthistory_1.contentlicense, posthistory_1.userid, votes_1.id
limit 41;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.linktypeid, 
    postlinks_1.relatedpostid, 
    min(
      postlinks_1.postid), 
    postlinks_1.creationdate, 
    min(
      postlinks_1.postid), 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 8)
UNION
(select  
    badges_1.id, 
    count(*), 
    badges_1.class, 
    max(
      badges_1.userid), 
    badges_1.date, 
    count(*), 
    count(*)
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid, 
    votes_1.postid, 
    votes_1.creationdate, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 9)
EXCEPT
(select  
    count(
      posthistory_1.text), 
    max(
      posthistory_1.creationdate), 
    posthistory_1.creationdate, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 29);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.userid
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where posthistory_1.id is not NULL
  limit 4)
INTERSECT
(select  
    postlinks_2.linktypeid
  from 
    postlinks as postlinks_2
  where postlinks_2.postid is not NULL
  group by postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.postid
from 
  votes as votes_1
where votes_1.creationdate is not NULL
limit 28;
-- meta {"num_joins":5,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.userdisplayname, 
    count(
      comments_1.creationdate), 
    comments_1.creationdate, 
    comments_1.userid, 
    comments_1.postid, 
    comments_1.contentlicense, 
    comments_1.text, 
    min(
      comments_1.creationdate), 
    comments_1.id, 
    count(*), 
    count(*)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 12)
INTERSECT
(select  
    posts_1.body, 
    count(*), 
    avg(
      postlinks_1.linktypeid), 
    posts_1.id, 
    min(
      posts_1.creationdate), 
    sum(
      comments_3.id), 
    count(*), 
    max(
      votes_1.creationdate), 
    badges_1.userid, 
    count(*), 
    max(
      posts_1.parentid)
  from 
    badges as badges_1
      inner join comments as comments_2
          inner join postlinks as postlinks_1
          on (comments_2.id = postlinks_1.id )
        inner join comments as comments_3
            inner join votes as votes_1
            on (comments_3.id = votes_1.id )
          inner join posts as posts_1
          on (votes_1.id = posts_1.id )
        on (comments_2.id = comments_3.id )
      on (badges_1.id = comments_2.id )
  where posts_1.creationdate is not NULL
  group by badges_1.id, badges_1.tagbased, comments_3.contentlicense, comments_3.text, comments_3.userid, postlinks_1.creationdate
  limit 6);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      posts_1.creationdate), 
    posts_1.id
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.id
  limit 31)
INTERSECT
(select  
    max(
      badges_1.date), 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
          inner join badges as badges_1
          on (postlinks_1.id = badges_1.id )
        inner join comments as comments_1
        on (badges_1.id = comments_1.id )
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where posthistory_1.userdisplayname is not NULL
  group by badges_1.tagbased, comments_1.userdisplayname
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 30)
INTERSECT
(select  
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.location is not NULL
  limit 10);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.userid
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where votes_1.creationdate is not NULL
  limit 42)
EXCEPT
(select  
    badges_2.id
  from 
    badges as badges_2
  where badges_2.class is not NULL
  group by badges_2.class, badges_2.date, badges_2.name, badges_2.tagbased, badges_2.userid
  limit 24);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      votes_1.creationdate), 
    max(
      votes_1.postid), 
    votes_1.postid, 
    votes_1.creationdate, 
    votes_1.userid, 
    max(
      votes_1.creationdate), 
    votes_1.id, 
    votes_1.votetypeid, 
    count(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 41)
UNION
(select  
    min(
      votes_2.creationdate), 
    max(
      votes_2.userid), 
    votes_2.id, 
    avg(
      votes_2.id), 
    votes_2.userid, 
    max(
      votes_2.creationdate), 
    votes_2.votetypeid, 
    votes_2.postid, 
    min(
      votes_2.postid)
  from 
    votes as votes_2
  where votes_2.postid is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    avg(
      postlinks_1.postid), 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 9)
INTERSECT
(select  
    users_1.id, 
    users_1.creationdate, 
    sum(
      users_1.accountid), 
    users_1.accountid, 
    min(
      users_1.id)
  from 
    users as users_1
  where users_1.accountid is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.websiteurl
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid
from 
  comments as comments_1
where comments_1.userid < comments_1.postid
limit 11;
-- meta {"num_joins":0,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      badges_1.class), 
    badges_1.class, 
    badges_1.name, 
    badges_1.date, 
    badges_1.id, 
    badges_1.userid, 
    max(
      badges_1.date), 
    min(
      badges_1.date), 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.id = badges_1.userid
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 13)
UNION
(select  
    sum(
      postlinks_1.id), 
    postlinks_1.postid, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    min(
      postlinks_1.postid), 
    postlinks_1.relatedpostid, 
    min(
      postlinks_1.creationdate), 
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 20);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      badges_1.date), 
    min(
      badges_1.class), 
    badges_1.date, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.date, badges_1.userid
  limit 23)
EXCEPT
(select  
    min(
      posts_1.creationdate), 
    count(*), 
    min(
      posts_1.creationdate), 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  limit 35);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      votes_2.creationdate), 
    votes_1.id, 
    posthistory_1.contentlicense, 
    votes_2.id, 
    votes_2.userid, 
    votes_2.votetypeid, 
    votes_1.votetypeid, 
    votes_1.creationdate
  from 
    votes as votes_1
        inner join posthistory as posthistory_1
        on (votes_1.id = posthistory_1.id )
      inner join votes as votes_2
      on (posthistory_1.id = votes_2.id )
  where posthistory_1.comment < posthistory_1.text
  group by posthistory_1.contentlicense, votes_1.creationdate, votes_1.id, votes_1.votetypeid, votes_2.id, votes_2.userid, votes_2.votetypeid
  limit 21)
INTERSECT
(select  
    max(
      comments_1.creationdate), 
    comments_1.id, 
    comments_1.contentlicense, 
    comments_1.id, 
    min(
      comments_1.creationdate), 
    comments_1.postid, 
    comments_1.postid, 
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.id is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    posts_1.creationdate), 
  posts_1.id, 
  posts_1.posttypeid, 
  posts_1.body
from 
  posts as posts_1
where posts_1.contentlicense is not NULL
group by posts_1.body, posts_1.id, posts_1.posttypeid
limit 24;
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posthistory_1.creationdate, 
  badges_2.class, 
  posthistory_2.postid, 
  posthistory_1.id, 
  posthistory_1.comment, 
  avg(
    badges_1.userid), 
  posthistory_2.userid, 
  badges_1.class, 
  posthistory_2.text, 
  posthistory_2.posthistorytypeid
from 
  posthistory as posthistory_1
      inner join badges as badges_1
        inner join posthistory as posthistory_2
        on (badges_1.id = posthistory_2.id )
      on (posthistory_1.id = posthistory_2.id )
    inner join badges as badges_2
    on (posthistory_2.id = badges_2.id )
where posthistory_1.id is not NULL
group by badges_1.class, badges_2.class, posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.userid, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.text, posthistory_2.userid
limit 37;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.id, 
    count(
      postlinks_1.relatedpostid), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 15)
INTERSECT
(select  
    votes_1.userid, 
    votes_1.userid, 
    min(
      votes_1.id), 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
  limit 39);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.postid, 
    votes_1.id, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 39)
INTERSECT
(select  
    min(
      badges_1.date), 
    postlinks_1.postid, 
    avg(
      comments_1.userid)
  from 
    users as users_1
      inner join badges as badges_1
        inner join comments as comments_1
            inner join posts as posts_1
            on (comments_1.id = posts_1.id )
          inner join postlinks as postlinks_1
          on (comments_1.id = postlinks_1.id )
        on (badges_1.id = postlinks_1.id )
      on (users_1.id = badges_1.id )
  where badges_1.class is not NULL
  limit 22);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased, 
    badges_1.name
  from 
    badges as badges_1
        inner join users as users_1
        on (badges_1.id = users_1.id )
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where votes_1.id > users_1.id
  limit 7)
EXCEPT
(select  
    badges_2.tagbased, 
    badges_2.name
  from 
    badges as badges_2
  where badges_2.id is not NULL
  limit 9);
-- meta {"num_joins":5,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.tagbased, 
    badges_1.class, 
    badges_1.userid, 
    badges_1.name, 
    badges_1.id, 
    min(
      badges_1.id), 
    badges_1.date, 
    min(
      badges_1.date), 
    max(
      badges_1.date), 
    count(*)
  from 
    badges as badges_1
  where badges_1.name = badges_1.name
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 32)
UNION
(select  
    badges_2.tagbased, 
    posthistory_1.postid, 
    posthistory_1.id, 
    max(
      posthistory_2.posthistorytypeid), 
    posthistory_2.id, 
    max(
      postlinks_1.postid), 
    postlinks_1.creationdate, 
    max(
      postlinks_2.creationdate), 
    min(
      users_1.creationdate), 
    max(
      posthistory_1.userid)
  from 
    badges as badges_2
          inner join posthistory as posthistory_1
          on (badges_2.id = posthistory_1.id )
        inner join users as users_1
        on (badges_2.id = users_1.id )
      inner join postlinks as postlinks_1
          inner join posthistory as posthistory_2
          on (postlinks_1.id = posthistory_2.id )
        inner join postlinks as postlinks_2
        on (posthistory_2.id = postlinks_2.id )
      on (users_1.id = posthistory_2.id )
  where users_1.profileimageurl > users_1.id
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.text
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  limit 30)
INTERSECT
(select  
    posts_1.title
  from 
    postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
  where posts_1.id is not NULL
  limit 11);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.userdisplayname, 
    posthistory_1.id, 
    min(
      posthistory_1.id), 
    posthistory_1.creationdate, 
    max(
      posthistory_1.creationdate), 
    count(
      posthistory_1.postid), 
    posthistory_1.contentlicense, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userid, 
    posthistory_1.comment, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.postid, 
    posthistory_1.revisionguid, 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
  limit 25)
INTERSECT
(select  
    posts_1.owneruserid, 
    posts_1.title, 
    posts_1.id, 
    min(
      posts_1.posttypeid), 
    posts_1.creationdate, 
    min(
      posts_1.creationdate), 
    max(
      posts_1.parentid), 
    posts_1.body, 
    max(
      posts_1.creationdate), 
    posts_1.posttypeid, 
    min(
      posts_1.creationdate), 
    max(
      posts_1.creationdate), 
    posts_1.parentid, 
    posts_1.title, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.id is not NULL
  limit 7);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.userdisplayname, 
    badges_2.tagbased, 
    posthistory_1.comment, 
    badges_2.id, 
    min(
      badges_1.date)
  from 
    badges as badges_1
        inner join posthistory as posthistory_1
        on (badges_1.id = posthistory_1.id )
      inner join badges as badges_2
        inner join badges as badges_3
        on (badges_2.id = badges_3.id )
      on (badges_1.id = badges_2.id )
  where posthistory_1.text is not NULL
  group by badges_2.id, badges_2.tagbased, posthistory_1.comment, posthistory_1.userdisplayname
  limit 36)
INTERSECT
(select  
    posthistory_2.userdisplayname, 
    badges_4.tagbased, 
    posthistory_2.revisionguid, 
    badges_4.id, 
    max(
      posthistory_2.creationdate)
  from 
    posthistory as posthistory_2
      inner join badges as badges_4
      on (posthistory_2.id = badges_4.id )
  where badges_4.date = posthistory_2.creationdate
  group by posthistory_2.userid
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.id is not NULL
  limit 3)
UNION
(select  
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.creationdate <= votes_1.creationdate
  limit 16);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid
from 
  postlinks as postlinks_1
      inner join posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      on (postlinks_1.id = posts_1.id )
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where posthistory_1.posthistorytypeid >= postlinks_2.linktypeid
limit 41;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.date
  from 
    posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
  where badges_1.date is not NULL
  limit 39)
UNION
(select  
    avg(
      users_1.profileimageurl)
  from 
    users as users_1
      inner join posts as posts_1
          inner join badges as badges_2
          on (posts_1.id = badges_2.id )
        inner join posthistory as posthistory_2
        on (badges_2.id = posthistory_2.id )
      on (users_1.id = posts_1.id )
  where posthistory_2.postid is not NULL
  limit 10);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.userid, 
    votes_1.postid, 
    votes_1.votetypeid, 
    votes_1.creationdate, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 31)
EXCEPT
(select  
    votes_2.id, 
    votes_2.userid, 
    votes_2.votetypeid, 
    min(
      votes_2.id), 
    votes_2.userid
  from 
    votes as votes_2
  where votes_2.creationdate < votes_2.creationdate
  group by votes_2.id, votes_2.userid
  limit 36);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.creationdate
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where users_1.aboutme = comments_1.text
  limit 29)
INTERSECT
(select  
    users_2.creationdate
  from 
    users as users_2
  where users_2.websiteurl is not NULL
  limit 15);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userdisplayname, 
    comments_1.userid
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where comments_1.userid is not NULL
  limit 17)
EXCEPT
(select  
    posts_1.ownerdisplayname, 
    max(
      posts_2.creationdate)
  from 
    posts as posts_1
      inner join postlinks as postlinks_1
        inner join badges as badges_1
          inner join posts as posts_2
          on (badges_1.id = posts_2.id )
        on (postlinks_1.id = badges_1.id )
      on (posts_1.id = posts_2.id )
  where badges_1.date = posts_1.creationdate
  limit 39);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.contentlicense
from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.creationdate > postlinks_1.creationdate
limit 15;
-- meta {"num_joins":3,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    posts_1.body, 
    posts_1.posttypeid, 
    users_1.location, 
    count(
      posts_1.ownerdisplayname), 
    comments_1.contentlicense, 
    users_1.accountid, 
    posts_1.creationdate, 
    postlinks_1.id, 
    users_1.id, 
    comments_1.text, 
    comments_1.postid, 
    posts_1.tags, 
    comments_1.userdisplayname, 
    postlinks_1.postid, 
    posts_1.parentid, 
    comments_1.id, 
    comments_1.creationdate, 
    posts_1.owneruserid
  from 
    postlinks as postlinks_1
        inner join users as users_1
          inner join comments as comments_1
          on (users_1.id = comments_1.id )
        on (postlinks_1.id = users_1.id )
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
  where posts_1.creationdate >= postlinks_1.creationdate
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, posts_1.body, posts_1.creationdate, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, users_1.accountid, users_1.id, users_1.location
  limit 16)
UNION
(select  
    postlinks_2.postid, 
    count(*), 
    postlinks_2.relatedpostid, 
    count(*), 
    count(
      postlinks_2.linktypeid), 
    min(
      postlinks_2.creationdate), 
    postlinks_2.id, 
    postlinks_2.creationdate, 
    postlinks_2.id, 
    postlinks_2.postid, 
    min(
      postlinks_2.creationdate), 
    postlinks_2.linktypeid, 
    max(
      postlinks_2.id), 
    max(
      postlinks_2.creationdate), 
    postlinks_2.postid, 
    postlinks_2.postid, 
    postlinks_2.linktypeid, 
    max(
      postlinks_2.creationdate), 
    postlinks_2.linktypeid
  from 
    postlinks as postlinks_2
  where postlinks_2.creationdate >= postlinks_2.creationdate
  group by postlinks_2.creationdate, postlinks_2.id, postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid
  limit 14);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      badges_1.date), 
    badges_1.userid, 
    badges_1.date, 
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.class is not NULL
  group by badges_1.date, badges_1.userid
  limit 31)
EXCEPT
(select  
    max(
      posts_1.creationdate), 
    posts_1.id, 
    posts_1.creationdate, 
    min(
      badges_2.date)
  from 
    badges as badges_2
      inner join posts as posts_1
      on (badges_2.id = posts_1.id )
  where badges_2.date is not NULL
  limit 21);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.contentlicense, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userdisplayname, 
    posthistory_2.userid, 
    count(*)
  from 
    posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      inner join postlinks as postlinks_1
      on (posthistory_2.id = postlinks_1.id )
  where posthistory_1.id is not NULL
  group by posthistory_1.contentlicense, posthistory_1.userdisplayname, posthistory_2.userid
  limit 14)
UNION
(select  
    max(
      badges_1.date), 
    max(
      badges_1.date), 
    min(
      badges_1.class), 
    comments_1.userid, 
    count(*)
  from 
    comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
  where badges_1.id is not NULL
  limit 15);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.userdisplayname, 
    min(
      users_1.creationdate)
  from 
    users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
  where comments_1.userid = users_1.accountid
  group by comments_1.userdisplayname
  limit 36)
INTERSECT
(select  
    count(*), 
    max(
      postlinks_1.creationdate)
  from 
    posts as posts_1
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
  where posts_1.parentid <= posts_1.owneruserid
  limit 32);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  posts_1.title, 
  posts_1.acceptedanswerid, 
  min(
    posts_1.creationdate), 
  posts_1.ownerdisplayname, 
  posthistory_1.comment, 
  posts_1.contentlicense
from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.ownerdisplayname is not NULL
group by posthistory_1.comment, posthistory_1.postid, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.title
limit 32;
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.userid, 
    badges_1.date, 
    badges_1.name, 
    badges_1.class, 
    sum(
      badges_1.id), 
    max(
      badges_1.class), 
    count(
      badges_1.name), 
    sum(
      badges_1.class)
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.userid
  limit 14)
EXCEPT
(select  
    avg(
      badges_2.class), 
    badges_2.date, 
    badges_2.name, 
    count(*), 
    sum(
      badges_2.userid), 
    count(*), 
    count(
      badges_2.id), 
    avg(
      badges_2.userid)
  from 
    badges as badges_2
  where badges_2.name >= badges_2.name
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.postid, 
    posts_1.ownerdisplayname, 
    posts_1.id
  from 
    votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
  where votes_1.votetypeid is not NULL
  limit 28)
INTERSECT
(select  
    max(
      postlinks_1.creationdate), 
    min(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid < postlinks_1.relatedpostid
  limit 13);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id
  from 
    votes as votes_1
      inner join comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      on (votes_1.id = users_1.id )
  where votes_1.votetypeid is not NULL
  limit 42)
EXCEPT
(select  
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 7);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.userid, 
    comments_1.userdisplayname, 
    postlinks_1.creationdate, 
    comments_1.contentlicense, 
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    comments_1.text, 
    postlinks_1.id, 
    comments_1.id
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where postlinks_1.relatedpostid >= postlinks_1.linktypeid
  limit 10)
INTERSECT
(select  
    posts_1.id, 
    posts_1.title, 
    posts_1.creationdate, 
    posts_1.tags, 
    posts_1.id, 
    posts_1.acceptedanswerid, 
    posts_1.ownerdisplayname, 
    max(
      posts_1.creationdate), 
    count(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.creationdate > posts_1.creationdate
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id
  limit 31);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    postlinks_1.id, 
    postlinks_1.relatedpostid, 
    max(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 29)
UNION
(select  
    users_1.profileimageurl, 
    users_1.profileimageurl, 
    users_1.accountid, 
    users_1.profileimageurl, 
    max(
      users_1.id)
  from 
    users as users_1
  where users_1.accountid > users_1.profileimageurl
  group by users_1.accountid, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
  limit 42);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.id, 
    postlinks_1.creationdate, 
    postlinks_1.postid, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
  limit 39)
EXCEPT
(select  
    max(
      users_1.accountid), 
    posts_1.creationdate, 
    users_1.id, 
    min(
      users_1.creationdate), 
    users_1.id, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where users_1.location is not NULL
  group by users_1.id, users_1.location
  limit 33);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.postid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.postid < votes_1.id
  limit 22)
INTERSECT
(select  
    badges_2.id, 
    votes_2.creationdate
  from 
    posts as posts_1
          inner join badges as badges_1
          on (posts_1.id = badges_1.id )
        inner join posts as posts_2
          inner join votes as votes_2
          on (posts_2.id = votes_2.id )
        on (posts_1.id = votes_2.id )
      inner join badges as badges_2
      on (posts_2.id = badges_2.id )
  where badges_1.name is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.comment, 
    posthistory_1.postid, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  limit 19)
UNION
(select  
    badges_1.name, 
    badges_1.class, 
    badges_1.id, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.date is not NULL
  group by badges_1.name, badges_1.tagbased, badges_1.userid
  limit 7);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.class, 
    min(
      posthistory_1.postid), 
    posthistory_1.posthistorytypeid, 
    badges_1.userid, 
    badges_1.date
  from 
    badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
  where badges_1.date is not NULL
  group by badges_1.class, badges_1.date, badges_1.userid, posthistory_1.posthistorytypeid
  limit 6)
EXCEPT
(select  
    users_1.id, 
    count(*), 
    users_1.profileimageurl, 
    users_1.accountid, 
    users_1.creationdate
  from 
    users as users_1
  where users_1.displayname is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.accountid, 
    users_1.aboutme
  from 
    users as users_1
  where users_1.creationdate > users_1.creationdate
  limit 25)
EXCEPT
(select  
    count(*), 
    users_2.websiteurl
  from 
    comments as comments_1
      inner join users as users_2
      on (comments_1.id = users_2.id )
  where comments_1.text is not NULL
  group by comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, users_2.creationdate, users_2.id, users_2.websiteurl
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.revisionguid, 
    posthistory_1.text, 
    posthistory_1.userdisplayname, 
    posthistory_1.comment, 
    posthistory_1.postid, 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  group by posthistory_1.comment, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
  limit 21)
EXCEPT
(select  
    badges_1.name, 
    badges_1.name, 
    badges_1.name, 
    badges_1.name, 
    max(
      badges_1.date), 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 34);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.ownerdisplayname, 
    count(
      posts_1.tags)
  from 
    badges as badges_1
      inner join posts as posts_1
        inner join comments as comments_1
        on (posts_1.id = comments_1.id )
      on (badges_1.id = comments_1.id )
  where comments_1.postid is not NULL
  group by posts_1.ownerdisplayname
  limit 9)
INTERSECT
(select  
    posts_2.contentlicense, 
    count(
      posts_2.acceptedanswerid)
  from 
    posts as posts_2
  where posts_2.tags is not NULL
  group by posts_2.contentlicense, posts_2.creationdate, posts_2.id
  limit 41);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  users_1.displayname, 
  users_1.creationdate, 
  max(
    users_1.creationdate), 
  max(
    users_1.accountid)
from 
  users as users_1
where users_1.aboutme is not NULL
group by users_1.accountid, users_1.creationdate, users_1.displayname
limit 22;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      users_1.accountid), 
    users_1.aboutme, 
    users_1.profileimageurl, 
    users_1.accountid, 
    min(
      users_1.creationdate), 
    max(
      users_1.creationdate), 
    users_1.location
  from 
    users as users_1
  where users_1.displayname is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.location, users_1.profileimageurl
  limit 9)
INTERSECT
(select  
    count(
      comments_1.id), 
    posthistory_1.text, 
    posthistory_1.id, 
    comments_1.userid, 
    max(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    posthistory_1.comment
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where comments_1.userid is not NULL
  limit 24);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.votetypeid, 
    votes_1.id, 
    count(*), 
    votes_1.creationdate, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 1)
UNION
(select  
    postlinks_1.id, 
    badges_1.class, 
    max(
      badges_1.class), 
    badges_1.date, 
    postlinks_1.id
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.name > badges_1.name
  limit 8);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.posttypeid, 
    posts_1.tags, 
    posts_1.title, 
    posts_1.contentlicense, 
    posts_1.owneruserid, 
    sum(
      posts_1.owneruserid), 
    posts_1.acceptedanswerid, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 28)
INTERSECT
(select  
    min(
      posts_2.creationdate), 
    posts_2.contentlicense, 
    posts_2.ownerdisplayname, 
    posts_2.contentlicense, 
    posts_2.id, 
    sum(
      posts_2.id), 
    max(
      posts_2.creationdate), 
    max(
      posts_2.creationdate)
  from 
    posts as posts_2
  where posts_2.body is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    votes_1.userid, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 39)
EXCEPT
(select  
    min(
      comments_1.postid), 
    comments_1.postid, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.contentlicense <= comments_1.text
  group by comments_1.text
  limit 38);
-- meta {"num_joins":0,"num_aggregates":10,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  limit 18)
INTERSECT
(select  
    count(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
  limit 2);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment
from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense
from 
  posts as posts_1
where posts_1.id <= posts_1.posttypeid
limit 28;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 27)
INTERSECT
(select  
    posts_1.id
  from 
    postlinks as postlinks_2
      inner join votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      on (postlinks_2.id = posts_1.id )
  where posts_1.parentid is not NULL
  group by postlinks_2.linktypeid, postlinks_2.relatedpostid, posts_1.acceptedanswerid, posts_1.tags, votes_1.postid, votes_1.votetypeid
  limit 34);
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.name, 
    postlinks_1.id, 
    min(
      badges_1.class), 
    badges_1.date, 
    badges_1.userid, 
    postlinks_1.creationdate, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.postid, 
    badges_1.class, 
    postlinks_1.linktypeid, 
    count(
      postlinks_1.postid)
  from 
    badges as badges_1
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
  where postlinks_1.postid is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 40)
EXCEPT
(select  
    users_1.websiteurl, 
    users_1.id, 
    min(
      users_1.accountid), 
    users_1.creationdate, 
    users_1.accountid, 
    badges_2.date, 
    max(
      users_1.creationdate), 
    users_1.id, 
    badges_2.id, 
    badges_2.class, 
    max(
      badges_2.id)
  from 
    badges as badges_2
      inner join users as users_1
      on (badges_2.id = users_1.id )
  where users_1.creationdate is not NULL
  group by badges_2.class, badges_2.date, badges_2.name, badges_2.tagbased, badges_2.userid, users_1.creationdate
  limit 1);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased, 
    max(
      posts_1.creationdate)
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where badges_1.date is not NULL
  group by badges_1.tagbased
  limit 8)
EXCEPT
(select  
    count(*), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.tagbased, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.tagbased
  limit 13)
UNION
(select  
    sum(
      posthistory_1.postid), 
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    votes_1.userid, 
    sum(
      votes_1.userid), 
    min(
      votes_1.creationdate), 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 41)
EXCEPT
(select  
    votes_2.userid, 
    votes_2.postid, 
    sum(
      users_1.id), 
    max(
      users_1.creationdate), 
    avg(
      users_1.accountid)
  from 
    votes as votes_2
      inner join users as users_1
      on (votes_2.id = users_1.id )
  where users_1.displayname is not NULL
  group by users_1.creationdate, users_1.websiteurl, votes_2.id, votes_2.votetypeid
  limit 14);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      comments_1.creationdate), 
    comments_1.userdisplayname, 
    comments_1.userid, 
    comments_1.contentlicense, 
    max(
      comments_1.creationdate), 
    comments_1.text, 
    count(*), 
    comments_1.creationdate, 
    max(
      comments_1.userid), 
    comments_1.postid, 
    comments_1.id, 
    sum(
      comments_1.userid), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.creationdate = comments_1.creationdate
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 10)
INTERSECT
(select  
    max(
      posts_1.creationdate), 
    posts_1.ownerdisplayname, 
    posts_1.id, 
    posts_1.title, 
    max(
      posts_1.creationdate), 
    max(
      posts_1.creationdate), 
    count(
      posts_1.tags), 
    posts_1.creationdate, 
    count(*), 
    min(
      posts_1.id), 
    posts_1.parentid, 
    sum(
      posts_1.id), 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  limit 1);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.title, 
    count(
      posts_1.id), 
    posts_1.acceptedanswerid, 
    posts_1.contentlicense, 
    avg(
      posts_1.owneruserid), 
    badges_1.userid, 
    posts_1.owneruserid, 
    posts_1.creationdate, 
    badges_1.class, 
    count(
      posts_1.parentid), 
    badges_1.tagbased, 
    posts_1.parentid, 
    posts_1.posttypeid
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where badges_1.name is not NULL
  group by badges_1.class, badges_1.tagbased, badges_1.userid, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 18)
UNION
(select  
    badges_2.name, 
    min(
      users_1.id), 
    users_1.id, 
    users_1.aboutme, 
    sum(
      badges_2.class), 
    badges_2.id, 
    badges_2.class, 
    users_1.creationdate, 
    users_1.profileimageurl, 
    count(*), 
    badges_2.tagbased, 
    badges_2.id, 
    badges_2.userid
  from 
    badges as badges_2
      inner join users as users_1
      on (badges_2.id = users_1.id )
  where badges_2.tagbased < badges_2.tagbased
  group by users_1.location
  limit 7);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.class, 
    min(
      badges_1.date), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.tagbased < badges_1.tagbased
  group by badges_1.class, postlinks_1.linktypeid
  limit 13)
INTERSECT
(select  
    min(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    max(
      votes_1.postid)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid
  limit 17);
-- meta {"num_joins":2,"num_aggregates":8,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_2.creationdate, 
    posts_1.acceptedanswerid, 
    posts_1.posttypeid, 
    count(
      posts_1.owneruserid), 
    posthistory_2.revisionguid, 
    posts_1.body, 
    posts_1.parentid, 
    min(
      posts_1.creationdate), 
    posthistory_1.userdisplayname, 
    posts_1.ownerdisplayname, 
    max(
      posts_1.parentid), 
    posthistory_1.id, 
    posts_1.title, 
    sum(
      posthistory_2.postid), 
    posts_1.id, 
    max(
      posts_1.creationdate), 
    posthistory_1.creationdate, 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
      inner join posts as posts_1
        inner join posthistory as posthistory_2
        on (posts_1.id = posthistory_2.id )
      on (posthistory_1.id = posts_1.id )
  where posts_1.parentid is not NULL
  group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.userdisplayname, posthistory_1.userid, posthistory_2.creationdate, posthistory_2.revisionguid, posts_1.acceptedanswerid, posts_1.body, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 39)
EXCEPT
(select  
    comments_1.creationdate, 
    comments_1.id, 
    max(
      comments_1.userid), 
    min(
      comments_1.postid), 
    comments_1.text, 
    comments_1.text, 
    comments_1.userid, 
    min(
      comments_1.creationdate), 
    comments_1.text, 
    comments_1.contentlicense, 
    max(
      comments_1.userid), 
    comments_1.userid, 
    comments_1.contentlicense, 
    sum(
      comments_1.userid), 
    comments_1.postid, 
    min(
      comments_1.creationdate), 
    comments_1.creationdate, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text <= comments_1.userdisplayname
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 36);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.userid, 
  votes_1.creationdate, 
  posthistory_1.text, 
  posthistory_1.revisionguid, 
  max(
    posts_1.creationdate), 
  votes_1.postid
from 
  posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.acceptedanswerid <= posts_1.parentid
group by posthistory_1.revisionguid, posthistory_1.text, votes_1.creationdate, votes_1.postid, votes_1.userid
limit 6;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.location
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 15)
EXCEPT
(select  
    posthistory_1.comment
  from 
    postlinks as postlinks_1
      inner join posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      on (postlinks_1.id = posthistory_2.id )
  where posthistory_1.userdisplayname is not NULL
  group by posthistory_1.posthistorytypeid, posthistory_2.comment, posthistory_2.contentlicense, posthistory_2.id, posthistory_2.posthistorytypeid, posthistory_2.revisionguid, posthistory_2.text, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 17);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_2.linktypeid, 
    posthistory_1.creationdate, 
    postlinks_1.postid, 
    max(
      posts_1.creationdate), 
    badges_1.date, 
    max(
      posthistory_1.postid), 
    posthistory_1.revisionguid, 
    badges_1.name, 
    badges_1.id, 
    postlinks_2.relatedpostid, 
    posthistory_1.postid
  from 
    badges as badges_1
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      inner join posts as posts_1
          inner join posthistory as posthistory_1
          on (posts_1.id = posthistory_1.id )
        inner join postlinks as postlinks_2
        on (posthistory_1.id = postlinks_2.id )
      on (postlinks_1.id = posts_1.id )
  where posts_1.id is not NULL
  group by badges_1.date, badges_1.id, badges_1.name, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.revisionguid, postlinks_1.postid, postlinks_2.linktypeid, postlinks_2.relatedpostid
  limit 42)
EXCEPT
(select  
    min(
      comments_1.creationdate), 
    comments_1.creationdate, 
    comments_1.postid, 
    max(
      comments_1.creationdate), 
    comments_1.creationdate, 
    min(
      comments_1.postid), 
    comments_1.contentlicense, 
    comments_1.userdisplayname, 
    comments_1.id, 
    comments_1.userid, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  group by comments_1.contentlicense, comments_1.id, comments_1.userdisplayname
  limit 40);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.creationdate, 
    min(
      posthistory_1.userid), 
    posthistory_1.revisionguid, 
    posthistory_1.comment, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.text, 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
  limit 27)
UNION
(select  
    postlinks_1.creationdate, 
    max(
      postlinks_1.linktypeid), 
    count(*), 
    max(
      postlinks_1.linktypeid), 
    min(
      postlinks_1.creationdate), 
    count(*), 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate <= postlinks_1.creationdate
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid
  limit 37);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.id, 
    posts_1.ownerdisplayname, 
    avg(
      posthistory_1.posthistorytypeid), 
    posts_1.creationdate, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    avg(
      posts_1.posttypeid)
  from 
    posthistory as posthistory_1
        inner join posts as posts_1
        on (posthistory_1.id = posts_1.id )
      inner join postlinks as postlinks_1
      on (posts_1.id = postlinks_1.id )
  where posthistory_1.id is not NULL
  group by posthistory_1.id, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.creationdate, posts_1.ownerdisplayname
  limit 29)
EXCEPT
(select  
    badges_1.class, 
    min(
      badges_1.date), 
    sum(
      badges_1.class), 
    users_1.creationdate, 
    badges_1.userid, 
    badges_1.class, 
    sum(
      badges_1.userid)
  from 
    badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
  where badges_1.date = users_1.creationdate
  group by badges_1.date, users_1.accountid, users_1.displayname, users_1.websiteurl
  limit 9);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.id, 
    comments_1.postid
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where postlinks_1.postid is not NULL
  limit 42)
EXCEPT
(select  
    posts_1.acceptedanswerid, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
        inner join postlinks as postlinks_2
        on (posthistory_1.id = postlinks_2.id )
      on (posts_1.id = posthistory_1.id )
  where posts_1.id <= posthistory_1.id
  group by posthistory_1.text, posthistory_1.userdisplayname, posts_1.id, posts_1.parentid
  limit 17);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.creationdate, 
    comments_1.id, 
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 40)
UNION
(select  
    count(*), 
    posts_1.parentid, 
    posts_1.posttypeid
  from 
    posts as posts_1
      inner join comments as comments_2
      on (posts_1.id = comments_2.id )
  where comments_2.contentlicense is not NULL
  group by comments_2.postid, posts_1.contentlicense, posts_1.id
  limit 26);
-- meta {"num_joins":1,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.location, 
    min(
      users_1.creationdate), 
    min(
      postlinks_1.linktypeid)
  from 
    users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
  where postlinks_1.postid is not NULL
  group by users_1.location
  limit 10)
EXCEPT
(select  
    posts_1.title, 
    min(
      posts_1.creationdate), 
    min(
      posts_1.id)
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  group by posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.tags, posts_1.title
  limit 38);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.userid = comments_1.postid
  limit 25)
INTERSECT
(select  
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.creationdate >= posts_1.creationdate
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags
  limit 6);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.websiteurl, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.aboutme is not NULL
  group by users_1.websiteurl
  limit 26)
INTERSECT
(select  
    max(
      posts_1.id), 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.tags, posts_1.title
  limit 22);
-- meta {"num_joins":1,"num_aggregates":9,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.creationdate, 
    posthistory_1.contentlicense, 
    posthistory_1.userid, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid, 
    posthistory_1.postid, 
    posthistory_1.text, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  limit 13)
INTERSECT
(select  
    posts_1.creationdate, 
    comments_1.contentlicense, 
    posts_1.id, 
    count(
      posts_1.acceptedanswerid), 
    posts_1.tags, 
    comments_1.id, 
    comments_1.contentlicense, 
    comments_1.postid
  from 
    comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
  where posts_1.posttypeid is not NULL
  group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, posts_1.body, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.tags
  limit 24);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.postid, 
    votes_1.userid, 
    votes_1.id, 
    max(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 11)
UNION
(select  
    min(
      users_1.creationdate), 
    users_1.id, 
    users_1.id, 
    max(
      users_1.creationdate), 
    max(
      users_1.creationdate), 
    sum(
      users_1.profileimageurl)
  from 
    users as users_1
  where users_1.websiteurl < users_1.location
  limit 12);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.userid, 
    min(
      badges_1.userid), 
    badges_1.name, 
    badges_1.id, 
    badges_1.date, 
    badges_1.class, 
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.tagbased = badges_1.tagbased
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid
  limit 2)
UNION
(select  
    comments_1.postid, 
    count(*), 
    comments_1.userdisplayname, 
    avg(
      comments_1.id), 
    comments_1.creationdate, 
    comments_1.id, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.creationdate <= comments_1.creationdate
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_1.userid, 
  comments_1.userdisplayname, 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  comments_1.postid
from 
  comments as comments_1
where comments_1.creationdate is not NULL
limit 31;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    posts_1.id, 
    posts_1.contentlicense, 
    votes_1.userid
  from 
    posts as posts_1
      inner join votes as votes_1
        inner join posts as posts_2
        on (votes_1.id = posts_2.id )
      on (posts_1.id = posts_2.id )
  where posts_2.body = posts_1.body
  limit 32)
EXCEPT
(select  
    votes_2.postid, 
    votes_2.userid, 
    avg(
      votes_2.id), 
    votes_2.userid
  from 
    votes as votes_2
  where votes_2.userid >= votes_2.postid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      votes_1.votetypeid), 
    votes_1.userid, 
    count(
      votes_1.votetypeid), 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.id, votes_1.userid
  limit 22)
EXCEPT
(select  
    max(
      badges_1.id), 
    badges_1.id, 
    count(
      badges_1.id), 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.name >= badges_1.name
  group by badges_1.class, badges_1.id, badges_1.name
  limit 25);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location, 
    users_1.aboutme
  from 
    users as users_1
  where users_1.location < users_1.websiteurl
  limit 21)
INTERSECT
(select  
    comments_2.text, 
    comments_1.contentlicense
  from 
    comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
  where comments_2.creationdate = comments_1.creationdate
  group by comments_1.userdisplayname, comments_2.contentlicense, comments_2.postid, comments_2.userid
  limit 9);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  limit 4)
UNION
(select  
    posthistory_1.creationdate, 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 35);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.owneruserid
from 
  comments as comments_1
      inner join posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      on (comments_1.id = posts_1.id )
    inner join postlinks as postlinks_1
    on (posts_2.id = postlinks_1.id )
where postlinks_1.id is not NULL
limit 9;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      users_1.accountid), 
    users_1.websiteurl, 
    users_1.aboutme, 
    users_1.accountid, 
    min(
      users_1.accountid), 
    users_1.location, 
    posts_1.contentlicense, 
    posts_1.id, 
    users_1.creationdate, 
    users_1.profileimageurl, 
    sum(
      posts_1.parentid)
  from 
    posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where users_1.location is not NULL
  group by posts_1.contentlicense, posts_1.id, users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 32)
UNION
(select  
    count(
      users_2.id), 
    users_2.location, 
    users_2.aboutme, 
    users_2.profileimageurl, 
    min(
      users_2.id), 
    max(
      users_2.creationdate), 
    users_2.location, 
    users_2.accountid, 
    users_2.creationdate, 
    count(
      users_2.websiteurl), 
    avg(
      users_2.id)
  from 
    users as users_2
  where users_2.accountid is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.owneruserid, 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  limit 21)
EXCEPT
(select  
    posts_2.posttypeid, 
    posts_2.ownerdisplayname
  from 
    posts as posts_2
  where posts_2.ownerdisplayname is not NULL
  group by posts_2.ownerdisplayname, posts_2.parentid
  limit 28);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_2.creationdate, 
    sum(
      postlinks_2.postid), 
    badges_1.tagbased
  from 
    postlinks as postlinks_1
        inner join badges as badges_1
        on (postlinks_1.id = badges_1.id )
      inner join postlinks as postlinks_2
      on (badges_1.id = postlinks_2.id )
  where postlinks_1.postid is not NULL
  group by badges_1.tagbased, postlinks_2.creationdate
  limit 39)
UNION
(select  
    postlinks_3.creationdate, 
    avg(
      postlinks_3.relatedpostid), 
    max(
      postlinks_3.creationdate)
  from 
    postlinks as postlinks_3
  where postlinks_3.postid is not NULL
  group by postlinks_3.creationdate, postlinks_3.id, postlinks_3.linktypeid, postlinks_3.relatedpostid
  limit 30);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.id, 
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.id is not NULL
  limit 34)
UNION
(select  
    votes_1.id, 
    posthistory_1.revisionguid
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where votes_1.creationdate <= posthistory_1.creationdate
  limit 42);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.text, 
    badges_1.userid, 
    badges_1.date, 
    comments_1.userdisplayname, 
    comments_1.postid, 
    badges_1.tagbased, 
    badges_1.id, 
    badges_1.name, 
    badges_1.class, 
    max(
      badges_1.date), 
    comments_1.id, 
    comments_1.userid
  from 
    badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
  where badges_1.class is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 2)
EXCEPT
(select  
    min(
      users_1.creationdate), 
    users_1.accountid, 
    max(
      users_1.id), 
    users_1.websiteurl, 
    users_1.profileimageurl, 
    min(
      users_1.creationdate), 
    users_1.accountid, 
    max(
      users_1.creationdate), 
    users_1.accountid, 
    max(
      users_1.creationdate), 
    users_1.id, 
    max(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.accountid, users_1.displayname, users_1.id, users_1.profileimageurl
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select distinct 
    votes_1.votetypeid, 
    votes_1.postid, 
    votes_1.creationdate, 
    votes_1.userid, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 6)
INTERSECT
(select  
    badges_1.class, 
    badges_1.class, 
    badges_1.date, 
    badges_1.userid, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.tagbased < badges_1.tagbased
  limit 17);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.creationdate
from 
  users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
    inner join votes as votes_1
    on (users_1.id = votes_1.id )
where badges_1.userid is not NULL
limit 22;
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      users_1.creationdate), 
    users_1.displayname, 
    postlinks_1.creationdate, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, users_1.displayname
  limit 31)
INTERSECT
(select  
    min(
      comments_1.creationdate), 
    comments_1.userdisplayname, 
    comments_1.creationdate, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.creationdate > comments_1.creationdate
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userdisplayname, comments_1.userid
  limit 26);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.parentid, 
    posts_1.acceptedanswerid, 
    posts_1.posttypeid, 
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.body is not NULL
  limit 17)
UNION
(select  
    badges_1.id, 
    badges_1.class, 
    badges_1.class, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased
  limit 13);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    postlinks_1.creationdate), 
  avg(
    postlinks_1.postid), 
  min(
    postlinks_1.creationdate), 
  users_1.id, 
  min(
    users_1.id), 
  max(
    users_1.creationdate), 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  users_1.location
from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where postlinks_1.creationdate is not NULL
group by postlinks_1.id, postlinks_1.linktypeid, users_1.id, users_1.location
limit 29;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.aboutme
  from 
    users as users_1
  where users_1.aboutme is not NULL
  limit 34)
UNION
(select  
    users_2.displayname
  from 
    users as users_2
  where users_2.aboutme is not NULL
  limit 10);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.title
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  limit 42)
UNION
(select  
    comments_1.userdisplayname
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where comments_1.postid >= comments_1.id
  limit 31);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  max(
    postlinks_1.linktypeid)
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 4;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.userid, 
  users_1.displayname, 
  users_1.profileimageurl, 
  users_1.accountid, 
  badges_1.class
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.accountid is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.profileimageurl, 
    users_1.websiteurl, 
    users_1.id, 
    max(
      users_1.creationdate), 
    users_1.displayname, 
    users_1.accountid, 
    users_1.location, 
    users_1.aboutme
  from 
    users as users_1
  where users_1.id is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 31)
UNION
(select  
    count(
      badges_1.id), 
    badges_1.name, 
    badges_1.id, 
    min(
      badges_1.date), 
    badges_1.name, 
    badges_1.id, 
    avg(
      badges_1.class), 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 17);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.id, 
    votes_1.creationdate, 
    votes_1.id, 
    votes_1.votetypeid, 
    votes_1.userid, 
    max(
      votes_1.creationdate), 
    comments_1.text
  from 
    comments as comments_1
      inner join votes as votes_1
      on (comments_1.id = votes_1.id )
  where comments_1.contentlicense is not NULL
  group by comments_1.id, comments_1.text, votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 20)
UNION
(select  
    posthistory_1.id, 
    posthistory_1.creationdate, 
    max(
      posthistory_1.postid), 
    min(
      posthistory_2.creationdate), 
    min(
      posthistory_1.creationdate), 
    min(
      posthistory_1.creationdate), 
    posthistory_2.contentlicense
  from 
    posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_2.postid >= posthistory_2.id
  group by posthistory_1.userdisplayname, posthistory_2.revisionguid
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_2.creationdate, 
  postlinks_2.postid
from 
  postlinks as postlinks_1
    inner join postlinks as postlinks_2
    on (postlinks_1.id = postlinks_2.id )
where postlinks_1.id is not NULL
limit 14;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.body
  from 
    posts as posts_1
  where posts_1.creationdate <= posts_1.creationdate
  limit 35)
EXCEPT
(select  
    users_1.location
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 5);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.votetypeid, 
    votes_1.creationdate, 
    min(
      votes_1.creationdate), 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 36)
INTERSECT
(select  
    count(
      posts_1.tags), 
    posts_1.id, 
    avg(
      posts_1.posttypeid), 
    min(
      posts_1.creationdate), 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    badges_1.class, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.class is not NULL
  limit 10)
EXCEPT
(select  
    posts_1.posttypeid, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.creationdate < posts_1.creationdate
  limit 33);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.text, 
    posts_1.id
  from 
    posts as posts_1
      inner join comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      on (posts_1.id = users_1.id )
  where posts_1.contentlicense is not NULL
  limit 30)
EXCEPT
(select  
    comments_2.contentlicense, 
    postlinks_1.postid
  from 
    comments as comments_2
      inner join postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      on (comments_2.id = votes_1.id )
  where votes_1.id is not NULL
  group by comments_2.contentlicense, postlinks_1.postid, votes_1.creationdate, votes_1.id
  limit 32);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 19)
UNION
(select  
    max(
      posthistory_1.userid), 
    posthistory_1.id, 
    posthistory_1.id, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  group by posthistory_1.revisionguid
  limit 7);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  votes_1.userid, 
  votes_1.creationdate, 
  votes_1.votetypeid, 
  min(
    votes_1.creationdate), 
  sum(
    votes_1.id)
from 
  votes as votes_1
where votes_1.votetypeid > votes_1.userid
group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
limit 15;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      posts_1.creationdate), 
    posts_1.body, 
    posts_1.creationdate, 
    posts_1.tags
  from 
    posts as posts_1
  where posts_1.ownerdisplayname = posts_1.tags
  group by posts_1.body, posts_1.creationdate, posts_1.tags
  limit 24)
INTERSECT
(select  
    min(
      comments_1.creationdate), 
    comments_1.userdisplayname, 
    comments_1.creationdate, 
    count(*)
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  limit 36);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  avg(
    users_1.profileimageurl), 
  votes_1.id, 
  users_1.accountid, 
  users_1.websiteurl, 
  users_1.location
from 
  votes as votes_1
    inner join users as users_1
    on (votes_1.id = users_1.id )
where users_1.profileimageurl is not NULL
group by users_1.aboutme, users_1.accountid, users_1.location, users_1.websiteurl, votes_1.id
limit 2;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userid, 
    comments_1.creationdate, 
    comments_1.contentlicense, 
    count(
      comments_1.contentlicense), 
    comments_1.id, 
    comments_1.text, 
    comments_1.postid, 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.postid <= comments_1.id
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 18)
UNION
(select  
    count(
      users_1.aboutme), 
    users_1.creationdate, 
    users_1.displayname, 
    max(
      users_1.id), 
    users_1.id, 
    users_1.websiteurl, 
    users_1.id, 
    users_1.displayname
  from 
    users as users_1
  where users_1.displayname is not NULL
  limit 13);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  sum(
    postlinks_1.relatedpostid), 
  postlinks_1.postid, 
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  badges_1.class, 
  max(
    postlinks_1.creationdate), 
  badges_1.date, 
  posthistory_1.text
from 
  badges as badges_1
    inner join postlinks as postlinks_1
      inner join posthistory as posthistory_1
      on (postlinks_1.id = posthistory_1.id )
    on (badges_1.id = posthistory_1.id )
where postlinks_1.id = badges_1.class
group by badges_1.class, badges_1.date, posthistory_1.id, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid, postlinks_1.postid
limit 15;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      users_1.profileimageurl), 
    min(
      users_1.creationdate), 
    users_2.profileimageurl, 
    users_2.aboutme
  from 
    users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
  where users_2.location is not NULL
  group by users_2.aboutme, users_2.profileimageurl
  limit 14)
INTERSECT
(select  
    sum(
      posthistory_1.postid), 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userid, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 6);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.contentlicense, 
    comments_1.contentlicense, 
    posts_1.body, 
    comments_2.id
  from 
    comments as comments_1
        inner join posts as posts_1
        on (comments_1.id = posts_1.id )
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
  where comments_2.text is not NULL
  limit 23)
EXCEPT
(select  
    comments_3.userdisplayname, 
    max(
      comments_3.creationdate), 
    comments_3.text, 
    sum(
      comments_3.id)
  from 
    comments as comments_3
  where comments_3.id is not NULL
  group by comments_3.creationdate, comments_3.id, comments_3.postid, comments_3.text, comments_3.userdisplayname, comments_3.userid
  limit 38);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.postid, 
    posthistory_1.comment, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.contentlicense, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid
  limit 3)
INTERSECT
(select  
    postlinks_1.postid, 
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    sum(
      postlinks_1.relatedpostid), 
    postlinks_1.id, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 22);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posthistory_1.revisionguid, 
  users_1.displayname, 
  users_1.id, 
  max(
    posthistory_1.creationdate), 
  users_2.profileimageurl, 
  users_1.websiteurl
from 
  posthistory as posthistory_1
    inner join users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
    on (posthistory_1.id = users_1.id )
where users_1.profileimageurl is not NULL
group by posthistory_1.revisionguid, posthistory_1.userid, users_1.displayname, users_1.id, users_1.websiteurl, users_2.profileimageurl
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.id, 
  badges_1.tagbased, 
  badges_1.date, 
  badges_1.class, 
  max(
    badges_1.userid)
from 
  badges as badges_1
where badges_1.name > badges_1.name
group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased
limit 18;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name, 
    min(
      users_1.accountid), 
    badges_1.id
  from 
    comments as comments_1
        inner join badges as badges_1
        on (comments_1.id = badges_1.id )
      inner join users as users_1
      on (badges_1.id = users_1.id )
  where badges_1.tagbased >= badges_1.tagbased
  group by badges_1.id, badges_1.name
  limit 19)
INTERSECT
(select  
    max(
      posts_1.creationdate), 
    count(*), 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.ownerdisplayname = posts_1.contentlicense
  group by posts_1.ownerdisplayname
  limit 8);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.userid, 
    votes_1.postid, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.postid, votes_1.userid
  limit 5)
EXCEPT
(select  
    postlinks_1.postid, 
    postlinks_1.linktypeid, 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 8);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    posthistory_1.revisionguid, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.text, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.comment, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text
  limit 3)
EXCEPT
(select  
    min(
      votes_1.id), 
    min(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    min(
      votes_1.votetypeid), 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.votetypeid
  limit 11);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.date, 
    badges_1.userid, 
    users_1.id, 
    users_1.profileimageurl, 
    users_1.displayname, 
    badges_1.tagbased, 
    badges_1.class
  from 
    users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
  where users_1.accountid is not NULL
  limit 30)
UNION
(select  
    posts_1.creationdate, 
    sum(
      posts_1.parentid), 
    min(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    posts_1.contentlicense, 
    max(
      posts_1.parentid), 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  limit 27);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.creationdate, 
    badges_1.userid, 
    posthistory_1.userid
  from 
    badges as badges_1
      inner join posthistory as posthistory_1
          inner join votes as votes_1
          on (posthistory_1.id = votes_1.id )
        inner join postlinks as postlinks_1
        on (posthistory_1.id = postlinks_1.id )
      on (badges_1.id = posthistory_1.id )
  where votes_1.postid is not NULL
  limit 3)
EXCEPT
(select  
    badges_2.date, 
    badges_2.userid, 
    badges_2.class
  from 
    badges as badges_2
  where badges_2.name >= badges_2.name
  group by badges_2.id, badges_2.name, badges_2.tagbased
  limit 2);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      posts_1.creationdate), 
    posthistory_1.text, 
    votes_1.userid
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
        inner join votes as votes_1
        on (posthistory_1.id = votes_1.id )
      on (posts_1.id = votes_1.id )
  where votes_1.postid is not NULL
  group by posthistory_1.text, votes_1.userid
  limit 21)
UNION
(select  
    max(
      votes_2.creationdate), 
    max(
      votes_2.creationdate), 
    votes_2.postid
  from 
    votes as votes_2
  where votes_2.votetypeid is not NULL
  group by votes_2.creationdate, votes_2.id, votes_2.postid, votes_2.votetypeid
  limit 38);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.creationdate, 
    postlinks_1.postid
  from 
    users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
  where postlinks_1.postid is not NULL
  limit 6)
INTERSECT
(select  
    min(
      votes_1.creationdate), 
    votes_1.creationdate, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 13);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      comments_1.creationdate), 
    posthistory_1.userid, 
    comments_1.contentlicense, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.postid, 
    comments_1.text, 
    comments_1.userdisplayname, 
    comments_1.userid, 
    comments_1.postid, 
    comments_1.creationdate, 
    posthistory_1.creationdate
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where posthistory_1.revisionguid is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.userid
  limit 4)
EXCEPT
(select  
    min(
      posts_1.creationdate), 
    count(
      posts_1.body), 
    posts_1.tags, 
    max(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    posts_1.ownerdisplayname, 
    min(
      posts_1.creationdate), 
    max(
      posts_1.posttypeid), 
    posts_1.acceptedanswerid, 
    posts_1.creationdate, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 34)
INTERSECT
(select  
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.id is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.id, 
    posthistory_1.contentlicense, 
    posthistory_1.posthistorytypeid, 
    posts_1.posttypeid, 
    posts_1.title
  from 
    posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
  where posts_1.owneruserid <= posthistory_1.userid
  limit 34)
EXCEPT
(select  
    votes_1.postid, 
    min(
      votes_1.creationdate), 
    count(*), 
    votes_1.postid, 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.id < votes_1.votetypeid
  limit 1);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userid, 
    avg(
      comments_1.postid)
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  group by comments_1.userid
  limit 36)
EXCEPT
(select  
    badges_1.userid, 
    avg(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.date is not NULL
  group by badges_1.class
  limit 1);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id, 
    votes_1.postid, 
    comments_1.id, 
    votes_1.userid, 
    comments_1.userid, 
    comments_1.postid, 
    badges_1.class, 
    votes_1.id, 
    badges_1.date
  from 
    votes as votes_1
      inner join badges as badges_1
        inner join comments as comments_1
        on (badges_1.id = comments_1.id )
      on (votes_1.id = comments_1.id )
  where comments_1.contentlicense is not NULL
  limit 38)
EXCEPT
(select  
    posts_1.id, 
    posts_1.owneruserid, 
    posts_1.parentid, 
    count(*), 
    posts_1.posttypeid, 
    posts_1.parentid, 
    max(
      posts_1.creationdate), 
    min(
      posts_1.creationdate), 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.body is not NULL
  group by posts_1.id, posts_1.tags, posts_1.title
  limit 32);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  min(
    badges_1.date), 
  badges_1.name, 
  max(
    badges_1.date), 
  badges_1.class, 
  badges_1.userid, 
  badges_1.id
from 
  badges as badges_1
where badges_1.userid is not NULL
group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
limit 30;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userid, 
    posts_1.body
  from 
    posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where comments_1.contentlicense is not NULL
  limit 13)
EXCEPT
(select  
    posthistory_1.postid, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  limit 18);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.id, 
    min(
      votes_1.creationdate), 
    votes_1.postid, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.id, votes_1.postid, votes_1.userid
  limit 20)
UNION
(select  
    posthistory_1.postid, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userid, 
    postlinks_1.linktypeid
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where posthistory_1.postid is not NULL
  group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.text, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 4);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.userid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 3)
EXCEPT
(select  
    posts_1.parentid, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  limit 3);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.creationdate, 
    users_1.websiteurl
  from 
    badges as badges_1
          inner join comments as comments_1
          on (badges_1.id = comments_1.id )
        inner join users as users_1
        on (badges_1.id = users_1.id )
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
  where badges_1.name is not NULL
  limit 20)
INTERSECT
(select  
    max(
      posts_2.creationdate), 
    posts_2.contentlicense
  from 
    posts as posts_2
  where posts_2.creationdate >= posts_2.creationdate
  group by posts_2.posttypeid
  limit 35);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  min(
    users_1.accountid), 
  users_1.accountid
from 
  users as users_1
    inner join comments as comments_1
    on (users_1.id = comments_1.id )
where comments_1.id is not NULL
group by users_1.accountid, users_1.profileimageurl
limit 17;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.contentlicense, 
  max(
    posts_2.creationdate), 
  badges_1.name
from 
  posts as posts_1
      inner join badges as badges_1
      on (posts_1.id = badges_1.id )
    inner join posts as posts_2
    on (badges_1.id = posts_2.id )
where posts_1.posttypeid is not NULL
group by badges_1.name, posts_1.contentlicense
limit 42;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.id, 
    comments_1.creationdate, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  limit 12)
INTERSECT
(select  
    postlinks_1.postid, 
    max(
      postlinks_1.creationdate), 
    count(*)
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where posthistory_1.postid is not NULL
  limit 17);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select distinct 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid
from 
  posthistory as posthistory_1
where posthistory_1.postid is not NULL
limit 40;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    sum(
      postlinks_1.postid), 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    postlinks_1.id, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.id < postlinks_1.linktypeid
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 40)
UNION
(select  
    comments_1.id, 
    sum(
      comments_1.postid), 
    comments_1.postid, 
    comments_1.userid, 
    max(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    min(
      comments_1.userid), 
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  limit 36);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_2.id, 
    postlinks_1.postid, 
    postlinks_2.postid
  from 
    postlinks as postlinks_1
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
  where postlinks_1.id is not NULL
  limit 4)
INTERSECT
(select  
    users_1.profileimageurl, 
    avg(
      users_1.accountid), 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid, 
    badges_1.name, 
    badges_1.id, 
    votes_1.creationdate, 
    badges_1.class
  from 
    votes as votes_1
      inner join badges as badges_1
      on (votes_1.id = badges_1.id )
  where badges_1.date is not NULL
  limit 18)
EXCEPT
(select  
    posthistory_1.userid, 
    posthistory_1.comment, 
    posthistory_1.userid, 
    posthistory_1.creationdate, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  limit 30);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  posthistory_1.postid, 
  posthistory_2.userid, 
  max(
    posthistory_3.creationdate), 
  count(*), 
  posthistory_3.posthistorytypeid
from 
  posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      inner join posthistory as posthistory_3
      on (posthistory_2.id = posthistory_3.id )
    inner join postlinks as postlinks_1
      inner join posthistory as posthistory_4
      on (postlinks_1.id = posthistory_4.id )
    on (posthistory_1.id = postlinks_1.id )
where posthistory_3.userdisplayname is not NULL
group by posthistory_1.postid, posthistory_2.userid, posthistory_3.posthistorytypeid
limit 24;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.id, 
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 2;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userdisplayname, 
  posthistory_1.userid, 
  posthistory_1.contentlicense
from 
  posthistory as posthistory_1
where posthistory_1.text is not NULL
limit 28;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.profileimageurl, 
    users_1.id, 
    users_1.websiteurl, 
    users_1.accountid, 
    users_1.creationdate, 
    max(
      users_1.creationdate), 
    users_1.aboutme
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.profileimageurl, users_1.websiteurl
  limit 12)
EXCEPT
(select  
    posthistory_1.id, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userdisplayname, 
    posthistory_1.userid, 
    posthistory_1.creationdate, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
  limit 23);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.id, 
    max(
      comments_1.id), 
    comments_1.userid, 
    comments_1.userdisplayname, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.id < comments_1.postid
  group by comments_1.id, comments_1.userdisplayname, comments_1.userid
  limit 33)
EXCEPT
(select  
    votes_1.postid, 
    count(
      votes_1.userid), 
    votes_1.votetypeid, 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.postid, 
    comments_1.userid, 
    comments_1.id, 
    max(
      comments_1.creationdate), 
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.id is not NULL
  group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.userid
  limit 6)
EXCEPT
(select  
    count(*), 
    posts_1.acceptedanswerid, 
    posts_1.posttypeid, 
    max(
      posts_1.creationdate), 
    posts_1.body
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.title
  limit 21);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location, 
    users_1.id
  from 
    users as users_1
  where users_1.displayname is not NULL
  limit 34)
INTERSECT
(select  
    posts_1.contentlicense, 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid = posts_1.owneruserid
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.id, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 9);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    posthistory_1.posthistorytypeid, 
    posts_1.tags, 
    min(
      posts_1.creationdate), 
    posthistory_1.postid, 
    posts_1.creationdate, 
    posthistory_1.id, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.comment, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posts_1.creationdate, posts_1.tags
  limit 25)
EXCEPT
(select  
    min(
      posthistory_2.creationdate), 
    posthistory_2.userid, 
    posthistory_2.contentlicense, 
    min(
      posthistory_2.creationdate), 
    posthistory_2.id, 
    posthistory_2.creationdate, 
    posthistory_2.posthistorytypeid, 
    max(
      posthistory_2.creationdate)
  from 
    posthistory as posthistory_2
  where posthistory_2.userdisplayname is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":10,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.websiteurl, 
    count(
      users_1.location), 
    max(
      users_1.accountid), 
    users_1.aboutme, 
    users_1.profileimageurl, 
    users_1.creationdate, 
    users_1.id, 
    users_1.location
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 27)
INTERSECT
(select  
    posthistory_1.comment, 
    min(
      posthistory_1.postid), 
    max(
      posthistory_1.postid), 
    posthistory_1.userdisplayname, 
    posthistory_1.id, 
    posthistory_1.creationdate, 
    posthistory_1.posthistorytypeid, 
    count(
      posthistory_1.contentlicense)
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
  limit 11);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  comments_1.userdisplayname, 
  comments_1.postid, 
  max(
    posthistory_1.creationdate), 
  posthistory_1.contentlicense, 
  comments_1.text, 
  comments_1.id, 
  posthistory_1.creationdate, 
  posthistory_1.revisionguid, 
  posthistory_1.userdisplayname, 
  comments_1.contentlicense
from 
  posthistory as posthistory_1
    inner join comments as comments_1
    on (posthistory_1.id = comments_1.id )
where comments_1.id is not NULL
group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 39;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.location, 
    users_1.id, 
    users_1.aboutme
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 17)
UNION
(select  
    avg(
      postlinks_1.postid), 
    postlinks_1.id, 
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 23);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.id, 
    min(
      posthistory_1.postid), 
    posts_1.acceptedanswerid, 
    posthistory_2.userid, 
    posthistory_2.text, 
    postlinks_1.id, 
    posthistory_1.posthistorytypeid, 
    avg(
      posts_1.posttypeid)
  from 
    postlinks as postlinks_1
      inner join posthistory as posthistory_1
        inner join posts as posts_1
          inner join posthistory as posthistory_2
          on (posts_1.id = posthistory_2.id )
        on (posthistory_1.id = posts_1.id )
      on (postlinks_1.id = posthistory_1.id )
  where posts_1.tags < posts_1.contentlicense
  group by posthistory_1.posthistorytypeid, posthistory_2.text, posthistory_2.userid, postlinks_1.id, posts_1.acceptedanswerid, posts_1.id
  limit 4)
UNION
(select  
    posthistory_3.posthistorytypeid, 
    min(
      posthistory_3.posthistorytypeid), 
    posts_2.owneruserid, 
    max(
      posts_2.creationdate), 
    posts_2.title, 
    posthistory_3.posthistorytypeid, 
    posts_2.id, 
    sum(
      posts_2.parentid)
  from 
    posts as posts_2
      inner join posthistory as posthistory_3
      on (posts_2.id = posthistory_3.id )
  where posthistory_3.creationdate is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":10,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.comment
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
  where posts_1.tags is not NULL
  limit 2)
UNION
(select  
    users_1.websiteurl
  from 
    users as users_1
  where users_1.profileimageurl > users_1.id
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 10);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    comments_1.text, 
    users_1.websiteurl, 
    users_1.aboutme
  from 
    votes as votes_1
        inner join users as users_1
        on (votes_1.id = users_1.id )
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
  where users_1.websiteurl = comments_1.contentlicense
  group by comments_1.text, users_1.aboutme, users_1.websiteurl
  limit 31)
UNION
(select  
    count(*), 
    comments_2.contentlicense, 
    comments_2.text, 
    comments_2.userdisplayname
  from 
    comments as comments_2
  where comments_2.creationdate is not NULL
  group by comments_2.contentlicense, comments_2.creationdate, comments_2.id, comments_2.text, comments_2.userdisplayname, comments_2.userid
  limit 24);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  sum(
    votes_1.votetypeid), 
  sum(
    comments_1.userid), 
  comments_1.creationdate, 
  min(
    posts_1.creationdate), 
  posts_1.id
from 
  comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where comments_1.contentlicense is not NULL
group by comments_1.creationdate, comments_1.userdisplayname, posts_1.id
limit 38;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      votes_1.votetypeid), 
    badges_1.name, 
    max(
      votes_1.postid), 
    badges_1.id, 
    votes_1.userid, 
    badges_1.date, 
    votes_1.creationdate
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where badges_1.name > badges_1.name
  group by badges_1.date, badges_1.id, badges_1.name, votes_1.creationdate, votes_1.userid
  limit 10)
UNION
(select  
    avg(
      users_1.id), 
    users_1.displayname, 
    count(
      users_1.profileimageurl), 
    users_1.accountid, 
    sum(
      users_1.accountid), 
    users_1.creationdate, 
    users_1.creationdate
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.location, users_1.websiteurl
  limit 18);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.location, 
    users_1.creationdate, 
    users_1.websiteurl, 
    users_1.accountid
  from 
    users as users_1
  where users_1.aboutme >= users_1.displayname
  limit 41)
UNION
(select  
    badges_1.name, 
    badges_1.date, 
    badges_1.name, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 16);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.tagbased, 
    badges_1.name, 
    badges_1.date, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.name is not NULL
  limit 34)
INTERSECT
(select  
    badges_2.tagbased, 
    avg(
      comments_1.id), 
    min(
      posts_1.creationdate), 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
        inner join users as users_1
        on (posts_1.id = users_1.id )
      inner join badges as badges_2
        inner join comments as comments_1
          inner join posts as posts_2
            inner join votes as votes_1
            on (posts_2.id = votes_1.id )
          on (comments_1.id = votes_1.id )
        on (badges_2.id = comments_1.id )
      on (users_1.id = comments_1.id )
  where users_1.creationdate >= posts_1.creationdate
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location, 
    users_1.profileimageurl, 
    max(
      comments_1.id)
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where users_1.accountid is not NULL
  group by users_1.location, users_1.profileimageurl
  limit 34)
INTERSECT
(select  
    min(
      votes_1.creationdate), 
    votes_1.postid, 
    max(
      votes_1.id)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 14);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.creationdate, 
    users_1.id, 
    users_1.displayname, 
    users_1.accountid, 
    count(*), 
    users_1.aboutme, 
    users_1.websiteurl
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.websiteurl
  limit 25)
UNION
(select  
    posthistory_1.creationdate, 
    posthistory_1.id, 
    posthistory_1.comment, 
    posthistory_1.postid, 
    max(
      posthistory_1.posthistorytypeid), 
    posthistory_1.comment, 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
  limit 42);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      posthistory_1.creationdate), 
    posthistory_1.posthistorytypeid, 
    posthistory_1.postid, 
    posthistory_1.userid, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.userid
  limit 17)
INTERSECT
(select  
    max(
      posthistory_2.creationdate), 
    posthistory_2.id, 
    posthistory_2.userid, 
    posthistory_2.id, 
    posthistory_2.posthistorytypeid
  from 
    posthistory as posthistory_2
  where posthistory_2.text is not NULL
  limit 2);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(*), 
    votes_1.votetypeid, 
    votes_1.postid, 
    votes_1.userid, 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where votes_1.postid < posthistory_1.id
  group by votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 35)
INTERSECT
(select  
    max(
      posts_1.id), 
    posts_1.parentid, 
    posts_1.parentid, 
    posts_1.acceptedanswerid, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.id, posts_1.parentid, posts_1.tags
  limit 6);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.title, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.owneruserid = posts_1.acceptedanswerid
  limit 4)
INTERSECT
(select  
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.postid
  limit 7);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.id
  from 
    comments as comments_1
  where comments_1.userdisplayname <= comments_1.text
  limit 22)
UNION
(select  
    posts_1.acceptedanswerid
  from 
    posts as posts_1
        inner join users as users_1
        on (posts_1.id = users_1.id )
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where users_1.creationdate < posts_2.creationdate
  group by posts_1.body, posts_1.contentlicense, posts_2.ownerdisplayname, posts_2.title, users_1.aboutme, users_1.id
  limit 23);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.userid, 
    posts_1.owneruserid, 
    badges_1.tagbased, 
    posts_1.body, 
    comments_1.text
  from 
    badges as badges_1
        inner join posts as posts_1
        on (badges_1.id = posts_1.id )
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where badges_1.tagbased <= badges_1.tagbased
  limit 21)
EXCEPT
(select  
    users_1.accountid, 
    users_1.profileimageurl, 
    min(
      users_1.accountid), 
    users_1.location, 
    users_1.displayname
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  group by users_1.displayname, users_1.profileimageurl
  limit 29);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      users_1.accountid), 
    max(
      users_1.creationdate), 
    users_1.displayname, 
    users_1.location, 
    users_1.websiteurl, 
    users_1.aboutme, 
    users_1.accountid, 
    users_1.creationdate, 
    count(
      users_1.creationdate), 
    users_1.profileimageurl, 
    count(*), 
    users_1.id
  from 
    users as users_1
  where users_1.creationdate = users_1.creationdate
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl
  limit 24)
EXCEPT
(select  
    count(*), 
    max(
      votes_1.creationdate), 
    users_2.websiteurl, 
    min(
      users_2.creationdate), 
    users_2.aboutme, 
    users_2.displayname, 
    users_2.id, 
    votes_1.creationdate, 
    min(
      users_2.id), 
    users_2.id, 
    min(
      users_2.id), 
    votes_1.postid
  from 
    users as users_2
      inner join votes as votes_1
      on (users_2.id = votes_1.id )
  where users_2.id is not NULL
  group by users_2.aboutme, users_2.location, users_2.profileimageurl, votes_1.postid
  limit 12);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.contentlicense, 
    posthistory_1.userid, 
    posthistory_1.comment, 
    posthistory_1.id, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid, 
    count(*), 
    posthistory_1.creationdate, 
    posthistory_1.userdisplayname, 
    max(
      posthistory_1.userid), 
    count(*), 
    posthistory_1.text, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname, posthistory_1.userid
  limit 17)
EXCEPT
(select  
    comments_1.text, 
    comments_1.postid, 
    comments_1.contentlicense, 
    comments_1.userid, 
    comments_1.postid, 
    comments_1.userdisplayname, 
    min(
      comments_1.id), 
    comments_1.creationdate, 
    comments_1.text, 
    min(
      comments_1.postid), 
    max(
      comments_1.postid), 
    comments_1.contentlicense, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.creationdate > comments_1.creationdate
  limit 20);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      postlinks_2.creationdate), 
    postlinks_2.relatedpostid
  from 
    users as users_1
        inner join postlinks as postlinks_1
        on (users_1.id = postlinks_1.id )
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
  where postlinks_2.id is not NULL
  group by postlinks_2.relatedpostid
  limit 18)
INTERSECT
(select  
    max(
      users_2.creationdate), 
    users_2.id
  from 
    users as users_2
  where users_2.location is not NULL
  limit 31);
-- meta {"num_joins":4,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    posts_1.parentid, 
    postlinks_1.id, 
    postlinks_1.relatedpostid, 
    min(
      badges_1.date), 
    min(
      posts_1.creationdate), 
    posts_1.creationdate, 
    badges_1.date, 
    badges_1.class
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
        inner join posts as posts_1
        on (badges_1.id = posts_1.id )
      on (postlinks_1.id = badges_1.id )
  where posts_1.title >= posts_1.contentlicense
  group by badges_1.class, badges_1.date, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.creationdate, posts_1.parentid
  limit 18)
UNION
(select  
    postlinks_3.id, 
    max(
      postlinks_2.id), 
    postlinks_3.relatedpostid, 
    count(*), 
    max(
      postlinks_2.creationdate), 
    max(
      postlinks_3.creationdate), 
    postlinks_2.creationdate, 
    postlinks_3.creationdate, 
    comments_1.postid
  from 
    comments as comments_1
      inner join postlinks as postlinks_2
        inner join postlinks as postlinks_3
        on (postlinks_2.id = postlinks_3.id )
      on (comments_1.id = postlinks_3.id )
  where postlinks_2.postid is not NULL
  group by comments_1.userdisplayname, comments_1.userid, postlinks_2.creationdate, postlinks_2.relatedpostid, postlinks_3.id, postlinks_3.relatedpostid
  limit 24);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 24)
INTERSECT
(select  
    badges_2.class
  from 
    badges as badges_2
  where badges_2.id is not NULL
  group by badges_2.class, badges_2.date, badges_2.name
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
limit 11;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 14)
UNION
(select  
    users_1.accountid, 
    users_1.id
  from 
    users as users_1
  where users_1.aboutme is not NULL
  group by users_1.aboutme, users_1.location, users_1.websiteurl
  limit 5);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.displayname, 
    users_1.aboutme, 
    max(
      users_1.creationdate), 
    users_1.creationdate, 
    users_1.location, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.accountid is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.location, users_1.profileimageurl
  limit 16)
UNION
(select  
    max(
      comments_1.userid), 
    comments_1.contentlicense, 
    max(
      comments_1.creationdate), 
    max(
      comments_1.creationdate), 
    comments_1.userdisplayname, 
    avg(
      comments_1.userid)
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  group by comments_1.userdisplayname
  limit 10);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.userid > votes_1.id
  limit 6)
UNION
(select  
    min(
      votes_2.id)
  from 
    votes as votes_2
  where votes_2.postid > votes_2.votetypeid
  group by votes_2.creationdate, votes_2.postid, votes_2.votetypeid
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.creationdate, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 18)
UNION
(select  
    comments_1.creationdate, 
    comments_1.postid
  from 
    comments as comments_1
  where comments_1.userdisplayname = comments_1.contentlicense
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.id, 
  posthistory_1.text, 
  posthistory_1.postid, 
  posthistory_1.creationdate, 
  posthistory_1.comment, 
  count(*), 
  sum(
    posthistory_1.id), 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname
limit 23;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.id, 
  badges_1.tagbased, 
  votes_1.postid, 
  votes_1.creationdate
from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where votes_1.userid is not NULL
limit 13;
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_3.contentlicense, 
    min(
      comments_1.creationdate), 
    posts_1.owneruserid, 
    comments_3.id, 
    postlinks_1.linktypeid, 
    postlinks_1.relatedpostid, 
    comments_3.text
  from 
    comments as comments_1
        inner join comments as comments_2
          inner join postlinks as postlinks_1
            inner join posts as posts_1
            on (postlinks_1.id = posts_1.id )
          on (comments_2.id = postlinks_1.id )
        on (comments_1.id = postlinks_1.id )
      inner join comments as comments_3
      on (comments_1.id = comments_3.id )
  where posts_1.contentlicense > comments_2.text
  group by comments_3.contentlicense, comments_3.id, comments_3.text, postlinks_1.linktypeid, postlinks_1.relatedpostid, posts_1.owneruserid
  limit 24)
UNION
(select  
    comments_4.userdisplayname, 
    min(
      comments_4.creationdate), 
    comments_4.postid, 
    comments_4.userid, 
    comments_4.postid, 
    comments_4.id, 
    comments_4.text
  from 
    comments as comments_4
  where comments_4.creationdate >= comments_4.creationdate
  group by comments_4.contentlicense, comments_4.id, comments_4.text, comments_4.userdisplayname
  limit 13);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  limit 32)
EXCEPT
(select  
    max(
      votes_1.creationdate), 
    count(*)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid, 
    postlinks_1.postid, 
    avg(
      postlinks_1.id), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 32)
EXCEPT
(select  
    badges_1.date, 
    badges_1.userid, 
    users_1.id, 
    avg(
      badges_1.id), 
    badges_1.userid
  from 
    users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
  where users_1.displayname = users_1.location
  group by badges_1.date, badges_1.name, badges_1.userid, users_1.aboutme, users_1.accountid, users_1.creationdate
  limit 33);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where votes_1.id is not NULL
  limit 42)
INTERSECT
(select  
    min(
      comments_1.userid)
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.userid, 
  posts_1.posttypeid, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid
from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posts_1.creationdate <= posthistory_1.creationdate
limit 40;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.linktypeid < postlinks_1.postid
limit 2;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.location, 
    max(
      users_1.id)
  from 
    users as users_1
  where users_1.id is not NULL
  group by users_1.location
  limit 26)
UNION
(select  
    badges_1.name, 
    count(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.tagbased is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 14)
EXCEPT
(select  
    votes_2.votetypeid, 
    votes_2.votetypeid
  from 
    votes as votes_2
  where votes_2.userid is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.tags, 
    comments_1.id, 
    max(
      posts_1.owneruserid)
  from 
    comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
  where posts_1.ownerdisplayname is not NULL
  group by comments_1.id, posts_1.tags
  limit 27)
EXCEPT
(select  
    sum(
      votes_1.postid), 
    votes_1.postid, 
    count(*)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid
  limit 5);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.ownerdisplayname, 
    posts_1.tags
  from 
    posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where posts_1.posttypeid is not NULL
  limit 16)
INTERSECT
(select  
    badges_2.name, 
    badges_2.name
  from 
    badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
  where badges_2.tagbased > badges_1.tagbased
  group by badges_1.id, badges_1.tagbased, badges_2.class, badges_2.name, badges_2.tagbased, badges_2.userid
  limit 14);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    postlinks_1.postid, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 39)
UNION
(select  
    comments_1.userid, 
    comments_1.postid, 
    comments_1.userid, 
    comments_2.creationdate
  from 
    comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
  where comments_2.contentlicense is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.id, 
    comments_1.userdisplayname, 
    max(
      comments_1.creationdate), 
    max(
      comments_1.creationdate), 
    comments_1.creationdate, 
    comments_1.contentlicense, 
    comments_1.userid, 
    count(
      comments_1.text)
  from 
    comments as comments_1
  where comments_1.id is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.userdisplayname, comments_1.userid
  limit 5)
UNION
(select  
    posthistory_1.userid, 
    posthistory_1.comment, 
    max(
      posthistory_1.creationdate), 
    min(
      posthistory_1.creationdate), 
    posthistory_1.creationdate, 
    posthistory_1.text, 
    max(
      posthistory_1.postid), 
    count(
      posthistory_1.userdisplayname)
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
  where postlinks_1.id is not NULL
  limit 1)
UNION
(select  
    users_1.profileimageurl, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  group by users_1.displayname, users_1.id
  limit 6);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      posts_1.creationdate), 
    posts_1.posttypeid, 
    posts_1.parentid, 
    posts_1.ownerdisplayname, 
    posts_1.creationdate, 
    posts_1.title, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.body is not NULL
  group by posts_1.acceptedanswerid, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 5)
UNION
(select  
    max(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid, 
    users_1.id, 
    badges_1.name, 
    badges_1.date, 
    badges_1.name, 
    badges_1.id
  from 
    postlinks as postlinks_1
        inner join users as users_1
        on (postlinks_1.id = users_1.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where users_1.creationdate is not NULL
  limit 38);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.id
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 25)
INTERSECT
(select  
    posthistory_1.postid
  from 
    users as users_1
      inner join posthistory as posthistory_1
        inner join votes as votes_2
        on (posthistory_1.id = votes_2.id )
      on (users_1.id = posthistory_1.id )
  where votes_2.postid > users_1.id
  limit 11);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where posts_1.tags is not NULL
  limit 12)
UNION
(select  
    votes_1.id, 
    min(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 18);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    postlinks_1.id, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 1)
EXCEPT
(select  
    badges_1.id, 
    votes_1.postid, 
    badges_1.date, 
    votes_1.postid, 
    votes_1.votetypeid
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where votes_1.id is not NULL
  limit 6);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.postid, 
  min(
    comments_1.creationdate), 
  comments_1.contentlicense, 
  comments_1.creationdate, 
  max(
    comments_1.creationdate), 
  comments_1.userid, 
  comments_1.text
from 
  comments as comments_1
where comments_1.postid <= comments_1.id
group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userid
limit 37;
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(*), 
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    users_1.displayname, 
    users_1.accountid, 
    users_1.location, 
    postlinks_1.relatedpostid
  from 
    users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
  where users_1.profileimageurl is not NULL
  group by postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid, users_1.accountid, users_1.displayname, users_1.location
  limit 14)
INTERSECT
(select  
    min(
      badges_1.id), 
    badges_1.class, 
    badges_1.date, 
    badges_1.name, 
    badges_1.userid, 
    badges_1.name, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.name, badges_1.tagbased
  limit 2);
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id, 
    comments_1.text, 
    comments_1.creationdate, 
    posthistory_1.text, 
    users_1.id, 
    count(
      users_2.displayname), 
    comments_1.contentlicense, 
    users_1.creationdate, 
    users_2.location, 
    users_2.displayname, 
    posthistory_1.postid, 
    min(
      users_2.creationdate), 
    min(
      users_1.creationdate), 
    users_1.aboutme
  from 
    comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      inner join posthistory as posthistory_1
        inner join users as users_2
        on (posthistory_1.id = users_2.id )
      on (users_1.id = users_2.id )
  where posthistory_1.id is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, posthistory_1.id, posthistory_1.postid, posthistory_1.text, users_1.aboutme, users_1.creationdate, users_1.id, users_2.displayname, users_2.location
  limit 6)
INTERSECT
(select  
    comments_2.id, 
    comments_2.contentlicense, 
    comments_2.creationdate, 
    comments_2.userdisplayname, 
    max(
      comments_2.postid), 
    count(
      comments_2.id), 
    comments_2.userdisplayname, 
    comments_2.creationdate, 
    comments_2.contentlicense, 
    comments_2.contentlicense, 
    comments_2.id, 
    max(
      comments_2.creationdate), 
    max(
      comments_2.creationdate), 
    comments_2.userdisplayname
  from 
    comments as comments_2
  where comments_2.userid is not NULL
  group by comments_2.contentlicense, comments_2.id, comments_2.postid, comments_2.text, comments_2.userid
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.location, 
  users_1.displayname, 
  users_1.profileimageurl
from 
  users as users_1
where users_1.websiteurl is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.postid, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.postid
  limit 32)
UNION
(select  
    users_1.creationdate, 
    users_1.id, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 40);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.creationdate = comments_1.creationdate
  limit 11)
EXCEPT
(select  
    posthistory_1.revisionguid
  from 
    badges as badges_1
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      inner join posthistory as posthistory_1
        inner join posts as posts_1
        on (posthistory_1.id = posts_1.id )
      on (badges_1.id = posts_1.id )
  where postlinks_1.id is not NULL
  group by badges_1.class, badges_1.id, badges_1.tagbased, posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.revisionguid, postlinks_1.id, posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 28);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.postid, 
    posthistory_1.contentlicense, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 4)
INTERSECT
(select  
    votes_1.postid, 
    max(
      votes_1.userid), 
    avg(
      votes_1.id)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.userid, votes_1.votetypeid
  limit 26);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.votetypeid, 
    max(
      votes_1.creationdate), 
    votes_1.userid, 
    votes_1.creationdate, 
    count(
      votes_1.userid), 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 17)
UNION
(select  
    badges_1.class, 
    max(
      badges_1.date), 
    badges_1.class, 
    badges_1.date, 
    max(
      badges_1.class), 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.ownerdisplayname, 
    min(
      posts_1.creationdate), 
    posts_1.tags, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.tags
  limit 38)
INTERSECT
(select  
    posthistory_1.revisionguid, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.text, 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  limit 39);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    posts_1.body, 
    posts_1.owneruserid, 
    votes_1.creationdate, 
    posts_1.title, 
    votes_1.votetypeid, 
    count(
      posts_1.title)
  from 
    votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
  where votes_1.creationdate is not NULL
  group by posts_1.body, posts_1.owneruserid, posts_1.title, votes_1.creationdate, votes_1.postid, votes_1.votetypeid
  limit 33)
EXCEPT
(select  
    comments_1.userid, 
    max(
      comments_1.creationdate), 
    comments_1.userid, 
    comments_1.creationdate, 
    max(
      comments_1.creationdate), 
    comments_1.userid, 
    min(
      comments_1.userid)
  from 
    comments as comments_1
  where comments_1.text > comments_1.contentlicense
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  min(
    users_1.creationdate), 
  users_1.displayname
from 
  users as users_1
where users_1.profileimageurl is not NULL
group by users_1.displayname
limit 20;
-- meta {"num_joins":2,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      votes_1.postid)
  from 
    votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
  where votes_1.userid is not NULL
  limit 40)
UNION
(select  
    max(
      votes_2.id)
  from 
    votes as votes_2
      inner join votes as votes_3
      on (votes_2.id = votes_3.id )
  where votes_3.userid is not NULL
  group by votes_2.creationdate, votes_2.id, votes_2.postid, votes_2.userid, votes_3.creationdate, votes_3.id, votes_3.postid, votes_3.userid, votes_3.votetypeid
  limit 24);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    min(
      badges_1.class)
  from 
    badges as badges_1
        inner join posts as posts_1
        on (badges_1.id = posts_1.id )
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
  where badges_1.tagbased < badges_1.tagbased
  group by postlinks_1.linktypeid, postlinks_1.postid
  limit 40)
INTERSECT
(select  
    votes_1.userid, 
    users_1.profileimageurl, 
    count(*)
  from 
    postlinks as postlinks_2
      inner join users as users_1
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      on (postlinks_2.id = users_1.id )
  where users_1.accountid is not NULL
  group by postlinks_2.postid, users_1.id
  limit 24);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_2.votetypeid, 
    votes_2.creationdate
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.postid = votes_2.userid
  limit 32)
EXCEPT
(select  
    postlinks_1.id, 
    sum(
      comments_1.id)
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
        inner join votes as votes_3
        on (comments_1.id = votes_3.id )
      on (postlinks_1.id = votes_3.id )
  where comments_1.userdisplayname > comments_1.contentlicense
  group by comments_1.id, comments_1.postid, comments_1.text, comments_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, votes_3.creationdate, votes_3.postid, votes_3.userid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.parentid, 
    posts_1.id, 
    posts_1.owneruserid, 
    posts_1.body, 
    posts_1.contentlicense, 
    posts_1.title
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  limit 27)
UNION
(select  
    badges_1.id, 
    badges_1.id, 
    max(
      badges_1.date), 
    badges_1.name, 
    badges_1.name, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased
  limit 8);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.location = users_1.websiteurl
  limit 9)
INTERSECT
(select  
    votes_1.id
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.id, votes_1.postid, votes_1.votetypeid
  limit 13);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    min(
      comments_1.id), 
    max(
      comments_1.creationdate), 
    comments_1.creationdate, 
    comments_1.postid, 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userdisplayname
  limit 33)
EXCEPT
(select  
    min(
      votes_1.creationdate), 
    count(*), 
    max(
      votes_1.creationdate), 
    votes_1.creationdate, 
    max(
      votes_1.postid), 
    count(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_2.contentlicense, 
  comments_1.id, 
  comments_1.userid, 
  comments_1.text, 
  comments_2.creationdate
from 
  comments as comments_1
    inner join comments as comments_2
    on (comments_1.id = comments_2.id )
where comments_2.id >= comments_1.id
limit 15;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.id, 
    posts_1.parentid, 
    min(
      posts_1.creationdate), 
    posts_1.contentlicense, 
    posts_1.owneruserid, 
    posts_1.title, 
    min(
      posts_1.creationdate), 
    posts_1.ownerdisplayname, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  group by posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.title
  limit 10)
EXCEPT
(select  
    posts_3.acceptedanswerid, 
    max(
      posts_3.creationdate), 
    min(
      posts_2.creationdate), 
    posts_2.ownerdisplayname, 
    posts_3.owneruserid, 
    posts_3.contentlicense, 
    max(
      posts_2.creationdate), 
    posts_2.body, 
    posts_2.creationdate
  from 
    comments as comments_1
      inner join posts as posts_2
        inner join posts as posts_3
        on (posts_2.id = posts_3.id )
      on (comments_1.id = posts_3.id )
  where posts_3.title is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.id, 
    comments_1.userid, 
    avg(
      comments_1.userid), 
    comments_1.creationdate, 
    count(
      comments_1.creationdate), 
    comments_1.contentlicense, 
    comments_1.postid, 
    count(*)
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userid
  limit 3)
EXCEPT
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.relatedpostid, 
    sum(
      postlinks_1.linktypeid), 
    postlinks_1.creationdate, 
    min(
      postlinks_1.id), 
    max(
      postlinks_1.creationdate), 
    min(
      postlinks_1.creationdate), 
    min(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  limit 24)
INTERSECT
(select  
    posts_1.posttypeid, 
    posts_1.parentid, 
    posts_1.posttypeid, 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.postid, 
    max(
      votes_1.creationdate), 
    votes_1.creationdate, 
    count(
      users_1.aboutme), 
    max(
      votes_1.creationdate), 
    votes_1.id, 
    max(
      users_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
  where users_1.accountid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid
  limit 30)
INTERSECT
(select  
    users_2.profileimageurl, 
    min(
      users_2.creationdate), 
    users_2.creationdate, 
    count(
      users_2.websiteurl), 
    max(
      users_2.creationdate), 
    users_2.accountid, 
    min(
      users_2.creationdate), 
    min(
      users_2.creationdate)
  from 
    users as users_2
  where users_2.id is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.title, 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.title is not NULL
  limit 30)
UNION
(select  
    count(*), 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 12)
EXCEPT
(select  
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.parentid is not NULL
  group by posts_1.ownerdisplayname, posts_1.owneruserid
  limit 3);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 17)
EXCEPT
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  group by users_1.creationdate, users_1.id, users_1.profileimageurl
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    comments_1.text, 
    posts_1.parentid
  from 
    posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where posts_1.title is not NULL
  limit 18)
EXCEPT
(select  
    sum(
      postlinks_1.id), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 21);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.date, 
    badges_1.id, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.name = badges_1.name
  limit 34)
INTERSECT
(select  
    max(
      votes_1.creationdate), 
    votes_1.creationdate, 
    votes_1.postid, 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 7);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_2.class, 
  min(
    posts_1.creationdate), 
  badges_2.name
from 
  users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
    inner join badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
    on (users_1.id = badges_2.id )
where users_1.profileimageurl is not NULL
group by badges_2.class, badges_2.name
limit 13;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_2.creationdate, 
    comments_2.contentlicense, 
    avg(
      comments_2.userid)
  from 
    comments as comments_1
      inner join users as users_1
        inner join comments as comments_2
        on (users_1.id = comments_2.id )
      on (comments_1.id = comments_2.id )
  where comments_1.text is not NULL
  group by comments_2.contentlicense, comments_2.creationdate
  limit 8)
UNION
(select  
    postlinks_1.creationdate, 
    count(
      postlinks_1.creationdate), 
    sum(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 25);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.contentlicense, 
    users_1.id, 
    comments_1.userid, 
    comments_1.text, 
    comments_1.userdisplayname, 
    users_1.accountid, 
    posts_1.body, 
    comments_1.creationdate, 
    comments_1.postid, 
    max(
      users_1.creationdate), 
    users_1.displayname
  from 
    users as users_1
        inner join comments as comments_1
        on (users_1.id = comments_1.id )
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
  where posts_1.ownerdisplayname is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid, posts_1.body, users_1.accountid, users_1.displayname, users_1.id
  limit 11)
UNION
(select  
    min(
      users_2.id), 
    min(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid, 
    users_2.displayname, 
    users_2.displayname, 
    users_2.accountid, 
    users_2.websiteurl, 
    postlinks_1.creationdate, 
    postlinks_1.linktypeid, 
    max(
      users_2.creationdate), 
    users_2.displayname
  from 
    postlinks as postlinks_1
      inner join users as users_2
      on (postlinks_1.id = users_2.id )
  where postlinks_1.id is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.linktypeid), 
  postlinks_1.creationdate, 
  postlinks_1.postid, 
  min(
    postlinks_1.creationdate)
from 
  postlinks as postlinks_1
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 22;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 18)
UNION
(select  
    badges_1.id
  from 
    comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
  where comments_1.postid is not NULL
  group by badges_1.id, badges_1.name, badges_1.tagbased
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.postid, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where posthistory_1.comment = comments_1.userdisplayname
  limit 2)
EXCEPT
(select  
    votes_1.id, 
    votes_1.id, 
    avg(
      votes_1.id)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.id, 
    sum(
      votes_2.userid), 
    votes_2.id
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.userid is not NULL
  group by votes_1.id, votes_2.id
  limit 13)
UNION
(select  
    badges_1.userid, 
    sum(
      badges_1.class), 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.id > badges_1.class
  limit 23);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      votes_1.userid), 
    votes_1.creationdate, 
    votes_1.id, 
    max(
      votes_1.userid), 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid
  limit 18)
UNION
(select  
    avg(
      votes_2.postid), 
    votes_2.creationdate, 
    votes_2.userid, 
    count(
      votes_2.creationdate), 
    votes_2.votetypeid
  from 
    votes as votes_2
  where votes_2.creationdate = votes_2.creationdate
  group by votes_2.postid, votes_2.userid, votes_2.votetypeid
  limit 36);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    comments_1.text, 
    min(
      comments_1.creationdate), 
    max(
      comments_1.id), 
    comments_1.userid, 
    comments_1.postid, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.contentlicense < comments_1.userdisplayname
  group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userid
  limit 38)
EXCEPT
(select  
    users_1.aboutme, 
    users_1.aboutme, 
    min(
      users_1.creationdate), 
    count(*), 
    posthistory_1.userid, 
    sum(
      users_1.profileimageurl), 
    posthistory_1.id
  from 
    users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
  where users_1.aboutme is not NULL
  limit 8);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    comments_1.text, 
    comments_1.userid, 
    comments_1.creationdate, 
    comments_1.postid, 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    count(
      comments_1.userid), 
    comments_1.userdisplayname, 
    comments_1.id, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 10)
EXCEPT
(select  
    comments_2.text, 
    comments_2.contentlicense, 
    comments_2.userid, 
    comments_2.creationdate, 
    comments_2.userid, 
    max(
      comments_2.creationdate), 
    max(
      comments_2.creationdate), 
    count(
      comments_2.text), 
    comments_2.userdisplayname, 
    comments_2.id, 
    min(
      comments_2.creationdate)
  from 
    comments as comments_2
  where comments_2.userdisplayname is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.id, 
    votes_1.userid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.postid = votes_1.userid
  limit 34)
INTERSECT
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.id, 
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.comment > posthistory_1.userdisplayname
  group by posthistory_1.posthistorytypeid
  limit 36);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.aboutme, 
    postlinks_1.postid, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
  where postlinks_1.creationdate is not NULL
  limit 8)
INTERSECT
(select  
    posthistory_1.revisionguid, 
    max(
      posthistory_1.posthistorytypeid), 
    votes_1.creationdate
  from 
    votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      inner join posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      on (posts_1.id = comments_1.id )
  where votes_1.creationdate >= posthistory_1.creationdate
  limit 42);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    postlinks_1.id, 
    count(*), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid > postlinks_1.id
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 19)
EXCEPT
(select  
    max(
      badges_1.date), 
    max(
      badges_1.date), 
    badges_1.date, 
    min(
      users_1.creationdate), 
    count(*), 
    max(
      users_1.creationdate)
  from 
    badges as badges_1
      inner join users as users_1
      on (badges_1.id = users_1.id )
  where badges_1.name = users_1.websiteurl
  group by badges_1.date, badges_1.name, badges_1.userid, users_1.displayname, users_1.id, users_1.location
  limit 37);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid, 
  votes_1.userid, 
  votes_1.postid, 
  votes_1.id, 
  votes_1.creationdate
from 
  votes as votes_1
where votes_1.votetypeid is not NULL
limit 32;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      badges_1.date)
  from 
    postlinks as postlinks_1
      inner join postlinks as postlinks_2
        inner join badges as badges_1
        on (postlinks_2.id = badges_1.id )
      on (postlinks_1.id = badges_1.id )
  where badges_1.class is not NULL
  limit 42)
INTERSECT
(select  
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.id < posts_1.owneruserid
  limit 2);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.date, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 41)
UNION
(select  
    comments_1.creationdate, 
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.text
  limit 41);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid, 
    sum(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.relatedpostid
  limit 42)
INTERSECT
(select  
    users_1.creationdate, 
    max(
      users_1.creationdate), 
    avg(
      users_1.accountid)
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where comments_1.text is not NULL
  group by comments_1.postid, comments_1.text, comments_1.userid, users_1.aboutme, users_1.displayname, users_1.websiteurl
  limit 41);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_2.name, 
    badges_1.date, 
    badges_1.id, 
    min(
      comments_1.postid), 
    comments_1.userdisplayname, 
    comments_1.postid, 
    badges_2.tagbased, 
    badges_1.class, 
    comments_1.contentlicense, 
    badges_2.date, 
    max(
      comments_1.creationdate), 
    badges_1.userid, 
    comments_1.text, 
    badges_1.tagbased, 
    badges_1.name, 
    comments_1.creationdate, 
    min(
      badges_1.userid)
  from 
    badges as badges_1
        inner join comments as comments_1
        on (badges_1.id = comments_1.id )
      inner join badges as badges_2
      on (comments_1.id = badges_2.id )
  where comments_1.userdisplayname > badges_1.name
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid, badges_2.date, badges_2.name, badges_2.tagbased, comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname
  limit 17)
INTERSECT
(select  
    max(
      posts_2.creationdate), 
    votes_1.creationdate, 
    posts_1.acceptedanswerid, 
    max(
      votes_1.postid), 
    posts_1.contentlicense, 
    posts_1.owneruserid, 
    min(
      votes_1.votetypeid), 
    votes_1.id, 
    posts_2.body, 
    posts_1.creationdate, 
    min(
      posts_1.creationdate), 
    votes_1.userid, 
    posts_1.tags, 
    min(
      posts_1.creationdate), 
    posts_1.title, 
    votes_1.creationdate, 
    count(*)
  from 
    votes as votes_1
      inner join posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      on (votes_1.id = posts_1.id )
  where votes_1.creationdate is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  count(*), 
  postlinks_1.relatedpostid
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 24;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.accountid, 
    posthistory_1.comment, 
    users_1.websiteurl, 
    posthistory_1.text, 
    users_1.displayname
  from 
    users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
  where posthistory_1.postid is not NULL
  limit 28)
INTERSECT
(select  
    users_2.id, 
    users_2.aboutme, 
    users_2.displayname, 
    badges_1.name, 
    users_2.websiteurl
  from 
    users as users_2
      inner join badges as badges_1
      on (users_2.id = badges_1.id )
  where badges_1.tagbased <= badges_1.tagbased
  group by badges_1.userid
  limit 21);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.creationdate, 
    comments_1.userdisplayname, 
    max(
      comments_1.creationdate), 
    comments_1.postid, 
    comments_1.creationdate, 
    posthistory_1.id, 
    min(
      posthistory_1.creationdate)
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where posthistory_1.userid is not NULL
  group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname, posthistory_1.creationdate, posthistory_1.id
  limit 1)
EXCEPT
(select  
    comments_2.creationdate, 
    comments_2.contentlicense, 
    min(
      comments_2.creationdate), 
    comments_2.userid, 
    comments_2.creationdate, 
    comments_2.postid, 
    min(
      comments_2.creationdate)
  from 
    comments as comments_2
  where comments_2.creationdate >= comments_2.creationdate
  limit 4);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      posthistory_1.userid)
  from 
    posthistory as posthistory_1
      inner join posts as posts_1
      on (posthistory_1.id = posts_1.id )
  where posts_1.id is not NULL
  limit 40)
INTERSECT
(select  
    min(
      posthistory_2.userid)
  from 
    posthistory as posthistory_2
  where posthistory_2.posthistorytypeid is not NULL
  limit 39);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.creationdate, 
    users_1.aboutme, 
    min(
      users_1.accountid), 
    users_1.accountid
  from 
    users as users_1
  where users_1.id is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate
  limit 8)
INTERSECT
(select  
    votes_1.creationdate, 
    min(
      votes_1.creationdate), 
    count(
      badges_1.id), 
    badges_1.userid
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where badges_1.date is not NULL
  limit 28);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid < postlinks_1.linktypeid
  group by postlinks_1.linktypeid
  limit 22)
INTERSECT
(select  
    count(
      badges_1.name), 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.class is not NULL
  limit 29);
-- meta {"num_joins":1,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  postlinks_1.creationdate, 
  min(
    postlinks_1.creationdate), 
  max(
    postlinks_1.creationdate), 
  postlinks_1.relatedpostid, 
  posthistory_1.comment, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid, 
  posthistory_1.userdisplayname, 
  posthistory_1.creationdate, 
  max(
    postlinks_1.creationdate), 
  count(*), 
  postlinks_1.postid, 
  max(
    posthistory_1.creationdate), 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  posthistory_1.id, 
  min(
    posthistory_1.creationdate)
from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
    on (posthistory_1.id = postlinks_1.id )
where posthistory_1.postid is not NULL
group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 34;
-- meta {"num_joins":3,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.title, 
    posts_1.owneruserid, 
    min(
      posts_1.creationdate), 
    posts_1.tags, 
    posts_1.contentlicense, 
    min(
      posts_1.creationdate), 
    max(
      posts_1.creationdate), 
    posts_1.id, 
    posts_1.creationdate, 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  group by posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.tags, posts_1.title
  limit 37)
UNION
(select  
    users_1.websiteurl, 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.creationdate), 
    badges_1.name, 
    min(
      users_1.profileimageurl), 
    min(
      postlinks_1.creationdate), 
    max(
      votes_1.creationdate), 
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    users_1.aboutme
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
          inner join badges as badges_1
          on (votes_1.id = badges_1.id )
        inner join users as users_1
        on (votes_1.id = users_1.id )
      on (postlinks_1.id = users_1.id )
  where users_1.displayname is not NULL
  group by badges_1.name, badges_1.tagbased, users_1.aboutme, users_1.id, users_1.location, users_1.profileimageurl, users_1.websiteurl, votes_1.creationdate
  limit 6);
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.date, 
    badges_1.userid, 
    min(
      badges_1.date), 
    badges_1.id, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid
  limit 19)
INTERSECT
(select  
    badges_2.date, 
    badges_2.id, 
    max(
      posts_1.creationdate), 
    votes_2.id, 
    posts_1.tags
  from 
    badges as badges_2
        inner join votes as votes_1
        on (badges_2.id = votes_1.id )
      inner join posts as posts_1
        inner join votes as votes_2
        on (posts_1.id = votes_2.id )
      on (badges_2.id = posts_1.id )
  where badges_2.name is not NULL
  group by badges_2.id, badges_2.userid, posts_1.title, votes_1.creationdate, votes_1.postid, votes_1.votetypeid, votes_2.postid
  limit 5);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid, 
    postlinks_1.creationdate, 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.postid < postlinks_1.linktypeid
  limit 18)
INTERSECT
(select  
    votes_1.postid, 
    avg(
      posthistory_1.postid), 
    posthistory_1.id, 
    votes_1.creationdate, 
    votes_1.id
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
        inner join users as users_1
        on (votes_1.id = users_1.id )
      on (posthistory_1.id = users_1.id )
  where posthistory_1.comment is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  limit 8)
INTERSECT
(select  
    comments_1.postid, 
    comments_1.postid
  from 
    badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
  where badges_1.name <= comments_1.userdisplayname
  group by comments_1.userdisplayname
  limit 19);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      votes_1.creationdate), 
    votes_1.postid, 
    comments_1.userid, 
    comments_1.userdisplayname, 
    comments_1.contentlicense, 
    comments_1.creationdate, 
    count(
      comments_1.postid)
  from 
    comments as comments_1
      inner join votes as votes_1
      on (comments_1.id = votes_1.id )
  where comments_1.text < comments_1.contentlicense
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.userdisplayname, comments_1.userid, votes_1.postid
  limit 29)
UNION
(select  
    min(
      votes_2.creationdate), 
    votes_2.userid, 
    votes_2.id, 
    min(
      votes_2.creationdate), 
    max(
      votes_2.creationdate), 
    max(
      votes_2.votetypeid), 
    count(
      votes_2.postid)
  from 
    votes as votes_2
  where votes_2.votetypeid is not NULL
  limit 16);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      badges_1.date), 
    badges_1.id
  from 
    posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
  where posthistory_1.userid is not NULL
  group by badges_1.id
  limit 9)
UNION
(select  
    max(
      users_1.creationdate), 
    users_1.accountid
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 15);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    sum(
      posthistory_1.userid)
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 31)
EXCEPT
(select  
    sum(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 16);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.date, 
    badges_1.id, 
    badges_1.name, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.date, badges_1.id, badges_1.name
  limit 14)
EXCEPT
(select  
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid, 
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 7);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.comment, 
    comments_1.id, 
    comments_1.userid
  from 
    posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where posthistory_1.creationdate < comments_1.creationdate
  limit 11)
INTERSECT
(select  
    sum(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid, 
    count(*)
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.userid is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.creationdate, 
    comments_1.userdisplayname, 
    comments_1.text, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.creationdate, comments_1.text, comments_1.userdisplayname
  limit 13)
UNION
(select  
    badges_1.date, 
    badges_1.name, 
    badges_1.name, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.date < badges_1.date
  limit 30);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.tagbased, 
    min(
      badges_1.date), 
    badges_2.name, 
    badges_2.userid, 
    badges_2.class, 
    badges_1.userid, 
    badges_1.date, 
    badges_2.id
  from 
    badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
  where badges_1.name is not NULL
  group by badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid, badges_2.class, badges_2.id, badges_2.name, badges_2.userid
  limit 39)
UNION
(select  
    min(
      postlinks_1.creationdate), 
    count(*), 
    max(
      postlinks_1.creationdate), 
    count(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    postlinks_1.id, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.relatedpostid
  limit 34);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid
  from 
    posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      inner join comments as comments_1
        inner join votes as votes_1
        on (comments_1.id = votes_1.id )
      on (posthistory_2.id = votes_1.id )
  where posthistory_2.comment is not NULL
  limit 5)
INTERSECT
(select  
    min(
      comments_2.creationdate)
  from 
    comments as comments_2
  where comments_2.id is not NULL
  limit 12);
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.text, 
    comments_2.postid, 
    comments_2.id, 
    comments_1.userdisplayname, 
    max(
      votes_1.creationdate), 
    badges_1.date, 
    comments_1.id, 
    votes_1.creationdate, 
    max(
      comments_2.creationdate), 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    sum(
      comments_1.id)
  from 
    votes as votes_1
        inner join comments as comments_1
          inner join comments as comments_2
          on (comments_1.id = comments_2.id )
        on (votes_1.id = comments_1.id )
      inner join badges as badges_1
      on (comments_2.id = badges_1.id )
  where comments_2.creationdate < badges_1.date
  group by badges_1.date, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_2.id, comments_2.postid, votes_1.creationdate
  limit 20)
INTERSECT
(select  
    max(
      votes_2.userid), 
    votes_2.userid, 
    votes_2.votetypeid, 
    avg(
      votes_2.postid), 
    max(
      votes_2.creationdate), 
    votes_2.creationdate, 
    votes_2.votetypeid, 
    min(
      votes_2.id), 
    min(
      votes_2.creationdate), 
    max(
      votes_2.creationdate), 
    min(
      votes_2.creationdate), 
    avg(
      votes_2.userid)
  from 
    votes as votes_2
  where votes_2.votetypeid is not NULL
  limit 19);
-- meta {"num_joins":3,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_2.posttypeid, 
    sum(
      users_1.accountid), 
    users_2.websiteurl, 
    posts_2.owneruserid, 
    users_1.id, 
    min(
      posts_2.posttypeid), 
    count(
      posts_1.ownerdisplayname), 
    sum(
      users_1.profileimageurl), 
    posts_2.ownerdisplayname
  from 
    posts as posts_1
      inner join posts as posts_2
          inner join users as users_1
          on (posts_2.id = users_1.id )
        inner join users as users_2
        on (posts_2.id = users_2.id )
      on (posts_1.id = users_2.id )
  where users_1.accountid is not NULL
  group by posts_2.ownerdisplayname, posts_2.owneruserid, posts_2.posttypeid, users_1.id, users_2.websiteurl
  limit 14)
INTERSECT
(select  
    posthistory_1.id, 
    avg(
      posthistory_1.userid), 
    posthistory_1.contentlicense, 
    posthistory_1.posthistorytypeid, 
    min(
      posthistory_1.postid), 
    count(
      posthistory_1.contentlicense), 
    max(
      posthistory_1.postid), 
    avg(
      posthistory_1.userid), 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
  limit 1);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.websiteurl, 
    users_1.displayname, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.displayname is not NULL
  group by users_1.displayname, users_1.websiteurl
  limit 5)
UNION
(select  
    avg(
      badges_1.id), 
    badges_1.name, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.name < badges_1.name
  group by badges_1.name
  limit 1);
-- meta {"num_joins":7,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment
  from 
    posthistory as posthistory_1
        inner join comments as comments_1
          inner join postlinks as postlinks_1
          on (comments_1.id = postlinks_1.id )
        on (posthistory_1.id = comments_1.id )
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
  where badges_1.tagbased = badges_1.tagbased
  limit 24)
EXCEPT
(select  
    posthistory_3.contentlicense
  from 
    posthistory as posthistory_2
        inner join posthistory as posthistory_3
          inner join postlinks as postlinks_2
            inner join comments as comments_2
            on (postlinks_2.id = comments_2.id )
          on (posthistory_3.id = postlinks_2.id )
        on (posthistory_2.id = comments_2.id )
      inner join votes as votes_1
      on (postlinks_2.id = votes_1.id )
  where votes_1.postid is not NULL
  group by comments_2.userdisplayname, comments_2.userid
  limit 22);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.id, 
    users_1.displayname, 
    users_1.accountid, 
    users_1.creationdate, 
    comments_1.text
  from 
    users as users_1
      inner join comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      on (users_1.id = comments_1.id )
  where users_1.websiteurl is not NULL
  limit 38)
EXCEPT
(select  
    votes_1.postid, 
    avg(
      votes_1.votetypeid), 
    votes_2.userid, 
    votes_2.creationdate, 
    min(
      votes_2.creationdate)
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.creationdate = votes_2.creationdate
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 7)
UNION
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.id is not NULL
  limit 42);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    postlinks_1.postid, 
    votes_1.userid, 
    postlinks_1.linktypeid, 
    votes_1.postid, 
    badges_1.name, 
    sum(
      postlinks_1.postid)
  from 
    badges as badges_1
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where votes_1.userid is not NULL
  group by badges_1.name, postlinks_1.linktypeid, postlinks_1.postid, votes_1.creationdate, votes_1.postid, votes_1.userid
  limit 41)
EXCEPT
(select  
    posts_1.creationdate, 
    posts_1.posttypeid, 
    min(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    posts_1.id, 
    posts_1.contentlicense, 
    sum(
      posts_1.parentid)
  from 
    posts as posts_1
  where posts_1.body is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.contentlicense, 
    comments_1.text, 
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 2)
EXCEPT
(select  
    comments_2.contentlicense, 
    comments_2.contentlicense, 
    postlinks_1.creationdate
  from 
    comments as comments_2
      inner join postlinks as postlinks_1
      on (comments_2.id = postlinks_1.id )
  where comments_2.postid is not NULL
  group by comments_2.contentlicense, comments_2.userid, postlinks_1.id
  limit 38);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.creationdate, 
    posthistory_1.comment, 
    posthistory_1.userid, 
    posthistory_1.text, 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate > posthistory_1.creationdate
  limit 13)
EXCEPT
(select  
    posthistory_2.creationdate, 
    posthistory_2.contentlicense, 
    votes_1.votetypeid, 
    posthistory_2.revisionguid, 
    comments_1.userdisplayname
  from 
    votes as votes_1
        inner join comments as comments_1
        on (votes_1.id = comments_1.id )
      inner join posthistory as posthistory_2
      on (comments_1.id = posthistory_2.id )
  where posthistory_2.revisionguid is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.location, 
    users_1.websiteurl
  from 
    users as users_1
  where users_1.profileimageurl > users_1.accountid
  limit 18)
UNION
(select  
    avg(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.votetypeid
  limit 1);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.revisionguid, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.comment = posthistory_1.userdisplayname
  limit 19)
INTERSECT
(select  
    posts_1.contentlicense, 
    posts_1.id
  from 
    posts as posts_1
  where posts_1.id is not NULL
  limit 6);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.postid, 
    postlinks_1.id, 
    max(
      postlinks_1.postid), 
    postlinks_1.linktypeid, 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate >= postlinks_1.creationdate
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 21)
UNION
(select  
    posthistory_1.postid, 
    posthistory_1.id, 
    posthistory_1.postid, 
    count(
      posthistory_1.revisionguid), 
    posthistory_1.posthistorytypeid, 
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 9);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.userid
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where postlinks_1.postid is not NULL
  limit 39)
INTERSECT
(select  
    posts_1.posttypeid
  from 
    votes as votes_1
          inner join postlinks as postlinks_2
            inner join posthistory as posthistory_1
            on (postlinks_2.id = posthistory_1.id )
          on (votes_1.id = postlinks_2.id )
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      inner join postlinks as postlinks_3
      on (posts_1.id = postlinks_3.id )
  where postlinks_3.postid > votes_1.id
  limit 30);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.comment, 
  posthistory_1.contentlicense, 
  posthistory_1.postid, 
  posthistory_1.id, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.userid is not NULL
limit 19;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.acceptedanswerid, 
    posts_1.creationdate, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.creationdate >= posts_1.creationdate
  group by posts_1.acceptedanswerid, posts_1.creationdate
  limit 8)
EXCEPT
(select  
    postlinks_1.id, 
    postlinks_1.creationdate, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  limit 9);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 18)
INTERSECT
(select  
    votes_2.creationdate
  from 
    votes as votes_2
  where votes_2.id <= votes_2.postid
  group by votes_2.creationdate, votes_2.id, votes_2.postid, votes_2.userid, votes_2.votetypeid
  limit 4);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.title, 
  badges_1.userid, 
  badges_1.date
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.id is not NULL
limit 6;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id
from 
  posts as posts_1
where posts_1.creationdate is not NULL
limit 34;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased, 
    badges_1.class, 
    badges_1.name, 
    badges_1.userid, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.class is not NULL
  limit 8)
EXCEPT
(select  
    badges_2.tagbased, 
    comments_1.id, 
    comments_1.userdisplayname, 
    comments_1.userid, 
    comments_1.creationdate
  from 
    badges as badges_2
        inner join comments as comments_1
        on (badges_2.id = comments_1.id )
      inner join comments as comments_2
      on (badges_2.id = comments_2.id )
  where comments_2.id is not NULL
  group by comments_1.id, comments_1.userdisplayname, comments_2.contentlicense, comments_2.id, comments_2.postid, comments_2.text, comments_2.userdisplayname
  limit 22);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.creationdate, 
    postlinks_1.id, 
    comments_1.userdisplayname, 
    postlinks_1.linktypeid, 
    comments_1.id
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where comments_1.postid is not NULL
  limit 41)
EXCEPT
(select  
    comments_2.creationdate, 
    badges_2.class, 
    badges_1.name, 
    users_1.profileimageurl, 
    users_1.accountid
  from 
    badges as badges_1
          inner join comments as comments_2
          on (badges_1.id = comments_2.id )
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      inner join users as users_1
      on (badges_2.id = users_1.id )
  where badges_1.name is not NULL
  group by badges_2.name, badges_2.tagbased, badges_2.userid, users_1.accountid
  limit 26);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*)
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 23)
UNION
(select  
    count(*)
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where comments_1.userdisplayname is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":9,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(*), 
    count(*), 
    max(
      posts_1.creationdate), 
    posts_1.posttypeid, 
    posts_1.title, 
    posts_1.body, 
    posts_1.parentid, 
    posts_1.owneruserid, 
    count(*), 
    posts_1.contentlicense, 
    posts_1.acceptedanswerid, 
    posts_1.id, 
    max(
      posts_1.parentid), 
    min(
      posts_1.posttypeid), 
    posts_1.ownerdisplayname, 
    posts_1.creationdate, 
    max(
      posts_1.owneruserid), 
    posts_1.tags
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 13)
EXCEPT
(select  
    count(*), 
    min(
      votes_1.postid), 
    min(
      votes_1.creationdate), 
    votes_1.userid, 
    avg(
      votes_1.votetypeid), 
    max(
      votes_1.creationdate), 
    votes_1.postid, 
    votes_1.postid, 
    count(*), 
    count(*), 
    max(
      votes_1.votetypeid), 
    votes_1.userid, 
    min(
      votes_1.id), 
    max(
      votes_1.votetypeid), 
    count(
      votes_1.creationdate), 
    votes_1.creationdate, 
    max(
      votes_1.votetypeid), 
    avg(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 10);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.relatedpostid, 
  max(
    badges_2.class)
from 
  postlinks as postlinks_1
      inner join badges as badges_1
        inner join posts as posts_1
          inner join badges as badges_2
          on (posts_1.id = badges_2.id )
        on (badges_1.id = badges_2.id )
      on (postlinks_1.id = posts_1.id )
    inner join users as users_1
    on (badges_1.id = users_1.id )
where badges_1.date is not NULL
group by postlinks_1.relatedpostid
limit 10;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.creationdate, 
    posts_1.body, 
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.id is not NULL
  limit 20)
UNION
(select  
    comments_1.creationdate, 
    count(*), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.id > comments_1.userid
  group by comments_1.creationdate, comments_1.postid, comments_1.text
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.id, 
  badges_1.id
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where posts_1.id < badges_1.userid
limit 6;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.name is not NULL
  limit 16)
INTERSECT
(select  
    posthistory_1.text, 
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text, posthistory_1.userid
  limit 18);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      comments_1.creationdate), 
    sum(
      comments_1.userid), 
    comments_1.contentlicense, 
    comments_1.id, 
    comments_1.postid, 
    comments_1.text
  from 
    comments as comments_1
  where comments_1.id > comments_1.postid
  group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text
  limit 32)
EXCEPT
(select  
    max(
      posts_1.creationdate), 
    sum(
      posts_1.acceptedanswerid), 
    posts_1.ownerdisplayname, 
    posts_1.owneruserid, 
    posts_1.owneruserid, 
    posts_1.body
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  group by posts_1.body, posts_1.id, posts_1.ownerdisplayname, posts_1.posttypeid, posts_1.tags
  limit 34);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.linktypeid, 
    postlinks_1.relatedpostid, 
    users_1.websiteurl, 
    badges_1.name, 
    postlinks_1.id, 
    badges_1.userid, 
    users_1.accountid, 
    min(
      badges_1.class), 
    max(
      postlinks_1.linktypeid)
  from 
    badges as badges_1
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      inner join users as users_1
      on (postlinks_1.id = users_1.id )
  where users_1.creationdate is not NULL
  group by badges_1.name, badges_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, users_1.accountid, users_1.websiteurl
  limit 19)
UNION
(select  
    posts_1.creationdate, 
    posthistory_1.userid, 
    posts_1.owneruserid, 
    posthistory_1.userdisplayname, 
    posthistory_1.contentlicense, 
    posts_1.posttypeid, 
    posts_1.posttypeid, 
    count(
      posthistory_2.text), 
    min(
      postlinks_2.id), 
    max(
      posthistory_2.posthistorytypeid)
  from 
    posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      inner join posts as posts_1
        inner join postlinks as postlinks_2
        on (posts_1.id = postlinks_2.id )
      on (posthistory_1.id = postlinks_2.id )
  where postlinks_2.id > postlinks_2.linktypeid
  limit 6);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 10)
UNION
(select  
    posts_2.posttypeid, 
    posts_2.owneruserid
  from 
    posts as posts_1
      inner join posts as posts_2
      on (posts_1.id = posts_2.id )
  where posts_1.creationdate <= posts_2.creationdate
  limit 32);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.posttypeid, 
    max(
      posts_1.posttypeid), 
    posts_1.parentid, 
    posts_1.creationdate, 
    posts_1.ownerdisplayname, 
    posts_1.acceptedanswerid, 
    posts_1.body
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid
  limit 21)
UNION
(select  
    comments_1.postid, 
    count(
      comments_1.creationdate), 
    comments_1.postid, 
    comments_1.creationdate, 
    comments_1.userdisplayname, 
    comments_1.id, 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.id is not NULL
  group by comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
  limit 31);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.votetypeid, 
    badges_1.tagbased
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where votes_1.id is not NULL
  limit 32)
UNION
(select  
    votes_2.userid, 
    max(
      posts_1.creationdate)
  from 
    comments as comments_1
          inner join votes as votes_2
            inner join postlinks as postlinks_1
            on (votes_2.id = postlinks_1.id )
          on (comments_1.id = postlinks_1.id )
        inner join posts as posts_1
        on (votes_2.id = posts_1.id )
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
  where posts_1.posttypeid = postlinks_1.postid
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.title, 
    posts_1.contentlicense, 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  limit 1)
EXCEPT
(select  
    badges_1.name, 
    badges_1.name, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.creationdate <= comments_1.creationdate
  limit 2)
INTERSECT
(select  
    users_1.accountid
  from 
    users as users_1
  where users_1.displayname is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.creationdate, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.comment, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.comment, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.userid
  limit 37)
INTERSECT
(select  
    comments_1.creationdate, 
    posthistory_2.posthistorytypeid, 
    posthistory_2.revisionguid, 
    min(
      comments_1.creationdate), 
    comments_1.userid
  from 
    posthistory as posthistory_2
      inner join comments as comments_1
      on (posthistory_2.id = comments_1.id )
  where comments_1.id is not NULL
  limit 16);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.acceptedanswerid, 
    votes_1.postid
  from 
    posts as posts_1
      inner join users as users_1
            inner join users as users_2
            on (users_1.id = users_2.id )
          inner join votes as votes_1
          on (users_1.id = votes_1.id )
        inner join postlinks as postlinks_1
        on (users_2.id = postlinks_1.id )
      on (posts_1.id = postlinks_1.id )
  where users_1.aboutme = users_1.displayname
  limit 42)
INTERSECT
(select  
    votes_2.postid, 
    votes_2.postid
  from 
    votes as votes_2
  where votes_2.userid is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      posts_1.creationdate), 
    count(*), 
    posts_1.tags, 
    posts_1.id
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  group by posts_1.id, posts_1.tags
  limit 1)
INTERSECT
(select  
    max(
      comments_1.creationdate), 
    min(
      comments_1.id), 
    comments_1.userdisplayname, 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.userdisplayname > comments_1.text
  group by comments_1.contentlicense, comments_1.userdisplayname, comments_1.userid
  limit 35);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      posthistory_1.posthistorytypeid)
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 11)
EXCEPT
(select  
    sum(
      badges_1.id)
  from 
    users as users_1
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
  where badges_1.name is not NULL
  group by badges_1.date
  limit 5);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  users_1.accountid, 
  users_1.creationdate, 
  min(
    users_1.accountid), 
  max(
    users_1.creationdate)
from 
  users as users_1
where users_1.creationdate is not NULL
group by users_1.accountid, users_1.creationdate, users_1.profileimageurl
limit 29;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.id, 
    posts_1.tags, 
    posts_1.acceptedanswerid, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.id > posts_1.acceptedanswerid
  group by posts_1.acceptedanswerid, posts_1.id, posts_1.tags
  limit 23)
UNION
(select  
    votes_1.userid, 
    count(*), 
    votes_1.postid, 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 28);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location, 
    badges_1.name, 
    users_1.accountid
  from 
    badges as badges_1
      inner join posts as posts_1
        inner join users as users_1
        on (posts_1.id = users_1.id )
      on (badges_1.id = users_1.id )
  where badges_1.id is not NULL
  limit 27)
INTERSECT
(select  
    comments_1.contentlicense, 
    comments_1.userdisplayname, 
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.id is not NULL
  limit 15);
-- meta {"num_joins":5,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      users_1.accountid), 
    sum(
      posthistory_1.postid), 
    users_1.location, 
    badges_1.date, 
    postlinks_1.postid
  from 
    users as users_1
      inner join posthistory as posthistory_1
          inner join badges as badges_1
            inner join posthistory as posthistory_2
            on (badges_1.id = posthistory_2.id )
          on (posthistory_1.id = badges_1.id )
        inner join postlinks as postlinks_1
        on (posthistory_2.id = postlinks_1.id )
      on (users_1.id = posthistory_2.id )
  where users_1.profileimageurl is not NULL
  group by badges_1.date, postlinks_1.postid, users_1.location
  limit 38)
EXCEPT
(select  
    min(
      votes_2.votetypeid), 
    avg(
      votes_2.votetypeid), 
    max(
      votes_1.creationdate), 
    votes_1.creationdate, 
    votes_1.userid
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.userid is not NULL
  group by votes_1.postid, votes_1.userid, votes_2.postid, votes_2.userid
  limit 15);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.class, 
    badges_1.tagbased, 
    count(*), 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased
  limit 34)
UNION
(select  
    badges_3.name, 
    badges_3.userid, 
    badges_3.tagbased, 
    max(
      badges_3.class), 
    avg(
      comments_1.userid)
  from 
    comments as comments_1
      inner join badges as badges_2
          inner join badges as badges_3
          on (badges_2.id = badges_3.id )
        inner join postlinks as postlinks_1
        on (badges_3.id = postlinks_1.id )
      on (comments_1.id = badges_2.id )
  where badges_2.date is not NULL
  group by badges_2.class, badges_2.id, comments_1.text
  limit 21);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      posthistory_1.creationdate), 
    posthistory_1.comment, 
    posthistory_1.creationdate, 
    posthistory_1.contentlicense, 
    posthistory_1.text, 
    posthistory_1.postid, 
    posthistory_1.userdisplayname, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid = posthistory_1.postid
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.text, posthistory_1.userdisplayname
  limit 33)
INTERSECT
(select  
    max(
      posts_1.creationdate), 
    posts_1.ownerdisplayname, 
    posts_1.creationdate, 
    posts_1.tags, 
    posts_1.body, 
    posts_1.owneruserid, 
    posts_1.ownerdisplayname, 
    postlinks_1.linktypeid
  from 
    votes as votes_1
      inner join posts as posts_1
        inner join postlinks as postlinks_1
        on (posts_1.id = postlinks_1.id )
      on (votes_1.id = posts_1.id )
  where posts_1.contentlicense < posts_1.title
  group by postlinks_1.relatedpostid, posts_1.tags, votes_1.creationdate, votes_1.id, votes_1.votetypeid
  limit 20);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      posts_1.creationdate), 
    badges_1.date, 
    posts_1.acceptedanswerid, 
    posts_1.tags, 
    posts_1.id
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where posts_1.posttypeid is not NULL
  group by badges_1.date, posts_1.acceptedanswerid, posts_1.id, posts_1.tags
  limit 15)
UNION
(select  
    max(
      posts_2.creationdate), 
    max(
      posts_2.creationdate), 
    posts_2.posttypeid, 
    posts_2.ownerdisplayname, 
    posts_2.parentid
  from 
    posts as posts_2
  where posts_2.creationdate < posts_2.creationdate
  limit 17);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    posts_1.parentid, 
    posts_1.ownerdisplayname, 
    posts_1.contentlicense, 
    posts_1.tags
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  group by posts_1.contentlicense, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.tags
  limit 1)
UNION
(select  
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.postid, 
    min(
      postlinks_1.id), 
    min(
      postlinks_1.creationdate), 
    sum(
      postlinks_1.linktypeid)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate < postlinks_1.creationdate
  group by postlinks_1.creationdate, postlinks_1.postid
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 9)
EXCEPT
(select  
    posts_1.id
  from 
    posts as posts_1
  where posts_1.creationdate >= posts_1.creationdate
  limit 41);
-- meta {"num_joins":1,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.body, 
    comments_1.userdisplayname, 
    min(
      posts_1.owneruserid), 
    comments_1.contentlicense, 
    comments_1.postid, 
    posts_1.creationdate, 
    avg(
      posts_1.posttypeid), 
    posts_1.title, 
    comments_1.creationdate, 
    comments_1.userid, 
    min(
      comments_1.creationdate), 
    comments_1.text, 
    max(
      comments_1.creationdate), 
    posts_1.contentlicense, 
    posts_1.posttypeid, 
    max(
      comments_1.creationdate), 
    count(
      posts_1.parentid)
  from 
    posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where comments_1.text <= comments_1.contentlicense
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.posttypeid, posts_1.title
  limit 14)
UNION
(select  
    count(*), 
    min(
      postlinks_1.creationdate), 
    count(*), 
    count(
      postlinks_1.linktypeid), 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    sum(
      postlinks_1.postid), 
    max(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    postlinks_1.id, 
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid, 
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.userdisplayname, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.revisionguid, posthistory_1.userdisplayname
  limit 25)
UNION
(select  
    min(
      comments_1.id), 
    min(
      comments_1.creationdate), 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.id is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userid
  limit 32);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid = postlinks_1.id
  limit 26)
UNION
(select  
    users_1.creationdate, 
    users_1.accountid, 
    users_1.accountid
  from 
    users as users_1
  where users_1.displayname > users_1.aboutme
  limit 18);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.linktypeid, 
  posthistory_1.creationdate, 
  users_1.creationdate, 
  posts_1.owneruserid, 
  users_1.accountid
from 
  users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    inner join postlinks as postlinks_1
      inner join posts as posts_1
          inner join posthistory as posthistory_1
          on (posts_1.id = posthistory_1.id )
        inner join comments as comments_2
        on (posthistory_1.id = comments_2.id )
      on (postlinks_1.id = posthistory_1.id )
    on (comments_1.id = posthistory_1.id )
where comments_1.creationdate <= posthistory_1.creationdate
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid, 
    votes_1.userid, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 30)
EXCEPT
(select  
    posts_1.posttypeid, 
    min(
      posts_1.creationdate), 
    sum(
      posts_1.posttypeid)
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.websiteurl, 
    users_1.aboutme, 
    users_1.creationdate, 
    users_1.location, 
    count(
      users_1.websiteurl)
  from 
    users as users_1
  where users_1.location is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.location, users_1.websiteurl
  limit 37)
INTERSECT
(select  
    users_2.displayname, 
    posthistory_1.userdisplayname, 
    posthistory_1.creationdate, 
    users_2.location, 
    count(*)
  from 
    posthistory as posthistory_1
      inner join users as users_2
      on (posthistory_1.id = users_2.id )
  where users_2.profileimageurl is not NULL
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userid, 
    comments_1.userdisplayname, 
    comments_1.creationdate, 
    comments_1.text
  from 
    comments as comments_1
  where comments_1.id is not NULL
  limit 18)
UNION
(select  
    min(
      postlinks_1.id), 
    min(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 22)
UNION
(select  
    badges_1.userid, 
    max(
      badges_1.date), 
    badges_1.class, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 27);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.text
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  limit 24)
UNION
(select  
    badges_1.name
  from 
    badges as badges_1
  where badges_1.date is not NULL
  group by badges_1.name, badges_1.userid
  limit 6);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userid
  from 
    comments as comments_1
  where comments_1.text is not NULL
  limit 42)
EXCEPT
(select  
    votes_1.id
  from 
    votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
  where posts_1.id is not NULL
  group by posts_1.body, posts_1.contentlicense, posts_1.title, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 38);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id, 
    posthistory_2.userdisplayname, 
    posthistory_1.creationdate, 
    avg(
      posthistory_2.postid), 
    posthistory_1.revisionguid, 
    posthistory_2.postid, 
    posthistory_1.text, 
    posthistory_1.userid, 
    posthistory_2.posthistorytypeid, 
    posthistory_2.comment, 
    sum(
      posthistory_1.userid), 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_1.id <= posthistory_2.userid
  group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid, posthistory_2.comment, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.userdisplayname
  limit 30)
INTERSECT
(select  
    postlinks_1.linktypeid, 
    comments_1.text, 
    postlinks_1.creationdate, 
    avg(
      postlinks_1.postid), 
    comments_1.contentlicense, 
    postlinks_1.linktypeid, 
    comments_1.userdisplayname, 
    comments_1.userid, 
    comments_1.id, 
    comments_1.text, 
    sum(
      comments_1.userid), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where comments_1.contentlicense is not NULL
  limit 32);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  max(
    comments_1.creationdate), 
  comments_1.id
from 
  comments as comments_1
where comments_1.text is not NULL
group by comments_1.id
limit 2;
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.tags
  from 
    posts as posts_1
        inner join badges as badges_1
        on (posts_1.id = badges_1.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where badges_1.userid is not NULL
  limit 17)
EXCEPT
(select  
    posthistory_2.contentlicense
  from 
    votes as votes_2
        inner join posthistory as posthistory_1
        on (votes_2.id = posthistory_1.id )
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_2.posthistorytypeid is not NULL
  limit 23);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.profileimageurl, 
  votes_1.votetypeid, 
  users_1.id, 
  comments_1.postid, 
  votes_1.id, 
  posts_1.contentlicense
from 
  votes as votes_1
        inner join badges as badges_1
        on (votes_1.id = badges_1.id )
      inner join users as users_1
      on (badges_1.id = users_1.id )
    inner join comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
    on (users_1.id = posts_1.id )
where users_1.creationdate is not NULL
limit 27;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 40)
UNION
(select  
    sum(
      posthistory_1.id)
  from 
    posthistory as posthistory_1
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
  where posthistory_1.userid is not NULL
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.text, users_1.location, users_1.websiteurl
  limit 25);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.userid, 
    badges_1.tagbased, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 34)
UNION
(select  
    posts_1.tags, 
    posts_1.acceptedanswerid, 
    count(
      posts_1.parentid), 
    posts_1.creationdate
  from 
    posts as posts_1
  where posts_1.contentlicense >= posts_1.title
  group by posts_1.acceptedanswerid, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 7);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userid, 
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  limit 5)
UNION
(select  
    min(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.creationdate, votes_1.postid, votes_1.votetypeid
  limit 7);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.votetypeid, 
    users_1.creationdate, 
    users_1.displayname, 
    postlinks_1.postid, 
    users_1.location, 
    users_1.aboutme, 
    posts_1.acceptedanswerid
  from 
    votes as votes_1
        inner join postlinks as postlinks_1
        on (votes_1.id = postlinks_1.id )
      inner join users as users_1
        inner join posts as posts_1
        on (users_1.id = posts_1.id )
      on (postlinks_1.id = users_1.id )
  where postlinks_1.id is not NULL
  limit 9)
EXCEPT
(select  
    posts_2.owneruserid, 
    posts_2.creationdate, 
    posts_2.body, 
    posts_2.acceptedanswerid, 
    posts_2.body, 
    posts_2.title, 
    posts_2.parentid
  from 
    posts as posts_2
  where posts_2.owneruserid is not NULL
  group by posts_2.contentlicense, posts_2.creationdate, posts_2.ownerdisplayname, posts_2.parentid, posts_2.posttypeid, posts_2.tags, posts_2.title
  limit 20);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.class
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.name >= badges_1.name
  limit 13)
UNION
(select  
    votes_1.userid
  from 
    users as users_1
        inner join badges as badges_2
        on (users_1.id = badges_2.id )
      inner join votes as votes_1
        inner join posthistory as posthistory_1
        on (votes_1.id = posthistory_1.id )
      on (users_1.id = posthistory_1.id )
  where votes_1.creationdate >= badges_2.date
  group by badges_2.name, posthistory_1.comment, votes_1.userid
  limit 15);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_2.text
  from 
    comments as comments_1
      inner join comments as comments_2
      on (comments_1.id = comments_2.id )
  where comments_2.text < comments_1.contentlicense
  limit 9)
EXCEPT
(select  
    badges_1.name
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 3);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    posts_1.tags, 
    posts_1.title, 
    votes_1.postid, 
    posts_1.ownerdisplayname
  from 
    votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
  where posts_1.contentlicense is not NULL
  limit 5)
EXCEPT
(select  
    posthistory_1.creationdate, 
    posthistory_1.comment, 
    posthistory_1.userdisplayname, 
    avg(
      posthistory_1.userid), 
    posthistory_1.text
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  limit 32);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      postlinks_1.creationdate), 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.postid
  limit 9)
UNION
(select  
    min(
      posthistory_1.creationdate), 
    users_1.accountid
  from 
    users as users_1
      inner join posts as posts_1
          inner join posthistory as posthistory_1
          on (posts_1.id = posthistory_1.id )
        inner join badges as badges_1
        on (posthistory_1.id = badges_1.id )
      on (users_1.id = badges_1.id )
  where users_1.creationdate is not NULL
  limit 11);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userid, 
    comments_1.text, 
    comments_1.userdisplayname, 
    users_1.displayname, 
    users_1.creationdate, 
    users_1.location
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where users_1.accountid is not NULL
  limit 3)
UNION
(select  
    users_2.id, 
    comments_3.userdisplayname, 
    posts_1.body, 
    posts_1.contentlicense, 
    posts_1.creationdate, 
    users_2.displayname
  from 
    users as users_2
        inner join posts as posts_1
          inner join postlinks as postlinks_1
            inner join comments as comments_2
            on (postlinks_1.id = comments_2.id )
          on (posts_1.id = comments_2.id )
        on (users_2.id = posts_1.id )
      inner join comments as comments_3
      on (postlinks_1.id = comments_3.id )
  where users_2.location > posts_1.tags
  limit 1);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.userid, 
    max(
      badges_1.id), 
    badges_1.name, 
    sum(
      badges_1.userid), 
    max(
      badges_1.date), 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.date >= badges_1.date
  group by badges_1.name, badges_1.userid
  limit 8)
UNION
(select  
    badges_2.class, 
    count(
      votes_1.votetypeid), 
    badges_2.name, 
    sum(
      votes_1.votetypeid), 
    max(
      badges_2.date), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
      inner join badges as badges_2
      on (votes_1.id = badges_2.id )
  where badges_2.userid is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 24)
UNION
(select  
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 38);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.title, 
    posts_1.creationdate, 
    posts_1.contentlicense, 
    max(
      posts_1.creationdate), 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.title >= posts_1.tags
  group by posts_1.contentlicense, posts_1.creationdate, posts_1.posttypeid, posts_1.title
  limit 7)
EXCEPT
(select  
    posts_2.ownerdisplayname, 
    posthistory_1.creationdate, 
    posthistory_1.contentlicense, 
    min(
      posts_2.creationdate), 
    posts_2.acceptedanswerid
  from 
    posts as posts_2
      inner join posthistory as posthistory_1
      on (posts_2.id = posthistory_1.id )
  where posthistory_1.userid is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.postid, 
    comments_1.contentlicense, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 33)
UNION
(select  
    postlinks_1.postid, 
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate >= postlinks_1.creationdate
  limit 38);
-- meta {"num_joins":1,"num_aggregates":9,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      postlinks_1.linktypeid), 
    comments_1.userid, 
    min(
      comments_1.creationdate), 
    sum(
      postlinks_1.linktypeid), 
    max(
      comments_1.creationdate), 
    comments_1.postid, 
    count(
      postlinks_1.linktypeid), 
    min(
      comments_1.creationdate), 
    postlinks_1.creationdate, 
    postlinks_1.linktypeid, 
    max(
      comments_1.creationdate), 
    sum(
      postlinks_1.id), 
    comments_1.text, 
    comments_1.creationdate, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where postlinks_1.relatedpostid is not NULL
  group by comments_1.creationdate, comments_1.postid, comments_1.text, comments_1.userid, postlinks_1.creationdate, postlinks_1.linktypeid
  limit 22)
UNION
(select  
    avg(
      posts_1.acceptedanswerid), 
    posts_1.id, 
    min(
      posts_1.creationdate), 
    avg(
      posts_1.owneruserid), 
    max(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    max(
      posts_1.parentid), 
    max(
      posts_1.creationdate), 
    posts_1.creationdate, 
    posts_1.parentid, 
    min(
      posts_1.creationdate), 
    sum(
      posts_1.posttypeid), 
    min(
      posts_1.parentid), 
    posts_1.creationdate, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.creationdate >= posts_1.creationdate
  limit 10);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.userid, 
    votes_1.postid, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 12)
UNION
(select  
    postlinks_1.relatedpostid, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where postlinks_1.relatedpostid < posthistory_1.id
  group by posthistory_1.postid
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.revisionguid, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.text
from 
  posthistory as posthistory_1
where posthistory_1.userdisplayname = posthistory_1.revisionguid
limit 16;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.postid, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.id >= postlinks_1.postid
  limit 33)
UNION
(select  
    badges_1.class, 
    badges_1.class, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.id, badges_1.tagbased
  limit 19);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.comment, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  limit 23)
UNION
(select  
    max(
      postlinks_1.postid), 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 16);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.acceptedanswerid, 
    posts_1.ownerdisplayname, 
    badges_1.date, 
    posts_1.creationdate, 
    posts_1.contentlicense
  from 
    posts as posts_1
      inner join badges as badges_1
        inner join comments as comments_1
        on (badges_1.id = comments_1.id )
      on (posts_1.id = badges_1.id )
  where posts_1.id = comments_1.postid
  limit 3)
EXCEPT
(select  
    posts_2.acceptedanswerid, 
    posts_2.body, 
    max(
      posts_3.creationdate), 
    comments_2.creationdate, 
    posts_3.ownerdisplayname
  from 
    posts as posts_2
        inner join posts as posts_3
        on (posts_2.id = posts_3.id )
      inner join comments as comments_2
      on (posts_3.id = comments_2.id )
  where posts_3.parentid < posts_2.owneruserid
  group by comments_2.contentlicense, posts_2.owneruserid, posts_3.acceptedanswerid, posts_3.contentlicense, posts_3.id, posts_3.owneruserid, posts_3.title
  limit 17);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    sum(
      posts_1.acceptedanswerid), 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
      inner join posts as posts_1
        inner join comments as comments_2
        on (posts_1.id = comments_2.id )
      on (comments_1.id = posts_1.id )
  where comments_2.userdisplayname is not NULL
  limit 34)
UNION
(select  
    avg(
      postlinks_1.postid), 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.linktypeid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 39)
EXCEPT
(select  
    count(
      comments_1.id)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 29);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.tags, 
    posts_1.contentlicense, 
    badges_1.class
  from 
    comments as comments_1
        inner join badges as badges_1
        on (comments_1.id = badges_1.id )
      inner join posts as posts_1
        inner join comments as comments_2
        on (posts_1.id = comments_2.id )
      on (comments_1.id = posts_1.id )
  where posts_1.acceptedanswerid >= posts_1.posttypeid
  limit 5)
UNION
(select  
    posthistory_1.contentlicense, 
    posthistory_1.comment, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
        inner join postlinks as postlinks_1
        on (votes_1.id = postlinks_1.id )
      on (posthistory_1.id = postlinks_1.id )
  where posthistory_1.creationdate < votes_1.creationdate
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid, votes_1.postid
  limit 41);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  votes_1.votetypeid
from 
  posts as posts_1
    inner join votes as votes_1
    on (posts_1.id = votes_1.id )
where posts_1.ownerdisplayname = posts_1.contentlicense
limit 15;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.name
from 
  postlinks as postlinks_1
    inner join badges as badges_1
    on (postlinks_1.id = badges_1.id )
where postlinks_1.relatedpostid is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.date, 
    badges_1.class, 
    avg(
      badges_1.userid)
  from 
    badges as badges_1
  where badges_1.name > badges_1.name
  group by badges_1.class, badges_1.date, badges_1.id
  limit 2)
INTERSECT
(select  
    votes_1.userid, 
    comments_1.creationdate, 
    comments_1.postid, 
    avg(
      comments_1.id)
  from 
    comments as comments_1
      inner join votes as votes_1
      on (comments_1.id = votes_1.id )
  where votes_1.postid = votes_1.votetypeid
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  posthistory_1.creationdate, 
  posthistory_1.id, 
  posthistory_1.userdisplayname
from 
  posthistory as posthistory_1
where posthistory_1.id is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.date
  from 
    badges as badges_1
  where badges_1.name is not NULL
  limit 40)
UNION
(select  
    min(
      badges_2.id)
  from 
    badges as badges_2
  where badges_2.userid is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.votetypeid, 
    votes_1.userid, 
    votes_1.id, 
    votes_1.postid, 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 1)
INTERSECT
(select  
    comments_1.postid, 
    comments_1.id, 
    comments_1.postid, 
    comments_1.id, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  group by comments_1.id, comments_1.text, comments_1.userdisplayname
  limit 15);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 24)
EXCEPT
(select  
    posts_1.id
  from 
    postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.body, posts_1.ownerdisplayname, posts_1.posttypeid
  limit 39);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    avg(
      votes_1.userid), 
    votes_2.id, 
    votes_2.userid, 
    votes_1.creationdate, 
    votes_1.postid, 
    votes_1.id
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_2.id, votes_2.userid
  limit 1)
EXCEPT
(select  
    sum(
      badges_1.id), 
    badges_1.userid, 
    badges_1.class, 
    badges_1.date, 
    min(
      badges_1.date), 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.class
  limit 27);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    votes_1.id, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 35)
EXCEPT
(select  
    votes_2.creationdate, 
    votes_2.postid, 
    max(
      votes_2.creationdate)
  from 
    votes as votes_2
  where votes_2.postid is not NULL
  limit 25);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 25)
EXCEPT
(select  
    posthistory_1.userid, 
    users_1.creationdate, 
    posts_1.parentid
  from 
    posthistory as posthistory_1
        inner join postlinks as postlinks_2
          inner join badges as badges_1
          on (postlinks_2.id = badges_1.id )
        on (posthistory_1.id = postlinks_2.id )
      inner join posts as posts_1
          inner join votes as votes_1
          on (posts_1.id = votes_1.id )
        inner join users as users_1
        on (votes_1.id = users_1.id )
      on (posthistory_1.id = votes_1.id )
  where votes_1.votetypeid is not NULL
  group by badges_1.id, posthistory_1.creationdate, posthistory_1.text, posthistory_1.userdisplayname, postlinks_2.id, users_1.location, votes_1.postid, votes_1.votetypeid
  limit 29);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.linktypeid, 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid > postlinks_1.relatedpostid
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 6)
EXCEPT
(select  
    max(
      posthistory_1.creationdate), 
    comments_1.postid, 
    posthistory_1.postid, 
    comments_1.userid
  from 
    posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where posthistory_1.id is not NULL
  group by comments_1.postid, comments_1.text, comments_1.userid, posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.revisionguid
  limit 29);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      badges_1.date), 
    badges_1.id, 
    badges_1.date, 
    max(
      badges_1.userid), 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.id >= badges_1.userid
  group by badges_1.date, badges_1.id, badges_1.tagbased
  limit 42)
INTERSECT
(select  
    min(
      comments_1.creationdate), 
    comments_1.postid, 
    comments_1.creationdate, 
    count(
      comments_1.userid), 
    count(*)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname
  limit 12);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.postid, 
    posthistory_1.comment
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate < posthistory_1.creationdate
  limit 19)
UNION
(select  
    postlinks_1.id, 
    sum(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 4);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_2.userdisplayname, 
  comments_2.text, 
  comments_1.userdisplayname, 
  comments_2.creationdate, 
  comments_2.postid
from 
  posts as posts_1
        inner join comments as comments_1
          inner join posts as posts_2
          on (comments_1.id = posts_2.id )
        on (posts_1.id = comments_1.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
    inner join comments as comments_2
    on (votes_1.id = comments_2.id )
where comments_2.id is not NULL
limit 27;
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.text, 
    min(
      users_1.id), 
    users_1.websiteurl, 
    max(
      users_1.creationdate)
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where users_1.location is not NULL
  group by comments_1.text, users_1.websiteurl
  limit 12)
EXCEPT
(select  
    badges_1.name, 
    count(*), 
    count(
      posthistory_1.creationdate), 
    max(
      badges_1.date)
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
        inner join badges as badges_1
        on (posthistory_1.id = badges_1.id )
      on (votes_1.id = posthistory_1.id )
  where posthistory_1.revisionguid is not NULL
  group by badges_1.userid, posthistory_1.id, posthistory_1.posthistorytypeid, votes_1.votetypeid
  limit 17);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.date, 
    badges_1.tagbased, 
    min(
      badges_1.id), 
    min(
      badges_1.date), 
    sum(
      badges_1.userid), 
    badges_1.name, 
    badges_1.userid
  from 
    badges as badges_1
  where badges_1.name < badges_1.name
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 10)
INTERSECT
(select  
    max(
      users_1.creationdate), 
    users_1.creationdate, 
    count(*), 
    max(
      users_1.profileimageurl), 
    min(
      users_1.creationdate), 
    sum(
      users_1.id), 
    users_1.aboutme, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.aboutme is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.websiteurl
  limit 36);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.id
  from 
    comments as comments_1
  where comments_1.userid >= comments_1.postid
  limit 5)
INTERSECT
(select  
    comments_2.id
  from 
    comments as comments_2
  where comments_2.contentlicense <= comments_2.text
  limit 10);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.date, 
    postlinks_1.creationdate, 
    postlinks_1.id, 
    badges_1.id, 
    badges_1.name, 
    postlinks_1.postid
  from 
    badges as badges_1
      inner join postlinks as postlinks_1
      on (badges_1.id = postlinks_1.id )
  where badges_1.id is not NULL
  limit 22)
UNION
(select  
    badges_2.class, 
    badges_2.date, 
    badges_2.date, 
    badges_2.id, 
    badges_2.class, 
    badges_2.name, 
    badges_2.id
  from 
    badges as badges_2
  where badges_2.id is not NULL
  group by badges_2.id
  limit 18);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate > postlinks_1.creationdate
  limit 35)
UNION
(select  
    postlinks_2.relatedpostid, 
    posthistory_1.postid
  from 
    postlinks as postlinks_2
      inner join posthistory as posthistory_1
      on (postlinks_2.id = posthistory_1.id )
  where postlinks_2.postid is not NULL
  limit 30);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.creationdate, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    postlinks_1.id, 
    comments_1.contentlicense, 
    max(
      postlinks_1.creationdate), 
    comments_1.userdisplayname, 
    postlinks_1.linktypeid, 
    comments_1.postid, 
    postlinks_1.creationdate, 
    comments_1.userid
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where postlinks_1.creationdate is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.postid, comments_1.userdisplayname, comments_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 35)
EXCEPT
(select  
    min(
      votes_1.creationdate), 
    comments_2.id, 
    postlinks_2.relatedpostid, 
    votes_1.id, 
    comments_2.text, 
    min(
      comments_2.creationdate), 
    comments_2.contentlicense, 
    min(
      postlinks_2.creationdate), 
    postlinks_2.id, 
    votes_1.creationdate, 
    comments_2.userid
  from 
    comments as comments_2
      inner join votes as votes_1
        inner join postlinks as postlinks_2
        on (votes_1.id = postlinks_2.id )
      on (comments_2.id = postlinks_2.id )
  where votes_1.creationdate is not NULL
  limit 18);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    max(
      votes_1.postid), 
    max(
      votes_1.creationdate), 
    votes_1.votetypeid, 
    avg(
      votes_1.id), 
    votes_1.userid, 
    count(*)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 16)
EXCEPT
(select  
    min(
      badges_1.date), 
    count(*), 
    min(
      badges_1.date), 
    min(
      badges_1.userid), 
    sum(
      badges_1.id), 
    badges_1.id, 
    min(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased
  limit 19);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.revisionguid, 
    posthistory_1.posthistorytypeid, 
    count(*), 
    count(*)
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense is not NULL
  group by posthistory_1.posthistorytypeid, posthistory_1.revisionguid
  limit 1)
INTERSECT
(select  
    max(
      votes_1.id), 
    min(
      votes_1.creationdate), 
    max(
      votes_1.userid), 
    count(
      votes_1.id)
  from 
    votes as votes_1
  where votes_1.creationdate >= votes_1.creationdate
  limit 23);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.userid, 
    count(
      posthistory_2.userid), 
    posthistory_1.revisionguid, 
    count(
      posthistory_1.revisionguid), 
    posthistory_1.creationdate, 
    posthistory_2.postid, 
    posthistory_2.posthistorytypeid
  from 
    posthistory as posthistory_1
      inner join posthistory as posthistory_2
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_2.revisionguid is not NULL
  group by posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userid, posthistory_2.posthistorytypeid, posthistory_2.postid
  limit 15)
EXCEPT
(select  
    comments_1.postid, 
    count(
      posthistory_3.comment), 
    posthistory_3.contentlicense, 
    min(
      posthistory_3.id), 
    comments_1.creationdate, 
    max(
      comments_1.userid), 
    comments_1.userid
  from 
    posthistory as posthistory_3
      inner join comments as comments_1
      on (posthistory_3.id = comments_1.id )
  where posthistory_3.text is not NULL
  group by comments_1.creationdate, posthistory_3.creationdate, posthistory_3.id, posthistory_3.revisionguid
  limit 11);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  votes_1.votetypeid, 
  badges_1.name
from 
  votes as votes_1
    inner join badges as badges_1
    on (votes_1.id = badges_1.id )
where votes_1.votetypeid is not NULL
limit 16;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.body, 
    comments_1.userid, 
    users_1.websiteurl, 
    comments_1.contentlicense, 
    posts_1.ownerdisplayname, 
    comments_1.userdisplayname, 
    users_1.displayname, 
    users_1.location
  from 
    posts as posts_1
      inner join users as users_1
        inner join comments as comments_1
        on (users_1.id = comments_1.id )
      on (posts_1.id = users_1.id )
  where posts_1.acceptedanswerid is not NULL
  limit 30)
EXCEPT
(select  
    badges_1.name, 
    badges_1.userid, 
    badges_1.name, 
    max(
      badges_1.date), 
    count(
      badges_1.class), 
    badges_1.name, 
    badges_1.name, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.tagbased < badges_1.tagbased
  limit 20);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      comments_1.userid), 
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where comments_1.postid is not NULL
  group by posthistory_1.contentlicense
  limit 12)
EXCEPT
(select  
    count(
      postlinks_1.id), 
    max(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid < postlinks_1.postid
  limit 26);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate, 
  votes_1.userid, 
  votes_2.postid, 
  users_1.accountid, 
  votes_1.votetypeid
from 
  votes as votes_1
      inner join comments as comments_1
        inner join users as users_1
        on (comments_1.id = users_1.id )
      on (votes_1.id = users_1.id )
    inner join votes as votes_2
    on (comments_1.id = votes_2.id )
where votes_2.postid is not NULL
limit 11;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.creationdate, 
    comments_1.postid, 
    comments_1.id, 
    comments_1.userdisplayname, 
    comments_1.text, 
    max(
      comments_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where comments_1.creationdate > posthistory_1.creationdate
  group by comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname
  limit 14)
EXCEPT
(select  
    votes_1.creationdate, 
    max(
      votes_1.creationdate), 
    votes_1.id, 
    avg(
      votes_1.userid), 
    max(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.id >= votes_1.userid
  group by votes_1.creationdate, votes_1.votetypeid
  limit 25);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    min(
      posthistory_1.creationdate), 
    min(
      posthistory_1.postid), 
    max(
      posthistory_1.id), 
    posthistory_1.contentlicense, 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.postid > posthistory_1.id
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.userid
  limit 19)
EXCEPT
(select  
    users_1.location, 
    max(
      badges_1.date), 
    count(*), 
    count(*), 
    min(
      badges_1.userid), 
    min(
      postlinks_1.postid)
  from 
    users as users_1
        inner join postlinks as postlinks_1
        on (users_1.id = postlinks_1.id )
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
  where badges_1.tagbased is not NULL
  limit 23);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.aboutme, 
    users_1.creationdate, 
    users_1.accountid, 
    users_1.websiteurl
  from 
    users as users_1
  where users_1.displayname is not NULL
  limit 17)
UNION
(select  
    min(
      badges_1.date), 
    badges_1.date, 
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.name is not NULL
  group by badges_1.date, badges_1.tagbased
  limit 35);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.id
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 15)
UNION
(select  
    posts_1.id
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.title, 
    posts_1.id, 
    posts_1.tags, 
    count(
      posts_1.id), 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.id, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 19)
EXCEPT
(select  
    comments_1.userdisplayname, 
    comments_1.postid, 
    comments_1.userdisplayname, 
    min(
      comments_1.userid), 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  limit 17);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.owneruserid, 
    count(
      posts_1.creationdate), 
    posts_1.tags, 
    posts_1.title, 
    posts_1.id
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  group by posts_1.id, posts_1.owneruserid, posts_1.tags, posts_1.title
  limit 19)
EXCEPT
(select  
    postlinks_1.relatedpostid, 
    count(*), 
    users_2.websiteurl, 
    users_1.location, 
    users_1.accountid
  from 
    users as users_1
        inner join postlinks as postlinks_1
          inner join postlinks as postlinks_2
          on (postlinks_1.id = postlinks_2.id )
        on (users_1.id = postlinks_1.id )
      inner join users as users_2
      on (postlinks_2.id = users_2.id )
  where postlinks_1.postid is not NULL
  limit 2);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.id, 
    count(*), 
    postlinks_1.relatedpostid
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where comments_1.userdisplayname is not NULL
  group by comments_1.id, postlinks_1.relatedpostid
  limit 29)
EXCEPT
(select  
    comments_2.id, 
    count(
      comments_2.creationdate), 
    min(
      comments_2.creationdate)
  from 
    comments as comments_2
  where comments_2.userdisplayname is not NULL
  group by comments_2.id, comments_2.userdisplayname, comments_2.userid
  limit 1);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      posts_1.id), 
    posts_1.owneruserid, 
    posts_1.title, 
    count(
      posts_1.posttypeid), 
    votes_1.id
  from 
    votes as votes_1
      inner join posts as posts_1
      on (votes_1.id = posts_1.id )
  where posts_1.contentlicense is not NULL
  group by posts_1.owneruserid, posts_1.title, votes_1.id
  limit 31)
INTERSECT
(select  
    avg(
      posthistory_1.postid), 
    posthistory_1.id, 
    min(
      posthistory_1.creationdate), 
    min(
      posthistory_1.id), 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 18);
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.websiteurl, 
    badges_1.date, 
    badges_1.name, 
    count(*)
  from 
    users as users_1
        inner join badges as badges_1
          inner join votes as votes_1
          on (badges_1.id = votes_1.id )
        on (users_1.id = badges_1.id )
      inner join postlinks as postlinks_1
        inner join posthistory as posthistory_1
        on (postlinks_1.id = posthistory_1.id )
      on (users_1.id = posthistory_1.id )
  where badges_1.tagbased > badges_1.tagbased
  group by badges_1.date, badges_1.name, users_1.websiteurl
  limit 18)
EXCEPT
(select  
    count(*), 
    votes_2.creationdate, 
    avg(
      votes_2.postid), 
    min(
      postlinks_2.relatedpostid)
  from 
    votes as votes_2
      inner join postlinks as postlinks_2
      on (votes_2.id = postlinks_2.id )
  where votes_2.postid = postlinks_2.postid
  limit 21);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.tagbased, 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.class >= badges_1.userid
  limit 12)
UNION
(select  
    max(
      votes_1.creationdate), 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  limit 32)
EXCEPT
(select  
    min(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 13);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.contentlicense, 
    posthistory_1.id, 
    posthistory_1.userdisplayname, 
    posthistory_1.revisionguid, 
    posthistory_1.text, 
    posthistory_1.userid, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.userid is not NULL
  limit 36)
INTERSECT
(select  
    badges_2.name, 
    badges_2.class, 
    badges_1.name, 
    badges_2.name, 
    badges_2.name, 
    badges_1.class, 
    count(
      badges_2.userid)
  from 
    badges as badges_1
      inner join badges as badges_2
      on (badges_1.id = badges_2.id )
  where badges_2.class >= badges_1.userid
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid, badges_2.class, badges_2.id, badges_2.name, badges_2.userid
  limit 20);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.text, 
  comments_2.id, 
  postlinks_1.creationdate, 
  votes_2.creationdate
from 
  votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      inner join comments as comments_1
      on (votes_1.id = comments_1.id )
    inner join postlinks as postlinks_1
        inner join comments as comments_2
        on (postlinks_1.id = comments_2.id )
      inner join votes as votes_2
      on (postlinks_1.id = votes_2.id )
    on (comments_1.id = postlinks_1.id )
where posts_1.title is not NULL
limit 12;
-- meta {"num_joins":5,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.id, 
    posts_1.parentid, 
    posts_1.acceptedanswerid, 
    posts_1.creationdate, 
    max(
      posts_1.creationdate), 
    posts_1.body, 
    posts_1.tags, 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.id, posts_1.parentid, posts_1.posttypeid, posts_1.tags
  limit 3)
INTERSECT
(select  
    posthistory_1.userid, 
    posthistory_1.userid, 
    badges_1.class, 
    comments_1.creationdate, 
    max(
      comments_1.creationdate), 
    posts_2.tags, 
    posthistory_1.revisionguid, 
    posts_2.parentid
  from 
    posts as posts_2
          inner join badges as badges_1
          on (posts_2.id = badges_1.id )
        inner join users as users_1
        on (posts_2.id = users_1.id )
      inner join posts as posts_3
          inner join comments as comments_1
          on (posts_3.id = comments_1.id )
        inner join posthistory as posthistory_1
        on (posts_3.id = posthistory_1.id )
      on (users_1.id = comments_1.id )
  where posthistory_1.posthistorytypeid is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.id
from 
  postlinks as postlinks_1
where postlinks_1.postid is not NULL
limit 19;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.creationdate, 
    posts_1.contentlicense, 
    posts_1.id, 
    min(
      posts_1.id)
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  group by posts_1.contentlicense, posts_1.creationdate, posts_1.id
  limit 4)
UNION
(select  
    comments_1.creationdate, 
    comments_1.text, 
    users_1.id, 
    count(*)
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where users_1.location <= comments_1.text
  group by comments_1.creationdate, comments_1.postid, comments_1.text, users_1.accountid, users_1.id, users_1.location, users_1.profileimageurl
  limit 20);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.accountid, 
    users_2.id, 
    max(
      users_2.creationdate), 
    users_1.websiteurl, 
    min(
      users_1.creationdate), 
    users_1.id
  from 
    users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
  where users_2.location is not NULL
  group by users_1.accountid, users_1.id, users_1.websiteurl, users_2.id
  limit 12)
UNION
(select  
    postlinks_1.id, 
    postlinks_1.postid, 
    max(
      postlinks_1.creationdate), 
    sum(
      postlinks_1.relatedpostid), 
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid
  limit 5);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.id, 
    votes_1.postid, 
    votes_1.votetypeid, 
    votes_1.userid, 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 18)
EXCEPT
(select  
    votes_2.userid, 
    votes_2.id, 
    votes_2.votetypeid, 
    votes_2.id, 
    min(
      votes_2.creationdate)
  from 
    comments as comments_1
      inner join votes as votes_2
      on (comments_1.id = votes_2.id )
  where votes_2.votetypeid is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userid, votes_2.creationdate, votes_2.id, votes_2.postid, votes_2.userid, votes_2.votetypeid
  limit 34);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.creationdate, 
  posts_1.tags, 
  comments_1.postid, 
  comments_1.id, 
  users_1.creationdate, 
  users_1.id, 
  posts_1.parentid, 
  users_1.aboutme
from 
  posts as posts_1
    inner join users as users_1
      inner join comments as comments_1
      on (users_1.id = comments_1.id )
    on (posts_1.id = comments_1.id )
where comments_1.userdisplayname <= posts_1.title
limit 26;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.creationdate
  from 
    users as users_1
  where users_1.accountid <= users_1.id
  limit 26)
EXCEPT
(select  
    comments_1.creationdate
  from 
    comments as comments_1
        inner join badges as badges_1
        on (comments_1.id = badges_1.id )
      inner join users as users_2
      on (badges_1.id = users_2.id )
  where badges_1.name >= comments_1.text
  limit 7);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.title
  from 
    posts as posts_1
  where posts_1.creationdate is not NULL
  limit 35)
INTERSECT
(select  
    count(*)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 13);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.comment, 
  comments_3.userid, 
  posthistory_1.userdisplayname, 
  max(
    comments_1.creationdate)
from 
  posthistory as posthistory_1
    inner join comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      inner join comments as comments_3
      on (comments_1.id = comments_3.id )
    on (posthistory_1.id = comments_1.id )
where comments_3.postid is not NULL
group by comments_3.userid, posthistory_1.comment, posthistory_1.userdisplayname
limit 3;
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.posttypeid < posts_1.id
  limit 14)
EXCEPT
(select  
    badges_1.class
  from 
    badges as badges_1
        inner join posthistory as posthistory_1
        on (badges_1.id = posthistory_1.id )
      inner join posthistory as posthistory_2
      on (badges_1.id = posthistory_2.id )
  where badges_1.id is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.userid, posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.userdisplayname, posthistory_2.contentlicense, posthistory_2.creationdate, posthistory_2.postid, posthistory_2.revisionguid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.location is not NULL
  limit 16)
INTERSECT
(select  
    max(
      users_2.creationdate)
  from 
    users as users_2
  where users_2.websiteurl is not NULL
  group by users_2.aboutme, users_2.accountid, users_2.creationdate, users_2.location, users_2.websiteurl
  limit 4);
-- meta {"num_joins":6,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.name
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
        inner join badges as badges_2
        on (badges_1.id = badges_2.id )
      on (postlinks_1.id = badges_1.id )
  where badges_1.date <= postlinks_1.creationdate
  limit 11)
EXCEPT
(select  
    posthistory_1.revisionguid
  from 
    comments as comments_1
        inner join posthistory as posthistory_1
          inner join comments as comments_2
          on (posthistory_1.id = comments_2.id )
        on (comments_1.id = posthistory_1.id )
      inner join users as users_1
        inner join badges as badges_3
        on (users_1.id = badges_3.id )
      on (posthistory_1.id = badges_3.id )
  where posthistory_1.revisionguid is not NULL
  group by badges_3.tagbased, badges_3.userid, comments_1.userdisplayname
  limit 12);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 31)
UNION
(select  
    comments_1.id, 
    avg(
      comments_1.id)
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  max(
    postlinks_1.linktypeid), 
  postlinks_1.postid, 
  postlinks_1.id, 
  postlinks_1.relatedpostid, 
  postlinks_1.linktypeid
from 
  postlinks as postlinks_1
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 19;
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.tags, 
    posts_1.contentlicense, 
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.parentid <= posts_1.id
  limit 6)
EXCEPT
(select  
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.postid
  limit 13);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.tags, 
  posts_1.body
from 
  posts as posts_1
where posts_1.parentid > posts_1.owneruserid
limit 39;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.contentlicense, 
    sum(
      comments_1.postid), 
    comments_1.id, 
    posthistory_1.id, 
    comments_1.postid, 
    posthistory_1.postid
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where posthistory_1.userid > comments_1.id
  group by comments_1.contentlicense, comments_1.id, comments_1.postid, posthistory_1.id, posthistory_1.postid
  limit 20)
INTERSECT
(select  
    posts_1.ownerdisplayname, 
    sum(
      posts_1.parentid), 
    posts_1.id, 
    posts_1.owneruserid, 
    posts_1.acceptedanswerid, 
    count(
      posts_1.contentlicense)
  from 
    posts as posts_1
  where posts_1.owneruserid is not NULL
  limit 2);
-- meta {"num_joins":5,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.creationdate, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 42)
UNION
(select  
    users_1.creationdate, 
    posts_1.parentid
  from 
    users as users_1
      inner join posts as posts_1
          inner join comments as comments_1
          on (posts_1.id = comments_1.id )
        inner join comments as comments_2
            inner join users as users_2
            on (comments_2.id = users_2.id )
          inner join posthistory as posthistory_1
          on (users_2.id = posthistory_1.id )
        on (posts_1.id = comments_2.id )
      on (users_1.id = comments_1.id )
  where users_1.websiteurl = users_1.aboutme
  limit 16);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.contentlicense, 
    comments_1.userdisplayname
  from 
    posthistory as posthistory_1
        inner join comments as comments_1
        on (posthistory_1.id = comments_1.id )
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
  where posts_1.posttypeid is not NULL
  limit 41)
UNION
(select  
    badges_1.name, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.tagbased > badges_1.tagbased
  group by badges_1.class, badges_1.id, badges_1.tagbased, badges_1.userid
  limit 33);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.postid, 
    votes_1.id, 
    votes_1.votetypeid, 
    comments_1.text, 
    posts_1.acceptedanswerid, 
    users_1.websiteurl
  from 
    users as users_1
        inner join comments as comments_1
        on (users_1.id = comments_1.id )
      inner join votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      on (comments_1.id = posts_1.id )
  where votes_1.userid is not NULL
  limit 12)
EXCEPT
(select  
    max(
      badges_1.date), 
    badges_1.userid, 
    count(
      badges_1.name), 
    badges_1.name, 
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    votes_1.id), 
  votes_1.id, 
  votes_1.creationdate, 
  votes_1.userid
from 
  votes as votes_1
where votes_1.userid > votes_1.postid
group by votes_1.creationdate, votes_1.id, votes_1.userid
limit 32;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.contentlicense >= comments_1.userdisplayname
  limit 33)
INTERSECT
(select  
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 34);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.creationdate, 
    posthistory_1.postid, 
    posthistory_1.revisionguid, 
    posthistory_1.comment
  from 
    posthistory as posthistory_1
  where posthistory_1.text < posthistory_1.comment
  limit 11)
INTERSECT
(select  
    min(
      posts_1.creationdate), 
    posts_1.acceptedanswerid, 
    posts_1.body, 
    posts_1.ownerdisplayname
  from 
    posts as posts_1
  where posts_1.title is not NULL
  limit 26);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.postid, 
    count(*), 
    postlinks_1.id, 
    postlinks_1.creationdate, 
    max(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 1)
EXCEPT
(select  
    users_1.profileimageurl, 
    users_1.profileimageurl, 
    max(
      users_1.accountid), 
    min(
      users_1.profileimageurl), 
    users_1.creationdate, 
    count(
      users_1.id), 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.aboutme is not NULL
  group by users_1.displayname
  limit 41);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.text, 
    posthistory_1.contentlicense, 
    min(
      posthistory_1.userid), 
    posthistory_1.userdisplayname, 
    min(
      posthistory_1.creationdate), 
    avg(
      posthistory_1.postid)
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  group by posthistory_1.contentlicense, posthistory_1.text, posthistory_1.userdisplayname
  limit 31)
UNION
(select  
    count(*), 
    sum(
      postlinks_1.relatedpostid), 
    max(
      postlinks_1.relatedpostid), 
    min(
      postlinks_1.postid), 
    max(
      postlinks_1.creationdate), 
    avg(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 23);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.creationdate
from 
  users as users_1
where users_1.aboutme is not NULL
limit 25;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.displayname, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.accountid >= users_1.id
  limit 7)
EXCEPT
(select  
    users_2.location, 
    max(
      users_2.creationdate)
  from 
    users as users_2
  where users_2.accountid is not NULL
  limit 26);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      badges_1.date)
  from 
    posthistory as posthistory_1
      inner join badges as badges_1
      on (posthistory_1.id = badges_1.id )
  where badges_1.date is not NULL
  limit 22)
EXCEPT
(select  
    max(
      posthistory_2.creationdate)
  from 
    posthistory as posthistory_2
  where posthistory_2.creationdate >= posthistory_2.creationdate
  group by posthistory_2.userid
  limit 28);
-- meta {"num_joins":0,"num_aggregates":6,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.creationdate, 
    votes_1.id, 
    sum(
      votes_1.userid), 
    votes_1.postid, 
    votes_1.votetypeid, 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    avg(
      votes_1.votetypeid), 
    min(
      votes_1.creationdate), 
    count(
      votes_1.votetypeid), 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 35)
UNION
(select  
    posthistory_1.creationdate, 
    max(
      posthistory_1.creationdate), 
    avg(
      posthistory_1.posthistorytypeid), 
    posthistory_1.posthistorytypeid, 
    posthistory_1.id, 
    max(
      posthistory_1.creationdate), 
    min(
      posthistory_1.creationdate), 
    avg(
      posthistory_1.posthistorytypeid), 
    min(
      posthistory_1.creationdate), 
    max(
      posthistory_1.posthistorytypeid), 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.postid is not NULL
  limit 2);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  posts_1.posttypeid, 
  users_1.creationdate, 
  users_1.accountid, 
  posts_1.id, 
  users_1.location
from 
  users as users_1
    inner join posts as posts_1
    on (users_1.id = posts_1.id )
where users_1.creationdate is not NULL
limit 8;
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(*), 
    users_1.aboutme, 
    users_1.websiteurl, 
    users_1.id, 
    users_1.displayname, 
    max(
      users_1.creationdate), 
    users_1.location
  from 
    users as users_1
  where users_1.accountid is not NULL
  group by users_1.aboutme, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
  limit 34)
EXCEPT
(select  
    count(
      badges_1.class), 
    comments_1.userdisplayname, 
    comments_1.text, 
    badges_1.class, 
    comments_1.text, 
    max(
      badges_1.date), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
          inner join comments as comments_1
          on (badges_1.id = comments_1.id )
        inner join postlinks as postlinks_2
        on (badges_1.id = postlinks_2.id )
      on (postlinks_1.id = postlinks_2.id )
  where postlinks_1.creationdate > badges_1.date
  limit 6);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 25)
INTERSECT
(select  
    users_1.id
  from 
    users as users_1
  where users_1.creationdate > users_1.creationdate
  limit 21);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  posthistory_1.contentlicense, 
  posthistory_1.posthistorytypeid, 
  posthistory_1.id, 
  min(
    posthistory_1.creationdate), 
  min(
    posthistory_1.creationdate), 
  posthistory_1.userdisplayname, 
  posthistory_1.revisionguid
from 
  posthistory as posthistory_1
where posthistory_1.comment is not NULL
group by posthistory_1.contentlicense, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userdisplayname, posthistory_1.userid
limit 12;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate = postlinks_1.creationdate
  limit 20)
EXCEPT
(select  
    postlinks_2.relatedpostid
  from 
    postlinks as postlinks_2
        inner join postlinks as postlinks_3
        on (postlinks_2.id = postlinks_3.id )
      inner join badges as badges_1
      on (postlinks_3.id = badges_1.id )
  where badges_1.date > postlinks_3.creationdate
  group by badges_1.class, badges_1.id
  limit 16);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.userid
  limit 40)
UNION
(select  
    count(*), 
    votes_2.id
  from 
    votes as votes_2
  where votes_2.creationdate = votes_2.creationdate
  limit 13);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.creationdate, 
    min(
      votes_1.creationdate), 
    votes_1.postid, 
    votes_1.userid, 
    avg(
      votes_1.id), 
    max(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.creationdate, votes_1.postid, votes_1.userid
  limit 32)
EXCEPT
(select  
    max(
      postlinks_1.linktypeid), 
    min(
      postlinks_1.creationdate), 
    postlinks_1.id, 
    postlinks_1.id, 
    avg(
      postlinks_1.linktypeid), 
    min(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate = postlinks_1.creationdate
  group by postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 7);
-- meta {"num_joins":4,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.creationdate, 
    votes_1.votetypeid, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 20)
UNION
(select  
    votes_2.creationdate, 
    min(
      votes_2.creationdate), 
    votes_2.id
  from 
    badges as badges_1
          inner join badges as badges_2
          on (badges_1.id = badges_2.id )
        inner join badges as badges_3
          inner join posthistory as posthistory_1
          on (badges_3.id = posthistory_1.id )
        on (badges_2.id = posthistory_1.id )
      inner join votes as votes_2
      on (posthistory_1.id = votes_2.id )
  where posthistory_1.userdisplayname is not NULL
  limit 34);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userid, 
    comments_1.contentlicense, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.creationdate is not NULL
  limit 11)
EXCEPT
(select  
    votes_1.votetypeid, 
    sum(
      votes_1.votetypeid), 
    votes_2.userid
  from 
    votes as votes_1
      inner join votes as votes_2
      on (votes_1.id = votes_2.id )
  where votes_1.postid is not NULL
  limit 31);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.postid, 
    min(
      postlinks_1.linktypeid), 
    postlinks_1.linktypeid, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 40)
INTERSECT
(select distinct 
    users_1.id, 
    posthistory_1.postid, 
    max(
      users_1.accountid), 
    avg(
      postlinks_2.id), 
    posthistory_1.creationdate, 
    max(
      users_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join users as users_1
        inner join postlinks as postlinks_2
        on (users_1.id = postlinks_2.id )
      on (posthistory_1.id = postlinks_2.id )
  where posthistory_1.id is not NULL
  limit 7);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.tags, 
    votes_1.votetypeid
  from 
    posts as posts_1
        inner join posts as posts_2
        on (posts_1.id = posts_2.id )
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where votes_1.creationdate <= posts_2.creationdate
  limit 5)
UNION
(select  
    badges_1.name, 
    posts_3.id
  from 
    posts as posts_3
      inner join badges as badges_1
      on (posts_3.id = badges_1.id )
  where badges_1.class is not NULL
  group by badges_1.date, posts_3.acceptedanswerid, posts_3.body, posts_3.id
  limit 41);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.posthistorytypeid, 
  posthistory_1.userid, 
  posthistory_1.creationdate
from 
  posthistory as posthistory_1
where posthistory_1.posthistorytypeid = posthistory_1.userid
limit 13;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.aboutme
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 20)
EXCEPT
(select  
    count(*)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      votes_1.creationdate), 
    votes_1.votetypeid, 
    votes_1.postid, 
    votes_1.id, 
    votes_1.userid, 
    votes_1.creationdate, 
    max(
      votes_1.userid), 
    sum(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 21)
EXCEPT
(select  
    max(
      badges_1.date), 
    badges_1.id, 
    badges_1.userid, 
    sum(
      badges_1.class), 
    max(
      badges_1.date), 
    badges_1.date, 
    max(
      badges_1.id), 
    avg(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.userid > badges_1.id
  limit 32);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.body, 
    posts_1.id, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  limit 1)
INTERSECT
(select  
    posthistory_1.contentlicense, 
    posthistory_1.userid, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  group by posthistory_1.comment, posthistory_1.id, posthistory_1.text, posthistory_1.userdisplayname
  limit 33);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(
      posthistory_1.creationdate), 
    posthistory_1.creationdate, 
    posthistory_1.text, 
    posthistory_1.userdisplayname, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  group by posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userdisplayname
  limit 20)
INTERSECT
(select  
    max(
      posts_1.parentid), 
    posts_1.creationdate, 
    posts_1.ownerdisplayname, 
    max(
      posts_1.owneruserid), 
    min(
      posts_1.creationdate), 
    posts_1.posttypeid, 
    posts_1.tags
  from 
    posts as posts_1
  where posts_1.creationdate > posts_1.creationdate
  group by posts_1.creationdate, posts_1.posttypeid
  limit 33);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.userid, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.posthistorytypeid, 
    posthistory_1.creationdate, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.revisionguid, 
    posthistory_1.contentlicense, 
    posthistory_1.text, 
    posthistory_1.postid, 
    count(*)
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate = posthistory_1.creationdate
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
  limit 26)
UNION
(select  
    postlinks_1.id, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    max(
      postlinks_1.creationdate), 
    count(
      postlinks_1.postid), 
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid, 
    count(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.websiteurl, 
    users_1.displayname, 
    users_1.id, 
    users_1.creationdate
  from 
    users as users_1
  where users_1.id is not NULL
  limit 29)
EXCEPT
(select  
    min(
      votes_1.creationdate), 
    avg(
      votes_1.userid), 
    votes_1.postid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 12);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.tags, 
    posts_1.posttypeid, 
    posts_1.body
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  limit 27)
EXCEPT
(select  
    posthistory_1.contentlicense, 
    votes_1.userid, 
    posthistory_1.comment
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where votes_1.creationdate is not NULL
  limit 6);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.posthistorytypeid, 
    postlinks_1.linktypeid, 
    posthistory_1.creationdate, 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userid, 
    postlinks_1.creationdate
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where posthistory_1.userdisplayname >= posthistory_1.contentlicense
  group by posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.linktypeid
  limit 8)
UNION
(select  
    comments_1.id, 
    comments_1.userid, 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    comments_1.userid, 
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.postid = comments_1.userid
  group by comments_1.contentlicense, comments_1.creationdate
  limit 41);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  limit 22)
UNION
(select  
    max(
      badges_1.userid)
  from 
    badges as badges_1
  where badges_1.date >= badges_1.date
  limit 1);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.displayname, 
    posts_1.contentlicense, 
    posts_1.owneruserid, 
    count(*), 
    max(
      posts_1.posttypeid), 
    users_1.aboutme
  from 
    posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where posts_1.creationdate < users_1.creationdate
  group by posts_1.contentlicense, posts_1.owneruserid, users_1.aboutme, users_1.displayname
  limit 38)
UNION
(select  
    avg(
      badges_1.id), 
    badges_1.name, 
    badges_1.class, 
    min(
      badges_1.class), 
    count(
      badges_1.id), 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.date
  limit 9);
-- meta {"num_joins":4,"num_aggregates":6,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      votes_1.creationdate), 
    votes_1.votetypeid, 
    max(
      posts_1.creationdate), 
    max(
      posts_1.posttypeid), 
    sum(
      posts_1.acceptedanswerid), 
    posts_1.owneruserid, 
    posts_1.parentid, 
    posts_1.contentlicense, 
    max(
      posts_1.creationdate)
  from 
    posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where posts_1.title is not NULL
  group by posts_1.contentlicense, posts_1.owneruserid, posts_1.parentid, votes_1.votetypeid
  limit 13)
INTERSECT
(select  
    min(
      badges_2.date), 
    badges_2.id, 
    min(
      votes_2.creationdate), 
    count(
      postlinks_1.relatedpostid), 
    sum(
      badges_1.class), 
    badges_1.id, 
    badges_2.id, 
    badges_1.name, 
    min(
      badges_1.date)
  from 
    badges as badges_1
          inner join postlinks as postlinks_1
          on (badges_1.id = postlinks_1.id )
        inner join votes as votes_2
        on (badges_1.id = votes_2.id )
      inner join badges as badges_2
      on (postlinks_1.id = badges_2.id )
  where postlinks_1.relatedpostid = postlinks_1.id
  group by badges_1.userid, badges_2.class
  limit 33);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.id
  from 
    posthistory as posthistory_1
        inner join postlinks as postlinks_1
        on (posthistory_1.id = postlinks_1.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.name is not NULL
  limit 35)
UNION
(select  
    posthistory_2.id, 
    posthistory_2.userid
  from 
    posthistory as posthistory_2
  where posthistory_2.creationdate = posthistory_2.creationdate
  group by posthistory_2.comment, posthistory_2.id, posthistory_2.posthistorytypeid, posthistory_2.postid, posthistory_2.revisionguid, posthistory_2.text, posthistory_2.userdisplayname, posthistory_2.userid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    max(
      postlinks_1.id), 
    postlinks_1.relatedpostid, 
    sum(
      postlinks_1.linktypeid), 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.postid, postlinks_1.relatedpostid
  limit 10)
UNION
(select  
    count(*), 
    count(
      posts_1.tags), 
    min(
      posts_1.id), 
    sum(
      posts_1.id), 
    posts_1.posttypeid
  from 
    posts as posts_1
  where posts_1.creationdate >= posts_1.creationdate
  limit 26);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.postid, 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 41)
INTERSECT
(select  
    max(
      postlinks_1.id), 
    comments_1.userid
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where postlinks_1.postid is not NULL
  limit 33);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      postlinks_1.creationdate), 
    comments_1.creationdate
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
        inner join badges as badges_1
        on (comments_1.id = badges_1.id )
      on (postlinks_1.id = comments_1.id )
  where badges_1.userid is not NULL
  group by comments_1.creationdate
  limit 25)
UNION
(select  
    max(
      badges_2.date), 
    votes_1.creationdate
  from 
    votes as votes_1
      inner join badges as badges_2
        inner join posts as posts_1
        on (badges_2.id = posts_1.id )
      on (votes_1.id = badges_2.id )
  where badges_2.tagbased is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.parentid, 
  posts_1.contentlicense, 
  posts_1.creationdate, 
  posts_1.posttypeid, 
  min(
    posts_1.creationdate), 
  count(*), 
  posts_1.title, 
  posts_1.ownerdisplayname
from 
  posts as posts_1
where posts_1.acceptedanswerid <= posts_1.posttypeid
group by posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.title
limit 25;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.linktypeid, 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 29)
INTERSECT
(select  
    postlinks_2.id, 
    comments_1.postid, 
    comments_1.postid
  from 
    comments as comments_1
        inner join postlinks as postlinks_2
        on (comments_1.id = postlinks_2.id )
      inner join postlinks as postlinks_3
      on (comments_1.id = postlinks_3.id )
  where postlinks_3.creationdate is not NULL
  group by comments_1.id, comments_1.userid, postlinks_2.relatedpostid, postlinks_3.linktypeid, postlinks_3.postid
  limit 42);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid
from 
  users as users_1
where users_1.creationdate is not NULL
limit 18;
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.websiteurl, 
    users_1.displayname
  from 
    users as users_1
  where users_1.creationdate > users_1.creationdate
  limit 10)
UNION
(select  
    badges_1.name, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased
  limit 35);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.postid, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.id
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
  limit 17)
EXCEPT
(select  
    max(
      comments_1.id), 
    max(
      posthistory_1.creationdate), 
    min(
      comments_1.creationdate), 
    votes_1.id
  from 
    users as users_1
        inner join votes as votes_1
        on (users_1.id = votes_1.id )
      inner join comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      on (users_1.id = comments_1.id )
  where votes_1.userid > posthistory_1.id
  group by comments_1.id, comments_1.text, posthistory_1.creationdate, users_1.aboutme, votes_1.userid
  limit 38);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.id, 
    posts_1.title, 
    posts_1.parentid, 
    posts_1.ownerdisplayname, 
    posts_1.posttypeid, 
    posts_1.acceptedanswerid, 
    posts_1.creationdate, 
    posts_1.tags, 
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.body >= posts_1.ownerdisplayname
  limit 27)
INTERSECT
(select  
    badges_1.id, 
    badges_1.name, 
    badges_1.userid, 
    badges_1.name, 
    badges_1.userid, 
    badges_1.class, 
    badges_1.date, 
    max(
      badges_1.userid), 
    badges_1.id
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  group by badges_1.id, badges_1.tagbased, badges_1.userid
  limit 28);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userid, 
    comments_1.contentlicense, 
    comments_1.creationdate, 
    comments_1.text, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.id > comments_1.userid
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.text, comments_1.userid
  limit 25)
EXCEPT
(select  
    users_1.profileimageurl, 
    count(
      users_1.websiteurl), 
    posthistory_1.creationdate, 
    users_1.displayname, 
    min(
      users_1.creationdate)
  from 
    users as users_1
      inner join posthistory as posthistory_1
      on (users_1.id = posthistory_1.id )
  where users_1.id is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 29)
UNION
(select  
    min(
      posts_1.creationdate), 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  limit 14);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.postid, 
    votes_1.id, 
    votes_1.votetypeid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 32)
UNION
(select  
    postlinks_1.postid, 
    postlinks_1.linktypeid, 
    badges_1.userid
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
  where badges_1.tagbased > badges_1.tagbased
  group by badges_1.name, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 32);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.tags, 
    posts_1.parentid, 
    posts_1.owneruserid, 
    posts_1.id, 
    posts_1.ownerdisplayname, 
    posts_1.title, 
    posts_1.body, 
    posts_1.creationdate, 
    posts_1.posttypeid, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  limit 25)
EXCEPT
(select  
    count(*), 
    postlinks_1.linktypeid, 
    votes_1.votetypeid, 
    votes_1.userid, 
    max(
      postlinks_1.creationdate), 
    count(
      votes_1.votetypeid), 
    max(
      postlinks_1.creationdate), 
    postlinks_1.creationdate, 
    votes_1.userid, 
    count(*)
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where postlinks_1.relatedpostid >= postlinks_1.linktypeid
  limit 41);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.postid, 
    posthistory_1.revisionguid, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
  limit 2)
EXCEPT
(select  
    max(
      badges_1.id), 
    badges_1.name, 
    max(
      badges_1.date), 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.id, badges_1.userid
  limit 23);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    max(
      postlinks_1.id), 
    votes_1.id
  from 
    badges as badges_1
        inner join postlinks as postlinks_1
        on (badges_1.id = postlinks_1.id )
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where badges_1.name >= badges_1.name
  group by postlinks_1.creationdate, votes_1.id
  limit 7)
UNION
(select  
    badges_2.date, 
    count(
      badges_2.userid), 
    users_1.accountid
  from 
    badges as badges_2
      inner join users as users_1
      on (badges_2.id = users_1.id )
  where badges_2.tagbased = badges_2.tagbased
  group by badges_2.date, badges_2.tagbased
  limit 18);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.id, 
    postlinks_1.postid, 
    min(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 27)
INTERSECT
(select  
    comments_1.postid, 
    comments_1.id, 
    min(
      comments_1.creationdate), 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.userdisplayname
  limit 21);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.accountid, 
  users_1.aboutme, 
  users_1.displayname
from 
  users as users_1
    inner join posthistory as posthistory_1
    on (users_1.id = posthistory_1.id )
where users_1.creationdate = posthistory_1.creationdate
limit 11;
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.location, 
    users_1.accountid, 
    users_1.id, 
    users_1.aboutme, 
    count(
      users_1.aboutme), 
    min(
      users_1.creationdate), 
    users_1.profileimageurl, 
    max(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.websiteurl = users_1.displayname
  group by users_1.aboutme, users_1.accountid, users_1.id, users_1.location, users_1.profileimageurl
  limit 10)
UNION
(select distinct 
    badges_1.name, 
    badges_1.userid, 
    badges_1.id, 
    count(
      badges_1.class), 
    count(*), 
    min(
      badges_1.date), 
    badges_1.id, 
    min(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.date < badges_1.date
  limit 17);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userdisplayname, 
  comments_1.text, 
  comments_1.id, 
  postlinks_1.linktypeid, 
  comments_1.creationdate, 
  postlinks_1.relatedpostid, 
  max(
    comments_1.postid)
from 
  postlinks as postlinks_1
    inner join comments as comments_1
    on (postlinks_1.id = comments_1.id )
where comments_1.userdisplayname > comments_1.text
group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, postlinks_1.linktypeid, postlinks_1.relatedpostid
limit 23;
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid, 
    min(
      postlinks_1.creationdate), 
    posthistory_1.userid
  from 
    posthistory as posthistory_1
      inner join postlinks as postlinks_1
      on (posthistory_1.id = postlinks_1.id )
  where postlinks_1.id is not NULL
  group by posthistory_1.posthistorytypeid, posthistory_1.revisionguid, posthistory_1.userid
  limit 38)
UNION
(select  
    comments_1.id, 
    comments_1.userdisplayname, 
    min(
      comments_1.creationdate), 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  group by comments_1.creationdate, comments_1.text
  limit 27);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate = postlinks_1.creationdate
  limit 10)
UNION
(select  
    users_1.id, 
    users_1.id
  from 
    users as users_1
  where users_1.websiteurl <= users_1.displayname
  group by users_1.accountid, users_1.id, users_1.profileimageurl
  limit 31);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.postid
  limit 13)
UNION
(select  
    votes_1.creationdate, 
    min(
      votes_1.creationdate), 
    avg(
      votes_1.userid)
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where posthistory_1.userid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.votetypeid
  limit 29);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  count(*), 
  users_1.aboutme, 
  postlinks_1.linktypeid, 
  min(
    postlinks_1.creationdate), 
  postlinks_1.postid, 
  postlinks_1.creationdate, 
  users_1.websiteurl, 
  users_1.creationdate
from 
  users as users_1
    inner join postlinks as postlinks_1
    on (users_1.id = postlinks_1.id )
where postlinks_1.id is not NULL
group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, users_1.aboutme, users_1.creationdate, users_1.websiteurl
limit 34;
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.userdisplayname
  from 
    badges as badges_1
      inner join posthistory as posthistory_1
      on (badges_1.id = posthistory_1.id )
  where posthistory_1.revisionguid is not NULL
  limit 29)
UNION
(select  
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  limit 19);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.creationdate, 
    min(
      comments_1.creationdate), 
    comments_1.userid, 
    comments_1.postid, 
    min(
      comments_1.creationdate), 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.creationdate, comments_1.postid, comments_1.userdisplayname, comments_1.userid
  limit 15)
INTERSECT
(select  
    sum(
      comments_2.userid), 
    max(
      posts_1.creationdate), 
    max(
      comments_2.postid), 
    avg(
      comments_2.postid), 
    max(
      comments_2.creationdate), 
    comments_2.contentlicense
  from 
    posts as posts_1
      inner join comments as comments_2
      on (posts_1.id = comments_2.id )
  where posts_1.acceptedanswerid is not NULL
  group by comments_2.id, comments_2.userdisplayname, comments_2.userid, posts_1.contentlicense, posts_1.creationdate, posts_1.tags
  limit 20);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
        inner join posts as posts_1
        on (votes_1.id = posts_1.id )
      on (postlinks_1.id = posts_1.id )
  where votes_1.votetypeid is not NULL
  limit 31)
UNION
(select  
    votes_2.id
  from 
    votes as votes_2
  where votes_2.creationdate <= votes_2.creationdate
  limit 28);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.owneruserid, 
    max(
      posts_1.creationdate), 
    max(
      comments_1.creationdate), 
    comments_1.contentlicense, 
    users_1.id
  from 
    users as users_1
        inner join posts as posts_1
        on (users_1.id = posts_1.id )
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where posts_1.acceptedanswerid is not NULL
  group by comments_1.contentlicense, posts_1.owneruserid, users_1.id
  limit 24)
UNION
(select  
    comments_2.postid, 
    min(
      comments_2.creationdate), 
    min(
      comments_2.creationdate), 
    comments_2.text, 
    comments_2.id
  from 
    comments as comments_2
  where comments_2.userdisplayname is not NULL
  limit 3);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.contentlicense, 
    posts_1.owneruserid
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  limit 20)
EXCEPT
(select  
    posts_2.ownerdisplayname, 
    posts_2.owneruserid
  from 
    posts as posts_2
  where posts_2.ownerdisplayname is not NULL
  group by posts_2.acceptedanswerid, posts_2.parentid
  limit 19);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      comments_1.creationdate), 
    comments_1.userdisplayname, 
    avg(
      comments_1.id)
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  group by comments_1.userdisplayname
  limit 30)
INTERSECT
(select  
    min(
      badges_1.date), 
    badges_1.name, 
    sum(
      badges_1.id)
  from 
    badges as badges_1
  where badges_1.date is not NULL
  group by badges_1.class, badges_1.date, badges_1.id, badges_1.tagbased, badges_1.userid
  limit 15);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      posthistory_1.postid), 
    posthistory_1.revisionguid, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate < posthistory_1.creationdate
  group by posthistory_1.id, posthistory_1.revisionguid
  limit 9)
UNION
(select  
    count(
      posthistory_2.posthistorytypeid), 
    min(
      posthistory_2.userid), 
    posthistory_2.userid
  from 
    posthistory as posthistory_2
  where posthistory_2.revisionguid is not NULL
  limit 24);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.location
  from 
    users as users_1
  where users_1.aboutme is not NULL
  limit 38)
INTERSECT
(select  
    users_2.displayname
  from 
    users as users_2
  where users_2.displayname <= users_2.websiteurl
  limit 9);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.postid, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 20)
UNION
(select  
    users_1.accountid, 
    users_1.id
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.accountid, users_1.id, users_1.location, users_1.websiteurl
  limit 37);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      users_1.accountid), 
    users_1.accountid, 
    users_1.aboutme, 
    users_1.location, 
    users_1.websiteurl, 
    min(
      users_1.id)
  from 
    users as users_1
  where users_1.displayname is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.location, users_1.websiteurl
  limit 10)
UNION
(select  
    count(
      users_2.accountid), 
    users_2.id, 
    users_2.websiteurl, 
    users_2.aboutme, 
    users_2.aboutme, 
    min(
      users_2.accountid)
  from 
    users as users_2
  where users_2.creationdate is not NULL
  limit 8);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  limit 7)
INTERSECT
(select  
    users_1.creationdate, 
    users_1.id
  from 
    comments as comments_1
      inner join users as users_1
      on (comments_1.id = users_1.id )
  where users_1.profileimageurl <= comments_1.postid
  limit 13);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.id, 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  limit 29)
INTERSECT
(select  
    posthistory_1.id, 
    min(
      posts_1.parentid)
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
  where posts_1.acceptedanswerid is not NULL
  limit 39);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      comments_1.contentlicense), 
    comments_1.text, 
    comments_1.userdisplayname, 
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.creationdate, comments_1.text, comments_1.userdisplayname
  limit 18)
EXCEPT
(select  
    min(
      comments_2.id), 
    comments_2.contentlicense, 
    comments_2.text, 
    postlinks_2.creationdate
  from 
    postlinks as postlinks_1
      inner join postlinks as postlinks_2
        inner join comments as comments_2
        on (postlinks_2.id = comments_2.id )
      on (postlinks_1.id = postlinks_2.id )
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.id, postlinks_1.relatedpostid
  limit 26);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where postlinks_1.relatedpostid is not NULL
  limit 35)
INTERSECT
(select  
    postlinks_2.relatedpostid
  from 
    postlinks as postlinks_2
  where postlinks_2.linktypeid is not NULL
  group by postlinks_2.creationdate, postlinks_2.linktypeid, postlinks_2.postid
  limit 22);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.class, 
    badges_1.date, 
    badges_1.userid, 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.tagbased = badges_1.tagbased
  limit 15)
INTERSECT
(select  
    posts_1.id, 
    posts_1.posttypeid, 
    avg(
      posts_1.id), 
    posts_1.acceptedanswerid, 
    max(
      posts_1.posttypeid)
  from 
    posts as posts_1
  where posts_1.parentid is not NULL
  limit 10);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      votes_1.creationdate), 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate
  limit 39)
EXCEPT
(select  
    min(
      posthistory_1.creationdate), 
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  group by posthistory_1.userid
  limit 20);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.revisionguid, 
    posthistory_1.userdisplayname, 
    posthistory_1.id, 
    posthistory_1.creationdate, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
  where posthistory_1.posthistorytypeid is not NULL
  limit 15)
UNION
(select  
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate), 
    min(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 35);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.tagbased, 
    min(
      badges_1.date), 
    badges_1.name, 
    badges_1.class, 
    badges_1.userid, 
    count(
      badges_1.tagbased)
  from 
    badges as badges_1
  where badges_1.date is not NULL
  group by badges_1.class, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 30)
INTERSECT
(select  
    sum(
      posts_1.parentid), 
    min(
      posts_1.creationdate), 
    posts_1.tags, 
    posts_1.posttypeid, 
    posts_1.owneruserid, 
    min(
      posts_1.parentid)
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.userid, 
    badges_1.date
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 18)
EXCEPT
(select  
    comments_1.id, 
    comments_1.creationdate
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  limit 35);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.id
  limit 23)
UNION
(select  
    count(
      posthistory_1.userid), 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  limit 23);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.postid, 
    min(
      posthistory_1.creationdate), 
    max(
      votes_1.creationdate), 
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
      inner join votes as votes_1
      on (posthistory_1.id = votes_1.id )
  where votes_1.userid is not NULL
  group by votes_1.postid
  limit 1)
UNION
(select  
    votes_2.postid, 
    max(
      votes_2.creationdate), 
    min(
      votes_2.creationdate), 
    max(
      votes_2.creationdate)
  from 
    votes as votes_2
  where votes_2.postid is not NULL
  limit 16);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 21)
UNION
(select  
    badges_1.userid, 
    badges_1.date, 
    badges_1.id
  from 
    badges as badges_1
  where badges_1.userid >= badges_1.class
  limit 27);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate, 
  postlinks_1.relatedpostid, 
  postlinks_1.id, 
  min(
    postlinks_1.relatedpostid), 
  max(
    postlinks_1.id), 
  min(
    postlinks_1.creationdate), 
  avg(
    postlinks_1.linktypeid), 
  postlinks_1.postid
from 
  postlinks as postlinks_1
where postlinks_1.relatedpostid is not NULL
group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid
limit 28;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userid, 
    comments_1.contentlicense, 
    posts_1.body
  from 
    comments as comments_1
      inner join posts as posts_1
      on (comments_1.id = posts_1.id )
  where comments_1.text is not NULL
  limit 33)
UNION
(select  
    users_1.accountid, 
    users_1.aboutme, 
    avg(
      users_1.accountid)
  from 
    users as users_1
  where users_1.creationdate <= users_1.creationdate
  group by users_1.displayname, users_1.location
  limit 18);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    users_1.displayname, 
    users_1.accountid, 
    users_1.creationdate
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 14)
UNION
(select  
    posthistory_1.userdisplayname, 
    min(
      posthistory_3.postid), 
    posthistory_3.creationdate
  from 
    posthistory as posthistory_1
      inner join posthistory as posthistory_2
        inner join posthistory as posthistory_3
        on (posthistory_2.id = posthistory_3.id )
      on (posthistory_1.id = posthistory_3.id )
  where posthistory_1.userdisplayname is not NULL
  group by posthistory_1.creationdate, posthistory_1.userdisplayname, posthistory_3.revisionguid, posthistory_3.text
  limit 6);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 6)
INTERSECT
(select  
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.creationdate, posts_1.id, posts_1.owneruserid, posts_1.posttypeid
  limit 37);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.userid, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.userid = posthistory_1.postid
  limit 26)
EXCEPT
(select  
    min(
      users_1.profileimageurl), 
    posthistory_3.userid
  from 
    users as users_1
      inner join posthistory as posthistory_2
        inner join comments as comments_1
          inner join posthistory as posthistory_3
          on (comments_1.id = posthistory_3.id )
        on (posthistory_2.id = comments_1.id )
      on (users_1.id = comments_1.id )
  where comments_1.postid is not NULL
  group by comments_1.creationdate, posthistory_2.posthistorytypeid, posthistory_2.userdisplayname, posthistory_3.text, users_1.id, users_1.websiteurl
  limit 18);
-- meta {"num_joins":3,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.creationdate
  from 
    posts as posts_1
          inner join postlinks as postlinks_1
          on (posts_1.id = postlinks_1.id )
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      inner join comments as comments_1
      on (postlinks_1.id = comments_1.id )
  where posts_1.creationdate is not NULL
  limit 9)
INTERSECT
(select  
    badges_1.date
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 11);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.class, 
    badges_1.tagbased, 
    avg(
      badges_1.userid)
  from 
    badges as badges_1
  where badges_1.id is not NULL
  group by badges_1.class, badges_1.tagbased
  limit 34)
INTERSECT
(select  
    votes_1.id, 
    max(
      posthistory_1.creationdate), 
    avg(
      votes_1.id)
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where votes_1.userid <= votes_1.id
  limit 23);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  comments_1.userid, 
  max(
    comments_1.creationdate), 
  min(
    comments_1.creationdate)
from 
  comments as comments_1
where comments_1.id > comments_1.postid
group by comments_1.userid
limit 38;
-- meta {"num_joins":4,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      badges_1.date), 
    comments_1.contentlicense, 
    min(
      users_1.creationdate), 
    comments_1.userid, 
    min(
      badges_1.date)
  from 
    comments as comments_1
      inner join badges as badges_1
        inner join users as users_1
        on (badges_1.id = users_1.id )
      on (comments_1.id = users_1.id )
  where users_1.accountid is not NULL
  group by comments_1.contentlicense, comments_1.userid
  limit 15)
INTERSECT
(select  
    min(
      comments_2.creationdate), 
    posthistory_1.userdisplayname, 
    max(
      posthistory_1.creationdate), 
    comments_2.postid, 
    min(
      comments_2.creationdate)
  from 
    postlinks as postlinks_1
      inner join posthistory as posthistory_1
        inner join comments as comments_2
        on (posthistory_1.id = comments_2.id )
      on (postlinks_1.id = posthistory_1.id )
  where posthistory_1.revisionguid is not NULL
  group by posthistory_1.posthistorytypeid
  limit 10);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  limit 4)
UNION
(select  
    badges_1.name
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 5);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.id, 
    badges_1.class, 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.date is not NULL
  limit 42)
INTERSECT
(select  
    postlinks_1.relatedpostid, 
    max(
      postlinks_1.id), 
    min(
      postlinks_1.linktypeid)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid
  limit 39);
-- meta {"num_joins":2,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.id, 
    comments_1.creationdate, 
    comments_1.id, 
    badges_1.date
  from 
    comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
  where comments_1.creationdate is not NULL
  limit 16)
EXCEPT
(select  
    users_1.accountid, 
    users_2.creationdate, 
    users_1.accountid, 
    users_1.creationdate
  from 
    users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
  where users_2.accountid is not NULL
  group by users_1.accountid
  limit 21);
-- meta {"num_joins":5,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posthistory_1.posthistorytypeid, 
    users_1.websiteurl, 
    postlinks_1.postid, 
    min(
      posthistory_1.creationdate)
  from 
    badges as badges_1
        inner join posts as posts_1
        on (badges_1.id = posts_1.id )
      inner join users as users_1
            inner join posthistory as posthistory_1
            on (users_1.id = posthistory_1.id )
          inner join votes as votes_1
          on (posthistory_1.id = votes_1.id )
        inner join postlinks as postlinks_1
        on (posthistory_1.id = postlinks_1.id )
      on (badges_1.id = postlinks_1.id )
  where votes_1.creationdate is not NULL
  group by posthistory_1.posthistorytypeid, postlinks_1.postid, users_1.websiteurl
  limit 34)
UNION
(select  
    count(*), 
    posthistory_2.revisionguid, 
    posthistory_2.userid, 
    max(
      posthistory_2.creationdate)
  from 
    posthistory as posthistory_2
  where posthistory_2.posthistorytypeid < posthistory_2.postid
  group by posthistory_2.comment, posthistory_2.id, posthistory_2.postid, posthistory_2.text, posthistory_2.userdisplayname
  limit 24);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select distinct 
    comments_1.contentlicense, 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  limit 36)
EXCEPT
(select  
    max(
      postlinks_1.postid), 
    avg(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.id is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 3);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    badges_1.id
  from 
    badges as badges_1
  where badges_1.id is not NULL
  limit 42)
UNION
(select  
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
      inner join badges as badges_2
        inner join users as users_1
        on (badges_2.id = users_1.id )
      on (postlinks_1.id = users_1.id )
  where users_1.websiteurl > users_1.location
  group by users_1.id
  limit 41);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      votes_1.creationdate), 
    votes_1.id, 
    votes_1.creationdate, 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid
  limit 25)
INTERSECT
(select  
    min(
      posts_1.creationdate), 
    posts_1.owneruserid, 
    badges_1.date, 
    posts_1.acceptedanswerid
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where badges_1.date = posts_1.creationdate
  group by posts_1.acceptedanswerid, posts_1.contentlicense
  limit 33);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    votes_1.postid, 
    count(
      votes_1.postid), 
    votes_1.id, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid
  limit 18)
EXCEPT
(select  
    min(
      posts_1.acceptedanswerid), 
    count(
      posts_1.contentlicense), 
    posts_1.owneruserid, 
    count(*)
  from 
    posts as posts_1
  where posts_1.id = posts_1.parentid
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.ownerdisplayname
  limit 11);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  limit 13)
INTERSECT
(select  
    min(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.revisionguid is not NULL
  limit 7);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.acceptedanswerid, 
    posts_2.id, 
    posts_1.title, 
    posthistory_1.creationdate, 
    posts_1.posttypeid, 
    posthistory_1.posthistorytypeid, 
    avg(
      posthistory_1.userid), 
    posts_2.tags
  from 
    posts as posts_1
        inner join posthistory as posthistory_1
        on (posts_1.id = posthistory_1.id )
      inner join posts as posts_2
      on (posthistory_1.id = posts_2.id )
  where posthistory_1.creationdate <= posts_2.creationdate
  group by posthistory_1.creationdate, posthistory_1.posthistorytypeid, posts_1.acceptedanswerid, posts_1.posttypeid, posts_1.title, posts_2.id, posts_2.tags
  limit 4)
INTERSECT
(select  
    users_1.id, 
    users_2.profileimageurl, 
    users_1.websiteurl, 
    users_2.creationdate, 
    max(
      users_1.creationdate), 
    min(
      users_1.creationdate), 
    sum(
      users_1.accountid), 
    users_1.aboutme
  from 
    users as users_1
      inner join users as users_2
      on (users_1.id = users_2.id )
  where users_1.aboutme > users_2.aboutme
  limit 19);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  limit 28)
UNION
(select  
    count(*)
  from 
    posthistory as posthistory_2
  where posthistory_2.comment is not NULL
  group by posthistory_2.id, posthistory_2.text
  limit 36);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.votetypeid, 
    max(
      votes_1.creationdate), 
    votes_1.id, 
    votes_1.userid, 
    votes_1.creationdate
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 40)
UNION
(select  
    posthistory_1.userid, 
    max(
      comments_1.creationdate), 
    comments_1.id, 
    max(
      comments_1.creationdate), 
    posthistory_1.creationdate
  from 
    comments as comments_1
      inner join posthistory as posthistory_1
      on (comments_1.id = posthistory_1.id )
  where posthistory_1.comment is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(*)
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  limit 26)
INTERSECT
(select  
    max(
      posthistory_1.id)
  from 
    posthistory as posthistory_1
  where posthistory_1.text is not NULL
  group by posthistory_1.creationdate, posthistory_1.revisionguid, posthistory_1.userid
  limit 40);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  postlinks as postlinks_1
    inner join posthistory as posthistory_1
    on (postlinks_1.id = posthistory_1.id )
where posthistory_1.postid is not NULL
limit 14;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  postlinks_1.creationdate
from 
  users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
    inner join votes as votes_1
    on (postlinks_1.id = votes_1.id )
where users_1.websiteurl is not NULL
limit 16;
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.id, 
    count(*), 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 13)
UNION
(select  
    comments_1.postid, 
    comments_1.postid, 
    min(
      badges_1.id), 
    comments_1.userid, 
    max(
      badges_1.date)
  from 
    comments as comments_1
      inner join badges as badges_1
      on (comments_1.id = badges_1.id )
  where badges_1.tagbased = badges_1.tagbased
  limit 11);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.websiteurl, 
    users_1.aboutme, 
    users_1.accountid, 
    users_1.displayname
  from 
    users as users_1
  where users_1.creationdate >= users_1.creationdate
  limit 41)
EXCEPT
(select  
    max(
      postlinks_1.creationdate), 
    sum(
      postlinks_1.id), 
    postlinks_1.relatedpostid, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 7);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  limit 32)
UNION
(select  
    postlinks_2.id, 
    votes_1.creationdate
  from 
    votes as votes_1
      inner join postlinks as postlinks_2
      on (votes_1.id = postlinks_2.id )
  where postlinks_2.creationdate is not NULL
  limit 28);
-- meta {"num_joins":1,"num_aggregates":7,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.class, 
  badges_1.id, 
  users_1.aboutme, 
  badges_1.name, 
  users_1.profileimageurl, 
  users_1.location, 
  min(
    badges_1.userid), 
  min(
    badges_1.date), 
  max(
    users_1.creationdate), 
  badges_1.date, 
  min(
    users_1.creationdate), 
  badges_1.userid, 
  badges_1.tagbased, 
  count(*), 
  sum(
    users_1.accountid), 
  max(
    users_1.creationdate), 
  users_1.displayname, 
  users_1.accountid
from 
  users as users_1
    inner join badges as badges_1
    on (users_1.id = badges_1.id )
where users_1.displayname is not NULL
group by badges_1.class, badges_1.date, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid, users_1.aboutme, users_1.accountid, users_1.displayname, users_1.location, users_1.profileimageurl
limit 27;
-- meta {"num_joins":2,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    badges_1.tagbased, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.userid is not NULL
  limit 35)
EXCEPT
(select  
    badges_2.tagbased, 
    comments_1.text
  from 
    comments as comments_1
        inner join posthistory as posthistory_1
        on (comments_1.id = posthistory_1.id )
      inner join badges as badges_2
      on (comments_1.id = badges_2.id )
  where posthistory_1.creationdate <= badges_2.date
  group by badges_2.date, badges_2.tagbased, comments_1.userdisplayname, posthistory_1.userid
  limit 27);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.id, 
    posts_1.acceptedanswerid, 
    posts_1.contentlicense, 
    posts_1.owneruserid, 
    posts_1.body, 
    posts_1.posttypeid, 
    posts_1.parentid, 
    count(
      posts_1.acceptedanswerid), 
    min(
      posts_1.creationdate), 
    posts_1.tags, 
    posts_1.ownerdisplayname, 
    posts_1.creationdate, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.creationdate >= posts_1.creationdate
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.owneruserid, posts_1.parentid, posts_1.posttypeid, posts_1.tags
  limit 32)
EXCEPT
(select  
    max(
      postlinks_2.creationdate), 
    comments_1.id, 
    comments_2.userdisplayname, 
    max(
      comments_2.creationdate), 
    comments_1.contentlicense, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    min(
      postlinks_2.id), 
    max(
      comments_2.creationdate), 
    comments_2.userdisplayname, 
    comments_2.text, 
    comments_1.creationdate, 
    max(
      comments_2.creationdate)
  from 
    postlinks as postlinks_1
      inner join comments as comments_1
        inner join comments as comments_2
          inner join postlinks as postlinks_2
          on (comments_2.id = postlinks_2.id )
        on (comments_1.id = postlinks_2.id )
      on (postlinks_1.id = postlinks_2.id )
  where comments_2.postid < postlinks_1.linktypeid
  limit 5);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.id
  from 
    votes as votes_1
  where votes_1.postid > votes_1.votetypeid
  limit 17)
UNION
(select  
    votes_2.id
  from 
    votes as votes_2
  where votes_2.votetypeid is not NULL
  limit 9);
-- meta {"num_joins":0,"num_aggregates":9,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.id, 
    max(
      votes_1.creationdate), 
    max(
      votes_1.creationdate), 
    votes_1.votetypeid, 
    min(
      votes_1.creationdate), 
    sum(
      votes_1.votetypeid), 
    avg(
      votes_1.userid), 
    votes_1.userid
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  group by votes_1.id, votes_1.userid, votes_1.votetypeid
  limit 11)
INTERSECT
(select  
    badges_1.id, 
    max(
      badges_1.date), 
    min(
      badges_1.date), 
    badges_1.userid, 
    max(
      badges_1.date), 
    sum(
      badges_1.userid), 
    sum(
      badges_1.id), 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.class is not NULL
  group by badges_1.class, badges_1.date, badges_1.tagbased, badges_1.userid
  limit 39);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    comments_1.creationdate, 
    comments_1.userid, 
    comments_1.id, 
    count(*), 
    min(
      comments_1.userid)
  from 
    comments as comments_1
  where comments_1.contentlicense is not NULL
  group by comments_1.creationdate, comments_1.id, comments_1.userid
  limit 39)
INTERSECT
(select  
    postlinks_1.creationdate, 
    postlinks_1.id, 
    postlinks_1.postid, 
    count(
      postlinks_1.postid), 
    max(
      postlinks_1.relatedpostid)
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 20);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.acceptedanswerid, 
    posts_1.tags, 
    posts_1.title, 
    posts_1.owneruserid, 
    posts_1.posttypeid, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.acceptedanswerid, posts_1.owneruserid, posts_1.posttypeid, posts_1.tags, posts_1.title
  limit 11)
INTERSECT
(select  
    comments_1.id, 
    comments_1.text, 
    comments_1.text, 
    comments_1.id, 
    comments_1.userid, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.userid is not NULL
  group by comments_1.creationdate, comments_1.id, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 24);
-- meta {"num_joins":3,"num_aggregates":6,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    min(
      users_2.creationdate), 
    min(
      badges_1.date)
  from 
    postlinks as postlinks_1
          inner join badges as badges_1
          on (postlinks_1.id = badges_1.id )
        inner join users as users_1
        on (badges_1.id = users_1.id )
      inner join users as users_2
      on (badges_1.id = users_2.id )
  where badges_1.tagbased > badges_1.tagbased
  limit 24)
EXCEPT
(select  
    min(
      postlinks_2.creationdate), 
    max(
      postlinks_2.creationdate)
  from 
    postlinks as postlinks_2
  where postlinks_2.creationdate >= postlinks_2.creationdate
  group by postlinks_2.linktypeid, postlinks_2.postid, postlinks_2.relatedpostid
  limit 1);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.parentid, 
    min(
      votes_1.creationdate), 
    posts_1.creationdate
  from 
    posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where votes_1.creationdate > posts_1.creationdate
  group by posts_1.creationdate, posts_1.parentid
  limit 20)
UNION
(select  
    users_1.profileimageurl, 
    max(
      users_1.creationdate), 
    users_1.creationdate
  from 
    users as users_1
  where users_1.location is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.id, users_1.websiteurl
  limit 28);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.aboutme, 
    avg(
      users_1.profileimageurl), 
    users_1.location, 
    users_1.displayname, 
    users_1.accountid
  from 
    users as users_1
  where users_1.creationdate is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.displayname, users_1.location
  limit 36)
INTERSECT
(select  
    count(
      votes_1.userid), 
    avg(
      votes_1.userid), 
    count(*), 
    avg(
      votes_1.postid), 
    max(
      votes_1.userid)
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  limit 38);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.userdisplayname, 
    comments_1.postid, 
    sum(
      posthistory_1.postid), 
    posthistory_1.comment
  from 
    comments as comments_1
        inner join posts as posts_1
        on (comments_1.id = posts_1.id )
      inner join posthistory as posthistory_1
        inner join posthistory as posthistory_2
        on (posthistory_1.id = posthistory_2.id )
      on (comments_1.id = posthistory_1.id )
  where posthistory_2.text is not NULL
  group by comments_1.postid, posthistory_1.comment, posthistory_1.userdisplayname
  limit 11)
EXCEPT
(select  
    max(
      posts_2.posttypeid), 
    posts_2.posttypeid, 
    avg(
      posts_2.acceptedanswerid), 
    posts_2.ownerdisplayname
  from 
    posts as posts_2
  where posts_2.tags is not NULL
  group by posts_2.body, posts_2.ownerdisplayname, posts_2.owneruserid, posts_2.parentid, posts_2.tags, posts_2.title
  limit 32);
-- meta {"num_joins":1,"num_aggregates":9,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    avg(
      users_1.accountid), 
    min(
      users_1.creationdate), 
    users_1.accountid, 
    users_1.creationdate
  from 
    users as users_1
  where users_1.websiteurl is not NULL
  group by users_1.accountid, users_1.creationdate
  limit 31)
INTERSECT
(select  
    sum(
      postlinks_1.linktypeid), 
    min(
      postlinks_1.creationdate), 
    postlinks_1.linktypeid, 
    users_2.creationdate
  from 
    postlinks as postlinks_1
      inner join users as users_2
      on (postlinks_1.id = users_2.id )
  where postlinks_1.creationdate is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid, users_2.accountid, users_2.creationdate, users_2.displayname, users_2.location, users_2.profileimageurl
  limit 11);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.userid, 
    badges_1.date, 
    badges_2.userid, 
    badges_2.date, 
    badges_2.id, 
    votes_1.votetypeid, 
    votes_1.postid, 
    badges_1.id, 
    badges_2.tagbased, 
    badges_1.userid, 
    votes_1.id
  from 
    badges as badges_1
      inner join votes as votes_1
        inner join badges as badges_2
        on (votes_1.id = badges_2.id )
      on (badges_1.id = votes_1.id )
  where badges_1.id is not NULL
  limit 15)
INTERSECT
(select  
    votes_2.id, 
    votes_2.creationdate, 
    min(
      votes_2.creationdate), 
    votes_2.creationdate, 
    votes_2.postid, 
    votes_2.postid, 
    votes_2.postid, 
    votes_2.id, 
    sum(
      votes_2.votetypeid), 
    votes_2.id, 
    votes_2.postid
  from 
    votes as votes_2
  where votes_2.creationdate is not NULL
  group by votes_2.id, votes_2.postid, votes_2.userid, votes_2.votetypeid
  limit 5);
-- meta {"num_joins":2,"num_aggregates":5,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.id, 
    posthistory_1.contentlicense, 
    posthistory_1.userid, 
    votes_1.userid, 
    count(
      posthistory_1.creationdate), 
    avg(
      postlinks_1.linktypeid), 
    max(
      votes_1.postid), 
    votes_1.id, 
    votes_1.votetypeid, 
    min(
      posthistory_1.creationdate), 
    votes_1.creationdate, 
    votes_1.postid, 
    postlinks_1.linktypeid, 
    max(
      posthistory_1.posthistorytypeid), 
    posthistory_1.creationdate
  from 
    votes as votes_1
        inner join postlinks as postlinks_1
        on (votes_1.id = postlinks_1.id )
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where posthistory_1.userdisplayname is not NULL
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 24)
INTERSECT
(select  
    users_1.creationdate, 
    min(
      users_1.creationdate), 
    users_1.location, 
    users_1.id, 
    users_1.profileimageurl, 
    count(*), 
    avg(
      users_1.id), 
    count(
      users_1.profileimageurl), 
    users_1.accountid, 
    users_1.id, 
    min(
      users_1.creationdate), 
    max(
      users_1.accountid), 
    users_1.profileimageurl, 
    users_1.profileimageurl, 
    count(*), 
    users_1.creationdate
  from 
    users as users_1
  where users_1.location is not NULL
  limit 39);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.postid, 
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 9)
UNION
(select  
    votes_1.userid, 
    votes_1.id, 
    badges_1.id, 
    max(
      votes_1.votetypeid), 
    max(
      votes_1.creationdate)
  from 
    badges as badges_1
      inner join votes as votes_1
      on (badges_1.id = votes_1.id )
  where badges_1.userid is not NULL
  limit 20);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate is not NULL
  limit 14)
INTERSECT
(select  
    max(
      comments_1.id)
  from 
    badges as badges_1
      inner join comments as comments_1
      on (badges_1.id = comments_1.id )
  where badges_1.tagbased is not NULL
  limit 33);
-- meta {"num_joins":3,"num_aggregates":9,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.postid, 
  postlinks_1.linktypeid, 
  postlinks_1.relatedpostid, 
  comments_1.id, 
  posthistory_1.comment, 
  comments_1.userdisplayname, 
  postlinks_1.id, 
  badges_1.id, 
  comments_1.text, 
  count(
    posthistory_1.postid), 
  comments_1.contentlicense, 
  sum(
    posthistory_1.userid), 
  postlinks_1.postid, 
  avg(
    postlinks_1.postid), 
  badges_1.name, 
  min(
    comments_1.id), 
  posthistory_1.creationdate, 
  count(*), 
  sum(
    badges_1.id), 
  posthistory_1.userid, 
  min(
    badges_1.date), 
  badges_1.class, 
  posthistory_1.text, 
  posthistory_1.posthistorytypeid, 
  max(
    posthistory_1.id), 
  min(
    postlinks_1.creationdate), 
  comments_1.postid
from 
  posthistory as posthistory_1
    inner join postlinks as postlinks_1
        inner join comments as comments_1
        on (postlinks_1.id = comments_1.id )
      inner join badges as badges_1
      on (postlinks_1.id = badges_1.id )
    on (posthistory_1.id = badges_1.id )
where badges_1.name is not NULL
group by badges_1.class, badges_1.id, badges_1.name, comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, posthistory_1.comment, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.text, posthistory_1.userid, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
limit 10;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.name, 
    badges_1.date, 
    badges_1.id, 
    badges_1.userid, 
    min(
      badges_1.class), 
    max(
      badges_1.class)
  from 
    badges as badges_1
  where badges_1.tagbased = badges_1.tagbased
  group by badges_1.date, badges_1.id, badges_1.name, badges_1.userid
  limit 2)
INTERSECT
(select  
    min(
      postlinks_1.relatedpostid), 
    postlinks_1.creationdate, 
    postlinks_2.id, 
    min(
      postlinks_1.postid), 
    count(*), 
    min(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
      inner join postlinks as postlinks_2
      on (postlinks_1.id = postlinks_2.id )
  where postlinks_1.linktypeid is not NULL
  limit 31);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.votetypeid, 
    votes_1.creationdate, 
    votes_1.id, 
    votes_1.postid
  from 
    votes as votes_1
  where votes_1.postid >= votes_1.id
  limit 23)
INTERSECT
(select  
    users_1.id, 
    users_1.creationdate, 
    users_1.accountid, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 20);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.id, 
    comments_1.contentlicense, 
    max(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.contentlicense, comments_1.id
  limit 28)
UNION
(select  
    votes_1.votetypeid, 
    min(
      votes_1.creationdate), 
    max(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.creationdate is not NULL
  limit 18);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    posthistory_1.id, 
    posthistory_1.creationdate, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.contentlicense <= posthistory_1.comment
  limit 14)
EXCEPT
(select  
    users_1.websiteurl, 
    postlinks_1.id, 
    postlinks_1.creationdate, 
    users_1.location
  from 
    users as users_1
      inner join postlinks as postlinks_1
      on (users_1.id = postlinks_1.id )
  where postlinks_1.id is not NULL
  group by postlinks_1.linktypeid, users_1.creationdate, users_1.websiteurl
  limit 23);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 3)
UNION
(select  
    posthistory_1.id
  from 
    comments as comments_1
        inner join comments as comments_2
        on (comments_1.id = comments_2.id )
      inner join posthistory as posthistory_1
      on (comments_2.id = posthistory_1.id )
  where comments_2.postid is not NULL
  group by comments_1.id, comments_1.userdisplayname, posthistory_1.text
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.id, 
    posts_1.tags, 
    posts_1.acceptedanswerid
  from 
    posts as posts_1
  where posts_1.parentid < posts_1.owneruserid
  limit 25)
INTERSECT
(select  
    posthistory_1.id, 
    posthistory_1.contentlicense, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  limit 21);
-- meta {"num_joins":4,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    votes_1.postid, 
    max(
      votes_1.userid), 
    votes_1.userid, 
    votes_1.votetypeid, 
    max(
      votes_1.creationdate), 
    votes_1.creationdate, 
    max(
      votes_1.creationdate), 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.votetypeid is not NULL
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 5)
INTERSECT
(select  
    users_1.id, 
    count(
      comments_1.contentlicense), 
    votes_2.votetypeid, 
    votes_2.userid, 
    max(
      users_1.creationdate), 
    max(
      users_1.creationdate), 
    max(
      users_1.creationdate), 
    users_1.profileimageurl
  from 
    votes as votes_2
        inner join comments as comments_1
        on (votes_2.id = comments_1.id )
      inner join users as users_1
          inner join users as users_2
          on (users_1.id = users_2.id )
        inner join comments as comments_2
        on (users_1.id = comments_2.id )
      on (comments_1.id = users_1.id )
  where comments_1.text is not NULL
  limit 38);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.aboutme, 
    users_1.location, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.creationdate <= users_1.creationdate
  limit 25)
INTERSECT
(select  
    min(
      posts_1.creationdate), 
    posts_1.title, 
    posts_1.id
  from 
    posts as posts_1
  where posts_1.title < posts_1.contentlicense
  group by posts_1.body, posts_1.creationdate, posts_1.owneruserid, posts_1.tags
  limit 3);
-- meta {"num_joins":0,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.userid, 
    badges_1.id, 
    max(
      badges_1.date), 
    badges_1.name, 
    badges_1.tagbased, 
    max(
      badges_1.date), 
    max(
      badges_1.id), 
    badges_1.class
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  group by badges_1.class, badges_1.id, badges_1.name, badges_1.tagbased, badges_1.userid
  limit 12)
INTERSECT
(select  
    comments_1.postid, 
    max(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    comments_1.userdisplayname, 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    max(
      comments_1.userid), 
    min(
      comments_1.creationdate)
  from 
    comments as comments_1
  where comments_1.userdisplayname < comments_1.text
  group by comments_1.contentlicense
  limit 7);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posthistory_1.userid, 
  max(
    posts_1.parentid), 
  min(
    posts_1.creationdate)
from 
  posthistory as posthistory_1
    inner join posts as posts_1
    on (posthistory_1.id = posts_1.id )
where posthistory_1.userdisplayname is not NULL
group by posthistory_1.userid
limit 6;
-- meta {"num_joins":5,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
      inner join posts as posts_1
          inner join posts as posts_2
          on (posts_1.id = posts_2.id )
        inner join posts as posts_3
        on (posts_1.id = posts_3.id )
      on (posthistory_1.id = posts_1.id )
  where posts_1.creationdate is not NULL
  limit 9)
EXCEPT
(select  
    sum(
      votes_2.votetypeid)
  from 
    votes as votes_1
      inner join votes as votes_2
        inner join users as users_1
        on (votes_2.id = users_1.id )
      on (votes_1.id = users_1.id )
  where votes_1.id is not NULL
  limit 15);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  users_1.aboutme, 
  postlinks_1.creationdate, 
  users_1.displayname, 
  count(*), 
  users_1.profileimageurl, 
  users_1.accountid, 
  postlinks_1.relatedpostid, 
  postlinks_1.postid
from 
  postlinks as postlinks_1
    inner join users as users_1
    on (postlinks_1.id = users_1.id )
where postlinks_1.creationdate is not NULL
group by postlinks_1.creationdate, postlinks_1.postid, postlinks_1.relatedpostid, users_1.aboutme, users_1.accountid, users_1.displayname, users_1.profileimageurl
limit 36;
-- meta {"num_joins":2,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.posttypeid, 
    postlinks_1.postid, 
    users_1.location, 
    posts_1.parentid, 
    users_1.creationdate, 
    posts_1.id, 
    postlinks_1.creationdate, 
    users_1.websiteurl, 
    posts_1.body, 
    posts_1.creationdate, 
    count(*), 
    users_1.aboutme, 
    posts_1.contentlicense, 
    max(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    postlinks_1.id, 
    posts_1.ownerdisplayname
  from 
    postlinks as postlinks_1
        inner join posts as posts_1
        on (postlinks_1.id = posts_1.id )
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, posts_1.body, posts_1.contentlicense, posts_1.creationdate, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, users_1.aboutme, users_1.creationdate, users_1.location, users_1.websiteurl
  limit 11)
INTERSECT
(select  
    posthistory_1.userid, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.revisionguid, 
    posthistory_1.userid, 
    posthistory_1.creationdate, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.creationdate, 
    posthistory_1.userdisplayname, 
    posthistory_1.comment, 
    max(
      posthistory_1.postid), 
    count(
      posthistory_1.posthistorytypeid), 
    posthistory_1.contentlicense, 
    posthistory_1.contentlicense, 
    min(
      posthistory_1.creationdate), 
    min(
      posthistory_1.creationdate), 
    posthistory_1.userid, 
    posthistory_1.revisionguid
  from 
    posthistory as posthistory_1
  where posthistory_1.userid is not NULL
  limit 36);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.userdisplayname, 
    comments_1.text
  from 
    comments as comments_1
  where comments_1.userdisplayname is not NULL
  limit 14)
EXCEPT
(select  
    posts_1.tags, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.ownerdisplayname is not NULL
  group by posts_1.acceptedanswerid, posts_1.ownerdisplayname
  limit 15);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.class
  from 
    badges as badges_1
      inner join postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      on (badges_1.id = votes_1.id )
  where badges_1.tagbased is not NULL
  limit 35)
INTERSECT
(select  
    posthistory_1.id
  from 
    posthistory as posthistory_1
      inner join comments as comments_1
      on (posthistory_1.id = comments_1.id )
  where posthistory_1.contentlicense is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, posthistory_1.contentlicense, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname
  limit 29);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      badges_1.date)
  from 
    badges as badges_1
  where badges_1.tagbased is not NULL
  limit 42)
UNION
(select  
    max(
      posthistory_1.creationdate)
  from 
    posthistory as posthistory_1
  where posthistory_1.id is not NULL
  limit 35);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.userid, 
    comments_1.postid, 
    comments_1.text, 
    comments_1.contentlicense, 
    comments_1.id, 
    min(
      comments_1.userid)
  from 
    comments as comments_1
  where comments_1.userid < comments_1.postid
  group by comments_1.contentlicense, comments_1.id, comments_1.postid, comments_1.text, comments_1.userid
  limit 24)
UNION
(select  
    comments_2.postid, 
    posts_1.parentid, 
    min(
      comments_2.creationdate), 
    comments_2.contentlicense, 
    comments_2.id, 
    max(
      comments_2.userid)
  from 
    posts as posts_1
      inner join comments as comments_2
      on (posts_1.id = comments_2.id )
  where posts_1.posttypeid is not NULL
  limit 28);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.text
  from 
    comments as comments_1
  where comments_1.userid = comments_1.postid
  limit 31)
UNION
(select  
    comments_2.text
  from 
    comments as comments_2
  where comments_2.userid is not NULL
  limit 16);
-- meta {"num_joins":4,"num_aggregates":1,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posts_1.posttypeid, 
    min(
      postlinks_1.relatedpostid), 
    posts_1.title, 
    posts_1.ownerdisplayname, 
    posts_1.parentid
  from 
    posts as posts_1
      inner join postlinks as postlinks_1
        inner join posthistory as posthistory_1
        on (postlinks_1.id = posthistory_1.id )
      on (posts_1.id = postlinks_1.id )
  where posts_1.posttypeid is not NULL
  group by posts_1.ownerdisplayname, posts_1.parentid, posts_1.posttypeid, posts_1.title
  limit 21)
INTERSECT
(select  
    posthistory_2.id, 
    max(
      posthistory_2.posthistorytypeid), 
    max(
      badges_1.userid), 
    max(
      users_1.profileimageurl), 
    badges_1.userid
  from 
    users as users_1
        inner join posthistory as posthistory_2
        on (users_1.id = posthistory_2.id )
      inner join badges as badges_1
      on (users_1.id = badges_1.id )
  where badges_1.id is not NULL
  limit 30);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    badges_1.date, 
    min(
      badges_1.userid), 
    badges_1.class, 
    badges_1.tagbased
  from 
    badges as badges_1
  where badges_1.userid >= badges_1.class
  group by badges_1.class, badges_1.date, badges_1.tagbased
  limit 3)
INTERSECT
(select  
    min(
      votes_1.id), 
    max(
      votes_1.id), 
    max(
      votes_1.creationdate), 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.id is not NULL
  group by votes_1.creationdate, votes_1.userid, votes_1.votetypeid
  limit 30);
-- meta {"num_joins":3,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.revisionguid, 
    max(
      posthistory_1.creationdate), 
    posthistory_1.creationdate
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate is not NULL
  group by posthistory_1.creationdate, posthistory_1.revisionguid
  limit 12)
INTERSECT
(select  
    count(*), 
    max(
      postlinks_1.creationdate), 
    max(
      posts_1.creationdate)
  from 
    postlinks as postlinks_1
      inner join badges as badges_1
        inner join posts as posts_1
          inner join posts as posts_2
          on (posts_1.id = posts_2.id )
        on (badges_1.id = posts_1.id )
      on (postlinks_1.id = posts_1.id )
  where postlinks_1.postid is not NULL
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.userid, postlinks_1.creationdate, postlinks_1.id, postlinks_1.postid, postlinks_1.relatedpostid, posts_1.acceptedanswerid, posts_1.ownerdisplayname
  limit 22);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.aboutme
  from 
    users as users_1
  where users_1.accountid is not NULL
  limit 3)
EXCEPT
(select  
    posthistory_1.userdisplayname
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname = posthistory_1.contentlicense
  group by posthistory_1.contentlicense, posthistory_1.posthistorytypeid, posthistory_1.postid
  limit 12);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      users_1.profileimageurl), 
    users_1.aboutme, 
    users_1.creationdate, 
    users_1.id, 
    users_1.displayname, 
    users_1.accountid, 
    users_1.location, 
    users_1.websiteurl
  from 
    users as users_1
  where users_1.aboutme is not NULL
  group by users_1.aboutme, users_1.accountid, users_1.creationdate, users_1.displayname, users_1.id, users_1.location, users_1.websiteurl
  limit 15)
UNION
(select  
    count(
      comments_1.creationdate), 
    comments_1.contentlicense, 
    min(
      comments_1.userid), 
    comments_1.id, 
    comments_1.text, 
    comments_1.userid, 
    comments_1.text, 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.postid is not NULL
  group by comments_1.text
  limit 20);
-- meta {"num_joins":2,"num_aggregates":3,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(
      posts_1.ownerdisplayname), 
    posts_1.owneruserid, 
    max(
      posts_1.owneruserid), 
    posts_1.acceptedanswerid, 
    posts_1.contentlicense, 
    posts_1.body, 
    posts_1.tags
  from 
    posts as posts_1
  where posts_1.posttypeid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.owneruserid, posts_1.tags
  limit 31)
UNION
(select  
    max(
      postlinks_1.id), 
    postlinks_1.id, 
    min(
      users_1.id), 
    users_2.profileimageurl, 
    users_2.displayname, 
    users_2.aboutme, 
    avg(
      postlinks_1.postid)
  from 
    users as users_1
      inner join postlinks as postlinks_1
        inner join users as users_2
        on (postlinks_1.id = users_2.id )
      on (users_1.id = users_2.id )
  where users_2.location is not NULL
  limit 2);
-- meta {"num_joins":0,"num_aggregates":8,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    avg(
      badges_1.userid)
  from 
    badges as badges_1
  where badges_1.name > badges_1.name
  limit 31)
UNION
(select  
    sum(
      votes_1.votetypeid)
  from 
    votes as votes_1
  where votes_1.creationdate >= votes_1.creationdate
  group by votes_1.creationdate, votes_1.id, votes_1.postid, votes_1.userid, votes_1.votetypeid
  limit 7);
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.id
  from 
    posts as posts_1
      inner join postlinks as postlinks_1
        inner join votes as votes_1
        on (postlinks_1.id = votes_1.id )
      on (posts_1.id = votes_1.id )
  where posts_1.title = posts_1.body
  limit 21)
EXCEPT
(select  
    votes_2.id
  from 
    votes as votes_2
  where votes_2.votetypeid is not NULL
  limit 42);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    count(
      badges_1.class), 
    users_1.location, 
    sum(
      posts_1.posttypeid)
  from 
    posts as posts_1
      inner join badges as badges_1
        inner join users as users_1
        on (badges_1.id = users_1.id )
      on (posts_1.id = badges_1.id )
  where users_1.displayname < posts_1.tags
  group by users_1.location
  limit 23)
EXCEPT
(select  
    min(
      postlinks_1.linktypeid), 
    comments_1.userdisplayname, 
    sum(
      comments_1.userid)
  from 
    comments as comments_1
      inner join postlinks as postlinks_1
      on (comments_1.id = postlinks_1.id )
  where postlinks_1.id is not NULL
  limit 42);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    postlinks_1.postid, 
    postlinks_1.creationdate, 
    min(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.postid is not NULL
  group by postlinks_1.creationdate, postlinks_1.postid
  limit 14)
EXCEPT
(select  
    sum(
      posts_1.owneruserid), 
    posts_1.creationdate, 
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
  where posts_1.owneruserid > posts_1.posttypeid
  limit 6);
-- meta {"num_joins":0,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.userdisplayname, 
    min(
      posthistory_1.id), 
    min(
      posthistory_1.creationdate), 
    posthistory_1.comment, 
    posthistory_1.revisionguid, 
    posthistory_1.contentlicense
  from 
    posthistory as posthistory_1
  where posthistory_1.userdisplayname is not NULL
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.revisionguid, posthistory_1.userdisplayname
  limit 4)
EXCEPT
(select  
    posthistory_2.revisionguid, 
    count(*), 
    max(
      posthistory_2.creationdate), 
    posthistory_2.text, 
    posthistory_2.comment, 
    posthistory_2.userdisplayname
  from 
    posthistory as posthistory_2
  where posthistory_2.creationdate = posthistory_2.creationdate
  group by posthistory_2.comment, posthistory_2.posthistorytypeid, posthistory_2.revisionguid
  limit 3);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      votes_1.postid), 
    users_1.location, 
    min(
      votes_2.creationdate), 
    posthistory_1.revisionguid, 
    votes_2.creationdate, 
    votes_2.userid, 
    votes_2.postid, 
    posthistory_1.userdisplayname, 
    users_1.creationdate, 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
      inner join users as users_1
          inner join votes as votes_1
          on (users_1.id = votes_1.id )
        inner join votes as votes_2
        on (users_1.id = votes_2.id )
      on (posthistory_1.id = users_1.id )
  where votes_2.userid >= users_1.accountid
  group by posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.userdisplayname, users_1.creationdate, users_1.location, votes_2.creationdate, votes_2.postid, votes_2.userid
  limit 8)
EXCEPT
(select  
    max(
      posthistory_2.id), 
    posthistory_2.text, 
    min(
      posthistory_2.creationdate), 
    posthistory_2.userdisplayname, 
    posthistory_2.creationdate, 
    avg(
      posthistory_2.posthistorytypeid), 
    posthistory_2.userid, 
    posthistory_2.userdisplayname, 
    posthistory_2.creationdate, 
    posthistory_2.id
  from 
    posthistory as posthistory_2
  where posthistory_2.comment is not NULL
  limit 35);
-- meta {"num_joins":2,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_2.relatedpostid, 
    count(
      posts_1.ownerdisplayname), 
    posts_1.posttypeid, 
    max(
      posts_1.creationdate), 
    postlinks_1.postid, 
    posts_1.tags
  from 
    posts as posts_1
      inner join postlinks as postlinks_1
        inner join postlinks as postlinks_2
        on (postlinks_1.id = postlinks_2.id )
      on (posts_1.id = postlinks_1.id )
  where posts_1.owneruserid is not NULL
  group by postlinks_1.postid, postlinks_2.relatedpostid, posts_1.posttypeid, posts_1.tags
  limit 5)
INTERSECT
(select  
    posts_2.acceptedanswerid, 
    count(
      posts_2.contentlicense), 
    posts_2.parentid, 
    max(
      posts_2.creationdate), 
    posts_2.posttypeid, 
    posts_2.tags
  from 
    posts as posts_2
  where posts_2.parentid <= posts_2.acceptedanswerid
  group by posts_2.ownerdisplayname
  limit 17);
-- meta {"num_joins":1,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    badges_1.class), 
  count(
    users_1.profileimageurl), 
  badges_1.class, 
  users_1.location, 
  count(*), 
  badges_1.name, 
  badges_1.date, 
  users_1.creationdate
from 
  badges as badges_1
    inner join users as users_1
    on (badges_1.id = users_1.id )
where users_1.aboutme is not NULL
group by badges_1.class, badges_1.date, badges_1.name, users_1.creationdate, users_1.location
limit 41;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  posts_1.posttypeid, 
  posts_1.acceptedanswerid
from 
  posts as posts_1
where posts_1.body is not NULL
limit 22;
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.creationdate
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  limit 35)
INTERSECT
(select  
    comments_1.creationdate
  from 
    posts as posts_1
      inner join comments as comments_1
      on (posts_1.id = comments_1.id )
  where posts_1.body is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 25);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    postlinks_1.linktypeid, 
    postlinks_1.creationdate, 
    postlinks_1.relatedpostid, 
    postlinks_1.id, 
    postlinks_1.postid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 18)
INTERSECT
(select  
    postlinks_2.postid, 
    postlinks_2.creationdate, 
    count(*), 
    postlinks_2.linktypeid, 
    postlinks_2.postid
  from 
    postlinks as postlinks_2
  where postlinks_2.creationdate > postlinks_2.creationdate
  limit 2);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    posthistory_1.id, 
    posthistory_1.posthistorytypeid, 
    count(*), 
    posthistory_1.text
  from 
    posthistory as posthistory_1
      inner join users as users_1
      on (posthistory_1.id = users_1.id )
  where users_1.location > posthistory_1.revisionguid
  group by posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.text
  limit 22)
INTERSECT
(select  
    min(
      postlinks_1.creationdate), 
    postlinks_1.id, 
    max(
      postlinks_1.relatedpostid), 
    max(
      postlinks_1.id)
  from 
    postlinks as postlinks_1
  where postlinks_1.relatedpostid is not NULL
  group by postlinks_1.postid
  limit 23);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    count(*), 
    posthistory_1.postid, 
    posthistory_1.creationdate, 
    posthistory_1.contentlicense, 
    posthistory_1.posthistorytypeid
  from 
    posthistory as posthistory_1
  where posthistory_1.text < posthistory_1.comment
  group by posthistory_1.comment, posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.posthistorytypeid, posthistory_1.postid
  limit 26)
EXCEPT
(select  
    avg(
      votes_1.id), 
    min(
      votes_1.id), 
    votes_1.votetypeid, 
    votes_1.creationdate, 
    count(*), 
    votes_1.id
  from 
    postlinks as postlinks_1
      inner join votes as votes_1
      on (postlinks_1.id = votes_1.id )
  where postlinks_1.creationdate <= votes_1.creationdate
  limit 26);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.body, 
    posts_1.contentlicense, 
    posts_1.id, 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.contentlicense is not NULL
  limit 3)
EXCEPT
(select  
    posts_2.ownerdisplayname, 
    posts_2.ownerdisplayname, 
    posts_2.acceptedanswerid, 
    count(
      posts_2.owneruserid)
  from 
    posts as posts_2
  where posts_2.id is not NULL
  limit 24);
-- meta {"num_joins":2,"num_aggregates":1,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    votes_1.postid, 
    posts_1.parentid, 
    count(
      posts_1.parentid), 
    votes_1.creationdate
  from 
    posts as posts_1
      inner join votes as votes_1
      on (posts_1.id = votes_1.id )
  where votes_1.creationdate is not NULL
  group by posts_1.parentid, votes_1.creationdate, votes_1.postid
  limit 3)
UNION
(select  
    postlinks_1.relatedpostid, 
    votes_2.id, 
    max(
      postlinks_1.id), 
    postlinks_1.creationdate
  from 
    votes as votes_2
      inner join postlinks as postlinks_1
      on (votes_2.id = postlinks_1.id )
  where votes_2.userid is not NULL
  limit 39);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    comments_1.creationdate, 
    comments_1.id, 
    comments_1.text, 
    comments_1.userid, 
    comments_1.postid, 
    comments_1.contentlicense, 
    max(
      comments_1.userid), 
    comments_1.userdisplayname
  from 
    comments as comments_1
  where comments_1.text is not NULL
  group by comments_1.contentlicense, comments_1.creationdate, comments_1.id, comments_1.postid, comments_1.text, comments_1.userdisplayname, comments_1.userid
  limit 36)
EXCEPT
(select  
    comments_2.creationdate, 
    comments_2.id, 
    comments_2.text, 
    comments_2.id, 
    avg(
      comments_2.userid), 
    count(
      comments_2.postid), 
    max(
      comments_2.postid), 
    comments_2.text
  from 
    comments as comments_2
  where comments_2.id is not NULL
  group by comments_2.contentlicense, comments_2.creationdate, comments_2.id, comments_2.postid, comments_2.text, comments_2.userdisplayname, comments_2.userid
  limit 36);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.title, 
    max(
      users_1.creationdate), 
    users_1.accountid, 
    users_1.profileimageurl
  from 
    users as users_1
      inner join posts as posts_1
      on (users_1.id = posts_1.id )
  where posts_1.tags is not NULL
  group by posts_1.title, users_1.accountid, users_1.profileimageurl
  limit 5)
EXCEPT
(select  
    comments_1.text, 
    max(
      comments_1.creationdate), 
    comments_1.postid, 
    comments_1.id
  from 
    comments as comments_1
  where comments_1.id is not NULL
  limit 4);
-- meta {"num_joins":0,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    count(*), 
    votes_1.id
  from 
    votes as votes_1
  where votes_1.postid is not NULL
  group by votes_1.id
  limit 39)
INTERSECT
(select  
    count(*), 
    posthistory_1.postid
  from 
    posthistory as posthistory_1
  where posthistory_1.creationdate <= posthistory_1.creationdate
  group by posthistory_1.contentlicense, posthistory_1.creationdate, posthistory_1.postid, posthistory_1.text
  limit 4);
-- meta {"num_joins":1,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      users_1.profileimageurl)
  from 
    users as users_1
  where users_1.id <= users_1.profileimageurl
  limit 20)
EXCEPT
(select  
    count(*)
  from 
    votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
  where postlinks_1.creationdate >= votes_1.creationdate
  limit 6);
-- meta {"num_joins":4,"num_aggregates":2,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    max(
      posts_1.creationdate), 
    badges_1.class, 
    posts_1.body, 
    posts_1.id
  from 
    badges as badges_1
      inner join posts as posts_1
      on (badges_1.id = posts_1.id )
  where badges_1.userid <= posts_1.owneruserid
  group by badges_1.class, posts_1.body, posts_1.id
  limit 5)
EXCEPT
(select  
    max(
      posthistory_3.creationdate), 
    posthistory_3.posthistorytypeid, 
    max(
      posts_2.parentid), 
    posthistory_3.postid
  from 
    posthistory as posthistory_1
        inner join posts as posts_2
        on (posthistory_1.id = posts_2.id )
      inner join posthistory as posthistory_2
        inner join posthistory as posthistory_3
        on (posthistory_2.id = posthistory_3.id )
      on (posthistory_1.id = posthistory_2.id )
  where posthistory_1.id is not NULL
  group by posthistory_1.comment, posthistory_3.userid, posts_2.id, posts_2.owneruserid
  limit 20);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posts_1.contentlicense, 
    posts_1.parentid
  from 
    posts as posts_1
  where posts_1.tags = posts_1.title
  limit 34)
EXCEPT
(select  
    users_1.location, 
    min(
      users_1.creationdate)
  from 
    users as users_1
  where users_1.displayname is not NULL
  limit 21);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    users_1.aboutme, 
    users_1.creationdate, 
    max(
      votes_1.creationdate), 
    votes_1.id, 
    users_1.displayname, 
    users_1.profileimageurl
  from 
    votes as votes_1
      inner join users as users_1
      on (votes_1.id = users_1.id )
  where votes_1.creationdate is not NULL
  group by users_1.aboutme, users_1.creationdate, users_1.displayname, users_1.profileimageurl, votes_1.id
  limit 40)
INTERSECT
(select  
    users_2.websiteurl, 
    users_2.creationdate, 
    max(
      users_2.creationdate), 
    users_2.profileimageurl, 
    users_2.websiteurl, 
    min(
      users_2.creationdate)
  from 
    users as users_2
  where users_2.profileimageurl is not NULL
  group by users_2.accountid, users_2.creationdate, users_2.id, users_2.location, users_2.profileimageurl, users_2.websiteurl
  limit 15);
-- meta {"num_joins":0,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.profileimageurl, 
    users_1.creationdate, 
    users_1.location, 
    users_1.websiteurl, 
    users_1.displayname, 
    users_1.id, 
    users_1.accountid
  from 
    users as users_1
  where users_1.profileimageurl is not NULL
  limit 9)
EXCEPT
(select  
    postlinks_1.relatedpostid, 
    postlinks_1.creationdate, 
    sum(
      postlinks_1.id), 
    count(*), 
    max(
      postlinks_1.linktypeid), 
    postlinks_1.id, 
    postlinks_1.relatedpostid
  from 
    postlinks as postlinks_1
  where postlinks_1.creationdate < postlinks_1.creationdate
  group by postlinks_1.creationdate, postlinks_1.linktypeid, postlinks_1.relatedpostid
  limit 16);
-- meta {"num_joins":0,"num_aggregates":3,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    min(
      badges_1.date), 
    badges_1.tagbased, 
    badges_1.date, 
    max(
      badges_1.date), 
    max(
      badges_1.date), 
    badges_1.class, 
    badges_1.name
  from 
    badges as badges_1
  where badges_1.class < badges_1.userid
  group by badges_1.class, badges_1.date, badges_1.name, badges_1.tagbased
  limit 38)
INTERSECT
(select  
    min(
      comments_1.creationdate), 
    max(
      comments_1.creationdate), 
    comments_1.creationdate, 
    min(
      comments_1.creationdate), 
    min(
      comments_1.creationdate), 
    comments_1.userid, 
    comments_1.contentlicense
  from 
    comments as comments_1
  where comments_1.id >= comments_1.postid
  limit 1);
-- meta {"num_joins":1,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.parentid, 
    users_1.accountid, 
    users_1.websiteurl
  from 
    posts as posts_1
      inner join users as users_1
      on (posts_1.id = users_1.id )
  where users_1.creationdate is not NULL
  limit 35)
UNION
(select  
    posts_2.parentid, 
    posts_2.posttypeid, 
    posts_2.contentlicense
  from 
    posts as posts_2
  where posts_2.tags is not NULL
  limit 26);
-- meta {"num_joins":1,"num_aggregates":4,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    max(
      postlinks_1.postid), 
    postlinks_1.relatedpostid, 
    votes_1.votetypeid
  from 
    votes as votes_1
      inner join postlinks as postlinks_1
      on (votes_1.id = postlinks_1.id )
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.relatedpostid, votes_1.votetypeid
  limit 12)
UNION
(select  
    min(
      posthistory_1.userid), 
    posthistory_1.id, 
    posthistory_1.id
  from 
    posthistory as posthistory_1
  where posthistory_1.comment is not NULL
  group by posthistory_1.creationdate, posthistory_1.id, posthistory_1.posthistorytypeid, posthistory_1.postid, posthistory_1.revisionguid, posthistory_1.text, posthistory_1.userid
  limit 31);
-- meta {"num_joins":1,"num_aggregates":5,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  sum(
    posts_1.id), 
  badges_1.name, 
  badges_1.userid, 
  max(
    badges_1.date), 
  avg(
    badges_1.class), 
  max(
    badges_1.id), 
  badges_1.class, 
  posts_1.contentlicense, 
  posts_1.acceptedanswerid, 
  min(
    posts_1.creationdate)
from 
  badges as badges_1
    inner join posts as posts_1
    on (badges_1.id = posts_1.id )
where badges_1.name <= posts_1.body
group by badges_1.class, badges_1.name, badges_1.userid, posts_1.acceptedanswerid, posts_1.contentlicense
limit 33;
-- meta {"num_joins":2,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    posthistory_1.comment, 
    votes_1.creationdate, 
    votes_1.postid, 
    posthistory_1.posthistorytypeid, 
    posthistory_1.creationdate
  from 
    votes as votes_1
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where votes_1.creationdate <= posthistory_1.creationdate
  limit 15)
EXCEPT
(select  
    comments_1.text, 
    comments_1.creationdate, 
    comments_1.postid, 
    comments_1.postid, 
    min(
      comments_1.creationdate)
  from 
    votes as votes_2
      inner join comments as comments_1
      on (votes_2.id = comments_1.id )
  where comments_1.text is not NULL
  limit 25);
-- meta {"num_joins":1,"num_aggregates":7,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    count(*), 
    count(
      posts_1.parentid), 
    posts_1.body, 
    posts_1.title, 
    max(
      posts_1.creationdate), 
    posts_1.ownerdisplayname, 
    posts_1.tags, 
    min(
      posts_1.creationdate), 
    posts_1.acceptedanswerid, 
    max(
      posts_1.owneruserid), 
    posts_1.contentlicense, 
    posts_1.id, 
    posts_1.parentid, 
    count(
      posts_1.posttypeid)
  from 
    posts as posts_1
  where posts_1.acceptedanswerid is not NULL
  group by posts_1.acceptedanswerid, posts_1.body, posts_1.contentlicense, posts_1.id, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags, posts_1.title
  limit 9)
UNION
(select  
    min(
      posthistory_1.userid), 
    min(
      posthistory_1.userid), 
    posthistory_1.userdisplayname, 
    posthistory_1.userdisplayname, 
    min(
      posts_2.creationdate), 
    posthistory_1.comment, 
    min(
      posts_2.creationdate), 
    min(
      posts_2.creationdate), 
    posts_2.posttypeid, 
    count(
      posthistory_1.comment), 
    posthistory_1.userdisplayname, 
    posts_2.owneruserid, 
    min(
      posthistory_1.creationdate), 
    count(
      posts_2.owneruserid)
  from 
    posthistory as posthistory_1
      inner join posts as posts_2
      on (posthistory_1.id = posts_2.id )
  where posthistory_1.text is not NULL
  group by posthistory_1.id, posthistory_1.postid, posts_2.acceptedanswerid, posts_2.contentlicense, posts_2.ownerdisplayname, posts_2.parentid
  limit 32);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    min(
      posthistory_1.creationdate), 
    posts_1.ownerdisplayname, 
    posts_1.title, 
    posthistory_1.contentlicense, 
    posts_1.creationdate, 
    posts_1.tags, 
    posthistory_1.text, 
    posts_1.parentid, 
    min(
      posts_1.parentid)
  from 
    posts as posts_1
      inner join posthistory as posthistory_1
      on (posts_1.id = posthistory_1.id )
  where posthistory_1.comment is not NULL
  group by posthistory_1.contentlicense, posthistory_1.text, posts_1.creationdate, posts_1.ownerdisplayname, posts_1.parentid, posts_1.tags, posts_1.title
  limit 21)
UNION
(select  
    min(
      postlinks_1.creationdate), 
    max(
      postlinks_1.creationdate), 
    min(
      postlinks_1.creationdate), 
    avg(
      postlinks_1.postid), 
    max(
      postlinks_1.creationdate), 
    sum(
      postlinks_1.relatedpostid), 
    sum(
      postlinks_1.relatedpostid), 
    postlinks_1.relatedpostid, 
    min(
      postlinks_1.postid)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 26);
-- meta {"num_joins":1,"num_aggregates":2,"has_union":false,"has_intersect":true,"has_negation":false}
(select  
    max(
      posts_1.creationdate)
  from 
    postlinks as postlinks_1
      inner join posts as posts_1
      on (postlinks_1.id = posts_1.id )
  where posts_1.creationdate = postlinks_1.creationdate
  limit 41)
INTERSECT
(select  
    max(
      postlinks_2.creationdate)
  from 
    postlinks as postlinks_2
  where postlinks_2.creationdate = postlinks_2.creationdate
  group by postlinks_2.creationdate, postlinks_2.id, postlinks_2.postid, postlinks_2.relatedpostid
  limit 29);
-- meta {"num_joins":3,"num_aggregates":1,"has_union":false,"has_intersect":false,"has_negation":false}
select  
  badges_1.tagbased, 
  comments_1.postid, 
  avg(
    postlinks_1.relatedpostid), 
  votes_1.id
from 
  postlinks as postlinks_1
      inner join badges as badges_1
        inner join comments as comments_1
        on (badges_1.id = comments_1.id )
      on (postlinks_1.id = badges_1.id )
    inner join votes as votes_1
    on (badges_1.id = votes_1.id )
where postlinks_1.id is not NULL
group by badges_1.tagbased, comments_1.postid, votes_1.id
limit 19;
-- meta {"num_joins":0,"num_aggregates":0,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    posts_1.id, 
    posts_1.title, 
    posts_1.parentid, 
    posts_1.acceptedanswerid, 
    posts_1.creationdate, 
    posts_1.owneruserid, 
    posts_1.contentlicense
  from 
    posts as posts_1
  where posts_1.tags is not NULL
  limit 39)
UNION
(select  
    max(
      votes_1.creationdate), 
    min(
      votes_1.creationdate), 
    votes_1.id, 
    votes_1.userid, 
    sum(
      votes_1.id), 
    votes_1.postid, 
    min(
      votes_1.creationdate)
  from 
    votes as votes_1
  where votes_1.userid is not NULL
  limit 33);
-- meta {"num_joins":0,"num_aggregates":0,"has_union":false,"has_intersect":false,"has_negation":true}
(select  
    users_1.displayname, 
    users_1.profileimageurl
  from 
    users as users_1
  where users_1.location is not NULL
  limit 41)
EXCEPT
(select  
    avg(
      postlinks_1.linktypeid), 
    max(
      postlinks_1.creationdate)
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  limit 15);
-- meta {"num_joins":5,"num_aggregates":5,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    postlinks_1.creationdate, 
    postlinks_1.postid, 
    postlinks_1.id, 
    max(
      postlinks_1.creationdate), 
    postlinks_1.relatedpostid, 
    avg(
      postlinks_1.postid), 
    avg(
      postlinks_1.id), 
    postlinks_1.linktypeid
  from 
    postlinks as postlinks_1
  where postlinks_1.linktypeid is not NULL
  group by postlinks_1.creationdate, postlinks_1.id, postlinks_1.linktypeid, postlinks_1.postid, postlinks_1.relatedpostid
  limit 41)
UNION
(select  
    comments_1.creationdate, 
    comments_4.postid, 
    count(
      comments_3.text), 
    max(
      comments_1.creationdate), 
    posthistory_1.postid, 
    sum(
      badges_1.class), 
    avg(
      comments_4.id), 
    comments_4.postid
  from 
    comments as comments_1
        inner join comments as comments_2
          inner join comments as comments_3
          on (comments_2.id = comments_3.id )
        on (comments_1.id = comments_3.id )
      inner join posthistory as posthistory_1
          inner join badges as badges_1
          on (posthistory_1.id = badges_1.id )
        inner join comments as comments_4
        on (posthistory_1.id = comments_4.id )
      on (comments_1.id = posthistory_1.id )
  where comments_1.creationdate < badges_1.date
  group by badges_1.class, badges_1.id, comments_2.postid, comments_3.contentlicense, comments_3.userid, comments_4.creationdate, comments_4.userdisplayname, posthistory_1.id, posthistory_1.revisionguid
  limit 18);
-- meta {"num_joins":3,"num_aggregates":2,"has_union":true,"has_intersect":false,"has_negation":false}
(select  
    comments_1.text
  from 
    comments as comments_1
  where comments_1.creationdate < comments_1.creationdate
  limit 9)
UNION
(select  
    min(
      posts_1.creationdate)
  from 
    posts as posts_1
          inner join users as users_1
          on (posts_1.id = users_1.id )
        inner join votes as votes_1
        on (posts_1.id = votes_1.id )
      inner join posthistory as posthistory_1
      on (votes_1.id = posthistory_1.id )
  where users_1.websiteurl is not NULL
  group by posts_1.parentid, users_1.id, users_1.location, users_1.profileimageurl, votes_1.userid
  limit 20);
